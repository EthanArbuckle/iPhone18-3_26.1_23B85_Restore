@interface _UINavigationBarTitleView
- ($F24F406B2B787EFB06265DBA3D28CBD5)largeTitleHeightRange;
- (NSArray)contentOverlayRects;
- (NSString)description;
- (UIMenu)backButtonMenu;
- (UINavigationItem)navigationItem;
- (_UINavigationBarTitleView)initWithCoder:(id)a3;
- (_UINavigationBarTitleView)initWithFrame:(CGRect)a3;
- (_UINavigationBarTitleViewOverlayRects)overlays;
- (double)contentBaseHeight;
- (double)contentBaselineOffsetFromTop;
- (double)floatingTabBarHeight;
- (double)largeTitleHeight;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)leadingOverlayCount;
- (int64_t)trailingOverlayCount;
- (void)_setDataSource:(id)a3 navigationItem:(id)a4 titleLocation:(int64_t)a5;
- (void)performTransition:(int64_t)a3 willBeDisplayed:(BOOL)a4;
- (void)preferredContentSizeDidChange;
- (void)setBackButtonAlpha:(double)a3;
- (void)setBackButtonMaximumWidth:(double)a3;
- (void)setDisallowNavigationBarMinimumTopPadding:(BOOL)a3;
- (void)setDisplayLayer:(int64_t)a3;
- (void)setHeight:(double)a3;
- (void)setHeightExtension:(double)a3;
- (void)setHeightShouldBeIncreasedByTabBarHeight:(BOOL)a3;
- (void)setHideBackButton:(BOOL)a3;
- (void)setHideCenterBarButtons:(BOOL)a3;
- (void)setHideLeadingBarButtons:(BOOL)a3;
- (void)setHideStandardTitle:(BOOL)a3;
- (void)setHideTrailingBarButtons:(BOOL)a3;
- (void)setLeadingBarAlpha:(double)a3;
- (void)setPreferredContentAlignment:(int64_t)a3;
- (void)setTrailingBarAlpha:(double)a3;
- (void)transitionWillBegin:(int64_t)a3 willBeDisplayed:(BOOL)a4;
@end

@implementation _UINavigationBarTitleView

- (_UINavigationBarTitleViewOverlayRects)overlays
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (WeakRetained)
  {
    overlayRects = self->_overlayRects;
    if (!overlayRects)
    {
      v5 = objc_alloc_init(_UINavigationBarTitleViewOverlayRects);
      v6 = self->_overlayRects;
      self->_overlayRects = v5;

      overlayRects = self->_overlayRects;
    }

    [WeakRetained titleView:self needsUpdatedContentOverlayRects:overlayRects];
    v7 = self->_overlayRects;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)contentOverlayRects
{
  v2 = [(_UINavigationBarTitleView *)self overlays];
  v3 = [v2 asArray];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (_UINavigationBarTitleView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UINavigationBarTitleView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4->_trailingBarAlpha = 1.0;
    v4->_leadingBarAlpha = 1.0;
    v4->_backButtonAlpha = 1.0;
  }

  return v4;
}

- (_UINavigationBarTitleView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UINavigationBarTitleView;
  v3 = [(UIView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4->_trailingBarAlpha = 1.0;
    v4->_leadingBarAlpha = 1.0;
    v4->_backButtonAlpha = 1.0;
  }

  return v4;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UINavigationBarTitleView;
  v5 = [(UIView *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self && (_UISMCBarsEnabled() & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (void)_setDataSource:(id)a3 navigationItem:(id)a4 titleLocation:(int64_t)a5
{
  v8 = a4;
  objc_storeWeak(&self->_dataSource, a3);
  objc_storeWeak(&self->_navigationItem, v8);

  self->_titleLocation = a5;
}

- (void)setPreferredContentAlignment:(int64_t)a3
{
  if (self->_preferredContentAlignment != a3)
  {
    self->_preferredContentAlignment = a3;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedLayout:self];
  }
}

- (UIMenu)backButtonMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained titleViewBackButtonMenu:self];

  return v4;
}

- (void)setHeight:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (self->_height != a3)
  {
    self->_height = a3;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedHeight:self];
  }
}

- (void)setHeightExtension:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (self->_heightExtension != a3)
  {
    self->_heightExtension = a3;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedHeight:self];
  }
}

- (void)setBackButtonMaximumWidth:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (self->_backButtonMaximumWidth != a3)
  {
    self->_backButtonMaximumWidth = a3;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedMaximumBackButtonWidth:self];
  }
}

- (void)setHideBackButton:(BOOL)a3
{
  if (self->_hideBackButton != a3)
  {
    self->_hideBackButton = a3;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedStandardDisplayItems:self];
  }
}

- (void)setHideLeadingBarButtons:(BOOL)a3
{
  if (self->_hideLeadingBarButtons != a3)
  {
    self->_hideLeadingBarButtons = a3;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedStandardDisplayItems:self];
  }
}

- (void)setHideStandardTitle:(BOOL)a3
{
  if (self->_hideStandardTitle != a3)
  {
    self->_hideStandardTitle = a3;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedStandardDisplayItems:self];
  }
}

- (void)setHideCenterBarButtons:(BOOL)a3
{
  if (self->_hideCenterBarButtons != a3)
  {
    self->_hideCenterBarButtons = a3;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedStandardDisplayItems:self];
  }
}

- (void)setHideTrailingBarButtons:(BOOL)a3
{
  if (self->_hideTrailingBarButtons != a3)
  {
    self->_hideTrailingBarButtons = a3;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedStandardDisplayItems:self];
  }
}

