@interface SPUIPlatterContainerViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview;
- (SPUIPlatterContainerViewController)initWithNavigationController:(id)controller;
- (UIEdgeInsets)layoutMarginsForContainer;
- (void)containerViewDidLayoutArrangedSubviews:(id)subviews;
- (void)dealloc;
- (void)navigationViewDidInvalidateSizeAnimated:(BOOL)animated;
@end

@implementation SPUIPlatterContainerViewController

- (SPUIPlatterContainerViewController)initWithNavigationController:(id)controller
{
  v38[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v37.receiver = self;
  v37.super_class = SPUIPlatterContainerViewController;
  v5 = [(SPUIPlatterContainerViewController *)&v37 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(SPUIPlatterContainerViewController *)v5 setNavController:controllerCopy];
    navController = [(SPUIPlatterContainerViewController *)v6 navController];
    [navController setSizingDelegate:v6];

    [(SPUIPlatterContainerViewController *)v6 addChildViewController:controllerCopy];
    if (_UISolariumEnabled())
    {
      v8 = [SPUIGlassView alloc];
      v9 = [(SPUIGlassView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      view = [controllerCopy view];
      [(SPUIGlassView *)v9 addSubview:view];

      layer = [(SPUIGlassView *)v9 layer];
      [layer setMasksToBounds:1];

      navController2 = [(SPUIPlatterContainerViewController *)v6 navController];
      view2 = [navController2 view];
      [view2 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];

      [(SPUIGlassView *)v9 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
    }

    else
    {
      v14 = [SPUIBorderedVisualEffectView alloc];
      v15 = [MEMORY[0x277D75210] effectWithStyle:8];
      v9 = [(SPUIBorderedVisualEffectView *)v14 initWithEffect:v15];

      contentView = [(SPUIGlassView *)v9 contentView];
      view3 = [controllerCopy view];
      [contentView addSubview:view3];

      [(SPUIGlassView *)v9 _setContinuousCornerRadius:20.0];
      contentView2 = [(SPUIGlassView *)v9 contentView];
      [contentView2 _setContinuousCornerRadius:20.0];

      contentView3 = [(SPUIGlassView *)v9 contentView];
      layer2 = [contentView3 layer];
      [layer2 setMasksToBounds:1];

      navController3 = [(SPUIPlatterContainerViewController *)v6 navController];
      view4 = [navController3 view];
      [view4 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];

      contentView4 = [(SPUIGlassView *)v9 contentView];
      [contentView4 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
    }

    [(SPUIPlatterContainerViewController *)v6 setMaterialPlatterView:v9];
    [MEMORY[0x277D6F1B8] requireIntrinsicSizeForView:v9];
    v24 = objc_opt_new();
    [(SPUIPlatterContainerViewController *)v6 setPlatterBackgroundView:v24];
    [MEMORY[0x277D6F1B8] requireIntrinsicSizeForView:v24];
    v25 = [SPUIBoxView alloc];
    v38[0] = v24;
    v38[1] = v9;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v27 = [(NUIContainerBoxView *)v25 initWithArrangedSubviews:v26];
    [(SPUIPlatterContainerViewController *)v6 setView:v27];

    view5 = [(SPUIPlatterContainerViewController *)v6 view];
    [view5 setInsetsLayoutMarginsFromSafeArea:0];

    view6 = [(SPUIPlatterContainerViewController *)v6 view];
    [view6 setLayoutMarginsRelativeArrangement:1];

    view7 = [(SPUIPlatterContainerViewController *)v6 view];
    [view7 setVerticalAlignment:1];

    view8 = [(SPUIPlatterContainerViewController *)v6 view];
    [view8 setHorizontalAlignment:3];

    view9 = [(SPUIPlatterContainerViewController *)v6 view];
    [view9 setDelegate:v6];

    [(SPUIPlatterContainerViewController *)v6 hardwareKeyboardAvailabilityChangedAnimated:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D0EEA0]];
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, HardwareKeyboardAvailabilityChanged, v34, 0, 0);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v6;
}

void __82__SPUIPlatterContainerViewController_hardwareKeyboardAvailabilityChangedAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) view];
  [v6 setLayoutMargins:{v2, v3, v4, v5}];

  v7 = [*(a1 + 32) view];
  [v7 layoutIfNeeded];
}

- (void)navigationViewDidInvalidateSizeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__SPUIPlatterContainerViewController_navigationViewDidInvalidateSizeAnimated___block_invoke;
  aBlock[3] = &unk_279D06C78;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (animatedCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __78__SPUIPlatterContainerViewController_navigationViewDidInvalidateSizeAnimated___block_invoke_2;
    v6[3] = &unk_279D06F38;
    v7 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }

  else
  {
    v4[2](v4);
  }
}

void __78__SPUIPlatterContainerViewController_navigationViewDidInvalidateSizeAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navController];
  v3 = [v2 view];
  [v3 invalidateIntrinsicContentSize];

  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];
}

void __78__SPUIPlatterContainerViewController_navigationViewDidInvalidateSizeAnimated___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277D4C898];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __78__SPUIPlatterContainerViewController_navigationViewDidInvalidateSizeAnimated___block_invoke_3;
  v2[3] = &unk_279D06F38;
  v3 = *(a1 + 32);
  [v1 performAnimatableChanges:v2];
}

- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview
{
  subviewCopy = subview;
  materialPlatterView = [(SPUIPlatterContainerViewController *)self materialPlatterView];
  v8 = materialPlatterView;
  if (materialPlatterView == subviewCopy)
  {

    goto LABEL_5;
  }

  platterBackgroundView = [(SPUIPlatterContainerViewController *)self platterBackgroundView];

  if (platterBackgroundView == subviewCopy)
  {
LABEL_5:
    [MEMORY[0x277D4C818] idealPlatterWidth];
    v10 = v12;
    navController = [(SPUIPlatterContainerViewController *)self navController];
    [navController contentHeight];
    v11 = v14;

    goto LABEL_6;
  }

  v10 = *MEMORY[0x277CEC620];
  v11 = *(MEMORY[0x277CEC620] + 8);
LABEL_6:

  v15 = v10;
  v16 = v11;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)containerViewDidLayoutArrangedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  view = [(SPUIPlatterContainerViewController *)self view];

  if (view == subviewsCopy)
  {
    materialPlatterView = [(SPUIPlatterContainerViewController *)self materialPlatterView];
    [materialPlatterView bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [subviewsCopy bounds];
    v13 = v12;
    [subviewsCopy layoutMargins];
    v15 = v13 - v14;
    [subviewsCopy layoutMargins];
    v17 = v15 - v16;
    navController = [(SPUIPlatterContainerViewController *)self navController];
    view2 = [navController view];
    [view2 frame];
    v34.origin.x = v7;
    v34.origin.y = v9;
    v34.size.width = v11;
    v34.size.height = v17;
    v20 = CGRectEqualToRect(v33, v34);

    if (!v20)
    {
      navController2 = [(SPUIPlatterContainerViewController *)self navController];
      view3 = [navController2 view];
      [view3 setFrame:{v7, v9, v11, v17}];
    }

    if (_UISolariumEnabled())
    {
      navController3 = [(SPUIPlatterContainerViewController *)self navController];
      [navController3 heightOfNavigationBar];
      v25 = v24 * 0.5;
      materialPlatterView2 = [(SPUIPlatterContainerViewController *)self materialPlatterView];
      [materialPlatterView2 _setContinuousCornerRadius:v25];

      materialPlatterView3 = [(SPUIPlatterContainerViewController *)self materialPlatterView];
      [materialPlatterView3 _continuousCornerRadius];
      v29 = v28;
      platterBackgroundView = [(SPUIPlatterContainerViewController *)self platterBackgroundView];
      [platterBackgroundView _setContinuousCornerRadius:v29];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  materialPlatterView = [(SPUIPlatterContainerViewController *)self materialPlatterView];
  [beginCopy locationInView:materialPlatterView];
  v7 = v6;
  v9 = v8;

  materialPlatterView2 = [(SPUIPlatterContainerViewController *)self materialPlatterView];
  [materialPlatterView2 bounds];
  v12.x = v7;
  v12.y = v9;
  LOBYTE(beginCopy) = CGRectContainsPoint(v13, v12);

  return beginCopy ^ 1;
}

- (UIEdgeInsets)layoutMarginsForContainer
{
  view = [(SPUIPlatterContainerViewController *)self view];
  [view layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D0EEA0]];
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);

  v5.receiver = self;
  v5.super_class = SPUIPlatterContainerViewController;
  [(SPUIPlatterContainerViewController *)&v5 dealloc];
}

@end