@interface CRImage
+ (BOOL)convertVImage:(const vImage_Buffer *)image inColorSpace:(int)space toVImage:(vImage_Buffer *)vImage toColorSpace:(int)colorSpace;
+ (id)nameForColorSpace:(int)space;
+ (unint64_t)bytesPerPixelForColorSpace:(int)space;
+ (unint64_t)channelsForColorSpace:(int)space;
+ (vImage_Buffer)allocateVImageBufferWithWidth:(SEL)width height:(unint64_t)height bytesPerPixel:(unint64_t)pixel;
+ (vImage_Buffer)allocateVImageBufferWithWidth:(SEL)width height:(unint64_t)height colorSpace:(unint64_t)space;
+ (vImage_Buffer)applyEXIFTransformsOnImage:(SEL)image inColorSpace:(const vImage_Buffer *)space properties:(int)properties;
+ (void)cgOrientation:(unsigned int)orientation toVImageRotationMode:(char *)mode andReflection:(int *)reflection;
+ (void)drawVerticalLineAtXOffset:(double)offset image:(id)image;
- (CGImage)cgImage;
- (CGRect)rotatedRoiByCroppingRectangle:(CGRect)rectangle textFeaturePoints:(id)points radians:(float)radians;
- (CGSize)size;
- (CIImage)ciImage;
- (CRImage)init;
- (CRImage)initWithCGImage:(CGImage *)image properties:(id)properties toColorSpace:(int)space;
- (CRImage)initWithCIImage:(id)image toColorSpace:(int)space;
- (CRImage)initWithCVPixelBuffer:(__CVBuffer *)buffer toColorSpace:(int)space forceDataCopy:(BOOL)copy;
- (CRImage)initWithContentsOfURL:(id)l toColorSpace:(int)space;
- (CRImage)initWithFloatBuffer:(float *)buffer width:(unint64_t)width height:(unint64_t)height;
- (CRImage)initWithMTLTexture:(id)texture toColorSpace:(int)space;
- (CRImage)initWithVImageBuffer:(vImage_Buffer *)buffer inColorSpace:(int)space;
- (CRImage)initWithVImageBuffer:(vImage_Buffer *)buffer inColorSpace:(int)space toColorSpace:(int)colorSpace;
- (CRImage)initWithWidth:(unint64_t)width height:(unint64_t)height colorSpace:(int)space;
- (__CVBuffer)pixelBuffer;
- (__CVBuffer)pixelBufferWithScale:(double)scale paddedToSize:(CGSize)size adjustedToSize:(CGSize *)toSize paddingMode:(unint64_t)mode;
- (id)description;
- (id)imageByAdjustingBrightnessAlpha:(double)alpha beta:(double)beta;
- (id)imageByApplyingBinaryMask:(id)mask;
- (id)imageByApplyingHistogramCorrection;
- (id)imageByConvertingToColorSpace:(int)space;
- (id)imageByCorrectingFromOrientation:(unsigned int)orientation;
- (id)imageByCroppingRectangle:(CGRect)rectangle;
- (id)imageByCroppingRectangle:(CGRect)rectangle textFeaturePoints:(id)points radians:(float)radians rotatedRoi:(CGRect *)roi;
- (id)imageByCroppingRectangle:(CGRect)rectangle toHeight:(unint64_t)height andWidth:(unint64_t)width withRotationAngle:(float)angle;
- (id)imageByDilating;
- (id)imageByInvertingIntensity;
- (id)imageByOverlayingRects:(CGRect *)rects count:(int64_t)count strings:(id)strings lineWidth:(double)width red:(double)red green:(double)green blue:(double)blue alpha:(double)self0;
- (id)imageByOverlayingRegions:(id)regions strings:(id)strings lineWidth:(double)width red:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
- (id)imageByPaddingToRatioAndScalingToWidth:(unint64_t)width height:(unint64_t)height paddingMode:(unint64_t)mode alignCenter:(BOOL)center;
- (id)imageByRectifyingRegion:(id)region toColorSpace:(int)space homography:(id *)homography;
- (id)imageByRotating180;
- (id)imageByRotating90CW;
- (id)imageByScaling:(double)scaling paddingToSize:(CGSize)size adjustedToSize:(CGSize *)toSize paddingMode:(unint64_t)mode;
- (id)imageByScalingToWidth:(unint64_t)width height:(unint64_t)height;
- (id)initARGB8888WithCVPixelBuffer:(__CVBuffer *)buffer;
- (id)initAYUV8888WithCVPixelBuffer:(__CVBuffer *)buffer;
- (id)initY8WithCVPixelBuffer:(__CVBuffer *)buffer forceDataCopy:(BOOL)copy;
- (id)initYUV888WithCVPixelBuffer:(__CVBuffer *)buffer;
- (unint64_t)bufferHash;
- (unint64_t)bytesPerPixel;
- (unint64_t)numChannels;
- (vImage_Buffer)createFloatBuffer;
- (vImage_Buffer)vImage;
- (void)dealloc;
- (void)runBlockWithARGB8888Image:(id)image blockOwnsMemory:(BOOL)memory;
- (void)setVImage:(vImage_Buffer *)image;
- (void)writeToFile:(id)file;
- (void)writeToURL:(id)l;
@end

@implementation CRImage

- (CGSize)size
{
  width = [(CRImage *)self width];
  height = [(CRImage *)self height];
  v5 = width;
  result.height = height;
  result.width = v5;
  return result;
}

- (unint64_t)bufferHash
{
  pixelBuffer = [(CRImage *)self pixelBuffer];
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  if (CVPixelBufferIsPlanar(pixelBuffer))
  {
    PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
    v3 = 0;
    if (PlaneCount)
    {
      for (i = 0; i != PlaneCount; ++i)
      {
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, i);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, i);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, i);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, i);
        v9 = [MEMORY[0x1E695DEF0] dataWithBytes:BaseAddressOfPlane length:BytesPerRowOfPlane];
        v3 ^= [v9 hash];
        if (HeightOfPlane)
        {
          v10 = 0;
          if (WidthOfPlane <= 1)
          {
            v11 = 1;
          }

          else
          {
            v11 = WidthOfPlane;
          }

          do
          {
            v12 = 0;
            v13 = &BaseAddressOfPlane[v10 * BytesPerRowOfPlane];
            while (1)
            {
              v13 += BytesPerRowOfPlane / WidthOfPlane;
              if (*v13)
              {
                if (*v13 != 255)
                {
                  break;
                }
              }

              if (v11 == ++v12)
              {
                goto LABEL_14;
              }
            }

            v3 ^= v12 << (v10 % 0x18);
LABEL_14:
            ++v10;
          }

          while (v10 != HeightOfPlane);
        }
      }
    }
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    v3 = Height ^ Width;
    if (Height)
    {
      v18 = 0;
      if (Width <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = Width;
      }

      do
      {
        v20 = 0;
        while (BaseAddress[v18 * BytesPerRow + v20 * (BytesPerRow / Width) + v20 % (BytesPerRow / Width)] - 255 < 0xFFFFFF02)
        {
          if (v19 == ++v20)
          {
            goto LABEL_26;
          }
        }

        v3 ^= v20 << (v18 % 0x18);
LABEL_26:
        ++v18;
      }

      while (v18 != Height);
    }
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  return v3;
}

+ (vImage_Buffer)allocateVImageBufferWithWidth:(SEL)width height:(unint64_t)height bytesPerPixel:(unint64_t)pixel
{
  retstr->height = pixel;
  retstr->width = height;
  v7 = a6 * height;
  retstr->rowBytes = v7;
  result = malloc_type_calloc(v7 * pixel, 1uLL, 0x221917C1uLL);
  retstr->data = result;
  return result;
}

+ (vImage_Buffer)allocateVImageBufferWithWidth:(SEL)width height:(unint64_t)height colorSpace:(unint64_t)space
{
  v6 = *&a6;
  v10 = objc_opt_class();
  result = [objc_opt_class() bytesPerPixelForColorSpace:v6];
  if (v10)
  {

    return [v10 allocateVImageBufferWithWidth:height height:space bytesPerPixel:result];
  }

  else
  {
    *&retstr->data = 0u;
    *&retstr->width = 0u;
  }

  return result;
}

- (CRImage)init
{
  v5.receiver = self;
  v5.super_class = CRImage;
  v2 = [(CRImage *)&v5 init];
  v2->_colorSpace = -1;
  sceneStabilityMetric = v2->_sceneStabilityMetric;
  v2->_sceneStabilityMetric = 0;

  return v2;
}

- (id)initY8WithCVPixelBuffer:(__CVBuffer *)buffer forceDataCopy:(BOOL)copy
{
  copyCopy = copy;
  v49 = *MEMORY[0x1E69E9840];
  v6 = [(CRImage *)self init];
  v6->_pixelBuffer = CVPixelBufferRetain(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v8 = PixelFormatType;
  if (PixelFormatType == 846624121 || PixelFormatType == 875704422 || PixelFormatType == 1278226488)
  {
    v6->_isFullRange = PixelFormatType == 875704422;
    CVPixelBufferLockBaseAddress(v6->_pixelBuffer, 0);
    if (v8 == 846624121)
    {
      v9 = objc_opt_class();
      Width = CVPixelBufferGetWidth(buffer);
      Height = CVPixelBufferGetHeight(buffer);
      if (v9)
      {
        [v9 allocateVImageBufferWithWidth:Width height:Height colorSpace:0];
      }

      else
      {
        v47 = 0u;
        v48 = 0u;
      }

      v20 = v48;
      *&v6->_vImage.data = v47;
      *&v6->_vImage.width = v20;
      v22 = v6->_vImage.height;
      v21 = v6->_vImage.width;
      BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
      rowBytes = v6->_vImage.rowBytes;
      BaseAddress = CVPixelBufferGetBaseAddress(buffer);
      if (v22)
      {
        v26 = 0;
        data = v6->_vImage.data;
        v28 = BaseAddress + 1;
        do
        {
          for (i = v21; i; --i)
          {
            v30 = *v28;
            v28 += 2;
            *data++ = v30;
          }

          v28 += BytesPerRow - 2 * v21;
          data += rowBytes - v21;
          ++v26;
        }

        while (v26 != v22);
      }
    }

    else
    {
      if (copyCopy && v8 == 1278226488)
      {
        v12 = objc_opt_class();
        v13 = CVPixelBufferGetWidth(buffer);
        v14 = CVPixelBufferGetHeight(buffer);
        if (v12)
        {
          [v12 allocateVImageBufferWithWidth:v13 height:v14 colorSpace:0];
        }

        else
        {
          v47 = 0u;
          v48 = 0u;
        }

        v33 = v48;
        *&v6->_vImage.data = v47;
        *&v6->_vImage.width = v33;
        v34 = CVPixelBufferGetBaseAddress(buffer);
        v35 = CVPixelBufferGetHeight(buffer);
        CVPixelBufferGetWidth(buffer);
        v36 = CVPixelBufferGetBytesPerRow(buffer);
        memcpy(v6->_vImage.data, v34, v36 * v35);
        CVPixelBufferUnlockBaseAddress(v6->_pixelBuffer, 0);
        CVPixelBufferRelease(v6->_pixelBuffer);
        goto LABEL_37;
      }

      if (!copyCopy)
      {
        v6->_vImage.width = CVPixelBufferGetWidthOfPlane(buffer, 0);
        v6->_vImage.height = CVPixelBufferGetHeightOfPlane(buffer, 0);
        v6->_vImage.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
        v32 = 0;
        v6->_vImage.data = BaseAddressOfPlane;
LABEL_38:
        v6->_vImageDataIsCopy = v32;
        v16 = v6;
        goto LABEL_39;
      }

      v17 = CVPixelBufferGetWidth(buffer);
      v18 = CVPixelBufferGetHeight(buffer);
      v19 = objc_opt_class();
      if (v19)
      {
        [v19 allocateVImageBufferWithWidth:v17 & 0xFFFFFFFFFFFFFFFELL height:v18 & 0xFFFFFFFFFFFFFFFELL colorSpace:0];
      }

      else
      {
        v47 = 0u;
        v48 = 0u;
      }

      v37 = v48;
      *&v6->_vImage.data = v47;
      *&v6->_vImage.width = v37;
      v38 = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
      v39 = v6->_vImage.data;
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
      if (v18 >= 2)
      {
        v41 = 0;
        do
        {
          if (v17 >= 2)
          {
            v42 = &v38[2 * v41 * BytesPerRowOfPlane];
            v43 = v17 >> 1;
            do
            {
              *v39 = *v42;
              v39[1] = v42[1];
              v42 += 2;
              v39 += 2;
              --v43;
            }

            while (v43);
            v44 = &v38[((2 * v41) | 1) * BytesPerRowOfPlane];
            v45 = v17 >> 1;
            do
            {
              *v39 = *v44;
              v39[1] = v44[1];
              v44 += 2;
              v39 += 2;
              --v45;
            }

            while (v45);
          }

          ++v41;
        }

        while (v41 != v18 >> 1);
      }
    }

    CVPixelBufferUnlockBaseAddress(v6->_pixelBuffer, 0);
    CVPixelBufferRelease(v6->_pixelBuffer);
LABEL_37:
    v6->_pixelBuffer = 0;
    v32 = 1;
    goto LABEL_38;
  }

  CVPixelBufferRelease(v6->_pixelBuffer);
  v15 = CROSLogForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v47) = 67109120;
    DWORD1(v47) = v8;
    _os_log_impl(&dword_1B40D2000, v15, OS_LOG_TYPE_FAULT, "[CRImage initY8WithCVPixelBuffer:] Unsupported pixel buffer type %08x", &v47, 8u);
  }

  v16 = 0;
