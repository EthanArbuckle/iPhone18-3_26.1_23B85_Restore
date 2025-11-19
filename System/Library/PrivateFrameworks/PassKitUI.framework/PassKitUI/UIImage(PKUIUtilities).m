@interface UIImage(PKUIUtilities)
+ (id)imageWithPKImage:()PKUIUtilities;
+ (id)pkui_imageWithColor:()PKUIUtilities;
+ (id)pkui_imageWithColor:()PKUIUtilities scale:;
- (double)pkui_alignmentSize;
- (float64x2_t)pkui_alignmentSizeThatFills:()PKUIUtilities maximumScale:;
- (float64x2_t)pkui_alignmentSizeThatFits:()PKUIUtilities maximumScale:;
- (id)pkui_firstPixelColor;
- (id)pkui_imageOverlaidWithColor:()PKUIUtilities;
- (id)pkui_imageWithAlpha:()PKUIUtilities;
- (uint64_t)pkui_resizableImageByTilingCenterPixel;
- (uint64_t)pkui_resizableImageByTilingHorizontally;
- (uint64_t)pkui_resizableImageByTilingVertically;
@end

@implementation UIImage(PKUIUtilities)

- (uint64_t)pkui_resizableImageByTilingHorizontally
{
  [a1 alignmentRectInsets];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [a1 scale];
  v11 = 1.0 / v10;
  [a1 size];
  v13 = v12 - (v3 + v7);
  v14 = floor((v13 - v11) * 0.5);
  v15 = v3 + v14;
  v16 = v7 + v13 - (v11 + v14);

  return [a1 resizableImageWithCapInsets:{v15, v5, v16, v9}];
}

+ (id)imageWithPKImage:()PKUIUtilities
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v5 = [v3 orientation] - 1;
  if (v5 >= 8)
  {
    v5 = 0;
  }

  v6 = _UIImageOrientationForPKImageOrientation___orientationMapping[v5];
  v7 = objc_alloc(MEMORY[0x1E69DCAB8]);
  v8 = [v4 imageRef];
  [v4 scale];
  v9 = [v7 initWithCGImage:v8 scale:v6 orientation:?];
  if ([v4 tiles])
  {
    [v4 capInsets];
    v10 = [v9 resizableImageWithCapInsets:?];
  }

  else
  {
    if (![v4 stretches])
    {
      goto LABEL_10;
    }

    [v4 capInsets];
    v10 = [v9 _stretchableImageWithCapInsets:?];
  }

  v11 = v10;

  v9 = v11;
LABEL_10:

  return v9;
}

+ (id)pkui_imageWithColor:()PKUIUtilities
{
  v4 = qword_1EBD6ABF8;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  v6 = [a1 pkui_imageWithColor:v5 scale:*&qword_1EBD6ABF0];

  return v6;
}

+ (id)pkui_imageWithColor:()PKUIUtilities scale:
{
  v5 = a4;
  if (!v5)
  {
    v5 = [MEMORY[0x1E69DC888] clearColor];
  }

  if (a1 <= 0.0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 1.0 / a1;
  }

  v7 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  v9 = objc_alloc(MEMORY[0x1E69DCA78]);
  v10 = [MEMORY[0x1E69DCA80] preferredFormat];
  v11 = [v9 initWithBounds:v10 format:{v7, v8, v6, v6}];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__UIImage_PKUIUtilities__pkui_imageWithColor_scale___block_invoke;
  v16[3] = &unk_1E8014C20;
  v17 = v5;
  v18 = v7;
  v19 = v8;
  v20 = v6;
  v21 = v6;
  v12 = v5;
  v13 = [v11 imageWithActions:v16];
  v14 = [v13 pkui_resizableImageByTilingCenterPixel];

  return v14;
}

- (uint64_t)pkui_resizableImageByTilingCenterPixel
{
  [a1 alignmentRectInsets];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [a1 scale];
  v11 = 1.0 / v10;
  [a1 size];
  v13 = v12 - (v5 + v9);
  v15 = v14 - (v3 + v7);
  v16 = floor((v13 - v11) * 0.5);
  v17 = floor((v15 - v11) * 0.5);
  v18 = v7 + v15 - (v11 + v17);
  v19 = v9 + v13 - (v11 + v16);

  return [a1 resizableImageWithCapInsets:{v3 + v17, v5 + v16, v18, v19}];
}

- (uint64_t)pkui_resizableImageByTilingVertically
{
  [a1 alignmentRectInsets];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [a1 scale];
  v11 = 1.0 / v10;
  [a1 size];
  v13 = v12 - (v5 + v9);
  v14 = floor((v13 - v11) * 0.5);

  return [a1 resizableImageWithCapInsets:{v3, v5 + v14, v7, v9 + v13 - (v11 + v14)}];
}

