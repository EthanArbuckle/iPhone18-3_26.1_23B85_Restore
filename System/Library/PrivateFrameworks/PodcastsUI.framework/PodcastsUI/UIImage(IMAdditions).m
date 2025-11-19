@interface UIImage(IMAdditions)
+ (CGContext)makeDottedLineImageinRect:()IMAdditions;
+ (id)colorSliceImageWithColor:()IMAdditions height:;
+ (id)image:()IMAdditions inRect:withBacking:;
+ (id)image:()IMAdditions inRect:withBacking:opaque:scale:;
+ (id)imageWithSolidColor:()IMAdditions atSize:;
+ (id)roundedCornerRectangleWithColor:()IMAdditions;
+ (id)roundedCornerRectangleWithColorNoTemplate:()IMAdditions;
+ (id)scaledImageWithData:()IMAdditions;
+ (id)uncachedImageNamed:()IMAdditions;
- (id)im_flatImageWithColor:()IMAdditions;
- (id)im_imageWithBackgroundColor:()IMAdditions;
- (id)imageByRemovingPath:()IMAdditions;
- (id)imageMaskWithColor:()IMAdditions;
- (id)imageWithComposite:()IMAdditions blendMode:;
- (id)imageWithComposite:()IMAdditions blendMode:dstRect:;
- (id)imageWithCropRect:()IMAdditions;
- (id)imageWithGradientAngle:()IMAdditions startColor:endColor:;
- (id)imageWithSize:()IMAdditions resizeOptions:;
- (id)imageWithTint:()IMAdditions;
- (id)imageWithWidth:()IMAdditions leftCapWidth:rightCapWidth:;
- (id)mirroredImage;
- (id)squareImage;
- (id)stretchableMirroredImage;
- (uint64_t)colorAtPixelX:()IMAdditions y:;
- (void)debugShowInKeyWindow;
- (void)dumpAsPNGToCachesNamed:()IMAdditions;
@end

@implementation UIImage(IMAdditions)