LABEL_39:

  return v16;
}

- (id)initARGB8888WithCVPixelBuffer:(__CVBuffer *)buffer
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = [(CRImage *)self init];
  v4->_pixelBuffer = CVPixelBufferRetain(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v6 = PixelFormatType;
  if (PixelFormatType <= 875704421)
  {
    if (PixelFormatType == 32)
    {
      goto LABEL_8;
    }

    v7 = 846624121;
  }

  else
  {
    if (PixelFormatType == 875704422)
    {
      goto LABEL_8;
    }

    if (PixelFormatType == 1111970369)
    {
      CRLogger = CRLogger::getCRLogger(PixelFormatType);
      if (*CRLogger == 1 && (CRLogger[8] & 0x10) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_35;
    }

    v7 = 1278226488;
  }

  if (PixelFormatType == v7)
  {
LABEL_8:
    v4->_isFullRange = 1;
    CVPixelBufferLockBaseAddress(v4->_pixelBuffer, 0);
    v8 = objc_opt_class();
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    if (v8)
    {
      [v8 allocateVImageBufferWithWidth:Width height:Height colorSpace:1];
    }

    else
    {
      memset(&outInfo, 0, 32);
    }

    v11 = *&outInfo.opaque[16];
    *&v4->_vImage.data = *outInfo.opaque;
    *&v4->_vImage.width = v11;
    v4->_vImageDataIsCopy = 1;
    switch(v6)
    {
      case 1278226488:
        *outInfo.opaque = CVPixelBufferGetBaseAddress(buffer);
        *&outInfo.opaque[8] = CVPixelBufferGetHeight(buffer);
        *&outInfo.opaque[16] = CVPixelBufferGetWidth(buffer);
        *&outInfo.opaque[24] = CVPixelBufferGetBytesPerRow(buffer);
        v15 = vImageConvert_Planar8ToXRGB8888(0xFFu, &outInfo, &outInfo, &outInfo, &v4->_vImage, 0);
        v14 = v15 != 0;
        if (v15)
        {
          v16 = CROSLogForCategory(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            LOWORD(src.data) = 0;
            _os_log_impl(&dword_1B40D2000, v16, OS_LOG_TYPE_FAULT, "[CRImage initARGB8888WithCVPixelBuffer:] Unable to initialize ARGB8888 CRImage with Yp8 pixel buffer", &src, 2u);
          }
        }

        goto LABEL_31;
      case 875704422:
        src.data = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
        src.height = CVPixelBufferGetHeightOfPlane(buffer, 0);
        src.width = CVPixelBufferGetWidthOfPlane(buffer, 0);
        src.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
        buf.data = CVPixelBufferGetBaseAddressOfPlane(buffer, 1uLL);
        buf.height = CVPixelBufferGetHeightOfPlane(buffer, 1uLL);
        buf.width = CVPixelBufferGetWidthOfPlane(buffer, 1uLL);
        buf.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(buffer, 1uLL);
        if (vImageConvert_YpCbCrToARGB_GenerateConversion(*MEMORY[0x1E6958848], &fullYpCbCrPixelRange, &outInfo, kvImage420Yp8_CbCr8, kvImageARGB8888, 0) || vImageConvert_420Yp8_CbCr8ToARGB8888(&src, &buf, &v4->_vImage, &outInfo, 0, 0xFFu, 0))
        {
          v13 = CROSLogForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *v24 = 0;
            _os_log_impl(&dword_1B40D2000, v13, OS_LOG_TYPE_FAULT, "[CRImage initARGB8888WithCVPixelBuffer:] Unable to initialize ARGB8888 CRImage with 420YpCbCr8BiPlanarFullRange pixel buffer", v24, 2u);
          }

          goto LABEL_24;
        }

        break;
      case 846624121:
        src.data = CVPixelBufferGetBaseAddress(buffer);
        src.height = CVPixelBufferGetHeight(buffer);
        src.width = CVPixelBufferGetWidth(buffer);
        src.rowBytes = CVPixelBufferGetBytesPerRow(buffer);
        if (vImageConvert_YpCbCrToARGB_GenerateConversion(*MEMORY[0x1E6958848], &videoYpCbCrPixelRange, &outInfo, kvImage422CbYpCrYp8, kvImageARGB8888, 0) || vImageConvert_422CbYpCrYp8ToARGB8888(&src, &v4->_vImage, &outInfo, 0, 0xFFu, 0))
        {
          v12 = CROSLogForCategory(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            LOWORD(buf.data) = 0;
            _os_log_impl(&dword_1B40D2000, v12, OS_LOG_TYPE_FAULT, "[CRImage initARGB8888WithCVPixelBuffer:] Unable to initialize ARGB8888 CRImage with 422CbYpCrYp8 pixel buffer", &buf, 2u);
          }

LABEL_24:
          v14 = 1;
          goto LABEL_31;
        }

        break;
      default:
        BaseAddress = CVPixelBufferGetBaseAddress(buffer);
        v18 = CVPixelBufferGetHeight(buffer);
        CVPixelBufferGetWidth(buffer);
        BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
        memcpy(v4->_vImage.data, BaseAddress, BytesPerRow * v18);
        break;
    }

    v14 = 0;
LABEL_31:
    CVPixelBufferUnlockBaseAddress(v4->_pixelBuffer, 0);
    CVPixelBufferRelease(v4->_pixelBuffer);
    v20 = 0;
    v4->_pixelBuffer = 0;
    if (!v14)
    {
      v20 = v4;
    }

    goto LABEL_38;
  }

LABEL_35:
  CVPixelBufferRelease(v4->_pixelBuffer);
  v22 = CROSLogForCategory(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    *outInfo.opaque = 67109120;
    *&outInfo.opaque[4] = v6;
    _os_log_impl(&dword_1B40D2000, v22, OS_LOG_TYPE_FAULT, "[CRImage initARGB8888WithCVPixelBuffer:] Unsupported pixel buffer type %08x", outInfo.opaque, 8u);
  }

  v20 = 0;
LABEL_38:

  return v20;
}

- (id)initYUV888WithCVPixelBuffer:(__CVBuffer *)buffer
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = [(CRImage *)self init];
  v4->_pixelBuffer = CVPixelBufferRetain(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v6 = PixelFormatType;
  if (PixelFormatType == 846624121 || PixelFormatType == 875704422)
  {
    v4->_isFullRange = PixelFormatType == 875704422;
    CVPixelBufferLockBaseAddress(v4->_pixelBuffer, 0);
    v7 = objc_opt_class();
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    if (v7)
    {
      [v7 allocateVImageBufferWithWidth:Width height:Height colorSpace:4];
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    v12 = v42;
    *&v4->_vImage.data = v41;
    *&v4->_vImage.width = v12;
    v4->_vImageDataIsCopy = 1;
    if (v6 == 846624121)
    {
      BaseAddress = CVPixelBufferGetBaseAddress(buffer);
      BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
      v15 = v4->_vImage.height;
      if (v15)
      {
        v16 = 0;
        data = v4->_vImage.data;
        v18 = v4->_vImage.width;
        do
        {
          if (v18 >= 2)
          {
            v19 = 0;
            do
            {
              v20 = *&BaseAddress[4 * v19];
              *data = BYTE1(v20);
              data[1] = v20;
              data[2] = BYTE2(v20);
              data[3] = HIBYTE(v20);
              data[4] = v20;
              data[5] = BYTE2(v20);
              ++v19;
              data += 6;
              v18 = v4->_vImage.width;
            }

            while (v19 < v18 >> 1);
            v15 = v4->_vImage.height;
          }

          ++v16;
          BaseAddress += BytesPerRow;
        }

        while (v16 < v15);
      }
    }

    else
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
      v22 = CVPixelBufferGetBaseAddressOfPlane(buffer, 1uLL);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
      v24 = CVPixelBufferGetBytesPerRowOfPlane(buffer, 1uLL);
      if (v4->_vImage.height >= 2)
      {
        v25 = 0;
        v26 = v4->_vImage.data;
        v27 = v4->_vImage.width;
        do
        {
          if (v27 >= 2)
          {
            v28 = 0;
            v29 = &v22[v25 * v24];
            v30 = &BaseAddressOfPlane[2 * v25 * BytesPerRowOfPlane];
            v31 = v29;
            do
            {
              v32 = v30[1];
              v33 = *v31;
              v34 = v31[1];
              *v26 = *v30;
              v26[1] = v33;
              v26[2] = v34;
              v26[3] = v32;
              v26[4] = v33;
              v26[5] = v34;
              ++v28;
              v30 += 2;
              v31 += 2;
              v26 += 6;
              v27 = v4->_vImage.width;
            }

            while (v28 < v27 >> 1);
            if (v27 >= 2)
            {
              v35 = 0;
              v36 = &BaseAddressOfPlane[((2 * v25) | 1) * BytesPerRowOfPlane];
              do
              {
                v37 = v36[1];
                v38 = *v29;
                v39 = v29[1];
                *v26 = *v36;
                v26[1] = v38;
                v26[2] = v39;
                v26[3] = v37;
                v26[4] = v38;
                v26[5] = v39;
                ++v35;
                v36 += 2;
                v29 += 2;
                v26 += 6;
                v27 = v4->_vImage.width;
              }

              while (v35 < v27 >> 1);
            }
          }

          ++v25;
        }

        while (v25 < v4->_vImage.height >> 1);
      }
    }

    v11 = v4;
    CVPixelBufferUnlockBaseAddress(v4->_pixelBuffer, 0);
  }

  else
  {
    v10 = CROSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v41) = 67109120;
      DWORD1(v41) = v6;
      _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_FAULT, "[CRImage initYUV888WithCVPixelBuffer:] Unsupported pixel buffer type %08x", &v41, 8u);
    }

    v11 = 0;
  }

  CVPixelBufferRelease(v4->_pixelBuffer);
  v4->_pixelBuffer = 0;

  return v11;
}

