@interface UIKBRenderFactory_Emoji
- (id)_emojiBorderColor;
- (id)_emojiCategoryControlKeyActiveTraits;
- (id)_emojiDefaultControlKeyActiveBackgroundColorGradient;
- (id)_emojiDefaultControlKeyBackgroundColorGradient;
- (id)_emojiSkinToneDividerColor;
- (id)_emojiSpaceKeyActiveBackgroundColorGradient;
- (id)_emojiSpaceKeyBackgroundColorGradient;
- (id)backgroundTraitsForKeyplane:(id)a3;
- (id)controlKeyBackgroundColorName;
- (id)defaultKeyBackgroundColorName;
@end

@implementation UIKBRenderFactory_Emoji

- (id)defaultKeyBackgroundColorName
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 lightKeyboard];
  v4 = UIKBColorWhite_Alpha97;
  if (!v3)
  {
    v4 = UIKBColorWhite_Alpha30;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)controlKeyBackgroundColorName
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 lightKeyboard];
  v4 = UIKBColorKeyGrayKeyLightBackground;
  if (!v3)
  {
    v4 = UIKBColorKeyGrayKeyDarkBackground;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)backgroundTraitsForKeyplane:(id)a3
{
  v8.receiver = self;
  v8.super_class = UIKBRenderFactory_Emoji;
  v4 = [(UIKBRenderFactory *)&v8 backgroundTraitsForKeyplane:a3];
  v5 = [(UIKBRenderFactory *)self renderConfig];
  if ([v5 lightKeyboard])
  {
    v6 = +[UIKBRenderFactory _graphicsQuality];

    if (v6 != 100)
    {
      goto LABEL_5;
    }

    v5 = [UIKBGradient gradientWithFlatColor:@"UIKBColorLightEmojiBackdropTint"];
    [v4 setBackgroundGradient:v5];
  }

LABEL_5:

  return v4;
}

- (id)_emojiDefaultControlKeyActiveBackgroundColorGradient
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 whiteText];
  v4 = UIKBColorWhite_Alpha30;
  if (!v3)
  {
    v4 = UIKBColorWhite_Alpha87;
  }

  v5 = *v4;

  v6 = [UIKBGradient gradientWithFlatColor:v5];

  return v6;
}

- (id)_emojiDefaultControlKeyBackgroundColorGradient
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 whiteText];
  v4 = UIKBColorKeyGrayKeyDarkBackground;
  if (!v3)
  {
    v4 = UIKBColorKeyGrayKeyLightBackground;
  }

  v5 = *v4;

  v6 = [UIKBGradient gradientWithFlatColor:v5];

  return v6;
}

- (id)_emojiSpaceKeyActiveBackgroundColorGradient
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 whiteText];
  v4 = UIKBColorWhite_Alpha30;
  if (!v3)
  {
    v4 = UIKBColorKeyGrayKeyLightBackground;
  }

  v5 = *v4;

  v6 = [UIKBGradient gradientWithFlatColor:v5];

  return v6;
}

- (id)_emojiSpaceKeyBackgroundColorGradient
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 whiteText];
  v4 = UIKBColorKeyGrayKeyDarkBackground;
  if (!v3)
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
  v4 = [(UIKBRenderFactory *)self renderConfig];
  v5 = [v4 whiteText];
  v6 = UIKBColorWhite_Alpha10;
  if (!v5)
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 whiteText];
  v4 = UIKBColorWhite_Alpha10;
  if (!v3)
  {
    v4 = UIKBColorBlack_Alpha16;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)_emojiSkinToneDividerColor
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 lightKeyboard];
  v4 = UIKBColorBlack_Alpha20;
  if (!v3)
  {
    v4 = UIKBColorWhite_Alpha20;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

@end