@interface UIImage(SBFImageSizing)
- (id)sbf_cropImageWithRect:()SBFImageSizing outputSize:preservingAspectRatio:canUseIOSurface:;
- (id)sbf_resizeImageToSize:()SBFImageSizing;
- (id)sbf_resizeImageToSize:()SBFImageSizing preservingAspectRatio:;
- (id)sbf_scaleImage:()SBFImageSizing canUseIOSurface:;
@end

@implementation UIImage(SBFImageSizing)

- (id)sbf_cropImageWithRect:()SBFImageSizing outputSize:preservingAspectRatio:canUseIOSurface:
{
  v17 = *MEMORY[0x1E695EFF8];
  v18 = *(MEMORY[0x1E695EFF8] + 8);
  [a1 size];
  v51.size.width = v19;
  v51.size.height = v20;
  v46.origin.x = a2;
  v46.origin.y = a3;
  v46.size.width = a4;
  v46.size.height = a5;
  v51.origin.x = v17;
  v51.origin.y = v18;
  v21 = CGRectEqualToRect(v46, v51);
  v22 = a5 == a7 && a4 == a6;
  v47.origin.x = a2;
  v47.origin.y = a3;
  v47.size.width = a4;
  v47.size.height = a5;
  if (CGRectIsEmpty(v47) || v21 && v22 || (BSFloatLessThanOrEqualToFloat() & 1) != 0 || BSFloatLessThanOrEqualToFloat())
  {
    v23 = a1;
    goto LABEL_9;
  }

  [a1 scale];
  v26 = v25;
  memset(&v44, 0, sizeof(v44));
  CGAffineTransformMakeScale(&v44, v25, v25);
  v43 = v44;
  v48.origin.x = a2;
  v48.origin.y = a3;
  v48.size.width = a4;
  v48.size.height = a5;
  v49 = CGRectApplyAffineTransform(v48, &v43);
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;
  if (!a10)
  {
    goto LABEL_22;
  }

  v43.a = 0.0;
  v31 = SBFCreateIOSurfaceForImage(a1, &v43, 1);
  v32 = v31;
  if (v31)
  {
    v33 = __SBFCreateCroppedIOSurface(v31, x, y, width, height);
    if (v33)
    {
      v23 = [MEMORY[0x1E69DCAB8] sbf_imageWithIOSurface:v33 scale:0 orientation:v26];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  if (*&v43.a)
  {
    CGImageBlockSetRelease();
  }

  if (!v23)
  {
LABEL_22:
    v34 = SBLogCommon();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v43.a) = 0;
      _os_log_impl(&dword_1BEA11000, v34, OS_LOG_TYPE_DEFAULT, "Falling back to cropping/resizing on CPU", &v43, 2u);
    }

    v35 = [a1 sbf_CGImageBackedImage];
    v36 = v35;
    if (v21)
    {
      v23 = 0;
      v37 = 0;
      if (v22)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v38 = [v35 CGImage];
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      v37 = CGImageCreateWithImageInRect(v38, v50);
      v23 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v37 scale:0 orientation:v26];
      if (v22)
      {
LABEL_32:
        if (v37)
        {
          CGImageRelease(v37);
        }

        goto LABEL_9;
      }
    }

    if (v23)
    {
      v39 = v23;
    }

    else
    {
      v39 = v36;
    }

    v40 = [v39 sbf_resizeImageToSize:a9 preservingAspectRatio:{a6, a7}];

    v23 = v40;
    goto LABEL_32;
  }

LABEL_9:

  return v23;
}

- (id)sbf_scaleImage:()SBFImageSizing canUseIOSurface:
{
  if (fabs(a2 + -1.0) >= 2.22044605e-16)
  {
    v8 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
    [a1 size];
    v11 = v10;
    v13 = v12;
    [a1 size];
    v17 = v15;
    v18 = v14;
    CGAffineTransformMakeScale(&v19, a2, a2);
    v6 = [a1 sbf_cropImageWithRect:a4 outputSize:v8 canUseIOSurface:{v9, v11, v13, vmlaq_n_f64(vmulq_n_f64(*&v19.c, v17), *&v19.a, v18)}];
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

- (id)sbf_resizeImageToSize:()SBFImageSizing preservingAspectRatio:
{
  [a1 size];
  if (v9 == a2 && v10 == a3)
  {
    v15 = a1;
  }

  else
  {
    if (a5)
    {
      v12 = v9;
      v13 = v10;
      v14 = v9 / v10;
      if ((BSFloatApproximatelyEqualToFloat() & 1) == 0)
      {
        if (v12 >= v13)
        {
          a3 = floor(a2 * v14);
        }

        else
        {
          a2 = floor(a3 * v14);
        }
      }
    }

    v15 = [a1 sbf_resizeImageToSize:{a2, a3}];
  }

  return v15;
}

- (id)sbf_resizeImageToSize:()SBFImageSizing
{
  [a1 size];
  if (v7 == a2 && v6 == a3)
  {
    v26 = a1;
    goto LABEL_26;
  }

  [a1 scale];
  v10 = v9;
  UIRectIntegralWithScale();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [a1 CGImage];
  v20 = MGGetBoolAnswer();
  v21 = v20;
  if (!v19 || (v20 & 1) != 0)
  {
    if (v20)
    {
      BitsPerComponent = 16;
    }

    else
    {
      BitsPerComponent = 8;
    }

    if (v20)
    {
      v23 = 4353;
    }

    else
    {
      v23 = 1;
    }

    if (!v19)
    {
      goto LABEL_22;
    }

    if ((v20 ^ 1))
    {
      goto LABEL_22;
    }

    ColorSpace = CGImageGetColorSpace(v19);
    if (!ColorSpace)
    {
      goto LABEL_22;
    }

    v28 = ColorSpace;
    if (!CGColorSpaceIsWideGamutRGB(ColorSpace))
    {
      goto LABEL_22;
    }

    v24 = v28;
  }

  else
  {
    BitsPerComponent = CGImageGetBitsPerComponent(v19);
    v23 = CGImageGetBitmapInfo(v19) & 0xFFFFFFE0 | 1;
    v24 = CGImageGetColorSpace(v19);
  }

  v25 = CGColorSpaceRetain(v24);
  if (!v25)
  {
LABEL_22:
    v29 = MEMORY[0x1E695F110];
    if (!v21)
    {
      v29 = MEMORY[0x1E695F1C0];
    }

    v25 = CGColorSpaceCreateWithName(*v29);
  }

  v37.origin.x = v12;
  v37.origin.y = v14;
  v37.size.width = v16;
  v37.size.height = v18;
  v30 = (v10 * CGRectGetWidth(v37));
  v38.origin.x = v12;
  v38.origin.y = v14;
  v38.size.width = v16;
  v38.size.height = v18;
  v31 = (v10 * CGRectGetHeight(v38));
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(v25);
  v33 = CGBitmapContextCreate(0, v30, v31, BitsPerComponent, (BitsPerComponent >> 3) * v30 + (BitsPerComponent >> 3) * v30 * NumberOfComponents, v25, v23);
  CGContextTranslateCTM(v33, 0.0, v31);
  CGContextScaleCTM(v33, v10, -v10);
  UIGraphicsPushContext(v33);
  [a1 drawInRect:{v12, v14, v16, v18}];
  UIGraphicsPopContext();
  Image = CGBitmapContextCreateImage(v33);
  CGColorSpaceRelease(v25);
  CGContextRelease(v33);
  v26 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:objc_msgSend(a1 orientation:{"imageOrientation"), v10}];
  CGImageRelease(Image);
LABEL_26:

  return v26;
}

@end