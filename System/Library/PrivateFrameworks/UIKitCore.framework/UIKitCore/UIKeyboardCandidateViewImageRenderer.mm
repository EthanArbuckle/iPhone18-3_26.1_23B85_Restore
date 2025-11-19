@interface UIKeyboardCandidateViewImageRenderer
+ (id)sharedImageRenderer;
- (UIKeyboardCandidateViewImageRenderer)init;
- (UIView)viewForTraitCollection;
- (id)drawGradientImage:(CGRect)a3 startPoint:(CGPoint)a4 endPoint:(CGPoint)a5 applyScale:(BOOL)a6;
- (id)edgeMaskImageForRightSide:(BOOL)a3;
- (id)extensionMaskImage;
- (id)handwritingCellBackgroundImageForDarkKeyboard:(BOOL)a3 highlighted:(BOOL)a4;
- (id)highlightedBarCellBackgroundImageWithColor:(id)a3 insets:(UIEdgeInsets)a4;
- (id)pocketShadowImageForDarkKeyboard:(BOOL)a3 fadesToBottom:(BOOL)a4 drawShadow:(BOOL)a5 topPadding:(double)a6 bottomPadding:(double)a7 height:(double)a8;
- (id)separatorImageWithColor:(id)a3 height:(double)a4;
@end

@implementation UIKeyboardCandidateViewImageRenderer

- (UIKeyboardCandidateViewImageRenderer)init
{
  v6.receiver = self;
  v6.super_class = UIKeyboardCandidateViewImageRenderer;
  v2 = [(UIKeyboardCandidateViewImageRenderer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    imageCache = v2->_imageCache;
    v2->_imageCache = v3;
  }

  return v2;
}

+ (id)sharedImageRenderer
{
  if (_MergedGlobals_1163 != -1)
  {
    dispatch_once(&_MergedGlobals_1163, &__block_literal_global_335);
  }

  v3 = qword_1ED49EE08;

  return v3;
}

void __59__UIKeyboardCandidateViewImageRenderer_sharedImageRenderer__block_invoke()
{
  v0 = objc_alloc_init(UIKeyboardCandidateViewImageRenderer);
  v1 = qword_1ED49EE08;
  qword_1ED49EE08 = v0;
}

- (id)highlightedBarCellBackgroundImageWithColor:(id)a3 insets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = a3;
  v10 = MEMORY[0x1E696AEC0];
  v11 = 257 * [v9 hash];
  v12 = [(UIKeyboardCandidateViewImageRenderer *)self viewForTraitCollection];
  v13 = [v12 traitCollection];
  v14 = [v13 hash] + v11;
  v43.top = top;
  v43.left = left;
  v43.bottom = bottom;
  v43.right = right;
  v15 = NSStringFromUIEdgeInsets(v43);
  v16 = [v10 stringWithFormat:@"HBCB_%lld_%@", v14, v15];

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__118;
  v40 = __Block_byref_object_dispose__118;
  v17 = [(UIKeyboardCandidateViewImageRenderer *)self imageCache];
  v41 = [v17 objectForKey:v16];

  v18 = v37[5];
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v20 = [(UIKeyboardCandidateViewImageRenderer *)self viewForTraitCollection];
    v21 = [v20 traitCollection];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = +[UITraitCollection _fallbackTraitCollection];
    }

    v24 = v23;

    v25 = [v24 _traitCollectionByReplacingNSIntegerValue:1 forTraitToken:0x1EFE32488];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __90__UIKeyboardCandidateViewImageRenderer_highlightedBarCellBackgroundImageWithColor_insets___block_invoke;
    v27[3] = &unk_1E710D9B0;
    v32 = top;
    v33 = left;
    v34 = bottom;
    v35 = right;
    v31 = &v36;
    v28 = v9;
    v29 = self;
    v30 = v16;
    [UITraitCollection _performWithCurrentTraitCollection:v25 usingBlock:v27];
    v19 = v37[5];
  }

  _Block_object_dispose(&v36, 8);

  return v19;
}

