@interface UIImage
@end

@implementation UIImage

uint64_t __98__UIImage_SBUILegibilityAdditions__sbui_strikeImageForLegibilitySettings_strength_size_type_pool___block_invoke(uint64_t result)
{
  v1 = *(result + 40) * *(result + 48);
  if (v1 > 0.00000011920929)
  {
    v2 = result;
    do
    {
      if (v1 + 0.00000011920929 <= 1.0)
      {
        v3 = v1;
      }

      else
      {
        v3 = 1.0;
      }

      result = [*(v2 + 32) drawInRect:0 blendMode:*(v2 + 56) alpha:{*(v2 + 64), *(v2 + 72), *(v2 + 80), v3}];
      v1 = v1 + -1.0;
    }

    while (v1 > 0.00000011920929);
  }

  return result;
}

void __137__UIImage_SBUILegibilityAdditions__sbui_legibilityImageForSettings_scale_inputImage_inputSize_allowMinFillHeightHack_strength_type_pool___block_invoke(uint64_t a1)
{
  v25 = *(a1 + 104);
  UIRectCenteredIntegralRectScale();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetFillColorWithColor(CurrentContext, [*(a1 + 32) CGColor]);
  if ((*(a1 + 120) & 1) != 0 || !*(a1 + 40))
  {
    v36.origin.x = v3;
    v36.origin.y = v5;
    v36.size.width = v7;
    v36.size.height = v9;
    CGContextFillRect(CurrentContext, v36);
  }

  else
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      [v11 shadowSettings];
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    CGContextScaleCTM(CurrentContext, 1.0, -1.0);
    CGContextTranslateCTM(CurrentContext, 0.0, -*(a1 + 80));
    v12 = [*(a1 + 40) _flatImageWithColor:*(a1 + 32)];
    v13 = [v12 CGImage];
    v37.origin.x = v3;
    v37.origin.y = v5;
    v37.size.width = v7;
    v37.size.height = v9;
    CGContextDrawImage(CurrentContext, v37, v13);
  }

  Data = CGBitmapContextGetData(CurrentContext);
  Width = CGBitmapContextGetWidth(CurrentContext);
  Height = CGBitmapContextGetHeight(CurrentContext);
  BytesPerRow = CGBitmapContextGetBytesPerRow(CurrentContext);
  v18 = MEMORY[0x1E69DCAB8];
  v19 = *(a1 + 104);
  v20 = *(a1 + 112);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __137__UIImage_SBUILegibilityAdditions__sbui_legibilityImageForSettings_scale_inputImage_inputSize_allowMinFillHeightHack_strength_type_pool___block_invoke_2;
  v26[3] = &unk_1E789EE30;
  v21 = *(a1 + 56);
  v27 = *(a1 + 48);
  v28 = *(a1 + 104);
  v29 = *(a1 + 112);
  v30 = Data;
  v31 = Height;
  v32 = Width;
  v33 = BytesPerRow;
  v22 = [v18 sbf_imageFromContextWithSize:v20 scale:v21 type:v26 pool:*(a1 + 72) drawing:{*(a1 + 80), v19}];
  v23 = *(*(a1 + 64) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;
}

vImage_Error __137__UIImage_SBUILegibilityAdditions__sbui_legibilityImageForSettings_scale_inputImage_inputSize_allowMinFillHeightHack_strength_type_pool___block_invoke_2(uint64_t a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  dest.data = CGBitmapContextGetData(CurrentContext);
  dest.width = CGBitmapContextGetWidth(CurrentContext);
  dest.height = CGBitmapContextGetHeight(CurrentContext);
  dest.rowBytes = CGBitmapContextGetBytesPerRow(CurrentContext);
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 shadowSettings];
    v4 = v8 * 0.2;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = v4 * *(a1 + 40);
  if (v5 < 2.0)
  {
    v5 = 2.0;
  }

  v6 = vcvtmd_u64_f64(v5 * 3.0 * 2.50662827 * 0.25 + 0.5);
  if ((*(a1 + 48) - 3) > 1)
  {
    return vImageTentConvolve_ARGB8888((a1 + 56), &dest, 0, 0, 0, v6 | 1, v6 | 1, 0, 8u);
  }

  else
  {
    return vImageTentConvolve_Planar8((a1 + 56), &dest, 0, 0, 0, v6 | 1, v6 | 1, 0, 8u);
  }
}

@end