- (id)initAYUV8888WithCVPixelBuffer:(__CVBuffer *)buffer
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = [(CRImage *)self init];
  v4->_pixelBuffer = CVPixelBufferRetain(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v6 = PixelFormatType;
  if (PixelFormatType == 846624121 || PixelFormatType == 875704422)
  {
    v4->_isFullRange = PixelFormatType == 875704422;
    CVPixelBufferLockBaseAddress(v4->_pixelBuffer, 0);
    v7 = objc_opt_class();
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    if (v7)
    {
      [v7 allocateVImageBufferWithWidth:Width height:Height colorSpace:3];
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    v12 = v46;
    *&v4->_vImage.data = v45;
    *&v4->_vImage.width = v12;
    v4->_vImageDataIsCopy = 1;
    if (v6 == 846624121)
    {
      BaseAddress = CVPixelBufferGetBaseAddress(buffer);
      BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
      v15 = v4->_vImage.height;
      if (v15)
      {
        v16 = 0;
        data = v4->_vImage.data;
        v18 = v4->_vImage.width;
        do
        {
          if (v18 >= 2)
          {
            v19 = &BaseAddress[v16 * BytesPerRow];
            v20 = v18 >> 1;
            do
            {
              v21 = *v19;
              v19 += 4;
              HIDWORD(v22) = v21;
              LODWORD(v22) = v21;
              *data = v21 & 0xFF00 | (v21 << 16) & 0xFFFFFF | (BYTE2(v21) << 24) | 0xFF;
              data[1] = (v22 >> 16) & 0xFFFF00 | (BYTE2(v21) << 24) | 0xFF;
              data += 2;
              --v20;
            }

            while (v20);
          }

          ++v16;
        }

        while (v16 != v15);
      }
    }

    else
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
      v24 = CVPixelBufferGetBaseAddressOfPlane(buffer, 1uLL);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
      v26 = CVPixelBufferGetBytesPerRowOfPlane(buffer, 1uLL);
      v27 = v4->_vImage.height;
      if (v27 >= 2)
      {
        v28 = 0;
        v29 = v27 >> 1;
        v30 = v4->_vImage.data;
        v31 = v4->_vImage.width;
        do
        {
          if (v31 >= 2)
          {
            v32 = &v24[v28 * v26];
            v33 = &BaseAddressOfPlane[2 * v28 * BytesPerRowOfPlane];
            v34 = v31 >> 1;
            v35 = v32;
            do
            {
              v36 = *v35 << 16;
              v37 = v35[1];
              v38 = (v36 | (v33[1] << 8)) & 0xFFFFFF | (v37 << 24) | 0xFF;
              *v30 = v36 | (*v33 << 8) | (v37 << 24) | 0xFF;
              v30[1] = v38;
              v30 += 2;
              v33 += 2;
              v35 += 2;
              --v34;
            }

            while (v34);
            v39 = &BaseAddressOfPlane[((2 * v28) | 1) * BytesPerRowOfPlane];
            v40 = v31 >> 1;
            do
            {
              v41 = *v32 << 16;
              v42 = v32[1];
              v43 = (v41 | (v39[1] << 8)) & 0xFFFFFF | (v42 << 24) | 0xFF;
              *v30 = v41 | (*v39 << 8) | (v42 << 24) | 0xFF;
              v30[1] = v43;
              v30 += 2;
              v39 += 2;
              v32 += 2;
              --v40;
            }

            while (v40);
          }

          ++v28;
        }

        while (v28 != v29);
      }
    }

    v11 = v4;
    CVPixelBufferUnlockBaseAddress(v4->_pixelBuffer, 0);
  }

  else
  {
    v10 = CROSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v45) = 67109120;
      DWORD1(v45) = v6;
      _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_FAULT, "[CRImage initAYUV8888WithCVPixelBuffer:] Unsupported pixel buffer type %08x", &v45, 8u);
    }

    v11 = 0;
  }

  CVPixelBufferRelease(v4->_pixelBuffer);
  v4->_pixelBuffer = 0;

  return v11;
}

- (CRImage)initWithCVPixelBuffer:(__CVBuffer *)buffer toColorSpace:(int)space forceDataCopy:(BOOL)copy
{
  selfCopy = 0;
  if (space > 1)
  {
    if (space != 2)
    {
      if (space == 3)
      {
        self = [(CRImage *)self initAYUV8888WithCVPixelBuffer:buffer, *&space, copy];
        if (!self)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      if (space == 4)
      {
        self = [(CRImage *)self initYUV888WithCVPixelBuffer:buffer];
        if (!self)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

LABEL_13:
      if (!self)
      {
LABEL_15:
        self = self;
        selfCopy = self;
        goto LABEL_16;
      }

LABEL_14:
      self->_colorSpace = space;
      goto LABEL_15;
    }
  }

  else if (space != -1)
  {
    if (space)
    {
      if (space == 1)
      {
        self = [(CRImage *)self initARGB8888WithCVPixelBuffer:buffer];
        if (!self)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      self = [(CRImage *)self initY8WithCVPixelBuffer:buffer forceDataCopy:copy];
    }

    goto LABEL_13;
  }

LABEL_16:

  return selfCopy;
}

- (CRImage)initWithCIImage:(id)image toColorSpace:(int)space
{
  v4 = *&space;
  v44 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (imageCopy)
  {
    v7 = [(CRImage *)self init];
    self = v7;
    if (v7)
    {
      [(CRImage *)v7 setCiImage:imageCopy];
      [imageCopy extent];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      self->_colorSpace = v4;
      self->_isFullRange = 1;
      v16 = objc_opt_class();
      if (v16)
      {
        [v16 allocateVImageBufferWithWidth:v13 height:v15 colorSpace:v4];
      }

      else
      {
        memset(&src, 0, sizeof(src));
      }

      v18 = *&src.width;
      *&self->_vImage.data = *&src.data;
      *&self->_vImage.width = v18;
      self->_vImageDataIsCopy = 1;
      if (v4)
      {
        p_vImage = &self->_vImage;
        if (v4 != 1)
        {
          v20 = objc_opt_class();
          if (v20)
          {
            [v20 allocateVImageBufferWithWidth:self->_vImage.width height:self->_vImage.height colorSpace:1];
          }

          else
          {
            memset(&v38, 0, sizeof(v38));
          }

          src = v38;
          p_vImage = &src;
        }

        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        v30 = MEMORY[0x1E695F620];
        v39 = *MEMORY[0x1E695F7F0];
        v40 = MEMORY[0x1E695E110];
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v32 = [v30 contextWithOptions:v31];
        [v32 render:imageCopy toBitmap:p_vImage->data rowBytes:p_vImage->rowBytes bounds:*MEMORY[0x1E695F8A0] format:DeviceRGB colorSpace:{v9, v11, v13, v15}];

        CGColorSpaceRelease(DeviceRGB);
        if (v4 != 1)
        {
          [objc_opt_class() convertVImage:p_vImage inColorSpace:1 toVImage:&self->_vImage toColorSpace:self->_colorSpace];
          free(p_vImage->data);
        }

        selfCopy2 = self;
        goto LABEL_29;
      }

      DeviceGray = CGColorSpaceCreateDeviceGray();
      if ([imageCopy colorSpace] == DeviceGray)
      {
        v25 = MEMORY[0x1E695F620];
        v26 = *MEMORY[0x1E695F7F0];
        v41[0] = *MEMORY[0x1E695F868];
        v41[1] = v26;
        v42[0] = DeviceGray;
        v42[1] = MEMORY[0x1E695E110];
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
        outputImage = [v25 contextWithOptions:v27];

        [outputImage render:imageCopy toBitmap:self->_vImage.data rowBytes:self->_vImage.rowBytes bounds:*MEMORY[0x1E695F8B0] format:DeviceGray colorSpace:{v9, v11, v13, v15}];
        v28 = 0;
      }

      else
      {
        if (qword_1ED960310 != -1)
        {
          dispatch_once(&qword_1ED960310, &__block_literal_global_34);
        }

        v22 = [MEMORY[0x1E695F648] filterWithName:@"CIColorControls" keysAndValues:{*MEMORY[0x1E695FAB0], imageCopy, *MEMORY[0x1E695FA68], &unk_1F2BF86E0, *MEMORY[0x1E695FB18], &unk_1F2BF86E0, *MEMORY[0x1E695FA88], &unk_1F2BF86F8, 0}];
        outputImage = [v22 outputImage];

        memset(&src, 0, sizeof(src));
        v24 = objc_opt_class();
        if (v24)
        {
          [v24 allocateVImageBufferWithWidth:self->_vImage.width height:self->_vImage.height colorSpace:1];
        }

        else
        {
          memset(&src, 0, sizeof(src));
        }

        v34 = CGColorSpaceCreateDeviceRGB();
        [_MergedGlobals_39 render:outputImage toBitmap:src.data rowBytes:src.rowBytes bounds:*MEMORY[0x1E695F8A0] format:v34 colorSpace:{v9, v11, v13, v15}];
        CGColorSpaceRelease(v34);
        v28 = vImageExtractChannel_ARGB8888(&src, &self->_vImage, 1, 0) != 0;
        free(src.data);
      }

      CGColorSpaceRelease(DeviceGray);
      selfCopy2 = self;
      if (!v28)
      {
        goto LABEL_29;
      }

      v35 = CROSLogForCategory(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = [objc_opt_class() nameForColorSpace:0];
        LODWORD(src.data) = 138412290;
        *(&src.data + 4) = v36;
        _os_log_impl(&dword_1B40D2000, v35, OS_LOG_TYPE_ERROR, "[CRImage initWithCIImage:toColorSpace:] Unable to initialize from CIImage to color space %@", &src, 0xCu);
      }
    }

    selfCopy2 = 0;
LABEL_29:
    v17 = selfCopy2;
    goto LABEL_30;
  }

  v17 = 0;
LABEL_30:

  return v17;
}

void __40__CRImage_initWithCIImage_toColorSpace___block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695F620];
  v4 = *MEMORY[0x1E695F7F0];
  v5[0] = MEMORY[0x1E695E110];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = [v0 contextWithOptions:v1];
  v3 = _MergedGlobals_39;
  _MergedGlobals_39 = v2;
}

- (CRImage)initWithMTLTexture:(id)texture toColorSpace:(int)space
{
  v4 = *&space;
  v25 = *MEMORY[0x1E69E9840];
  textureCopy = texture;
  if (textureCopy)
  {
    v7 = [(CRImage *)self init];
    self = v7;
    if (v7)
    {
      if (v4 <= 1)
      {
        v7->_colorSpace = v4;
        v7->_isFullRange = 1;
        v8 = objc_opt_class();
        width = [textureCopy width];
        height = [textureCopy height];
        if (v8)
        {
          [v8 allocateVImageBufferWithWidth:width height:height colorSpace:v4];
        }

        else
        {
          v21 = 0u;
          v22 = 0u;
        }

        v12 = v22;
        *&self->_vImage.data = v21;
        *&self->_vImage.width = v12;
        self->_vImageDataIsCopy = 1;
        if ([textureCopy pixelFormat] == 10 || objc_msgSend(textureCopy, "pixelFormat") == 13 || objc_msgSend(textureCopy, "pixelFormat") == 70 || objc_msgSend(textureCopy, "pixelFormat") == 73)
        {
          width2 = [textureCopy width];
          height2 = [textureCopy height];
          data = self->_vImage.data;
          rowBytes = self->_vImage.rowBytes;
          v21 = 0uLL;
          *&v22 = 0;
          *(&v22 + 1) = width2;
          v23 = height2;
          v24 = 1;
          [textureCopy getBytes:data bytesPerRow:rowBytes fromRegion:&v21 mipmapLevel:0];
          selfCopy = self;
LABEL_17:
          v11 = selfCopy;
          goto LABEL_18;
        }
      }

      v18 = CROSLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [objc_opt_class() nameForColorSpace:v4];
        LODWORD(v21) = 138412290;
        *(&v21 + 4) = v19;
        _os_log_impl(&dword_1B40D2000, v18, OS_LOG_TYPE_ERROR, "[CRImage initWithMTLTexture:toColorSpace:] Unable to initialize from MTLTexture to color space %@", &v21, 0xCu);
      }
    }

    selfCopy = 0;
    goto LABEL_17;
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (void)runBlockWithARGB8888Image:(id)image blockOwnsMemory:(BOOL)memory
{
  memoryCopy = memory;
  imageCopy = image;
  p_vImage = &self->_vImage;
  if (self->_colorSpace == 1)
  {
    v8 = 0;
  }

  else
  {
    v9 = objc_opt_class();
    if (v9)
    {
      [v9 allocateVImageBufferWithWidth:self->_vImage.width height:self->_vImage.height colorSpace:1];
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (![objc_opt_class() convertVImage:&self->_vImage inColorSpace:self->_colorSpace toVImage:v12 toColorSpace:1])
    {
      p_vImage = v12;
      goto LABEL_10;
    }

    v8 = self->_colorSpace != 1;
    p_vImage = v12;
  }

  imageCopy[2](imageCopy, p_vImage, v8 & memoryCopy);
LABEL_10:
  if (self->_colorSpace != 1 && !memoryCopy)
  {
    free(p_vImage->data);
  }
}

- (CIImage)ciImage
{
  p_ciImage = &self->_ciImage;
  ciImage = self->_ciImage;
  if (!ciImage)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__17;
    v10 = __Block_byref_object_dispose__17;
    v11 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __18__CRImage_ciImage__block_invoke;
    v5[3] = &unk_1E7BC3720;
    v5[4] = &v6;
    [(CRImage *)self runBlockWithARGB8888Image:v5 blockOwnsMemory:1];
    objc_storeStrong(p_ciImage, v7[5]);
    _Block_object_dispose(&v6, 8);

    ciImage = *p_ciImage;
  }

  return ciImage;
}

void __18__CRImage_ciImage__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v7 = MEMORY[0x1E695F658];
  v8 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:*a2 length:a2[1] * a2[3] freeWhenDone:a3];
  v9 = [v7 imageWithBitmapData:v8 bytesPerRow:a2[3] size:*MEMORY[0x1E695F8A0] format:DeviceRGB colorSpace:{a2[2], a2[1]}];
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  CGColorSpaceRelease(DeviceRGB);
}