- (void)setBackButtonAlpha:(double)a3
{
  if (self->_backButtonAlpha != a3)
  {
    self->_backButtonAlpha = a3;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedDisplayItemAlpha:self];
  }
}

- (void)setLeadingBarAlpha:(double)a3
{
  if (self->_leadingBarAlpha != a3)
  {
    self->_leadingBarAlpha = a3;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedDisplayItemAlpha:self];
  }
}

- (void)setTrailingBarAlpha:(double)a3
{
  if (self->_trailingBarAlpha != a3)
  {
    self->_trailingBarAlpha = a3;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedDisplayItemAlpha:self];
  }
}

- (void)setDisplayLayer:(int64_t)a3
{
  if (self->_displayLayer != a3)
  {
    self->_displayLayer = a3;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedDisplayLayer:self];
  }
}

- (void)setDisallowNavigationBarMinimumTopPadding:(BOOL)a3
{
  if (self->_disallowNavigationBarMinimumTopPadding != a3)
  {
    self->_disallowNavigationBarMinimumTopPadding = a3;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedLayout:self];
  }
}

- (int64_t)leadingOverlayCount
{
  [(_UINavigationBarTitleViewOverlayRects *)self->_overlayRects leadingStaticItemRect];
  v3 = !CGRectIsNull(v6);
  [(_UINavigationBarTitleViewOverlayRects *)self->_overlayRects backButtonRect];
  v4 = !CGRectIsNull(v7) + v3;
  [(_UINavigationBarTitleViewOverlayRects *)self->_overlayRects leadingItemsRect];
  return v4 + !CGRectIsNull(v8);
}

- (int64_t)trailingOverlayCount
{
  [(_UINavigationBarTitleViewOverlayRects *)self->_overlayRects trailingItemsRect];
  v3 = !CGRectIsNull(v5);
  [(_UINavigationBarTitleViewOverlayRects *)self->_overlayRects trailingStaticItemRect];
  return !CGRectIsNull(v6) + v3;
}

- (double)largeTitleHeight
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained titleViewLargeTitleHeight:self];
  v5 = v4;

  return v5;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)largeTitleHeightRange
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained titleViewLargeTitleHeightRange:self];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (double)floatingTabBarHeight
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained titleViewFloatingTabBarHeight:self];
  v5 = v4;

  return v5;
}

- (void)setHeightShouldBeIncreasedByTabBarHeight:(BOOL)a3
{
  if (self->_heightShouldBeIncreasedByTabBarHeight != a3)
  {
    self->_heightShouldBeIncreasedByTabBarHeight = a3;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedTabBarSizingDisposition:self];
  }
}

- (double)contentBaselineOffsetFromTop
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained titleViewContentBaselineOffsetFromTop:self];
  v5 = v4;

  return v5;
}

- (double)contentBaseHeight
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained titleViewContentBaseHeight:self];
  v5 = v4;

  return v5;
}

- (void)preferredContentSizeDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained titleViewChangedPreferredDisplaySize:self];
}

- (void)transitionWillBegin:(int64_t)a3 willBeDisplayed:(BOOL)a4
{
  v4 = 1.0;
  if (a4)
  {
    v4 = 0.0;
  }

  [(UIView *)self setAlpha:a3, v4];
}

- (void)performTransition:(int64_t)a3 willBeDisplayed:(BOOL)a4
{
  v4 = 0.0;
  if (a4)
  {
    v4 = 1.0;
  }

  [(UIView *)self setAlpha:a3, v4];
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = _UINavigationBarTitleView;
  v3 = [(UIView *)&v10 description];
  v4 = [v3 mutableCopy];

  WeakRetained = objc_loadWeakRetained(&self->_navigationItem);
  v6 = objc_loadWeakRetained(&self->_dataSource);
  [v4 appendFormat:@" navigationItem=%p dataSource=%p", WeakRetained, v6];

  [v4 appendString:@" titleLocation="];
  titleLocation = self->_titleLocation;
  switch(titleLocation)
  {
    case 0:
      v8 = @"offscreen";
      goto LABEL_7;
    case 2:
      v8 = @"large";
      goto LABEL_7;
    case 1:
      v8 = @"inline";
LABEL_7:
      [v4 appendString:v8];
      goto LABEL_9;
  }

  [v4 appendFormat:@"unknown(%li)", self->_titleLocation];
LABEL_9:
  if (self->_height > 0.0)
  {
    [v4 appendFormat:@" height=%f", *&self->_height];
  }

  if (self->_heightExtension > 0.0)
  {
    [v4 appendFormat:@" heightExtension=%f", *&self->_heightExtension];
  }

  if (self->_backButtonMaximumWidth > 0.0)
  {
    [v4 appendFormat:@" backButtonMaximumWidth=%f", *&self->_backButtonMaximumWidth];
  }

  if (self->_hideBackButton)
  {
    [v4 appendString:@" hidesBackButton"];
  }

  if (self->_hideLeadingBarButtons)
  {
    [v4 appendString:@" hideLeadingBarButtons"];
  }

  if (self->_hideStandardTitle)
  {
    [v4 appendString:@" hideStandardTitle"];
  }

  if (self->_hideCenterBarButtons)
  {
    [v4 appendString:@" hideCenterBarButtons"];
  }

  if (self->_hideTrailingBarButtons)
  {
    [v4 appendString:@" hideTrailingBarButtons"];
  }

  return v4;
}

- (UINavigationItem)navigationItem
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationItem);

  return WeakRetained;
}

@end