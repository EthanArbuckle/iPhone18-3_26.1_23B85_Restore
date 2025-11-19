@interface SBHAddWidgetDetailsSheetPageViewController
- (BOOL)isJumpAnimationInProgress;
- (CGAffineTransform)wrapperViewTransform;
- (CGSize)_widgetPadding;
- (SBHAddWidgetDetailsSheetPageViewController)initWithWidgetWrapperViewController:(id)a3;
- (SBHAddWidgetDetailsSheetPageViewControllerDelegate)delegate;
- (SBHPadAddWidgetSheetMetrics)addWidgetSheetMetrics;
- (SBHWidgetDragHandling)widgetDragHandler;
- (id)backgroundViewMatchingMaterialBeneathWrapperViewController:(id)a3;
- (void)_createConstraints;
- (void)_createSizeConstraintsForWrapperView:(id)a3;
- (void)_createViews;
- (void)_pauseLayer:(id)a3;
- (void)_resumeLayer:(id)a3;
- (void)_updateWidgetScale;
- (void)configureBackgroundView:(id)a3 matchingMaterialBeneathWrapperViewController:(id)a4;
- (void)loadView;
- (void)setAddWidgetSheetMetrics:(SBHPadAddWidgetSheetMetrics *)a3;
- (void)setContentVisibility:(unint64_t)a3;
- (void)setJumpAnimationInProgress:(BOOL)a3;
- (void)setScale:(double)a3;
- (void)updateParallaxEffectInReferenceView:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation SBHAddWidgetDetailsSheetPageViewController

- (SBHAddWidgetDetailsSheetPageViewController)initWithWidgetWrapperViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBHAddWidgetDetailsSheetPageViewController;
  v6 = [(SBHAddWidgetDetailsSheetPageViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_widgetWrapperViewController, a3);
    [v5 setDelegate:v7];
  }

  return v7;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = SBHAddWidgetDetailsSheetPageViewController;
  [(SBHAddWidgetDetailsSheetPageViewController *)&v3 loadView];
  [(SBHAddWidgetDetailsSheetPageViewController *)self _createViews];
  [(SBHAddWidgetDetailsSheetPageViewController *)self _createConstraints];
}

- (void)_createViews
{
  v3 = [(SBHAddWidgetDetailsSheetPageViewController *)self view];
  widgetWrapperViewController = self->_widgetWrapperViewController;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__SBHAddWidgetDetailsSheetPageViewController__createViews__block_invoke;
  v6[3] = &unk_1E8092288;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [(SBHAddWidgetDetailsSheetPageViewController *)self bs_addChildViewController:widgetWrapperViewController animated:0 transitionBlock:v6];
}

void __58__SBHAddWidgetDetailsSheetPageViewController__createViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 992);
  v4 = a2;
  [v3 setForcesEdgeAntialiasing:1];
  v5 = [*(*(a1 + 32) + 992) wrapperView];
  [v5 setHoverAnimationEnabled:!UIAccessibilityIsReduceMotionEnabled()];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(a1 + 40) addSubview:v5];
  [*(a1 + 32) _createSizeConstraintsForWrapperView:v5];
  v4[2](v4);
}