- (id)pkui_imageOverlaidWithColor:()PKUIUtilities
{
  v4 = a3;
  [a1 size];
  v6 = v5;
  [a1 size];
  v8 = v7;
  [a1 scale];
  v10 = v9;
  v15.width = v6;
  v15.height = v8;
  UIGraphicsBeginImageContextWithOptions(v15, 0, v10);
  CurrentContext = UIGraphicsGetCurrentContext();
  [a1 drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  CGContextSetBlendMode(CurrentContext, kCGBlendModeSourceAtop);
  [v4 setFill];

  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = v6;
  v16.size.height = v8;
  CGContextFillRect(CurrentContext, v16);
  v12 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v12;
}

- (id)pkui_imageWithAlpha:()PKUIUtilities
{
  [a1 size];
  v5 = v4;
  v7 = v6;
  v8 = objc_alloc(MEMORY[0x1E69DCA78]);
  v9 = [a1 imageRendererFormat];
  v10 = [v8 initWithSize:v9 format:{v5, v7}];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__UIImage_PKUIUtilities__pkui_imageWithAlpha___block_invoke;
  v15[3] = &unk_1E8014C48;
  v15[4] = a1;
  *&v15[5] = a2;
  v11 = [v10 imageWithActions:v15];
  [a1 alignmentRectInsets];
  v12 = [v11 imageWithAlignmentRectInsets:?];
  v13 = [v12 imageWithRenderingMode:{objc_msgSend(a1, "renderingMode")}];

  return v13;
}

- (double)pkui_alignmentSize
{
  [a1 size];
  v3 = v2;
  [a1 alignmentRectInsets];
  return v3 - (v4 + v5);
}

- (float64x2_t)pkui_alignmentSizeThatFits:()PKUIUtilities maximumScale:
{
  [a1 alignmentRectInsets];
  v20 = v7;
  v21 = v6;
  v22 = v9;
  v23 = v8;
  [a1 size];
  v11 = v10 - (v20 + v22);
  v13 = v12 - (v21 + v23);
  PKSizeScaleAspectFit();
  v16 = fmin(v14 / v11, v15 / v13);
  if (v16 > a3)
  {
    v16 = 1.0;
    v14 = v11 * a3;
    v15 = v13 * a3;
    if (a3 == 1.0)
    {
      v14 = v11;
      v15 = v13;
    }

    else
    {
      v16 = a3;
    }
  }

  a2->f64[0] = v14;
  a2->f64[1] = v15;
  v17.f64[0] = v21;
  v17.f64[1] = v20;
  v18.f64[0] = v23;
  v18.f64[1] = v22;
  result = vmulq_n_f64(vnegq_f64(v17), v16);
  a2[1] = result;
  a2[2] = vmulq_n_f64(vnegq_f64(v18), v16);
  a2[3].f64[0] = v16;
  return result;
}

- (float64x2_t)pkui_alignmentSizeThatFills:()PKUIUtilities maximumScale:
{
  [a1 alignmentRectInsets];
  v20 = v7;
  v21 = v6;
  v22 = v9;
  v23 = v8;
  [a1 size];
  v11 = v10 - (v20 + v22);
  v13 = v12 - (v21 + v23);
  PKSizeAspectFill();
  v16 = fmin(v14 / v11, v15 / v13);
  if (v16 > a3)
  {
    v16 = 1.0;
    v14 = v11 * a3;
    v15 = v13 * a3;
    if (a3 == 1.0)
    {
      v14 = v11;
      v15 = v13;
    }

    else
    {
      v16 = a3;
    }
  }

  a2->f64[0] = v14;
  a2->f64[1] = v15;
  v17.f64[0] = v21;
  v17.f64[1] = v20;
  v18.f64[0] = v23;
  v18.f64[1] = v22;
  result = vmulq_n_f64(vnegq_f64(v17), v16);
  a2[1] = result;
  a2[2] = vmulq_n_f64(vnegq_f64(v18), v16);
  a2[3].f64[0] = v16;
  return result;
}

- (id)pkui_firstPixelColor
{
  v1 = [a1 CGImage];
  Width = CGImageGetWidth(v1);
  Height = CGImageGetHeight(v1);
  data = 0;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v5 = CGBitmapContextCreate(&data, 1uLL, 1uLL, 8uLL, 4uLL, DeviceRGB, 0x4001u);
  CGColorSpaceRelease(DeviceRGB);
  CGContextSetBlendMode(v5, kCGBlendModeCopy);
  v14.size.width = Width;
  v14.size.height = Height;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  CGContextDrawImage(v5, v14, v1);
  CGContextRelease(v5);
  LOBYTE(v7) = BYTE1(data);
  LOBYTE(v6) = data;
  LOBYTE(v9) = HIBYTE(data);
  LOBYTE(v8) = BYTE2(data);
  v10 = [MEMORY[0x1E69DC888] colorWithRed:v6 / 255.0 green:v7 / 255.0 blue:v8 / 255.0 alpha:v9 / 255.0];

  return v10;
}

@end