- (id)imageWithSize:()IMAdditions resizeOptions:
{
  if (a5)
  {
    [a1 size];
    v10 = v9;
    [a1 size];
    v12 = a2 / a3 - v10 / v11;
    if (v12 < 0.0)
    {
      v12 = -v12;
    }

    if (v12 > 0.00000011920929)
    {
      [a1 size];
      v14 = a2 / v13;
      [a1 size];
      v16 = a3 / v15;
      if (a5 == 1)
      {
        if (v14 >= v16)
        {
          v17 = a3 / v15;
        }

        else
        {
          v17 = v14;
        }
      }

      else
      {
        v17 = 1.0;
        if (a5 == 2)
        {
          if (v14 >= v16)
          {
            v17 = v14;
          }

          else
          {
            v17 = v16;
          }
        }
      }

      [a1 size];
      a2 = v17 * v18;
      [a1 size];
      a3 = v17 * v19;
    }
  }

  if (IMAdjustToScale_onceToken != -1)
  {
    [UIImage(IMAdditions) imageWithSize:resizeOptions:];
  }

  v20 = ceil(a2 * *&IMAdjustToScale___s) / *&IMAdjustToScale___s;
  v21 = ceil(a2);
  if (*&IMAdjustToScale___s == 1.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  v23 = ceil(a3 * *&IMAdjustToScale___s) / *&IMAdjustToScale___s;
  v24 = ceil(a3);
  if (*&IMAdjustToScale___s == 1.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  [a1 size];
  if (v22 <= v26 && ([a1 size], v25 <= v27))
  {
    v46.origin.x = 0.0;
    v46.origin.y = 0.0;
    v46.size.width = v22;
    v46.size.height = v25;
    v47 = CGRectIntegral(v46);
    x = v47.origin.x;
    y = v47.origin.y;
    width = v47.size.width;
    height = v47.size.height;
    v36 = [a1 CGImage];
    v45.width = v22;
    v45.height = v25;
    UIGraphicsBeginImageContextWithOptions(v45, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(CurrentContext, 0.0, v25);
    CGContextScaleCTM(CurrentContext, 1.0, -1.0);
    CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationHigh);
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    CGContextDrawImage(CurrentContext, v48, v36);
    Image = CGBitmapContextCreateImage(CurrentContext);
    v39 = MEMORY[0x277D755B8];
    [a1 scale];
    v31 = [v39 imageWithCGImage:Image scale:objc_msgSend(a1 orientation:{"imageOrientation"), v40}];
    UIGraphicsEndImageContext();
    CGImageRelease(Image);
  }

  else
  {
    v28 = [MEMORY[0x277D3DA90] sharedLogger];
    [a1 size];
    v29 = NSStringFromCGSize(v43);
    v44.width = v22;
    v44.height = v25;
    v30 = NSStringFromCGSize(v44);
    [v28 logFile:"/Library/Caches/com.apple.xbs/Sources/PodcastsUI/PodcastsUI/PodcastsUI/Extensions/UIKit/UIImage+IMAdditions.m" lineNumber:58 format:{@"Ignoring attempt to upscale image (from %@ to %@)", v29, v30}];

    v31 = a1;
  }

  return v31;
}

- (id)imageWithWidth:()IMAdditions leftCapWidth:rightCapWidth:
{
  if (a5 | a4)
  {
    v9 = a2 - (a5 + a4);
    if (v9 >= 0.0)
    {
      [a1 size];
      v13 = v12;
      v14 = v11;
      v15 = a4;
      v16 = a5;
      if (v12 >= a2)
      {
        v22 = v9 + v15;
        v17 = [a1 imageWithCropRect:{0.0, 0.0, v22, v11}];
        v18 = [a1 imageWithCropRect:{v13 - v16, 0.0, v16, v14}];
        [a1 scale];
        v24 = v23;
        v28.width = a2;
        v28.height = v14;
        IMGraphicsBeginImageContextWithOptions(v28, 0, v24);
        [v17 drawAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
        [v18 drawAtPoint:{v22, 0.0}];
        v10 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
      }

      else
      {
        v17 = [a1 imageWithCropRect:{0.0, 0.0, a4, v11}];
        v18 = [a1 imageWithCropRect:{a4, 0.0, v13 - v15 - v16, v14}];
        v19 = [a1 imageWithCropRect:{v13 - v16, 0.0, v16, v14}];
        [a1 scale];
        v21 = v20;
        v27.width = a2;
        v27.height = v14;
        IMGraphicsBeginImageContextWithOptions(v27, 0, v21);
        [v17 drawAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
        [v18 drawAsPatternInRect:{v15, 0.0, v9, v14}];
        [v19 drawAtPoint:{a2 - v16, 0.0}];
        v10 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = a1;
  }

  return v10;
}

- (id)imageWithCropRect:()IMAdditions
{
  v5 = 0;
  if (a4 != 0.0)
  {
    v6 = a5;
    if (a5 != 0.0)
    {
      v7 = a4;
      [a1 scale];
      v12 = v11;
      v13 = v11 == 1.0;
      v14 = a2 * v11;
      if (v12 != 1.0)
      {
        a2 = v14;
      }

      if (!v13)
      {
        a3 = a3 * v12;
        v7 = v7 * v12;
        v6 = v6 * v12;
      }

      v15 = [a1 CGImage];
      v19.origin.x = a2;
      v19.origin.y = a3;
      v19.size.width = v7;
      v19.size.height = v6;
      v16 = CGImageCreateWithImageInRect(v15, v19);
      v5 = [MEMORY[0x277D755B8] imageWithCGImage:v16 scale:objc_msgSend(a1 orientation:{"imageOrientation"), v12}];
      CGImageRelease(v16);
    }
  }

  return v5;
}

- (id)squareImage
{
  [a1 size];
  if (v2 == v3)
  {
    v13 = a1;
  }

  else
  {
    v4 = v2;
    v5 = v3;
    if (v2 >= v3)
    {
      v6 = v2;
    }

    else
    {
      v6 = v3;
    }

    v7 = [a1 colorAtPixelX:(v2 + -1.0) y:0];
    v8 = [MEMORY[0x277D75348] colorWithRed:(BYTE2(v7) / 255.0) green:(BYTE1(v7) / 255.0) blue:(v7 / 255.0) alpha:(HIBYTE(v7) / 255.0)];
    v9 = *MEMORY[0x277CBF348];
    v10 = *(MEMORY[0x277CBF348] + 8);
    [a1 scale];
    v12 = v11;
    v16.width = v6;
    v16.height = v6;
    UIGraphicsBeginImageContextWithOptions(v16, 1, v12);
    [v8 set];
    v17.origin.x = v9;
    v17.origin.y = v10;
    v17.size.width = v6;
    v17.size.height = v6;
    UIRectFill(v17);
    [a1 drawInRect:0 blendMode:CGRectCenterRectInRect(v9 alpha:{v10, v4, v5, v9, v10, v6, v6)}];
    v13 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v13;
}

- (id)imageWithTint:()IMAdditions
{
  v4 = a3;
  [a1 size];
  v6 = v5;
  [a1 size];
  v8 = v7;
  [a1 size];
  v10 = v9;
  v12 = v11;
  [a1 scale];
  v14 = v13;
  v18.width = v10;
  v18.height = v12;
  UIGraphicsBeginImageContextWithOptions(v18, 0, v14);
  [v4 set];

  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v6;
  v19.size.height = v8;
  UIRectFill(v19);
  [a1 drawInRect:22 blendMode:0.0 alpha:{0.0, v6, v8, 1.0}];
  [a1 drawInRect:1 blendMode:0.0 alpha:{0.0, v6, v8, 1.0}];
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

- (id)imageMaskWithColor:()IMAdditions
{
  v4 = a3;
  [a1 size];
  v6 = v5;
  [a1 size];
  v8 = v7;
  [a1 size];
  v10 = v9;
  v12 = v11;
  [a1 scale];
  v14 = v13;
  v22.width = v10;
  v22.height = v12;
  UIGraphicsBeginImageContextWithOptions(v22, 0, v14);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  [a1 size];
  CGContextTranslateCTM(CurrentContext, 0.0, -v16);
  CGContextSaveGState(CurrentContext);
  v17 = [a1 CGImage];
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = v6;
  v23.size.height = v8;
  CGContextClipToMask(CurrentContext, v23, v17);
  CGContextSetBlendMode(CurrentContext, kCGBlendModeMultiply);
  v18 = [v4 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v18);
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v6;
  v24.size.height = v8;
  CGContextFillRect(CurrentContext, v24);
  CGContextRestoreGState(CurrentContext);
  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

+ (id)image:()IMAdditions inRect:withBacking:
{
  v13 = a8;
  v14 = a7;
  v31.width = a3;
  v31.height = a4;
  UIGraphicsBeginImageContextWithOptions(v31, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextTranslateCTM(CurrentContext, 0.0, -a4);
  CGContextSaveGState(CurrentContext);
  v16 = [v13 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v16);
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = a3;
  v32.size.height = a4;
  CGContextFillRect(CurrentContext, v32);
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  MidX = CGRectGetMidX(v33);
  [v14 size];
  v19 = round(MidX - v18 * 0.5);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  MidY = CGRectGetMidY(v34);
  [v14 size];
  v22 = round(MidY - v21 * 0.5);
  [v14 size];
  v24 = v23;
  v26 = v25;
  v27 = [v14 CGImage];

  v35.origin.x = v19;
  v35.origin.y = v22;
  v35.size.width = v24;
  v35.size.height = v26;
  CGContextDrawImage(CurrentContext, v35, v27);
  CGContextRestoreGState(CurrentContext);
  v28 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v28;
}

+ (id)image:()IMAdditions inRect:withBacking:opaque:scale:
{
  v17 = a9;
  v18 = a8;
  v35.width = a3;
  v35.height = a4;
  UIGraphicsBeginImageContextWithOptions(v35, a10, a5);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextTranslateCTM(CurrentContext, 0.0, -a4);
  CGContextSaveGState(CurrentContext);
  v20 = [v17 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v20);
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = a3;
  v36.size.height = a4;
  CGContextFillRect(CurrentContext, v36);
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  MidX = CGRectGetMidX(v37);
  [v18 size];
  v23 = round(MidX - v22 * 0.5);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  MidY = CGRectGetMidY(v38);
  [v18 size];
  v26 = round(MidY - v25 * 0.5);
  [v18 size];
  v28 = v27;
  v30 = v29;
  v31 = [v18 CGImage];

  v39.origin.x = v23;
  v39.origin.y = v26;
  v39.size.width = v28;
  v39.size.height = v30;
  CGContextDrawImage(CurrentContext, v39, v31);
  CGContextRestoreGState(CurrentContext);
  v32 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v32;
}

+ (id)imageWithSolidColor:()IMAdditions atSize:
{
  v7 = a5;
  v13.width = a1;
  v13.height = a2;
  UIGraphicsBeginImageContext(v13);
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = [v7 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v9);
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = a1;
  v14.size.height = a2;
  CGContextFillRect(CurrentContext, v14);
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

- (id)imageWithGradientAngle:()IMAdditions startColor:endColor:
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  [a1 size];
  v11 = v10;
  [a1 size];
  v13 = v12;
  [a1 size];
  UIGraphicsBeginImageContext(v48);
  CurrentContext = UIGraphicsGetCurrentContext();
  v15 = 1.0;
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  [a1 size];
  CGContextTranslateCTM(CurrentContext, 0.0, -v16);
  CGRectEdgePointAtAngle(0.0, 0.0, v11, v13, a2);
  v18 = v17;
  v20 = v19;
  CGRectEdgePointAtAngle(0.0, 0.0, v11, v13, a2 + 3.14159265);
  v22 = v21;
  v24 = v23;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v26 = CGColorGetComponents([v9 CGColor]);
  v27 = [v9 CGColor];

  NumberOfComponents = CGColorGetNumberOfComponents(v27);
  *components = *v26;
  v40 = *(v26 + 2);
  v29 = 1.0;
  if (NumberOfComponents == 4)
  {
    v29 = v26[3];
  }

  v41 = v29;
  v30 = CGColorGetComponents([v8 CGColor]);
  v31 = [v8 CGColor];

  v32 = CGColorGetNumberOfComponents(v31);
  v42 = *v30;
  v43 = *(v30 + 1);
  v44 = *(v30 + 2);
  if (v32 == 4)
  {
    v15 = v26[3];
  }

  v45 = v15;
  v38 = xmmword_21B4D1A50;
  v33 = CGGradientCreateWithColorComponents(DeviceRGB, components, &v38, 2uLL);
  CGContextSaveGState(CurrentContext);
  v34 = [a1 CGImage];
  v51.origin.x = 0.0;
  v51.origin.y = 0.0;
  v51.size.width = v11;
  v51.size.height = v13;
  CGContextClipToMask(CurrentContext, v51, v34);
  v35 = [a1 CGImage];
  v52.origin.x = 0.0;
  v52.origin.y = 0.0;
  v52.size.width = v11;
  v52.size.height = v13;
  CGContextDrawImage(CurrentContext, v52, v35);
  CGContextSetBlendMode(CurrentContext, kCGBlendModeMultiply);
  v49.x = v18;
  v49.y = v20;
  v50.x = v22;
  v50.y = v24;
  CGContextDrawLinearGradient(CurrentContext, v33, v49, v50, 3u);
  CGContextRestoreGState(CurrentContext);
  CGGradientRelease(v33);
  CGColorSpaceRelease(DeviceRGB);
  v36 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v36;
}

- (id)im_imageWithBackgroundColor:()IMAdditions
{
  v4 = a3;
  [a1 size];
  v6 = v5;
  v8 = v7;
  [a1 scale];
  v10 = v9;
  v19.width = v6;
  v19.height = v8;
  UIGraphicsBeginImageContextWithOptions(v19, 1, v10);
  [v4 set];

  v11 = [a1 size];
  v12 = *MEMORY[0x277CBF348];
  v13 = *(MEMORY[0x277CBF348] + 8);
  v20.origin.x = CGRectMakeWithOriginSize(v11, *MEMORY[0x277CBF348], v13, v14, v15);
  UIRectFill(v20);
  [a1 drawAtPoint:{v12, v13}];
  v16 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v16;
}

- (id)imageWithComposite:()IMAdditions blendMode:
{
  v6 = a3;
  [a1 size];
  v8 = v7;
  [a1 size];
  v10 = [a1 imageWithComposite:v6 blendMode:a4 dstRect:{0.0, 0.0, v8, v9}];

  return v10;
}

- (id)imageWithComposite:()IMAdditions blendMode:dstRect:
{
  v14 = a7;
  [a1 size];
  v16 = v15;
  [a1 size];
  v18 = v17;
  [a1 size];
  UIGraphicsBeginImageContextWithOptions(v28, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  [a1 size];
  CGContextTranslateCTM(CurrentContext, 0.0, -v20);
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = v16;
  v29.size.height = v18;
  Height = CGRectGetHeight(v29);
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  v22 = Height - CGRectGetMaxY(v30);
  CGContextSaveGState(CurrentContext);
  CGContextSetBlendMode(CurrentContext, kCGBlendModeNormal);
  v23 = [a1 CGImage];
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = v16;
  v31.size.height = v18;
  CGContextDrawImage(CurrentContext, v31, v23);
  CGContextSetBlendMode(CurrentContext, a8);
  v24 = [v14 CGImage];

  v32.origin.x = a2;
  v32.origin.y = v22;
  v32.size.width = a4;
  v32.size.height = a5;
  CGContextDrawImage(CurrentContext, v32, v24);
  CGContextRestoreGState(CurrentContext);
  v25 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v25;
}

- (id)imageByRemovingPath:()IMAdditions
{
  v4 = a3;
  v5 = [a1 CGImage];
  Width = CGImageGetWidth(v5);
  Height = CGImageGetHeight(v5);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = CGBitmapContextCreate(0, Width, Height, 8uLL, vcvtd_n_u64_f64(Width, 2uLL), DeviceRGB, 0x2002u);
  if (v9)
  {
    v10 = v9;
    CGContextSaveGState(v9);
    v18.origin.x = 0.0;
    v18.origin.y = 0.0;
    v18.size.width = Width;
    v18.size.height = Height;
    CGContextDrawImage(v10, v18, v5);
    [a1 scale];
    v12 = v11;
    CGContextScaleCTM(v10, 1.0, -1.0);
    CGContextTranslateCTM(v10, 0.0, -Height);
    CGAffineTransformMakeScale(&v16, v12, v12);
    [v4 applyTransform:&v16];
    CGContextAddPath(v10, [v4 CGPath]);
    CGContextSetBlendMode(v10, kCGBlendModeClear);
    CGContextFillPath(v10);
    CGContextRestoreGState(v10);
    Image = CGBitmapContextCreateImage(v10);
    CGContextRelease(v10);
    v14 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:Image scale:objc_msgSend(a1 orientation:{"imageOrientation"), v12}];
    CGImageRelease(Image);
  }

  else
  {
    v14 = 0;
  }

  CGColorSpaceRelease(DeviceRGB);

  return v14;
}

- (id)stretchableMirroredImage
{
  v2 = [a1 mirroredImage];
  [a1 size];
  v4 = [v2 stretchableImageWithLeftCapWidth:v3 topCapHeight:0];

  return v4;
}

- (id)mirroredImage
{
  [a1 size];
  v3 = v2;
  height = v10.height;
  v10.width = v2 + v2;
  width = v10.width;
  IMGraphicsBeginImageContextWithOptions(v10, 0, 0.0);
  [a1 drawInRect:{0.0, 0.0, v3, height}];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(CurrentContext, -1.0, 1.0);
  [a1 drawInRect:{-width, 0.0, v3, height}];
  v7 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v7;
}

- (uint64_t)colorAtPixelX:()IMAdditions y:
{
  [a1 scale];
  v8 = v7;
  v9 = [a1 CGImage];
  v16.origin.x = v8 * a3;
  v16.origin.y = v8 * a4;
  v16.size.width = 1.0;
  v16.size.height = 1.0;
  v10 = CGImageCreateWithImageInRect(v9, v16);
  if (!v10)
  {
    return -1;
  }

  v11 = v10;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v13 = CGBitmapContextCreate(&data, 1uLL, 1uLL, 8uLL, 4uLL, DeviceRGB, 0x4002u);
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = 1.0;
  v17.size.height = 1.0;
  CGContextDrawImage(v13, v17, v11);
  CGColorSpaceRelease(DeviceRGB);
  CGContextRelease(v13);
  CGImageRelease(v11);
  return bswap32(data);
}

- (void)debugShowInKeyWindow
{
  v3 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:a1];
  NSLog(&cfstr_ImageviewCallV.isa, v3, v3);
  v1 = [MEMORY[0x277D75128] sharedApplication];
  v2 = [v1 keyWindow];

  [v2 center];
  [v3 setCenter:?];
  [v2 addSubview:v3];
}

- (void)dumpAsPNGToCachesNamed:()IMAdditions
{
  v10 = a3;
  v4 = [v10 lowercaseString];
  v5 = [v4 hasSuffix:@"png"];

  if ((v5 & 1) == 0)
  {
    v6 = [v10 stringByAppendingPathExtension:@"png"];

    v10 = v6;
  }

  v7 = [MEMORY[0x277D75128] applicationCacheDirectory];
  v8 = [v7 stringByAppendingPathComponent:v10];

  v9 = UIImagePNGRepresentation(a1);
  [v9 writeToFile:v8 atomically:0];
}

+ (id)uncachedImageNamed:()IMAdditions
{
  v3 = a3;
  v4 = [v3 stringByDeletingPathExtension];
  v5 = [v3 pathExtension];

  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  if ([(__CFString *)v5 length])
  {
    v7 = v5;
  }

  else
  {
    v7 = @"png";
  }

  v8 = [v6 pathForResource:v4 ofType:v7];

  v9 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:v8];

  return v9;
}

+ (CGContext)makeDottedLineImageinRect:()IMAdditions
{
  v15 = *MEMORY[0x277D85DE8];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = CGBitmapContextCreate(0, a3, a4, 8uLL, 0, DeviceRGB, 2u);
  CGColorSpaceRelease(DeviceRGB);
  if (v9)
  {
    UIGraphicsPushContext(v9);
    CGContextSaveGState(v9);
    CGContextSetLineWidth(v9, 1.0);
    v10 = [MEMORY[0x277D75348] grayColor];
    CGContextSetStrokeColorWithColor(v9, [v10 CGColor]);

    v14 = xmmword_21B4D1A60;
    CGContextSetLineDash(v9, 1.0, &v14, 2uLL);
    CGContextMoveToPoint(v9, a1, a2);
    CGContextAddLineToPoint(v9, a3, a4);
    CGContextStrokePath(v9);
    CGContextRestoreGState(v9);
    UIGraphicsPopContext();
    Image = CGBitmapContextCreateImage(v9);
    CGContextRelease(v9);
    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    v12 = CGImageCreateWithImageInRect(Image, v17);
    CGImageRelease(Image);
    v9 = [MEMORY[0x277D755B8] imageWithCGImage:v12];
    CGImageRelease(v12);
  }

  return v9;
}

- (id)im_flatImageWithColor:()IMAdditions
{
  v4 = a3;
  [a1 size];
  v6 = v5;
  v8 = v7;
  [a1 scale];
  v10 = v9;
  v14.width = v6;
  v14.height = v8;
  UIGraphicsBeginImageContextWithOptions(v14, 0, v10);
  if (UIGraphicsGetCurrentContext())
  {
    [v4 set];
    v15.origin.x = 0.0;
    v15.origin.y = 0.0;
    v15.size.width = v6;
    v15.size.height = v8;
    UIRectFill(v15);
    [a1 drawAtPoint:22 blendMode:*MEMORY[0x277CBF348] alpha:{*(MEMORY[0x277CBF348] + 8), 1.0}];
    v11 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    NSLog(&cfstr_Flatimagewithc.isa);
    v11 = 0;
  }

  return v11;
}

+ (id)scaledImageWithData:()IMAdditions
{
  v0 = [MEMORY[0x277D755B8] imageWithData:?];
  v1 = [MEMORY[0x277D759A0] mainScreen];
  if (objc_opt_respondsToSelector())
  {
    [v1 scale];
    if (v2 > 1.0)
    {
      v3 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(v0 scale:"CGImage") orientation:{objc_msgSend(v0, "imageOrientation"), v2}];

      v0 = v3;
    }
  }

  return v0;
}

+ (id)colorSliceImageWithColor:()IMAdditions height:
{
  v5 = MEMORY[0x277D759A0];
  v6 = a4;
  v7 = [v5 mainScreen];
  [v7 scale];
  v9 = v8;
  v13.width = 1.0;
  v13.height = a1;
  UIGraphicsBeginImageContextWithOptions(v13, 0, v9);

  [v6 setFill];
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = 1.0;
  v14.size.height = a1;
  UIRectFillUsingBlendMode(v14, kCGBlendModeNormal);
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

+ (id)roundedCornerRectangleWithColor:()IMAdditions
{
  v3 = a3;
  v10.width = 11.0;
  v10.height = 11.0;
  UIGraphicsBeginImageContextWithOptions(v10, 0, 0.0);
  [v3 set];

  v4 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, 11.0, 11.0, 3.0}];
  [v4 fill];
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v6 = [v5 resizableImageWithCapInsets:{5.0, 5.0, 5.0, 5.0}];

  v7 = [v6 imageWithRenderingMode:2];

  return v7;
}

+ (id)roundedCornerRectangleWithColorNoTemplate:()IMAdditions
{
  v3 = a3;
  v9.width = 11.0;
  v9.height = 11.0;
  UIGraphicsBeginImageContextWithOptions(v9, 0, 0.0);
  [v3 set];

  v4 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, 11.0, 11.0, 3.0}];
  [v4 fill];
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v6 = [v5 resizableImageWithCapInsets:{5.0, 5.0, 5.0, 5.0}];

  return v6;
}

@end