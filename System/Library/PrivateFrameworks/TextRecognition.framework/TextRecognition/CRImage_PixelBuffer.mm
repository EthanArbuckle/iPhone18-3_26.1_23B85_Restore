@interface CRImage_PixelBuffer
+ (__CVBuffer)_convertPixelBuffer:(__CVBuffer *)buffer toFormat:(unsigned int)format iosurfaceBacking:(BOOL)backing;
- (CGImage)cgImage;
- (CRImage_PixelBuffer)initWithCVPixelBuffer:(__CVBuffer *)buffer;
- (CRImage_PixelBuffer)initWithContentsOfURL:(id)l toColorSpace:(int)space;
- (CRImage_PixelBuffer)pixelBufferWithScale:(double)scale paddedToSize:(CGSize)size;
- (CRImage_PixelBuffer)pixelBufferWithScale:(double)scale paddedToSize:(CGSize)size adjustedToSize:(CGSize *)toSize;
- (CRImage_PixelBuffer)pixelBufferWithScale:(double)scale paddedToSize:(CGSize)size adjustedToSize:(CGSize *)toSize paddingMode:(unint64_t)mode;
- (CRImage_PixelBuffer)pixelBufferWithScale:(double)scale paddedToSize:(CGSize)size adjustedToSize:(CGSize *)toSize paddingMode:(unint64_t)mode format:(unsigned int)format hardwareAcceleration:(BOOL)acceleration iosurfaceBacking:(BOOL)backing;
- (CRImage_PixelBuffer)pixelBufferWithScale:(double)scale paddedToSize:(CGSize)size adjustedToSize:(CGSize *)toSize paddingMode:(unint64_t)mode format:(unsigned int)format hardwareAcceleration:(BOOL)acceleration toSurface:(__IOSurface *)surface;
- (__CVBuffer)_pixelBufferFromUrl:(id)url;
- (id)imageByApplyingBinaryMask:(id)mask;
- (id)imageByConvertingToColorSpace:(int)space forceDataCopy:(BOOL)copy;
- (id)imageByCorrectingFromOrientation:(unsigned int)orientation;
- (id)imageByCroppingRectangle:(CGRect)rectangle iosurfaceBacking:(BOOL)backing;
- (id)imageByCroppingRectangle:(CGRect)rectangle toSurface:(__IOSurface *)surface;
- (id)imageByDilating;
- (id)imageByInvertingIntensity;
- (id)imageByOverlayingRects:(CGRect *)rects count:(int64_t)count lineWidth:(double)width red:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
- (id)imageByPaddingToRatioAndScalingToWidth:(unint64_t)width height:(unint64_t)height paddingMode:(unint64_t)mode alignCenter:(BOOL)center;
- (id)imageByScalingToWidth:(unint64_t)width height:(unint64_t)height;
- (unint64_t)height;
- (unint64_t)width;
- (vImage_Buffer)vImage;
- (void)dealloc;
- (void)writeToFile:(id)file;
@end

@implementation CRImage_PixelBuffer

- (unint64_t)height
{
  pixelBuffer = [(CRImage_PixelBuffer *)self pixelBuffer];

  return CVPixelBufferGetHeight(pixelBuffer);
}

- (unint64_t)width
{
  pixelBuffer = [(CRImage_PixelBuffer *)self pixelBuffer];

  return CVPixelBufferGetWidth(pixelBuffer);
}

