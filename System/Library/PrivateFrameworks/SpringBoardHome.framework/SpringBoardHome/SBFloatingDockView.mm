@interface SBFloatingDockView
+ (CGSize)maximumIconSizeWithIconImageInfo:(SBIconImageInfo *)info;
+ (double)contentHeightForBounds:(CGRect)bounds mainPlatterViewFrame:(CGRect)frame;
+ (double)maximumDockContinuousCornerRadiusWithIconImageInfo:(SBIconImageInfo *)info;
+ (double)maximumInterIconSpacingWithIconImageInfo:(SBIconImageInfo *)info;
+ (double)maximumPlatterHeightWithIconImageInfo:(SBIconImageInfo *)info;
+ (void)getMetrics:(id *)metrics forBounds:(CGRect)bounds layoutScale:(double)scale numberOfUserIcons:(unint64_t)icons numberOfRecentIcons:(unint64_t)recentIcons numberOfUtilitiesIcons:(unint64_t)utilitiesIcons displayAccessoryIconView:(BOOL)view paddingEdgeInsets:(UIEdgeInsets)self0 referenceIconSize:(CGSize)self1 maximumIconSize:(CGSize)self2 referenceInterIconSpacing:(double)self3 maximumInterIconSpacing:(double)self4 platterVerticalMargin:(double)self5 editing:(BOOL)self6;
- (BOOL)_shouldDisplayAccessoryIconView;
- (BOOL)hasPlatterShadow;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)platterFrame;
- (CGSize)maximumEditingIconSize;
- (CGSize)maximumIconSize;
- (SBFloatingDockView)initWithFrame:(CGRect)frame;
- (SBFloatingDockViewDelegate)delegate;
- (SBIconImageInfo)_iconImageInfo;
- (UIEdgeInsets)paddingEdgeInsets;
- (UIEdgeInsets)platterShadowOutsets;
- (UIEdgeInsets)platterShadowOutsetsForBounds:(CGRect)bounds;
- (double)_referenceInterIconSpacing;
- (double)contentHeight;
- (double)contentHeightForBounds:(CGRect)bounds;
- (double)currentDockContinuousCornerRadius;
- (double)iconContentScaleForNumberOfUserIcons:(unint64_t)icons numberOfUtilitiesIcons:(unint64_t)utilitiesIcons;
- (double)interIconSpacing;
- (double)maximumDockContinuousCornerRadius;
- (double)maximumInterIconSpacing;
- (double)maximumPlatterHeight;
- (void)_updateBackgroundUserInterfaceStyle;
- (void)bounce;
- (void)enumerateIconListViewsUsingBlock:(id)block;
- (void)getMetrics:(id *)metrics forBounds:(CGRect)bounds;
- (void)layoutSubviews;
- (void)setAccessoryIconView:(id)view;
- (void)setAccessoryIconViewVisible:(BOOL)visible;
- (void)setEditing:(BOOL)editing;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setHasPlatterShadow:(BOOL)shadow;
- (void)setMaximumEditingIconSize:(CGSize)size;
- (void)setMinimumUserIconSpaces:(unint64_t)spaces;
- (void)setMinimumUtilitiesIconSpaces:(unint64_t)spaces;
- (void)setPaddingEdgeInsets:(UIEdgeInsets)insets;
- (void)setRecentIconListView:(id)view;
- (void)setUserIconListView:(id)view;
- (void)setUtilitiesIconListView:(id)view;
- (void)updateMainPlatterMetrics;
@end

@implementation SBFloatingDockView

- (SBIconImageInfo)_iconImageInfo
{
  userIconListView = [(SBFloatingDockView *)self userIconListView];
  iconLocation = [userIconListView iconLocation];
  layoutProvider = [userIconListView layoutProvider];
  v7 = [layoutProvider layoutForIconLocation:iconLocation];
  [v7 iconImageInfo];
  traitCollection = [(SBFloatingDockView *)self traitCollection];
  [traitCollection displayScale];

  return result;
}

- (double)_referenceInterIconSpacing
{
  [(SBFloatingDockView *)self _iconImageInfo];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = objc_opt_class();

  [v10 _referenceInterIconSpacingWithIconImageInfo:{v3, v5, v7, v9}];
  return result;
}

- (BOOL)_shouldDisplayAccessoryIconView
{
  accessoryIconView = self->_accessoryIconView;
  if (accessoryIconView)
  {
    LOBYTE(accessoryIconView) = self->_accessoryIconViewVisible;
  }

  return accessoryIconView & 1;
}

+ (double)maximumDockContinuousCornerRadiusWithIconImageInfo:(SBIconImageInfo *)info
{
  v4 = v3;
  [self maximumInterIconSpacingWithIconImageInfo:info];
  return v4 + v5;
}

- (double)maximumDockContinuousCornerRadius
{
  [(SBFloatingDockView *)self _iconImageInfo];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = objc_opt_class();

  [v10 maximumDockContinuousCornerRadiusWithIconImageInfo:{v3, v5, v7, v9}];
  return result;
}

- (double)currentDockContinuousCornerRadius
{
  mainPlatterView = [(SBFloatingDockView *)self mainPlatterView];
  [mainPlatterView currentContinuousCornerRadius];
  v4 = v3;

  return v4;
}

+ (double)maximumInterIconSpacingWithIconImageInfo:(SBIconImageInfo *)info
{
  [self _referenceInterIconSpacingWithIconImageInfo:info];

  UIFloorToScale();
  return result;
}

- (double)maximumInterIconSpacing
{
  [(SBFloatingDockView *)self _iconImageInfo];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = objc_opt_class();

  [v10 maximumInterIconSpacingWithIconImageInfo:{v3, v5, v7, v9}];
  return result;
}

+ (double)maximumPlatterHeightWithIconImageInfo:(SBIconImageInfo *)info
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  [self maximumInterIconSpacingWithIconImageInfo:info];
  v13 = v12;
  [self maximumIconSizeWithIconImageInfo:{v10, v9, v8, v7}];
  return v13 + v13 + v14;
}