void __90__UIKeyboardCandidateViewImageRenderer_highlightedBarCellBackgroundImageWithColor_insets___block_invoke(uint64_t a1)
{
  if (_UISolariumEnabled())
  {
    v2 = 9.0;
  }

  else
  {
    v2 = 5.0;
  }

  __asm { FMOV            V1.2D, #1.0 }

  v19 = vaddq_f64(vaddq_f64(*(a1 + 80), vaddq_f64(*(a1 + 64), vdupq_lane_s64(COERCE__INT64(v2 + v2), 0))), _Q1);
  v8 = UIKBScale();
  _UIGraphicsBeginImageContextWithOptions(0, 0, v19.f64[1], v19.f64[0], v8);
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSetFillColorWithColor(v10, [*(a1 + 32) CGColor]);
  v20 = [UIBezierPath bezierPathWithRoundedRect:-1 byRoundingCorners:*(a1 + 72) cornerRadii:*(a1 + 64), v2 + v2 + 1.0, v2 + v2 + 1.0, v2, v2];
  v11 = v20;
  CGContextAddPath(v10, [v20 CGPath]);
  CGContextFillPath(v10);
  v12 = _UIGraphicsGetImageFromCurrentImageContext(0);
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  UIGraphicsEndImageContext();
  v15 = [*(*(*(a1 + 56) + 8) + 40) resizableImageWithCapInsets:1 resizingMode:{v2 + *(a1 + 64), v2 + *(a1 + 72), v2 + *(a1 + 80), v2 + *(a1 + 88)}];
  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = [*(a1 + 40) imageCache];
  [v18 setObject:*(*(*(a1 + 56) + 8) + 40) forKey:*(a1 + 48)];
}

- (id)separatorImageWithColor:(id)a3 height:(double)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = 257 * [v6 hash];
  v9 = [(UIKeyboardCandidateViewImageRenderer *)self viewForTraitCollection];
  v10 = [v9 traitCollection];
  v11 = [v7 stringWithFormat:@"SI_%lld_%g", objc_msgSend(v10, "hash") + v8, *&a4];

  v12 = [(UIKeyboardCandidateViewImageRenderer *)self imageCache];
  v13 = [v12 objectForKey:v11];

  if (!v13)
  {
    v14 = UIKBScale();
    _UIGraphicsBeginImageContextWithOptions(0, 0, 1.0, a4, v14);
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    CGContextSetFillColorWithColor(v16, [v6 CGColor]);
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = 1.0;
    v21.size.height = a4;
    CGContextFillRect(v16, v21);
    v13 = _UIGraphicsGetImageFromCurrentImageContext(0);
    UIGraphicsEndImageContext();
    v17 = [(UIKeyboardCandidateViewImageRenderer *)self imageCache];
    [v17 setObject:v13 forKey:v11];
  }

  v18 = v13;

  return v18;
}

