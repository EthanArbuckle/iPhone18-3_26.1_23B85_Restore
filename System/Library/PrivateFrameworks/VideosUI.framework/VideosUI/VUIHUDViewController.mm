@interface VUIHUDViewController
- (CGSize)_computePreferredContentSize;
- (CGSize)_resolvedPlayerViewSize;
- (CGSize)playerViewSize;
- (VUIHUDViewController)init;
- (void)_addViewControllerToHud;
- (void)addBorderWithColor:(id)a3 width:(double)a4 cornerRadius:(double)a5;
- (void)dealloc;
- (void)setHudContentViewController:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation VUIHUDViewController

- (VUIHUDViewController)init
{
  v7.receiver = self;
  v7.super_class = VUIHUDViewController;
  v2 = [(VUIHUDViewController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_tabIndex = -1;
    tabIdentifier = v2->_tabIdentifier;
    v2->_tabIdentifier = &stru_1F5DB25C0;

    hudContentViewController = v3->_hudContentViewController;
    v3->_hudContentViewController = 0;
  }

  [(VUIHUDViewController *)v3 setOverrideUserInterfaceStyle:2];
  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VUIHUDViewController;
  [(VUIHUDViewController *)&v2 dealloc];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = VUIHUDViewController;
  [(VUIHUDViewController *)&v5 viewDidLoad];
  v3 = [(VUIHUDViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];
}

- (void)setHudContentViewController:(id)a3
{
  objc_storeStrong(&self->_hudContentViewController, a3);

  [(VUIHUDViewController *)self _addViewControllerToHud];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(VUIHUDViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = self->_hudContentViewController;
  v13 = MEMORY[0x1E69DD250];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__VUIHUDViewController_viewDidLayoutSubviews__block_invoke;
  v15[3] = &unk_1E87311F8;
  v16 = v12;
  v17 = v5;
  v18 = v7;
  v19 = v9;
  v20 = v11;
  v14 = v12;
  [v13 performWithoutAnimation:v15];
}

void __45__VUIHUDViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (void)_addViewControllerToHud
{
  v3 = self->_hudContentViewController;
  if (v3)
  {
    v8 = v3;
    v4 = [(UIViewController *)v3 parentViewController];

    v3 = v8;
    if (v4 != self)
    {
      [(VUIHUDViewController *)self addChildViewController:v8];
      v5 = [(VUIHUDViewController *)self view];
      v6 = [(UIViewController *)v8 view];
      [v5 addSubview:v6];

      v7 = [(VUIHUDViewController *)self view];
      [v7 setClipsToBounds:0];

      [(UIViewController *)v8 didMoveToParentViewController:self];
      v3 = v8;
    }
  }
}

- (CGSize)_computePreferredContentSize
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DD2E8];
  [(VUIHUDViewController *)self _resolvedPlayerViewSize];
  v4 = [v3 vui_currentSizeClassForWindowWidth:?];
  [(VUIHUDViewController *)self _resolvedPlayerViewSize];
  v5 = [VUIUtilities shouldPlayerTabsUseVerticalLayoutForSize:v4 < 3 isPhoneSizeClass:?];
  if (v5)
  {
    v6 = 1.79769313e308;
  }

  else if (+[VUIUtilities isIpadInterface])
  {
    v6 = 220.0;
  }

  else
  {
    v6 = 160.0;
  }

  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(VUIHUDViewController *)self tabIdentifier];
    [(VUIHUDViewController *)self _resolvedPlayerViewSize];
    v9 = NSStringFromCGSize(v26);
    v27.width = 0.0;
    v27.height = v6;
    v10 = NSStringFromCGSize(v27);
    v13 = 134219266;
    v14 = self;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2048;
    v20 = v4;
    v21 = 1024;
    v22 = v5;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIHUDViewController::(%p, %@) computePreferredContentSize, playerViewSize: %@, sizeClass: %ld, useVerticalLayout: %d, result: %@", &v13, 0x3Au);
  }

  v11 = 0.0;
  v12 = v6;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)_resolvedPlayerViewSize
{
  v2 = +[VUITVAppLauncher sharedInstance];
  v3 = [v2 appWindow];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)addBorderWithColor:(id)a3 width:(double)a4 cornerRadius:(double)a5
{
  v8 = a3;
  v9 = [(VUIHUDViewController *)self view];
  v10 = [v9 layer];
  v11 = [v8 CGColor];

  [v10 setBorderColor:v11];
  v12 = [(VUIHUDViewController *)self view];
  v13 = [v12 layer];
  [v13 setBorderWidth:a4];

  v14 = [(VUIHUDViewController *)self view];
  v15 = [v14 layer];
  [v15 setCornerRadius:a5];

  v17 = [(VUIHUDViewController *)self view];
  v16 = [v17 layer];
  [v16 setMasksToBounds:1];
}

- (CGSize)playerViewSize
{
  width = self->_playerViewSize.width;
  height = self->_playerViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end