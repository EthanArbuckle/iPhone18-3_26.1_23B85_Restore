@interface SearchUILockupViewContainer
- (SearchUILockupViewContainer)initWithLockupView:(id)a3;
- (void)didMoveToWindow;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SearchUILockupViewContainer

- (SearchUILockupViewContainer)initWithLockupView:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v9.receiver = self;
  v9.super_class = SearchUILockupViewContainer;
  v7 = [(NUIContainerBoxView *)&v9 initWithArrangedSubviews:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_lockupView, a3);
  }

  return v7;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchUILockupViewContainer;
  [(SearchUILockupViewContainer *)&v9 traitCollectionDidChange:v4];
  v5 = [(SearchUILockupViewContainer *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(SearchUILockupViewContainer *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(SearchUILockupViewContainer *)self traitCollection];
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
  v3.super_class = SearchUILockupViewContainer;
  [(SearchUILockupViewContainer *)&v3 didMoveToWindow];
  [(SearchUILockupViewContainer *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)a3
{
  v9 = a3;
  v15.receiver = self;
  v15.super_class = SearchUILockupViewContainer;
  [(SearchUILockupViewContainer *)&v15 tlk_updateForAppearance:v9];
  v10 = [v9 isVibrant];
  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E698B3E8]);
    v3 = [v9 quaternaryColor];
    v4 = [v9 secondaryButtonColor];
    v5 = [v9 secondaryColor];
    v6 = [v9 secondaryButtonColor];
    v7 = [v9 tertiaryColor];
    v12 = [v11 initWithTitleBackgroundColor:v3 titleTextColor:v4 subtitleTextColor:v5 iconTintColor:v6 progressColor:v7];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(SearchUILockupViewContainer *)self lockupView];
  [v13 setOfferTheme:v12];

  if (v10)
  {
  }

  v14 = [(SearchUILockupViewContainer *)self lockupView];
  [v9 enableAppearanceForView:v14];
}

@end