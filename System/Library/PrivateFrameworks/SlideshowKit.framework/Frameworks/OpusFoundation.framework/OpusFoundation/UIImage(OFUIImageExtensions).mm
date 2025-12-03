@interface UIImage(OFUIImageExtensions)
+ (UIImage)imageWithColor:()OFUIImageExtensions andSize:opaque:scale:;
+ (uint64_t)UIImageOrientationForExifOrientation:()OFUIImageExtensions;
+ (uint64_t)animatedImageAtURL:()OFUIImageExtensions;
+ (uint64_t)decompressedDeviceImageWithCGImage:()OFUIImageExtensions opaque:scale:orientation:;
- (CGImageRef)newBorderMask:()OFUIImageExtensions size:;
- (UIImage)applyBlurWithRadius:()OFUIImageExtensions tintColor:saturationDeltaFactor:maskImage:;
- (UIImage)centerImageWithSize:()OFUIImageExtensions;
- (UIImage)imageWithAdjustedOrientation:()OFUIImageExtensions andResolution:;
- (UIImage)imageWithSize:()OFUIImageExtensions andCropRect:;
- (UIImage)imageWithSize:()OFUIImageExtensions opaque:scale:;
- (uint64_t)applyBlurDarkEffect;
- (uint64_t)applyBlurExtraLightEffect;
- (uint64_t)applyBlurLightEffect;
- (uint64_t)applyBlurTintEffectWithColor:()OFUIImageExtensions;
- (uint64_t)decompressedDeviceImage:()OFUIImageExtensions;
- (uint64_t)imageWithTransparentInset:()OFUIImageExtensions;
@end

@implementation UIImage(OFUIImageExtensions)

+ (uint64_t)UIImageOrientationForExifOrientation:()OFUIImageExtensions
{
  if ((a3 - 2) > 6)
  {
    return 0;
  }

  else
  {
    return qword_269E92C10[a3 - 2];
  }
}

+ (UIImage)imageWithColor:()OFUIImageExtensions andSize:opaque:scale:
{
  UIGraphicsBeginImageContextWithOptions(*&a5, opaque, a7);
  [a3 set];
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = a5;
  v12.size.height = a6;
  UIRectFill(v12);
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return ImageFromCurrentImageContext;
}

- (UIImage)imageWithSize:()OFUIImageExtensions opaque:scale:
{
  UIGraphicsBeginImageContextWithOptions(*&a4, opaque, a6);
  [self drawInRect:{0.0, 0.0, a4, a5}];
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return ImageFromCurrentImageContext;
}

- (UIImage)centerImageWithSize:()OFUIImageExtensions
{
  UIGraphicsBeginImageContext(*&a2);
  [self size];
  v7 = (a2 - v6) * 0.5;
  [self size];
  v9 = (a3 - v8) * 0.5;
  [self size];
  v11 = v10;
  [self size];
  [self drawInRect:{v7, v9, v11, v12}];
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return ImageFromCurrentImageContext;
}

- (UIImage)imageWithSize:()OFUIImageExtensions andCropRect:
{
  UIGraphicsBeginImageContext(*&a2);
  [self drawInRect:{0.0, 0.0, a2, a3}];
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  cGImage = [(UIImage *)ImageFromCurrentImageContext CGImage];
  v19.origin.x = a4;
  v19.origin.y = a5;
  v19.size.width = a6;
  v19.size.height = a7;
  v16 = CGImageCreateWithImageInRect(cGImage, v19);
  if (v16)
  {
    v17 = v16;
    ImageFromCurrentImageContext = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v16];
    CGImageRelease(v17);
  }

  return ImageFromCurrentImageContext;
}

