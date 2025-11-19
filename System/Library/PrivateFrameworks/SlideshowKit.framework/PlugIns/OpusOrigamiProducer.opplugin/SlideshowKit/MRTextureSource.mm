@interface MRTextureSource
- (MRTexture)texture;
- (MRTextureSource)initWithCGContext:(CGContext *)a3 imageManager:(id)a4;
- (MRTextureSource)initWithCGContext:(CGContext *)a3 size:(id)a4 imageManager:(id)a5;
- (MRTextureSource)initWithCGImage:(CGImage *)a3 textureSize:(id)a4 orientation:(int64_t)a5 imageManager:(id)a6 monochromatic:(BOOL)a7;
- (MRTextureSource)initWithCVPixelBuffer:(__CVBuffer *)a3 size:(id)a4 orientation:(int64_t)a5 imageManager:(id)a6 monochromatic:(BOOL)a7;
- (MRTextureSource)initWithCVTexture:(__CVBuffer *)a3 size:(id)a4 orientation:(int64_t)a5 imageManager:(id)a6 monochromatic:(BOOL)a7;
- (MRTextureSource)initWithSize:(id)a3 andColor:(const float *)a4 imageManager:(id)a5;
- (void)addOverlayForROI:(id)a3;
- (void)cleanup;
- (void)dealloc;
- (void)generateMipmap;
@end

@implementation MRTextureSource

- (MRTextureSource)initWithSize:(id)a3 andColor:(const float *)a4 imageManager:(id)a5
{
  result = [(MRTextureSource *)self init];
  if (result)
  {
    result->_imageManager = a5;
    result->_size = a3;
    if (a4)
    {
      result->_color[0] = *a4;
      result->_color[1] = a4[1];
      result->_color[2] = a4[2];
      v9 = a4[3];
    }

    else
    {
      v9 = -1.0;
    }

    result->_color[3] = v9;
    result->_isOpaque = v9 >= 1.0;
  }

  return result;
}

- (MRTextureSource)initWithCGImage:(CGImage *)a3 textureSize:(id)a4 orientation:(int64_t)a5 imageManager:(id)a6 monochromatic:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v12 = [(MRTextureSource *)self init];
  v13 = v12;
  if (!v12)
  {
    return v13;
  }

  v12->_imageManager = a6;
  v12->_size = a4;
  v12->_orientation = v9;
  ColorSpace = CGImageGetColorSpace(a3);
  if (v7)
  {
    v13->_textureOptions.wantsMonochromatic = 1;
    *&v13->_dataWidth = a4;
    var0 = a4.var0;
  }

  else
  {
    if (ColorSpace)
    {
      Model = CGColorSpaceGetModel(ColorSpace);
      v13->_textureOptions.wantsMonochromatic = Model == kCGColorSpaceModelMonochrome;
      *&v13->_dataWidth = a4;
      var0 = a4.var0;
      if (Model == kCGColorSpaceModelMonochrome)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13->_textureOptions.wantsMonochromatic = 0;
      *&v13->_dataWidth = a4;
    }

    var0 = 4 * a4.var0;
  }

LABEL_9:
  v13->_dataRowBytes = var0;
  v17 = var0 * a4.var1;
  v13->_dataSize = v17;
  v13->_datas[0] = malloc_type_malloc(v17, 0x616595B0uLL);
  v13->_ownsData = 1;
  if (v13->_textureOptions.wantsMonochromatic)
  {
    v18 = [(MRContext *)[(MRImageManager *)v13->_imageManager baseContext] monochromaticColorSpace];
  }

  else
  {
    v18 = [objc_msgSend(a6 "baseContext")];
  }

  v13->_colorspace = v18;
  CGColorSpaceRetain(v18);
  if (v13->_textureOptions.wantsMonochromatic)
  {
    v19 = 0;
  }

  else
  {
    v19 = 8194;
  }

  v20 = CGBitmapContextCreate(v13->_datas[0], v13->_dataWidth, v13->_dataHeight, 8uLL, v13->_dataRowBytes, v13->_colorspace, v19);
  v13->_isPremultiplied = 1;
  CGContextSetBlendMode(v20, kCGBlendModeCopy);
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = a4.var0;
  v23.size.height = a4.var1;
  CGContextDrawImage(v20, v23, a3);
  CGContextRelease(v20);
  AlphaInfo = CGImageGetAlphaInfo(a3);
  v13->_isOpaque = (AlphaInfo < kCGImageAlphaOnly) & (0x61u >> AlphaInfo);
  return v13;
}

