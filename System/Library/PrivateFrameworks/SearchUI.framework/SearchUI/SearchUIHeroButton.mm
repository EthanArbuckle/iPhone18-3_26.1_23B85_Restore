@interface SearchUIHeroButton
- (SearchUIHeroButton)initWithTitle:(id)title image:(id)image command:(id)command;
- (void)didMoveToWindow;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)updateWithTitle:(id)title image:(id)image;
@end

@implementation SearchUIHeroButton

- (SearchUIHeroButton)initWithTitle:(id)title image:(id)image command:(id)command
{
  titleCopy = title;
  imageCopy = image;
  v16.receiver = self;
  v16.super_class = SearchUIHeroButton;
  v9 = [(SearchUIHeroButton *)&v16 init];
  if (v9)
  {
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration setImagePlacement:1];
    [plainButtonConfiguration setContentInsets:{8.0, 4.0, 11.0, 4.0}];
    [plainButtonConfiguration setImagePadding:2.0];
    v11 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDC8] scale:2];
    [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v11];

    v12 = objc_opt_new();
    background = [plainButtonConfiguration background];
    [background setCustomView:v12];

    background2 = [plainButtonConfiguration background];
    [background2 setCornerRadius:8.0];

    [(SearchUIHeroButton *)v9 setConfiguration:plainButtonConfiguration];
    [(SearchUIHeroButton *)v9 updateWithTitle:titleCopy image:imageCopy];
  }

  return v9;
}

- (void)updateWithTitle:(id)title image:(id)image
{
  v17[2] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  v8 = MEMORY[0x1E69DB7D0];
  imageCopy = image;
  defaultParagraphStyle = [v8 defaultParagraphStyle];
  v11 = [defaultParagraphStyle mutableCopy];

  [v11 setAlignment:1];
  if (titleCopy)
  {
    v12 = objc_alloc(MEMORY[0x1E696AAB0]);
    v16[0] = *MEMORY[0x1E69DB648];
    defaultParagraphStyle = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD08] isShort:0 isBold:0];
    v16[1] = *MEMORY[0x1E69DB688];
    v17[0] = defaultParagraphStyle;
    v17[1] = v11;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v13 = [v12 initWithString:titleCopy attributes:v4];
  }

  else
  {
    v13 = 0;
  }

  configuration = [(SearchUIHeroButton *)self configuration];
  [configuration setAttributedTitle:v13];

  if (titleCopy)
  {
  }

  configuration2 = [(SearchUIHeroButton *)self configuration];
  [configuration2 setImage:imageCopy];

  [(SearchUIHeroButton *)self setNeedsUpdateConfiguration];
  [(SearchUIHeroButton *)self setTitle:titleCopy forState:0];
  [(SearchUIHeroButton *)self setImage:imageCopy forState:0];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SearchUIHeroButton;
  [(SearchUIHeroButton *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SearchUIHeroButton *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SearchUIHeroButton *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SearchUIHeroButton *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SearchUIHeroButton;
  [(SearchUIHeroButton *)&v3 didMoveToWindow];
  [(SearchUIHeroButton *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)appearance
{
  v9.receiver = self;
  v9.super_class = SearchUIHeroButton;
  appearanceCopy = appearance;
  [(SearchUIHeroButton *)&v9 tlk_updateForAppearance:appearanceCopy];
  v5 = MEMORY[0x1E69D9108];
  isDark = [appearanceCopy isDark];

  v7 = [v5 appearanceWithStyle:isDark];
  primaryColor = [v7 primaryColor];
  [(SearchUIHeroButton *)self setTintColor:primaryColor];
}

@end