- (double)maximumPlatterHeight
{
  [(SBFloatingDockView *)self _iconImageInfo];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = objc_opt_class();

  [v10 maximumPlatterHeightWithIconImageInfo:{v3, v5, v7, v9}];
  return result;
}

+ (CGSize)maximumIconSizeWithIconImageInfo:(SBIconImageInfo *)info
{
  UIFloorToScale();
  v4 = v3;
  UIFloorToScale();
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (CGSize)maximumIconSize
{
  [(SBFloatingDockView *)self _iconImageInfo];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(SBFloatingDockView *)self isEditing])
  {
    [(SBFloatingDockView *)self maximumEditingIconSize];
    if (v11 != *MEMORY[0x1E695F060] || v12 != *(MEMORY[0x1E695F060] + 8))
    {
      v4 = v11;
      v6 = v12;
    }
  }

  v13 = objc_opt_class();

  [v13 maximumIconSizeWithIconImageInfo:{v4, v6, v8, v10}];
  result.height = v15;
  result.width = v14;
  return result;
}

- (SBFloatingDockView)initWithFrame:(CGRect)frame
{
  v30[2] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = SBFloatingDockView;
  v3 = [(SBFloatingDockView *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_iconContentScale = 1.0;
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
    touchReceivingView = v4->_touchReceivingView;
    v4->_touchReceivingView = v10;

    v12 = v4->_touchReceivingView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v12 setBackgroundColor:clearColor];

    layer = [(UIView *)v4->_touchReceivingView layer];
    [layer setHitTestsAsOpaque:1];

    [(SBFloatingDockView *)v4 addSubview:v4->_touchReceivingView];
    v15 = objc_alloc_init(SBFloatingDockPlatterView);
    mainPlatterView = v4->_mainPlatterView;
    v4->_mainPlatterView = v15;

    [(SBFloatingDockView *)v4 addSubview:v4->_mainPlatterView];
    v17 = objc_alloc_init(MEMORY[0x1E69DD250]);
    glassContainerView = v4->_glassContainerView;
    v4->_glassContainerView = v17;

    [(SBFloatingDockPlatterView *)v4->_mainPlatterView addSubview:v4->_glassContainerView];
    v19 = v4->_glassContainerView;
    v20 = objc_alloc_init(MEMORY[0x1E69DD820]);
    [(UIView *)v19 _setBackground:v20];

    v21 = [[SBHFloatingDockSeparatorView alloc] initWithFrame:v6, v7, v8, v9];
    [(UIView *)v4->_glassContainerView addSubview:v21];
    objc_storeStrong(&v4->_recentDividerView, v21);
    v22 = [[SBHFloatingDockSeparatorView alloc] initWithFrame:v6, v7, v8, v9];
    [(UIView *)v4->_glassContainerView addSubview:v22];
    objc_storeStrong(&v4->_utilitiesDividerView, v22);
    v4->_accessoryIconViewVisible = 1;
    layer2 = [(SBFloatingDockView *)v4 layer];
    [layer2 setAllowsGroupBlending:0];

    v24 = objc_opt_self();
    v30[0] = v24;
    v25 = objc_opt_self();
    v30[1] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v27 = [(SBFloatingDockView *)v4 registerForTraitChanges:v26 withTarget:v4 action:sel__updateBackgroundUserInterfaceStyle];

    [(SBFloatingDockView *)v4 _updateBackgroundUserInterfaceStyle];
    [(SBFloatingDockView *)v4 setAccessibilityIdentifier:@"Multitasking Dock"];
  }

  return v4;
}

- (void)setUserIconListView:(id)view
{
  viewCopy = view;
  userIconListView = self->_userIconListView;
  if (userIconListView != viewCopy)
  {
    v8 = viewCopy;
    [(SBDockIconListView *)userIconListView removeFromSuperview];
    [(SBIconListView *)self->_userIconListView removeLayoutObserver:self];
    objc_storeStrong(&self->_userIconListView, view);
    if (v8)
    {
      [(SBDockIconListView *)v8 setAccessibilityIdentifier:@"user icon list view"];
      [(SBIconListView *)v8 setLayoutInsetsMode:2];
      [(SBIconListView *)v8 setAutomaticallyAdjustsLayoutMetricsToFit:0];
      [(SBIconListView *)v8 addLayoutObserver:self];
      [(SBIconListView *)v8 setUsesGlassGroup:0];
      glassContainerView = [(SBFloatingDockView *)self glassContainerView];
      [glassContainerView addSubview:v8];

      [(SBFloatingDockView *)self setNeedsLayout];
    }

    userIconListView = [(SBFloatingDockView *)self updateMainPlatterMetrics];
    viewCopy = v8;
  }

  MEMORY[0x1EEE66BB8](userIconListView, viewCopy);
}

- (void)setUtilitiesIconListView:(id)view
{
  viewCopy = view;
  utilitiesIconListView = self->_utilitiesIconListView;
  if (utilitiesIconListView != viewCopy)
  {
    v8 = viewCopy;
    [(SBDockIconListView *)utilitiesIconListView removeFromSuperview];
    [(SBIconListView *)self->_utilitiesIconListView removeLayoutObserver:self];
    objc_storeStrong(&self->_utilitiesIconListView, view);
    if (v8)
    {
      [(SBDockIconListView *)v8 setAccessibilityIdentifier:@"utilities icon list view"];
      [(SBIconListView *)v8 setLayoutInsetsMode:2];
      [(SBIconListView *)v8 setAutomaticallyAdjustsLayoutMetricsToFit:0];
      [(SBIconListView *)v8 addLayoutObserver:self];
      [(SBIconListView *)v8 setUsesGlassGroup:0];
      glassContainerView = [(SBFloatingDockView *)self glassContainerView];
      [glassContainerView addSubview:v8];

      [(SBFloatingDockView *)self setNeedsLayout];
    }

    utilitiesIconListView = [(SBFloatingDockView *)self updateMainPlatterMetrics];
    viewCopy = v8;
  }

  MEMORY[0x1EEE66BB8](utilitiesIconListView, viewCopy);
}

