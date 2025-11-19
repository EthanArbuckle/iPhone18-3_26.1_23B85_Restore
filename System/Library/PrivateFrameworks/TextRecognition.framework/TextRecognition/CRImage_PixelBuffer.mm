@interface CRImage_PixelBuffer
+ (__CVBuffer)_convertPixelBuffer:(__CVBuffer *)a3 toFormat:(unsigned int)a4 iosurfaceBacking:(BOOL)a5;
- (CGImage)cgImage;
- (CRImage_PixelBuffer)initWithCVPixelBuffer:(__CVBuffer *)a3;
- (CRImage_PixelBuffer)initWithContentsOfURL:(id)a3 toColorSpace:(int)a4;
- (CRImage_PixelBuffer)pixelBufferWithScale:(double)a3 paddedToSize:(CGSize)a4;
- (CRImage_PixelBuffer)pixelBufferWithScale:(double)a3 paddedToSize:(CGSize)a4 adjustedToSize:(CGSize *)a5;
- (CRImage_PixelBuffer)pixelBufferWithScale:(double)a3 paddedToSize:(CGSize)a4 adjustedToSize:(CGSize *)a5 paddingMode:(unint64_t)a6;
- (CRImage_PixelBuffer)pixelBufferWithScale:(double)a3 paddedToSize:(CGSize)a4 adjustedToSize:(CGSize *)a5 paddingMode:(unint64_t)a6 format:(unsigned int)a7 hardwareAcceleration:(BOOL)a8 iosurfaceBacking:(BOOL)a9;
- (CRImage_PixelBuffer)pixelBufferWithScale:(double)a3 paddedToSize:(CGSize)a4 adjustedToSize:(CGSize *)a5 paddingMode:(unint64_t)a6 format:(unsigned int)a7 hardwareAcceleration:(BOOL)a8 toSurface:(__IOSurface *)a9;
- (__CVBuffer)_pixelBufferFromUrl:(id)a3;
- (id)imageByApplyingBinaryMask:(id)a3;
- (id)imageByConvertingToColorSpace:(int)a3 forceDataCopy:(BOOL)a4;
- (id)imageByCorrectingFromOrientation:(unsigned int)a3;
- (id)imageByCroppingRectangle:(CGRect)a3 iosurfaceBacking:(BOOL)a4;
- (id)imageByCroppingRectangle:(CGRect)a3 toSurface:(__IOSurface *)a4;
- (id)imageByDilating;
- (id)imageByInvertingIntensity;
- (id)imageByOverlayingRects:(CGRect *)a3 count:(int64_t)a4 lineWidth:(double)a5 red:(double)a6 green:(double)a7 blue:(double)a8 alpha:(double)a9;
- (id)imageByPaddingToRatioAndScalingToWidth:(unint64_t)a3 height:(unint64_t)a4 paddingMode:(unint64_t)a5 alignCenter:(BOOL)a6;
- (id)imageByScalingToWidth:(unint64_t)a3 height:(unint64_t)a4;
- (unint64_t)height;
- (unint64_t)width;
- (vImage_Buffer)vImage;
- (void)dealloc;
- (void)writeToFile:(id)a3;
@end

@implementation CRImage_PixelBuffer

- (unint64_t)height
{
  v2 = [(CRImage_PixelBuffer *)self pixelBuffer];

  return CVPixelBufferGetHeight(v2);
}

- (unint64_t)width
{
  v2 = [(CRImage_PixelBuffer *)self pixelBuffer];

  return CVPixelBufferGetWidth(v2);
}