- (__CVBuffer)pixelBufferWithScale:(double)scale paddedToSize:(CGSize)size adjustedToSize:(CGSize *)toSize paddingMode:(unint64_t)mode
{
  height = size.height;
  width = size.width;
  width = [(CRImage *)self width];
  height = [(CRImage *)self height];
  v14 = width;
  v15 = height;
  pixelBufferOut = 0;
  v16 = CVPixelBufferCreate(*MEMORY[0x1E695E480], width, height, 0x20u, MEMORY[0x1E695E0F8], &pixelBufferOut);
  result = 0;
  if (!v16)
  {
    v18 = width * scale;
    if (v18 >= v14)
    {
      v19 = width;
    }

    else
    {
      v19 = v18;
    }

    if ((height * scale) >= v15)
    {
      v20 = height;
    }

    else
    {
      v20 = (height * scale);
    }

    if (toSize)
    {
      toSize->width = v19;
      toSize->height = v20;
    }

    v21 = 0.0;
    if (mode <= 3)
    {
      v21 = dbl_1B42B00B8[mode];
    }

    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    v25 = CGBitmapContextCreate(BaseAddress, width, height, 8uLL, BytesPerRow, DeviceRGB, 6u);
    v26 = *(MEMORY[0x1E695EFD0] + 16);
    *&v28.a = *MEMORY[0x1E695EFD0];
    *&v28.c = v26;
    *&v28.tx = *(MEMORY[0x1E695EFD0] + 32);
    CGContextConcatCTM(v25, &v28);
    CGContextSetGrayFillColor(v25, v21, 1.0);
    CGContextSetGrayStrokeColor(v25, v21, 1.0);
    v30.size.width = v14;
    v30.size.height = v15;
    v30.origin.x = 0.0;
    v30.origin.y = 0.0;
    CGContextFillRect(v25, v30);
    cgImage = [(CRImage *)self cgImage];
    v31.origin.y = (v15 - v20);
    v31.size.width = v19;
    v31.size.height = v20;
    v31.origin.x = 0.0;
    CGContextDrawImage(v25, v31, cgImage);
    CGColorSpaceRelease(DeviceRGB);
    CGContextRelease(v25);
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    return pixelBufferOut;
  }

  return result;
}

- (id)imageByScaling:(double)scaling paddingToSize:(CGSize)size adjustedToSize:(CGSize *)toSize paddingMode:(unint64_t)mode
{
  v6 = [(CRImage *)self pixelBufferWithScale:toSize paddedToSize:mode adjustedToSize:scaling paddingMode:size.width, size.height];
  v7 = [[CRImage_PixelBuffer alloc] initWithCVPixelBuffer:v6];
  CVPixelBufferRelease(v6);

  return v7;
}

- (__CVBuffer)pixelBuffer
{
  p_pixelBuffer = &self->_pixelBuffer;
  result = self->_pixelBuffer;
  if (!result)
  {
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{MEMORY[0x1E695E118], *MEMORY[0x1E6966030], 0}];
    width = [(CRImage *)self width];
    height = [(CRImage *)self height];
    CVPixelBufferCreate(*MEMORY[0x1E695E480], width, height, 0x20u, v5, p_pixelBuffer);
    CVPixelBufferLockBaseAddress(*p_pixelBuffer, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(*p_pixelBuffer);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    width2 = [(CRImage *)self width];
    height2 = [(CRImage *)self height];
    BytesPerRow = CVPixelBufferGetBytesPerRow(*p_pixelBuffer);
    v13 = CGBitmapContextCreate(BaseAddress, width2, height2, 8uLL, BytesPerRow, DeviceRGB, 6u);
    cgImage = [(CRImage *)self cgImage];
    v15 = *(MEMORY[0x1E695EFD0] + 16);
    *&transform.a = *MEMORY[0x1E695EFD0];
    *&transform.c = v15;
    *&transform.tx = *(MEMORY[0x1E695EFD0] + 32);
    CGContextConcatCTM(v13, &transform);
    width3 = [(CRImage *)self width];
    height3 = [(CRImage *)self height];
    v19.size.width = width3;
    v19.size.height = height3;
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    CGContextDrawImage(v13, v19, cgImage);
    CGColorSpaceRelease(DeviceRGB);
    CGContextRelease(v13);
    CVPixelBufferUnlockBaseAddress(*p_pixelBuffer, 0);

    return *p_pixelBuffer;
  }

  return result;
}

- (vImage_Buffer)createFloatBuffer
{
  retstr->data = malloc_type_calloc([(CRImage *)self height]* [(CRImage *)self width], 4uLL, 0x100004052888210uLL);
  retstr->height = [(CRImage *)self height];
  retstr->width = [(CRImage *)self width];
  retstr->rowBytes = 4 * [(CRImage *)self width];
  [(CRImage *)self vImage:0];
  return vImageConvert_Planar8toPlanarF(&v6, retstr, 1.0, 0.0, 0);
}

- (CGImage)cgImage
{
  if (!self->_cgImage)
  {
    if (self->_colorSpace)
    {
      v7 = 0;
      space = &v7;
      v9 = 0x2020000000;
      v10 = 0;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __18__CRImage_cgImage__block_invoke;
      v6[3] = &unk_1E7BC3720;
      v6[4] = &v7;
      [(CRImage *)self runBlockWithARGB8888Image:v6 blockOwnsMemory:0];
      self->_cgImage = *(space + 3);
      _Block_object_dispose(&v7, 8);
    }

    else
    {
      v7 = 0x100000008;
      v9 = 0;
      v10 = 0;
      space = CGColorSpaceCreateDeviceGray();
      v11 = 0;
      self->_cgImage = MEMORY[0x1B8C753B0](&self->_vImage, &v7, 0, 0, 0, 0);
      CGColorSpaceRelease(space);
    }

    if (!self->_cgImage)
    {
      return 0;
    }
  }

  CRLogger = CRLogger::getCRLogger(self);
  if (*CRLogger == 1)
  {
    v4 = CRLogger;
    result = self->_cgImage;
    if ((v4[8] & 0x10) == 0)
    {
      return result;
    }

    CFRetain(result);
  }

  return self->_cgImage;
}

void __18__CRImage_cgImage__block_invoke(uint64_t a1, void **a2, int a3)
{
  v11 = 0;
  v6 = 0x2000000008;
  space = CGColorSpaceCreateDeviceRGB();
  v8 = 4;
  v10 = 0;
  v9 = 0;
  *(*(*(a1 + 32) + 8) + 24) = MEMORY[0x1B8C753B0](a2, &v6, 0, 0, 0, 0);
  CGColorSpaceRelease(space);
  if (a3)
  {
    free(*a2);
  }
}

- (id)imageByApplyingHistogramCorrection
{
  v22[128] = *MEMORY[0x1E69E9840];
  v3 = [[CRImage alloc] initWithWidth:[(CRImage *)self width] height:[(CRImage *)self height] colorSpace:0];
  width = [(CRImage *)self width];
  height = [(CRImage *)self height];
  [(CRImage *)self vImage];
  v6 = v22[0];
  if (v3)
  {
    [(CRImage *)v3 vImage];
    v7 = v22[0];
  }

  else
  {
    v7 = 0;
  }

  v8 = height * width;
  bzero(v22, 0x400uLL);
  if (v8 >= 1)
  {
    v9 = v8 & 0x7FFFFFFF;
    v10 = v6;
    do
    {
      v11 = *v10++;
      ++*(v22 + v11);
      --v9;
    }

    while (v9);
  }

  v12 = 257;
  v13 = v22;
  do
  {
    v14 = *v13++;
    --v12;
  }

  while (!v14);
  v15 = 1020;
  v16 = v12;
  do
  {
    v17 = *(v22 + v15);
    --v16;
    v15 -= 4;
  }

  while (!v17);
  if (v8 >= 1)
  {
    v18 = 255.0 / v16;
    v19 = v8 & 0x7FFFFFFF;
    do
    {
      v20 = *v6++;
      *v7++ = (v18 * (v12 + v20 - 256));
      --v19;
    }

    while (v19);
  }

  return v3;
}

- (id)imageByAdjustingBrightnessAlpha:(double)alpha beta:(double)beta
{
  v7 = [[CRImage alloc] initWithWidth:[(CRImage *)self width] height:[(CRImage *)self height] colorSpace:0];
  width = [(CRImage *)self width];
  height = [(CRImage *)self height];
  [(CRImage *)self vImage];
  v10 = v15;
  if (v7)
  {
    [(CRImage *)v7 vImage];
    v11 = v15;
  }

  else
  {
    v11 = 0;
  }

  if (height * width >= 1)
  {
    v12 = (height * width) & 0x7FFFFFFF;
    do
    {
      v13 = *v10++;
      *v11++ = fmin(beta + v13 * alpha, 255.0);
      --v12;
    }

    while (v12);
  }

  return v7;
}

- (id)imageByRotating90CW
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  bytesPerPixel = [(CRImage *)self bytesPerPixel];
  v4 = [[CRImage alloc] initWithWidth:[(CRImage *)self height] height:[(CRImage *)self width] colorSpace:self->_colorSpace];
  if (bytesPerPixel == 1)
  {
    v5 = vImageRotate90_Planar8(&self->_vImage, &v4->_vImage, 3u, 0, 0) == 0;
    *(v19 + 24) = v5;
  }

  else
  {
    *v16 = 0u;
    v17 = 0u;
    v6 = objc_opt_class();
    width = [(CRImage *)v4 width];
    height = [(CRImage *)v4 height];
    if (v6)
    {
      [v6 allocateVImageBufferWithWidth:width height:height colorSpace:1];
    }

    else
    {
      *v16 = 0u;
      v17 = 0u;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v14 = *v16;
    v15 = v17;
    v13[2] = __30__CRImage_imageByRotating90CW__block_invoke;
    v13[3] = &unk_1E7BC3748;
    v13[4] = &v18;
    [(CRImage *)self runBlockWithARGB8888Image:v13 blockOwnsMemory:0];
    if (*(v19 + 24) == 1)
    {
      v9 = [objc_opt_class() convertVImage:v16 inColorSpace:1 toVImage:&v4->_vImage toColorSpace:v4->_colorSpace];
      *(v19 + 24) = v9;
    }

    free(v16[0]);
    v5 = *(v19 + 24);
  }

  if (v5)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  _Block_object_dispose(&v18, 8);

  return v11;
}

vImage_Error __30__CRImage_imageByRotating90CW__block_invoke(uint64_t a1, vImage_Buffer *src)
{
  result = vImageRotate90_ARGB8888(src, (a1 + 40), 3u, black_ARGB8888, 0);
  *(*(*(a1 + 32) + 8) + 24) = result == 0;
  return result;
}

- (id)imageByRotating180
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  bytesPerPixel = [(CRImage *)self bytesPerPixel];
  v4 = [[CRImage alloc] initWithWidth:[(CRImage *)self width] height:[(CRImage *)self height] colorSpace:self->_colorSpace];
  if (bytesPerPixel == 1)
  {
    v5 = vImageRotate90_Planar8(&self->_vImage, &v4->_vImage, 2u, 0, 0) == 0;
    *(v19 + 24) = v5;
  }

  else
  {
    *v16 = 0u;
    v17 = 0u;
    v6 = objc_opt_class();
    width = [(CRImage *)v4 width];
    height = [(CRImage *)v4 height];
    if (v6)
    {
      [v6 allocateVImageBufferWithWidth:width height:height colorSpace:1];
    }

    else
    {
      *v16 = 0u;
      v17 = 0u;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v14 = *v16;
    v15 = v17;
    v13[2] = __29__CRImage_imageByRotating180__block_invoke;
    v13[3] = &unk_1E7BC3748;
    v13[4] = &v18;
    [(CRImage *)self runBlockWithARGB8888Image:v13 blockOwnsMemory:0];
    if (*(v19 + 24) == 1)
    {
      v9 = [objc_opt_class() convertVImage:v16 inColorSpace:1 toVImage:&v4->_vImage toColorSpace:v4->_colorSpace];
      *(v19 + 24) = v9;
    }

    free(v16[0]);
    v5 = *(v19 + 24);
  }

  if (v5)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  _Block_object_dispose(&v18, 8);

  return v11;
}