- (CRImage_PixelBuffer)initWithCVPixelBuffer:(__CVBuffer *)buffer
{
  v15 = *MEMORY[0x1E69E9840];
  if (!buffer)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Attempting to initialize CRImage_PixelBuffer with nil CVPixelBufferRef" userInfo:0];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = CRImage_PixelBuffer;
  v4 = [(CRImage *)&v12 init];
  if (v4)
  {
    v5 = CVPixelBufferRetain(buffer);
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

- (CRImage_PixelBuffer)initWithContentsOfURL:(id)l toColorSpace:(int)space
{
  v15 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (space == 3)
  {
    v12.receiver = self;
    v12.super_class = CRImage_PixelBuffer;
    v7 = [(CRImage *)&v12 init];
    v8 = v7;
    if (v7)
    {
      v7->super._pixelBuffer = [(CRImage_PixelBuffer *)v7 _pixelBufferFromUrl:lCopy];
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v10 = CROSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      spaceCopy = space;
      _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_ERROR, "[CRImage_PixelBuffer initWithContentsOfURL:toColorSpace:] Unsupported colorspace: %d ", buf, 8u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (CRImage_PixelBuffer)pixelBufferWithScale:(double)scale paddedToSize:(CGSize)size adjustedToSize:(CGSize *)toSize paddingMode:(unint64_t)mode format:(unsigned int)format hardwareAcceleration:(BOOL)acceleration toSurface:(__IOSurface *)surface
{
  accelerationCopy = acceleration;
  height = size.height;
  width = size.width;
  if (*surface)
  {
    v17 = [(CRImage_PixelBuffer *)self width:toSize];
    height = [(CRImage_PixelBuffer *)self height];
    PixelFormatType = CVPixelBufferGetPixelFormatType([(CRImage_PixelBuffer *)self pixelBuffer]);
    pixelBufferOut = 0;
    v20 = *MEMORY[0x1E695E480];
    v21 = 0;
    if (!CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], *surface, MEMORY[0x1E695E0F8], &pixelBufferOut))
    {
      v39 = PixelFormatType;
      v22 = width;
      v23 = height;
      v24 = (height * scale);
      v25 = (v17 * scale);
      pixelTransferSessionOut = 0;
      VTPixelTransferSessionCreate(v20, &pixelTransferSessionOut);
      v26 = *MEMORY[0x1E695E4D0];
      if (accelerationCopy)
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
      if (toSize)
      {
        toSize->width = v30;
        toSize->height = v31;
      }

      v42.width = v22;
      v42.height = v23;
      v32 = 0;
      v33 = 0;
      v34 = createPixelBufferCLAPDictionaryFromRect(v42, *(&v30 - 2));
      VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983DB8], v34);
      VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983E58], v26);
      v35 = pixelTransferSessionOut;
      pixelBuffer = [(CRImage_PixelBuffer *)self pixelBuffer];
      VTPixelTransferSessionTransferImage(v35, pixelBuffer, pixelBufferOut);
      VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
      CFRelease(pixelTransferSessionOut);
      if (v39 == format)
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
    v21 = [(CRImage_PixelBuffer *)self pixelBufferWithScale:toSize paddedToSize:mode adjustedToSize:*&format paddingMode:acceleration format:1 hardwareAcceleration:scale iosurfaceBacking:size.width, size.height];
    IOSurface = CVPixelBufferGetIOSurface(v21);
    *surface = IOSurface;
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

- (CRImage_PixelBuffer)pixelBufferWithScale:(double)scale paddedToSize:(CGSize)size adjustedToSize:(CGSize *)toSize paddingMode:(unint64_t)mode format:(unsigned int)format hardwareAcceleration:(BOOL)acceleration iosurfaceBacking:(BOOL)backing
{
  backingCopy = backing;
  accelerationCopy = acceleration;
  height = size.height;
  width = size.width;
  v16 = [(CRImage_PixelBuffer *)self width:toSize];
  height = [(CRImage_PixelBuffer *)self height];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v19 = dictionary;
  if (backingCopy)
  {
    [(__CFDictionary *)dictionary setObject:MEMORY[0x1E695E0F8] forKey:*MEMORY[0x1E69660D8]];
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
    if (accelerationCopy)
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
    v27 = (v16 * scale);
    v28 = (height * scale);
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
    if (toSize)
    {
      toSize->width = v29;
      toSize->height = v30;
    }

    v40.width = v21;
    v40.height = v22;
    v31 = 0;
    v32 = 0;
    v33 = createPixelBufferCLAPDictionaryFromRect(v40, *(&v29 - 2));
    VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983DB8], v33);
    VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983E58], v25);
    v34 = pixelTransferSessionOut;
    pixelBuffer = [(CRImage_PixelBuffer *)self pixelBuffer];
    VTPixelTransferSessionTransferImage(v34, pixelBuffer, pixelBufferOut);
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
    CFRelease(pixelTransferSessionOut);
    if (PixelFormatType == format)
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

