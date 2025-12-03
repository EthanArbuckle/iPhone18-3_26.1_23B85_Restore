@interface UIAccessibilityHUDLayoutManager
- (CGRect)imageViewFrameForHUD:(id)d preferredSizeForLabel:(CGSize)label;
- (CGRect)labelFrameForHUD:(id)d preferredSize:(CGSize)size;
- (CGRect)layoutBoundsForHUD:(id)d;
- (CGSize)imageViewSizeForHUD:(id)d preferredSizeForLabel:(CGSize)label;
- (CGSize)minimumUnscaledSizeForHUD:(id)d preferredLabelSize:(CGSize)size;
- (CGSize)preferredSizeForLabelInHUD:(id)d maximumWidth:(double)width;
- (CGSize)unscaledSizeForHUD:(id)d containingSize:(CGSize)size;
- (UIEdgeInsets)imageInsetsForHUD:(id)d;
- (double)_imageCenterToTopForHUD:(id)d preferredSizeForLabel:(CGSize)label;
- (unint64_t)_actualNumberOfLinesForLabelInHUD:(id)d preferredSize:(CGSize)size;
- (void)layoutSubviewsOfHUD:(id)d;
@end

@implementation UIAccessibilityHUDLayoutManager

- (CGSize)unscaledSizeForHUD:(id)d containingSize:(CGSize)size
{
  v5 = size.width + -32.0;
  dCopy = d;
  [(UIAccessibilityHUDLayoutManager *)self preferredSizeForLabelInHUD:dCopy maximumWidth:v5];
  [(UIAccessibilityHUDLayoutManager *)self minimumUnscaledSizeForHUD:dCopy preferredLabelSize:?];
  UIRoundToViewScale(dCopy);
  v8 = v7;
  UIRoundToViewScale(dCopy);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)minimumUnscaledSizeForHUD:(id)d preferredLabelSize:(CGSize)size
{
  if (size.width < 75.0)
  {
    size.width = 75.0;
  }

  v4 = size.width + 32.0;
  v5 = size.height + 123.0 + 24.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGRect)layoutBoundsForHUD:(id)d
{
  v3 = [(UIAccessibilityHUDLayoutManager *)self containerViewForHUD:d];
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

- (UIEdgeInsets)imageInsetsForHUD:(id)d
{
  [d imageInsetsForLayout];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGSize)imageViewSizeForHUD:(id)d preferredSizeForLabel:(CGSize)label
{
  height = label.height;
  dCopy = d;
  [(UIAccessibilityHUDLayoutManager *)self layoutBoundsForHUD:dCopy];
  v7 = CGRectGetWidth(v26) + -32.0;
  if (height == 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 80.0;
  }

  item = [dCopy item];
  scaleImage = [item scaleImage];

  if (!scaleImage)
  {
    goto LABEL_12;
  }

  item2 = [dCopy item];
  image = [item2 image];
  [image size];
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
    imageView = [dCopy imageView];
    [imageView sizeThatFits:{v7, v8}];
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

- (CGRect)imageViewFrameForHUD:(id)d preferredSizeForLabel:(CGSize)label
{
  height = label.height;
  v35 = label.height;
  width = label.width;
  v33 = *(MEMORY[0x1E695F058] + 8);
  v34 = *MEMORY[0x1E695F058];
  dCopy = d;
  [(UIAccessibilityHUDLayoutManager *)self imageViewSizeForHUD:dCopy preferredSizeForLabel:width, height];
  v9 = v8;
  v11 = v10;
  [(UIAccessibilityHUDLayoutManager *)self layoutBoundsForHUD:dCopy];
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
  UIRoundToViewScale(dCopy);
  v18 = v17;
  [(UIAccessibilityHUDLayoutManager *)self _imageCenterToTopForHUD:dCopy preferredSizeForLabel:width, v35];
  UIRoundToViewScale(dCopy);
  v20 = v19;
  [(UIAccessibilityHUDLayoutManager *)self imageInsetsForHUD:dCopy];
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

- (CGRect)labelFrameForHUD:(id)d preferredSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v34 = *(MEMORY[0x1E695F058] + 8);
  v35 = *MEMORY[0x1E695F058];
  dCopy = d;
  [(UIAccessibilityHUDLayoutManager *)self layoutBoundsForHUD:dCopy];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v8 + v12 * 0.5;
  v17 = v10 + v14 * 0.5;
  window = [dCopy window];
  screen = [window screen];
  [screen scale];
  UIRectCenteredAboutPointScale(v35, v34, width, height, v16, v17, v20);
  v22 = v21;
  v24 = v23;
  v36 = v25;

  [(UIAccessibilityHUDLayoutManager *)self _imageCenterToTopForHUD:dCopy preferredSizeForLabel:width, height];
  v37.origin.x = v9;
  v37.origin.y = v11;
  v37.size.width = v13;
  v37.size.height = v15;
  CGRectGetHeight(v37);
  UIRoundToViewScale(dCopy);
  v27 = v26;
  v38.origin.x = v9;
  v38.origin.y = v11;
  v38.size.width = v13;
  v38.size.height = v15;
  CGRectGetHeight(v38);
  UIRoundToViewScale(dCopy);
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

- (CGSize)preferredSizeForLabelInHUD:(id)d maximumWidth:(double)width
{
  titleLabel = [d titleLabel];
  [titleLabel sizeThatFits:{width, 3.40282347e38}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviewsOfHUD:(id)d
{
  dCopy = d;
  v4 = [(UIAccessibilityHUDLayoutManager *)self itemContainerViewForHUD:dCopy];
  imageView = [dCopy imageView];
  titleLabel = [dCopy titleLabel];
  [(UIAccessibilityHUDLayoutManager *)self layoutBoundsForHUD:dCopy];
  [(UIAccessibilityHUDLayoutManager *)self preferredSizeForLabelInHUD:dCopy maximumWidth:CGRectGetWidth(v24) + -32.0];
  v8 = v7;
  v10 = v9;
  [(UIAccessibilityHUDLayoutManager *)self imageViewFrameForHUD:dCopy preferredSizeForLabel:?];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  if (CGRectIsEmpty(v25) || ([imageView image], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
  {
    superview = [imageView superview];

    if (superview)
    {
      [imageView removeFromSuperview];
    }
  }

  else
  {
    superview2 = [imageView superview];

    if (!superview2)
    {
      [v4 addSubview:imageView];
    }

    [imageView setFrame:{x, y, width, height}];
  }

  text = [titleLabel text];
  v19 = [text length];

  superview3 = [titleLabel superview];

  if (v19)
  {
    if (!superview3)
    {
      [v4 addSubview:titleLabel];
    }

    LODWORD(v21) = 0.75;
    [titleLabel _setHyphenationFactor:v21];
    [(UIAccessibilityHUDLayoutManager *)self labelFrameForHUD:dCopy preferredSize:v8, v10];
    [titleLabel setFrame:?];
  }

  else if (superview3)
  {
    [titleLabel removeFromSuperview];
  }
}

- (unint64_t)_actualNumberOfLinesForLabelInHUD:(id)d preferredSize:(CGSize)size
{
  height = size.height;
  titleLabel = [d titleLabel];
  font = [titleLabel font];
  [font _bodyLeading];
  v8 = v7;

  return vcvtad_u64_f64(height / v8);
}

- (double)_imageCenterToTopForHUD:(id)d preferredSizeForLabel:(CGSize)label
{
  height = label.height;
  width = label.width;
  dCopy = d;
  [(UIAccessibilityHUDLayoutManager *)self layoutBoundsForHUD:dCopy];
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
    v17 = dbl_18A677720[[(UIAccessibilityHUDLayoutManager *)self _actualNumberOfLinesForLabelInHUD:dCopy preferredSize:width, height]> 1];
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