vImage_Error __29__CRImage_imageByRotating180__block_invoke(uint64_t a1, vImage_Buffer *src)
{
  result = vImageRotate90_ARGB8888(src, (a1 + 40), 2u, black_ARGB8888, 0);
  *(*(*(a1 + 32) + 8) + 24) = result == 0;
  return result;
}

- (id)imageByCorrectingFromOrientation:(unsigned int)orientation
{
  v3 = *&orientation;
  v20[1] = *MEMORY[0x1E69E9840];
  v18 = 0;
  v17 = 0;
  [objc_opt_class() cgOrientation:*&orientation toVImageRotationMode:&v18 andReflection:&v17];
  if (v18)
  {
    v5 = 0;
  }

  else
  {
    v5 = v17 == 0;
  }

  if (v5)
  {
    selfCopy = self;
  }

  else if (self->_vImage.data)
  {
    v6 = [CRImage alloc];
    v7 = *&self->_vImage.width;
    v15 = *&self->_vImage.data;
    v16 = v7;
    selfCopy = [(CRImage *)v6 initWithVImageBuffer:&v15 inColorSpace:self->_colorSpace];
    v9 = objc_opt_class();
    colorSpace = self->_colorSpace;
    v19 = *MEMORY[0x1E696DE78];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
    v20[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    if (v9)
    {
      [v9 applyEXIFTransformsOnImage:&selfCopy->_vImage inColorSpace:colorSpace properties:v12];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v13 = v16;
    *&selfCopy->_vImage.data = v15;
    *&selfCopy->_vImage.width = v13;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)imageByScalingToWidth:(unint64_t)width height:(unint64_t)height
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  bytesPerPixel = [(CRImage *)self bytesPerPixel];
  v8 = [[CRImage alloc] initWithWidth:width height:height colorSpace:self->_colorSpace];
  if (bytesPerPixel == 1)
  {
    v9 = vImageScale_Planar8(&self->_vImage, &v8->_vImage, 0, 0) == 0;
    *(v21 + 24) = v9;
  }

  else
  {
    *v18 = 0u;
    v19 = 0u;
    v10 = objc_opt_class();
    if (v10)
    {
      [v10 allocateVImageBufferWithWidth:width height:height colorSpace:1];
    }

    else
    {
      *v18 = 0u;
      v19 = 0u;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = *v18;
    v17 = v19;
    v15[2] = __40__CRImage_imageByScalingToWidth_height___block_invoke;
    v15[3] = &unk_1E7BC3748;
    v15[4] = &v20;
    [(CRImage *)self runBlockWithARGB8888Image:v15 blockOwnsMemory:0];
    if (*(v21 + 24) == 1)
    {
      v11 = [objc_opt_class() convertVImage:v18 inColorSpace:1 toVImage:&v8->_vImage toColorSpace:self->_colorSpace];
      *(v21 + 24) = v11;
    }

    free(v18[0]);
    v9 = *(v21 + 24);
  }

  if (v9)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v20, 8);

  return v13;
}

vImage_Error __40__CRImage_imageByScalingToWidth_height___block_invoke(uint64_t a1, vImage_Buffer *src)
{
  result = vImageScale_ARGB8888(src, (a1 + 40), 0, 0);
  *(*(*(a1 + 32) + 8) + 24) = result == 0;
  return result;
}

- (id)imageByPaddingToRatioAndScalingToWidth:(unint64_t)width height:(unint64_t)height paddingMode:(unint64_t)mode alignCenter:(BOOL)center
{
  centerCopy = center;
  v11 = [[CRImage alloc] initWithWidth:width height:height colorSpace:0];
  width = (([(CRImage *)self height]* width) / height);
  if ([(CRImage *)self width]> width)
  {
    width = [(CRImage *)self width];
  }

  height = (([(CRImage *)self width]* height) / width);
  if ([(CRImage *)self height]> height)
  {
    height = [(CRImage *)self height];
  }

  if (centerCopy)
  {
    v14 = (width - [(CRImage *)self width]) >> 1;
  }

  else
  {
    v14 = 0;
  }

  height2 = [(CRImage *)self height];
  v16 = [[CRImage alloc] initWithWidth:width height:height colorSpace:0];
  v17 = CRImagePaddingValueForMode(mode, self->_vImage.data, self->_vImage.width, self->_vImage.height, self->_vImage.rowBytes);
  memset(v16->_vImage.data, v17, v16->_vImage.height * v16->_vImage.rowBytes);
  if (self->_vImage.height)
  {
    v18 = 0;
    v19 = (height - height2) >> 1;
    do
    {
      memcpy(v16->_vImage.data + v16->_vImage.rowBytes * (v19 + v18) + v14, self->_vImage.data + self->_vImage.rowBytes * v18, self->_vImage.width);
      ++v18;
    }

    while (v18 < self->_vImage.height);
  }

  vImageScale_Planar8(&v16->_vImage, &v11->_vImage, 0, 0);

  return v11;
}

- (id)imageByDilating
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [[CRImage alloc] initWithWidth:[(CRImage *)self width] height:[(CRImage *)self height] colorSpace:0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CRImage_imageByDilating__block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v9 = 3;
  if (qword_1ED960318 != -1)
  {
    dispatch_once(&qword_1ED960318, block);
  }

  v4 = vImageDilate_Planar8(&self->_vImage, &v3->_vImage, 0, 0, qword_1ED960320, 3uLL, 3uLL, 0x10u);
  v5 = v4;
  if (v4)
  {
    v6 = CROSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v11 = v5;
      _os_log_impl(&dword_1B40D2000, v6, OS_LOG_TYPE_ERROR, "%d", buf, 8u);
    }
  }

  return v3;
}

_BYTE *__26__CRImage_imageByDilating__block_invoke(uint64_t a1)
{
  v2 = malloc_type_calloc((*(a1 + 32) * *(a1 + 32)), 1uLL, 0x100004077774924uLL);
  qword_1ED960320 = v2;
  result = memset(v2, 255, (*(a1 + 32) * *(a1 + 32)));
  v4 = *(a1 + 32);
  if (v4 >= 2)
  {
    v5 = 0;
    v6 = 0;
    v7 = v4 >> 1;
    do
    {
      v8 = 0;
      v9 = &v2[v7 + v7 * v4];
      result = v9;
      do
      {
        if (((v4 - 1) * (v4 - 1)) >> 2 > v6 * v6 + v8 * v8)
        {
          v9[v6] = 0;
          v9[v5] = 0;
          result[v6] = 0;
          result[v5] = 0;
        }

        ++v8;
        result -= v4;
        v9 += v4;
      }

      while (v7 != v8);
      ++v6;
      --v5;
    }

    while (v6 != v7);
  }

  return result;
}

- (id)imageByApplyingBinaryMask:(id)mask
{
  maskCopy = mask;
  v5 = [[CRImage alloc] initWithWidth:[(CRImage *)self width] height:[(CRImage *)self height] colorSpace:0];
  v6 = v5;
  height = self->_vImage.height;
  if (height)
  {
    v8 = 0;
    width = self->_vImage.width;
    do
    {
      if (width)
      {
        for (i = 0; i < width; ++i)
        {
          if (!*(maskCopy[2] + v8 * maskCopy[5] + i))
          {
            operator new();
          }

          width = self->_vImage.width;
        }

        height = self->_vImage.height;
      }

      ++v8;
    }

    while (height > v8);
    v6 = v5;
    if (height)
    {
      v11 = 0;
      v12 = self->_vImage.width;
      do
      {
        if (v12)
        {
          for (j = 0; j < v12; ++j)
          {
            v14 = 0;
            if (*(maskCopy[2] + v11 * maskCopy[5] + j))
            {
              v14 = *(self->_vImage.data + v11 * self->_vImage.rowBytes + j);
            }

            *(v5->_vImage.data + v11 * v5->_vImage.rowBytes + j) = v14;
            v12 = self->_vImage.width;
          }

          height = self->_vImage.height;
        }

        ++v11;
      }

      while (height > v11);
    }
  }

  return v6;
}

+ (unint64_t)bytesPerPixelForColorSpace:(int)space
{
  if (space > 4)
  {
    return 0;
  }

  else
  {
    return qword_1B42B00D8[space];
  }
}

+ (unint64_t)channelsForColorSpace:(int)space
{
  if (space > 4)
  {
    return 0;
  }

  else
  {
    return qword_1B42B00D8[space];
  }
}

- (unint64_t)bytesPerPixel
{
  v3 = objc_opt_class();
  colorSpace = self->_colorSpace;

  return [v3 bytesPerPixelForColorSpace:colorSpace];
}

- (unint64_t)numChannels
{
  v3 = objc_opt_class();
  colorSpace = self->_colorSpace;

  return [v3 channelsForColorSpace:colorSpace];
}

+ (id)nameForColorSpace:(int)space
{
  if (space > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7BC3788[space];
  }
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"CRImage (%@) %ldpx x %ldpx\n", objc_opt_class(), -[CRImage width](self, "width"), -[CRImage height](self, "height")];
  v4 = [objc_opt_class() nameForColorSpace:{-[CRImage colorSpace](self, "colorSpace")}];
  [v3 appendFormat:@"- colorSpace: '%@'\n", v4];

  if (self->_sceneStabilityMetric)
  {
    [v3 appendFormat:@"- sceneStability: %@", self->_sceneStabilityMetric];
  }

  if (self->_vImageDataIsCopy)
  {
    [v3 appendFormat:@"- HAS vImage COPY (%p)", self->_vImage.data];
  }

  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    [v3 appendFormat:@"- HAS pixelBuffer (format: %08x)", CVPixelBufferGetPixelFormatType(pixelBuffer)];
  }

  if (self->_ciImage)
  {
    [v3 appendFormat:@"- HAS ciImage"];
  }

  if (self->_cgImage)
  {
    [v3 appendFormat:@"- HAS cgImage"];
  }

  return v3;
}

