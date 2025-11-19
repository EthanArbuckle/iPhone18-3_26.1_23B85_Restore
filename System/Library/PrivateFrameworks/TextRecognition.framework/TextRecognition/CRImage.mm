@interface CRImage
+ (BOOL)convertVImage:(const vImage_Buffer *)a3 inColorSpace:(int)a4 toVImage:(vImage_Buffer *)a5 toColorSpace:(int)a6;
+ (id)nameForColorSpace:(int)a3;
+ (unint64_t)bytesPerPixelForColorSpace:(int)a3;
+ (unint64_t)channelsForColorSpace:(int)a3;
+ (vImage_Buffer)allocateVImageBufferWithWidth:(SEL)a3 height:(unint64_t)a4 bytesPerPixel:(unint64_t)a5;
+ (vImage_Buffer)allocateVImageBufferWithWidth:(SEL)a3 height:(unint64_t)a4 colorSpace:(unint64_t)a5;
+ (vImage_Buffer)applyEXIFTransformsOnImage:(SEL)a3 inColorSpace:(const vImage_Buffer *)a4 properties:(int)a5;
+ (void)cgOrientation:(unsigned int)a3 toVImageRotationMode:(char *)a4 andReflection:(int *)a5;
+ (void)drawVerticalLineAtXOffset:(double)a3 image:(id)a4;
- (CGImage)cgImage;
- (CGRect)rotatedRoiByCroppingRectangle:(CGRect)a3 textFeaturePoints:(id)a4 radians:(float)a5;
- (CGSize)size;
- (CIImage)ciImage;
- (CRImage)init;
- (CRImage)initWithCGImage:(CGImage *)a3 properties:(id)a4 toColorSpace:(int)a5;
- (CRImage)initWithCIImage:(id)a3 toColorSpace:(int)a4;
- (CRImage)initWithCVPixelBuffer:(__CVBuffer *)a3 toColorSpace:(int)a4 forceDataCopy:(BOOL)a5;
- (CRImage)initWithContentsOfURL:(id)a3 toColorSpace:(int)a4;
- (CRImage)initWithFloatBuffer:(float *)a3 width:(unint64_t)a4 height:(unint64_t)a5;
- (CRImage)initWithMTLTexture:(id)a3 toColorSpace:(int)a4;
- (CRImage)initWithVImageBuffer:(vImage_Buffer *)a3 inColorSpace:(int)a4;
- (CRImage)initWithVImageBuffer:(vImage_Buffer *)a3 inColorSpace:(int)a4 toColorSpace:(int)a5;
- (CRImage)initWithWidth:(unint64_t)a3 height:(unint64_t)a4 colorSpace:(int)a5;
- (__CVBuffer)pixelBuffer;
- (__CVBuffer)pixelBufferWithScale:(double)a3 paddedToSize:(CGSize)a4 adjustedToSize:(CGSize *)a5 paddingMode:(unint64_t)a6;
- (id)description;
- (id)imageByAdjustingBrightnessAlpha:(double)a3 beta:(double)a4;
- (id)imageByApplyingBinaryMask:(id)a3;
- (id)imageByApplyingHistogramCorrection;
- (id)imageByConvertingToColorSpace:(int)a3;
- (id)imageByCorrectingFromOrientation:(unsigned int)a3;
- (id)imageByCroppingRectangle:(CGRect)a3;
- (id)imageByCroppingRectangle:(CGRect)a3 textFeaturePoints:(id)a4 radians:(float)a5 rotatedRoi:(CGRect *)a6;
- (id)imageByCroppingRectangle:(CGRect)a3 toHeight:(unint64_t)a4 andWidth:(unint64_t)a5 withRotationAngle:(float)a6;
- (id)imageByDilating;
- (id)imageByInvertingIntensity;
- (id)imageByOverlayingRects:(CGRect *)a3 count:(int64_t)a4 strings:(id)a5 lineWidth:(double)a6 red:(double)a7 green:(double)a8 blue:(double)a9 alpha:(double)a10;
- (id)imageByOverlayingRegions:(id)a3 strings:(id)a4 lineWidth:(double)a5 red:(double)a6 green:(double)a7 blue:(double)a8 alpha:(double)a9;
- (id)imageByPaddingToRatioAndScalingToWidth:(unint64_t)a3 height:(unint64_t)a4 paddingMode:(unint64_t)a5 alignCenter:(BOOL)a6;
- (id)imageByRectifyingRegion:(id)a3 toColorSpace:(int)a4 homography:(id *)a5;
- (id)imageByRotating180;
- (id)imageByRotating90CW;
- (id)imageByScaling:(double)a3 paddingToSize:(CGSize)a4 adjustedToSize:(CGSize *)a5 paddingMode:(unint64_t)a6;
- (id)imageByScalingToWidth:(unint64_t)a3 height:(unint64_t)a4;
- (id)initARGB8888WithCVPixelBuffer:(__CVBuffer *)a3;
- (id)initAYUV8888WithCVPixelBuffer:(__CVBuffer *)a3;
- (id)initY8WithCVPixelBuffer:(__CVBuffer *)a3 forceDataCopy:(BOOL)a4;
- (id)initYUV888WithCVPixelBuffer:(__CVBuffer *)a3;
- (unint64_t)bufferHash;
- (unint64_t)bytesPerPixel;
- (unint64_t)numChannels;
- (vImage_Buffer)createFloatBuffer;
- (vImage_Buffer)vImage;
- (void)dealloc;
- (void)runBlockWithARGB8888Image:(id)a3 blockOwnsMemory:(BOOL)a4;
- (void)setVImage:(vImage_Buffer *)a3;
- (void)writeToFile:(id)a3;
- (void)writeToURL:(id)a3;
@end

@implementation CRImage

