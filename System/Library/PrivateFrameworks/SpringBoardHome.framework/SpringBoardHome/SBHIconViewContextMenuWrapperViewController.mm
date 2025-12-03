@interface SBHIconViewContextMenuWrapperViewController
- (void)_applyContinuousCornerRadius;
- (void)_applyPreferredContentSizeChange:(CGSize)change;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setContentViewController:(id)controller;
- (void)setContinuousCornerRadius:(double)radius;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
  view = [(SBHIconViewContextMenuWrapperViewController *)self view];
  [view bounds];
  [(MTMaterialView *)v5 setFrame:?];

  v7 = self->_backgroundView;
  groupNameBase = [(SBHIconViewContextMenuWrapperViewController *)self groupNameBase];
  [(MTMaterialView *)v7 setGroupNameBase:groupNameBase];

  v9 = self->_backgroundView;
  [(SBHIconViewContextMenuWrapperViewController *)self backgroundScale];
  [(MTMaterialView *)v9 setContentScaleFactor:?];
  [(MTMaterialView *)self->_backgroundView _setLayoutDebuggingIdentifier:@"backgroundView"];
  [(MTMaterialView *)self->_backgroundView setClipsToBounds:1];
  [(MTMaterialView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(SBHIconViewContextMenuWrapperViewController *)self view];
  [view2 addSubview:self->_backgroundView];

  v11 = self->_backgroundView;
  view3 = [(SBHIconViewContextMenuWrapperViewController *)self view];
  v13 = SBHPinViewWithinView(v11, view3);

  [(SBHIconViewContextMenuWrapperViewController *)self _applyContinuousCornerRadius];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = SBHIconViewContextMenuWrapperViewController;
  [(SBHIconViewContextMenuWrapperViewController *)&v3 viewWillAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = SBHIconViewContextMenuWrapperViewController;
  [(SBHIconViewContextMenuWrapperViewController *)&v3 viewWillDisappear:disappear];
}

- (void)setContentViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_contentViewController != controllerCopy)
  {
    v11 = controllerCopy;
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_layoutConstraints];
    layoutConstraints = self->_layoutConstraints;
    self->_layoutConstraints = 0;

    view = [(SBHIconViewContextMenuWrapperViewController *)self view];
    view2 = [(UIViewController *)v11 view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBHIconViewContextMenuWrapperViewController *)self bs_removeChildViewController:self->_contentViewController];
    objc_storeStrong(&self->_contentViewController, controller);
    if (v11)
    {
      [(UIViewController *)v11 preferredContentSize];
      [(SBHIconViewContextMenuWrapperViewController *)self _applyPreferredContentSizeChange:?];
      [(SBHIconViewContextMenuWrapperViewController *)self bs_addChildViewController:self->_contentViewController withSuperview:view];
      [view bringSubviewToFront:view2];
      v9 = SBHPinViewWithinView(view2, view);
      v10 = self->_layoutConstraints;
      self->_layoutConstraints = v9;
    }

    [(SBHIconViewContextMenuWrapperViewController *)self _applyContinuousCornerRadius];

    controllerCopy = v11;
  }
}

- (void)setContinuousCornerRadius:(double)radius
{
  self->_continuousCornerRadius = radius;
  if ([(SBHIconViewContextMenuWrapperViewController *)self isViewLoaded])
  {

    [(SBHIconViewContextMenuWrapperViewController *)self _applyContinuousCornerRadius];
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  v13.receiver = self;
  v13.super_class = SBHIconViewContextMenuWrapperViewController;
  [(SBHIconViewContextMenuWrapperViewController *)&v13 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __101__SBHIconViewContextMenuWrapperViewController_preferredContentSizeDidChangeForChildContentContainer___block_invoke;
  v10 = &unk_1E8088F18;
  selfCopy = self;
  v5 = containerCopy;
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

- (void)_applyPreferredContentSizeChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  v6 = *(MEMORY[0x1E695F060] + 8);
  if (*MEMORY[0x1E695F060] == change.width && v6 == height)
  {
    v8 = [(UIViewController *)self->_contentViewController view:*MEMORY[0x1E695F060]];
    [v8 systemLayoutSizeFittingSize:{398.0, 0.0}];
    width = v9;
    height = v10;
  }

  [(SBHIconViewContextMenuWrapperViewController *)self setPreferredContentSize:width, height];
  view = [(UIViewController *)self->_contentViewController view];
  [view frame];
  v13 = v12;
  v15 = v14;

  view2 = [(UIViewController *)self->_contentViewController view];
  [view2 setFrame:{v13, v15, width, height}];

  [(MTMaterialView *)self->_backgroundView frame];
  [(MTMaterialView *)self->_backgroundView setFrame:?];
  view3 = [(SBHIconViewContextMenuWrapperViewController *)self view];
  [view3 frame];
  [view3 setFrame:?];
  [view3 setNeedsLayout];
  [view3 layoutIfNeeded];
}

- (void)_applyContinuousCornerRadius
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(SBHIconViewContextMenuWrapperViewController *)self isViewLoaded])
  {
    [(SBHIconViewContextMenuWrapperViewController *)self continuousCornerRadius];
    v4 = v3;
    v5 = objc_opt_new();
    view = [(SBHIconViewContextMenuWrapperViewController *)self view];
    [v5 bs_safeAddObject:view];

    contentViewController = [(SBHIconViewContextMenuWrapperViewController *)self contentViewController];
    view2 = [contentViewController view];
    [v5 bs_safeAddObject:view2];

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