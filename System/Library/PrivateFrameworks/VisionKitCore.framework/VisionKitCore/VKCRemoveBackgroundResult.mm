@interface VKCRemoveBackgroundResult
- (CGImage)createCGImage;
- (CGImageRef)_createCGImageFromBGRAPixelBuffer:(uint64_t)buffer cropRect:;
- (CGImageRef)_memoryFriendlyCreateCGImageFromBGRAPixelBuffer:(uint64_t)buffer cropRect:;
- (CGRect)cropRect;
- (CGRect)initWithMADMaskResult:(void *)result request:;
- (CGRect)normalizedCropRect;
- (NSArray)instanceMasks;
- (VKCRemoveBackgroundResult)initWithMADResult:(id)result request:(id)request;
- (const)imageRefForMask:(uint64_t)mask;
- (id)initWithMADMatteResult:(void *)result request:;
- (int64_t)imageOrientation;
- (uint64_t)isMaskResult;
- (uint64_t)setIsMaskResult:(uint64_t)result;
- (void)dealloc;
- (void)generateImageMaskIfNecessaryWithContext:(id)context;
- (void)setAnimatedStickerScore:(uint64_t)score;
- (void)setInstanceMasks:(uint64_t)masks;
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

- (VKCRemoveBackgroundResult)initWithMADResult:(id)result request:(id)request
{
  resultCopy = result;
  requestCopy = request;
  v8 = objc_opt_class();
  v9 = VKDynamicCast(v8, resultCopy);
  if (v9)
  {
    self = [(VKCRemoveBackgroundResult *)self initWithMADMaskResult:v9 request:requestCopy];
    selfCopy2 = self;
  }

  else
  {
    v10 = objc_opt_class();
    v11 = VKDynamicCast(v10, resultCopy);
    if (v11)
    {
      self = [(VKCRemoveBackgroundResult *)&self->super.isa initWithMADMatteResult:v11 request:requestCopy];
      selfCopy2 = self;
    }

    else
    {
      [VKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[VKCRemoveBackgroundResult initWithMADResult:request:]" simulateCrash:0 showAlert:0 format:@"Incompatible class type for VKCRemoveBackgroundResult:initWithMadResult: %@", objc_opt_class()];
      selfCopy2 = 0;
    }
  }

  return selfCopy2;
}

- (NSArray)instanceMasks
{
  v2 = [(NSArray *)self->_instanceMasks copy];

  return v2;
}

- (void)generateImageMaskIfNecessaryWithContext:(id)context
{
  contextCopy = context;
  pixelBuffer = [(VKCRemoveBackgroundResult *)self pixelBuffer];
  if (!self->_maskImage)
  {
    v5 = pixelBuffer;
    v6 = self->_orientedMaskImage || pixelBuffer == 0;
    if (!v6 && CVPixelBufferGetPixelFormatType(pixelBuffer) == 1278226534)
    {
      v7 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v5];
      v8 = [MEMORY[0x1E695F648] filterWithName:@"CIMaskToAlpha"];
      [v8 setValue:v7 forKey:@"inputImage"];
      if (contextCopy)
      {
        v9 = contextCopy;
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
      outputImage = [v8 outputImage];
      v19 = *MEMORY[0x1E695F8A8];
      self->_maskImage = [v10 createCGImage:outputImage fromRect:v19 format:0 colorSpace:{v11, v13, v15, v17}];

      request = [(VKCRemoveBackgroundResult *)self request];
      v21 = [v7 imageByApplyingCGOrientation:{vk_cgImagePropertyOrientationFromVKOrientation(objc_msgSend(request, "imageOrientation"))}];

      [v8 setValue:v21 forKey:@"inputImage"];
      outputImage2 = [v8 outputImage];
      self->_orientedMaskImage = [v10 createCGImage:outputImage2 fromRect:v19 format:0 colorSpace:{v11, v13, v15, v17}];
    }
  }
}

- (int64_t)imageOrientation
{
  request = [(VKCRemoveBackgroundResult *)self request];
  imageOrientation = [request imageOrientation];

  return imageOrientation;
}

- (CGImage)createCGImage
{
  pixelBuffer = [(VKCRemoveBackgroundResult *)self pixelBuffer];
  [(VKCRemoveBackgroundResult *)self cropRect];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  if (pixelBuffer && VKMRectHasArea(v4, v5, v6, v7))
  {
    CVPixelBufferRetain(pixelBuffer);
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    if (PixelFormatType == 1111970369)
    {
      v13 = vk_cgImageFromPixelBuffer(pixelBuffer);
    }

    else
    {
      v15 = PixelFormatType;
      v16 = VKMUIStringForCVPixelBufferType(1111970369);
      v17 = VKMUIStringForCVPixelBufferType(v15);
      [VKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[VKCRemoveBackgroundResult createCGImage]" simulateCrash:0 showAlert:0 format:@"Pixel format for createCGImage is incorrect, expected: %@, received: %@. Bailing", v16, v17];

      v13 = 0;
    }

    CVPixelBufferRelease(pixelBuffer);
  }

  else
  {
    v14 = VKMUIStringForRect(v8, v9, v10, v11);
    [VKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[VKCRemoveBackgroundResult createCGImage]" simulateCrash:0 showAlert:0 format:@"CreateCGImage is buffer incorrect, buffer: %@, cropRect:%@", pixelBuffer, v14];

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

- (CGRect)initWithMADMaskResult:(void *)result request:
{
  v5 = a2;
  resultCopy = result;
  if (self)
  {
    v26.receiver = self;
    v26.super_class = VKCRemoveBackgroundResult;
    v7 = [(CGRect *)&v26 init];
    self = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 7, result);
      [v5 sourceRegionOfInterest];
      VKMFlipRect(v8, v9, v10, v11, 0.0, 0.0, 1.0, 1.0);
      OUTLINED_FUNCTION_2();
      self[2].origin.x = v12;
      self[2].origin.y = v13;
      self[2].size.width = v14;
      self[2].size.height = v15;
      [resultCopy size];
      v17 = v16;
      [resultCopy size];
      v27.origin.x = OUTLINED_FUNCTION_3();
      self[3] = VNImageRectForNormalizedRect(v27, v17, v18);
      allInstances = [v5 allInstances];
      v20 = [v5 maskImagesForInstances:allInstances error:0];
      x = self[1].origin.x;
      *&self[1].origin.x = v20;

      animatedStickerScore = [v5 animatedStickerScore];
      [resultCopy setAnimatedStickerScore:animatedStickerScore];

      animatedStickerScore2 = [v5 animatedStickerScore];
      width = self[1].size.width;
      *&self[1].size.width = animatedStickerScore2;

      LOBYTE(self->size.width) = 1;
    }
  }

  return self;
}

- (id)initWithMADMatteResult:(void *)result request:
{
  v5 = a2;
  resultCopy = result;
  if (self)
  {
    v30.receiver = self;
    v30.super_class = VKCRemoveBackgroundResult;
    v7 = objc_msgSendSuper2(&v30, sel_init);
    self = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 7, result);
      self[1] = CVPixelBufferRetain([v5 pixelBuffer]);
      [VKCPreDeclare cropRectForMatteResult:v5];
      OUTLINED_FUNCTION_2();
      if (CGRectIsNull(v31))
      {
        *(self + 4) = VKMRectUnit;
        *(self + 5) = *&qword_1B44285A8;
        vk_sizeForPixelBuffer(self[1]);
        v8 = VKMRectWithSize();
      }

      else
      {
        v12 = OUTLINED_FUNCTION_3();
        *(self + 8) = VKMFlipRect(v12, v13, v14, v15, v16, v17, v18, v19);
        self[9] = v20;
        self[10] = v21;
        self[11] = v22;
        [resultCopy size];
        v23 = VKMRectWithSize();
        VKMRectFromNormalizedSubrect(v23, v24, v25, v26, *(self + 8), *(self + 9), *(self + 10), *(self + 11));
      }

      *(self + 12) = v8;
      self[13] = v9;
      self[14] = v10;
      self[15] = v11;
      animatedStickerScore = [resultCopy animatedStickerScore];
      v28 = self[6];
      self[6] = animatedStickerScore;
    }
  }

  return self;
}

- (CGImageRef)_createCGImageFromBGRAPixelBuffer:(uint64_t)buffer cropRect:
{
  if (!buffer)
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

- (CGImageRef)_memoryFriendlyCreateCGImageFromBGRAPixelBuffer:(uint64_t)buffer cropRect:
{
  if (!buffer)
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
  integerValue = [v8 integerValue];

  v10 = [(__CFDictionary *)v7 objectForKeyedSubscript:@"BitsPerComponent"];
  integerValue2 = [v10 integerValue];

  CFRelease(v7);
  v20.origin.x = OUTLINED_FUNCTION_0();
  v12 = vcvtmd_u64_f64(CGRectGetMinX(v20));
  v21.origin.x = OUTLINED_FUNCTION_0();
  v13 = vcvtmd_u64_f64(CGRectGetMinY(v21));
  v14 = &BaseAddress[(integerValue >> 3) * v12 + CVPixelBufferGetBytesPerRow(v4) * v13];
  v15 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v4);
  v17 = CGBitmapContextCreate(v14, vcvtmd_u64_f64(v2), vcvtmd_u64_f64(v1), integerValue2, BytesPerRow, v15, 0x2002u);
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

- (const)imageRefForMask:(uint64_t)mask
{
  if (!mask)
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

- (void)setInstanceMasks:(uint64_t)masks
{
  if (masks)
  {
    objc_storeStrong((masks + 32), a2);
  }
}

- (void)setAnimatedStickerScore:(uint64_t)score
{
  if (score)
  {
    objc_storeStrong((score + 48), a2);
  }
}

- (uint64_t)isMaskResult
{
  if (self)
  {
    v1 = *(self + 16);
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