- (id)pocketShadowImageForDarkKeyboard:(BOOL)a3 fadesToBottom:(BOOL)a4 drawShadow:(BOOL)a5 topPadding:(double)a6 bottomPadding:(double)a7 height:(double)a8
{
  v8 = a5;
  v9 = a4;
  v13 = a3;
  if (a4)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15 | a3;
  if (a5)
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PSI_%d_%g_%g_%g", v16 | v17, *&a6, *&a7, *&a8];
  v19 = [(UIKeyboardCandidateViewImageRenderer *)self imageCache];
  v20 = [v19 objectForKey:v18];

  if (!v20)
  {
    v21 = 1.0;
    if (v8)
    {
      v21 = 2.0;
      if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        if (UIKBScale() == 3.0)
        {
          v21 = 2.0;
        }

        else
        {
          v21 = 1.5;
        }
      }
    }

    v22 = UIKBScale();
    _UIGraphicsBeginImageContextWithOptions(0, 0, v21, a8, v22);
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v24 = 0;
    }

    else
    {
      v24 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    v25 = a8 - a6 - a7;
    if (v9)
    {
      v26 = UIKBCreateFadeClipImage(0, 0, 0.0, a6, v21, a8, 0.0, v25 * 0.75 + a6, v21, v25 * 0.25, 1.0);
      v49.origin.x = 0.0;
      v49.origin.y = a6;
      v49.size.width = v21;
      v49.size.height = a8;
      CGContextClipToMask(v24, v49, v26);
      v50.origin.x = 0.0;
      v50.origin.y = a6;
      v50.size.width = v21;
      v50.size.height = a8;
      CGContextClipToMask(v24, v50, v26);
      CGImageRelease(v26);
    }

    if (v8)
    {
      CGContextSetAlpha(v24, 0.7);
      if (v13)
      {
        v27 = +[UIColor grayColor];
        v28 = [v27 colorWithAlphaComponent:0.05];
        v29 = [v28 CGColor];

        v30 = +[UIColor grayColor];
        v31 = [v30 colorWithAlphaComponent:0.11];
        v32 = [v31 CGColor];

        v33 = +[UIColor grayColor];
        v34 = [v33 colorWithAlphaComponent:0.31];
        v35 = [v34 CGColor];
      }

      else
      {
        v29 = UIKBGetNamedColor(@"UIKBColorBlack_Alpha5");
        v32 = UIKBGetNamedColor(@"UIKBColorBlack_Alpha11");
        v35 = UIKBGetNamedColor(@"UIKBColorBlack_Alpha31");
      }

      v51.origin.x = 0.0;
      v51.origin.y = a6;
      v51.size.width = v21;
      v51.size.height = a8;
      v39 = CGRectGetMaxX(v51) - v21;
      v52.origin.x = 0.0;
      v52.origin.y = a6;
      v52.size.width = v21;
      v52.size.height = a8;
      MinY = CGRectGetMinY(v52);
      CGContextSetFillColorWithColor(v24, v29);
      v53.origin.x = v39;
      v53.origin.y = MinY;
      v53.size.width = v21 / 3.0;
      v53.size.height = v25;
      CGContextFillRect(v24, v53);
      v54.origin.x = 0.0;
      v54.origin.y = a6;
      v54.size.width = v21;
      v54.size.height = a8;
      v41 = CGRectGetMaxX(v54) - (v21 + v21) / 3.0;
      v55.origin.x = 0.0;
      v55.origin.y = a6;
      v55.size.width = v21;
      v55.size.height = a8;
      v42 = CGRectGetMinY(v55);
      CGContextSetFillColorWithColor(v24, v32);
      v56.origin.x = v41;
      v56.origin.y = v42;
      v56.size.width = v21 / 3.0;
      v56.size.height = v25;
      CGContextFillRect(v24, v56);
      v57.origin.x = 0.0;
      v57.origin.y = a6;
      v57.size.width = v21;
      v57.size.height = a8;
      v43 = CGRectGetMaxX(v57) - v21 / 3.0;
      v58.origin.x = 0.0;
      v58.origin.y = a6;
      v58.size.width = v21;
      v58.size.height = a8;
      v44 = CGRectGetMinY(v58);
      CGContextSetFillColorWithColor(v24, v35);
      v21 = v21 / 3.0;
    }

    else
    {
      if (v13)
      {
        v36 = +[UIColor grayColor];
        v37 = [v36 colorWithAlphaComponent:0.3];
        v38 = [v37 CGColor];
      }

      else
      {
        v38 = UIKBGetNamedColor(@"UIKBColorBlack_Alpha11");
      }

      v43 = 0.0;
      v59.origin.x = 0.0;
      v59.origin.y = a6;
      v59.size.width = v21;
      v59.size.height = a8;
      v44 = CGRectGetMinY(v59);
      CGContextSetFillColorWithColor(v24, v38);
    }

    v60.origin.x = v43;
    v60.origin.y = v44;
    v60.size.width = v21;
    v60.size.height = v25;
    CGContextFillRect(v24, v60);
    v20 = _UIGraphicsGetImageFromCurrentImageContext(0);
    UIGraphicsEndImageContext();
    v45 = [(UIKeyboardCandidateViewImageRenderer *)self imageCache];
    [v45 setObject:v20 forKey:v18];
  }

  v46 = v20;

  return v46;
}

- (id)handwritingCellBackgroundImageForDarkKeyboard:(BOOL)a3 highlighted:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (a4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HWRCB_%d", v7 | a3];
  v9 = [(UIKeyboardCandidateViewImageRenderer *)self imageCache];
  v10 = [v9 objectForKey:v8];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    if (v5)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    v13 = [UIKBRenderConfig configForAppearance:v12 inputMode:0 traitEnvironment:0];
    v14 = [UIKBRenderFactory_Candidates alloc];
    v15 = [UIKBRenderingContext renderingContextForRenderConfig:v13];
    v16 = [(UIKBRenderFactory_Candidates *)v14 initWithRenderingContext:v15];

    v17 = [(UIKBRenderFactory_Candidates *)v16 traitsForHWRCellSize:v4 highlighted:2.0, 42.0];
    v18 = UIKBScale();
    v19 = [UIKBRenderer rendererWithContext:0 withSize:0 withScale:3 opaque:UIKeyboardGetCurrentIdiom() renderFlags:2.0 assetIdiom:42.0, v18];
    [v19 setDisableInternalCaching:1];
    [v19 renderBackgroundTraits:v17];
    v20 = [v19 renderedImage];
    v21 = [v20 resizableImageWithCapInsets:1 resizingMode:{0.0, 0.0, 0.0, 1.0}];

    v22 = [(UIKeyboardCandidateViewImageRenderer *)self imageCache];
    [v22 setObject:v21 forKey:v8];

    v11 = v21;
  }

  return v11;
}

