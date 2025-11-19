@interface SPUIPlatterContainerViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5;
- (SPUIPlatterContainerViewController)initWithNavigationController:(id)a3;
- (UIEdgeInsets)layoutMarginsForContainer;
- (void)containerViewDidLayoutArrangedSubviews:(id)a3;
- (void)dealloc;
- (void)navigationViewDidInvalidateSizeAnimated:(BOOL)a3;
@end

@implementation SPUIPlatterContainerViewController

- (SPUIPlatterContainerViewController)initWithNavigationController:(id)a3
{
  v38[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = SPUIPlatterContainerViewController;
  v5 = [(SPUIPlatterContainerViewController *)&v37 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(SPUIPlatterContainerViewController *)v5 setNavController:v4];
    v7 = [(SPUIPlatterContainerViewController *)v6 navController];
    [v7 setSizingDelegate:v6];

    [(SPUIPlatterContainerViewController *)v6 addChildViewController:v4];
    if (_UISolariumEnabled())
    {
      v8 = [SPUIGlassView alloc];
      v9 = [(SPUIGlassView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      v10 = [v4 view];
      [(SPUIGlassView *)v9 addSubview:v10];

      v11 = [(SPUIGlassView *)v9 layer];
      [v11 setMasksToBounds:1];

      v12 = [(SPUIPlatterContainerViewController *)v6 navController];
      v13 = [v12 view];
      [v13 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];

      [(SPUIGlassView *)v9 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
    }

    else
    {
      v14 = [SPUIBorderedVisualEffectView alloc];
      v15 = [MEMORY[0x277D75210] effectWithStyle:8];
      v9 = [(SPUIBorderedVisualEffectView *)v14 initWithEffect:v15];

      v16 = [(SPUIGlassView *)v9 contentView];
      v17 = [v4 view];
      [v16 addSubview:v17];

      [(SPUIGlassView *)v9 _setContinuousCornerRadius:20.0];
      v18 = [(SPUIGlassView *)v9 contentView];
      [v18 _setContinuousCornerRadius:20.0];

      v19 = [(SPUIGlassView *)v9 contentView];
      v20 = [v19 layer];
      [v20 setMasksToBounds:1];

      v21 = [(SPUIPlatterContainerViewController *)v6 navController];
      v22 = [v21 view];
      [v22 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];

      v23 = [(SPUIGlassView *)v9 contentView];
      [v23 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
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

    v28 = [(SPUIPlatterContainerViewController *)v6 view];
    [v28 setInsetsLayoutMarginsFromSafeArea:0];

    v29 = [(SPUIPlatterContainerViewController *)v6 view];
    [v29 setLayoutMarginsRelativeArrangement:1];

    v30 = [(SPUIPlatterContainerViewController *)v6 view];
    [v30 setVerticalAlignment:1];

    v31 = [(SPUIPlatterContainerViewController *)v6 view];
    [v31 setHorizontalAlignment:3];

    v32 = [(SPUIPlatterContainerViewController *)v6 view];
    [v32 setDelegate:v6];

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

- (void)navigationViewDidInvalidateSizeAnimated:(BOOL)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__SPUIPlatterContainerViewController_navigationViewDidInvalidateSizeAnimated___block_invoke;
  aBlock[3] = &unk_279D06C78;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (v3)
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

- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5
{
  v6 = a5;
  v7 = [(SPUIPlatterContainerViewController *)self materialPlatterView];
  v8 = v7;
  if (v7 == v6)
  {

    goto LABEL_5;
  }

  v9 = [(SPUIPlatterContainerViewController *)self platterBackgroundView];

  if (v9 == v6)
  {
LABEL_5:
    [MEMORY[0x277D4C818] idealPlatterWidth];
    v10 = v12;
    v13 = [(SPUIPlatterContainerViewController *)self navController];
    [v13 contentHeight];
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

- (void)containerViewDidLayoutArrangedSubviews:(id)a3
{
  v31 = a3;
  v4 = [(SPUIPlatterContainerViewController *)self view];

  if (v4 == v31)
  {
    v5 = [(SPUIPlatterContainerViewController *)self materialPlatterView];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v31 bounds];
    v13 = v12;
    [v31 layoutMargins];
    v15 = v13 - v14;
    [v31 layoutMargins];
    v17 = v15 - v16;
    v18 = [(SPUIPlatterContainerViewController *)self navController];
    v19 = [v18 view];
    [v19 frame];
    v34.origin.x = v7;
    v34.origin.y = v9;
    v34.size.width = v11;
    v34.size.height = v17;
    v20 = CGRectEqualToRect(v33, v34);

    if (!v20)
    {
      v21 = [(SPUIPlatterContainerViewController *)self navController];
      v22 = [v21 view];
      [v22 setFrame:{v7, v9, v11, v17}];
    }

    if (_UISolariumEnabled())
    {
      v23 = [(SPUIPlatterContainerViewController *)self navController];
      [v23 heightOfNavigationBar];
      v25 = v24 * 0.5;
      v26 = [(SPUIPlatterContainerViewController *)self materialPlatterView];
      [v26 _setContinuousCornerRadius:v25];

      v27 = [(SPUIPlatterContainerViewController *)self materialPlatterView];
      [v27 _continuousCornerRadius];
      v29 = v28;
      v30 = [(SPUIPlatterContainerViewController *)self platterBackgroundView];
      [v30 _setContinuousCornerRadius:v29];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(SPUIPlatterContainerViewController *)self materialPlatterView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(SPUIPlatterContainerViewController *)self materialPlatterView];
  [v10 bounds];
  v12.x = v7;
  v12.y = v9;
  LOBYTE(v4) = CGRectContainsPoint(v13, v12);

  return v4 ^ 1;
}

- (UIEdgeInsets)layoutMarginsForContainer
{
  v2 = [(SPUIPlatterContainerViewController *)self view];
  [v2 layoutMargins];
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