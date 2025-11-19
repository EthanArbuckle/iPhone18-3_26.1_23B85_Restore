@interface SBActivityAmbientFullOverlayViewController
- (BOOL)_hasBackgroundTintColor;
- (BOOL)_isWidgetBasedActivity;
- (BOOL)_itemIsFirstPartyActivity:(id)a3;
- (CGRect)_grabberViewFrame;
- (void)_layoutSubviews;
- (void)_updateBackgroundTintViewWithBounds:(CGRect)a3 color:(id)a4;
- (void)activityHostViewControllerBackgroundTintColorDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SBActivityAmbientFullOverlayViewController

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = SBActivityAmbientFullOverlayViewController;
  [(SBActivityViewController *)&v22 viewDidLoad];
  v3 = [(SBActivityViewController *)self activityItem];
  v4 = [(SBActivityAmbientFullOverlayViewController *)self _itemIsFirstPartyActivity:v3];

  if (!v4)
  {
    v5 = [(SBActivityViewController *)self activityHostViewController];
    v6 = [v5 backgroundTintColor];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277D75348] blackColor];
    }

    v9 = v8;

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
    v13 = [(SBActivityAmbientFullOverlayViewController *)self view];
    [v13 addSubview:self->_backgroundTintView];

    v14 = [(SBActivityAmbientFullOverlayViewController *)self view];
    [v14 sendSubviewToBack:self->_backgroundTintView];

    v15 = [objc_alloc(MEMORY[0x277D3D328]) initWithRecipe:v10];
    platterView = self->_platterView;
    self->_platterView = v15;

    [(PLPlatterView *)self->_platterView setUsesBackgroundView:1];
    [(PLPlatterView *)self->_platterView setOverrideUserInterfaceStyle:2];
    [(PLPlatterView *)self->_platterView setMaterialGroupNameBase:@"Activities"];
    v17 = [(SBActivityAmbientFullOverlayViewController *)self view];
    [v17 addSubview:self->_platterView];

    v18 = [(SBActivityAmbientFullOverlayViewController *)self view];
    [v18 sendSubviewToBack:self->_platterView];
  }

  v19 = objc_alloc_init(MEMORY[0x277D3D300]);
  grabberView = self->_grabberView;
  self->_grabberView = v19;

  v21 = [(SBActivityAmbientFullOverlayViewController *)self view];
  [v21 addSubview:self->_grabberView];
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
  v3 = [(SBActivityAmbientFullOverlayViewController *)self view];
  [v3 bounds];
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
    v13 = [(SBActivityViewController *)self activityHostViewController];
    v14 = [v13 backgroundTintColor];
  }

  else
  {
    if (![(SBActivityAmbientFullOverlayViewController *)self _isWidgetBasedActivity])
    {
      goto LABEL_8;
    }

    v14 = [MEMORY[0x277D75348] blackColor];
  }

  [(SBActivityAmbientFullOverlayViewController *)self _updateBackgroundTintViewWithBounds:v14 color:v5, v7, v9, v11];

LABEL_8:
  grabberView = self->_grabberView;
  [(SBActivityAmbientFullOverlayViewController *)self _grabberViewFrame];
  [(PLGrabberView *)grabberView setFrame:?];
  v16 = [(SBActivityAmbientFullOverlayViewController *)self view];
  [v16 bringSubviewToFront:self->_grabberView];
}

- (void)_updateBackgroundTintViewWithBounds:(CGRect)a3 color:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  backgroundTintView = self->_backgroundTintView;
  v15 = v9;
  if (!backgroundTintView)
  {
    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    v12 = self->_backgroundTintView;
    self->_backgroundTintView = v11;

    v13 = [(SBActivityAmbientFullOverlayViewController *)self view];
    [v13 addSubview:self->_backgroundTintView];

    v14 = [(SBActivityAmbientFullOverlayViewController *)self view];
    [v14 sendSubviewToBack:self->_backgroundTintView];

    backgroundTintView = self->_backgroundTintView;
    if (self->_platterView)
    {
      [(UIView *)backgroundTintView bringSubviewToFront:?];
      backgroundTintView = self->_backgroundTintView;
    }

    v9 = v15;
  }

  [(UIView *)backgroundTintView setBackgroundColor:v9];
  [(UIView *)self->_backgroundTintView setBounds:x, y, width, height];
  [(UIView *)self->_backgroundTintView setFrame:x, y, width, height];
}

- (BOOL)_hasBackgroundTintColor
{
  v2 = [(SBActivityViewController *)self activityHostViewController];
  v3 = [v2 backgroundTintColor];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_isWidgetBasedActivity
{
  v2 = [(SBActivityViewController *)self activityItem];
  v3 = [v2 descriptor];
  v4 = [v3 contentType] == 0;

  return v4;
}

- (BOOL)_itemIsFirstPartyActivity:(id)a3
{
  v3 = [a3 descriptor];
  v4 = [v3 platterTargetBundleIdentifier];

  v5 = +[SBActivityManager sharedInstance];
  v6 = [v5 firstPartyActivityGroupingIdentifiers];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (CGRect)_grabberViewFrame
{
  v3 = [(SBActivityAmbientFullOverlayViewController *)self view];
  [v3 bounds];
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
  v12 = [(SBActivityAmbientFullOverlayViewController *)self traitCollection];
  [v12 displayScale];
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

- (void)activityHostViewControllerBackgroundTintColorDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBActivityAmbientFullOverlayViewController;
  [(SBActivityViewController *)&v6 activityHostViewControllerBackgroundTintColorDidChange:a3];
  v4 = [(SBActivityAmbientFullOverlayViewController *)self view];
  [v4 setNeedsLayout];

  v5 = [(SBActivityAmbientFullOverlayViewController *)self view];
  [v5 layoutIfNeeded];
}

@end