- (CRImage_PixelBuffer)initWithCVPixelBuffer:(__CVBuffer *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Attempting to initialize CRImage_PixelBuffer with nil CVPixelBufferRef" userInfo:0];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = CRImage_PixelBuffer;
  v4 = [(CRImage *)&v12 init];
  if (v4)
  {
    v5 = CVPixelBufferRetain(a3);
    v4->super._pixelBuffer = v5;
    PixelFormatType = CVPixelBufferGetPixelFormatType(v5);
    if (PixelFormatType <= 875704421)
    {
      if (PixelFormatType == 32)
      {
        v7 = 1;
        goto LABEL_13;
      }

      if (PixelFormatType != 846624121)
      {
LABEL_15:
        v9 = CROSLogForCategory(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          v10 = CVPixelBufferGetPixelFormatType(v4->super._pixelBuffer);
          *buf = 67109120;
          v14 = v10;
          _os_log_impl(&dword_1B40D2000, v9, OS_LOG_TYPE_FAULT, "[CRImage_PixelBuffer initWithCVPixelBuffer:] Unsupported pixel buffer type %08x", buf, 8u);
        }

        return v4;
      }
    }

    else if (PixelFormatType != 875704422)
    {
      if (PixelFormatType == 1111970369)
      {
        v7 = 2;
        goto LABEL_13;
      }

      if (PixelFormatType == 1278226488)
      {
        v7 = 0;
LABEL_13:
        [(CRImage *)v4 setColorSpace:v7];
        return v4;
      }

      goto LABEL_15;
    }

    v7 = 3;
    goto LABEL_13;
  }

  return v4;
}

- (CRImage_PixelBuffer)initWithContentsOfURL:(id)a3 toColorSpace:(int)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 == 3)
  {
    v12.receiver = self;
    v12.super_class = CRImage_PixelBuffer;
    v7 = [(CRImage *)&v12 init];
    v8 = v7;
    if (v7)
    {
      v7->super._pixelBuffer = [(CRImage_PixelBuffer *)v7 _pixelBufferFromUrl:v6];
    }

    self = v8;
    v9 = self;
  }

  else
  {
    v10 = CROSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = a4;
      _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_ERROR, "[CRImage_PixelBuffer initWithContentsOfURL:toColorSpace:] Unsupported colorspace: %d ", buf, 8u);
    }

    v9 = 0;
  }

  return v9;
}

- (CRImage_PixelBuffer)pixelBufferWithScale:(double)a3 paddedToSize:(CGSize)a4 adjustedToSize:(CGSize *)a5 paddingMode:(unint64_t)a6 format:(unsigned int)a7 hardwareAcceleration:(BOOL)a8 toSurface:(__IOSurface *)a9
{
  v10 = a8;
  height = a4.height;
  width = a4.width;
  if (*a9)
  {
    v17 = [(CRImage_PixelBuffer *)self width:a5];
    v18 = [(CRImage_PixelBuffer *)self height];
    PixelFormatType = CVPixelBufferGetPixelFormatType([(CRImage_PixelBuffer *)self pixelBuffer]);
    pixelBufferOut = 0;
    v20 = *MEMORY[0x1E695E480];
    v21 = 0;
    if (!CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], *a9, MEMORY[0x1E695E0F8], &pixelBufferOut))
    {
      v39 = PixelFormatType;
      v22 = width;
      v23 = height;
      v24 = (v18 * a3);
      v25 = (v17 * a3);
      pixelTransferSessionOut = 0;
      VTPixelTransferSessionCreate(v20, &pixelTransferSessionOut);
      v26 = *MEMORY[0x1E695E4D0];
      if (v10)
      {
        v27 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v27 = *MEMORY[0x1E695E4C0];
      }

      VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983DF8], v27);
      VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983DF0], v27);
      VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983E30], *MEMORY[0x1E69840E0]);
      if (v25 >= v22)
      {
        v28 = width;
      }

      else
      {
        v28 = v25;
      }

      if (v24 >= v23)
      {
        v29 = height;
      }

      else
      {
        v29 = v24;
      }

      v30 = v28;
      v31 = v29;
      if (a5)
      {
        a5->width = v30;
        a5->height = v31;
      }

      v42.width = v22;
      v42.height = v23;
      v32 = 0;
      v33 = 0;
      v34 = createPixelBufferCLAPDictionaryFromRect(v42, *(&v30 - 2));
      VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983DB8], v34);
      VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983E58], v26);
      v35 = pixelTransferSessionOut;
      v36 = [(CRImage_PixelBuffer *)self pixelBuffer];
      VTPixelTransferSessionTransferImage(v35, v36, pixelBufferOut);
      VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
      CFRelease(pixelTransferSessionOut);
      if (v39 == a7)
      {
        v21 = pixelBufferOut;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = [(CRImage_PixelBuffer *)self pixelBufferWithScale:a5 paddedToSize:a6 adjustedToSize:*&a7 paddingMode:a8 format:1 hardwareAcceleration:a3 iosurfaceBacking:a4.width, a4.height];
    IOSurface = CVPixelBufferGetIOSurface(v21);
    *a9 = IOSurface;
    if (IOSurface)
    {
      CFRetain(IOSurface);
    }

    else
    {
      return 0;
    }
  }

  return v21;
}

