@interface _UINavigationBarTitleView
- ($F24F406B2B787EFB06265DBA3D28CBD5)largeTitleHeightRange;
- (NSArray)contentOverlayRects;
- (NSString)description;
- (UIMenu)backButtonMenu;
- (UINavigationItem)navigationItem;
- (_UINavigationBarTitleView)initWithCoder:(id)coder;
- (_UINavigationBarTitleView)initWithFrame:(CGRect)frame;
- (_UINavigationBarTitleViewOverlayRects)overlays;
- (double)contentBaseHeight;
- (double)contentBaselineOffsetFromTop;
- (double)floatingTabBarHeight;
- (double)largeTitleHeight;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int64_t)leadingOverlayCount;
- (int64_t)trailingOverlayCount;
- (void)_setDataSource:(id)source navigationItem:(id)item titleLocation:(int64_t)location;
- (void)performTransition:(int64_t)transition willBeDisplayed:(BOOL)displayed;
- (void)preferredContentSizeDidChange;
- (void)setBackButtonAlpha:(double)alpha;
- (void)setBackButtonMaximumWidth:(double)width;
- (void)setDisallowNavigationBarMinimumTopPadding:(BOOL)padding;
- (void)setDisplayLayer:(int64_t)layer;
- (void)setHeight:(double)height;
- (void)setHeightExtension:(double)extension;
- (void)setHeightShouldBeIncreasedByTabBarHeight:(BOOL)height;
- (void)setHideBackButton:(BOOL)button;
- (void)setHideCenterBarButtons:(BOOL)buttons;
- (void)setHideLeadingBarButtons:(BOOL)buttons;
- (void)setHideStandardTitle:(BOOL)title;
- (void)setHideTrailingBarButtons:(BOOL)buttons;
- (void)setLeadingBarAlpha:(double)alpha;
- (void)setPreferredContentAlignment:(int64_t)alignment;
- (void)setTrailingBarAlpha:(double)alpha;
- (void)transitionWillBegin:(int64_t)begin willBeDisplayed:(BOOL)displayed;
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
  overlays = [(_UINavigationBarTitleView *)self overlays];
  asArray = [overlays asArray];
  v4 = asArray;
  if (asArray)
  {
    v5 = asArray;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (_UINavigationBarTitleView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UINavigationBarTitleView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (_UINavigationBarTitleView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UINavigationBarTitleView;
  v3 = [(UIView *)&v6 initWithCoder:coder];
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = _UINavigationBarTitleView;
  v5 = [(UIView *)&v8 hitTest:event withEvent:test.x, test.y];
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

- (void)_setDataSource:(id)source navigationItem:(id)item titleLocation:(int64_t)location
{
  itemCopy = item;
  objc_storeWeak(&self->_dataSource, source);
  objc_storeWeak(&self->_navigationItem, itemCopy);

  self->_titleLocation = location;
}

- (void)setPreferredContentAlignment:(int64_t)alignment
{
  if (self->_preferredContentAlignment != alignment)
  {
    self->_preferredContentAlignment = alignment;
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

- (void)setHeight:(double)height
{
  if (height < 0.0)
  {
    height = 0.0;
  }

  if (self->_height != height)
  {
    self->_height = height;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedHeight:self];
  }
}

- (void)setHeightExtension:(double)extension
{
  if (extension < 0.0)
  {
    extension = 0.0;
  }

  if (self->_heightExtension != extension)
  {
    self->_heightExtension = extension;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedHeight:self];
  }
}

- (void)setBackButtonMaximumWidth:(double)width
{
  if (width < 0.0)
  {
    width = 0.0;
  }

  if (self->_backButtonMaximumWidth != width)
  {
    self->_backButtonMaximumWidth = width;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedMaximumBackButtonWidth:self];
  }
}

- (void)setHideBackButton:(BOOL)button
{
  if (self->_hideBackButton != button)
  {
    self->_hideBackButton = button;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedStandardDisplayItems:self];
  }
}

- (void)setHideLeadingBarButtons:(BOOL)buttons
{
  if (self->_hideLeadingBarButtons != buttons)
  {
    self->_hideLeadingBarButtons = buttons;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedStandardDisplayItems:self];
  }
}

- (void)setHideStandardTitle:(BOOL)title
{
  if (self->_hideStandardTitle != title)
  {
    self->_hideStandardTitle = title;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedStandardDisplayItems:self];
  }
}

- (void)setHideCenterBarButtons:(BOOL)buttons
{
  if (self->_hideCenterBarButtons != buttons)
  {
    self->_hideCenterBarButtons = buttons;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedStandardDisplayItems:self];
  }
}

- (void)setHideTrailingBarButtons:(BOOL)buttons
{
  if (self->_hideTrailingBarButtons != buttons)
  {
    self->_hideTrailingBarButtons = buttons;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedStandardDisplayItems:self];
  }
}

- (void)setBackButtonAlpha:(double)alpha
{
  if (self->_backButtonAlpha != alpha)
  {
    self->_backButtonAlpha = alpha;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedDisplayItemAlpha:self];
  }
}

- (void)setLeadingBarAlpha:(double)alpha
{
  if (self->_leadingBarAlpha != alpha)
  {
    self->_leadingBarAlpha = alpha;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedDisplayItemAlpha:self];
  }
}

- (void)setTrailingBarAlpha:(double)alpha
{
  if (self->_trailingBarAlpha != alpha)
  {
    self->_trailingBarAlpha = alpha;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedDisplayItemAlpha:self];
  }
}

- (void)setDisplayLayer:(int64_t)layer
{
  if (self->_displayLayer != layer)
  {
    self->_displayLayer = layer;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained titleViewChangedDisplayLayer:self];
  }
}

- (void)setDisallowNavigationBarMinimumTopPadding:(BOOL)padding
{
  if (self->_disallowNavigationBarMinimumTopPadding != padding)
  {
    self->_disallowNavigationBarMinimumTopPadding = padding;
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

- (void)setHeightShouldBeIncreasedByTabBarHeight:(BOOL)height
{
  if (self->_heightShouldBeIncreasedByTabBarHeight != height)
  {
    self->_heightShouldBeIncreasedByTabBarHeight = height;
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

- (void)transitionWillBegin:(int64_t)begin willBeDisplayed:(BOOL)displayed
{
  v4 = 1.0;
  if (displayed)
  {
    v4 = 0.0;
  }

  [(UIView *)self setAlpha:begin, v4];
}

- (void)performTransition:(int64_t)transition willBeDisplayed:(BOOL)displayed
{
  v4 = 0.0;
  if (displayed)
  {
    v4 = 1.0;
  }

  [(UIView *)self setAlpha:transition, v4];
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