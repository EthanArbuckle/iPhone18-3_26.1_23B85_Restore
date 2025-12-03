@interface SBHAddWidgetDetailsSheetPageViewController
- (BOOL)isJumpAnimationInProgress;
- (CGAffineTransform)wrapperViewTransform;
- (CGSize)_widgetPadding;
- (SBHAddWidgetDetailsSheetPageViewController)initWithWidgetWrapperViewController:(id)controller;
- (SBHAddWidgetDetailsSheetPageViewControllerDelegate)delegate;
- (SBHPadAddWidgetSheetMetrics)addWidgetSheetMetrics;
- (SBHWidgetDragHandling)widgetDragHandler;
- (id)backgroundViewMatchingMaterialBeneathWrapperViewController:(id)controller;
- (void)_createConstraints;
- (void)_createSizeConstraintsForWrapperView:(id)view;
- (void)_createViews;
- (void)_pauseLayer:(id)layer;
- (void)_resumeLayer:(id)layer;
- (void)_updateWidgetScale;
- (void)configureBackgroundView:(id)view matchingMaterialBeneathWrapperViewController:(id)controller;
- (void)loadView;
- (void)setAddWidgetSheetMetrics:(SBHPadAddWidgetSheetMetrics *)metrics;
- (void)setContentVisibility:(unint64_t)visibility;
- (void)setJumpAnimationInProgress:(BOOL)progress;
- (void)setScale:(double)scale;
- (void)updateParallaxEffectInReferenceView:(id)view;
- (void)viewDidLayoutSubviews;
@end

@implementation SBHAddWidgetDetailsSheetPageViewController