- (CRImage_PixelBuffer)pixelBufferWithScale:(double)a3 paddedToSize:(CGSize)a4 adjustedToSize:(CGSize *)a5 paddingMode:(unint64_t)a6 format:(unsigned int)a7 hardwareAcceleration:(BOOL)a8 iosurfaceBacking:(BOOL)a9
{
  v9 = a9;
  v10 = a8;
  height = a4.height;
  width = a4.width;
  v16 = [(CRImage_PixelBuffer *)self width:a5];
  v17 = [(CRImage_PixelBuffer *)self height];
  v18 = [MEMORY[0x1E695DF90] dictionary];
  v19 = v18;
  if (v9)
  {
    [(__CFDictionary *)v18 setObject:MEMORY[0x1E695E0F8] forKey:*MEMORY[0x1E69660D8]];
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType([(CRImage_PixelBuffer *)self pixelBuffer]);
  v21 = width;
  v22 = height;
  pixelBufferOut = 0;
  v23 = *MEMORY[0x1E695E480];
  if (CVPixelBufferCreate(*MEMORY[0x1E695E480], width, height, PixelFormatType, v19, &pixelBufferOut))
  {
    v24 = 0;
  }

  else
  {
    pixelTransferSessionOut = 0;
    VTPixelTransferSessionCreate(v23, &pixelTransferSessionOut);
    v25 = *MEMORY[0x1E695E4D0];
    if (v10)
    {
      v26 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v26 = *MEMORY[0x1E695E4C0];
    }

    VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983DF8], v26);
    VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983DF0], v26);
    VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983E30], *MEMORY[0x1E69840E0]);
    v27 = (v16 * a3);
    v28 = (v17 * a3);
    if (v27 >= v21)
    {
      v27 = width;
    }

    if (v28 >= v22)
    {
      v28 = height;
    }

    v29 = v27;
    v30 = v28;
    if (a5)
    {
      a5->width = v29;
      a5->height = v30;
    }

    v40.width = v21;
    v40.height = v22;
    v31 = 0;
    v32 = 0;
    v33 = createPixelBufferCLAPDictionaryFromRect(v40, *(&v29 - 2));
    VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983DB8], v33);
    VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983E58], v25);
    v34 = pixelTransferSessionOut;
    v35 = [(CRImage_PixelBuffer *)self pixelBuffer];
    VTPixelTransferSessionTransferImage(v34, v35, pixelBufferOut);
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
    CFRelease(pixelTransferSessionOut);
    if (PixelFormatType == a7)
    {
      v24 = pixelBufferOut;
    }

    else
    {
      v24 = [CRImage_PixelBuffer _convertPixelBuffer:"_convertPixelBuffer:toFormat:iosurfaceBacking:" toFormat:pixelBufferOut iosurfaceBacking:?];
      CVPixelBufferRelease(pixelBufferOut);
    }
  }

  return v24;
}