- (UIImage)imageWithAdjustedOrientation:()OFUIImageExtensions andResolution:
{
  cGImage = [self CGImage];
  Width = CGImageGetWidth(cGImage);
  Height = CGImageGetHeight(cGImage);
  v9 = Height;
  v33 = *(MEMORY[0x277CBF2C0] + 16);
  v34 = *MEMORY[0x277CBF2C0];
  *&v37.a = *MEMORY[0x277CBF2C0];
  *&v37.c = v33;
  v32 = *(MEMORY[0x277CBF2C0] + 32);
  *&v37.tx = v32;
  v10 = a4;
  v11 = Width <= a4 && v9 <= v10;
  v12 = Height;
  v13 = Width;
  if (!v11)
  {
    v14 = Width / v9;
    if (Width / v9 <= 1.0)
    {
      v13 = v14 * v10;
      v12 = a4;
    }

    else
    {
      v13 = a4;
      v12 = v10 / v14;
    }
  }

  v15 = v13 / Width;
  v16 = CGImageGetWidth(cGImage);
  v17 = CGImageGetHeight(cGImage);
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        CGAffineTransformMakeTranslation(&v37, v16, 0.0);
        v35 = v37;
        v18 = -1.0;
        v19 = 1.0;
      }

      else
      {
        CGAffineTransformMakeTranslation(&v37, 0.0, v17);
        v35 = v37;
        v18 = 1.0;
        v19 = -1.0;
      }

      CGAffineTransformScale(&transform, &v35, v18, v19);
      goto LABEL_25;
    }

    if (a3 != 6)
    {
      if (a3 != 7)
      {
LABEL_30:
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Invalid image orientation", v32, v33, v34}];
        goto LABEL_31;
      }

      CGAffineTransformMakeScale(&v37, -1.0, 1.0);
      goto LABEL_21;
    }

    CGAffineTransformMakeTranslation(&v37, v17, v16);
    v35 = v37;
    CGAffineTransformScale(&transform, &v35, -1.0, 1.0);
    v22 = *&transform.tx;
    v37 = transform;
    *&v35.a = *&transform.a;
    *&v35.c = *&transform.c;
LABEL_28:
    *&v35.tx = v22;
    v20 = 4.71238898;
    goto LABEL_29;
  }

  if (a3 > 1)
  {
    if (a3 != 2)
    {
      CGAffineTransformMakeTranslation(&v37, v17, 0.0);
LABEL_21:
      v35 = v37;
      v20 = 1.57079633;
LABEL_29:
      CGAffineTransformRotate(&transform, &v35, v20);
      v37 = transform;
      v21 = v13;
      v13 = v12;
      goto LABEL_32;
    }

    CGAffineTransformMakeTranslation(&v37, 0.0, v16);
    *&v35.a = *&v37.a;
    *&v35.c = *&v37.c;
    v22 = *&v37.tx;
    goto LABEL_28;
  }

  if (!a3)
  {
    *&v37.a = v34;
    *&v37.c = v33;
    v21 = v12;
    *&v37.tx = v32;
    goto LABEL_32;
  }

  if (a3 != 1)
  {
    goto LABEL_30;
  }

  CGAffineTransformMakeTranslation(&v37, v16, v17);
  v35 = v37;
  CGAffineTransformRotate(&transform, &v35, 3.14159265);
LABEL_25:
  v37 = transform;
LABEL_31:
  v21 = v12;
LABEL_32:
  v23 = v13;
  UIGraphicsBeginImageContext(*(&v21 - 1));
  CurrentContext = UIGraphicsGetCurrentContext();
  v25 = CurrentContext;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    CGContextScaleCTM(CurrentContext, -v15, v15);
    v26 = 0.0;
    v27 = v25;
    v28 = -v9;
  }

  else
  {
    CGContextScaleCTM(CurrentContext, v15, -v15);
    v28 = 0.0;
    v27 = v25;
    v26 = -v9;
  }

  CGContextTranslateCTM(v27, v28, v26);
  transform = v37;
  CGContextConcatCTM(v25, &transform);
  v29 = UIGraphicsGetCurrentContext();
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = Width;
  v38.size.height = v9;
  CGContextDrawImage(v29, v38, cGImage);
  v30 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return v30;
}

- (CGImageRef)newBorderMask:()OFUIImageExtensions size:
{
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v9 = CGBitmapContextCreate(0, self, a2, 8uLL, 0, DeviceGray, 0);
  CGContextSetFillColorWithColor(v9, [objc_msgSend(MEMORY[0x277D75348] "blackColor")]);
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = self;
  v13.size.height = a2;
  CGContextFillRect(v9, v13);
  CGContextSetFillColorWithColor(v9, [objc_msgSend(MEMORY[0x277D75348] "whiteColor")]);
  v14.origin.x = a5;
  v10 = (2 * a5);
  v14.size.width = self - v10;
  v14.size.height = a2 - v10;
  v14.origin.y = a5;
  CGContextFillRect(v9, v14);
  Image = CGBitmapContextCreateImage(v9);
  CGContextRelease(v9);
  CGColorSpaceRelease(DeviceGray);
  return Image;
}

