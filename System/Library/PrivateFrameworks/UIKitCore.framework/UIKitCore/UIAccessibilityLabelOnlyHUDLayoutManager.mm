@interface UIAccessibilityLabelOnlyHUDLayoutManager
- (BOOL)labelContainsSingleCharacter:(id)character;
- (CGRect)labelFrameForHUD:(id)d preferredSize:(CGSize)size;
- (CGSize)minimumUnscaledSizeForHUD:(id)d preferredLabelSize:(CGSize)size;
- (CGSize)unscaledSizeForHUD:(id)d containingSize:(CGSize)size;
- (id)labelFontForHUD:(id)d;
@end

@implementation UIAccessibilityLabelOnlyHUDLayoutManager

- (CGSize)unscaledSizeForHUD:(id)d containingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  dCopy = d;
  titleLabel = [dCopy titleLabel];
  *&v9 = 155.0;
  *&v10 = 155.0;
  if (![(UIAccessibilityLabelOnlyHUDLayoutManager *)self labelContainsSingleCharacter:titleLabel])
  {
    v15.receiver = self;
    v15.super_class = UIAccessibilityLabelOnlyHUDLayoutManager;
    [(UIAccessibilityHUDLayoutManager *)&v15 unscaledSizeForHUD:dCopy containingSize:width, height];
    v9 = v11;
    v10 = v12;
  }

  v13 = *&v9;
  v14 = *&v10;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)minimumUnscaledSizeForHUD:(id)d preferredLabelSize:(CGSize)size
{
  v4 = size.width + 32.0;
  v5 = size.height + 48.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGRect)labelFrameForHUD:(id)d preferredSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  dCopy = d;
  [(UIAccessibilityHUDLayoutManager *)self layoutBoundsForHUD:dCopy];
  v12 = v11 + v10 * 0.5;
  v15 = v14 + v13 * 0.5;
  window = [dCopy window];

  screen = [window screen];
  [screen scale];
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

- (id)labelFontForHUD:(id)d
{
  dCopy = d;
  titleLabel = [dCopy titleLabel];
  if ([(UIAccessibilityLabelOnlyHUDLayoutManager *)self labelContainsSingleCharacter:titleLabel])
  {
    v6 = [off_1E70ECC18 systemFontOfSize:84.0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIAccessibilityLabelOnlyHUDLayoutManager;
    v6 = [(UIAccessibilityHUDLayoutManager *)&v9 labelFontForHUD:dCopy];
  }

  v7 = v6;

  return v7;
}

- (BOOL)labelContainsSingleCharacter:(id)character
{
  characterCopy = character;
  text = [characterCopy text];
  if ([text length])
  {
    text2 = [characterCopy text];
    [text2 rangeOfComposedCharacterSequenceAtIndex:0];
    v7 = v6;
    text3 = [characterCopy text];
    v9 = v7 == [text3 length];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end