- (id)imageByConvertingToColorSpace:(int)a3 forceDataCopy:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v15 = *MEMORY[0x1E69E9840];
  if ([(CRImage *)self colorSpace]== a3 && !v4)
  {
    v7 = self;
LABEL_18:
    v11 = v7;
    goto LABEL_19;
  }

  if (v5)
  {
    if (v5 == 3)
    {
      v8 = 875704422;
      if (v4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v5 != 1)
      {
        v12 = CROSLogForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          v14[0] = 67109120;
          v14[1] = v5;
          _os_log_impl(&dword_1B40D2000, v12, OS_LOG_TYPE_FAULT, "[CRImage_PixelBuffer imageByConvertingToColorSpace:forceDataCopy:] Unsupported color space %d", v14, 8u);
        }

        goto LABEL_17;
      }

      v8 = 32;
      if (v4)
      {
LABEL_17:
        v7 = [[CRImage alloc] initWithCVPixelBuffer:[(CRImage_PixelBuffer *)self pixelBuffer] toColorSpace:v5 forceDataCopy:v4];
        goto LABEL_18;
      }
    }
  }

  else
  {
    v8 = 1278226488;
    if (v4)
    {
      goto LABEL_17;
    }
  }

  v9 = [CRImage_PixelBuffer _convertPixelBuffer:[(CRImage_PixelBuffer *)self pixelBuffer] toFormat:v8 iosurfaceBacking:1];
  if (v9)
  {
    v10 = v9;
    v11 = [[CRImage_PixelBuffer alloc] initWithCVPixelBuffer:v9];
    CVPixelBufferRelease(v10);
  }

  else
  {
    v11 = 0;
  }

LABEL_19:

  return v11;
}

- (id)imageByCroppingRectangle:(CGRect)a3 toSurface:(__IOSurface *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = *a4;
  if (*a4)
  {
    pixelBufferOut = 0;
    if (CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v9, MEMORY[0x1E695E0F8], &pixelBufferOut))
    {
      v10 = 0;
    }

    else
    {
      v13 = [(CRImage_PixelBuffer *)self pixelBuffer];
      CRCropRectangleFromPixelBuffer(v13, pixelBufferOut, x, y, width, height);
      v14 = [CRImage_PixelBuffer alloc];
      v10 = [(CRImage_PixelBuffer *)v14 initWithCVPixelBuffer:pixelBufferOut];
      CVPixelBufferRelease(pixelBufferOut);
    }
  }

  else
  {
    v10 = [(CRImage_PixelBuffer *)self imageByCroppingRectangle:1 iosurfaceBacking:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
    IOSurface = CVPixelBufferGetIOSurface([(CRImage_PixelBuffer *)v10 pixelBuffer]);
    *a4 = IOSurface;
    CFRetain(IOSurface);
  }

  return v10;
}

- (id)imageByCroppingRectangle:(CGRect)a3 iosurfaceBacking:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(CRImage_PixelBuffer *)self width];
  v11 = [(CRImage_PixelBuffer *)self height];
  v31.size.width = v10;
  v31.size.height = v11;
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  if (!CGRectEqualToRect(v30, v31) || v4)
  {
    if (v4 || [(CRImage *)self colorSpace]&& [(CRImage *)self colorSpace]!= 1 && [(CRImage *)self colorSpace]!= 2)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType([(CRImage_PixelBuffer *)self pixelBuffer]);
      v14 = [MEMORY[0x1E695DF90] dictionary];
      v15 = v14;
      if (v4)
      {
        [(__CFDictionary *)v14 setObject:MEMORY[0x1E695E0F8] forKey:*MEMORY[0x1E69660D8]];
      }

      texture[0] = 0;
      if (CVPixelBufferCreate(*MEMORY[0x1E695E480], width, height, PixelFormatType, v15, texture))
      {
        v16 = 0;
      }

      else
      {
        v19 = [(CRImage_PixelBuffer *)self pixelBuffer];
        CRCropRectangleFromPixelBuffer(v19, texture[0], x, y, width, height);
        v20 = [CRImage_PixelBuffer alloc];
        v16 = [(CRImage_PixelBuffer *)v20 initWithCVPixelBuffer:texture[0]];
        CVPixelBufferRelease(texture[0]);
      }

      v12 = v16;
    }

    else
    {
      v12 = objc_alloc_init(CRImage);
      [(CRImage *)v12 setColorSpace:[(CRImage *)self colorSpace]];
      v17 = objc_opt_class();
      v18 = [(CRImage *)self colorSpace];
      if (v17)
      {
        [v17 allocateVImageBufferWithWidth:width height:height colorSpace:v18];
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
      }

      *texture = v27;
      v26 = v28;
      [(CRImage *)v12 setVImage:texture];
      [(CRImage *)v12 setVImageDataIsCopy:1];
      if ([(CRImage *)self colorSpace])
      {
        v21 = 4;
      }

      else
      {
        v21 = 1;
      }

      v22 = [(CRImage_PixelBuffer *)self pixelBuffer];
      if (v12)
      {
        [(CRImage_PixelBuffer *)v12 vImage];
        v23 = texture[0];
      }

      else
      {
        v23 = 0;
        *texture = 0u;
        v26 = 0u;
      }

      CRCopyRectangleCropMemoryFromPixelBuffer(v22, v23, v21, x, y, width, height);
    }
  }

  else
  {
    v12 = self;
  }

  return v12;
}