- (MRTextureSource)initWithCVPixelBuffer:(__CVBuffer *)a3 size:(id)a4 orientation:(int64_t)a5 imageManager:(id)a6 monochromatic:(BOOL)a7
{
  v9 = a5;
  v12 = [(MRTextureSource *)self init];
  v13 = v12;
  if (v12)
  {
    v12->_imageManager = a6;
    v12->_cvPixelBuffer = CVPixelBufferRetain(a3);
    v13->_size = a4;
    v13->_orientation = v9;
    v13->_textureOptions.wantsMonochromatic = a7;
    v13->_isOpaque = 1;
  }

  return v13;
}

- (MRTextureSource)initWithCVTexture:(__CVBuffer *)a3 size:(id)a4 orientation:(int64_t)a5 imageManager:(id)a6 monochromatic:(BOOL)a7
{
  v9 = a5;
  v12 = [(MRTextureSource *)self init];
  v13 = v12;
  if (v12)
  {
    v12->_imageManager = a6;
    v12->_cvTexture = CVBufferRetain(a3);
    v13->_size = a4;
    v13->_orientation = v9;
    v13->_textureOptions.wantsMonochromatic = a7;
    v13->_isOpaque = 1;
  }

  return v13;
}

- (MRTextureSource)initWithCGContext:(CGContext *)a3 size:(id)a4 imageManager:(id)a5
{
  v8 = [(MRTextureSource *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_imageManager = a5;
    v8->_size = a4;
    v8->_textureOptions.wantsMonochromatic = CGBitmapContextGetBitsPerPixel(a3) < 9;
    v9->_cgContext = CGContextRetain(a3);
    v9->_dataWidth = CGBitmapContextGetWidth(a3);
    v9->_dataHeight = CGBitmapContextGetHeight(a3);
    BytesPerRow = CGBitmapContextGetBytesPerRow(a3);
    v9->_dataRowBytes = BytesPerRow;
    v9->_dataSize = v9->_size.height * BytesPerRow;
    v9->_datas[0] = CGBitmapContextGetData(a3);
    AlphaInfo = CGBitmapContextGetAlphaInfo(a3);
    v9->_isPremultiplied = AlphaInfo - 1 < 2;
    v9->_isOpaque = (AlphaInfo < kCGImageAlphaOnly) & (0x61u >> AlphaInfo);
  }

  return v9;
}

- (MRTextureSource)initWithCGContext:(CGContext *)a3 imageManager:(id)a4
{
  Width = CGBitmapContextGetWidth(a3);
  v8 = Width | (CGBitmapContextGetHeight(a3) << 32);

  return [(MRTextureSource *)self initWithCGContext:a3 size:v8 imageManager:a4];
}

- (void)dealloc
{
  [(MRTextureSource *)self cleanup];
  v3.receiver = self;
  v3.super_class = MRTextureSource;
  [(MRTextureSource *)&v3 dealloc];
}

- (void)cleanup
{
  p_imageManager = &self->_imageManager;
  if (self->_imageManager)
  {
    objc_sync_enter(self);
    cgContext = self->_cgContext;
    if (cgContext)
    {
      CGContextRelease(cgContext);
      self->_cgContext = 0;
    }

    colorspace = self->_colorspace;
    if (colorspace)
    {
      CGColorSpaceRelease(colorspace);
      self->_colorspace = 0;
    }

    cgImage = self->_cgImage;
    if (cgImage)
    {
      CGImageRelease(cgImage);
      self->_cgImage = 0;
    }

    cvTexture = self->_cvTexture;
    if (cvTexture)
    {
      CVBufferRelease(cvTexture);
      self->_cvTexture = 0;
    }

    for (i = 80; i != 104; i += 8)
    {
      v9 = *(&self->super.isa + i);
      if (v9)
      {
        if (i != 80 || self->_ownsData)
        {
          free(v9);
        }

        *(&self->super.isa + i) = 0;
      }
    }

    self->_dataSize = 0;
    *&self->_dataRowBytes = 0;
    self->_dataHeight = 0;
    cvPixelBuffer = self->_cvPixelBuffer;
    if (cvPixelBuffer)
    {
      CVPixelBufferRelease(cvPixelBuffer);
      self->_cvPixelBuffer = 0;
    }

    texture = self->_texture;
    if (texture)
    {

      self->_texture = 0;
    }

    self->_pixelFormat = 0;
    *p_imageManager = 0;
    p_imageManager[1] = 0;

    objc_sync_exit(self);
  }
}

- (void)generateMipmap
{
  self->_textureOptions.wantsMipmap = 1;
  if (self->_datas[0])
  {
    dataWidth = self->_dataWidth;
    dataHeight = self->_dataHeight;
    v5 = &self->_datas[1];
    v6 = 2;
    dataRowBytes = self->_dataRowBytes;
    dataSize = self->_dataSize;
    do
    {
      if (self->_textureOptions.wantsMonochromatic)
      {
        v9 = 0;
      }

      else
      {
        v9 = 8194;
      }

      v10 = CGImageRetain(self->_cgImage);
      if (v10)
      {
        v11 = v10;
        provider = 0;
      }

      else
      {
        v13 = CGDataProviderCreateWithData(0, *(v5 - 1), dataSize, 0);
        if (v13)
        {
          if (self->_textureOptions.wantsMonochromatic)
          {
            v14 = 8;
          }

          else
          {
            v14 = 32;
          }

          provider = v13;
          v11 = CGImageCreate(dataWidth, dataHeight, 8uLL, v14, dataRowBytes, self->_colorspace, v9, v13, 0, 1, kCGRenderingIntentDefault);
          v12 = 0;
          goto LABEL_14;
        }

        provider = 0;
        v11 = 0;
      }

      v12 = 1;
LABEL_14:
      dataWidth >>= 1;
      dataHeight >>= 1;
      if (self->_textureOptions.wantsMonochromatic)
      {
        dataRowBytes = dataWidth;
      }

      else
      {
        dataRowBytes = 4 * dataWidth;
      }

      dataSize = dataRowBytes * dataHeight;
      v15 = malloc_type_malloc(dataRowBytes * dataHeight, 0x286290B6uLL);
      *v5 = v15;
      v16 = CGBitmapContextCreate(v15, dataWidth, dataHeight, 8uLL, dataRowBytes, self->_colorspace, v9);
      CGContextSetBlendMode(v16, kCGBlendModeCopy);
      v19.origin.x = 0.0;
      v19.origin.y = 0.0;
      v19.size.width = dataWidth;
      v19.size.height = dataHeight;
      CGContextDrawImage(v16, v19, v11);
      CGContextRelease(v16);
      if ((v12 & 1) == 0)
      {
        CGDataProviderRelease(provider);
      }

      CGImageRelease(v11);
      ++v5;
      --v6;
    }

    while (v6);
  }

  cgImage = self->_cgImage;
  if (cgImage)
  {
    CGImageRelease(cgImage);
    self->_cgImage = 0;
  }
}

- (MRTexture)texture
{
  if (!self->_size.width || !self->_size.height)
  {
    return 0;
  }

  texture = self->_texture;
  if (!texture)
  {
    objc_sync_enter(self);
    imageManager = self->_imageManager;
    if (imageManager)
    {
      texture = self->_texture;
      if (!texture)
      {
        self->_textureOptions.textureTarget = 3553;
        if (self->_cvTexture)
        {
          v5 = [MRTexture alloc];
          Name = CVOpenGLESTextureGetName(self->_cvTexture);
          v7 = [(MRTexture *)v5 initWithTextureName:Name textureTarget:CVOpenGLESTextureGetTarget(self->_cvTexture) size:*&self->_size inGLContext:[(MRImageManager *)self->_imageManager imageGLContext] options:&self->_textureOptions];
LABEL_8:
          self->_texture = v7;
LABEL_9:
          [(MRTexture *)self->_texture setOrientation:self->_orientation];
          [(MRTexture *)self->_texture setIsPremultiplied:self->_isPremultiplied];
          [(MRTexture *)self->_texture setIsOpaque:self->_isOpaque];
          objc_sync_exit(self);
          return self->_texture;
        }

        if (self->_cvPixelBuffer)
        {
          self->_textureOptions.wantsYUV = CVPixelBufferGetPixelFormatType(self->_cvPixelBuffer) == 846624121;
          if (!CVPixelBufferLockBaseAddress(self->_cvPixelBuffer, 0))
          {
            BaseAddress = CVPixelBufferGetBaseAddress(self->_cvPixelBuffer);
            if (BaseAddress)
            {
              v10 = [MRTexture alloc];
              Width = CVPixelBufferGetWidth(self->_cvPixelBuffer);
              Height = CVPixelBufferGetHeight(self->_cvPixelBuffer);
              self->_texture = [(MRTexture *)v10 initWithData:BaseAddress width:Width height:Height rowBytes:CVPixelBufferGetBytesPerRow(self->_cvPixelBuffer) inGLContext:[(MRImageManager *)self->_imageManager imageGLContext] options:&self->_textureOptions];
            }

            CVPixelBufferUnlockBaseAddress(self->_cvPixelBuffer, 0);
          }

          goto LABEL_9;
        }

        datas = self->_datas;
        if (!self->_datas[0])
        {
          if (!self->_textureOptions.wantsFloatTexture)
          {
            self->_texture = [(MRImageManager *)imageManager fboTextureWithSize:*&self->_size];
            if (self->_color[3] >= 0.0)
            {
              v25 = +[EAGLContext currentContext];
              v26 = v25;
              if (v25 != [(MRTexture *)self->_texture glContext])
              {
                [EAGLContext setCurrentContext:[(MRTexture *)self->_texture glContext]];
              }

              glClearColor(self->_color[0], self->_color[1], self->_color[2], self->_color[3]);
              glClear(0x4000u);
              glFlush();
              if (+[EAGLContext currentContext]!= v25)
              {
                [EAGLContext setCurrentContext:v25];
              }
            }

            goto LABEL_9;
          }

          v7 = [[MRTexture alloc] initWithSize:*&self->_size inGLContext:[(MRImageManager *)self->_imageManager imageGLContext] options:&self->_textureOptions];
          goto LABEL_8;
        }

        if (self->_datas[1])
        {
          v14 = [MRTexture alloc];
          v15 = self->_datas[2];
          dataWidth = self->_dataWidth;
          dataHeight = self->_dataHeight;
          dataRowBytes = self->_dataRowBytes;
          v19 = [(MRImageManager *)self->_imageManager imageGLContext];
          if (v15)
          {
            v20 = 3;
          }

          else
          {
            v20 = 2;
          }

          v21 = [(MRTexture *)v14 initWithDatas:self->_datas dataCount:v20 width:dataWidth height:dataHeight rowBytes:dataRowBytes inGLContext:v19 options:&self->_textureOptions];
        }

        else
        {
          if (self->_wantsSharedTexture)
          {
            self->_textureOptions.wantsFloatTexture = 0;
            self->_textureOptions.wantsMipmap = 0;
            v22 = [(MRImageManager *)imageManager textureWithSize:*&self->_size options:&self->_textureOptions];
            self->_texture = v22;
            LODWORD(v23) = self->_size.width;
            LODWORD(v24) = self->_size.height;
            [(MRTexture *)v22 uploadData:self->_datas[0] rowBytes:self->_dataRowBytes toRect:0.0, 0.0, v23, v24];
LABEL_37:
            cgContext = self->_cgContext;
            if (cgContext)
            {
              CGContextRelease(cgContext);
              self->_cgContext = 0;
            }

            for (i = 0; i != 3; ++i)
            {
              v29 = datas[i];
              if (v29)
              {
                if (i * 8 || self->_ownsData)
                {
                  free(v29);
                }

                datas[i] = 0;
              }
            }

            self->_dataSize = 0;
            *&self->_dataRowBytes = 0;
            *(&self->_dataWidth + 1) = 0;
            cgImage = self->_cgImage;
            if (cgImage)
            {
              CGImageRelease(cgImage);
              self->_cgImage = 0;
            }

            goto LABEL_9;
          }

          v21 = [[MRTexture alloc] initWithData:self->_datas[0] width:self->_dataWidth height:self->_dataHeight rowBytes:self->_dataRowBytes inGLContext:[(MRImageManager *)self->_imageManager imageGLContext] options:&self->_textureOptions];
        }

        self->_texture = v21;
        goto LABEL_37;
      }
    }

    else
    {
      texture = 0;
    }

    objc_sync_exit(self);
  }

  return texture;
}

- (void)addOverlayForROI:(id)a3
{
  v4 = self->_datas[0];
  if (v4)
  {
    if (self->_textureOptions.wantsMonochromatic)
    {
      v6 = 0;
    }

    else
    {
      v6 = 8194;
    }

    v7 = CGBitmapContextCreate(v4, self->_dataWidth, self->_dataHeight, 8uLL, self->_dataRowBytes, self->_colorspace, v6);
    v12[0] = xmmword_163CA0;
    v12[1] = unk_163CB0;
    CGContextSetStrokeColorSpace(v7, self->_colorspace);
    CGContextSetStrokeColor(v7, v12);
    CGContextSetBlendMode(v7, kCGBlendModeNormal);
    CGContextSetLineWidth(v7, 3.0);
    v13 = CGRectFromString(a3);
    LODWORD(v8) = self->_dataWidth;
    LODWORD(v9) = self->_dataHeight;
    v10 = v8;
    v13.origin.x = v13.origin.x * v10;
    v11 = v9;
    v13.origin.y = v13.origin.y * v11;
    v13.size.width = v13.size.width * v10;
    v13.size.height = v13.size.height * v11;
    CGContextStrokeRect(v7, v13);
    CGContextRelease(v7);
  }
}

@end