- (CGSize)size
{
  v3 = [(CRImage *)self width];
  v4 = [(CRImage *)self height];
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

- (unint64_t)bufferHash
{
  v2 = [(CRImage *)self pixelBuffer];
  CVPixelBufferLockBaseAddress(v2, 0);
  if (CVPixelBufferIsPlanar(v2))
  {
    PlaneCount = CVPixelBufferGetPlaneCount(v2);
    v3 = 0;
    if (PlaneCount)
    {
      for (i = 0; i != PlaneCount; ++i)
      {
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(v2, i);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(v2, i);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v2, i);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v2, i);
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
    BaseAddress = CVPixelBufferGetBaseAddress(v2);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v2);
    Width = CVPixelBufferGetWidth(v2);
    Height = CVPixelBufferGetHeight(v2);
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

  CVPixelBufferUnlockBaseAddress(v2, 0);
  return v3;
}

+ (vImage_Buffer)allocateVImageBufferWithWidth:(SEL)a3 height:(unint64_t)a4 bytesPerPixel:(unint64_t)a5
{
  retstr->height = a5;
  retstr->width = a4;
  v7 = a6 * a4;
  retstr->rowBytes = v7;
  result = malloc_type_calloc(v7 * a5, 1uLL, 0x221917C1uLL);
  retstr->data = result;
  return result;
}

+ (vImage_Buffer)allocateVImageBufferWithWidth:(SEL)a3 height:(unint64_t)a4 colorSpace:(unint64_t)a5
{
  v6 = *&a6;
  v10 = objc_opt_class();
  result = [objc_opt_class() bytesPerPixelForColorSpace:v6];
  if (v10)
  {

    return [v10 allocateVImageBufferWithWidth:a4 height:a5 bytesPerPixel:result];
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

- (id)initY8WithCVPixelBuffer:(__CVBuffer *)a3 forceDataCopy:(BOOL)a4
{
  v4 = a4;
  v49 = *MEMORY[0x1E69E9840];
  v6 = [(CRImage *)self init];
  v6->_pixelBuffer = CVPixelBufferRetain(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v8 = PixelFormatType;
  if (PixelFormatType == 846624121 || PixelFormatType == 875704422 || PixelFormatType == 1278226488)
  {
    v6->_isFullRange = PixelFormatType == 875704422;
    CVPixelBufferLockBaseAddress(v6->_pixelBuffer, 0);
    if (v8 == 846624121)
    {
      v9 = objc_opt_class();
      Width = CVPixelBufferGetWidth(a3);
      Height = CVPixelBufferGetHeight(a3);
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
      BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
      rowBytes = v6->_vImage.rowBytes;
      BaseAddress = CVPixelBufferGetBaseAddress(a3);
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
      if (v4 && v8 == 1278226488)
      {
        v12 = objc_opt_class();
        v13 = CVPixelBufferGetWidth(a3);
        v14 = CVPixelBufferGetHeight(a3);
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
        v34 = CVPixelBufferGetBaseAddress(a3);
        v35 = CVPixelBufferGetHeight(a3);
        CVPixelBufferGetWidth(a3);
        v36 = CVPixelBufferGetBytesPerRow(a3);
        memcpy(v6->_vImage.data, v34, v36 * v35);
        CVPixelBufferUnlockBaseAddress(v6->_pixelBuffer, 0);
        CVPixelBufferRelease(v6->_pixelBuffer);
        goto LABEL_37;
      }

      if (!v4)
      {
        v6->_vImage.width = CVPixelBufferGetWidthOfPlane(a3, 0);
        v6->_vImage.height = CVPixelBufferGetHeightOfPlane(a3, 0);
        v6->_vImage.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
        v32 = 0;
        v6->_vImage.data = BaseAddressOfPlane;
LABEL_38:
        v6->_vImageDataIsCopy = v32;
        v16 = v6;
        goto LABEL_39;
      }

      v17 = CVPixelBufferGetWidth(a3);
      v18 = CVPixelBufferGetHeight(a3);
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
      v38 = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
      v39 = v6->_vImage.data;
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
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

- (id)initARGB8888WithCVPixelBuffer:(__CVBuffer *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = [(CRImage *)self init];
  v4->_pixelBuffer = CVPixelBufferRetain(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
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
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
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
        *outInfo.opaque = CVPixelBufferGetBaseAddress(a3);
        *&outInfo.opaque[8] = CVPixelBufferGetHeight(a3);
        *&outInfo.opaque[16] = CVPixelBufferGetWidth(a3);
        *&outInfo.opaque[24] = CVPixelBufferGetBytesPerRow(a3);
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
        src.data = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
        src.height = CVPixelBufferGetHeightOfPlane(a3, 0);
        src.width = CVPixelBufferGetWidthOfPlane(a3, 0);
        src.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
        buf.data = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
        buf.height = CVPixelBufferGetHeightOfPlane(a3, 1uLL);
        buf.width = CVPixelBufferGetWidthOfPlane(a3, 1uLL);
        buf.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
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
        src.data = CVPixelBufferGetBaseAddress(a3);
        src.height = CVPixelBufferGetHeight(a3);
        src.width = CVPixelBufferGetWidth(a3);
        src.rowBytes = CVPixelBufferGetBytesPerRow(a3);
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
        BaseAddress = CVPixelBufferGetBaseAddress(a3);
        v18 = CVPixelBufferGetHeight(a3);
        CVPixelBufferGetWidth(a3);
        BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
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

- (id)initYUV888WithCVPixelBuffer:(__CVBuffer *)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = [(CRImage *)self init];
  v4->_pixelBuffer = CVPixelBufferRetain(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v6 = PixelFormatType;
  if (PixelFormatType == 846624121 || PixelFormatType == 875704422)
  {
    v4->_isFullRange = PixelFormatType == 875704422;
    CVPixelBufferLockBaseAddress(v4->_pixelBuffer, 0);
    v7 = objc_opt_class();
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
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
      BaseAddress = CVPixelBufferGetBaseAddress(a3);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
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
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
      v22 = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
      v24 = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
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

- (id)initAYUV8888WithCVPixelBuffer:(__CVBuffer *)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = [(CRImage *)self init];
  v4->_pixelBuffer = CVPixelBufferRetain(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v6 = PixelFormatType;
  if (PixelFormatType == 846624121 || PixelFormatType == 875704422)
  {
    v4->_isFullRange = PixelFormatType == 875704422;
    CVPixelBufferLockBaseAddress(v4->_pixelBuffer, 0);
    v7 = objc_opt_class();
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
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
      BaseAddress = CVPixelBufferGetBaseAddress(a3);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
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
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
      v24 = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
      v26 = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
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

- (CRImage)initWithCVPixelBuffer:(__CVBuffer *)a3 toColorSpace:(int)a4 forceDataCopy:(BOOL)a5
{
  v6 = 0;
  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        self = [(CRImage *)self initAYUV8888WithCVPixelBuffer:a3, *&a4, a5];
        if (!self)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      if (a4 == 4)
      {
        self = [(CRImage *)self initYUV888WithCVPixelBuffer:a3];
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
        v6 = self;
        goto LABEL_16;
      }

LABEL_14:
      self->_colorSpace = a4;
      goto LABEL_15;
    }
  }

  else if (a4 != -1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        self = [(CRImage *)self initARGB8888WithCVPixelBuffer:a3];
        if (!self)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      self = [(CRImage *)self initY8WithCVPixelBuffer:a3 forceDataCopy:a5];
    }

    goto LABEL_13;
  }

LABEL_16:

  return v6;
}

- (CRImage)initWithCIImage:(id)a3 toColorSpace:(int)a4
{
  v4 = *&a4;
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = [(CRImage *)self init];
    self = v7;
    if (v7)
    {
      [(CRImage *)v7 setCiImage:v6];
      [v6 extent];
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
        [v32 render:v6 toBitmap:p_vImage->data rowBytes:p_vImage->rowBytes bounds:*MEMORY[0x1E695F8A0] format:DeviceRGB colorSpace:{v9, v11, v13, v15}];

        CGColorSpaceRelease(DeviceRGB);
        if (v4 != 1)
        {
          [objc_opt_class() convertVImage:p_vImage inColorSpace:1 toVImage:&self->_vImage toColorSpace:self->_colorSpace];
          free(p_vImage->data);
        }

        v33 = self;
        goto LABEL_29;
      }

      DeviceGray = CGColorSpaceCreateDeviceGray();
      if ([v6 colorSpace] == DeviceGray)
      {
        v25 = MEMORY[0x1E695F620];
        v26 = *MEMORY[0x1E695F7F0];
        v41[0] = *MEMORY[0x1E695F868];
        v41[1] = v26;
        v42[0] = DeviceGray;
        v42[1] = MEMORY[0x1E695E110];
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
        v23 = [v25 contextWithOptions:v27];

        [v23 render:v6 toBitmap:self->_vImage.data rowBytes:self->_vImage.rowBytes bounds:*MEMORY[0x1E695F8B0] format:DeviceGray colorSpace:{v9, v11, v13, v15}];
        v28 = 0;
      }

      else
      {
        if (qword_1ED960310 != -1)
        {
          dispatch_once(&qword_1ED960310, &__block_literal_global_34);
        }

        v22 = [MEMORY[0x1E695F648] filterWithName:@"CIColorControls" keysAndValues:{*MEMORY[0x1E695FAB0], v6, *MEMORY[0x1E695FA68], &unk_1F2BF86E0, *MEMORY[0x1E695FB18], &unk_1F2BF86E0, *MEMORY[0x1E695FA88], &unk_1F2BF86F8, 0}];
        v23 = [v22 outputImage];

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
        [_MergedGlobals_39 render:v23 toBitmap:src.data rowBytes:src.rowBytes bounds:*MEMORY[0x1E695F8A0] format:v34 colorSpace:{v9, v11, v13, v15}];
        CGColorSpaceRelease(v34);
        v28 = vImageExtractChannel_ARGB8888(&src, &self->_vImage, 1, 0) != 0;
        free(src.data);
      }

      CGColorSpaceRelease(DeviceGray);
      v33 = self;
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

    v33 = 0;
LABEL_29:
    v17 = v33;
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

- (CRImage)initWithMTLTexture:(id)a3 toColorSpace:(int)a4
{
  v4 = *&a4;
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
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
        v9 = [v6 width];
        v10 = [v6 height];
        if (v8)
        {
          [v8 allocateVImageBufferWithWidth:v9 height:v10 colorSpace:v4];
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
        if ([v6 pixelFormat] == 10 || objc_msgSend(v6, "pixelFormat") == 13 || objc_msgSend(v6, "pixelFormat") == 70 || objc_msgSend(v6, "pixelFormat") == 73)
        {
          v13 = [v6 width];
          v14 = [v6 height];
          data = self->_vImage.data;
          rowBytes = self->_vImage.rowBytes;
          v21 = 0uLL;
          *&v22 = 0;
          *(&v22 + 1) = v13;
          v23 = v14;
          v24 = 1;
          [v6 getBytes:data bytesPerRow:rowBytes fromRegion:&v21 mipmapLevel:0];
          v17 = self;
LABEL_17:
          v11 = v17;
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

    v17 = 0;
    goto LABEL_17;
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (void)runBlockWithARGB8888Image:(id)a3 blockOwnsMemory:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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

  v6[2](v6, p_vImage, v8 & v4);
LABEL_10:
  if (self->_colorSpace != 1 && !v4)
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

- (__CVBuffer)pixelBufferWithScale:(double)a3 paddedToSize:(CGSize)a4 adjustedToSize:(CGSize *)a5 paddingMode:(unint64_t)a6
{
  height = a4.height;
  width = a4.width;
  v12 = [(CRImage *)self width];
  v13 = [(CRImage *)self height];
  v14 = width;
  v15 = height;
  pixelBufferOut = 0;
  v16 = CVPixelBufferCreate(*MEMORY[0x1E695E480], width, height, 0x20u, MEMORY[0x1E695E0F8], &pixelBufferOut);
  result = 0;
  if (!v16)
  {
    v18 = v12 * a3;
    if (v18 >= v14)
    {
      v19 = width;
    }

    else
    {
      v19 = v18;
    }

    if ((v13 * a3) >= v15)
    {
      v20 = height;
    }

    else
    {
      v20 = (v13 * a3);
    }

    if (a5)
    {
      a5->width = v19;
      a5->height = v20;
    }

    v21 = 0.0;
    if (a6 <= 3)
    {
      v21 = dbl_1B42B00B8[a6];
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
    v27 = [(CRImage *)self cgImage];
    v31.origin.y = (v15 - v20);
    v31.size.width = v19;
    v31.size.height = v20;
    v31.origin.x = 0.0;
    CGContextDrawImage(v25, v31, v27);
    CGColorSpaceRelease(DeviceRGB);
    CGContextRelease(v25);
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    return pixelBufferOut;
  }

  return result;
}

- (id)imageByScaling:(double)a3 paddingToSize:(CGSize)a4 adjustedToSize:(CGSize *)a5 paddingMode:(unint64_t)a6
{
  v6 = [(CRImage *)self pixelBufferWithScale:a5 paddedToSize:a6 adjustedToSize:a3 paddingMode:a4.width, a4.height];
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
    v6 = [(CRImage *)self width];
    v7 = [(CRImage *)self height];
    CVPixelBufferCreate(*MEMORY[0x1E695E480], v6, v7, 0x20u, v5, p_pixelBuffer);
    CVPixelBufferLockBaseAddress(*p_pixelBuffer, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(*p_pixelBuffer);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v10 = [(CRImage *)self width];
    v11 = [(CRImage *)self height];
    BytesPerRow = CVPixelBufferGetBytesPerRow(*p_pixelBuffer);
    v13 = CGBitmapContextCreate(BaseAddress, v10, v11, 8uLL, BytesPerRow, DeviceRGB, 6u);
    v14 = [(CRImage *)self cgImage];
    v15 = *(MEMORY[0x1E695EFD0] + 16);
    *&transform.a = *MEMORY[0x1E695EFD0];
    *&transform.c = v15;
    *&transform.tx = *(MEMORY[0x1E695EFD0] + 32);
    CGContextConcatCTM(v13, &transform);
    v16 = [(CRImage *)self width];
    v17 = [(CRImage *)self height];
    v19.size.width = v16;
    v19.size.height = v17;
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    CGContextDrawImage(v13, v19, v14);
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
  v4 = [(CRImage *)self width];
  v5 = [(CRImage *)self height];
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

  v8 = v5 * v4;
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

- (id)imageByAdjustingBrightnessAlpha:(double)a3 beta:(double)a4
{
  v7 = [[CRImage alloc] initWithWidth:[(CRImage *)self width] height:[(CRImage *)self height] colorSpace:0];
  v8 = [(CRImage *)self width];
  v9 = [(CRImage *)self height];
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

  if (v9 * v8 >= 1)
  {
    v12 = (v9 * v8) & 0x7FFFFFFF;
    do
    {
      v13 = *v10++;
      *v11++ = fmin(a4 + v13 * a3, 255.0);
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
  v3 = [(CRImage *)self bytesPerPixel];
  v4 = [[CRImage alloc] initWithWidth:[(CRImage *)self height] height:[(CRImage *)self width] colorSpace:self->_colorSpace];
  if (v3 == 1)
  {
    v5 = vImageRotate90_Planar8(&self->_vImage, &v4->_vImage, 3u, 0, 0) == 0;
    *(v19 + 24) = v5;
  }

  else
  {
    *v16 = 0u;
    v17 = 0u;
    v6 = objc_opt_class();
    v7 = [(CRImage *)v4 width];
    v8 = [(CRImage *)v4 height];
    if (v6)
    {
      [v6 allocateVImageBufferWithWidth:v7 height:v8 colorSpace:1];
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
  v3 = [(CRImage *)self bytesPerPixel];
  v4 = [[CRImage alloc] initWithWidth:[(CRImage *)self width] height:[(CRImage *)self height] colorSpace:self->_colorSpace];
  if (v3 == 1)
  {
    v5 = vImageRotate90_Planar8(&self->_vImage, &v4->_vImage, 2u, 0, 0) == 0;
    *(v19 + 24) = v5;
  }

  else
  {
    *v16 = 0u;
    v17 = 0u;
    v6 = objc_opt_class();
    v7 = [(CRImage *)v4 width];
    v8 = [(CRImage *)v4 height];
    if (v6)
    {
      [v6 allocateVImageBufferWithWidth:v7 height:v8 colorSpace:1];
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

- (id)imageByCorrectingFromOrientation:(unsigned int)a3
{
  v3 = *&a3;
  v20[1] = *MEMORY[0x1E69E9840];
  v18 = 0;
  v17 = 0;
  [objc_opt_class() cgOrientation:*&a3 toVImageRotationMode:&v18 andReflection:&v17];
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
    v8 = self;
  }

  else if (self->_vImage.data)
  {
    v6 = [CRImage alloc];
    v7 = *&self->_vImage.width;
    v15 = *&self->_vImage.data;
    v16 = v7;
    v8 = [(CRImage *)v6 initWithVImageBuffer:&v15 inColorSpace:self->_colorSpace];
    v9 = objc_opt_class();
    colorSpace = self->_colorSpace;
    v19 = *MEMORY[0x1E696DE78];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
    v20[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    if (v9)
    {
      [v9 applyEXIFTransformsOnImage:&v8->_vImage inColorSpace:colorSpace properties:v12];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v13 = v16;
    *&v8->_vImage.data = v15;
    *&v8->_vImage.width = v13;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)imageByScalingToWidth:(unint64_t)a3 height:(unint64_t)a4
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v7 = [(CRImage *)self bytesPerPixel];
  v8 = [[CRImage alloc] initWithWidth:a3 height:a4 colorSpace:self->_colorSpace];
  if (v7 == 1)
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
      [v10 allocateVImageBufferWithWidth:a3 height:a4 colorSpace:1];
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

- (id)imageByPaddingToRatioAndScalingToWidth:(unint64_t)a3 height:(unint64_t)a4 paddingMode:(unint64_t)a5 alignCenter:(BOOL)a6
{
  v6 = a6;
  v11 = [[CRImage alloc] initWithWidth:a3 height:a4 colorSpace:0];
  v12 = (([(CRImage *)self height]* a3) / a4);
  if ([(CRImage *)self width]> v12)
  {
    v12 = [(CRImage *)self width];
  }

  v13 = (([(CRImage *)self width]* a4) / a3);
  if ([(CRImage *)self height]> v13)
  {
    v13 = [(CRImage *)self height];
  }

  if (v6)
  {
    v14 = (v12 - [(CRImage *)self width]) >> 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(CRImage *)self height];
  v16 = [[CRImage alloc] initWithWidth:v12 height:v13 colorSpace:0];
  v17 = CRImagePaddingValueForMode(a5, self->_vImage.data, self->_vImage.width, self->_vImage.height, self->_vImage.rowBytes);
  memset(v16->_vImage.data, v17, v16->_vImage.height * v16->_vImage.rowBytes);
  if (self->_vImage.height)
  {
    v18 = 0;
    v19 = (v13 - v15) >> 1;
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

- (id)imageByApplyingBinaryMask:(id)a3
{
  v4 = a3;
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
          if (!*(v4[2] + v8 * v4[5] + i))
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
            if (*(v4[2] + v11 * v4[5] + j))
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

+ (unint64_t)bytesPerPixelForColorSpace:(int)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_1B42B00D8[a3];
  }
}

+ (unint64_t)channelsForColorSpace:(int)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_1B42B00D8[a3];
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

+ (id)nameForColorSpace:(int)a3
{
  if (a3 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7BC3788[a3];
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

- (CRImage)initWithWidth:(unint64_t)a3 height:(unint64_t)a4 colorSpace:(int)a5
{
  v5 = *&a5;
  v8 = [(CRImage *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_colorSpace = v5;
    v8->_isFullRange = 1;
    v10 = objc_opt_class();
    if (v10)
    {
      [v10 allocateVImageBufferWithWidth:a3 height:a4 colorSpace:v5];
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

- (CRImage)initWithVImageBuffer:(vImage_Buffer *)a3 inColorSpace:(int)a4 toColorSpace:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
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
      [v11 allocateVImageBufferWithWidth:a3->width height:a3->height bytesPerPixel:v10];
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
      vImageCopyBuffer(a3, &v9->_vImage, v10, 0);
    }

    else if (([objc_opt_class() convertVImage:a3 inColorSpace:v6 toVImage:&v9->_vImage toColorSpace:v5] & 1) == 0)
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

- (CRImage)initWithVImageBuffer:(vImage_Buffer *)a3 inColorSpace:(int)a4
{
  v4 = *&a3->width;
  v6[0] = *&a3->data;
  v6[1] = v4;
  return [(CRImage *)self initWithVImageBuffer:v6 inColorSpace:*&a4 toColorSpace:*&a4];
}

- (CRImage)initWithFloatBuffer:(float *)a3 width:(unint64_t)a4 height:(unint64_t)a5
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
    [v11 allocateVImageBufferWithWidth:a4 height:a5 bytesPerPixel:v10];
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
  CRConvertFloat32BufferToUInt8Buffer(a3, data, a5 * a4, &v20);
  v14 = v20;
  if (v14)
  {
    v15 = v14;
    v16 = CROSLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v15 localizedDescription];
      *buf = 138412290;
      *&buf[4] = v17;
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

- (id)imageByCroppingRectangle:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CRImage *)self width];
  v24.size.height = [(CRImage *)self height];
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v24.size.width = v8;
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

- (id)imageByCroppingRectangle:(CGRect)a3 textFeaturePoints:(id)a4 radians:(float)a5 rotatedRoi:(CGRect *)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v84 = *MEMORY[0x1E69E9840];
  v73 = a4;
  v13 = [(CRImage *)self width];
  v14 = [(CRImage *)self height];
  v88.size.width = v13;
  v88.size.height = v14;
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
  angleInRadians = a5;
  v15 = __sincosf_stret(a5);
  v16 = malloc_type_calloc([v73 count], 0x10uLL, 0x1000040451B5BE8uLL);
  v66 = a6;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v17 = v73;
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
        v31 = [(CRImage *)self width];
        v32 = [(CRImage *)self height];
        v33 = v28 * v31 - x - v20;
        v34 = v30 * v32 - y - v21;
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

  if (v66)
  {
    v61 = vcvtq_f64_f32(v38);
    v62 = vcvtq_f64_u64(v72);
    *v66 = vextq_s8(v61, v61, 8uLL);
    v66[1] = vextq_s8(v62, v62, 8uLL);
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

- (CGRect)rotatedRoiByCroppingRectangle:(CGRect)a3 textFeaturePoints:(id)a4 radians:(float)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v48 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = __sincosf_stret(a5);
  v13 = malloc_type_calloc([v11 count], 0x10uLL, 0x1000040451B5BE8uLL);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = v11;
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
        v28 = [(CRImage *)self width];
        v29 = [(CRImage *)self height];
        v30 = v25 * v28 - x - v17;
        v31 = v27 * v29 - y - v18;
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

- (id)imageByCroppingRectangle:(CGRect)a3 toHeight:(unint64_t)a4 andWidth:(unint64_t)a5 withRotationAngle:(float)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = [(CRImage *)self width];
  v30.size.height = [(CRImage *)self height];
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v30.size.width = v14;
  v29 = CGRectIntersection(v28, v30);
  v15 = v29.origin.x;
  v16 = v29.size.width;
  v17 = v29.size.height;
  *&src.width = 0u;
  [(CRImage *)self vImage];
  src.data = ([(CRImage *)self bytesPerPixel]* v15);
  src.height = v17;
  src.width = v16;
  if (src.height <= a4)
  {
    v20 = [CRImage alloc];
    dest = src;
    v21 = [(CRImage *)v20 initWithVImageBuffer:&dest inColorSpace:[(CRImage *)self colorSpace]];
  }

  else
  {
    memset(&dest, 0, sizeof(dest));
    v18 = objc_opt_class();
    v19 = [(CRImage *)self bytesPerPixel];
    if (v18)
    {
      [v18 allocateVImageBufferWithWidth:a5 height:a4 bytesPerPixel:v19];
    }

    else
    {
      memset(&dest, 0, sizeof(dest));
    }

    vImageRotate_Planar8(&src, &dest, 0, a6, 0, 0);
    v22 = [CRImage alloc];
    v21 = [(CRImage *)v22 initWithVImageBuffer:&v24 inColorSpace:[(CRImage *)self colorSpace:dest.data]];
    if (dest.data)
    {
      free(dest.data);
    }
  }

  return v21;
}

- (id)imageByRectifyingRegion:(id)a3 toColorSpace:(int)a4 homography:(id *)a5
{
  v6 = *&a4;
  v67[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:{-[CRImage pixelBuffer](self, "pixelBuffer")}];
  v66[0] = @"inputTopLeft";
  [v8 topLeft];
  v11 = v10;
  v13 = v12;
  [(CRImage *)self size];
  v16 = CIImageCoordinateFromCGPoint(v11, v13, v14, v15);
  v67[0] = v16;
  v66[1] = @"inputTopRight";
  [v8 topRight];
  v18 = v17;
  v20 = v19;
  [(CRImage *)self size];
  v23 = CIImageCoordinateFromCGPoint(v18, v20, v21, v22);
  v67[1] = v23;
  v66[2] = @"inputBottomRight";
  [v8 bottomRight];
  v25 = v24;
  v27 = v26;
  [(CRImage *)self size];
  v30 = CIImageCoordinateFromCGPoint(v25, v27, v28, v29);
  v67[2] = v30;
  v66[3] = @"inputBottomLeft";
  [v8 bottomLeft];
  v32 = v31;
  v34 = v33;
  [(CRImage *)self size];
  v37 = CIImageCoordinateFromCGPoint(v32, v34, v35, v36);
  v67[3] = v37;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:4];
  v39 = [v9 imageByApplyingFilter:@"CIPerspectiveCorrection" withInputParameters:v38];

  v40 = [[CRImage alloc] initWithCIImage:v39 toColorSpace:v6];
  if (a5)
  {
    v62[0] = 0;
    v62[1] = 0;
    __asm { FMOV            V1.2D, #1.0 }

    v63 = xmmword_1B42AF250;
    v64 = _Q1;
    v65 = xmmword_1B42AF260;
    [v8 topLeft];
    [v8 topRight];
    v61[2] = v48;
    v61[3] = v49;
    [v8 bottomRight];
    v61[4] = v50;
    v61[5] = v51;
    [v8 bottomLeft];
    v61[6] = v52;
    v61[7] = v53;
    v54 = computeHomographyMatrix(v61, v62);
    *(a5 + 2) = v55;
    *(a5 + 6) = v56;
    *a5 = v54;
    *(a5 + 2) = v57;
    *(a5 + 10) = v58;
    *(a5 + 4) = v59;
  }

  return v40;
}

- (void)writeToURL:(id)a3
{
  v5 = [a3 absoluteString];
  v4 = [v5 stringByReplacingOccurrencesOfString:@"file://" withString:&stru_1F2BB4348];
  [(CRImage *)self writeToFile:v4];
}

- (void)writeToFile:(id)a3
{
  v4 = a3;
  writeCGImageWithMetadata([(CRImage *)self cgImage], v4, 0);
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

+ (void)cgOrientation:(unsigned int)a3 toVImageRotationMode:(char *)a4 andReflection:(int *)a5
{
  v5 = a3 - 2;
  if (a3 - 2 > 6)
  {
    LOBYTE(v6) = 0;
    v7 = 0;
  }

  else
  {
    v6 = 0x1030301020200uLL >> (8 * v5);
    v7 = dword_1B42B0100[v5];
  }

  *a4 = v6;
  *a5 = v7;
}

+ (vImage_Buffer)applyEXIFTransformsOnImage:(SEL)a3 inColorSpace:(const vImage_Buffer *)a4 properties:(int)a5
{
  v6 = *&a5;
  v27 = *MEMORY[0x1E69E9840];
  v8 = *&a4->width;
  *&retstr->data = *&a4->data;
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

- (CRImage)initWithCGImage:(CGImage *)a3 properties:(id)a4 toColorSpace:(int)a5
{
  v5 = *&a5;
  v8 = a4;
  v9 = [(CRImage *)self init];
  if (!v9)
  {
LABEL_27:
    v15 = v9;
    goto LABEL_28;
  }

  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
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
  v14 = MEMORY[0x1B8C752A0](&v33, v28, 0, a3, 512);
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
      [v18 applyEXIFTransformsOnImage:&v33 inColorSpace:1 properties:v8];
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
        [v21 applyEXIFTransformsOnImage:v26 inColorSpace:v5 properties:v8];
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

- (CRImage)initWithContentsOfURL:(id)a3 toColorSpace:(int)a4
{
  v4 = *&a4;
  v6 = CGImageSourceCreateWithURL(a3, 0);
  v7 = v6;
  if (v6)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v6, 0, 0);
    if (ImageAtIndex)
    {
      v9 = CGImageSourceCopyPropertiesAtIndex(v7, 0, 0);
      v10 = [(CRImage *)self initWithCGImage:ImageAtIndex properties:v9 toColorSpace:v4];

      CGImageRelease(ImageAtIndex);
      CFRelease(v7);
      self = v10;
      v7 = self;
    }

    else
    {
      CFRelease(v7);
      v7 = 0;
    }
  }

  return v7;
}

+ (BOOL)convertVImage:(const vImage_Buffer *)a3 inColorSpace:(int)a4 toVImage:(vImage_Buffer *)a5 toColorSpace:(int)a6
{
  v6 = *&a6;
  v8 = *&a4;
  v32 = *MEMORY[0x1E69E9840];
  if (a4 == a6)
  {
    v10 = [objc_opt_class() bytesPerPixelForColorSpace:*&a4];
    v11 = vImageCopyBuffer(a3, a5, v10, 0);
    goto LABEL_3;
  }

  v15 = 1;
  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        if (!a6)
        {
          v15 = 1;
          if (!vImageExtractChannel_ARGB8888(a3, a5, 1, 0))
          {
            return v15;
          }

          goto LABEL_4;
        }

        if (a6 == 4)
        {
          vImageConvert_ARGB8888toRGB888(a3, a5, 0);
          return 1;
        }

        if (a6 != 1 || vImageConvert_YpCbCrToARGB_GenerateConversion(*MEMORY[0x1E6958848], &fullYpCbCrPixelRange, &buf, kvImage444AYpCbCr8, kvImageARGB8888, 0))
        {
          goto LABEL_4;
        }

        v11 = vImageConvert_444AYpCbCr8ToARGB8888(a3, a5, &buf, 0, 0);
        goto LABEL_3;
      }

      if (a4 != 4)
      {
        return v15;
      }

      if (a6)
      {
        if (a6 == 3)
        {
          v11 = vImageConvert_RGB888toARGB8888(a3, 0, 0xFFu, a5, 0, 0);
          goto LABEL_3;
        }

        if (a6 != 1)
        {
          goto LABEL_4;
        }

        memset(&permuteMap, 0, sizeof(permuteMap));
        v16 = objc_opt_class();
        if (v16)
        {
          [v16 allocateVImageBufferWithWidth:a3->width height:a3->height colorSpace:4];
        }

        else
        {
          memset(&permuteMap, 0, sizeof(permuteMap));
        }

        v29 = 1;
        *v28 = 2;
        if (vImagePermuteChannels_RGB888(a3, &permuteMap, v28, 0) || vImageConvert_YpCbCrToARGB_GenerateConversion(*MEMORY[0x1E6958848], &fullYpCbCrPixelRange, &buf, kvImage444CrYpCb8, kvImageARGB8888, 0))
        {
          free(permuteMap.data);
          goto LABEL_4;
        }

        v24 = vImageConvert_444CrYpCb8ToARGB8888(&permuteMap, a5, &buf, 0, 0xFFu, 0);
      }

      else
      {
        memset(&buf, 0, 32);
        v23 = objc_opt_class();
        if (v23)
        {
          [v23 allocateVImageBufferWithWidth:a3->width height:a3->height bytesPerPixel:1];
        }

        else
        {
          memset(&buf, 0, 32);
        }

        memset(&permuteMap, 0, sizeof(permuteMap));
        v26 = objc_opt_class();
        if (v26)
        {
          [v26 allocateVImageBufferWithWidth:a3->width height:a3->height bytesPerPixel:1];
        }

        else
        {
          memset(&permuteMap, 0, sizeof(permuteMap));
        }

        v24 = vImageConvert_RGB888toPlanar8(a3, a5, &buf, &permuteMap, 0);
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
    if (a4 != -1)
    {
      if (a4)
      {
        if (a4 != 1)
        {
          return v15;
        }

        if (a6 == 4)
        {
          if (vImageConvert_ARGBToYpCbCr_GenerateConversion(*MEMORY[0x1E6958838], &fullYpCbCrPixelRange, &buf, kvImageARGB8888, kvImage444CrYpCb8, 0) || vImageConvert_ARGB8888To444CrYpCb8(a3, a5, &buf, 0, 0))
          {
            goto LABEL_4;
          }

          BYTE2(permuteMap.data) = 0;
          LOWORD(permuteMap.data) = 513;
          v11 = vImagePermuteChannels_RGB888(a5, a5, &permuteMap, 0);
        }

        else if (a6 == 3)
        {
          if (vImageConvert_ARGBToYpCbCr_GenerateConversion(*MEMORY[0x1E6958838], &fullYpCbCrPixelRange, &buf, kvImageARGB8888, kvImage444AYpCbCr8, 0))
          {
            goto LABEL_4;
          }

          v11 = vImageConvert_ARGB8888To444AYpCbCr8(a3, a5, &buf, 0, 0);
        }

        else
        {
          if (a6)
          {
            goto LABEL_4;
          }

          *buf.opaque = 0x93B5B921B330000;
          v11 = vImageMatrixMultiply_ARGB8888ToPlanar8(a3, a5, &buf, 0x7FFF, 0, 0x3FFF, 0);
        }

LABEL_3:
        if (v11)
        {
          goto LABEL_4;
        }

        return 1;
      }

      if (a6 == 1)
      {
        v11 = vImageConvert_Planar8ToXRGB8888(0xFFu, a3, a3, a3, a5, 0);
        goto LABEL_3;
      }

      if (a6 != 4)
      {
        if (a6 != 3 || vImageOverwriteChannelsWithPixel_ARGB8888(black_AYpCbCr, a5, a5, 0xFu, 0))
        {
          goto LABEL_4;
        }

        v11 = vImageOverwriteChannels_ARGB8888(a3, a5, a5, 4u, 0);
        goto LABEL_3;
      }

      memset(&buf, 0, 32);
      v22 = objc_opt_class();
      if (v22)
      {
        [v22 allocateVImageBufferWithWidth:a3->width height:a3->height colorSpace:1];
      }

      else
      {
        memset(&buf, 0, 32);
      }

      if (vImageOverwriteChannelsWithPixel_ARGB8888(black_AYpCbCr, &buf, &buf, 0xFu, 0) || vImageOverwriteChannels_ARGB8888(a3, &buf, &buf, 4u, 0))
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

      v24 = vImageConvert_ARGB8888toRGB888(&buf, a5, 0);
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

- (id)imageByConvertingToColorSpace:(int)a3
{
  if (self->_colorSpace == a3)
  {
    v4 = self;
  }

  else
  {
    v5 = *&a3;
    v6 = [[CRImage alloc] initWithWidth:[(CRImage *)self width] height:[(CRImage *)self height] colorSpace:*&a3];
    if ([objc_opt_class() convertVImage:&self->_vImage inColorSpace:self->_colorSpace toVImage:&v6->_vImage toColorSpace:v5])
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)imageByOverlayingRects:(CGRect *)a3 count:(int64_t)a4 strings:(id)a5 lineWidth:(double)a6 red:(double)a7 green:(double)a8 blue:(double)a9 alpha:(double)a10
{
  v18 = a5;
  v19 = [(CRImage *)self cgImage];
  v20 = [(CRImage *)self width];
  v21 = [(CRImage *)self height];
  v22 = makeCFPointer<CGColorSpace *>;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  (v22)(DeviceRGB, &space);
  v24 = makeCFPointer<CGContext *>[0];
  v25 = CGBitmapContextCreate(0, v20, v21, 8uLL, 4 * v20, space, 6u);
  (v24)(v25, &c);
  v26 = *(MEMORY[0x1E695EFD0] + 16);
  *&transform.a = *MEMORY[0x1E695EFD0];
  *&transform.c = v26;
  *&transform.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGContextConcatCTM(c, &transform);
  v52.size.width = v20;
  v52.size.height = v21;
  v52.origin.x = 0.0;
  v52.origin.y = 0.0;
  CGContextDrawImage(c, v52, v19);
  CGContextSetRGBStrokeColor(c, a7, a8, a9, a10);
  CGContextSetRGBFillColor(c, a7, a8, a9, a10);
  if (a4 >= 1 && v18)
  {
    CGContextSetTextDrawingMode(c, kCGTextFill);
    v27 = makeCFPointer<CGColor *>[0];
    GenericRGB = CGColorCreateGenericRGB(a7, a8, a9, a10);
    (v27)(GenericRGB, &transform);
    v29 = 0;
    v30 = a3;
    do
    {
      CGContextSetTextPosition(c, v30->origin.x, v30->origin.y);
      v31 = makeCFPointer<CGPath *>[0];
      Mutable = CGPathCreateMutable();
      (v31)(Mutable, &path);
      v53.origin.x = v30->origin.x;
      v53.size.width = v30->size.width;
      height = v30->size.height;
      v53.origin.y = v30->origin.y - height;
      v53.size.height = height + height;
      CGPathAddRect(path, 0, v53);
      v34 = makeCFPointer<__CTFramesetter const*>[0];
      v35 = [v18 objectAtIndexedSubscript:v29];
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
      ++v30;
    }

    while (a4 != v29);
    if (*&transform.a)
    {
      CFRelease(*&transform.a);
    }
  }

  CGContextSetLineWidth(c, a6);
  CGContextAddRects(c, a3, a4);
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

- (id)imageByOverlayingRegions:(id)a3 strings:(id)a4 lineWidth:(double)a5 red:(double)a6 green:(double)a7 blue:(double)a8 alpha:(double)a9
{
  v43 = a9;
  v15 = a3;
  v16 = a4;
  __p = 0;
  v45 = 0;
  v46 = 0;
  v17 = [v15 count];
  if (v17)
  {
    if (!(v17 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(&__p, v17);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  for (i = 0; i < [v15 count]; ++i)
  {
    v19 = [v15 objectAtIndexedSubscript:i];
    v20 = [v19 boundingQuad];
    v21 = [v20 denormalizedQuad];
    [v21 boundingBox];
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
    v41 = self;
  }

  else
  {
    v41 = [(CRImage *)self imageByOverlayingRects:__p count:(v45 - __p) >> 5 strings:v16 lineWidth:a5 red:a6 green:a7 blue:a8 alpha:v43];
  }

  return v41;
}

+ (void)drawVerticalLineAtXOffset:(double)a3 image:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    [v5 vImage];
    v7 = v11;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
  v9 = llround(a3);
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

- (void)setVImage:(vImage_Buffer *)a3
{
  v3 = *&a3->width;
  *&self->_vImage.data = *&a3->data;
  *&self->_vImage.width = v3;
}

@end