- (id)imageByCorrectingFromOrientation:(unsigned int)a3
{
  if (a3 - 1 <= 1)
  {
    v4 = self;
    goto LABEL_14;
  }

  v6 = [(CRImage_PixelBuffer *)self width];
  v7 = [(CRImage_PixelBuffer *)self height];
  v8 = 0;
  if (a3 <= 8)
  {
    if (((1 << a3) & 0x18) != 0)
    {
      v8 = *MEMORY[0x1E6983FF0];
    }

    else
    {
      if (((1 << a3) & 0xC0) != 0)
      {
        v9 = MEMORY[0x1E6984000];
      }

      else
      {
        if (((1 << a3) & 0x120) == 0)
        {
          goto LABEL_11;
        }

        v9 = MEMORY[0x1E6983FF8];
      }

      v8 = *v9;
      v6 = [(CRImage_PixelBuffer *)self height];
      v7 = [(CRImage_PixelBuffer *)self width];
    }
  }

LABEL_11:
  destinationBuffer = 0;
  pixelRotationSessionOut = 0;
  v10 = *MEMORY[0x1E695E480];
  VTPixelRotationSessionCreate(*MEMORY[0x1E695E480], &pixelRotationSessionOut);
  VTSessionSetProperty(pixelRotationSessionOut, *MEMORY[0x1E6983D98], v8);
  VTSessionSetProperty(pixelRotationSessionOut, *MEMORY[0x1E6983DF0], *MEMORY[0x1E695E4C0]);
  PixelFormatType = CVPixelBufferGetPixelFormatType([(CRImage_PixelBuffer *)self pixelBuffer]);
  v12 = CVPixelBufferCreate(v10, v6, v7, PixelFormatType, MEMORY[0x1E695E0F8], &destinationBuffer);
  v13 = pixelRotationSessionOut;
  if (v12)
  {
    CFRelease(pixelRotationSessionOut);
    v4 = 0;
  }

  else
  {
    v14 = [(CRImage_PixelBuffer *)self pixelBuffer];
    VTPixelRotationSessionRotateImage(v13, v14, destinationBuffer);
    VTPixelRotationSessionInvalidate(pixelRotationSessionOut);
    CFRelease(pixelRotationSessionOut);
    v15 = [CRImage_PixelBuffer alloc];
    v4 = [(CRImage_PixelBuffer *)v15 initWithCVPixelBuffer:destinationBuffer];
    CVPixelBufferRelease(destinationBuffer);
  }

LABEL_14:

  return v4;
}

- (vImage_Buffer)vImage
{
  v4 = [[CRImage alloc] initWithCVPixelBuffer:[(CRImage_PixelBuffer *)self pixelBuffer] toColorSpace:1];
  v6 = v4;
  if (v4)
  {
    [(CRImage *)v4 vImage];
  }

  else
  {
    *&retstr->data = 0u;
    *&retstr->width = 0u;
  }

  return result;
}

- (CGImage)cgImage
{
  v2 = [[CRImage alloc] initWithCVPixelBuffer:[(CRImage_PixelBuffer *)self pixelBuffer] toColorSpace:1];
  v3 = [(CRImage *)v2 cgImage];

  return v3;
}

- (id)imageByScalingToWidth:(unint64_t)a3 height:(unint64_t)a4
{
  v6 = [[CRImage alloc] initWithCVPixelBuffer:[(CRImage_PixelBuffer *)self pixelBuffer] toColorSpace:1];
  v7 = [(CRImage *)v6 imageByScalingToWidth:a3 height:a4];

  return v7;
}

