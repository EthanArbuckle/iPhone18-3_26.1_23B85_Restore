@interface UIKBRenderFactory_Emoji
- (id)_emojiBorderColor;
- (id)_emojiCategoryControlKeyActiveTraits;
- (id)_emojiDefaultControlKeyActiveBackgroundColorGradient;
- (id)_emojiDefaultControlKeyBackgroundColorGradient;
- (id)_emojiSkinToneDividerColor;
- (id)_emojiSpaceKeyActiveBackgroundColorGradient;
- (id)_emojiSpaceKeyBackgroundColorGradient;
- (id)backgroundTraitsForKeyplane:(id)keyplane;
- (id)controlKeyBackgroundColorName;
- (id)defaultKeyBackgroundColorName;
@end

@implementation UIKBRenderFactory_Emoji

- (id)defaultKeyBackgroundColorName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  v4 = UIKBColorWhite_Alpha97;
  if (!lightKeyboard)
  {
    v4 = UIKBColorWhite_Alpha30;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)controlKeyBackgroundColorName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  v4 = UIKBColorKeyGrayKeyLightBackground;
  if (!lightKeyboard)
  {
    v4 = UIKBColorKeyGrayKeyDarkBackground;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)backgroundTraitsForKeyplane:(id)keyplane
{
  v8.receiver = self;
  v8.super_class = UIKBRenderFactory_Emoji;
  v4 = [(UIKBRenderFactory *)&v8 backgroundTraitsForKeyplane:keyplane];
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig lightKeyboard])
  {
    v6 = +[UIKBRenderFactory _graphicsQuality];

    if (v6 != 100)
    {
      goto LABEL_5;
    }

    renderConfig = [UIKBGradient gradientWithFlatColor:@"UIKBColorLightEmojiBackdropTint"];
    [v4 setBackgroundGradient:renderConfig];
  }

LABEL_5:

  return v4;
}

- (id)_emojiDefaultControlKeyActiveBackgroundColorGradient
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  whiteText = [renderConfig whiteText];
  v4 = UIKBColorWhite_Alpha30;
  if (!whiteText)
  {
    v4 = UIKBColorWhite_Alpha87;
  }

  v5 = *v4;

  v6 = [UIKBGradient gradientWithFlatColor:v5];

  return v6;
}

- (id)_emojiDefaultControlKeyBackgroundColorGradient
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  whiteText = [renderConfig whiteText];
  v4 = UIKBColorKeyGrayKeyDarkBackground;
  if (!whiteText)
  {
    v4 = UIKBColorKeyGrayKeyLightBackground;
  }

  v5 = *v4;

  v6 = [UIKBGradient gradientWithFlatColor:v5];

  return v6;
}

- (id)_emojiSpaceKeyActiveBackgroundColorGradient
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  whiteText = [renderConfig whiteText];
  v4 = UIKBColorWhite_Alpha30;
  if (!whiteText)
  {
    v4 = UIKBColorKeyGrayKeyLightBackground;
  }

  v5 = *v4;

  v6 = [UIKBGradient gradientWithFlatColor:v5];

  return v6;
}

- (id)_emojiSpaceKeyBackgroundColorGradient
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  whiteText = [renderConfig whiteText];
  v4 = UIKBColorKeyGrayKeyDarkBackground;
  if (!whiteText)
  {
    v4 = UIKBColorWhite_Alpha87;
  }

  v5 = *v4;

  v6 = [UIKBGradient gradientWithFlatColor:v5];

  return v6;
}

- (id)_emojiCategoryControlKeyActiveTraits
{
  v3 = +[UIKBRenderTraits emptyTraits];
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  whiteText = [renderConfig whiteText];
  v6 = UIKBColorWhite_Alpha10;
  if (!whiteText)
  {
    v6 = UIKBColorKeyGrayKeyLightBackground;
  }

  v7 = *v6;

  v8 = [UIKBGradient gradientWithFlatColor:v7];

  [v3 setBackgroundGradient:v8];

  return v3;
}

- (id)_emojiBorderColor
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  whiteText = [renderConfig whiteText];
  v4 = UIKBColorWhite_Alpha10;
  if (!whiteText)
  {
    v4 = UIKBColorBlack_Alpha16;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)_emojiSkinToneDividerColor
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  v4 = UIKBColorBlack_Alpha20;
  if (!lightKeyboard)
  {
    v4 = UIKBColorWhite_Alpha20;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

@end