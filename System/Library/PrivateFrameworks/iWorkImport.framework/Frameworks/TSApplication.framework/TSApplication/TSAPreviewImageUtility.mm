@interface TSAPreviewImageUtility
+ (CGImage)newPrerenderedImageFromImage:(CGImage *)image;
+ (CGImage)newPrerenderedImageFromImage:(CGImage *)image preserveAlpha:(BOOL)alpha;
+ (id)scaleImage:(CGImage *)image toSize:(CGSize)size scale:(double)scale;
+ (void)drawInContext:(CGContext *)context bounds:(CGRect)bounds image:(CGImage *)image imageSize:(CGSize)size scaledSize:(CGSize)scaledSize scale:(double)scale flip:(BOOL)flip;
@end

@implementation TSAPreviewImageUtility

+ (id)scaleImage:(CGImage *)image toSize:(CGSize)size scale:(double)scale
{
  if (size.width == *MEMORY[0x277CBF3A8] && size.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSAPreviewImageUtility scaleImage:toSize:scale:]", v5);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAPreviewImageUtility.m", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 20, 0, "Can not scale image to zero size.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  CGImageGetWidth(image);
  CGImageGetHeight(image);
  TSUShrinkSizeToFitInSize();
  TSURoundedSize();
  TSUMultiplySizeScalar();
  if (TSUNearlyEqualSizes())
  {
    v21 = objc_msgSend_imageWithCGImage_scale_orientation_(MEMORY[0x277D811F8], v19, image, 0, scale);
  }

  else
  {
    objc_msgSend_imageIsOpaque_(self, v19, image, v20);
    v22 = TSDBitmapContextCreate();
    CGContextSetInterpolationQuality(v22, kCGInterpolationHigh);
    TSURectWithSize();
    objc_msgSend_drawInContext_bounds_image_imageSize_scaledSize_scale_flip_(self, v23, v22, image, 0, *&scale);
    Image = CGBitmapContextCreateImage(v22);
    v21 = objc_msgSend_imageWithCGImage_scale_orientation_(MEMORY[0x277D811F8], v25, Image, 0, scale);
    CGImageRelease(Image);
    CGContextRelease(v22);
  }

  return v21;
}

+ (void)drawInContext:(CGContext *)context bounds:(CGRect)bounds image:(CGImage *)image imageSize:(CGSize)size scaledSize:(CGSize)scaledSize scale:(double)scale flip:(BOOL)flip
{
  flipCopy = flip;
  if (scaledSize.width == *MEMORY[0x277CBF3A8] && scaledSize.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSAPreviewImageUtility drawInContext:bounds:image:imageSize:scaledSize:scale:flip:]", image);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAPreviewImageUtility.m", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 56, 0, "Can not scale image to zero size.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  TSURectWithSize();
  TSURoundedRect();
  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;
  if (flipCopy)
  {
    v30.b = 0.0;
    v30.c = 0.0;
    v30.a = 1.0;
    *&v30.d = xmmword_276116D00;
    v30.ty = CGRectGetHeight(*&v22);
    CGContextConcatCTM(context, &v30);
  }

  v31.origin.x = v26;
  v31.origin.y = v27;
  v31.size.width = v28;
  v31.size.height = v29;
  CGContextDrawImage(context, v31, image);
}

+ (CGImage)newPrerenderedImageFromImage:(CGImage *)image
{
  v4 = objc_opt_class();

  return MEMORY[0x2821F9670](v4, sel_newPrerenderedImageFromImage_preserveAlpha_, image, 1);
}

+ (CGImage)newPrerenderedImageFromImage:(CGImage *)image preserveAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  CGImageGetWidth(image);
  CGImageGetHeight(image);
  if (alphaCopy)
  {
    objc_msgSend_imageIsOpaque_(self, v7, image, v8);
  }

  v9 = TSDBitmapContextCreate();
  TSURectWithSize();
  CGContextDrawImage(v9, v12, image);
  Image = CGBitmapContextCreateImage(v9);
  CGContextRelease(v9);
  return Image;
}

@end