- (void)_createConstraints
{
  v28[6] = *MEMORY[0x1E69E9840];
  v3 = [(SBHAddWidgetDetailsSheetPageViewController *)self view];
  v4 = [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController view];
  v5 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  layoutGuide = self->_layoutGuide;
  self->_layoutGuide = v5;

  [v3 addLayoutGuide:self->_layoutGuide];
  v20 = MEMORY[0x1E696ACD8];
  v27 = [(UILayoutGuide *)self->_layoutGuide topAnchor];
  v26 = [v3 topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v28[0] = v25;
  v24 = [(UILayoutGuide *)self->_layoutGuide bottomAnchor];
  v23 = [v3 bottomAnchor];
  v22 = [v24 constraintEqualToAnchor:v23 constant:0.0];
  v28[1] = v22;
  v21 = [(UILayoutGuide *)self->_layoutGuide leadingAnchor];
  v19 = [v3 leadingAnchor];
  v18 = [v21 constraintEqualToAnchor:v19];
  v28[2] = v18;
  v16 = [(UILayoutGuide *)self->_layoutGuide trailingAnchor];
  v7 = [v3 trailingAnchor];
  v8 = [v16 constraintEqualToAnchor:v7 constant:0.0];
  v28[3] = v8;
  v17 = v4;
  v9 = [v4 centerXAnchor];
  v10 = [v3 centerXAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v28[4] = v11;
  v12 = [v4 centerYAnchor];
  v13 = [(UILayoutGuide *)self->_layoutGuide centerYAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v28[5] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:6];
  [v20 activateConstraints:v15];
}

- (void)setContentVisibility:(unint64_t)a3
{
  if (self->_contentVisibility != a3)
  {
    self->_contentVisibility = a3;
    [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController setContentVisibility:?];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBHAddWidgetDetailsSheetPageViewController;
  [(SBHAddWidgetDetailsSheetPageViewController *)&v3 viewDidLayoutSubviews];
  [(SBHAddWidgetDetailsSheetPageViewController *)self _updateWidgetScale];
  [(SBHAddWidgetDetailsSheetPageViewController *)self updateParallaxEffectInReferenceView:self->_referenceView];
}

- (void)setJumpAnimationInProgress:(BOOL)a3
{
  v3 = a3;
  v6 = [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController view];
  v5 = [v6 layer];
  if (v3)
  {
    [(SBHAddWidgetDetailsSheetPageViewController *)self _pauseLayer:v5];
  }

  else
  {
    [(SBHAddWidgetDetailsSheetPageViewController *)self _resumeLayer:v5];
  }

  [v6 setHidden:v3];
}

- (BOOL)isJumpAnimationInProgress
{
  v2 = [(SBHAddWidgetDetailsSheetPageViewController *)self widgetWrapperViewController];
  v3 = [v2 view];
  v4 = [v3 isHidden];

  return v4;
}

- (void)updateParallaxEffectInReferenceView:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_referenceView, a3);
  if (self->_referenceView)
  {
    v6 = [(SBHAddWidgetDetailsSheetPageViewController *)self view];
    v7 = [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController view];
    [v6 bounds];
    [v5 convertRect:v6 fromView:?];
    v10 = (v8 + v9 + v8 + v9) / (v9 + v9) + -1.0;
    v11 = [(SBHAddWidgetDetailsSheetPageViewController *)self addWidgetSheetStyle];
    scale = self->_scale;
    if (v11 == 1)
    {
      scale = fmin(fmax(scale * (1.0 - fabs(v10)), 0.00000001), 1.0);
    }

    memset(&v22, 0, sizeof(v22));
    CGAffineTransformMakeScale(&v22, scale, scale);
    [v7 bounds];
    v21 = v22;
    v24 = CGRectApplyAffineTransform(v23, &v21);
    width = v24.size.width;
    [v7 center];
    v15 = v14 + width * -0.5;
    [(SBHAddWidgetDetailsSheetPageViewController *)self _widgetPadding];
    v17 = width - v16;
    if (v11 != 1)
    {
      v17 = 10.0;
    }

    memset(&v21, 0, sizeof(v21));
    CGAffineTransformMakeTranslation(&v21, -1.0 / scale * (v15 + v17) * v10, 0.0);
    t1 = v21;
    memset(&v20, 0, sizeof(v20));
    v18 = v22;
    CGAffineTransformConcat(&v20, &t1, &v18);
    t1 = v20;
    [v7 setTransform:&t1];
  }
}

- (CGAffineTransform)wrapperViewTransform
{
  v4 = [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController view];
  if (v4)
  {
    v6 = v4;
    [v4 transform];
    v4 = v6;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)setScale:(double)a3
{
  if (self->_scale != a3)
  {
    self->_scale = a3;
    [(SBHAddWidgetDetailsSheetPageViewController *)self updateParallaxEffectInReferenceView:self->_referenceView];
  }
}

- (CGSize)_widgetPadding
{
  if ([(SBHAddWidgetDetailsSheetPageViewController *)self addWidgetSheetStyle]== 1)
  {
    [(SBHAddWidgetDetailsSheetPageViewController *)self addWidgetSheetMetrics];
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v4 = 30.0;
    v3 = 45.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_updateWidgetScale
{
  if ([(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController selectedSizeClass]<= 1)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.9;
  }

  v16 = [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController view];
  [(SBHAddWidgetDetailsSheetPageViewController *)self _widgetPadding];
  v5 = v4;
  v7 = v6;
  [(UILayoutGuide *)self->_layoutGuide layoutFrame];
  v9 = v8 + v7 * -2.0;
  [v16 bounds];
  v11 = v9 / v10;
  [(UILayoutGuide *)self->_layoutGuide layoutFrame];
  v13 = v12 + v5 * -2.0;
  [v16 bounds];
  v15 = v13 / v14;
  if (v11 < v13 / v14)
  {
    v15 = v11;
  }

  if (v15 >= v3)
  {
    v15 = v3;
  }

  [(SBHAddWidgetDetailsSheetPageViewController *)self setScale:v15];
}

- (void)_createSizeConstraintsForWrapperView:(id)a3
{
  v27[4] = *MEMORY[0x1E69E9840];
  widgetWrapperViewController = self->_widgetWrapperViewController;
  v5 = a3;
  v6 = [(SBHWidgetWrapperViewController *)widgetWrapperViewController listLayoutProvider];
  v7 = [v6 layoutForIconLocation:@"SBIconLocationRoot"];

  v8 = SBHIconGridSizeClassForCHSWidgetFamily([(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController selectedSizeClass]);
  v9 = SBHIconListLayoutIconImageInfoForGridSizeClass(v7, v8);
  v11 = v10;
  v12 = SBHIconListLayoutIconImageInfoForGridSizeClass(v7, @"SBHIconGridSizeClassLarge");
  v14 = v13;
  v15 = [v5 widthAnchor];
  v16 = [v15 constraintEqualToConstant:v12];

  LODWORD(v17) = 1132068864;
  [v16 setPriority:v17];
  v18 = [v5 heightAnchor];
  v19 = [v18 constraintEqualToConstant:v14];

  LODWORD(v20) = 1132068864;
  [v19 setPriority:v20];
  v21 = MEMORY[0x1E696ACD8];
  v22 = [v5 widthAnchor];
  v23 = [v22 constraintGreaterThanOrEqualToConstant:v9];
  v27[0] = v23;
  v24 = [v5 heightAnchor];

  v25 = [v24 constraintGreaterThanOrEqualToConstant:v11];
  v27[1] = v25;
  v27[2] = v16;
  v27[3] = v19;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  [v21 activateConstraints:v26];
}

- (void)_pauseLayer:(id)a3
{
  v5 = a3;
  [v5 convertTime:0 fromLayer:CACurrentMediaTime()];
  v4 = v3;
  [v5 setSpeed:0.0];
  [v5 setTimeOffset:v4];
}

- (void)_resumeLayer:(id)a3
{
  v6 = a3;
  [v6 timeOffset];
  v4 = v3;
  LODWORD(v3) = 1.0;
  [v6 setSpeed:v3];
  [v6 setTimeOffset:0.0];
  [v6 setBeginTime:0.0];
  [v6 convertTime:0 fromLayer:CACurrentMediaTime()];
  [v6 setBeginTime:v5 - v4];
}

- (SBHWidgetDragHandling)widgetDragHandler
{
  v2 = [(SBHAddWidgetDetailsSheetPageViewController *)self delegate];
  v3 = [v2 widgetDragHandler];

  return v3;
}

- (id)backgroundViewMatchingMaterialBeneathWrapperViewController:(id)a3
{
  v4 = [(SBHAddWidgetDetailsSheetPageViewController *)self delegate];
  v5 = [v4 backgroundViewMatchingMaterialBeneathPageViewController:self];

  return v5;
}

- (void)configureBackgroundView:(id)a3 matchingMaterialBeneathWrapperViewController:(id)a4
{
  v5 = a3;
  v6 = [(SBHAddWidgetDetailsSheetPageViewController *)self delegate];
  [v6 configureBackgroundView:v5 matchingMaterialBeneathPageViewController:self];
}

- (SBHAddWidgetDetailsSheetPageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBHPadAddWidgetSheetMetrics)addWidgetSheetMetrics
{
  v3 = *&self[7].detailAddButtonTopSpacing;
  *&retstr->detailAddButtonTopSpacing = self[7].detailWidgetPadding;
  *&retstr->detailPageControlTopSpacing = v3;
  *&retstr->sidebarPadding.leading = *&self[7].detailPageControlTopSpacing;
  retstr->sidebarPadding.trailing = self[7].sidebarPadding.leading;
  v4 = *&self[7].trailingPadding;
  *&retstr->trailingPadding = *&self[7].sidebarWidth;
  *&retstr->widgetScaleFactor = v4;
  v5 = *&self[7].scaledWidgetSize.height;
  *&retstr->scaledWidgetSize.height = *&self[7].widgetScaleFactor;
  retstr->detailWidgetPadding = v5;
  v6 = *&self[7].sheetMargin;
  *&retstr->sheetMargin = *&self[6].sidebarPadding.bottom;
  *&retstr->sidebarWidth = v6;
  return self;
}

- (void)setAddWidgetSheetMetrics:(SBHPadAddWidgetSheetMetrics *)a3
{
  v3 = *&a3->sidebarWidth;
  *&self->_addWidgetSheetMetrics.sheetMargin = *&a3->sheetMargin;
  *&self->_addWidgetSheetMetrics.sidebarWidth = v3;
  detailWidgetPadding = a3->detailWidgetPadding;
  v6 = *&a3->trailingPadding;
  v5 = *&a3->widgetScaleFactor;
  *&self->_addWidgetSheetMetrics.scaledWidgetSize.height = *&a3->scaledWidgetSize.height;
  self->_addWidgetSheetMetrics.detailWidgetPadding = detailWidgetPadding;
  *&self->_addWidgetSheetMetrics.trailingPadding = v6;
  *&self->_addWidgetSheetMetrics.widgetScaleFactor = v5;
  v8 = *&a3->detailPageControlTopSpacing;
  v7 = *&a3->sidebarPadding.leading;
  v9 = *&a3->detailAddButtonTopSpacing;
  self->_addWidgetSheetMetrics.sidebarPadding.trailing = a3->sidebarPadding.trailing;
  *&self->_addWidgetSheetMetrics.detailPageControlTopSpacing = v8;
  *&self->_addWidgetSheetMetrics.sidebarPadding.leading = v7;
  *&self->_addWidgetSheetMetrics.detailAddButtonTopSpacing = v9;
}

@end