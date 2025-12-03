@interface SearchUILockupViewContainer
- (SearchUILockupViewContainer)initWithLockupView:(id)view;
- (void)didMoveToWindow;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SearchUILockupViewContainer

- (SearchUILockupViewContainer)initWithLockupView:(id)view
{
  v10[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v10[0] = viewCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v9.receiver = self;
  v9.super_class = SearchUILockupViewContainer;
  v7 = [(NUIContainerBoxView *)&v9 initWithArrangedSubviews:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_lockupView, view);
  }

  return v7;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SearchUILockupViewContainer;
  [(SearchUILockupViewContainer *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SearchUILockupViewContainer *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SearchUILockupViewContainer *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SearchUILockupViewContainer *)self traitCollection];
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
  v3.super_class = SearchUILockupViewContainer;
  [(SearchUILockupViewContainer *)&v3 didMoveToWindow];
  [(SearchUILockupViewContainer *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v15.receiver = self;
  v15.super_class = SearchUILockupViewContainer;
  [(SearchUILockupViewContainer *)&v15 tlk_updateForAppearance:appearanceCopy];
  isVibrant = [appearanceCopy isVibrant];
  if (isVibrant)
  {
    v11 = objc_alloc(MEMORY[0x1E698B3E8]);
    quaternaryColor = [appearanceCopy quaternaryColor];
    secondaryButtonColor = [appearanceCopy secondaryButtonColor];
    secondaryColor = [appearanceCopy secondaryColor];
    secondaryButtonColor2 = [appearanceCopy secondaryButtonColor];
    tertiaryColor = [appearanceCopy tertiaryColor];
    v12 = [v11 initWithTitleBackgroundColor:quaternaryColor titleTextColor:secondaryButtonColor subtitleTextColor:secondaryColor iconTintColor:secondaryButtonColor2 progressColor:tertiaryColor];
  }

  else
  {
    v12 = 0;
  }

  lockupView = [(SearchUILockupViewContainer *)self lockupView];
  [lockupView setOfferTheme:v12];

  if (isVibrant)
  {
  }

  lockupView2 = [(SearchUILockupViewContainer *)self lockupView];
  [appearanceCopy enableAppearanceForView:lockupView2];
}

@end