- (CRImage)initWithWidth:(unint64_t)width height:(unint64_t)height colorSpace:(int)space
{
  v5 = *&space;
  v8 = [(CRImage *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_colorSpace = v5;
    v8->_isFullRange = 1;
    v10 = objc_opt_class();
    if (v10)
    {
      [v10 allocateVImageBufferWithWidth:width height:height colorSpace:v5];
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    *&v9->_vImage.data = v12;
    *&v9->_vImage.width = v13;
    v9->_vImageDataIsCopy = 1;
  }

  return v9;
}

- (CRImage)initWithVImageBuffer:(vImage_Buffer *)buffer inColorSpace:(int)space toColorSpace:(int)colorSpace
{
  v5 = *&colorSpace;
  v6 = *&space;
  v8 = [(CRImage *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_colorSpace = v5;
    v8->_isFullRange = 1;
    v10 = [objc_opt_class() bytesPerPixelForColorSpace:v5];
    v11 = objc_opt_class();
    if (v11)
    {
      [v11 allocateVImageBufferWithWidth:buffer->width height:buffer->height bytesPerPixel:v10];
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    *&v9->_vImage.data = v14;
    *&v9->_vImage.width = v15;
    v9->_vImageDataIsCopy = 1;
    if (v6 == v5)
    {
      vImageCopyBuffer(buffer, &v9->_vImage, v10, 0);
    }

    else if (([objc_opt_class() convertVImage:buffer inColorSpace:v6 toVImage:&v9->_vImage toColorSpace:v5] & 1) == 0)
    {
      free(v9->_vImage.data);
      v12 = 0;
      *&v9->_vImage.data = 0u;
      *&v9->_vImage.width = 0u;
      goto LABEL_9;
    }
  }

  v12 = v9;
LABEL_9:

  return v12;
}

- (CRImage)initWithVImageBuffer:(vImage_Buffer *)buffer inColorSpace:(int)space
{
  v4 = *&buffer->width;
  v6[0] = *&buffer->data;
  v6[1] = v4;
  return [(CRImage *)self initWithVImageBuffer:v6 inColorSpace:*&space toColorSpace:*&space];
}

- (CRImage)initWithFloatBuffer:(float *)buffer width:(unint64_t)width height:(unint64_t)height
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = [(CRImage *)self init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v8->_colorSpace = 0;
  v8->_isFullRange = 1;
  v10 = [objc_opt_class() bytesPerPixelForColorSpace:v8->_colorSpace];
  v11 = objc_opt_class();
  if (v11)
  {
    [v11 allocateVImageBufferWithWidth:width height:height bytesPerPixel:v10];
  }

  else
  {
    *buf = 0u;
    v22 = 0u;
  }

  v12 = v22;
  *&v9->_vImage.data = *buf;
  *&v9->_vImage.width = v12;
  v9->_vImageDataIsCopy = 1;
  data = v9->_vImage.data;
  v20 = 0;
  CRConvertFloat32BufferToUInt8Buffer(buffer, data, height * width, &v20);
  v14 = v20;
  if (v14)
  {
    v15 = v14;
    v16 = CROSLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v15 localizedDescription];
      *buf = 138412290;
      *&buf[4] = localizedDescription;
      _os_log_impl(&dword_1B40D2000, v16, OS_LOG_TYPE_ERROR, "Failed to create image with float buffer: %@", buf, 0xCu);
    }

    v18 = 0;
  }

  else
  {
LABEL_9:
    v18 = v9;
  }

  return v18;
}

- (id)imageByCroppingRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  width = [(CRImage *)self width];
  v24.size.height = [(CRImage *)self height];
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v24.size.width = width;
  v23 = CGRectIntersection(v22, v24);
  v9 = v23.origin.x;
  v10 = v23.origin.y;
  v11 = v23.size.width;
  v12 = v23.size.height;
  v19 = 0u;
  v20 = 0u;
  [(CRImage *)self vImage];
  v13 = v19;
  v14 = *(&v20 + 1);
  *&v19 = v13 + v14 * v10 + [(CRImage *)self bytesPerPixel]* v9;
  *(&v19 + 1) = v12;
  *&v20 = v11;
  v15 = [CRImage alloc];
  v16 = [(CRImage *)v15 initWithVImageBuffer:&v18 inColorSpace:[(CRImage *)self colorSpace:v19]];

  return v16;
}

- (id)imageByCroppingRectangle:(CGRect)rectangle textFeaturePoints:(id)points radians:(float)radians rotatedRoi:(CGRect *)roi
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  v84 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  width = [(CRImage *)self width];
  height = [(CRImage *)self height];
  v88.size.width = width;
  v88.size.height = height;
  v88.origin.x = 0.0;
  v88.origin.y = 0.0;
  v86.origin.x = x;
  v86.origin.y = y;
  v86.size.width = width;
  v86.size.height = height;
  v87 = CGRectIntersection(v86, v88);
  v68 = v87.origin.y;
  v69 = v87.origin.x;
  v70 = v87.size.width;
  v71 = v87.size.height;
  angleInRadians = radians;
  v15 = __sincosf_stret(radians);
  v16 = malloc_type_calloc([pointsCopy count], 0x10uLL, 0x1000040451B5BE8uLL);
  roiCopy = roi;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v17 = pointsCopy;
  v18 = [v17 countByEnumeratingWithState:&v79 objects:v83 count:16];
  if (v18)
  {
    v19 = 0;
    v20 = width * 0.5;
    v21 = height * 0.5;
    v22 = *v80;
    cosval = v15.__cosval;
    v24 = -v15.__sinval;
    do
    {
      v25 = 0;
      v26 = &v16[v19].i64[1];
      do
      {
        if (*v80 != v22)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v79 + 1) + 8 * v25) pointValue];
        v28 = v27;
        v30 = v29;
        width2 = [(CRImage *)self width];
        height2 = [(CRImage *)self height];
        v33 = v28 * width2 - x - v20;
        v34 = v30 * height2 - y - v21;
        v35 = v33 * cosval - v34 * v24;
        *&v33 = v34 * cosval + v33 * v24;
        ++v19;
        *(v26 - 1) = v20 + v35;
        *v26 = v21 + *&v33;
        ++v25;
        v26 += 2;
      }

      while (v18 != v25);
      v18 = [v17 countByEnumeratingWithState:&v79 objects:v83 count:16];
    }

    while (v18);
  }

  v36 = 0;
  v37 = fmax([(CRImage *)self width], [(CRImage *)self height]);
  *&v37 = v37;
  v38 = vdup_lane_s32(*&v37, 0);
  v39 = 0;
  while ([v17 count] > v36)
  {
    v40 = vextq_s8(v16[v36], v16[v36], 8uLL);
    v38 = vcvt_f32_f64(vminnmq_f64(vcvtq_f64_f32(v38), v40));
    v39 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(v39), v40));
    ++v36;
  }

  free(v16);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CVPixelBufferLockBaseAddress(self->_pixelBuffer, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(self->_pixelBuffer);
    CVPixelBufferGetHeight(self->_pixelBuffer);
    CVPixelBufferGetWidth(self->_pixelBuffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(self->_pixelBuffer);
    src.rowBytes = BytesPerRow;
  }

  else
  {
    [(CRImage *)self vImage];
    src = dest;
    BaseAddress = dest.data;
    BytesPerRow = dest.rowBytes;
  }

  v43 = v68;
  v44 = [(CRImage *)self bytesPerPixel]* v69;
  v45 = &BaseAddress[BytesPerRow * v43 + v44];
  v46 = v70;
  v47 = v71;
  src.data = v45;
  src.height = v47;
  src.width = v46;
  v48 = [objc_opt_class() bytesPerPixelForColorSpace:{-[CRImage colorSpace](self, "colorSpace")}];
  memset(&dest, 0, sizeof(dest));
  v49 = objc_opt_class();
  v50 = vcvtq_u64_f64(vcvtq_f64_f32(vsub_f32(v39, v38)));
  v72 = v50;
  if (v49)
  {
    [v49 allocateVImageBufferWithWidth:v50.i64[1] height:v50.i64[0] bytesPerPixel:v48];
  }

  else
  {
    memset(&dest, 0, sizeof(dest));
  }

  v51 = 0;
  if (v46)
  {
    v52 = &BaseAddress[v44 + BytesPerRow * (v47 + v43 - 1)];
    v53 = v70;
    v54 = angleInRadians;
    do
    {
      v55 = *v45++;
      v56 = v51 + v55;
      v57 = *v52++;
      v51 = v56 + v57;
      --v53;
    }

    while (v53);
  }

  else
  {
    v54 = angleInRadians;
  }

  if (v47 - 1 >= 2)
  {
    v58 = v47 - 2;
    v59 = &BaseAddress[v44 + BytesPerRow + BytesPerRow * v43];
    do
    {
      v51 += *v59 + v59[v46 - 1];
      v59 += BytesPerRow;
      --v58;
    }

    while (v58);
  }

  if (2 * (v47 + v46) == 4)
  {
    LOBYTE(v60) = 0;
  }

  else
  {
    v60 = v51 / (2 * (v47 + v46) - 4);
  }

  vImageRotate_Planar8(&src, &dest, 0, v54, v60, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CVPixelBufferUnlockBaseAddress(self->_pixelBuffer, 1uLL);
  }

  if (roiCopy)
  {
    v61 = vcvtq_f64_f32(v38);
    v62 = vcvtq_f64_u64(v72);
    *roiCopy = vextq_s8(v61, v61, 8uLL);
    roiCopy[1] = vextq_s8(v62, v62, 8uLL);
  }

  data = dest.data;
  [(CRImage *)self bytesPerPixel];
  v74 = data;
  v75 = vshrq_n_s64(vshlq_n_s64(v72, 0x20uLL), 0x20uLL);
  rowBytes = dest.rowBytes;
  v64 = [[CRImage alloc] initWithVImageBuffer:&v74 inColorSpace:[(CRImage *)self colorSpace]];
  free(dest.data);

  return v64;
}

- (CGRect)rotatedRoiByCroppingRectangle:(CGRect)rectangle textFeaturePoints:(id)points radians:(float)radians
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  v48 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  v12 = __sincosf_stret(radians);
  v13 = malloc_type_calloc([pointsCopy count], 0x10uLL, 0x1000040451B5BE8uLL);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = pointsCopy;
  v15 = [v14 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v15)
  {
    v16 = 0;
    v17 = width * 0.5;
    v18 = height * 0.5;
    v19 = *v44;
    cosval = v12.__cosval;
    v21 = -v12.__sinval;
    do
    {
      v22 = 0;
      v23 = &v13[v16].f64[1];
      do
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v43 + 1) + 8 * v22) pointValue];
        v25 = v24;
        v27 = v26;
        width = [(CRImage *)self width];
        height = [(CRImage *)self height];
        v30 = v25 * width - x - v17;
        v31 = v27 * height - y - v18;
        v32 = v30 * cosval - v31 * v21;
        *&v30 = v31 * cosval + v30 * v21;
        ++v16;
        *(v23 - 1) = v17 + v32;
        *v23 = v18 + *&v30;
        ++v22;
        v23 += 2;
      }

      while (v15 != v22);
      v15 = [v14 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v15);
  }

  v33 = 0;
  v34 = fmax([(CRImage *)self width], [(CRImage *)self height]);
  *&v34 = v34;
  v42 = vdup_lane_s32(*&v34, 0);
  v35 = 0;
  while ([v14 count] > v33)
  {
    v36 = v13[v33];
    v42 = vcvt_f32_f64(vminnmq_f64(vcvtq_f64_f32(v42), v36));
    v35 = vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(v35), v36));
    ++v33;
  }

  free(v13);

  v37 = v42.f32[0];
  v38 = v42.f32[1];
  v39 = vsub_f32(v35, v42);
  v40 = v39.f32[0];
  v41 = v39.f32[1];
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (id)imageByCroppingRectangle:(CGRect)rectangle toHeight:(unint64_t)height andWidth:(unint64_t)width withRotationAngle:(float)angle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  width = [(CRImage *)self width];
  v30.size.height = [(CRImage *)self height];
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v30.size.width = width;
  v29 = CGRectIntersection(v28, v30);
  v15 = v29.origin.x;
  v16 = v29.size.width;
  v17 = v29.size.height;
  *&src.width = 0u;
  [(CRImage *)self vImage];
  src.data = ([(CRImage *)self bytesPerPixel]* v15);
  src.height = v17;
  src.width = v16;
  if (src.height <= height)
  {
    v20 = [CRImage alloc];
    dest = src;
    v21 = [(CRImage *)v20 initWithVImageBuffer:&dest inColorSpace:[(CRImage *)self colorSpace]];
  }

  else
  {
    memset(&dest, 0, sizeof(dest));
    v18 = objc_opt_class();
    bytesPerPixel = [(CRImage *)self bytesPerPixel];
    if (v18)
    {
      [v18 allocateVImageBufferWithWidth:width height:height bytesPerPixel:bytesPerPixel];
    }

    else
    {
      memset(&dest, 0, sizeof(dest));
    }

    vImageRotate_Planar8(&src, &dest, 0, angle, 0, 0);
    v22 = [CRImage alloc];
    v21 = [(CRImage *)v22 initWithVImageBuffer:&v24 inColorSpace:[(CRImage *)self colorSpace:dest.data]];
    if (dest.data)
    {
      free(dest.data);
    }
  }

  return v21;
}

- (id)imageByRectifyingRegion:(id)region toColorSpace:(int)space homography:(id *)homography
{
  v6 = *&space;
  v67[4] = *MEMORY[0x1E69E9840];
  regionCopy = region;
  v9 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:{-[CRImage pixelBuffer](self, "pixelBuffer")}];
  v66[0] = @"inputTopLeft";
  [regionCopy topLeft];
  v11 = v10;
  v13 = v12;
  [(CRImage *)self size];
  v16 = CIImageCoordinateFromCGPoint(v11, v13, v14, v15);
  v67[0] = v16;
  v66[1] = @"inputTopRight";
  [regionCopy topRight];
  v18 = v17;
  v20 = v19;
  [(CRImage *)self size];
  v23 = CIImageCoordinateFromCGPoint(v18, v20, v21, v22);
  v67[1] = v23;
  v66[2] = @"inputBottomRight";
  [regionCopy bottomRight];
  v25 = v24;
  v27 = v26;
  [(CRImage *)self size];
  v30 = CIImageCoordinateFromCGPoint(v25, v27, v28, v29);
  v67[2] = v30;
  v66[3] = @"inputBottomLeft";
  [regionCopy bottomLeft];
  v32 = v31;
  v34 = v33;
  [(CRImage *)self size];
  v37 = CIImageCoordinateFromCGPoint(v32, v34, v35, v36);
  v67[3] = v37;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:4];
  v39 = [v9 imageByApplyingFilter:@"CIPerspectiveCorrection" withInputParameters:v38];

  v40 = [[CRImage alloc] initWithCIImage:v39 toColorSpace:v6];
  if (homography)
  {
    v62[0] = 0;
    v62[1] = 0;
    __asm { FMOV            V1.2D, #1.0 }

    v63 = xmmword_1B42AF250;
    v64 = _Q1;
    v65 = xmmword_1B42AF260;
    [regionCopy topLeft];
    [regionCopy topRight];
    v61[2] = v48;
    v61[3] = v49;
    [regionCopy bottomRight];
    v61[4] = v50;
    v61[5] = v51;
    [regionCopy bottomLeft];
    v61[6] = v52;
    v61[7] = v53;
    v54 = computeHomographyMatrix(v61, v62);
    *(homography + 2) = v55;
    *(homography + 6) = v56;
    *homography = v54;
    *(homography + 2) = v57;
    *(homography + 10) = v58;
    *(homography + 4) = v59;
  }

  return v40;
}