- (SBHAddWidgetDetailsSheetPageViewController)initWithWidgetWrapperViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = SBHAddWidgetDetailsSheetPageViewController;
  v6 = [(SBHAddWidgetDetailsSheetPageViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_widgetWrapperViewController, controller);
    [controllerCopy setDelegate:v7];
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
  view = [(SBHAddWidgetDetailsSheetPageViewController *)self view];
  widgetWrapperViewController = self->_widgetWrapperViewController;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__SBHAddWidgetDetailsSheetPageViewController__createViews__block_invoke;
  v6[3] = &unk_1E8092288;
  v6[4] = self;
  v7 = view;
  v5 = view;
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
  view = [(SBHAddWidgetDetailsSheetPageViewController *)self view];
  view2 = [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController view];
  v5 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  layoutGuide = self->_layoutGuide;
  self->_layoutGuide = v5;

  [view addLayoutGuide:self->_layoutGuide];
  v20 = MEMORY[0x1E696ACD8];
  topAnchor = [(UILayoutGuide *)self->_layoutGuide topAnchor];
  topAnchor2 = [view topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v28[0] = v25;
  bottomAnchor = [(UILayoutGuide *)self->_layoutGuide bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
  v28[1] = v22;
  leadingAnchor = [(UILayoutGuide *)self->_layoutGuide leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v28[2] = v18;
  trailingAnchor = [(UILayoutGuide *)self->_layoutGuide trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
  v28[3] = v8;
  v17 = view2;
  centerXAnchor = [view2 centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v28[4] = v11;
  centerYAnchor = [view2 centerYAnchor];
  centerYAnchor2 = [(UILayoutGuide *)self->_layoutGuide centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v28[5] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:6];
  [v20 activateConstraints:v15];
}

- (void)setContentVisibility:(unint64_t)visibility
{
  if (self->_contentVisibility != visibility)
  {
    self->_contentVisibility = visibility;
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

- (void)setJumpAnimationInProgress:(BOOL)progress
{
  progressCopy = progress;
  view = [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController view];
  layer = [view layer];
  if (progressCopy)
  {
    [(SBHAddWidgetDetailsSheetPageViewController *)self _pauseLayer:layer];
  }

  else
  {
    [(SBHAddWidgetDetailsSheetPageViewController *)self _resumeLayer:layer];
  }

  [view setHidden:progressCopy];
}

- (BOOL)isJumpAnimationInProgress
{
  widgetWrapperViewController = [(SBHAddWidgetDetailsSheetPageViewController *)self widgetWrapperViewController];
  view = [widgetWrapperViewController view];
  isHidden = [view isHidden];

  return isHidden;
}

- (void)updateParallaxEffectInReferenceView:(id)view
{
  viewCopy = view;
  objc_storeStrong(&self->_referenceView, view);
  if (self->_referenceView)
  {
    view = [(SBHAddWidgetDetailsSheetPageViewController *)self view];
    view2 = [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController view];
    [view bounds];
    [viewCopy convertRect:view fromView:?];
    v10 = (v8 + v9 + v8 + v9) / (v9 + v9) + -1.0;
    addWidgetSheetStyle = [(SBHAddWidgetDetailsSheetPageViewController *)self addWidgetSheetStyle];
    scale = self->_scale;
    if (addWidgetSheetStyle == 1)
    {
      scale = fmin(fmax(scale * (1.0 - fabs(v10)), 0.00000001), 1.0);
    }

    memset(&v22, 0, sizeof(v22));
    CGAffineTransformMakeScale(&v22, scale, scale);
    [view2 bounds];
    v21 = v22;
    v24 = CGRectApplyAffineTransform(v23, &v21);
    width = v24.size.width;
    [view2 center];
    v15 = v14 + width * -0.5;
    [(SBHAddWidgetDetailsSheetPageViewController *)self _widgetPadding];
    v17 = width - v16;
    if (addWidgetSheetStyle != 1)
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
    [view2 setTransform:&t1];
  }
}

- (CGAffineTransform)wrapperViewTransform
{
  view = [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController view];
  if (view)
  {
    v6 = view;
    [view transform];
    view = v6;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)setScale:(double)scale
{
  if (self->_scale != scale)
  {
    self->_scale = scale;
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

  view = [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController view];
  [(SBHAddWidgetDetailsSheetPageViewController *)self _widgetPadding];
  v5 = v4;
  v7 = v6;
  [(UILayoutGuide *)self->_layoutGuide layoutFrame];
  v9 = v8 + v7 * -2.0;
  [view bounds];
  v11 = v9 / v10;
  [(UILayoutGuide *)self->_layoutGuide layoutFrame];
  v13 = v12 + v5 * -2.0;
  [view bounds];
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

- (void)_createSizeConstraintsForWrapperView:(id)view
{
  v27[4] = *MEMORY[0x1E69E9840];
  widgetWrapperViewController = self->_widgetWrapperViewController;
  viewCopy = view;
  listLayoutProvider = [(SBHWidgetWrapperViewController *)widgetWrapperViewController listLayoutProvider];
  v7 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];

  v8 = SBHIconGridSizeClassForCHSWidgetFamily([(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController selectedSizeClass]);
  v9 = SBHIconListLayoutIconImageInfoForGridSizeClass(v7, v8);
  v11 = v10;
  v12 = SBHIconListLayoutIconImageInfoForGridSizeClass(v7, @"SBHIconGridSizeClassLarge");
  v14 = v13;
  widthAnchor = [viewCopy widthAnchor];
  v16 = [widthAnchor constraintEqualToConstant:v12];

  LODWORD(v17) = 1132068864;
  [v16 setPriority:v17];
  heightAnchor = [viewCopy heightAnchor];
  v19 = [heightAnchor constraintEqualToConstant:v14];

  LODWORD(v20) = 1132068864;
  [v19 setPriority:v20];
  v21 = MEMORY[0x1E696ACD8];
  widthAnchor2 = [viewCopy widthAnchor];
  v23 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:v9];
  v27[0] = v23;
  heightAnchor2 = [viewCopy heightAnchor];

  v25 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:v11];
  v27[1] = v25;
  v27[2] = v16;
  v27[3] = v19;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  [v21 activateConstraints:v26];
}

- (void)_pauseLayer:(id)layer
{
  layerCopy = layer;
  [layerCopy convertTime:0 fromLayer:CACurrentMediaTime()];
  v4 = v3;
  [layerCopy setSpeed:0.0];
  [layerCopy setTimeOffset:v4];
}

- (void)_resumeLayer:(id)layer
{
  layerCopy = layer;
  [layerCopy timeOffset];
  v4 = v3;
  LODWORD(v3) = 1.0;
  [layerCopy setSpeed:v3];
  [layerCopy setTimeOffset:0.0];
  [layerCopy setBeginTime:0.0];
  [layerCopy convertTime:0 fromLayer:CACurrentMediaTime()];
  [layerCopy setBeginTime:v5 - v4];
}

- (SBHWidgetDragHandling)widgetDragHandler
{
  delegate = [(SBHAddWidgetDetailsSheetPageViewController *)self delegate];
  widgetDragHandler = [delegate widgetDragHandler];

  return widgetDragHandler;
}

- (id)backgroundViewMatchingMaterialBeneathWrapperViewController:(id)controller
{
  delegate = [(SBHAddWidgetDetailsSheetPageViewController *)self delegate];
  v5 = [delegate backgroundViewMatchingMaterialBeneathPageViewController:self];

  return v5;
}

- (void)configureBackgroundView:(id)view matchingMaterialBeneathWrapperViewController:(id)controller
{
  viewCopy = view;
  delegate = [(SBHAddWidgetDetailsSheetPageViewController *)self delegate];
  [delegate configureBackgroundView:viewCopy matchingMaterialBeneathPageViewController:self];
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

- (void)setAddWidgetSheetMetrics:(SBHPadAddWidgetSheetMetrics *)metrics
{
  v3 = *&metrics->sidebarWidth;
  *&self->_addWidgetSheetMetrics.sheetMargin = *&metrics->sheetMargin;
  *&self->_addWidgetSheetMetrics.sidebarWidth = v3;
  detailWidgetPadding = metrics->detailWidgetPadding;
  v6 = *&metrics->trailingPadding;
  v5 = *&metrics->widgetScaleFactor;
  *&self->_addWidgetSheetMetrics.scaledWidgetSize.height = *&metrics->scaledWidgetSize.height;
  self->_addWidgetSheetMetrics.detailWidgetPadding = detailWidgetPadding;
  *&self->_addWidgetSheetMetrics.trailingPadding = v6;
  *&self->_addWidgetSheetMetrics.widgetScaleFactor = v5;
  v8 = *&metrics->detailPageControlTopSpacing;
  v7 = *&metrics->sidebarPadding.leading;
  v9 = *&metrics->detailAddButtonTopSpacing;
  self->_addWidgetSheetMetrics.sidebarPadding.trailing = metrics->sidebarPadding.trailing;
  *&self->_addWidgetSheetMetrics.detailPageControlTopSpacing = v8;
  *&self->_addWidgetSheetMetrics.sidebarPadding.leading = v7;
  *&self->_addWidgetSheetMetrics.detailAddButtonTopSpacing = v9;
}

@end