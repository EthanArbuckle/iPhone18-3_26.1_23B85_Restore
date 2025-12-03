@interface SBActivityAmbientFullOverlayViewController
- (BOOL)_hasBackgroundTintColor;
- (BOOL)_isWidgetBasedActivity;
- (BOOL)_itemIsFirstPartyActivity:(id)activity;
- (CGRect)_grabberViewFrame;
- (void)_layoutSubviews;
- (void)_updateBackgroundTintViewWithBounds:(CGRect)bounds color:(id)color;
- (void)activityHostViewControllerBackgroundTintColorDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SBActivityAmbientFullOverlayViewController

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = SBActivityAmbientFullOverlayViewController;
  [(SBActivityViewController *)&v22 viewDidLoad];
  activityItem = [(SBActivityViewController *)self activityItem];
  v4 = [(SBActivityAmbientFullOverlayViewController *)self _itemIsFirstPartyActivity:activityItem];

  if (!v4)
  {
    activityHostViewController = [(SBActivityViewController *)self activityHostViewController];
    backgroundTintColor = [activityHostViewController backgroundTintColor];
    v7 = backgroundTintColor;
    if (backgroundTintColor)
    {
      blackColor = backgroundTintColor;
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
    }

    v9 = blackColor;

    if (v9)
    {
      v10 = 22;
    }

    else
    {
      v10 = 1;
    }

    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundTintView = self->_backgroundTintView;
    self->_backgroundTintView = v11;

    [(UIView *)self->_backgroundTintView setBackgroundColor:v9];
    view = [(SBActivityAmbientFullOverlayViewController *)self view];
    [view addSubview:self->_backgroundTintView];

    view2 = [(SBActivityAmbientFullOverlayViewController *)self view];
    [view2 sendSubviewToBack:self->_backgroundTintView];

    v15 = [objc_alloc(MEMORY[0x277D3D328]) initWithRecipe:v10];
    platterView = self->_platterView;
    self->_platterView = v15;

    [(PLPlatterView *)self->_platterView setUsesBackgroundView:1];
    [(PLPlatterView *)self->_platterView setOverrideUserInterfaceStyle:2];
    [(PLPlatterView *)self->_platterView setMaterialGroupNameBase:@"Activities"];
    view3 = [(SBActivityAmbientFullOverlayViewController *)self view];
    [view3 addSubview:self->_platterView];

    view4 = [(SBActivityAmbientFullOverlayViewController *)self view];
    [view4 sendSubviewToBack:self->_platterView];
  }

  v19 = objc_alloc_init(MEMORY[0x277D3D300]);
  grabberView = self->_grabberView;
  self->_grabberView = v19;

  view5 = [(SBActivityAmbientFullOverlayViewController *)self view];
  [view5 addSubview:self->_grabberView];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBActivityAmbientFullOverlayViewController;
  [(SBActivityViewController *)&v3 viewWillLayoutSubviews];
  [(SBActivityAmbientFullOverlayViewController *)self _layoutSubviews];
}

- (void)_layoutSubviews
{
  view = [(SBActivityAmbientFullOverlayViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  platterView = self->_platterView;
  if (platterView)
  {
    [(PLPlatterView *)platterView setFrame:v5, v7, v9, v11];
  }

  if ([(SBActivityAmbientFullOverlayViewController *)self _hasBackgroundTintColor])
  {
    activityHostViewController = [(SBActivityViewController *)self activityHostViewController];
    backgroundTintColor = [activityHostViewController backgroundTintColor];
  }

  else
  {
    if (![(SBActivityAmbientFullOverlayViewController *)self _isWidgetBasedActivity])
    {
      goto LABEL_8;
    }

    backgroundTintColor = [MEMORY[0x277D75348] blackColor];
  }

  [(SBActivityAmbientFullOverlayViewController *)self _updateBackgroundTintViewWithBounds:backgroundTintColor color:v5, v7, v9, v11];

LABEL_8:
  grabberView = self->_grabberView;
  [(SBActivityAmbientFullOverlayViewController *)self _grabberViewFrame];
  [(PLGrabberView *)grabberView setFrame:?];
  view2 = [(SBActivityAmbientFullOverlayViewController *)self view];
  [view2 bringSubviewToFront:self->_grabberView];
}

- (void)_updateBackgroundTintViewWithBounds:(CGRect)bounds color:(id)color
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  colorCopy = color;
  backgroundTintView = self->_backgroundTintView;
  v15 = colorCopy;
  if (!backgroundTintView)
  {
    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    v12 = self->_backgroundTintView;
    self->_backgroundTintView = v11;

    view = [(SBActivityAmbientFullOverlayViewController *)self view];
    [view addSubview:self->_backgroundTintView];

    view2 = [(SBActivityAmbientFullOverlayViewController *)self view];
    [view2 sendSubviewToBack:self->_backgroundTintView];

    backgroundTintView = self->_backgroundTintView;
    if (self->_platterView)
    {
      [(UIView *)backgroundTintView bringSubviewToFront:?];
      backgroundTintView = self->_backgroundTintView;
    }

    colorCopy = v15;
  }

  [(UIView *)backgroundTintView setBackgroundColor:colorCopy];
  [(UIView *)self->_backgroundTintView setBounds:x, y, width, height];
  [(UIView *)self->_backgroundTintView setFrame:x, y, width, height];
}

- (BOOL)_hasBackgroundTintColor
{
  activityHostViewController = [(SBActivityViewController *)self activityHostViewController];
  backgroundTintColor = [activityHostViewController backgroundTintColor];
  v4 = backgroundTintColor != 0;

  return v4;
}

- (BOOL)_isWidgetBasedActivity
{
  activityItem = [(SBActivityViewController *)self activityItem];
  descriptor = [activityItem descriptor];
  v4 = [descriptor contentType] == 0;

  return v4;
}

- (BOOL)_itemIsFirstPartyActivity:(id)activity
{
  descriptor = [activity descriptor];
  platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];

  v5 = +[SBActivityManager sharedInstance];
  firstPartyActivityGroupingIdentifiers = [v5 firstPartyActivityGroupingIdentifiers];
  v7 = [firstPartyActivityGroupingIdentifiers containsObject:platterTargetBundleIdentifier];

  return v7;
}

- (CGRect)_grabberViewFrame
{
  view = [(SBActivityAmbientFullOverlayViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  CGRectGetMidX(v25);
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  CGRectGetMaxY(v26);
  traitCollection = [(SBActivityAmbientFullOverlayViewController *)self traitCollection];
  [traitCollection displayScale];
  BSRectRoundForScale();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)activityHostViewControllerBackgroundTintColorDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = SBActivityAmbientFullOverlayViewController;
  [(SBActivityViewController *)&v6 activityHostViewControllerBackgroundTintColorDidChange:change];
  view = [(SBActivityAmbientFullOverlayViewController *)self view];
  [view setNeedsLayout];

  view2 = [(SBActivityAmbientFullOverlayViewController *)self view];
  [view2 layoutIfNeeded];
}

@end