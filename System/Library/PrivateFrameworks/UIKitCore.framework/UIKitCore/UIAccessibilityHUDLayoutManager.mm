@interface UIAccessibilityHUDLayoutManager
- (CGRect)imageViewFrameForHUD:(id)a3 preferredSizeForLabel:(CGSize)a4;
- (CGRect)labelFrameForHUD:(id)a3 preferredSize:(CGSize)a4;
- (CGRect)layoutBoundsForHUD:(id)a3;
- (CGSize)imageViewSizeForHUD:(id)a3 preferredSizeForLabel:(CGSize)a4;
- (CGSize)minimumUnscaledSizeForHUD:(id)a3 preferredLabelSize:(CGSize)a4;
- (CGSize)preferredSizeForLabelInHUD:(id)a3 maximumWidth:(double)a4;
- (CGSize)unscaledSizeForHUD:(id)a3 containingSize:(CGSize)a4;
- (UIEdgeInsets)imageInsetsForHUD:(id)a3;
- (double)_imageCenterToTopForHUD:(id)a3 preferredSizeForLabel:(CGSize)a4;
- (unint64_t)_actualNumberOfLinesForLabelInHUD:(id)a3 preferredSize:(CGSize)a4;
- (void)layoutSubviewsOfHUD:(id)a3;
@end

@implementation UIAccessibilityHUDLayoutManager

