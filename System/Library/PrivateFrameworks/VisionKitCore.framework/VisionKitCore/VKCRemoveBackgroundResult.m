@interface VKCRemoveBackgroundResult
- (CGImage)createCGImage;
- (CGImageRef)_createCGImageFromBGRAPixelBuffer:(uint64_t)a1 cropRect:;
- (CGImageRef)_memoryFriendlyCreateCGImageFromBGRAPixelBuffer:(uint64_t)a1 cropRect:;
- (CGRect)cropRect;
- (CGRect)initWithMADMaskResult:(void *)a3 request:;
- (CGRect)normalizedCropRect;
- (NSArray)instanceMasks;
- (VKCRemoveBackgroundResult)initWithMADResult:(id)a3 request:(id)a4;
- (const)imageRefForMask:(uint64_t)a1;
- (id)initWithMADMatteResult:(void *)a3 request:;
- (int64_t)imageOrientation;
- (uint64_t)isMaskResult;
- (uint64_t)setIsMaskResult:(uint64_t)result;
- (void)dealloc;
- (void)generateImageMaskIfNecessaryWithContext:(id)a3;
- (void)setAnimatedStickerScore:(uint64_t)a1;
- (void)setInstanceMasks:(uint64_t)a1;
@end

@implementation VKCRemoveBackgroundResult

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  CGImageRelease(self->_maskImage);
  CGImageRelease(self->_orientedMaskImage);
  v3.receiver = self;
  v3.super_class = VKCRemoveBackgroundResult;
  [(VKCRemoveBackgroundResult *)&v3 dealloc];
}

- (VKCRemoveBackgroundResult)initWithMADResult:(id)a3 request:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = VKDynamicCast(v8, v6);
  if (v9)
  {
    self = [(VKCRemoveBackgroundResult *)self initWithMADMaskResult:v9 request:v7];
    v12 = self;
  }

  else
  {
    v10 = objc_opt_class();
    v11 = VKDynamicCast(v10, v6);
    if (v11)
    {
      self = [(VKCRemoveBackgroundResult *)&self->super.isa initWithMADMatteResult:v11 request:v7];
      v12 = self;
    }

    else
    {
      [VKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[VKCRemoveBackgroundResult initWithMADResult:request:]" simulateCrash:0 showAlert:0 format:@"Incompatible class type for VKCRemoveBackgroundResult:initWithMadResult: %@", objc_opt_class()];
      v12 = 0;
    }
  }

  return v12;
}

- (NSArray)instanceMasks
{
  v2 = [(NSArray *)self->_instanceMasks copy];

  return v2;
}

- (void)generateImageMaskIfNecessaryWithContext:(id)a3
{
  v23 = a3;
  v4 = [(VKCRemoveBackgroundResult *)self pixelBuffer];
  if (!self->_maskImage)
  {
    v5 = v4;
    v6 = self->_orientedMaskImage || v4 == 0;
    if (!v6 && CVPixelBufferGetPixelFormatType(v4) == 1278226534)
    {
      v7 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v5];
      v8 = [MEMORY[0x1E695F648] filterWithName:@"CIMaskToAlpha"];
      [v8 setValue:v7 forKey:@"inputImage"];
      if (v23)
      {
        v9 = v23;
      }

      else
      {
        v9 = [objc_alloc(MEMORY[0x1E695F620]) initWithOptions:0];
      }

      v10 = v9;
      CVPixelBufferGetHeight(v5);
      CVPixelBufferGetWidth(v5);
      v11 = VKMRectWithSize();
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [v8 outputImage];
      v19 = *MEMORY[0x1E695F8A8];
      self->_maskImage = [v10 createCGImage:v18 fromRect:v19 format:0 colorSpace:{v11, v13, v15, v17}];

      v20 = [(VKCRemoveBackgroundResult *)self request];
      v21 = [v7 imageByApplyingCGOrientation:{vk_cgImagePropertyOrientationFromVKOrientation(objc_msgSend(v20, "imageOrientation"))}];

      [v8 setValue:v21 forKey:@"inputImage"];
      v22 = [v8 outputImage];
      self->_orientedMaskImage = [v10 createCGImage:v22 fromRect:v19 format:0 colorSpace:{v11, v13, v15, v17}];
    }
  }
}