- (id)imageByConvertingToColorSpace:(int)space forceDataCopy:(BOOL)copy
{
  copyCopy = copy;
  v5 = *&space;
  v15 = *MEMORY[0x1E69E9840];
  if ([(CRImage *)self colorSpace]== space && !copyCopy)
  {
    selfCopy = self;
LABEL_18:
    v11 = selfCopy;
    goto LABEL_19;
  }

  if (v5)
  {
    if (v5 == 3)
    {
      v8 = 875704422;
      if (copyCopy)
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
      if (copyCopy)
      {
LABEL_17:
        selfCopy = [[CRImage alloc] initWithCVPixelBuffer:[(CRImage_PixelBuffer *)self pixelBuffer] toColorSpace:v5 forceDataCopy:copyCopy];
        goto LABEL_18;
      }
    }
  }

  else
  {
    v8 = 1278226488;
    if (copyCopy)
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

- (id)imageByCroppingRectangle:(CGRect)rectangle toSurface:(__IOSurface *)surface
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  v9 = *surface;
  if (*surface)
  {
    pixelBufferOut = 0;
    if (CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v9, MEMORY[0x1E695E0F8], &pixelBufferOut))
    {
      v10 = 0;
    }

    else
    {
      pixelBuffer = [(CRImage_PixelBuffer *)self pixelBuffer];
      CRCropRectangleFromPixelBuffer(pixelBuffer, pixelBufferOut, x, y, width, height);
      v14 = [CRImage_PixelBuffer alloc];
      v10 = [(CRImage_PixelBuffer *)v14 initWithCVPixelBuffer:pixelBufferOut];
      CVPixelBufferRelease(pixelBufferOut);
    }
  }

  else
  {
    v10 = [(CRImage_PixelBuffer *)self imageByCroppingRectangle:1 iosurfaceBacking:rectangle.origin.x, rectangle.origin.y, rectangle.size.width, rectangle.size.height];
    IOSurface = CVPixelBufferGetIOSurface([(CRImage_PixelBuffer *)v10 pixelBuffer]);
    *surface = IOSurface;
    CFRetain(IOSurface);
  }

  return v10;
}