- (CGSize)unscaledSizeForHUD:(id)a3 containingSize:(CGSize)a4
{
  v5 = a4.width + -32.0;
  v6 = a3;
  [(UIAccessibilityHUDLayoutManager *)self preferredSizeForLabelInHUD:v6 maximumWidth:v5];
  [(UIAccessibilityHUDLayoutManager *)self minimumUnscaledSizeForHUD:v6 preferredLabelSize:?];
  UIRoundToViewScale(v6);
  v8 = v7;
  UIRoundToViewScale(v6);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)minimumUnscaledSizeForHUD:(id)a3 preferredLabelSize:(CGSize)a4
{
  if (a4.width < 75.0)
  {
    a4.width = 75.0;
  }

  v4 = a4.width + 32.0;
  v5 = a4.height + 123.0 + 24.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGRect)layoutBoundsForHUD:(id)a3
{
  v3 = [(UIAccessibilityHUDLayoutManager *)self containerViewForHUD:a3];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (UIEdgeInsets)imageInsetsForHUD:(id)a3
{
  [a3 imageInsetsForLayout];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGSize)imageViewSizeForHUD:(id)a3 preferredSizeForLabel:(CGSize)a4
{
  height = a4.height;
  v6 = a3;
  [(UIAccessibilityHUDLayoutManager *)self layoutBoundsForHUD:v6];
  v7 = CGRectGetWidth(v26) + -32.0;
  if (height == 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 80.0;
  }

  v9 = [v6 item];
  v10 = [v9 scaleImage];

  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = [v6 item];
  v12 = [v11 image];
  [v12 size];
  v14 = v13;
  v16 = v15;

  *&v17 = 75.0;
  if (v14 >= 75.0 || (*&v18 = 75.0, v16 >= 75.0))
  {
    if (v14 > v7 || v16 > v8)
    {
      *&v17 = v7;
      *&v18 = v8;
      goto LABEL_13;
    }

LABEL_12:
    v20 = [v6 imageView];
    [v20 sizeThatFits:{v7, v8}];
    v17 = v21;
    v18 = v22;
  }

LABEL_13:

  v23 = *&v17;
  v24 = *&v18;
  result.height = v24;
  result.width = v23;
  return result;
}

- (CGRect)imageViewFrameForHUD:(id)a3 preferredSizeForLabel:(CGSize)a4
{
  height = a4.height;
  v35 = a4.height;
  width = a4.width;
  v33 = *(MEMORY[0x1E695F058] + 8);
  v34 = *MEMORY[0x1E695F058];
  v7 = a3;
  [(UIAccessibilityHUDLayoutManager *)self imageViewSizeForHUD:v7 preferredSizeForLabel:width, height];
  v9 = v8;
  v11 = v10;
  [(UIAccessibilityHUDLayoutManager *)self layoutBoundsForHUD:v7];
  x = v36.origin.x;
  y = v36.origin.y;
  v14 = v36.size.width;
  v15 = v36.size.height;
  CGRectGetMinX(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = v14;
  v37.size.height = v15;
  CGRectGetWidth(v37);
  v38.origin.y = v33;
  v38.origin.x = v34;
  v16 = v9;
  v38.size.width = v9;
  v38.size.height = v11;
  CGRectGetWidth(v38);
  UIRoundToViewScale(v7);
  v18 = v17;
  [(UIAccessibilityHUDLayoutManager *)self _imageCenterToTopForHUD:v7 preferredSizeForLabel:width, v35];
  UIRoundToViewScale(v7);
  v20 = v19;
  [(UIAccessibilityHUDLayoutManager *)self imageInsetsForHUD:v7];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = v18 + v24;
  v30 = v20 + v22;
  v31 = v16 - (v24 + v28);
  v32 = v11 - (v22 + v26);
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGRect)labelFrameForHUD:(id)a3 preferredSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v34 = *(MEMORY[0x1E695F058] + 8);
  v35 = *MEMORY[0x1E695F058];
  v7 = a3;
  [(UIAccessibilityHUDLayoutManager *)self layoutBoundsForHUD:v7];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v8 + v12 * 0.5;
  v17 = v10 + v14 * 0.5;
  v18 = [v7 window];
  v19 = [v18 screen];
  [v19 scale];
  UIRectCenteredAboutPointScale(v35, v34, width, height, v16, v17, v20);
  v22 = v21;
  v24 = v23;
  v36 = v25;

  [(UIAccessibilityHUDLayoutManager *)self _imageCenterToTopForHUD:v7 preferredSizeForLabel:width, height];
  v37.origin.x = v9;
  v37.origin.y = v11;
  v37.size.width = v13;
  v37.size.height = v15;
  CGRectGetHeight(v37);
  UIRoundToViewScale(v7);
  v27 = v26;
  v38.origin.x = v9;
  v38.origin.y = v11;
  v38.size.width = v13;
  v38.size.height = v15;
  CGRectGetHeight(v38);
  UIRoundToViewScale(v7);
  v29 = v28;

  if (v27 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v27;
  }

  v31 = v22;
  v32 = v24;
  v33 = v36;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v30;
  result.origin.x = v31;
  return result;
}

- (CGSize)preferredSizeForLabelInHUD:(id)a3 maximumWidth:(double)a4
{
  v5 = [a3 titleLabel];
  [v5 sizeThatFits:{a4, 3.40282347e38}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviewsOfHUD:(id)a3
{
  v22 = a3;
  v4 = [(UIAccessibilityHUDLayoutManager *)self itemContainerViewForHUD:v22];
  v5 = [v22 imageView];
  v6 = [v22 titleLabel];
  [(UIAccessibilityHUDLayoutManager *)self layoutBoundsForHUD:v22];
  [(UIAccessibilityHUDLayoutManager *)self preferredSizeForLabelInHUD:v22 maximumWidth:CGRectGetWidth(v24) + -32.0];
  v8 = v7;
  v10 = v9;
  [(UIAccessibilityHUDLayoutManager *)self imageViewFrameForHUD:v22 preferredSizeForLabel:?];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  if (CGRectIsEmpty(v25) || ([v5 image], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
  {
    v17 = [v5 superview];

    if (v17)
    {
      [v5 removeFromSuperview];
    }
  }

  else
  {
    v16 = [v5 superview];

    if (!v16)
    {
      [v4 addSubview:v5];
    }

    [v5 setFrame:{x, y, width, height}];
  }

  v18 = [v6 text];
  v19 = [v18 length];

  v20 = [v6 superview];

  if (v19)
  {
    if (!v20)
    {
      [v4 addSubview:v6];
    }

    LODWORD(v21) = 0.75;
    [v6 _setHyphenationFactor:v21];
    [(UIAccessibilityHUDLayoutManager *)self labelFrameForHUD:v22 preferredSize:v8, v10];
    [v6 setFrame:?];
  }

  else if (v20)
  {
    [v6 removeFromSuperview];
  }
}

- (unint64_t)_actualNumberOfLinesForLabelInHUD:(id)a3 preferredSize:(CGSize)a4
{
  height = a4.height;
  v5 = [a3 titleLabel];
  v6 = [v5 font];
  [v6 _bodyLeading];
  v8 = v7;

  return vcvtad_u64_f64(height / v8);
}

- (double)_imageCenterToTopForHUD:(id)a3 preferredSizeForLabel:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  [(UIAccessibilityHUDLayoutManager *)self layoutBoundsForHUD:v7];
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    MidY = CGRectGetMidY(*&v8);
  }

  else
  {
    v17 = dbl_18A677720[[(UIAccessibilityHUDLayoutManager *)self _actualNumberOfLinesForLabelInHUD:v7 preferredSize:width, height]> 1];
    v21.origin.x = v12;
    v21.origin.y = v13;
    v21.size.width = v14;
    v21.size.height = v15;
    v18 = CGRectGetMaxY(v21) + -24.0 - height + -16.0 + -37.0;
    if (v17 >= v18)
    {
      MidY = v18;
    }

    else
    {
      MidY = v17;
    }
  }

  return MidY;
}

@end