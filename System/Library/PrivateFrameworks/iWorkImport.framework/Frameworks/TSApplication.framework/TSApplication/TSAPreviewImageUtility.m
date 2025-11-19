@interface TSAPreviewImageUtility
+ (CGImage)newPrerenderedImageFromImage:(CGImage *)a3;
+ (CGImage)newPrerenderedImageFromImage:(CGImage *)a3 preserveAlpha:(BOOL)a4;
+ (id)scaleImage:(CGImage *)a3 toSize:(CGSize)a4 scale:(double)a5;
+ (void)drawInContext:(CGContext *)a3 bounds:(CGRect)a4 image:(CGImage *)a5 imageSize:(CGSize)a6 scaledSize:(CGSize)a7 scale:(double)a8 flip:(BOOL)a9;
@end

@implementation TSAPreviewImageUtility

+ (id)scaleImage:(CGImage *)a3 toSize:(CGSize)a4 scale:(double)a5
{
  if (a4.width == *MEMORY[0x277CBF3A8] && a4.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSAPreviewImageUtility scaleImage:toSize:scale:]", v5);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAPreviewImageUtility.m", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 20, 0, "Can not scale image to zero size.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  CGImageGetWidth(a3);
  CGImageGetHeight(a3);
  TSUShrinkSizeToFitInSize();
  TSURoundedSize();
  TSUMultiplySizeScalar();
  if (TSUNearlyEqualSizes())
  {
    v21 = objc_msgSend_imageWithCGImage_scale_orientation_(MEMORY[0x277D811F8], v19, a3, 0, a5);
  }

  else
  {
    objc_msgSend_imageIsOpaque_(a1, v19, a3, v20);
    v22 = TSDBitmapContextCreate();
    CGContextSetInterpolationQuality(v22, kCGInterpolationHigh);
    TSURectWithSize();
    objc_msgSend_drawInContext_bounds_image_imageSize_scaledSize_scale_flip_(a1, v23, v22, a3, 0, *&a5);
    Image = CGBitmapContextCreateImage(v22);
    v21 = objc_msgSend_imageWithCGImage_scale_orientation_(MEMORY[0x277D811F8], v25, Image, 0, a5);
    CGImageRelease(Image);
    CGContextRelease(v22);
  }

  return v21;
}

+ (void)drawInContext:(CGContext *)a3 bounds:(CGRect)a4 image:(CGImage *)a5 imageSize:(CGSize)a6 scaledSize:(CGSize)a7 scale:(double)a8 flip:(BOOL)a9
{
  v9 = a9;
  if (a7.width == *MEMORY[0x277CBF3A8] && a7.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSAPreviewImageUtility drawInContext:bounds:image:imageSize:scaledSize:scale:flip:]", a5);
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
  if (v9)
  {
    v30.b = 0.0;
    v30.c = 0.0;
    v30.a = 1.0;
    *&v30.d = xmmword_276116D00;
    v30.ty = CGRectGetHeight(*&v22);
    CGContextConcatCTM(a3, &v30);
  }

  v31.origin.x = v26;
  v31.origin.y = v27;
  v31.size.width = v28;
  v31.size.height = v29;
  CGContextDrawImage(a3, v31, a5);
}

+ (CGImage)newPrerenderedImageFromImage:(CGImage *)a3
{
  v4 = objc_opt_class();

  return MEMORY[0x2821F9670](v4, sel_newPrerenderedImageFromImage_preserveAlpha_, a3, 1);
}

+ (CGImage)newPrerenderedImageFromImage:(CGImage *)a3 preserveAlpha:(BOOL)a4
{
  v4 = a4;
  CGImageGetWidth(a3);
  CGImageGetHeight(a3);
  if (v4)
  {
    objc_msgSend_imageIsOpaque_(a1, v7, a3, v8);
  }

  v9 = TSDBitmapContextCreate();
  TSURectWithSize();
  CGContextDrawImage(v9, v12, a3);
  Image = CGBitmapContextCreateImage(v9);
  CGContextRelease(v9);
  return Image;
}

@end