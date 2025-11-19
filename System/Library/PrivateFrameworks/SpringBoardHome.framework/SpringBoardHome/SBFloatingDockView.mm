@interface SBFloatingDockView
+ (CGSize)maximumIconSizeWithIconImageInfo:(SBIconImageInfo *)a3;
+ (double)contentHeightForBounds:(CGRect)a3 mainPlatterViewFrame:(CGRect)a4;
+ (double)maximumDockContinuousCornerRadiusWithIconImageInfo:(SBIconImageInfo *)a3;
+ (double)maximumInterIconSpacingWithIconImageInfo:(SBIconImageInfo *)a3;
+ (double)maximumPlatterHeightWithIconImageInfo:(SBIconImageInfo *)a3;
+ (void)getMetrics:(id *)a3 forBounds:(CGRect)a4 layoutScale:(double)a5 numberOfUserIcons:(unint64_t)a6 numberOfRecentIcons:(unint64_t)a7 numberOfUtilitiesIcons:(unint64_t)a8 displayAccessoryIconView:(BOOL)a9 paddingEdgeInsets:(UIEdgeInsets)a10 referenceIconSize:(CGSize)a11 maximumIconSize:(CGSize)a12 referenceInterIconSpacing:(double)a13 maximumInterIconSpacing:(double)a14 platterVerticalMargin:(double)a15 editing:(BOOL)a16;
- (BOOL)_shouldDisplayAccessoryIconView;
- (BOOL)hasPlatterShadow;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)platterFrame;
- (CGSize)maximumEditingIconSize;
- (CGSize)maximumIconSize;
- (SBFloatingDockView)initWithFrame:(CGRect)a3;
- (SBFloatingDockViewDelegate)delegate;
- (SBIconImageInfo)_iconImageInfo;
- (UIEdgeInsets)paddingEdgeInsets;
- (UIEdgeInsets)platterShadowOutsets;
- (UIEdgeInsets)platterShadowOutsetsForBounds:(CGRect)a3;
- (double)_referenceInterIconSpacing;
- (double)contentHeight;
- (double)contentHeightForBounds:(CGRect)a3;
- (double)currentDockContinuousCornerRadius;
- (double)iconContentScaleForNumberOfUserIcons:(unint64_t)a3 numberOfUtilitiesIcons:(unint64_t)a4;
- (double)interIconSpacing;
- (double)maximumDockContinuousCornerRadius;
- (double)maximumInterIconSpacing;
- (double)maximumPlatterHeight;
- (void)_updateBackgroundUserInterfaceStyle;
- (void)bounce;
- (void)enumerateIconListViewsUsingBlock:(id)a3;
- (void)getMetrics:(id *)a3 forBounds:(CGRect)a4;
- (void)layoutSubviews;
- (void)setAccessoryIconView:(id)a3;
- (void)setAccessoryIconViewVisible:(BOOL)a3;
- (void)setEditing:(BOOL)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setHasPlatterShadow:(BOOL)a3;
- (void)setMaximumEditingIconSize:(CGSize)a3;
- (void)setMinimumUserIconSpaces:(unint64_t)a3;
- (void)setMinimumUtilitiesIconSpaces:(unint64_t)a3;
- (void)setPaddingEdgeInsets:(UIEdgeInsets)a3;
- (void)setRecentIconListView:(id)a3;
- (void)setUserIconListView:(id)a3;
- (void)setUtilitiesIconListView:(id)a3;
- (void)updateMainPlatterMetrics;
@end

@implementation SBFloatingDockView