- (uint64_t)imageWithTransparentInset:()OFUIImageExtensions
{
  [self size];
  v5 = v4 + a2 * 2.0;
  [self size];
  v7 = (v6 + a2 * 2.0);
  ColorSpace = CGImageGetColorSpace([self CGImage]);
  v9 = CGBitmapContextCreate(0, v5, v7, 8uLL, 0, ColorSpace, 2u);
  [self size];
  v11 = v10;
  [self size];
  v13 = v12;
  cGImage = [self CGImage];
  v18.origin.x = a2;
  v18.origin.y = a2;
  v18.size.width = v11;
  v18.size.height = v13;
  CGContextDrawImage(v9, v18, cGImage);
  Image = CGBitmapContextCreateImage(v9);
  v16 = [MEMORY[0x277D755B8] imageWithCGImage:Image];
  CGContextRelease(v9);
  CGImageRelease(Image);
  return v16;
}

+ (uint64_t)decompressedDeviceImageWithCGImage:()OFUIImageExtensions opaque:scale:orientation:
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v18.width = Width;
  v18.height = Height;
  UIGraphicsBeginImageContextWithOptions(v18, a5, a4);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(CurrentContext, 0.0, Height);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = Width;
  v19.size.height = Height;
  CGContextDrawImage(CurrentContext, v19, image);
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v14 = MEMORY[0x277D755B8];
  cGImage = [(UIImage *)ImageFromCurrentImageContext CGImage];

  return [v14 imageWithCGImage:cGImage scale:a6 orientation:a4];
}

- (uint64_t)decompressedDeviceImage:()OFUIImageExtensions
{
  Width = CGImageGetWidth([self CGImage]);
  Height = CGImageGetHeight([self CGImage]);
  [self scale];
  v8 = v7;
  v19.width = Width;
  v19.height = Height;
  UIGraphicsBeginImageContextWithOptions(v19, a3, v8);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(CurrentContext, 0.0, Height);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  cGImage = [self CGImage];
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = Width;
  v20.size.height = Height;
  CGContextDrawImage(CurrentContext, v20, cGImage);
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v12 = MEMORY[0x277D755B8];
  cGImage2 = [(UIImage *)ImageFromCurrentImageContext CGImage];
  [self scale];
  v15 = v14;
  imageOrientation = [self imageOrientation];

  return [v12 imageWithCGImage:cGImage2 scale:imageOrientation orientation:v15];
}