- (void)writeToURL:(id)l
{
  absoluteString = [l absoluteString];
  v4 = [absoluteString stringByReplacingOccurrencesOfString:@"file://" withString:&stru_1F2BB4348];
  [(CRImage *)self writeToFile:v4];
}

- (void)writeToFile:(id)file
{
  fileCopy = file;
  writeCGImageWithMetadata([(CRImage *)self cgImage], fileCopy, 0);
}

- (void)dealloc
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    CVPixelBufferRelease(self->_pixelBuffer);
    self->_pixelBuffer = 0;
  }

  if (self->_vImageDataIsCopy)
  {
    data = self->_vImage.data;
    if (data)
    {
      free(data);
      self->_vImage.data = 0;
      self->_vImageDataIsCopy = 0;
    }
  }

  cgImage = self->_cgImage;
  if (cgImage)
  {
    CGImageRelease(cgImage);
    self->_cgImage = 0;
  }

  v6.receiver = self;
  v6.super_class = CRImage;
  [(CRImage *)&v6 dealloc];
}

- (id)imageByInvertingIntensity
{
  v3 = [CRImage alloc];
  [(CRImage *)self vImage];
  v4 = [(CRImage *)v3 initWithVImageBuffer:v12 inColorSpace:0];
  v5 = v4;
  if (v4)
  {
    [(CRImage *)v4 vImage];
    v6 = v12[0];
  }

  else
  {
    v6 = 0;
  }

  for (i = 0; [(CRImage *)v5 width]> i; ++i)
  {
    v8 = 0;
    v9 = v6 + i;
    while ([(CRImage *)v5 height]> v8)
    {
      v10 = *(v9 + [(CRImage *)v5 width]* v8);
      *(v9 + [(CRImage *)v5 width]* v8++) = ~v10;
    }
  }

  return v5;
}

+ (void)cgOrientation:(unsigned int)orientation toVImageRotationMode:(char *)mode andReflection:(int *)reflection
{
  v5 = orientation - 2;
  if (orientation - 2 > 6)
  {
    LOBYTE(v6) = 0;
    v7 = 0;
  }

  else
  {
    v6 = 0x1030301020200uLL >> (8 * v5);
    v7 = dword_1B42B0100[v5];
  }

  *mode = v6;
  *reflection = v7;
}

+ (vImage_Buffer)applyEXIFTransformsOnImage:(SEL)image inColorSpace:(const vImage_Buffer *)space properties:(int)properties
{
  v6 = *&properties;
  v27 = *MEMORY[0x1E69E9840];
  v8 = *&space->width;
  *&retstr->data = *&space->data;
  *&retstr->width = v8;
  v9 = [a6 objectForKey:*MEMORY[0x1E696DE78]];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_34;
  }

  rotationConstant = 0;
  v24 = 0;
  [objc_opt_class() cgOrientation:objc_msgSend(v9 toVImageRotationMode:"intValue") andReflection:{&rotationConstant, &v24}];
  v11 = [objc_opt_class() bytesPerPixelForColorSpace:v6];
  v12 = v11;
  if (v11 != 1 && v11 != 4)
  {
    v15 = CROSLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [objc_opt_class() nameForColorSpace:v6];
      LODWORD(buf.data) = 138412290;
      *(&buf.data + 4) = v16;
      _os_log_impl(&dword_1B40D2000, v15, OS_LOG_TYPE_ERROR, "[CRImage applyEXIFTransformsOnImage:inColorSpace:properties:] Color space %@ not supported. Only color spaces with 1 or 4 bytes per pixel are supported.", &buf, 0xCu);
    }

    goto LABEL_34;
  }

  if (rotationConstant)
  {
    v13 = *&retstr->width;
    *&buf.data = *&retstr->data;
    *&buf.width = v13;
    if (rotationConstant)
    {
      v17 = objc_opt_class();
      if (v17)
      {
        [v17 allocateVImageBufferWithWidth:buf.height height:buf.width bytesPerPixel:v12];
        goto LABEL_14;
      }
    }

    else
    {
      v14 = objc_opt_class();
      if (v14)
      {
        [v14 allocateVImageBufferWithWidth:buf.width height:buf.height bytesPerPixel:v12];
LABEL_14:
        *&retstr->data = v22;
        *&retstr->width = v23;
        if (v12 == 1)
        {
          vImageRotate90_Planar8(&buf, retstr, rotationConstant, 0, 0);
        }

        else
        {
          vImageRotate90_ARGB8888(&buf, retstr, rotationConstant, black_ARGB8888, 0);
        }

        free(buf.data);
        goto LABEL_18;
      }
    }

    v22 = 0u;
    v23 = 0u;
    goto LABEL_14;
  }

LABEL_18:
  if (v24)
  {
    v18 = *&retstr->width;
    *&buf.data = *&retstr->data;
    *&buf.width = v18;
    if (v24 == 2)
    {
      v20 = objc_opt_class();
      if (v20)
      {
        [v20 allocateVImageBufferWithWidth:buf.width height:buf.height bytesPerPixel:v12];
      }

      else
      {
        v22 = 0u;
        v23 = 0u;
      }

      *&retstr->data = v22;
      *&retstr->width = v23;
      if (v12 == 1)
      {
        vImageHorizontalReflect_Planar8(&buf, retstr, 0);
      }

      else
      {
        vImageHorizontalReflect_ARGB8888(&buf, retstr, 0);
      }

      goto LABEL_33;
    }

    if (v24 == 1)
    {
      v19 = objc_opt_class();
      if (v19)
      {
        [v19 allocateVImageBufferWithWidth:buf.width height:buf.height bytesPerPixel:v12];
      }

      else
      {
        v22 = 0u;
        v23 = 0u;
      }

      *&retstr->data = v22;
      *&retstr->width = v23;
      if (v12 == 1)
      {
        vImageVerticalReflect_Planar8(&buf, retstr, 0);
      }

      else
      {
        vImageVerticalReflect_ARGB8888(&buf, retstr, 0);
      }

LABEL_33:
      free(buf.data);
    }
  }

LABEL_34:

  return result;
}

- (CRImage)initWithCGImage:(CGImage *)image properties:(id)properties toColorSpace:(int)space
{
  v5 = *&space;
  propertiesCopy = properties;
  v9 = [(CRImage *)self init];
  if (!v9)
  {
LABEL_27:
    v15 = v9;
    goto LABEL_28;
  }

  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v33 = 0u;
  v34 = 0u;
  v12 = objc_opt_class();
  if (v12)
  {
    [v12 allocateVImageBufferWithWidth:Width height:Height colorSpace:1];
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v32 = 0;
  v28[0] = 0x2000000008;
  v28[1] = DeviceRGB;
  v29 = 4;
  v30 = 0;
  v31 = 0;
  v14 = MEMORY[0x1B8C752A0](&v33, v28, 0, image, 512);
  CGColorSpaceRelease(DeviceRGB);
  if (v14)
  {
    goto LABEL_6;
  }

  v16 = [objc_opt_class() bytesPerPixelForColorSpace:v5];
  v17 = v16;
  if (v16 != 1 && v16 != 4)
  {
    v18 = objc_opt_class();
    if (v18)
    {
      [v18 applyEXIFTransformsOnImage:&v33 inColorSpace:1 properties:propertiesCopy];
    }

    else
    {
      *v26 = 0u;
      v27 = 0u;
    }

    v33 = *v26;
    v34 = v27;
  }

  if (v5 == 1)
  {
    *v26 = v33;
    v27 = v34;
LABEL_19:
    if (v17 == 4 || v17 == 1)
    {
      v21 = objc_opt_class();
      if (v21)
      {
        [v21 applyEXIFTransformsOnImage:v26 inColorSpace:v5 properties:propertiesCopy];
      }

      else
      {
        v24 = 0u;
        v25 = 0u;
      }

      *v26 = v24;
      v27 = v25;
    }

    v9->_colorSpace = v5;
    *&v9->_isFullRange = 257;
    v22 = v27;
    *&v9->_vImage.data = *v26;
    *&v9->_vImage.width = v22;
    goto LABEL_27;
  }

  v19 = objc_opt_class();
  if (v19)
  {
    [v19 allocateVImageBufferWithWidth:Width height:Height colorSpace:v5];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  *v26 = v24;
  v27 = v25;
  v20 = [objc_opt_class() convertVImage:&v33 inColorSpace:1 toVImage:v26 toColorSpace:v5];
  free(v33);
  if (v20)
  {
    goto LABEL_19;
  }

  free(v26[0]);
LABEL_6:
  v15 = 0;
LABEL_28:

  return v15;
}

- (CRImage)initWithContentsOfURL:(id)l toColorSpace:(int)space
{
  v4 = *&space;
  v6 = CGImageSourceCreateWithURL(l, 0);
  selfCopy = v6;
  if (v6)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v6, 0, 0);
    if (ImageAtIndex)
    {
      v9 = CGImageSourceCopyPropertiesAtIndex(selfCopy, 0, 0);
      v10 = [(CRImage *)self initWithCGImage:ImageAtIndex properties:v9 toColorSpace:v4];

      CGImageRelease(ImageAtIndex);
      CFRelease(selfCopy);
      self = v10;
      selfCopy = self;
    }

    else
    {
      CFRelease(selfCopy);
      selfCopy = 0;
    }
  }

  return selfCopy;
}