- (id)extensionMaskImage
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"EXTM"];
  v4 = [(UIKeyboardCandidateViewImageRenderer *)self imageCache];
  v5 = [v4 objectForKey:v3];

  if (!v5)
  {
    v5 = [(UIKeyboardCandidateViewImageRenderer *)self drawGradientImage:0 startPoint:0.0 endPoint:0.0 applyScale:1.0, 80.0, 0.0, 0.0, 0.0, 80.0];
    v6 = [(UIKeyboardCandidateViewImageRenderer *)self imageCache];
    [v6 setObject:v5 forKey:v3];
  }

  v7 = v5;

  return v7;
}

- (id)edgeMaskImageForRightSide:(BOOL)a3
{
  v3 = a3;
  v5 = @"Left";
  if (a3)
  {
    v5 = @"Right";
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SEP-%@", v5];
  v7 = [(UIKeyboardCandidateViewImageRenderer *)self imageCache];
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    if (v3)
    {
      v9 = 20.0;
    }

    else
    {
      v9 = 0.0;
    }

    if (v3)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 20.0;
    }

    v8 = [(UIKeyboardCandidateViewImageRenderer *)self drawGradientImage:1 startPoint:0.0 endPoint:0.0 applyScale:20.0, 1.0, v9, 0.0, v10, 0.0];
    v11 = [(UIKeyboardCandidateViewImageRenderer *)self imageCache];
    [v11 setObject:v8 forKey:v6];
  }

  v12 = v8;

  return v12;
}

- (id)drawGradientImage:(CGRect)a3 startPoint:(CGPoint)a4 endPoint:(CGPoint)a5 applyScale:(BOOL)a6
{
  v6 = a6;
  endPoint = a5.y;
  x = a5.x;
  y = a4.y;
  v9 = a4.x;
  height = a3.size.height;
  width = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  v30 = *MEMORY[0x1E69E9840];
  if (!drawGradientImage_startPoint_endPoint_applyScale__colorspace)
  {
    drawGradientImage_startPoint_endPoint_applyScale__colorspace = CGColorSpaceCreateWithName(*MEMORY[0x1E695F138]);
  }

  v14 = UIKBScale();
  *components = 0u;
  v29 = 0u;
  v15 = CGColorCreate(drawGradientImage_startPoint_endPoint_applyScale__colorspace, components);
  *v26 = xmmword_18A67E348;
  v27 = unk_18A67E358;
  v16 = CGColorCreate(drawGradientImage_startPoint_endPoint_applyScale__colorspace, v26);
  v17 = CGBitmapContextCreate(0, (width * v14), (height * v14), 8uLL, 4 * (width * v14), drawGradientImage_startPoint_endPoint_applyScale__colorspace, 2u);
  CGAffineTransformMakeScale(&transform, v14, v14);
  CGContextConcatCTM(v17, &transform);
  CGContextSetFillColorWithColor(v17, v15);
  v34.origin.x = v13;
  v34.origin.y = v12;
  v34.size.width = width;
  v34.size.height = height;
  CGContextFillRect(v17, v34);
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v15, v16, 0}];

  v19 = CGGradientCreateWithColors(drawGradientImage_startPoint_endPoint_applyScale__colorspace, v18, 0);
  v32.x = v9;
  v32.y = y;
  v33.x = x;
  v33.y = endPoint;
  CGContextDrawLinearGradient(v17, v19, v32, v33, 0);
  CGGradientRelease(v19);
  Image = CGBitmapContextCreateImage(v17);
  CGContextRelease(v17);
  v21 = 1.0;
  if (v6)
  {
    v21 = v14;
  }

  v22 = [UIImage imageWithCGImage:Image scale:0 orientation:v21];
  CGImageRelease(Image);

  return v22;
}

- (UIView)viewForTraitCollection
{
  WeakRetained = objc_loadWeakRetained(&self->_viewForTraitCollection);

  return WeakRetained;
}

@end