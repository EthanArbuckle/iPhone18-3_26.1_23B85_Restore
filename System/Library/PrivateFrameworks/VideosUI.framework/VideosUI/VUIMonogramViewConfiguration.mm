@interface VUIMonogramViewConfiguration
- (VUIMonogramViewConfiguration)initWithShadowImages:(BOOL)images;
- (VUIMonogramViewConfiguration)initWithStyle:(int64_t)style;
- (double)unfocusedImageAlpha;
- (id)copyWithZone:(_NSZone *)zone;
- (id)focusedShadowImage;
- (id)unfocusedShadowImage;
@end

@implementation VUIMonogramViewConfiguration

- (VUIMonogramViewConfiguration)initWithStyle:(int64_t)style
{
  v30.receiver = self;
  v30.super_class = VUIMonogramViewConfiguration;
  v4 = [(VUIMonogramViewConfiguration *)&v30 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 1) = style;
    *(v4 + 2) = 0x404A000000000000;
    *(v4 + 40) = xmmword_1E4297230;
    *(v4 + 7) = 13;
    *(v4 + 10) = 14;
    if (style == 2)
    {
      v17 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.6];
      unfocusedBgColor = v5->_unfocusedBgColor;
      v5->_unfocusedBgColor = v17;

      v19 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
      focusedBgColor = v5->_focusedBgColor;
      v5->_focusedBgColor = v19;

      v21 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.5];
      titleUnfocusedColor = v5->_titleUnfocusedColor;
      v5->_titleUnfocusedColor = v21;

      v23 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
      titleFocusedColor = v5->_titleFocusedColor;
      v5->_titleFocusedColor = v23;

      v14 = MEMORY[0x1E69DC888];
      v15 = 0.3;
      v16 = 1.0;
      goto LABEL_6;
    }

    if (style == 1)
    {
      v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.6];
      v7 = v5->_unfocusedBgColor;
      v5->_unfocusedBgColor = v6;

      v8 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.9];
      v9 = v5->_focusedBgColor;
      v5->_focusedBgColor = v8;

      v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.6];
      v11 = v5->_titleUnfocusedColor;
      v5->_titleUnfocusedColor = v10;

      v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
      v13 = v5->_titleFocusedColor;
      v5->_titleFocusedColor = v12;

      v14 = MEMORY[0x1E69DC888];
      v15 = 0.4;
      v16 = 0.0;
LABEL_6:
      v25 = [v14 colorWithWhite:v16 alpha:v15];
      subtitleUnfocusedColor = v5->_subtitleUnfocusedColor;
      v5->_subtitleUnfocusedColor = v25;

      v27 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
      subtitleFocusedColor = v5->_subtitleFocusedColor;
      v5->_subtitleFocusedColor = v27;
    }
  }

  return v5;
}

- (VUIMonogramViewConfiguration)initWithShadowImages:(BOOL)images
{
  imagesCopy = images;
  v5.receiver = self;
  v5.super_class = VUIMonogramViewConfiguration;
  result = [(VUIMonogramViewConfiguration *)&v5 init];
  if (result)
  {
    result->_style = 0;
    result->_focusedSizeIncrease = 52.0;
    if (imagesCopy)
    {
      *&result->_unfocusedShadowAlpha = xmmword_1E4297230;
    }
  }

  return result;
}

- (id)unfocusedShadowImage
{
  if (unfocusedShadowImage_onceToken != -1)
  {
    [VUIMonogramViewConfiguration unfocusedShadowImage];
  }

  v3 = unfocusedShadowImage_unfocusedShadowImage;

  return v3;
}

void __52__VUIMonogramViewConfiguration_unfocusedShadowImage__block_invoke()
{
  v0 = MEMORY[0x1E69DCAB8];
  v3 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
  v1 = [v0 vuiImageNamed:@"MonogramShadowUnfocused" inBundle:v3];
  v2 = unfocusedShadowImage_unfocusedShadowImage;
  unfocusedShadowImage_unfocusedShadowImage = v1;
}

- (id)focusedShadowImage
{
  if (focusedShadowImage_onceToken != -1)
  {
    [VUIMonogramViewConfiguration focusedShadowImage];
  }

  v3 = focusedShadowImage_focusedShadowImage;

  return v3;
}

void __50__VUIMonogramViewConfiguration_focusedShadowImage__block_invoke()
{
  v0 = MEMORY[0x1E69DCAB8];
  v3 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
  v1 = [v0 vuiImageNamed:@"MonogramShadowFocused" inBundle:v3];
  v2 = focusedShadowImage_focusedShadowImage;
  focusedShadowImage_focusedShadowImage = v1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 16) = self->_focusedSizeIncrease;
  *(v4 + 40) = self->_unfocusedShadowAlpha;
  *(v4 + 48) = self->_focusedShadowAlpha;
  *(v4 + 56) = self->_titleTextStyle;
  *(v4 + 80) = self->_subtitleTextStyle;
  v5 = [(UIColor *)self->_unfocusedBgColor copy];
  v6 = *(v4 + 24);
  *(v4 + 24) = v5;

  v7 = [(UIColor *)self->_focusedBgColor copy];
  v8 = *(v4 + 32);
  *(v4 + 32) = v7;

  v9 = [(UIColor *)self->_titleUnfocusedColor copy];
  v10 = *(v4 + 64);
  *(v4 + 64) = v9;

  v11 = [(UIColor *)self->_titleFocusedColor copy];
  v12 = *(v4 + 72);
  *(v4 + 72) = v11;

  v13 = [(UIColor *)self->_subtitleUnfocusedColor copy];
  v14 = *(v4 + 88);
  *(v4 + 88) = v13;

  v15 = [(UIColor *)self->_subtitleFocusedColor copy];
  v16 = *(v4 + 96);
  *(v4 + 96) = v15;

  return v4;
}

- (double)unfocusedImageAlpha
{
  result = 1.0;
  if (self->_focusedBgColor)
  {
    if (self->_unfocusedBgColor)
    {
      v4 = 1.0;
      v5 = 1.0;
      [MEMORY[0x1E69DF6D0] vuiColor:1.0 getRed:? green:? blue:? alpha:?];
      [MEMORY[0x1E69DF6D0] vuiColor:self->_unfocusedBgColor getRed:0 green:0 blue:0 alpha:&v4];
      return v4 / v5;
    }
  }

  return result;
}

@end