- (int64_t)imageOrientation
{
  v2 = [(VKCRemoveBackgroundResult *)self request];
  v3 = [v2 imageOrientation];

  return v3;
}

- (CGImage)createCGImage
{
  v3 = [(VKCRemoveBackgroundResult *)self pixelBuffer];
  [(VKCRemoveBackgroundResult *)self cropRect];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  if (v3 && VKMRectHasArea(v4, v5, v6, v7))
  {
    CVPixelBufferRetain(v3);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v3);
    if (PixelFormatType == 1111970369)
    {
      v13 = vk_cgImageFromPixelBuffer(v3);
    }

    else
    {
      v15 = PixelFormatType;
      v16 = VKMUIStringForCVPixelBufferType(1111970369);
      v17 = VKMUIStringForCVPixelBufferType(v15);
      [VKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[VKCRemoveBackgroundResult createCGImage]" simulateCrash:0 showAlert:0 format:@"Pixel format for createCGImage is incorrect, expected: %@, received: %@. Bailing", v16, v17];

      v13 = 0;
    }

    CVPixelBufferRelease(v3);
  }

  else
  {
    v14 = VKMUIStringForRect(v8, v9, v10, v11);
    [VKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[VKCRemoveBackgroundResult createCGImage]" simulateCrash:0 showAlert:0 format:@"CreateCGImage is buffer incorrect, buffer: %@, cropRect:%@", v3, v14];

    return 0;
  }

  return v13;
}

- (CGRect)normalizedCropRect
{
  x = self->_normalizedCropRect.origin.x;
  y = self->_normalizedCropRect.origin.y;
  width = self->_normalizedCropRect.size.width;
  height = self->_normalizedCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)initWithMADMaskResult:(void *)a3 request:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v26.receiver = a1;
    v26.super_class = VKCRemoveBackgroundResult;
    v7 = [(CGRect *)&v26 init];
    a1 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 7, a3);
      [v5 sourceRegionOfInterest];
      VKMFlipRect(v8, v9, v10, v11, 0.0, 0.0, 1.0, 1.0);
      OUTLINED_FUNCTION_2();
      a1[2].origin.x = v12;
      a1[2].origin.y = v13;
      a1[2].size.width = v14;
      a1[2].size.height = v15;
      [v6 size];
      v17 = v16;
      [v6 size];
      v27.origin.x = OUTLINED_FUNCTION_3();
      a1[3] = VNImageRectForNormalizedRect(v27, v17, v18);
      v19 = [v5 allInstances];
      v20 = [v5 maskImagesForInstances:v19 error:0];
      x = a1[1].origin.x;
      *&a1[1].origin.x = v20;

      v22 = [v5 animatedStickerScore];
      [v6 setAnimatedStickerScore:v22];

      v23 = [v5 animatedStickerScore];
      width = a1[1].size.width;
      *&a1[1].size.width = v23;

      LOBYTE(a1->size.width) = 1;
    }
  }

  return a1;
}

- (id)initWithMADMatteResult:(void *)a3 request:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v30.receiver = a1;
    v30.super_class = VKCRemoveBackgroundResult;
    v7 = objc_msgSendSuper2(&v30, sel_init);
    a1 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 7, a3);
      a1[1] = CVPixelBufferRetain([v5 pixelBuffer]);
      [VKCPreDeclare cropRectForMatteResult:v5];
      OUTLINED_FUNCTION_2();
      if (CGRectIsNull(v31))
      {
        *(a1 + 4) = VKMRectUnit;
        *(a1 + 5) = *&qword_1B44285A8;
        vk_sizeForPixelBuffer(a1[1]);
        v8 = VKMRectWithSize();
      }

      else
      {
        v12 = OUTLINED_FUNCTION_3();
        *(a1 + 8) = VKMFlipRect(v12, v13, v14, v15, v16, v17, v18, v19);
        a1[9] = v20;
        a1[10] = v21;
        a1[11] = v22;
        [v6 size];
        v23 = VKMRectWithSize();
        VKMRectFromNormalizedSubrect(v23, v24, v25, v26, *(a1 + 8), *(a1 + 9), *(a1 + 10), *(a1 + 11));
      }

      *(a1 + 12) = v8;
      a1[13] = v9;
      a1[14] = v10;
      a1[15] = v11;
      v27 = [v6 animatedStickerScore];
      v28 = a1[6];
      a1[6] = v27;
    }
  }

  return a1;
}

