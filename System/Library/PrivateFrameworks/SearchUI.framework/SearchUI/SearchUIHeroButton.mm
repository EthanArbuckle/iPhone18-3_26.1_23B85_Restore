@interface SearchUIHeroButton
- (SearchUIHeroButton)initWithTitle:(id)a3 image:(id)a4 command:(id)a5;
- (void)didMoveToWindow;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateWithTitle:(id)a3 image:(id)a4;
@end

@implementation SearchUIHeroButton

- (SearchUIHeroButton)initWithTitle:(id)a3 image:(id)a4 command:(id)a5
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = SearchUIHeroButton;
  v9 = [(SearchUIHeroButton *)&v16 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [v10 setImagePlacement:1];
    [v10 setContentInsets:{8.0, 4.0, 11.0, 4.0}];
    [v10 setImagePadding:2.0];
    v11 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDC8] scale:2];
    [v10 setPreferredSymbolConfigurationForImage:v11];

    v12 = objc_opt_new();
    v13 = [v10 background];
    [v13 setCustomView:v12];

    v14 = [v10 background];
    [v14 setCornerRadius:8.0];

    [(SearchUIHeroButton *)v9 setConfiguration:v10];
    [(SearchUIHeroButton *)v9 updateWithTitle:v7 image:v8];
  }

  return v9;
}

- (void)updateWithTitle:(id)a3 image:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = MEMORY[0x1E69DB7D0];
  v9 = a4;
  v10 = [v8 defaultParagraphStyle];
  v11 = [v10 mutableCopy];

  [v11 setAlignment:1];
  if (v7)
  {
    v12 = objc_alloc(MEMORY[0x1E696AAB0]);
    v16[0] = *MEMORY[0x1E69DB648];
    v10 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD08] isShort:0 isBold:0];
    v16[1] = *MEMORY[0x1E69DB688];
    v17[0] = v10;
    v17[1] = v11;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v13 = [v12 initWithString:v7 attributes:v4];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(SearchUIHeroButton *)self configuration];
  [v14 setAttributedTitle:v13];

  if (v7)
  {
  }

  v15 = [(SearchUIHeroButton *)self configuration];
  [v15 setImage:v9];

  [(SearchUIHeroButton *)self setNeedsUpdateConfiguration];
  [(SearchUIHeroButton *)self setTitle:v7 forState:0];
  [(SearchUIHeroButton *)self setImage:v9 forState:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchUIHeroButton;
  [(SearchUIHeroButton *)&v9 traitCollectionDidChange:v4];
  v5 = [(SearchUIHeroButton *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(SearchUIHeroButton *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(SearchUIHeroButton *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
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

- (void)tlk_updateForAppearance:(id)a3
{
  v9.receiver = self;
  v9.super_class = SearchUIHeroButton;
  v4 = a3;
  [(SearchUIHeroButton *)&v9 tlk_updateForAppearance:v4];
  v5 = MEMORY[0x1E69D9108];
  v6 = [v4 isDark];

  v7 = [v5 appearanceWithStyle:v6];
  v8 = [v7 primaryColor];
  [(SearchUIHeroButton *)self setTintColor:v8];
}

@end