- (SBIconImageInfo)_iconImageInfo
{
  v4 = [(SBFloatingDockView *)self userIconListView];
  v5 = [v4 iconLocation];
  v6 = [v4 layoutProvider];
  v7 = [v6 layoutForIconLocation:v5];
  [v7 iconImageInfo];
  v8 = [(SBFloatingDockView *)self traitCollection];
  [v8 displayScale];

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

+ (double)maximumDockContinuousCornerRadiusWithIconImageInfo:(SBIconImageInfo *)a3
{
  v4 = v3;
  [a1 maximumInterIconSpacingWithIconImageInfo:a3];
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
  v2 = [(SBFloatingDockView *)self mainPlatterView];
  [v2 currentContinuousCornerRadius];
  v4 = v3;

  return v4;
}

+ (double)maximumInterIconSpacingWithIconImageInfo:(SBIconImageInfo *)a3
{
  [a1 _referenceInterIconSpacingWithIconImageInfo:a3];

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

+ (double)maximumPlatterHeightWithIconImageInfo:(SBIconImageInfo *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  [a1 maximumInterIconSpacingWithIconImageInfo:a3];
  v13 = v12;
  [a1 maximumIconSizeWithIconImageInfo:{v10, v9, v8, v7}];
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

+ (CGSize)maximumIconSizeWithIconImageInfo:(SBIconImageInfo *)a3
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

- (SBFloatingDockView)initWithFrame:(CGRect)a3
{
  v30[2] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = SBFloatingDockView;
  v3 = [(SBFloatingDockView *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v13 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v12 setBackgroundColor:v13];

    v14 = [(UIView *)v4->_touchReceivingView layer];
    [v14 setHitTestsAsOpaque:1];

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
    v23 = [(SBFloatingDockView *)v4 layer];
    [v23 setAllowsGroupBlending:0];

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

- (void)setUserIconListView:(id)a3
{
  v5 = a3;
  userIconListView = self->_userIconListView;
  if (userIconListView != v5)
  {
    v8 = v5;
    [(SBDockIconListView *)userIconListView removeFromSuperview];
    [(SBIconListView *)self->_userIconListView removeLayoutObserver:self];
    objc_storeStrong(&self->_userIconListView, a3);
    if (v8)
    {
      [(SBDockIconListView *)v8 setAccessibilityIdentifier:@"user icon list view"];
      [(SBIconListView *)v8 setLayoutInsetsMode:2];
      [(SBIconListView *)v8 setAutomaticallyAdjustsLayoutMetricsToFit:0];
      [(SBIconListView *)v8 addLayoutObserver:self];
      [(SBIconListView *)v8 setUsesGlassGroup:0];
      v7 = [(SBFloatingDockView *)self glassContainerView];
      [v7 addSubview:v8];

      [(SBFloatingDockView *)self setNeedsLayout];
    }

    userIconListView = [(SBFloatingDockView *)self updateMainPlatterMetrics];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](userIconListView, v5);
}

- (void)setUtilitiesIconListView:(id)a3
{
  v5 = a3;
  utilitiesIconListView = self->_utilitiesIconListView;
  if (utilitiesIconListView != v5)
  {
    v8 = v5;
    [(SBDockIconListView *)utilitiesIconListView removeFromSuperview];
    [(SBIconListView *)self->_utilitiesIconListView removeLayoutObserver:self];
    objc_storeStrong(&self->_utilitiesIconListView, a3);
    if (v8)
    {
      [(SBDockIconListView *)v8 setAccessibilityIdentifier:@"utilities icon list view"];
      [(SBIconListView *)v8 setLayoutInsetsMode:2];
      [(SBIconListView *)v8 setAutomaticallyAdjustsLayoutMetricsToFit:0];
      [(SBIconListView *)v8 addLayoutObserver:self];
      [(SBIconListView *)v8 setUsesGlassGroup:0];
      v7 = [(SBFloatingDockView *)self glassContainerView];
      [v7 addSubview:v8];

      [(SBFloatingDockView *)self setNeedsLayout];
    }

    utilitiesIconListView = [(SBFloatingDockView *)self updateMainPlatterMetrics];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](utilitiesIconListView, v5);
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

- (void)setAccessoryIconView:(id)a3
{
  v5 = a3;
  accessoryIconView = self->_accessoryIconView;
  if (accessoryIconView != v5)
  {
    [(SBIconView *)accessoryIconView removeFromSuperview];
    objc_storeStrong(&self->_accessoryIconView, a3);
    if (v5)
    {
      [(SBIconView *)v5 setAccessibilityIdentifier:@"Dock accessory icon view"];
      v7 = [(SBFloatingDockView *)self glassContainerView];
      [v7 addSubview:v5];

      if ([(SBFloatingDockView *)self _shouldDisplayAccessoryIconView])
      {
        [(SBFloatingDockView *)self bounds:0];
        [(SBFloatingDockView *)self getMetrics:&v8 forBounds:?];
        [(SBIconView *)v5 setIconContentScale:0.001];
        UIRectGetCenter();
        [(SBIconView *)v5 setCenter:?];
      }
    }

    [(SBFloatingDockView *)self setNeedsLayout];
  }
}

- (void)setAccessoryIconViewVisible:(BOOL)a3
{
  if (self->_accessoryIconViewVisible != a3)
  {
    v10 = v3;
    v11 = v4;
    self->_accessoryIconViewVisible = a3;
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

- (void)setRecentIconListView:(id)a3
{
  v5 = a3;
  recentIconListView = self->_recentIconListView;
  if (recentIconListView != v5)
  {
    v8 = v5;
    [(SBDockIconListView *)recentIconListView removeFromSuperview];
    objc_storeStrong(&self->_recentIconListView, a3);
    v5 = v8;
    if (v8)
    {
      [(SBDockIconListView *)v8 setAccessibilityIdentifier:@"Recent icon list view"];
      [(SBIconListView *)v8 setLayoutInsetsMode:2];
      [(SBIconListView *)v8 setAutomaticallyAdjustsLayoutMetricsToFit:0];
      [(SBIconListView *)v8 setUsesGlassGroup:0];
      v7 = [(SBFloatingDockView *)self glassContainerView];
      [v7 addSubview:v8];

      recentIconListView = [(SBFloatingDockView *)self setNeedsLayout];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](recentIconListView, v5);
}

- (void)enumerateIconListViewsUsingBlock:(id)a3
{
  v9[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9[0] = [(SBFloatingDockView *)self userIconListView];
  v9[1] = [(SBFloatingDockView *)self utilitiesIconListView];
  [(SBFloatingDockView *)self recentIconListView];
  v9[2] = v5 = 0;
  do
  {
    v8 = 0;
    v4[2](v4, v9[v5], &v8);
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

- (void)setMinimumUserIconSpaces:(unint64_t)a3
{
  if (self->_minimumUserIconSpaces != a3)
  {
    self->_minimumUserIconSpaces = a3;
    [(SBFloatingDockView *)self setNeedsLayout];
  }
}

- (void)setMinimumUtilitiesIconSpaces:(unint64_t)a3
{
  if (self->_minimumUtilitiesIconSpaces != a3)
  {
    self->_minimumUtilitiesIconSpaces = a3;
    [(SBFloatingDockView *)self setNeedsLayout];
  }
}

- (void)setPaddingEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_paddingEdgeInsets.top, v3), vceqq_f64(*&self->_paddingEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_paddingEdgeInsets = a3;
    [(SBFloatingDockView *)self setNeedsLayout];
  }
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    [(SBFloatingDockView *)self setNeedsLayout];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_editing != a3)
  {
    v8[7] = v4;
    v8[8] = v5;
    v6 = a4;
    self->_editing = a3;
    [(SBFloatingDockView *)self setNeedsLayout];
    if (v6)
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

- (void)setMaximumEditingIconSize:(CGSize)a3
{
  if (a3.width != self->_maximumEditingIconSize.width || a3.height != self->_maximumEditingIconSize.height)
  {
    self->_maximumEditingIconSize = a3;
    if ([(SBFloatingDockView *)self isEditing])
    {

      [(SBFloatingDockView *)self setNeedsLayout];
    }
  }
}

- (CGRect)platterFrame
{
  v2 = [(SBFloatingDockView *)self mainPlatterView];
  [v2 frame];
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
  v2 = [(SBFloatingDockView *)self mainPlatterView];
  v3 = [v2 hasShadow];

  return v3;
}

- (void)setHasPlatterShadow:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBFloatingDockView *)self mainPlatterView];
  [v4 setHasShadow:v3];
}

- (UIEdgeInsets)platterShadowOutsets
{
  v2 = [(SBFloatingDockView *)self mainPlatterView];
  [v2 shadowOutsets];
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

- (UIEdgeInsets)platterShadowOutsetsForBounds:(CGRect)a3
{
  memset(v25, 0, sizeof(v25));
  [(SBFloatingDockView *)self getMetrics:v25 forBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  BSRectWithSize();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SBFloatingDockView *)self mainPlatterView];
  [v12 shadowOutsetsForBounds:{v5, v7, v9, v11}];
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

+ (double)contentHeightForBounds:(CGRect)a3 mainPlatterViewFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  MaxY = CGRectGetMaxY(a3);
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
  v12 = [(SBFloatingDockView *)self mainPlatterView];
  [v12 frame];
  [v3 contentHeightForBounds:v5 mainPlatterViewFrame:{v7, v9, v11, v13, v14, v15, v16}];
  v18 = v17;

  return v18;
}

- (double)contentHeightForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  [(SBFloatingDockView *)self getMetrics:v8 forBounds:a3.origin.x];
  [objc_opt_class() contentHeightForBounds:x mainPlatterViewFrame:{y, width, height, v9, v10}];
  return result;
}

- (double)iconContentScaleForNumberOfUserIcons:(unint64_t)a3 numberOfUtilitiesIcons:(unint64_t)a4
{
  v7 = [(SBFloatingDockView *)self recentIconListView];
  v8 = [v7 displayedModel];
  v9 = [v8 numberOfIcons];

  v10 = [(SBFloatingDockView *)self traitCollection];
  [v10 displayScale];
  v37 = v11;

  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  v12 = objc_opt_class();
  [(SBFloatingDockView *)self bounds];
  v35 = v14;
  v36 = v13;
  v34 = v15;
  v17 = v16;
  v18 = [(SBFloatingDockView *)self _shouldDisplayAccessoryIconView];
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
  [v12 getMetrics:v38 forBounds:a3 layoutScale:v9 numberOfUserIcons:a4 numberOfRecentIcons:v18 numberOfUtilitiesIcons:-[SBFloatingDockView isEditing](self displayAccessoryIconView:"isEditing") paddingEdgeInsets:v36 referenceIconSize:v35 maximumIconSize:v34 referenceInterIconSpacing:v17 maximumInterIconSpacing:v37 platterVerticalMargin:*&self->_paddingEdgeInsets.top editing:{*&self->_paddingEdgeInsets.left, *&self->_paddingEdgeInsets.bottom, *&self->_paddingEdgeInsets.right, v20, v22, v24, v26, v28, v30, v31}];
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

- (void)getMetrics:(id *)a3 forBounds:(CGRect)a4
{
  v40 = [(SBFloatingDockView *)self userIconListView];
  v6 = [(SBFloatingDockView *)self recentIconListView];
  v7 = [(SBFloatingDockView *)self utilitiesIconListView];
  v8 = [v40 displayedModel];
  v9 = [v8 numberOfIcons];

  v10 = [(SBFloatingDockView *)self minimumUserIconSpaces];
  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = [v6 displayedModel];
  v13 = [v12 numberOfIcons];

  v14 = [v7 displayedModel];
  v15 = [v14 numberOfIcons];

  v16 = [(SBFloatingDockView *)self minimumUtilitiesIconSpaces];
  if (v15 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v18 = [(SBFloatingDockView *)self _shouldDisplayAccessoryIconView];
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
  v33 = [(SBFloatingDockView *)self traitCollection];
  [v33 displayScale];
  v35 = v34;

  [objc_opt_class() getMetrics:a3 forBounds:v11 layoutScale:v13 numberOfUserIcons:v17 numberOfRecentIcons:v18 numberOfUtilitiesIcons:-[SBFloatingDockView isEditing](self displayAccessoryIconView:"isEditing") paddingEdgeInsets:a4.origin.x referenceIconSize:a4.origin.y maximumIconSize:a4.size.width referenceInterIconSpacing:a4.size.height maximumInterIconSpacing:v35 platterVerticalMargin:*&top editing:{v37, *&right, v20, v22, v26, v28, v24, v30, v32}];
}

+ (void)getMetrics:(id *)a3 forBounds:(CGRect)a4 layoutScale:(double)a5 numberOfUserIcons:(unint64_t)a6 numberOfRecentIcons:(unint64_t)a7 numberOfUtilitiesIcons:(unint64_t)a8 displayAccessoryIconView:(BOOL)a9 paddingEdgeInsets:(UIEdgeInsets)a10 referenceIconSize:(CGSize)a11 maximumIconSize:(CGSize)a12 referenceInterIconSpacing:(double)a13 maximumInterIconSpacing:(double)a14 platterVerticalMargin:(double)a15 editing:(BOOL)a16
{
  v16 = a9;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v27 = a12.width;
  if (CGRectIsEmpty(a4))
  {
    v182 = *MEMORY[0x1E695F058];
    rect = *(MEMORY[0x1E695F058] + 8);
    v28 = *(MEMORY[0x1E695F058] + 16);
    v170 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [a1 minimumPlatterMargin];
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

  if (a6)
  {
    v31 = a6 - 1;
  }

  else
  {
    v31 = 0;
  }

  if (a7)
  {
    v32 = a7 - 1;
  }

  else
  {
    v32 = 0;
  }

  if (a8)
  {
    v33 = a8 - 1;
  }

  else
  {
    v33 = 0;
  }

  if (a8 | a7)
  {
    v34 = 1;
  }

  else
  {
    v34 = v16;
  }

  v35 = !v16;
  if (a8 | a7)
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
    v37 = v16;
  }

  if (a6)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v39 = a7 != 0;
  if (a8)
  {
    v40 = 1;
  }

  else
  {
    v40 = v16;
  }

  if (a8)
  {
    v41 = 2;
  }

  else
  {
    v41 = 1;
  }

  if (a8)
  {
    v42 = v16;
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

  v44 = (a6 != 0) & ((a8 | a7) != 0);
  if (a6 != 0 && (a8 | a7) != 0)
  {
    v45 = 2;
  }

  else
  {
    v45 = 1;
  }

  if (v39 && a8 != 0)
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

  else if (a11.width <= a12.width)
  {
    v48 = 1.0;
    goto LABEL_49;
  }

  v48 = 1.0;
  if (v27 / a11.width != 1.0)
  {
    v165 = v27 / a11.width;
    UIFloorToScale();
    a14 = v49;
    goto LABEL_50;
  }

LABEL_49:
  v165 = v48;
LABEL_50:
  v174 = v27;
  if (a6)
  {
    v50 = a14 * v31 + a6 * v27;
  }

  else
  {
    v50 = 0.0;
  }

  if (a7)
  {
    v51 = a14 * v32 + a7 * v27;
  }

  else
  {
    v51 = 0.0;
  }

  v52 = a14 * v33 + a8 * v27;
  if (v16)
  {
    v53 = v27 * v16;
  }

  else
  {
    v53 = 0.0;
  }

  v54 = BSFloatGreaterThanFloat();
  v55 = BSFloatGreaterThanFloat();
  v176 = v53;
  v56 = BSFloatGreaterThanFloat();
  if (a8)
  {
    v57 = a14 * v33 + a8 * v27;
  }

  else
  {
    v57 = 0.0;
  }

  v180 = v57;
  amount = v50;
  v58 = v50 + v46;
  if (a8)
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
    v58 = v58 + v38 * a14;
  }

  v162 = v51;
  if (v55)
  {
    v58 = v51 + v58;
    if (!((a8 != 0) | v56 & 1))
    {
      goto LABEL_73;
    }

    v58 = v58 + v43 * a14;
  }

  if (a8)
  {
    v58 = v52 + v58;
    if (v56)
    {
      v58 = v58 + v166 * a14;
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
  v64 = CGRectGetMaxY(v197) - v174 - a14;
  v65 = a15;
  if (a15 <= 0.0)
  {
    v65 = a14;
  }

  v198.origin.y = v64 - v65;
  v198.origin.x = v63;
  v198.size.width = v61;
  v198.size.height = v174;
  v199 = CGRectInset(v198, -a14, -a14);
  v66 = v199.origin.x;
  v67 = a14;
  v68 = v199.origin.y;
  v69 = v199.size.width;
  v70 = v199.size.height;
  v187 = v67;
  v71 = v67 * 6.0 + v174 * 4.0 + 1.0;
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
  v78 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v79 = v78 != 1;
  memset(&slice, 0, sizeof(slice));
  v80 = 2 * (v78 == 1);
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
      if (v78 == 1)
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
      if (v78 == 1)
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
      if (v78 == 1)
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
    if (v78 == 1)
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
    if (v78 == 1)
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
    if (v78 == 1)
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
    if (a8)
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
    if (v78 == 1)
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
  if (v78 == 1)
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
      if (!a8)
      {
        v140 = v191.origin.x;
        v141 = v191.origin.y;
        v142 = v191.size.width;
        v138 = v191.size.height;
      }
    }

    if (v78 == 1)
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
  a3->var0.origin = v188.origin;
  a3->var0.size = size;
  a3->var1.top = v150;
  a3->var1.left = v152;
  a3->var1.bottom = v154;
  a3->var1.right = v155 - v156;
  v158 = v189.size;
  a3->var2.origin = v189.origin;
  a3->var2.size = v158;
  v159 = v190.size;
  a3->var3.origin = v190.origin;
  a3->var3.size = v159;
  a3->var7.origin.x = v117;
  a3->var7.origin.y = v167;
  a3->var7.size.width = v181;
  a3->var7.size.height = amounta;
  v160 = v191.size;
  a3->var5.origin = v191.origin;
  a3->var5.size = v160;
  a3->var6.origin.x = v175;
  a3->var6.origin.y = v137;
  a3->var6.size.width = v139;
  a3->var6.size.height = v143;
  a3->var8.origin.x = v163;
  a3->var8.origin.y = v184;
  a3->var8.size.width = v186;
  a3->var8.size.height = v164;
  a3->var9.origin.x = 0.0;
  a3->var9.origin.y = 0.0;
  a3->var9.size.width = v186;
  a3->var9.size.height = v164;
  a3->var10 = v165;
  a3->var11 = v187;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8.receiver = self;
  v8.super_class = SBFloatingDockView;
  if ([(SBFloatingDockView *)&v8 pointInside:a4 withEvent:?])
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
        v31 = [(SBFloatingDockView *)self mainPlatterView];
        v30 = [(SBFloatingDockView *)self glassContainerView];
        [v31 sbf_setBoundsAndPositionFromFrame:{v46, v47}];
        [(UIView *)self->_touchReceivingView sbf_setBoundsAndPositionFromFrame:*&v46 + self->_paddingEdgeInsets.left, *(&v46 + 1) + self->_paddingEdgeInsets.top, *&v47 - (self->_paddingEdgeInsets.left + self->_paddingEdgeInsets.right), *(&v47 + 1) - (self->_paddingEdgeInsets.top + self->_paddingEdgeInsets.bottom)];
        [v30 sbf_setBoundsAndPositionFromFrame:{v48, v49}];
        v29 = [(SBFloatingDockView *)self recentDividerView];
        [v29 sbf_setBoundsAndPositionFromFrame:{v42, v43}];
        v11 = [v29 layer];
        v12 = [MEMORY[0x1E69DC888] systemYellowColor];
        [v11 setBorderColor:{objc_msgSend(v12, "CGColor")}];

        v13 = [(SBFloatingDockView *)self utilitiesDividerView];
        [v13 sbf_setBoundsAndPositionFromFrame:{v44, v45}];
        v14 = [v13 layer];
        v15 = [MEMORY[0x1E69DC888] systemRedColor];
        [v14 setBorderColor:{objc_msgSend(v15, "CGColor")}];

        v16 = v50[1];
        v17 = [(SBFloatingDockView *)self userIconListView];
        [v17 setIconContentScale:v50[0]];
        [v17 setIconSpacing:{v16, v16}];
        [v17 sbf_setBoundsAndPositionFromFrame:{*&v32.origin, *&v32.size}];
        v18 = [(SBFloatingDockView *)self recentIconListView];
        [v18 setIconContentScale:v50[0]];
        [v18 setIconSpacing:{v16, v16}];
        [v18 sbf_setBoundsAndPositionFromFrame:{*&v35.origin, *&v35.size}];
        v19 = [(SBFloatingDockView *)self utilitiesIconListView];
        [v19 setIconContentScale:v50[0]];
        [v19 setIconSpacing:{v16, v16}];
        [v19 sbf_setBoundsAndPositionFromFrame:{v36, v37}];
        v20 = [(SBFloatingDockView *)self accessoryIconView];
        [v20 setIconContentScale:v50[0]];
        UIRectGetCenter();
        [v20 setCenter:?];
        if (v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v17;
        }

        [v21 cursorHitTestingInsetsForIconSpacing:{v16, v16}];
        [v20 setCursorHitTestPadding:?];
        CGRectGetWidth(v32);
        v22 = BSFloatGreaterThanFloat();
        CGRectGetWidth(v35);
        v23 = BSFloatGreaterThanFloat();
        v24 = [v19 displayedModel];
        v25 = [v24 numberOfIcons] != 0;

        if ((v22 & v23) != 0)
        {
          v26 = 1.0;
        }

        else
        {
          v26 = 0.0;
        }

        [v29 setAlpha:v26];
        if (((v22 | v23) & v25) != 0)
        {
          v27 = 1.0;
        }

        else
        {
          v27 = 0.0;
        }

        [v13 setAlpha:v27];
        [(SBFloatingDockView *)self setIconContentScale:v50[0]];
        v28 = [(SBFloatingDockView *)self delegate];
        [v28 floatingDockViewMainPlatterDidChangeFrame:self];
      }
    }
  }
}

- (void)bounce
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = [(SBFloatingDockView *)self mainPlatterView];
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
  v6 = [MEMORY[0x1E6979308] animation];
  v14[0] = v3;
  v14[1] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [v6 setAnimations:v7];

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

  [v6 setDuration:v13];
  [v2 addAnimation:v6 forKey:@"SBFloatingDockView-bounce"];
}

- (void)_updateBackgroundUserInterfaceStyle
{
  v6 = [(SBFloatingDockView *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v6];
  v4 = [(SBFloatingDockPlatterView *)self->_mainPlatterView traitOverrides];
  v5 = objc_opt_self();
  [v4 setObject:v3 forTrait:v5];
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