- (id)imageByCroppingRectangle:(CGRect)rectangle iosurfaceBacking:(BOOL)backing
{
  backingCopy = backing;
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  width = [(CRImage_PixelBuffer *)self width];
  height = [(CRImage_PixelBuffer *)self height];
  v31.size.width = width;
  v31.size.height = height;
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  if (!CGRectEqualToRect(v30, v31) || backingCopy)
  {
    if (backingCopy || [(CRImage *)self colorSpace]&& [(CRImage *)self colorSpace]!= 1 && [(CRImage *)self colorSpace]!= 2)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType([(CRImage_PixelBuffer *)self pixelBuffer]);
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v15 = dictionary;
      if (backingCopy)
      {
        [(__CFDictionary *)dictionary setObject:MEMORY[0x1E695E0F8] forKey:*MEMORY[0x1E69660D8]];
      }

      texture[0] = 0;
      if (CVPixelBufferCreate(*MEMORY[0x1E695E480], width, height, PixelFormatType, v15, texture))
      {
        v16 = 0;
      }

      else
      {
        pixelBuffer = [(CRImage_PixelBuffer *)self pixelBuffer];
        CRCropRectangleFromPixelBuffer(pixelBuffer, texture[0], x, y, width, height);
        v20 = [CRImage_PixelBuffer alloc];
        v16 = [(CRImage_PixelBuffer *)v20 initWithCVPixelBuffer:texture[0]];
        CVPixelBufferRelease(texture[0]);
      }

      selfCopy = v16;
    }

    else
    {
      selfCopy = objc_alloc_init(CRImage);
      [(CRImage *)selfCopy setColorSpace:[(CRImage *)self colorSpace]];
      v17 = objc_opt_class();
      colorSpace = [(CRImage *)self colorSpace];
      if (v17)
      {
        [v17 allocateVImageBufferWithWidth:width height:height colorSpace:colorSpace];
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
      }

      *texture = v27;
      v26 = v28;
      [(CRImage *)selfCopy setVImage:texture];
      [(CRImage *)selfCopy setVImageDataIsCopy:1];
      if ([(CRImage *)self colorSpace])
      {
        v21 = 4;
      }

      else
      {
        v21 = 1;
      }

      pixelBuffer2 = [(CRImage_PixelBuffer *)self pixelBuffer];
      if (selfCopy)
      {
        [(CRImage_PixelBuffer *)selfCopy vImage];
        v23 = texture[0];
      }

      else
      {
        v23 = 0;
        *texture = 0u;
        v26 = 0u;
      }

      CRCopyRectangleCropMemoryFromPixelBuffer(pixelBuffer2, v23, v21, x, y, width, height);
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)imageByCorrectingFromOrientation:(unsigned int)orientation
{
  if (orientation - 1 <= 1)
  {
    selfCopy = self;
    goto LABEL_14;
  }

  width = [(CRImage_PixelBuffer *)self width];
  height = [(CRImage_PixelBuffer *)self height];
  v8 = 0;
  if (orientation <= 8)
  {
    if (((1 << orientation) & 0x18) != 0)
    {
      v8 = *MEMORY[0x1E6983FF0];
    }

    else
    {
      if (((1 << orientation) & 0xC0) != 0)
      {
        v9 = MEMORY[0x1E6984000];
      }

      else
      {
        if (((1 << orientation) & 0x120) == 0)
        {
          goto LABEL_11;
        }

        v9 = MEMORY[0x1E6983FF8];
      }

      v8 = *v9;
      width = [(CRImage_PixelBuffer *)self height];
      height = [(CRImage_PixelBuffer *)self width];
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
  v12 = CVPixelBufferCreate(v10, width, height, PixelFormatType, MEMORY[0x1E695E0F8], &destinationBuffer);
  v13 = pixelRotationSessionOut;
  if (v12)
  {
    CFRelease(pixelRotationSessionOut);
    selfCopy = 0;
  }

  else
  {
    pixelBuffer = [(CRImage_PixelBuffer *)self pixelBuffer];
    VTPixelRotationSessionRotateImage(v13, pixelBuffer, destinationBuffer);
    VTPixelRotationSessionInvalidate(pixelRotationSessionOut);
    CFRelease(pixelRotationSessionOut);
    v15 = [CRImage_PixelBuffer alloc];
    selfCopy = [(CRImage_PixelBuffer *)v15 initWithCVPixelBuffer:destinationBuffer];
    CVPixelBufferRelease(destinationBuffer);
  }

LABEL_14:

  return selfCopy;
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
  cgImage = [(CRImage *)v2 cgImage];

  return cgImage;
}

- (id)imageByScalingToWidth:(unint64_t)width height:(unint64_t)height
{
  v6 = [[CRImage alloc] initWithCVPixelBuffer:[(CRImage_PixelBuffer *)self pixelBuffer] toColorSpace:1];
  v7 = [(CRImage *)v6 imageByScalingToWidth:width height:height];

  return v7;
}

- (id)imageByPaddingToRatioAndScalingToWidth:(unint64_t)width height:(unint64_t)height paddingMode:(unint64_t)mode alignCenter:(BOOL)center
{
  centerCopy = center;
  colorSpace = [(CRImage *)self colorSpace];
  v12 = [CRImage alloc];
  if (colorSpace)
  {
    v13 = [(CRImage *)v12 initWithCVPixelBuffer:[(CRImage_PixelBuffer *)self pixelBuffer] toColorSpace:[(CRImage *)self colorSpace]];
    v14 = [(CRImage *)v13 imageByPaddingToRatioAndScalingToWidth:width height:height paddingMode:mode alignCenter:centerCopy];
  }

  else
  {
    v14 = [(CRImage *)v12 initWithWidth:width height:height colorSpace:0];
    width = (([(CRImage_PixelBuffer *)self height]* width) / height);
    if ([(CRImage_PixelBuffer *)self width]> width)
    {
      width = [(CRImage_PixelBuffer *)self width];
    }

    height = (([(CRImage_PixelBuffer *)self width]* height) / width);
    if ([(CRImage_PixelBuffer *)self height]> height)
    {
      height = [(CRImage_PixelBuffer *)self height];
    }

    if (centerCopy)
    {
      v17 = (width - [(CRImage_PixelBuffer *)self width]) >> 1;
    }

    else
    {
      v17 = 0;
    }

    height2 = [(CRImage_PixelBuffer *)self height];
    v13 = [[CRImage alloc] initWithWidth:width height:height colorSpace:0];
    CVPixelBufferLockBaseAddress([(CRImage_PixelBuffer *)self pixelBuffer], 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress([(CRImage_PixelBuffer *)self pixelBuffer]);
    Width = CVPixelBufferGetWidth([(CRImage_PixelBuffer *)self pixelBuffer]);
    Height = CVPixelBufferGetHeight([(CRImage_PixelBuffer *)self pixelBuffer]);
    BytesPerRow = CVPixelBufferGetBytesPerRow([(CRImage_PixelBuffer *)self pixelBuffer]);
    CVPixelBufferGetPlaneCount([(CRImage_PixelBuffer *)self pixelBuffer]);
    v22 = CRImagePaddingValueForMode(mode, BaseAddress, Width, Height, BytesPerRow);
    memset(v13->_vImage.data, v22, v13->_vImage.height * v13->_vImage.rowBytes);
    if (Height)
    {
      v23 = (height - height2) >> 1;
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
  imageByDilating = [(CRImage *)v2 imageByDilating];

  return imageByDilating;
}

- (id)imageByApplyingBinaryMask:(id)mask
{
  maskCopy = mask;
  v5 = [[CRImage alloc] initWithCVPixelBuffer:[(CRImage_PixelBuffer *)self pixelBuffer] toColorSpace:1];
  v6 = [(CRImage *)v5 imageByApplyingBinaryMask:maskCopy];

  return v6;
}

- (void)writeToFile:(id)file
{
  fileCopy = file;
  v4 = [[CRImage alloc] initWithCVPixelBuffer:[(CRImage_PixelBuffer *)self pixelBuffer] toColorSpace:1];
  [(CRImage *)v4 writeToFile:fileCopy];
}

- (id)imageByInvertingIntensity
{
  v2 = [[CRImage alloc] initWithCVPixelBuffer:[(CRImage_PixelBuffer *)self pixelBuffer] toColorSpace:1];
  imageByInvertingIntensity = [(CRImage *)v2 imageByInvertingIntensity];

  return imageByInvertingIntensity;
}

- (id)imageByOverlayingRects:(CGRect *)rects count:(int64_t)count lineWidth:(double)width red:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v16 = [[CRImage alloc] initWithCVPixelBuffer:[(CRImage_PixelBuffer *)self pixelBuffer] toColorSpace:1];
  v17 = [(CRImage *)v16 imageByOverlayingRects:rects count:count strings:0 lineWidth:width red:red green:green blue:blue alpha:alpha];

  return v17;
}

- (CRImage_PixelBuffer)pixelBufferWithScale:(double)scale paddedToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  PixelFormatType = CVPixelBufferGetPixelFormatType([(CRImage_PixelBuffer *)self pixelBuffer]);

  return [(CRImage_PixelBuffer *)self pixelBufferWithScale:0 paddedToSize:1 adjustedToSize:PixelFormatType paddingMode:scale format:width, height];
}

- (CRImage_PixelBuffer)pixelBufferWithScale:(double)scale paddedToSize:(CGSize)size adjustedToSize:(CGSize *)toSize
{
  height = size.height;
  width = size.width;
  PixelFormatType = CVPixelBufferGetPixelFormatType([(CRImage_PixelBuffer *)self pixelBuffer]);

  return [(CRImage_PixelBuffer *)self pixelBufferWithScale:toSize paddedToSize:1 adjustedToSize:PixelFormatType paddingMode:scale format:width, height];
}

- (CRImage_PixelBuffer)pixelBufferWithScale:(double)scale paddedToSize:(CGSize)size adjustedToSize:(CGSize *)toSize paddingMode:(unint64_t)mode
{
  height = size.height;
  width = size.width;
  PixelFormatType = CVPixelBufferGetPixelFormatType([(CRImage_PixelBuffer *)self pixelBuffer:toSize]);

  return [(CRImage_PixelBuffer *)self pixelBufferWithScale:toSize paddedToSize:1 adjustedToSize:PixelFormatType paddingMode:scale format:width, height];
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

- (__CVBuffer)_pixelBufferFromUrl:(id)url
{
  v19[1] = *MEMORY[0x1E69E9840];
  urlCopy = url;
  v4 = MEMORY[0x1E695F658];
  v18 = *MEMORY[0x1E695F948];
  v19[0] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v6 = [v4 imageWithContentsOfURL:urlCopy options:v5];

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

+ (__CVBuffer)_convertPixelBuffer:(__CVBuffer *)buffer toFormat:(unsigned int)format iosurfaceBacking:(BOOL)backing
{
  backingCopy = backing;
  pixelTransferSessionOut = 0;
  v8 = *MEMORY[0x1E695E480];
  VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &pixelTransferSessionOut);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = dictionary;
  if (backingCopy)
  {
    [(__CFDictionary *)dictionary setObject:MEMORY[0x1E695E0F8] forKey:*MEMORY[0x1E69660D8]];
  }

  v15 = 0;
  CVPixelBufferCreate(v8, Width, Height, format, v12, &v15);
  VTPixelTransferSessionTransferImage(pixelTransferSessionOut, buffer, v15);
  VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
  CFRelease(pixelTransferSessionOut);
  v13 = v15;

  return v13;
}

@end