- (void)updateMainPlatterMetrics
{
  mainPlatterView = self->_mainPlatterView;
  [(SBFloatingDockView *)self maximumPlatterHeight];
  [(SBFloatingDockPlatterView *)mainPlatterView setReferenceHeight:?];
  v4 = self->_mainPlatterView;
  [(SBFloatingDockView *)self maximumDockContinuousCornerRadius];

  [(SBFloatingDockPlatterView *)v4 setMaximumContinuousCornerRadius:?];
}

- (void)setAccessoryIconView:(id)view
{
  viewCopy = view;
  accessoryIconView = self->_accessoryIconView;
  if (accessoryIconView != viewCopy)
  {
    [(SBIconView *)accessoryIconView removeFromSuperview];
    objc_storeStrong(&self->_accessoryIconView, view);
    if (viewCopy)
    {
      [(SBIconView *)viewCopy setAccessibilityIdentifier:@"Dock accessory icon view"];
      glassContainerView = [(SBFloatingDockView *)self glassContainerView];
      [glassContainerView addSubview:viewCopy];

      if ([(SBFloatingDockView *)self _shouldDisplayAccessoryIconView])
      {
        [(SBFloatingDockView *)self bounds:0];
        [(SBFloatingDockView *)self getMetrics:&v8 forBounds:?];
        [(SBIconView *)viewCopy setIconContentScale:0.001];
        UIRectGetCenter();
        [(SBIconView *)viewCopy setCenter:?];
      }
    }

    [(SBFloatingDockView *)self setNeedsLayout];
  }
}

- (void)setAccessoryIconViewVisible:(BOOL)visible
{
  if (self->_accessoryIconViewVisible != visible)
  {
    v10 = v3;
    v11 = v4;
    self->_accessoryIconViewVisible = visible;
    if ([(SBFloatingDockView *)self _shouldDisplayAccessoryIconView])
    {
      accessoryIconView = self->_accessoryIconView;
      v9 = 0u;
      v7 = accessoryIconView;
      [(SBFloatingDockView *)self bounds:0];
      [(SBFloatingDockView *)self getMetrics:&v8 forBounds:?];
      [(SBIconView *)v7 setIconContentScale:*&v9];
      UIRectGetCenter();
      [(SBIconView *)v7 setCenter:?];
    }

    [(SBFloatingDockView *)self setNeedsLayout];
  }
}

- (void)setRecentIconListView:(id)view
{
  viewCopy = view;
  recentIconListView = self->_recentIconListView;
  if (recentIconListView != viewCopy)
  {
    v8 = viewCopy;
    [(SBDockIconListView *)recentIconListView removeFromSuperview];
    objc_storeStrong(&self->_recentIconListView, view);
    viewCopy = v8;
    if (v8)
    {
      [(SBDockIconListView *)v8 setAccessibilityIdentifier:@"Recent icon list view"];
      [(SBIconListView *)v8 setLayoutInsetsMode:2];
      [(SBIconListView *)v8 setAutomaticallyAdjustsLayoutMetricsToFit:0];
      [(SBIconListView *)v8 setUsesGlassGroup:0];
      glassContainerView = [(SBFloatingDockView *)self glassContainerView];
      [glassContainerView addSubview:v8];

      recentIconListView = [(SBFloatingDockView *)self setNeedsLayout];
      viewCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](recentIconListView, viewCopy);
}

- (void)enumerateIconListViewsUsingBlock:(id)block
{
  v9[3] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v9[0] = [(SBFloatingDockView *)self userIconListView];
  v9[1] = [(SBFloatingDockView *)self utilitiesIconListView];
  [(SBFloatingDockView *)self recentIconListView];
  v9[2] = v5 = 0;
  do
  {
    v8 = 0;
    blockCopy[2](blockCopy, v9[v5], &v8);
    if (v8)
    {
      break;
    }
  }

  while (v5++ != 2);
  for (i = 2; i != -1; --i)
  {
  }
}

- (void)setMinimumUserIconSpaces:(unint64_t)spaces
{
  if (self->_minimumUserIconSpaces != spaces)
  {
    self->_minimumUserIconSpaces = spaces;
    [(SBFloatingDockView *)self setNeedsLayout];
  }
}

- (void)setMinimumUtilitiesIconSpaces:(unint64_t)spaces
{
  if (self->_minimumUtilitiesIconSpaces != spaces)
  {
    self->_minimumUtilitiesIconSpaces = spaces;
    [(SBFloatingDockView *)self setNeedsLayout];
  }
}

- (void)setPaddingEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_paddingEdgeInsets.top, v3), vceqq_f64(*&self->_paddingEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_paddingEdgeInsets = insets;
    [(SBFloatingDockView *)self setNeedsLayout];
  }
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    [(SBFloatingDockView *)self setNeedsLayout];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  if (self->_editing != editing)
  {
    v8[7] = v4;
    v8[8] = v5;
    animatedCopy = animated;
    self->_editing = editing;
    [(SBFloatingDockView *)self setNeedsLayout];
    if (animatedCopy)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __42__SBFloatingDockView_setEditing_animated___block_invoke;
      v8[3] = &unk_1E8088C90;
      v8[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:0.3];
    }
  }
}

- (void)setMaximumEditingIconSize:(CGSize)size
{
  if (size.width != self->_maximumEditingIconSize.width || size.height != self->_maximumEditingIconSize.height)
  {
    self->_maximumEditingIconSize = size;
    if ([(SBFloatingDockView *)self isEditing])
    {

      [(SBFloatingDockView *)self setNeedsLayout];
    }
  }
}