- (CGImageRef)_createCGImageFromBGRAPixelBuffer:(uint64_t)a1 cropRect:
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  v2 = vk_cgImageFromPixelBuffer(v1);
  v6.origin.x = OUTLINED_FUNCTION_0();
  v4 = CGImageCreateWithImageInRect(v3, v6);
  CGImageRelease(v2);
  if (v4)
  {
    CFAutorelease(v4);
  }

  return v4;
}

- (CGImageRef)_memoryFriendlyCreateCGImageFromBGRAPixelBuffer:(uint64_t)a1 cropRect:
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  v4 = v3;
  CVPixelBufferLockBaseAddress(v3, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(v4);
  PixelFormatType = CVPixelBufferGetPixelFormatType(v4);
  v7 = CVPixelFormatDescriptionCreateWithPixelFormatType(0, PixelFormatType);
  if (!v7)
  {
    [VKAssert handleFailedAssertWithCondition:"((pixelFormatDict) != nil)" functionName:"[VKCRemoveBackgroundResult _memoryFriendlyCreateCGImageFromBGRAPixelBuffer:cropRect:]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "pixelFormatDict"];
    if (BaseAddress)
    {
      goto LABEL_4;
    }

LABEL_9:
    [VKAssert handleFailedAssertWithCondition:"((bufferBaseAddress) != nil)" functionName:"[VKCRemoveBackgroundResult _memoryFriendlyCreateCGImageFromBGRAPixelBuffer:cropRect:]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "bufferBaseAddress"];
    goto LABEL_4;
  }

  if (!BaseAddress)
  {
    goto LABEL_9;
  }

LABEL_4:
  v8 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x1E6966210]];
  v9 = [v8 integerValue];

  v10 = [(__CFDictionary *)v7 objectForKeyedSubscript:@"BitsPerComponent"];
  v11 = [v10 integerValue];

  CFRelease(v7);
  v20.origin.x = OUTLINED_FUNCTION_0();
  v12 = vcvtmd_u64_f64(CGRectGetMinX(v20));
  v21.origin.x = OUTLINED_FUNCTION_0();
  v13 = vcvtmd_u64_f64(CGRectGetMinY(v21));
  v14 = &BaseAddress[(v9 >> 3) * v12 + CVPixelBufferGetBytesPerRow(v4) * v13];
  v15 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v4);
  v17 = CGBitmapContextCreate(v14, vcvtmd_u64_f64(v2), vcvtmd_u64_f64(v1), v11, BytesPerRow, v15, 0x2002u);
  Image = CGBitmapContextCreateImage(v17);
  CGContextRelease(v17);
  CGColorSpaceRelease(v15);
  CVPixelBufferUnlockBaseAddress(v4, 1uLL);
  if (Image)
  {
    CFAutorelease(Image);
  }

  return Image;
}

- (const)imageRefForMask:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:a2];
  v4 = [MEMORY[0x1E695F648] filterWithName:@"CIMaskToAlpha"];
  [v4 setValue:v3 forKey:@"inputImage"];
  v5 = [v4 valueForKey:@"outputImage"];
  v6 = [objc_alloc(MEMORY[0x1E695F620]) initWithOptions:0];
  CVPixelBufferGetHeight(a2);
  CVPixelBufferGetWidth(a2);
  v7 = [v6 createCGImage:v5 fromRect:*MEMORY[0x1E695F8A8] format:0 colorSpace:VKMRectWithSize()];
  v8 = v7;
  if (v7)
  {
    CFAutorelease(v7);
  }

  return v8;
}

- (void)setInstanceMasks:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

- (void)setAnimatedStickerScore:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

- (uint64_t)isMaskResult
{
  if (a1)
  {
    v1 = *(a1 + 16);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)setIsMaskResult:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

@end