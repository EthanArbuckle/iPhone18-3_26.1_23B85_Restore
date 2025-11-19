@interface SBHIconViewContextMenuWrapperViewController
- (void)_applyContinuousCornerRadius;
- (void)_applyPreferredContentSizeChange:(CGSize)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setContentViewController:(id)a3;
- (void)setContinuousCornerRadius:(double)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SBHIconViewContextMenuWrapperViewController

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = SBHIconViewContextMenuWrapperViewController;
  [(SBHIconViewContextMenuWrapperViewController *)&v14 viewDidLoad];
  v3 = [MEMORY[0x1E69AE158] materialViewWithRecipe:3];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v3;

  v5 = self->_backgroundView;
  v6 = [(SBHIconViewContextMenuWrapperViewController *)self view];
  [v6 bounds];
  [(MTMaterialView *)v5 setFrame:?];

  v7 = self->_backgroundView;
  v8 = [(SBHIconViewContextMenuWrapperViewController *)self groupNameBase];
  [(MTMaterialView *)v7 setGroupNameBase:v8];

  v9 = self->_backgroundView;
  [(SBHIconViewContextMenuWrapperViewController *)self backgroundScale];
  [(MTMaterialView *)v9 setContentScaleFactor:?];
  [(MTMaterialView *)self->_backgroundView _setLayoutDebuggingIdentifier:@"backgroundView"];
  [(MTMaterialView *)self->_backgroundView setClipsToBounds:1];
  [(MTMaterialView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(SBHIconViewContextMenuWrapperViewController *)self view];
  [v10 addSubview:self->_backgroundView];

  v11 = self->_backgroundView;
  v12 = [(SBHIconViewContextMenuWrapperViewController *)self view];
  v13 = SBHPinViewWithinView(v11, v12);

  [(SBHIconViewContextMenuWrapperViewController *)self _applyContinuousCornerRadius];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = SBHIconViewContextMenuWrapperViewController;
  [(SBHIconViewContextMenuWrapperViewController *)&v3 viewWillAppear:a3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = SBHIconViewContextMenuWrapperViewController;
  [(SBHIconViewContextMenuWrapperViewController *)&v3 viewWillDisappear:a3];
}

- (void)setContentViewController:(id)a3
{
  v5 = a3;
  if (self->_contentViewController != v5)
  {
    v11 = v5;
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_layoutConstraints];
    layoutConstraints = self->_layoutConstraints;
    self->_layoutConstraints = 0;

    v7 = [(SBHIconViewContextMenuWrapperViewController *)self view];
    v8 = [(UIViewController *)v11 view];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBHIconViewContextMenuWrapperViewController *)self bs_removeChildViewController:self->_contentViewController];
    objc_storeStrong(&self->_contentViewController, a3);
    if (v11)
    {
      [(UIViewController *)v11 preferredContentSize];
      [(SBHIconViewContextMenuWrapperViewController *)self _applyPreferredContentSizeChange:?];
      [(SBHIconViewContextMenuWrapperViewController *)self bs_addChildViewController:self->_contentViewController withSuperview:v7];
      [v7 bringSubviewToFront:v8];
      v9 = SBHPinViewWithinView(v8, v7);
      v10 = self->_layoutConstraints;
      self->_layoutConstraints = v9;
    }

    [(SBHIconViewContextMenuWrapperViewController *)self _applyContinuousCornerRadius];

    v5 = v11;
  }
}

- (void)setContinuousCornerRadius:(double)a3
{
  self->_continuousCornerRadius = a3;
  if ([(SBHIconViewContextMenuWrapperViewController *)self isViewLoaded])
  {

    [(SBHIconViewContextMenuWrapperViewController *)self _applyContinuousCornerRadius];
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBHIconViewContextMenuWrapperViewController;
  [(SBHIconViewContextMenuWrapperViewController *)&v13 preferredContentSizeDidChangeForChildContentContainer:v4];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __101__SBHIconViewContextMenuWrapperViewController_preferredContentSizeDidChangeForChildContentContainer___block_invoke;
  v10 = &unk_1E8088F18;
  v11 = self;
  v5 = v4;
  v12 = v5;
  v6 = _Block_copy(&v7);
  if ([(SBHIconViewContextMenuWrapperViewController *)self isViewLoaded:v7])
  {
    [MEMORY[0x1E69DD250] _animateUsingSpringWithDampingRatio:0 response:v6 tracking:0 initialDampingRatio:1.0 initialResponse:0.34024 dampingRatioSmoothing:0.0 responseSmoothing:0.0 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  }

  else
  {
    v6[2](v6);
  }
}

uint64_t __101__SBHIconViewContextMenuWrapperViewController_preferredContentSizeDidChangeForChildContentContainer___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) preferredContentSize];

  return [v1 _applyPreferredContentSizeChange:?];
}

- (void)_applyPreferredContentSizeChange:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = *(MEMORY[0x1E695F060] + 8);
  if (*MEMORY[0x1E695F060] == a3.width && v6 == height)
  {
    v8 = [(UIViewController *)self->_contentViewController view:*MEMORY[0x1E695F060]];
    [v8 systemLayoutSizeFittingSize:{398.0, 0.0}];
    width = v9;
    height = v10;
  }

  [(SBHIconViewContextMenuWrapperViewController *)self setPreferredContentSize:width, height];
  v11 = [(UIViewController *)self->_contentViewController view];
  [v11 frame];
  v13 = v12;
  v15 = v14;

  v16 = [(UIViewController *)self->_contentViewController view];
  [v16 setFrame:{v13, v15, width, height}];

  [(MTMaterialView *)self->_backgroundView frame];
  [(MTMaterialView *)self->_backgroundView setFrame:?];
  v17 = [(SBHIconViewContextMenuWrapperViewController *)self view];
  [v17 frame];
  [v17 setFrame:?];
  [v17 setNeedsLayout];
  [v17 layoutIfNeeded];
}

- (void)_applyContinuousCornerRadius
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(SBHIconViewContextMenuWrapperViewController *)self isViewLoaded])
  {
    [(SBHIconViewContextMenuWrapperViewController *)self continuousCornerRadius];
    v4 = v3;
    v5 = objc_opt_new();
    v6 = [(SBHIconViewContextMenuWrapperViewController *)self view];
    [v5 bs_safeAddObject:v6];

    v7 = [(SBHIconViewContextMenuWrapperViewController *)self contentViewController];
    v8 = [v7 view];
    [v5 bs_safeAddObject:v8];

    [v5 bs_safeAddObject:self->_backgroundView];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * v13++) _setContinuousCornerRadius:{v4, v14}];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

@end