- (id)imageByPaddingToRatioAndScalingToWidth:(unint64_t)a3 height:(unint64_t)a4 paddingMode:(unint64_t)a5 alignCenter:(BOOL)a6
{
  v6 = a6;
  v11 = [(CRImage *)self colorSpace];
  v12 = [CRImage alloc];
  if (v11)
  {
    v13 = [(CRImage *)v12 initWithCVPixelBuffer:[(CRImage_PixelBuffer *)self pixelBuffer] toColorSpace:[(CRImage *)self colorSpace]];
    v14 = [(CRImage *)v13 imageByPaddingToRatioAndScalingToWidth:a3 height:a4 paddingMode:a5 alignCenter:v6];
  }

  else
  {
    v14 = [(CRImage *)v12 initWithWidth:a3 height:a4 colorSpace:0];
    v15 = (([(CRImage_PixelBuffer *)self height]* a3) / a4);
    if ([(CRImage_PixelBuffer *)self width]> v15)
    {
      v15 = [(CRImage_PixelBuffer *)self width];
    }

    v16 = (([(CRImage_PixelBuffer *)self width]* a4) / a3);
    if ([(CRImage_PixelBuffer *)self height]> v16)
    {
      v16 = [(CRImage_PixelBuffer *)self height];
    }

    if (v6)
    {
      v17 = (v15 - [(CRImage_PixelBuffer *)self width]) >> 1;
    }

    else
    {
      v17 = 0;
    }

    v25 = [(CRImage_PixelBuffer *)self height];
    v13 = [[CRImage alloc] initWithWidth:v15 height:v16 colorSpace:0];
    CVPixelBufferLockBaseAddress([(CRImage_PixelBuffer *)self pixelBuffer], 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress([(CRImage_PixelBuffer *)self pixelBuffer]);
    Width = CVPixelBufferGetWidth([(CRImage_PixelBuffer *)self pixelBuffer]);
    Height = CVPixelBufferGetHeight([(CRImage_PixelBuffer *)self pixelBuffer]);
    BytesPerRow = CVPixelBufferGetBytesPerRow([(CRImage_PixelBuffer *)self pixelBuffer]);
    CVPixelBufferGetPlaneCount([(CRImage_PixelBuffer *)self pixelBuffer]);
    v22 = CRImagePaddingValueForMode(a5, BaseAddress, Width, Height, BytesPerRow);
    memset(v13->_vImage.data, v22, v13->_vImage.height * v13->_vImage.rowBytes);
    if (Height)
    {
      v23 = (v16 - v25) >> 1;
      do
      {
        memcpy(v13->_vImage.data + v13->_vImage.rowBytes * v23 + v17, BaseAddress, Width);
        BaseAddress += BytesPerRow;
        ++v23;
        --Height;
      }

      while (Height);
    }

    CVPixelBufferUnlockBaseAddress([(CRImage_PixelBuffer *)self pixelBuffer], 1uLL);
    vImageScale_Planar8(&v13->_vImage, (v14 + 16), 0, 0);
  }

  return v14;
}

- (id)imageByDilating
{
  v2 = [[CRImage alloc] initWithCVPixelBuffer:[(CRImage_PixelBuffer *)self pixelBuffer] toColorSpace:1];
  v3 = [(CRImage *)v2 imageByDilating];

  return v3;
}

- (id)imageByApplyingBinaryMask:(id)a3
{
  v4 = a3;
  v5 = [[CRImage alloc] initWithCVPixelBuffer:[(CRImage_PixelBuffer *)self pixelBuffer] toColorSpace:1];
  v6 = [(CRImage *)v5 imageByApplyingBinaryMask:v4];

  return v6;
}

- (void)writeToFile:(id)a3
{
  v5 = a3;
  v4 = [[CRImage alloc] initWithCVPixelBuffer:[(CRImage_PixelBuffer *)self pixelBuffer] toColorSpace:1];
  [(CRImage *)v4 writeToFile:v5];
}

- (id)imageByInvertingIntensity
{
  v2 = [[CRImage alloc] initWithCVPixelBuffer:[(CRImage_PixelBuffer *)self pixelBuffer] toColorSpace:1];
  v3 = [(CRImage *)v2 imageByInvertingIntensity];

  return v3;
}

- (id)imageByOverlayingRects:(CGRect *)a3 count:(int64_t)a4 lineWidth:(double)a5 red:(double)a6 green:(double)a7 blue:(double)a8 alpha:(double)a9
{
  v16 = [[CRImage alloc] initWithCVPixelBuffer:[(CRImage_PixelBuffer *)self pixelBuffer] toColorSpace:1];
  v17 = [(CRImage *)v16 imageByOverlayingRects:a3 count:a4 strings:0 lineWidth:a5 red:a6 green:a7 blue:a8 alpha:a9];

  return v17;
}

- (CRImage_PixelBuffer)pixelBufferWithScale:(double)a3 paddedToSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  PixelFormatType = CVPixelBufferGetPixelFormatType([(CRImage_PixelBuffer *)self pixelBuffer]);

  return [(CRImage_PixelBuffer *)self pixelBufferWithScale:0 paddedToSize:1 adjustedToSize:PixelFormatType paddingMode:a3 format:width, height];
}

