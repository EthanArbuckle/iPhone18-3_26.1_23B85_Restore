@interface TVMonogramViewConfiguration
- (TVMonogramViewConfiguration)initWithShadowImages:(BOOL)a3;
- (TVMonogramViewConfiguration)initWithStyle:(int64_t)a3;
- (double)unfocusedImageAlpha;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TVMonogramViewConfiguration

- (TVMonogramViewConfiguration)initWithStyle:(int64_t)a3
{
  v38.receiver = self;
  v38.super_class = TVMonogramViewConfiguration;
  v4 = [(TVMonogramViewConfiguration *)&v38 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 1) = a3;
    *(v4 + 2) = 0x404A000000000000;
    *(v4 + 40) = xmmword_26CE87B80;
    v6 = MEMORY[0x277D755B8];
    v7 = +[TVMLUtilities TVMLKitBundle];
    v8 = [v6 imageNamed:@"monogram250x250-shadow-unfocussed" inBundle:v7 compatibleWithTraitCollection:0];
    unfocusedShadowImage = v5->_unfocusedShadowImage;
    v5->_unfocusedShadowImage = v8;

    v10 = MEMORY[0x277D755B8];
    v11 = +[TVMLUtilities TVMLKitBundle];
    v12 = [v10 imageNamed:@"monogram250x250-shadow-focussed" inBundle:v11 compatibleWithTraitCollection:0];
    focusedShadowImage = v5->_focusedShadowImage;
    v5->_focusedShadowImage = v12;

    objc_storeStrong(&v5->_titleTextStyle, *MEMORY[0x277D76918]);
    objc_storeStrong(&v5->_subtitleTextStyle, *MEMORY[0x277D769C0]);
    if (a3 == 2)
    {
      v25 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.6];
      unfocusedBgColor = v5->_unfocusedBgColor;
      v5->_unfocusedBgColor = v25;

      v27 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
      focusedBgColor = v5->_focusedBgColor;
      v5->_focusedBgColor = v27;

      v29 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
      titleUnfocusedColor = v5->_titleUnfocusedColor;
      v5->_titleUnfocusedColor = v29;

      v31 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
      titleFocusedColor = v5->_titleFocusedColor;
      v5->_titleFocusedColor = v31;

      v22 = MEMORY[0x277D75348];
      v23 = 0.3;
      v24 = 1.0;
      goto LABEL_6;
    }

    if (a3 == 1)
    {
      v14 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.6];
      v15 = v5->_unfocusedBgColor;
      v5->_unfocusedBgColor = v14;

      v16 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.9];
      v17 = v5->_focusedBgColor;
      v5->_focusedBgColor = v16;

      v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
      v19 = v5->_titleUnfocusedColor;
      v5->_titleUnfocusedColor = v18;

      v20 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
      v21 = v5->_titleFocusedColor;
      v5->_titleFocusedColor = v20;

      v22 = MEMORY[0x277D75348];
      v23 = 0.4;
      v24 = 0.0;
LABEL_6:
      v33 = [v22 colorWithWhite:v24 alpha:v23];
      subtitleUnfocusedColor = v5->_subtitleUnfocusedColor;
      v5->_subtitleUnfocusedColor = v33;

      v35 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
      subtitleFocusedColor = v5->_subtitleFocusedColor;
      v5->_subtitleFocusedColor = v35;
    }
  }

  return v5;
}

- (TVMonogramViewConfiguration)initWithShadowImages:(BOOL)a3
{
  v3 = a3;
  v15.receiver = self;
  v15.super_class = TVMonogramViewConfiguration;
  v4 = [(TVMonogramViewConfiguration *)&v15 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 1) = 0;
    *(v4 + 2) = 0x404A000000000000;
    if (v3)
    {
      *(v4 + 40) = xmmword_26CE87B80;
      v6 = MEMORY[0x277D755B8];
      v7 = +[TVMLUtilities TVMLKitBundle];
      v8 = [v6 imageNamed:@"monogram250x250-shadow-unfocussed" inBundle:v7 compatibleWithTraitCollection:0];
      unfocusedShadowImage = v5->_unfocusedShadowImage;
      v5->_unfocusedShadowImage = v8;

      v10 = MEMORY[0x277D755B8];
      v11 = +[TVMLUtilities TVMLKitBundle];
      v12 = [v10 imageNamed:@"monogram250x250-shadow-focussed" inBundle:v11 compatibleWithTraitCollection:0];
      focusedShadowImage = v5->_focusedShadowImage;
      v5->_focusedShadowImage = v12;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v4 + 16) = self->_focusedSizeIncrease;
  *(v4 + 40) = self->_unfocusedShadowAlpha;
  *(v4 + 48) = self->_focusedShadowAlpha;
  v5 = [(UIImage *)self->_unfocusedShadowImage copy];
  v6 = *(v4 + 56);
  *(v4 + 56) = v5;

  v7 = [(UIImage *)self->_focusedShadowImage copy];
  v8 = *(v4 + 64);
  *(v4 + 64) = v7;

  v9 = [(NSString *)self->_titleTextStyle copy];
  v10 = *(v4 + 72);
  *(v4 + 72) = v9;

  v11 = [(NSString *)self->_subtitleTextStyle copy];
  v12 = *(v4 + 96);
  *(v4 + 96) = v11;

  v13 = [(UIColor *)self->_unfocusedBgColor copy];
  v14 = *(v4 + 24);
  *(v4 + 24) = v13;

  v15 = [(UIColor *)self->_focusedBgColor copy];
  v16 = *(v4 + 32);
  *(v4 + 32) = v15;

  v17 = [(UIColor *)self->_titleUnfocusedColor copy];
  v18 = *(v4 + 80);
  *(v4 + 80) = v17;

  v19 = [(UIColor *)self->_titleFocusedColor copy];
  v20 = *(v4 + 88);
  *(v4 + 88) = v19;

  v21 = [(UIColor *)self->_subtitleUnfocusedColor copy];
  v22 = *(v4 + 104);
  *(v4 + 104) = v21;

  v23 = [(UIColor *)self->_subtitleFocusedColor copy];
  v24 = *(v4 + 112);
  *(v4 + 112) = v23;

  return v4;
}

- (double)unfocusedImageAlpha
{
  result = 1.0;
  if (self->_focusedBgColor)
  {
    unfocusedBgColor = self->_unfocusedBgColor;
    if (unfocusedBgColor)
    {
      v5 = 1.0;
      v6 = 1.0;
      [(UIColor *)unfocusedBgColor getRed:0 green:0 blue:0 alpha:&v5, 1.0];
      [(UIColor *)self->_focusedBgColor getRed:0 green:0 blue:0 alpha:&v6];
      return v5 / v6;
    }
  }

  return result;
}

@end