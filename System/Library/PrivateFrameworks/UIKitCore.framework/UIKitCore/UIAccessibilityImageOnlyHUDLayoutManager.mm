@interface UIAccessibilityImageOnlyHUDLayoutManager
- (CGRect)imageViewFrameForHUD:(id)d preferredSizeForLabel:(CGSize)label;
- (CGSize)minimumUnscaledSizeForHUD:(id)d preferredLabelSize:(CGSize)size;
- (CGSize)preferredSizeForLabelInHUD:(id)d maximumWidth:(double)width;
@end

@implementation UIAccessibilityImageOnlyHUDLayoutManager

- (CGSize)minimumUnscaledSizeForHUD:(id)d preferredLabelSize:(CGSize)size
{
  v4 = 107.0;
  v5 = 139.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGRect)imageViewFrameForHUD:(id)d preferredSizeForLabel:(CGSize)label
{
  height = label.height;
  width = label.width;
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  dCopy = d;
  [(UIAccessibilityHUDLayoutManager *)self imageViewSizeForHUD:dCopy preferredSizeForLabel:width, height];
  v11 = v10;
  v13 = v12;
  [(UIAccessibilityHUDLayoutManager *)self layoutBoundsForHUD:dCopy];
  v16 = v15 + v14 * 0.5;
  v19 = v18 + v17 * 0.5;
  window = [dCopy window];
  screen = [window screen];
  [screen scale];
  UIRectCenteredAboutPointScale(v7, v8, v11, v13, v16, v19, v22);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  [(UIAccessibilityHUDLayoutManager *)self imageInsetsForHUD:dCopy];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = v24 + v34;
  v40 = v26 + v32;
  v41 = v28 - (v34 + v38);
  v42 = v30 - (v32 + v36);
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (CGSize)preferredSizeForLabelInHUD:(id)d maximumWidth:(double)width
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

@end