- (CGRect)platterFrame
{
  mainPlatterView = [(SBFloatingDockView *)self mainPlatterView];
  [mainPlatterView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)hasPlatterShadow
{
  mainPlatterView = [(SBFloatingDockView *)self mainPlatterView];
  hasShadow = [mainPlatterView hasShadow];

  return hasShadow;
}

- (void)setHasPlatterShadow:(BOOL)shadow
{
  shadowCopy = shadow;
  mainPlatterView = [(SBFloatingDockView *)self mainPlatterView];
  [mainPlatterView setHasShadow:shadowCopy];
}

- (UIEdgeInsets)platterShadowOutsets
{
  mainPlatterView = [(SBFloatingDockView *)self mainPlatterView];
  [mainPlatterView shadowOutsets];
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

- (UIEdgeInsets)platterShadowOutsetsForBounds:(CGRect)bounds
{
  memset(v25, 0, sizeof(v25));
  [(SBFloatingDockView *)self getMetrics:v25 forBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  BSRectWithSize();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  mainPlatterView = [(SBFloatingDockView *)self mainPlatterView];
  [mainPlatterView shadowOutsetsForBounds:{v5, v7, v9, v11}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

+ (double)contentHeightForBounds:(CGRect)bounds mainPlatterViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  MaxY = CGRectGetMaxY(bounds);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  return MaxY - CGRectGetMinY(v10);
}

- (double)contentHeight
{
  v3 = objc_opt_class();
  [(SBFloatingDockView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  mainPlatterView = [(SBFloatingDockView *)self mainPlatterView];
  [mainPlatterView frame];
  [v3 contentHeightForBounds:v5 mainPlatterViewFrame:{v7, v9, v11, v13, v14, v15, v16}];
  v18 = v17;

  return v18;
}

- (double)contentHeightForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  [(SBFloatingDockView *)self getMetrics:v8 forBounds:bounds.origin.x];
  [objc_opt_class() contentHeightForBounds:x mainPlatterViewFrame:{y, width, height, v9, v10}];
  return result;
}

- (double)iconContentScaleForNumberOfUserIcons:(unint64_t)icons numberOfUtilitiesIcons:(unint64_t)utilitiesIcons
{
  recentIconListView = [(SBFloatingDockView *)self recentIconListView];
  displayedModel = [recentIconListView displayedModel];
  numberOfIcons = [displayedModel numberOfIcons];

  traitCollection = [(SBFloatingDockView *)self traitCollection];
  [traitCollection displayScale];
  v37 = v11;

  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  v12 = objc_opt_class();
  [(SBFloatingDockView *)self bounds];
  v35 = v14;
  v36 = v13;
  v34 = v15;
  v17 = v16;
  _shouldDisplayAccessoryIconView = [(SBFloatingDockView *)self _shouldDisplayAccessoryIconView];
  [(SBFloatingDockView *)self _referenceIconSize];
  v20 = v19;
  v22 = v21;
  [(SBFloatingDockView *)self maximumIconSize];
  v24 = v23;
  v26 = v25;
  [(SBFloatingDockView *)self _referenceInterIconSpacing];
  v28 = v27;
  [(SBFloatingDockView *)self maximumInterIconSpacing];
  v30 = v29;
  [(SBFloatingDockView *)self platterVerticalMargin];
  [v12 getMetrics:v38 forBounds:icons layoutScale:numberOfIcons numberOfUserIcons:utilitiesIcons numberOfRecentIcons:_shouldDisplayAccessoryIconView numberOfUtilitiesIcons:-[SBFloatingDockView isEditing](self displayAccessoryIconView:"isEditing") paddingEdgeInsets:v36 referenceIconSize:v35 maximumIconSize:v34 referenceInterIconSpacing:v17 maximumInterIconSpacing:v37 platterVerticalMargin:*&self->_paddingEdgeInsets.top editing:{*&self->_paddingEdgeInsets.left, *&self->_paddingEdgeInsets.bottom, *&self->_paddingEdgeInsets.right, v20, v22, v24, v26, v28, v30, v31}];
  v32 = *&v39;

  return v32;
}

- (double)interIconSpacing
{
  [(SBFloatingDockView *)self iconContentScale];
  v4 = v3;
  [(SBFloatingDockView *)self maximumInterIconSpacing];
  v6 = v5;
  if (BSFloatIsOne())
  {
    return v6;
  }

  v7.n128_f64[0] = v4 * v6;
  MEMORY[0x1EEE4DCF0](self, v7);
  return result;
}

- (void)getMetrics:(id *)metrics forBounds:(CGRect)bounds
{
  userIconListView = [(SBFloatingDockView *)self userIconListView];
  recentIconListView = [(SBFloatingDockView *)self recentIconListView];
  utilitiesIconListView = [(SBFloatingDockView *)self utilitiesIconListView];
  displayedModel = [userIconListView displayedModel];
  numberOfIcons = [displayedModel numberOfIcons];

  minimumUserIconSpaces = [(SBFloatingDockView *)self minimumUserIconSpaces];
  if (numberOfIcons <= minimumUserIconSpaces)
  {
    v11 = minimumUserIconSpaces;
  }

  else
  {
    v11 = numberOfIcons;
  }

  displayedModel2 = [recentIconListView displayedModel];
  numberOfIcons2 = [displayedModel2 numberOfIcons];

  displayedModel3 = [utilitiesIconListView displayedModel];
  numberOfIcons3 = [displayedModel3 numberOfIcons];

  minimumUtilitiesIconSpaces = [(SBFloatingDockView *)self minimumUtilitiesIconSpaces];
  if (numberOfIcons3 <= minimumUtilitiesIconSpaces)
  {
    v17 = minimumUtilitiesIconSpaces;
  }

  else
  {
    v17 = numberOfIcons3;
  }

  _shouldDisplayAccessoryIconView = [(SBFloatingDockView *)self _shouldDisplayAccessoryIconView];
  top = self->_paddingEdgeInsets.top;
  v37 = *&self->_paddingEdgeInsets.left;
  right = self->_paddingEdgeInsets.right;
  [(SBFloatingDockView *)self _referenceIconSize];
  v20 = v19;
  v22 = v21;
  [(SBFloatingDockView *)self _referenceInterIconSpacing];
  v24 = v23;
  [(SBFloatingDockView *)self maximumIconSize];
  v26 = v25;
  v28 = v27;
  [(SBFloatingDockView *)self maximumInterIconSpacing];
  v30 = v29;
  [(SBFloatingDockView *)self platterVerticalMargin];
  v32 = v31;
  traitCollection = [(SBFloatingDockView *)self traitCollection];
  [traitCollection displayScale];
  v35 = v34;

  [objc_opt_class() getMetrics:metrics forBounds:v11 layoutScale:numberOfIcons2 numberOfUserIcons:v17 numberOfRecentIcons:_shouldDisplayAccessoryIconView numberOfUtilitiesIcons:-[SBFloatingDockView isEditing](self displayAccessoryIconView:"isEditing") paddingEdgeInsets:bounds.origin.x referenceIconSize:bounds.origin.y maximumIconSize:bounds.size.width referenceInterIconSpacing:bounds.size.height maximumInterIconSpacing:v35 platterVerticalMargin:*&top editing:{v37, *&right, v20, v22, v26, v28, v24, v30, v32}];
}

+ (void)getMetrics:(id *)metrics forBounds:(CGRect)bounds layoutScale:(double)scale numberOfUserIcons:(unint64_t)icons numberOfRecentIcons:(unint64_t)recentIcons numberOfUtilitiesIcons:(unint64_t)utilitiesIcons displayAccessoryIconView:(BOOL)view paddingEdgeInsets:(UIEdgeInsets)self0 referenceIconSize:(CGSize)self1 maximumIconSize:(CGSize)self2 referenceInterIconSpacing:(double)self3 maximumInterIconSpacing:(double)self4 platterVerticalMargin:(double)self5 editing:(BOOL)self6
{
  viewCopy = view;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v27 = iconSize.width;
  if (CGRectIsEmpty(bounds))
  {
    v182 = *MEMORY[0x1E695F058];
    rect = *(MEMORY[0x1E695F058] + 8);
    v28 = *(MEMORY[0x1E695F058] + 16);
    v170 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [self minimumPlatterMargin];
    v30 = v29;
    v194.origin.x = x;
    v194.origin.y = y;
    v194.size.width = width;
    v194.size.height = height;
    v195 = CGRectInset(v194, v30, 0.0);
    v182 = v195.origin.x;
    rect = v195.origin.y;
    v28 = v195.size.width;
    v170 = v195.size.height;
  }

  if (icons)
  {
    v31 = icons - 1;
  }

  else
  {
    v31 = 0;
  }

  if (recentIcons)
  {
    v32 = recentIcons - 1;
  }

  else
  {
    v32 = 0;
  }

  if (utilitiesIcons)
  {
    v33 = utilitiesIcons - 1;
  }

  else
  {
    v33 = 0;
  }

  if (utilitiesIcons | recentIcons)
  {
    v34 = 1;
  }

  else
  {
    v34 = viewCopy;
  }

  v35 = !viewCopy;
  if (utilitiesIcons | recentIcons)
  {
    v35 = 1;
  }

  v36 = v34 == 0;
  v37 = 2;
  if (v36)
  {
    v37 = 0;
  }

  if (!v35)
  {
    v37 = viewCopy;
  }

  if (icons)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v39 = recentIcons != 0;
  if (utilitiesIcons)
  {
    v40 = 1;
  }

  else
  {
    v40 = viewCopy;
  }

  if (utilitiesIcons)
  {
    v41 = 2;
  }

  else
  {
    v41 = 1;
  }

  if (utilitiesIcons)
  {
    v42 = viewCopy;
  }

  else
  {
    v42 = 0;
  }

  if ((v39 & v40) != 0)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0;
  }

  v44 = (icons != 0) & ((utilitiesIcons | recentIcons) != 0);
  if (icons != 0 && (utilitiesIcons | recentIcons) != 0)
  {
    v45 = 2;
  }

  else
  {
    v45 = 1;
  }

  if (v39 && utilitiesIcons != 0)
  {
    v44 = v45;
  }

  v46 = v44;
  v166 = v42;
  v172 = v28;
  if (BSFloatGreaterThanFloat())
  {
    UIFloorToScale();
    v27 = v47;
  }

  else if (size.width <= iconSize.width)
  {
    v48 = 1.0;
    goto LABEL_49;
  }

  v48 = 1.0;
  if (v27 / size.width != 1.0)
  {
    v165 = v27 / size.width;
    UIFloorToScale();
    iconSpacing = v49;
    goto LABEL_50;
  }

LABEL_49:
  v165 = v48;
LABEL_50:
  v174 = v27;
  if (icons)
  {
    v50 = iconSpacing * v31 + icons * v27;
  }

  else
  {
    v50 = 0.0;
  }

  if (recentIcons)
  {
    v51 = iconSpacing * v32 + recentIcons * v27;
  }

  else
  {
    v51 = 0.0;
  }

  v52 = iconSpacing * v33 + utilitiesIcons * v27;
  if (viewCopy)
  {
    v53 = v27 * viewCopy;
  }

  else
  {
    v53 = 0.0;
  }

  v54 = BSFloatGreaterThanFloat();
  v55 = BSFloatGreaterThanFloat();
  v176 = v53;
  v56 = BSFloatGreaterThanFloat();
  if (utilitiesIcons)
  {
    v57 = iconSpacing * v33 + utilitiesIcons * v27;
  }

  else
  {
    v57 = 0.0;
  }

  v180 = v57;
  amount = v50;
  v58 = v50 + v46;
  if (utilitiesIcons)
  {
    v59 = 1;
  }

  else
  {
    v59 = v55;
  }

  v60 = v59 | v56;
  if ((v54 & (v59 | v56)) != 0)
  {
    v58 = v58 + v38 * iconSpacing;
  }

  v162 = v51;
  if (v55)
  {
    v58 = v51 + v58;
    if (!((utilitiesIcons != 0) | v56 & 1))
    {
      goto LABEL_73;
    }

    v58 = v58 + v43 * iconSpacing;
  }

  if (utilitiesIcons)
  {
    v58 = v52 + v58;
    if (v56)
    {
      v58 = v58 + v166 * iconSpacing;
    }
  }

LABEL_73:
  if (v56)
  {
    v61 = v53 + v58;
  }

  else
  {
    v61 = v58;
  }

  v196.origin.x = v182;
  v196.origin.y = rect;
  v196.size.width = v172;
  v196.size.height = v170;
  CGRectGetMidX(v196);
  UIRoundToScale();
  v63 = v62;
  v197.origin.x = v182;
  v197.origin.y = rect;
  v197.size.width = v172;
  v197.size.height = v170;
  v64 = CGRectGetMaxY(v197) - v174 - iconSpacing;
  iconSpacingCopy = margin;
  if (margin <= 0.0)
  {
    iconSpacingCopy = iconSpacing;
  }

  v198.origin.y = v64 - iconSpacingCopy;
  v198.origin.x = v63;
  v198.size.width = v61;
  v198.size.height = v174;
  v199 = CGRectInset(v198, -iconSpacing, -iconSpacing);
  v66 = v199.origin.x;
  iconSpacingCopy2 = iconSpacing;
  v68 = v199.origin.y;
  v69 = v199.size.width;
  v70 = v199.size.height;
  v187 = iconSpacingCopy2;
  v71 = iconSpacingCopy2 * 6.0 + v174 * 4.0 + 1.0;
  if (BSFloatLessThanFloat())
  {
    v200.origin.x = v66;
    v200.origin.y = v68;
    v200.size.width = v69;
    v200.size.height = v70;
    v72 = (v71 - CGRectGetWidth(v200)) * 0.5;
    UIRectGetCenter();
    UIRectCenteredAboutPointScale();
    v163 = v73;
    v183 = v74;
    v185 = v75;
    v70 = v76;
  }

  else
  {
    v183 = v68;
    v185 = v69;
    v163 = v66;
    v72 = 0.0;
  }

  v77 = v187 + v187 + v61;
  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v79 = userInterfaceLayoutDirection != 1;
  memset(&slice, 0, sizeof(slice));
  v80 = 2 * (userInterfaceLayoutDirection == 1);
  memset(&remainder, 0, sizeof(remainder));
  v201.origin.x = v187 + v72;
  v201.origin.y = v187;
  v201.size.width = v61;
  v201.size.height = v174;
  CGRectDivide(v201, &slice, &remainder, amount, v80);
  v81 = *(MEMORY[0x1E695F058] + 16);
  v191.origin = *MEMORY[0x1E695F058];
  v191.size = v81;
  v161 = v187 + v72;
  v82 = v187 + v72;
  v81.width = v187;
  v83 = v61;
  v84 = v174;
  CGRectDivide(*(&v81 - 8), &v191, &remainder, v176, (2 * v79));
  memset(&v190, 0, sizeof(v190));
  recta = v187 + v174 + v187;
  v164 = v70;
  if (v180 <= 0.0)
  {
    if (v176 <= 0.0)
    {
      v86 = v185;
      v98 = 0;
      v99 = v72;
      v100 = v187 + v187 + v61;
      v101 = v187 + v174 + v187;
      if (userInterfaceLayoutDirection == 1)
      {
        MinX = CGRectGetMinX(*&v99);
      }

      else
      {
        MinX = CGRectGetMaxX(*&v99) - v187;
      }

      v204.origin.y = 0.0;
      v204.origin.x = v72;
      v204.size.width = v187 + v187 + v61;
      v204.size.height = v187 + v174 + v187;
      v190.origin.x = MinX;
      v190.origin.y = 0.0;
      v190.size.width = v187;
      v190.size.height = CGRectGetHeight(v204);
      v85 = v183;
    }

    else
    {
      v92 = v191.origin.x;
      v93 = v191.origin.y;
      v94 = v191.size.width;
      v95 = v191.size.height;
      v85 = v183;
      v86 = v185;
      if (userInterfaceLayoutDirection == 1)
      {
        MaxX = CGRectGetMaxX(*&v92);
        v97 = v187;
      }

      else
      {
        v97 = v187;
        MaxX = CGRectGetMinX(*&v92) - v187;
      }

      v203.origin.y = 0.0;
      v203.origin.x = v72;
      v203.size.width = v187 + v187 + v61;
      v203.size.height = v187 + v174 + v187;
      v190.origin.x = MaxX;
      v190.origin.y = 0.0;
      v190.size.width = v97;
      v190.size.height = CGRectGetHeight(v203);
    }
  }

  else
  {
    v202.origin.y = 0.0;
    v202.origin.x = v72;
    v202.size.width = v187 + v187 + v61;
    v202.size.height = v187 + v174 + v187;
    CGRectDivide(v202, &v190, &remainder, v187 + v187 + v180, (2 * v79));
    v85 = v183;
    v86 = v185;
    if (v176 > 0.0)
    {
      v87 = v191.origin.x;
      v88 = v191.origin.y;
      v89 = v191.size.width;
      v90 = v191.size.height;
      if (userInterfaceLayoutDirection == 1)
      {
        v91 = CGRectGetMaxX(*&v87);
      }

      else
      {
        v103 = CGRectGetMinX(*&v87);
        v91 = v103 - CGRectGetWidth(v190);
      }

      v190.origin.x = v91;
    }
  }

  v173 = v187 + v187 + v61;
  v177 = v72;
  v184 = v85;
  v186 = v86;
  MinY = CGRectGetMinY(slice);
  v105 = CGRectGetHeight(slice);
  v106 = v190.origin.x;
  v107 = v190.origin.y;
  v108 = v190.size.width;
  v109 = v190.size.height;
  if (v180 <= 0.0)
  {
    v110 = v187;
    if (userInterfaceLayoutDirection == 1)
    {
      v112 = CGRectGetMaxX(*&v106);
    }

    else
    {
      v112 = CGRectGetMinX(*&v106);
    }

    v171 = v112;
    v113 = 0.0;
  }

  else
  {
    v110 = v187;
    if (userInterfaceLayoutDirection == 1)
    {
      v111 = CGRectGetMaxX(*&v106);
    }

    else
    {
      v111 = CGRectGetMinX(*&v106) + -1.0;
    }

    v171 = v111;
    v113 = 1.0;
  }

  v181 = v113;
  v114 = MinY + -1.0;
  v115 = v105 + 2.0;
  memset(&v189, 0, sizeof(v189));
  v167 = v114;
  amounta = v105 + 2.0;
  if (v162 <= 0.0)
  {
    v117 = v171;
    v123 = v171;
    v124 = v114;
    v125 = v181;
    v126 = v115;
    if (userInterfaceLayoutDirection == 1)
    {
      v127 = CGRectGetMaxX(*&v123);
    }

    else
    {
      v127 = CGRectGetMinX(*&v123);
    }

    v129 = v127;
    v206.origin.x = v177;
    v206.size.height = v187 + v174 + v187;
    v206.origin.y = 0.0;
    v206.size.width = v187 + v187 + v61;
    v189.origin.x = v129;
    v189.origin.y = 0.0;
    v189.size.width = 0.0;
    v189.size.height = CGRectGetHeight(v206);
  }

  else
  {
    v205.origin.x = v161;
    v205.origin.y = v110;
    v205.size.width = v61;
    v205.size.height = v174;
    CGRectDivide(v205, &v189, &remainder, v162, (2 * v79));
    if (utilitiesIcons)
    {
      v116 = v110;
    }

    else
    {
      v116 = 0.0;
    }

    v117 = v171;
    v118 = v171;
    v119 = v114;
    v120 = v181;
    v121 = v115;
    if (userInterfaceLayoutDirection == 1)
    {
      v122 = v116 + CGRectGetMaxX(*&v118);
    }

    else
    {
      v128 = CGRectGetMinX(*&v118);
      v122 = v128 - CGRectGetWidth(v189) - v116;
    }

    v189.origin.x = v122;
  }

  v130 = CGRectGetMinY(slice);
  v131 = CGRectGetHeight(slice);
  v132 = v189.origin.x;
  v133 = v189.origin.y;
  v134 = v189.size.width;
  v135 = v189.size.height;
  if (userInterfaceLayoutDirection == 1)
  {
    v136 = v110 + CGRectGetMaxX(*&v132);
  }

  else
  {
    v136 = CGRectGetMinX(*&v132) + -1.0 - v110;
  }

  v137 = v130 + -1.0;
  v138 = v131 + 2.0;
  if (v162 == 0.0)
  {
    v139 = 0.0;
  }

  else
  {
    v139 = 1.0;
  }

  memset(&v188, 0, sizeof(v188));
  v175 = v136;
  if (v60)
  {
    v140 = v136;
    v141 = v130 + -1.0;
    v142 = v139;
    v143 = v131 + 2.0;
    v144 = v177;
    if ((v55 & 1) == 0)
    {
      v140 = v117;
      v141 = v167;
      v138 = amounta;
      v142 = v181;
      if (!utilitiesIcons)
      {
        v140 = v191.origin.x;
        v141 = v191.origin.y;
        v142 = v191.size.width;
        v138 = v191.size.height;
      }
    }

    if (userInterfaceLayoutDirection == 1)
    {
      v145 = CGRectGetMaxX(*(&v138 - 3));
      v207.origin.y = 0.0;
      v207.origin.x = v177;
      v207.size.width = v173;
      v207.size.height = recta;
      v146 = CGRectGetMaxX(v207) - v145;
      v147 = recta;
    }

    else
    {
      v148 = CGRectGetMinX(*(&v138 - 3));
      v209.origin.y = 0.0;
      v209.origin.x = v177;
      v209.size.width = v173;
      v147 = recta;
      v209.size.height = recta;
      v146 = v148 - CGRectGetMinX(v209);
    }

    v117 = v171;
  }

  else
  {
    v143 = v131 + 2.0;
    v208.origin.y = 0.0;
    v144 = v177;
    v147 = recta;
    v208.origin.x = v177;
    v208.size.width = v77;
    v208.size.height = recta;
    v146 = CGRectGetWidth(v208);
  }

  v210.origin.x = v144;
  v210.origin.y = 0.0;
  v210.size.width = v77;
  v210.size.height = v147;
  CGRectDivide(v210, &v188, &remainder, v146, v80);
  v149 = CGRectGetMinY(slice);
  v150 = v149 - CGRectGetMinY(v188);
  v151 = CGRectGetMinX(slice);
  v152 = v151 - CGRectGetMinX(v188);
  MaxY = CGRectGetMaxY(v188);
  v154 = MaxY - CGRectGetMaxY(slice);
  v155 = CGRectGetMaxX(v188);
  v156 = CGRectGetMaxX(slice);
  size = v188.size;
  metrics->var0.origin = v188.origin;
  metrics->var0.size = size;
  metrics->var1.top = v150;
  metrics->var1.left = v152;
  metrics->var1.bottom = v154;
  metrics->var1.right = v155 - v156;
  v158 = v189.size;
  metrics->var2.origin = v189.origin;
  metrics->var2.size = v158;
  v159 = v190.size;
  metrics->var3.origin = v190.origin;
  metrics->var3.size = v159;
  metrics->var7.origin.x = v117;
  metrics->var7.origin.y = v167;
  metrics->var7.size.width = v181;
  metrics->var7.size.height = amounta;
  v160 = v191.size;
  metrics->var5.origin = v191.origin;
  metrics->var5.size = v160;
  metrics->var6.origin.x = v175;
  metrics->var6.origin.y = v137;
  metrics->var6.size.width = v139;
  metrics->var6.size.height = v143;
  metrics->var8.origin.x = v163;
  metrics->var8.origin.y = v184;
  metrics->var8.size.width = v186;
  metrics->var8.size.height = v164;
  metrics->var9.origin.x = 0.0;
  metrics->var9.origin.y = 0.0;
  metrics->var9.size.width = v186;
  metrics->var9.size.height = v164;
  metrics->var10 = v165;
  metrics->var11 = v187;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v8.receiver = self;
  v8.super_class = SBFloatingDockView;
  if ([(SBFloatingDockView *)&v8 pointInside:event withEvent:?])
  {
    return 1;
  }

  [(UIView *)self->_touchReceivingView frame];
  v9.x = x;
  v9.y = y;
  return CGRectContainsPoint(v10, v9);
}

- (void)layoutSubviews
{
  [(SBFloatingDockView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (BSFloatGreaterThanFloat())
  {
    if (BSFloatGreaterThanFloat())
    {
      v49 = 0u;
      *v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v34 = 0u;
      memset(&v35, 0, sizeof(v35));
      v33 = 0u;
      memset(&v32, 0, sizeof(v32));
      [(SBFloatingDockView *)self getMetrics:&v32 forBounds:v4, v6, v8, v10];
      if (BSFloatGreaterThanFloat())
      {
        mainPlatterView = [(SBFloatingDockView *)self mainPlatterView];
        glassContainerView = [(SBFloatingDockView *)self glassContainerView];
        [mainPlatterView sbf_setBoundsAndPositionFromFrame:{v46, v47}];
        [(UIView *)self->_touchReceivingView sbf_setBoundsAndPositionFromFrame:*&v46 + self->_paddingEdgeInsets.left, *(&v46 + 1) + self->_paddingEdgeInsets.top, *&v47 - (self->_paddingEdgeInsets.left + self->_paddingEdgeInsets.right), *(&v47 + 1) - (self->_paddingEdgeInsets.top + self->_paddingEdgeInsets.bottom)];
        [glassContainerView sbf_setBoundsAndPositionFromFrame:{v48, v49}];
        recentDividerView = [(SBFloatingDockView *)self recentDividerView];
        [recentDividerView sbf_setBoundsAndPositionFromFrame:{v42, v43}];
        layer = [recentDividerView layer];
        systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
        [layer setBorderColor:{objc_msgSend(systemYellowColor, "CGColor")}];

        utilitiesDividerView = [(SBFloatingDockView *)self utilitiesDividerView];
        [utilitiesDividerView sbf_setBoundsAndPositionFromFrame:{v44, v45}];
        layer2 = [utilitiesDividerView layer];
        systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
        [layer2 setBorderColor:{objc_msgSend(systemRedColor, "CGColor")}];

        v16 = v50[1];
        userIconListView = [(SBFloatingDockView *)self userIconListView];
        [userIconListView setIconContentScale:v50[0]];
        [userIconListView setIconSpacing:{v16, v16}];
        [userIconListView sbf_setBoundsAndPositionFromFrame:{*&v32.origin, *&v32.size}];
        recentIconListView = [(SBFloatingDockView *)self recentIconListView];
        [recentIconListView setIconContentScale:v50[0]];
        [recentIconListView setIconSpacing:{v16, v16}];
        [recentIconListView sbf_setBoundsAndPositionFromFrame:{*&v35.origin, *&v35.size}];
        utilitiesIconListView = [(SBFloatingDockView *)self utilitiesIconListView];
        [utilitiesIconListView setIconContentScale:v50[0]];
        [utilitiesIconListView setIconSpacing:{v16, v16}];
        [utilitiesIconListView sbf_setBoundsAndPositionFromFrame:{v36, v37}];
        accessoryIconView = [(SBFloatingDockView *)self accessoryIconView];
        [accessoryIconView setIconContentScale:v50[0]];
        UIRectGetCenter();
        [accessoryIconView setCenter:?];
        if (recentIconListView)
        {
          v21 = recentIconListView;
        }

        else
        {
          v21 = userIconListView;
        }

        [v21 cursorHitTestingInsetsForIconSpacing:{v16, v16}];
        [accessoryIconView setCursorHitTestPadding:?];
        CGRectGetWidth(v32);
        v22 = BSFloatGreaterThanFloat();
        CGRectGetWidth(v35);
        v23 = BSFloatGreaterThanFloat();
        displayedModel = [utilitiesIconListView displayedModel];
        v25 = [displayedModel numberOfIcons] != 0;

        if ((v22 & v23) != 0)
        {
          v26 = 1.0;
        }

        else
        {
          v26 = 0.0;
        }

        [recentDividerView setAlpha:v26];
        if (((v22 | v23) & v25) != 0)
        {
          v27 = 1.0;
        }

        else
        {
          v27 = 0.0;
        }

        [utilitiesDividerView setAlpha:v27];
        [(SBFloatingDockView *)self setIconContentScale:v50[0]];
        delegate = [(SBFloatingDockView *)self delegate];
        [delegate floatingDockViewMainPlatterDidChangeFrame:self];
      }
    }
  }
}

- (void)bounce
{
  v14[2] = *MEMORY[0x1E69E9840];
  mainPlatterView = [(SBFloatingDockView *)self mainPlatterView];
  v3 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
  [v3 setAdditive:1];
  [v3 setFromValue:&unk_1F3DB2AE8];
  [v3 setToValue:&unk_1F3DB2AF8];
  [v3 setMass:3.0];
  [v3 setStiffness:1560.0];
  [v3 setDamping:600.0];
  [v3 setDuration:0.4];
  v4 = *MEMORY[0x1E69797E8];
  [v3 setFillMode:*MEMORY[0x1E69797E8]];
  [v3 setRemovedOnCompletion:0];
  v5 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
  [v5 setAdditive:1];
  [v5 setFromValue:&unk_1F3DB2AE8];
  [v5 setToValue:&unk_1F3DB2B08];
  [v5 setMass:2.0];
  [v5 setStiffness:300.0];
  [v5 setDamping:400.0];
  [v5 setBeginTime:0.07];
  [v5 setDuration:0.91];
  [v5 setFillMode:v4];
  animation = [MEMORY[0x1E6979308] animation];
  v14[0] = v3;
  v14[1] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [animation setAnimations:v7];

  [v3 duration];
  v9 = v8;
  [v5 beginTime];
  v11 = v10;
  [v5 duration];
  v13 = v11 + v12;
  if (v9 >= v13)
  {
    v13 = v9;
  }

  [animation setDuration:v13];
  [mainPlatterView addAnimation:animation forKey:@"SBFloatingDockView-bounce"];
}

- (void)_updateBackgroundUserInterfaceStyle
{
  traitCollection = [(SBFloatingDockView *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:traitCollection];
  traitOverrides = [(SBFloatingDockPlatterView *)self->_mainPlatterView traitOverrides];
  v5 = objc_opt_self();
  [traitOverrides setObject:v3 forTrait:v5];
}

- (SBFloatingDockViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)paddingEdgeInsets
{
  top = self->_paddingEdgeInsets.top;
  left = self->_paddingEdgeInsets.left;
  bottom = self->_paddingEdgeInsets.bottom;
  right = self->_paddingEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)maximumEditingIconSize
{
  width = self->_maximumEditingIconSize.width;
  height = self->_maximumEditingIconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end