+ (uint64_t)animatedImageAtURL:()OFUIImageExtensions
{
  v3 = CGImageSourceCreateWithURL(url, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Count = CGImageSourceGetCount(v3);
  if (!Count)
  {
    CFRelease(v4);
    return 0;
  }

  v6 = Count;
  cf = CGImageSourceCopyProperties(v4, 0);
  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  v7 = 0;
  v8 = *MEMORY[0x277CBED28];
  v24 = *MEMORY[0x277CD3578];
  v9 = *MEMORY[0x277CD3570];
  v10 = *MEMORY[0x277CD3568];
  v11 = *MEMORY[0x277CD3660];
  v12 = 0.0;
  do
  {
    v13 = CGImageSourceCopyPropertiesAtIndex(v4, v7, 0);
    v14 = [-[__CFDictionary objectForKey:](v13 objectForKey:{@"PixelHeight", "unsignedIntegerValue"}];
    v15 = [-[__CFDictionary objectForKey:](v13 objectForKey:{@"PixelWidth", "unsignedIntegerValue"}];
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v4, v7, [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v8, v24, v8, v9, v8, v10, objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", v16), v11, 0}]);
    if (ThumbnailAtIndex)
    {
      v18 = ThumbnailAtIndex;
      [v23 addObject:{objc_msgSend(MEMORY[0x277D755B8], "imageWithCGImage:", ThumbnailAtIndex)}];
      [objc_msgSend(-[__CFDictionary objectForKey:](v13 objectForKey:{@"{GIF}", "objectForKey:", @"DelayTime", "floatValue"}];
      v12 = v12 + v19;
      CGImageRelease(v18);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    ++v7;
  }

  while (v6 != v7);
  CFRelease(v4);
  if (cf)
  {
    CFRelease(cf);
  }

  if (![v23 count])
  {
    return 0;
  }

  v20 = MEMORY[0x277D755B8];

  return [v20 animatedImageWithImages:v23 duration:v12];
}

- (uint64_t)applyBlurLightEffect
{
  v2 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];

  return [self applyBlurWithRadius:v2 tintColor:0 saturationDeltaFactor:30.0 maskImage:1.8];
}

- (uint64_t)applyBlurExtraLightEffect
{
  v2 = [MEMORY[0x277D75348] colorWithWhite:0.97 alpha:0.82];

  return [self applyBlurWithRadius:v2 tintColor:0 saturationDeltaFactor:20.0 maskImage:1.8];
}

- (uint64_t)applyBlurDarkEffect
{
  v2 = [MEMORY[0x277D75348] colorWithWhite:0.11 alpha:0.73];

  return [self applyBlurWithRadius:v2 tintColor:0 saturationDeltaFactor:20.0 maskImage:1.8];
}

- (uint64_t)applyBlurTintEffectWithColor:()OFUIImageExtensions
{
  v3 = a3;
  if (CGColorGetNumberOfComponents([a3 CGColor]) == 2)
  {
    v9 = 0.0;
    if ([v3 getWhite:&v9 alpha:0])
    {
      v5 = [MEMORY[0x277D75348] colorWithWhite:v9 alpha:0.6];
LABEL_6:
      v3 = v5;
    }
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
    v7 = 0.0;
    if ([v3 getRed:&v9 green:&v8 blue:&v7 alpha:0])
    {
      v5 = [MEMORY[0x277D75348] colorWithRed:v9 green:v8 blue:v7 alpha:0.6];
      goto LABEL_6;
    }
  }

  return [self applyBlurWithRadius:v3 tintColor:0 saturationDeltaFactor:10.0 maskImage:-1.0];
}

- (UIImage)applyBlurWithRadius:()OFUIImageExtensions tintColor:saturationDeltaFactor:maskImage:
{
  v61 = a3;
  v76 = *MEMORY[0x277D85DE8];
  [(UIImage *)self size];
  if (v10 < 1.0 || ([(UIImage *)self size], v11 < 1.0))
  {
    [(UIImage *)self size];
    v13 = v12;
    [(UIImage *)self size];
    NSLog(&cfstr_ErrorInvalidSi.isa, v13, v14, self);
    return 0;
  }

  if (![(UIImage *)self CGImage])
  {
    NSLog(&cfstr_ErrorImageMust.isa, self);
    return 0;
  }

  if (a6 && ![a6 CGImage])
  {
    NSLog(&cfstr_ErrorMaskimage.isa, a6);
    return 0;
  }

  v17 = *MEMORY[0x277CBF348];
  v18 = *(MEMORY[0x277CBF348] + 8);
  [(UIImage *)self size];
  v20 = v19;
  v22 = v21;
  v23 = fabs(v61.n128_f64[0] + -1.0);
  if (a2 > 0.00000011920929 || v23 > 0.00000011920929)
  {
    [(UIImage *)self size];
    v26 = v25;
    v28 = v27;
    [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
    v30 = v29;
    v77.width = v26;
    v77.height = v28;
    UIGraphicsBeginImageContextWithOptions(v77, 0, v30);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextScaleCTM(CurrentContext, 1.0, -1.0);
    [(UIImage *)self size];
    CGContextTranslateCTM(CurrentContext, 0.0, -v32);
    cGImage = [(UIImage *)self CGImage];
    v80.origin.x = v17;
    v80.origin.y = v18;
    v80.size.width = v20;
    v80.size.height = v22;
    CGContextDrawImage(CurrentContext, v80, cGImage);
    src.data = CGBitmapContextGetData(CurrentContext);
    src.width = CGBitmapContextGetWidth(CurrentContext);
    src.height = CGBitmapContextGetHeight(CurrentContext);
    src.rowBytes = CGBitmapContextGetBytesPerRow(CurrentContext);
    [(UIImage *)self size];
    v35 = v34;
    v37 = v36;
    [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
    v39 = v38;
    v78.width = v35;
    v78.height = v37;
    UIGraphicsBeginImageContextWithOptions(v78, 0, v39);
    v40 = UIGraphicsGetCurrentContext();
    dest.data = CGBitmapContextGetData(v40);
    dest.width = CGBitmapContextGetWidth(v40);
    dest.height = CGBitmapContextGetHeight(v40);
    dest.rowBytes = CGBitmapContextGetBytesPerRow(v40);
    if (a2 > 0.00000011920929)
    {
      [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
      v42 = vcvtmd_u64_f64(v41 * a2 * 3.0 * 2.50662827 * 0.25 + 0.5);
      vImageBoxConvolve_ARGB8888(&src, &dest, 0, 0, 0, v42 | 1, v42 | 1, 0, 8u);
      vImageBoxConvolve_ARGB8888(&dest, &src, 0, 0, 0, v42 | 1, v42 | 1, 0, 8u);
      vImageBoxConvolve_ARGB8888(&src, &dest, 0, 0, 0, v42 | 1, v42 | 1, 0, 8u);
    }

    if (v23 > 0.00000011920929)
    {
      v64 = v61.n128_f64[0] * 0.9278 + 0.0722;
      v65 = v61.n128_f64[0] * -0.0722 + 0.0722;
      v66 = v65;
      v68 = vmlaq_n_f64(vdupq_n_s64(0x3FE6E2EB1C432CA5uLL), xmmword_269E92BF0, v61.n128_f64[0]);
      v69 = v68.f64[0];
      v67 = 0;
      v70 = 0;
      v43 = vmlaq_n_f64(vdupq_n_s64(0x3FCB367A0F9096BCuLL), xmmword_269E92C00, v61.n128_f64[0]);
      v71 = v43.f64[0];
      v72 = v43;
      v73 = 0u;
      v74 = 0u;
      v75 = 0x3FF0000000000000;
      v44 = 0;
      v45 = &v64;
      v46 = vdupq_n_s64(0x4070000000000000uLL);
      do
      {
        v47 = *v45;
        v48 = *(v45 + 2);
        v45 += 4;
        *(&v60 + v44) = vmovn_s32(vcvtq_s32_f32(vrndaq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v47, v46)), vmulq_f64(v48, v46)))));
        v44 += 8;
      }

      while (v44 != 32);
      if (a2 > 0.00000011920929)
      {
        vImageMatrixMultiply_ARGB8888(&dest, &src, &v60, 256, 0, 0, 0);
        UIGraphicsEndImageContext();
        ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
LABEL_24:
        UIGraphicsEndImageContext();
        goto LABEL_25;
      }

      vImageMatrixMultiply_ARGB8888(&src, &dest, &v60, 256, 0, 0, 0);
    }

    ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    goto LABEL_24;
  }

  ImageFromCurrentImageContext = self;
LABEL_25:
  [(UIImage *)self size];
  v50 = v49;
  v52 = v51;
  [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
  v54 = v53;
  v79.width = v50;
  v79.height = v52;
  UIGraphicsBeginImageContextWithOptions(v79, 0, v54);
  v55 = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(v55, 1.0, -1.0);
  [(UIImage *)self size];
  CGContextTranslateCTM(v55, 0.0, -v56);
  cGImage2 = [(UIImage *)self CGImage];
  v81.origin.x = v17;
  v81.origin.y = v18;
  v81.size.width = v20;
  v81.size.height = v22;
  CGContextDrawImage(v55, v81, cGImage2);
  if (a2 > 0.00000011920929)
  {
    CGContextSaveGState(v55);
    if (a6)
    {
      cGImage3 = [a6 CGImage];
      v82.origin.x = v17;
      v82.origin.y = v18;
      v82.size.width = v20;
      v82.size.height = v22;
      CGContextClipToMask(v55, v82, cGImage3);
    }

    cGImage4 = [(UIImage *)ImageFromCurrentImageContext CGImage];
    v83.origin.x = v17;
    v83.origin.y = v18;
    v83.size.width = v20;
    v83.size.height = v22;
    CGContextDrawImage(v55, v83, cGImage4);
    CGContextRestoreGState(v55);
  }

  if (a5)
  {
    CGContextSaveGState(v55);
    CGContextSetFillColorWithColor(v55, [a5 CGColor]);
    v84.origin.x = v17;
    v84.origin.y = v18;
    v84.size.width = v20;
    v84.size.height = v22;
    CGContextFillRect(v55, v84);
    CGContextRestoreGState(v55);
  }

  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return v15;
}

@end