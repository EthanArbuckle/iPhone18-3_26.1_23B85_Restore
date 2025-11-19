@interface UIAccessibilityLabelOnlyHUDLayoutManager
- (BOOL)labelContainsSingleCharacter:(id)a3;
- (CGRect)labelFrameForHUD:(id)a3 preferredSize:(CGSize)a4;
- (CGSize)minimumUnscaledSizeForHUD:(id)a3 preferredLabelSize:(CGSize)a4;
- (CGSize)unscaledSizeForHUD:(id)a3 containingSize:(CGSize)a4;
- (id)labelFontForHUD:(id)a3;
@end

@implementation UIAccessibilityLabelOnlyHUDLayoutManager

- (CGSize)unscaledSizeForHUD:(id)a3 containingSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [v7 titleLabel];
  *&v9 = 155.0;
  *&v10 = 155.0;
  if (![(UIAccessibilityLabelOnlyHUDLayoutManager *)self labelContainsSingleCharacter:v8])
  {
    v15.receiver = self;
    v15.super_class = UIAccessibilityLabelOnlyHUDLayoutManager;
    [(UIAccessibilityHUDLayoutManager *)&v15 unscaledSizeForHUD:v7 containingSize:width, height];
    v9 = v11;
    v10 = v12;
  }

  v13 = *&v9;
  v14 = *&v10;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)minimumUnscaledSizeForHUD:(id)a3 preferredLabelSize:(CGSize)a4
{
  v4 = a4.width + 32.0;
  v5 = a4.height + 48.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGRect)labelFrameForHUD:(id)a3 preferredSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = a3;
  [(UIAccessibilityHUDLayoutManager *)self layoutBoundsForHUD:v9];
  v12 = v11 + v10 * 0.5;
  v15 = v14 + v13 * 0.5;
  v16 = [v9 window];

  v17 = [v16 screen];
  [v17 scale];
  UIRectCenteredAboutPointScale(v7, v8, width, height, v12, v15, v18);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (id)labelFontForHUD:(id)a3
{
  v4 = a3;
  v5 = [v4 titleLabel];
  if ([(UIAccessibilityLabelOnlyHUDLayoutManager *)self labelContainsSingleCharacter:v5])
  {
    v6 = [off_1E70ECC18 systemFontOfSize:84.0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIAccessibilityLabelOnlyHUDLayoutManager;
    v6 = [(UIAccessibilityHUDLayoutManager *)&v9 labelFontForHUD:v4];
  }

  v7 = v6;

  return v7;
}

- (BOOL)labelContainsSingleCharacter:(id)a3
{
  v3 = a3;
  v4 = [v3 text];
  if ([v4 length])
  {
    v5 = [v3 text];
    [v5 rangeOfComposedCharacterSequenceAtIndex:0];
    v7 = v6;
    v8 = [v3 text];
    v9 = v7 == [v8 length];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end