- (CRImage_PixelBuffer)pixelBufferWithScale:(double)a3 paddedToSize:(CGSize)a4 adjustedToSize:(CGSize *)a5
{
  height = a4.height;
  width = a4.width;
  PixelFormatType = CVPixelBufferGetPixelFormatType([(CRImage_PixelBuffer *)self pixelBuffer]);

  return [(CRImage_PixelBuffer *)self pixelBufferWithScale:a5 paddedToSize:1 adjustedToSize:PixelFormatType paddingMode:a3 format:width, height];
}

- (CRImage_PixelBuffer)pixelBufferWithScale:(double)a3 paddedToSize:(CGSize)a4 adjustedToSize:(CGSize *)a5 paddingMode:(unint64_t)a6
{
  height = a4.height;
  width = a4.width;
  PixelFormatType = CVPixelBufferGetPixelFormatType([(CRImage_PixelBuffer *)self pixelBuffer:a5]);

  return [(CRImage_PixelBuffer *)self pixelBufferWithScale:a5 paddedToSize:1 adjustedToSize:PixelFormatType paddingMode:a3 format:width, height];
}

- (void)dealloc
{
  pixelBuffer = self->super._pixelBuffer;
  if (pixelBuffer)
  {
    CVPixelBufferRelease(pixelBuffer);
    self->super._pixelBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = CRImage_PixelBuffer;
  [(CRImage *)&v4 dealloc];
}

- (__CVBuffer)_pixelBufferFromUrl:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695F658];
  v18 = *MEMORY[0x1E695F948];
  v19[0] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v6 = [v4 imageWithContentsOfURL:v3 options:v5];

  v7 = [objc_alloc(MEMORY[0x1E695F620]) initWithOptions:0];
  [v6 extent];
  v9 = v8;
  v11 = v10;
  v15 = 0;
  v16 = *MEMORY[0x1E69660D8];
  v17 = MEMORY[0x1E695E0F8];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  if (CVPixelBufferCreate(*MEMORY[0x1E695E480], v9, v11, 0x34323066u, v12, &v15))
  {
    v13 = 0;
  }

  else
  {
    [v7 render:v6 toCVPixelBuffer:v15];
    v13 = v15;
  }

  return v13;
}

+ (__CVBuffer)_convertPixelBuffer:(__CVBuffer *)a3 toFormat:(unsigned int)a4 iosurfaceBacking:(BOOL)a5
{
  v5 = a5;
  pixelTransferSessionOut = 0;
  v8 = *MEMORY[0x1E695E480];
  VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &pixelTransferSessionOut);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v12 = v11;
  if (v5)
  {
    [(__CFDictionary *)v11 setObject:MEMORY[0x1E695E0F8] forKey:*MEMORY[0x1E69660D8]];
  }

  v15 = 0;
  CVPixelBufferCreate(v8, Width, Height, a4, v12, &v15);
  VTPixelTransferSessionTransferImage(pixelTransferSessionOut, a3, v15);
  VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
  CFRelease(pixelTransferSessionOut);
  v13 = v15;

  return v13;
}

@end