+ (BOOL)convertVImage:(const vImage_Buffer *)image inColorSpace:(int)space toVImage:(vImage_Buffer *)vImage toColorSpace:(int)colorSpace
{
  v6 = *&colorSpace;
  v8 = *&space;
  v32 = *MEMORY[0x1E69E9840];
  if (space == colorSpace)
  {
    v10 = [objc_opt_class() bytesPerPixelForColorSpace:*&space];
    v11 = vImageCopyBuffer(image, vImage, v10, 0);
    goto LABEL_3;
  }

  v15 = 1;
  if (space > 1)
  {
    if (space != 2)
    {
      if (space == 3)
      {
        if (!colorSpace)
        {
          v15 = 1;
          if (!vImageExtractChannel_ARGB8888(image, vImage, 1, 0))
          {
            return v15;
          }

          goto LABEL_4;
        }

        if (colorSpace == 4)
        {
          vImageConvert_ARGB8888toRGB888(image, vImage, 0);
          return 1;
        }

        if (colorSpace != 1 || vImageConvert_YpCbCrToARGB_GenerateConversion(*MEMORY[0x1E6958848], &fullYpCbCrPixelRange, &buf, kvImage444AYpCbCr8, kvImageARGB8888, 0))
        {
          goto LABEL_4;
        }

        v11 = vImageConvert_444AYpCbCr8ToARGB8888(image, vImage, &buf, 0, 0);
        goto LABEL_3;
      }

      if (space != 4)
      {
        return v15;
      }

      if (colorSpace)
      {
        if (colorSpace == 3)
        {
          v11 = vImageConvert_RGB888toARGB8888(image, 0, 0xFFu, vImage, 0, 0);
          goto LABEL_3;
        }

        if (colorSpace != 1)
        {
          goto LABEL_4;
        }

        memset(&permuteMap, 0, sizeof(permuteMap));
        v16 = objc_opt_class();
        if (v16)
        {
          [v16 allocateVImageBufferWithWidth:image->width height:image->height colorSpace:4];
        }

        else
        {
          memset(&permuteMap, 0, sizeof(permuteMap));
        }

        v29 = 1;
        *v28 = 2;
        if (vImagePermuteChannels_RGB888(image, &permuteMap, v28, 0) || vImageConvert_YpCbCrToARGB_GenerateConversion(*MEMORY[0x1E6958848], &fullYpCbCrPixelRange, &buf, kvImage444CrYpCb8, kvImageARGB8888, 0))
        {
          free(permuteMap.data);
          goto LABEL_4;
        }

        v24 = vImageConvert_444CrYpCb8ToARGB8888(&permuteMap, vImage, &buf, 0, 0xFFu, 0);
      }

      else
      {
        memset(&buf, 0, 32);
        v23 = objc_opt_class();
        if (v23)
        {
          [v23 allocateVImageBufferWithWidth:image->width height:image->height bytesPerPixel:1];
        }

        else
        {
          memset(&buf, 0, 32);
        }

        memset(&permuteMap, 0, sizeof(permuteMap));
        v26 = objc_opt_class();
        if (v26)
        {
          [v26 allocateVImageBufferWithWidth:image->width height:image->height bytesPerPixel:1];
        }

        else
        {
          memset(&permuteMap, 0, sizeof(permuteMap));
        }

        v24 = vImageConvert_RGB888toPlanar8(image, vImage, &buf, &permuteMap, 0);
        free(*buf.opaque);
      }

      data = permuteMap.data;
      goto LABEL_68;
    }

    v17 = CROSLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = [objc_opt_class() nameForColorSpace:2];
      v21 = [objc_opt_class() nameForColorSpace:v6];
      *buf.opaque = 138412546;
      *&buf.opaque[4] = v20;
      *&buf.opaque[12] = 2112;
      *&buf.opaque[14] = v21;
      _os_log_impl(&dword_1B40D2000, v17, OS_LOG_TYPE_ERROR, "[CRImage convertVImage:inColorSpace:toVImage:toColorSpace:] Unable to convert %@ to %@", buf.opaque, 0x16u);
    }
  }

  else
  {
    if (space != -1)
    {
      if (space)
      {
        if (space != 1)
        {
          return v15;
        }

        if (colorSpace == 4)
        {
          if (vImageConvert_ARGBToYpCbCr_GenerateConversion(*MEMORY[0x1E6958838], &fullYpCbCrPixelRange, &buf, kvImageARGB8888, kvImage444CrYpCb8, 0) || vImageConvert_ARGB8888To444CrYpCb8(image, vImage, &buf, 0, 0))
          {
            goto LABEL_4;
          }

          BYTE2(permuteMap.data) = 0;
          LOWORD(permuteMap.data) = 513;
          v11 = vImagePermuteChannels_RGB888(vImage, vImage, &permuteMap, 0);
        }

        else if (colorSpace == 3)
        {
          if (vImageConvert_ARGBToYpCbCr_GenerateConversion(*MEMORY[0x1E6958838], &fullYpCbCrPixelRange, &buf, kvImageARGB8888, kvImage444AYpCbCr8, 0))
          {
            goto LABEL_4;
          }

          v11 = vImageConvert_ARGB8888To444AYpCbCr8(image, vImage, &buf, 0, 0);
        }

        else
        {
          if (colorSpace)
          {
            goto LABEL_4;
          }

          *buf.opaque = 0x93B5B921B330000;
          v11 = vImageMatrixMultiply_ARGB8888ToPlanar8(image, vImage, &buf, 0x7FFF, 0, 0x3FFF, 0);
        }

LABEL_3:
        if (v11)
        {
          goto LABEL_4;
        }

        return 1;
      }

      if (colorSpace == 1)
      {
        v11 = vImageConvert_Planar8ToXRGB8888(0xFFu, image, image, image, vImage, 0);
        goto LABEL_3;
      }

      if (colorSpace != 4)
      {
        if (colorSpace != 3 || vImageOverwriteChannelsWithPixel_ARGB8888(black_AYpCbCr, vImage, vImage, 0xFu, 0))
        {
          goto LABEL_4;
        }

        v11 = vImageOverwriteChannels_ARGB8888(image, vImage, vImage, 4u, 0);
        goto LABEL_3;
      }

      memset(&buf, 0, 32);
      v22 = objc_opt_class();
      if (v22)
      {
        [v22 allocateVImageBufferWithWidth:image->width height:image->height colorSpace:1];
      }

      else
      {
        memset(&buf, 0, 32);
      }

      if (vImageOverwriteChannelsWithPixel_ARGB8888(black_AYpCbCr, &buf, &buf, 0xFu, 0) || vImageOverwriteChannels_ARGB8888(image, &buf, &buf, 4u, 0))
      {
LABEL_4:
        v12 = CROSLogForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = [objc_opt_class() nameForColorSpace:v8];
          v14 = [objc_opt_class() nameForColorSpace:v6];
          *buf.opaque = 138412546;
          *&buf.opaque[4] = v13;
          *&buf.opaque[12] = 2112;
          *&buf.opaque[14] = v14;
          _os_log_impl(&dword_1B40D2000, v12, OS_LOG_TYPE_ERROR, "[CRImage convertVImage:inColorSpace:toVImage:toColorSpace:] Unable to convert %@ to %@", buf.opaque, 0x16u);
        }

        return 0;
      }

      v24 = vImageConvert_ARGB8888toRGB888(&buf, vImage, 0);
      data = *buf.opaque;
LABEL_68:
      free(data);
      if (v24)
      {
        goto LABEL_4;
      }

      return 1;
    }

    v17 = CROSLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [objc_opt_class() nameForColorSpace:0xFFFFFFFFLL];
      v19 = [objc_opt_class() nameForColorSpace:v6];
      *buf.opaque = 138412546;
      *&buf.opaque[4] = v18;
      *&buf.opaque[12] = 2112;
      *&buf.opaque[14] = v19;
      _os_log_impl(&dword_1B40D2000, v17, OS_LOG_TYPE_ERROR, "[CRImage convertVImage:inColorSpace:toVImage:toColorSpace:] Unable to convert %@ to %@", buf.opaque, 0x16u);
    }
  }

  return 0;
}

- (id)imageByConvertingToColorSpace:(int)space
{
  if (self->_colorSpace == space)
  {
    selfCopy = self;
  }

  else
  {
    v5 = *&space;
    v6 = [[CRImage alloc] initWithWidth:[(CRImage *)self width] height:[(CRImage *)self height] colorSpace:*&space];
    if ([objc_opt_class() convertVImage:&self->_vImage inColorSpace:self->_colorSpace toVImage:&v6->_vImage toColorSpace:v5])
    {
      selfCopy = v6;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)imageByOverlayingRects:(CGRect *)rects count:(int64_t)count strings:(id)strings lineWidth:(double)width red:(double)red green:(double)green blue:(double)blue alpha:(double)self0
{
  stringsCopy = strings;
  cgImage = [(CRImage *)self cgImage];
  width = [(CRImage *)self width];
  height = [(CRImage *)self height];
  v22 = makeCFPointer<CGColorSpace *>;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  (v22)(DeviceRGB, &space);
  v24 = makeCFPointer<CGContext *>[0];
  v25 = CGBitmapContextCreate(0, width, height, 8uLL, 4 * width, space, 6u);
  (v24)(v25, &c);
  v26 = *(MEMORY[0x1E695EFD0] + 16);
  *&transform.a = *MEMORY[0x1E695EFD0];
  *&transform.c = v26;
  *&transform.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGContextConcatCTM(c, &transform);
  v52.size.width = width;
  v52.size.height = height;
  v52.origin.x = 0.0;
  v52.origin.y = 0.0;
  CGContextDrawImage(c, v52, cgImage);
  CGContextSetRGBStrokeColor(c, red, green, blue, alpha);
  CGContextSetRGBFillColor(c, red, green, blue, alpha);
  if (count >= 1 && stringsCopy)
  {
    CGContextSetTextDrawingMode(c, kCGTextFill);
    v27 = makeCFPointer<CGColor *>[0];
    GenericRGB = CGColorCreateGenericRGB(red, green, blue, alpha);
    (v27)(GenericRGB, &transform);
    v29 = 0;
    rectsCopy = rects;
    do
    {
      CGContextSetTextPosition(c, rectsCopy->origin.x, rectsCopy->origin.y);
      v31 = makeCFPointer<CGPath *>[0];
      Mutable = CGPathCreateMutable();
      (v31)(Mutable, &path);
      v53.origin.x = rectsCopy->origin.x;
      v53.size.width = rectsCopy->size.width;
      height = rectsCopy->size.height;
      v53.origin.y = rectsCopy->origin.y - height;
      v53.size.height = height + height;
      CGPathAddRect(path, 0, v53);
      v34 = makeCFPointer<__CTFramesetter const*>[0];
      v35 = [stringsCopy objectAtIndexedSubscript:v29];
      v36 = CTFramesetterCreateWithAttributedString(v35);
      (v34)(v36, &cf);

      v37 = makeCFPointer<__CTFrame const*>[0];
      v51.location = 0;
      v51.length = 0;
      v38 = CTFramesetterCreateFrame(cf, v51, path, 0);
      (v37)(v38, &frame);
      CTFrameDraw(frame, c);
      if (frame)
      {
        CFRelease(frame);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (path)
      {
        CFRelease(path);
      }

      ++v29;
      ++rectsCopy;
    }

    while (count != v29);
    if (*&transform.a)
    {
      CFRelease(*&transform.a);
    }
  }

  CGContextSetLineWidth(c, width);
  CGContextAddRects(c, rects, count);
  CGContextStrokePath(c);
  v39 = makeCFPointer<CGImage *>[0];
  Image = CGBitmapContextCreateImage(c);
  (v39)(Image, &transform);
  v41 = [CRImage alloc];
  v42 = [(CRImage *)v41 initWithCGImage:*&transform.a toColorSpace:1];
  if (*&transform.a)
  {
    CFRelease(*&transform.a);
  }

  if (c)
  {
    CFRelease(c);
  }

  if (space)
  {
    CFRelease(space);
  }

  return v42;
}

- (id)imageByOverlayingRegions:(id)regions strings:(id)strings lineWidth:(double)width red:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  alphaCopy = alpha;
  regionsCopy = regions;
  stringsCopy = strings;
  __p = 0;
  v45 = 0;
  v46 = 0;
  v17 = [regionsCopy count];
  if (v17)
  {
    if (!(v17 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(&__p, v17);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  for (i = 0; i < [regionsCopy count]; ++i)
  {
    v19 = [regionsCopy objectAtIndexedSubscript:i];
    boundingQuad = [v19 boundingQuad];
    denormalizedQuad = [boundingQuad denormalizedQuad];
    [denormalizedQuad boundingBox];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    [(CRImage *)self size];
    v31 = v30 - v25 - v29;
    v32 = v45;
    if (v45 >= v46)
    {
      v34 = __p;
      v35 = v45 - __p;
      v36 = (v45 - __p) >> 5;
      v37 = v36 + 1;
      if ((v36 + 1) >> 59)
      {
        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
      }

      v38 = v46 - __p;
      if ((v46 - __p) >> 4 > v37)
      {
        v37 = v38 >> 4;
      }

      if (v38 >= 0x7FFFFFFFFFFFFFE0)
      {
        v37 = 0x7FFFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(&__p, v37);
      }

      v39 = 32 * v36;
      *v39 = v23;
      *(v39 + 8) = v31;
      *(v39 + 16) = v27;
      *(v39 + 24) = v29;
      v33 = 32 * v36 + 32;
      memcpy(0, v34, v35);
      v40 = __p;
      __p = 0;
      v45 = v33;
      v46 = 0;
      if (v40)
      {
        operator delete(v40);
      }
    }

    else
    {
      *v45 = v23;
      *(v32 + 1) = v31;
      v33 = (v32 + 32);
      *(v32 + 2) = v27;
      *(v32 + 3) = v29;
    }

    v45 = v33;
  }

  if (__p == v45)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(CRImage *)self imageByOverlayingRects:__p count:(v45 - __p) >> 5 strings:stringsCopy lineWidth:width red:red green:green blue:blue alpha:alphaCopy];
  }

  return selfCopy;
}

+ (void)drawVerticalLineAtXOffset:(double)offset image:(id)image
{
  imageCopy = image;
  v6 = imageCopy;
  if (imageCopy)
  {
    [imageCopy vImage];
    v7 = v11;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
  v9 = llround(offset);
  v10 = v7 + (v9 & ~(v9 >> 31));
  while ([v6 height] > v8)
  {
    *(v10 + [v6 width] * v8++) = 125;
  }
}

- (vImage_Buffer)vImage
{
  v3 = *&self[1].data;
  *&retstr->data = *&self->width;
  *&retstr->width = v3;
  return self;
}

- (void)setVImage:(vImage_Buffer *)image
{
  v3 = *&image->width;
  *&self->_vImage.data = *&image->data;
  *&self->_vImage.width = v3;
}

@end