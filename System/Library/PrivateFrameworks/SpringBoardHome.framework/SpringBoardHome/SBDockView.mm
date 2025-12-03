@interface SBDockView
- (BOOL)isDockInset;
- (CGRect)dockListViewFrame;
- (SBDockView)initWithDockListView:(id)view forSnapshot:(BOOL)snapshot;
- (SBDockViewDelegate)delegate;
- (UIEdgeInsets)_dockOverhangInsets;
- (double)_layoutScale;
- (double)_minimumHomeScreenScale;
- (double)dockHeight;
- (double)dockHeightPadding;
- (id)_listLayout;
- (id)_visualConfiguration;
- (void)_applyGlass;
- (void)_updateBackgroundUserInterfaceStyle;
- (void)_updateCornerRadii;
- (void)dealloc;
- (void)getDockViewMetrics:(id *)metrics;
- (void)layoutSubviews;
- (void)listLayoutProviderDidChange;
- (void)setContentVisibility:(unint64_t)visibility;
- (void)setDockEdge:(unint64_t)edge;
- (void)setDockListOffset:(double)offset;
@end

@implementation SBDockView

- (void)layoutSubviews
{
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  [(SBDockView *)self getDockViewMetrics:&v3];
  [(UIView *)self->_glassView setFrame:v5, v6];
  [(SBIconListView *)self->_iconListView setFrame:v3, v4];
}

- (id)_visualConfiguration
{
  _listLayout = [(SBDockView *)self _listLayout];
  rootFolderVisualConfiguration = [_listLayout rootFolderVisualConfiguration];

  return rootFolderVisualConfiguration;
}

- (id)_listLayout
{
  layoutProvider = [(SBIconListView *)self->_iconListView layoutProvider];
  v3 = [layoutProvider layoutForIconLocation:@"SBIconLocationRoot"];

  return v3;
}

- (UIEdgeInsets)_dockOverhangInsets
{
  [(SBDockView *)self _minimumHomeScreenScale];
  v4 = v3;
  v6 = *MEMORY[0x1E69DDCE0];
  v5 = *(MEMORY[0x1E69DDCE0] + 8);
  v8 = *(MEMORY[0x1E69DDCE0] + 16);
  v7 = *(MEMORY[0x1E69DDCE0] + 24);
  if (![(SBDockView *)self isDockInset]&& BSFloatGreaterThanFloat())
  {
    dockEdge = [(SBDockView *)self dockEdge];
    [(SBDockView *)self bounds];
    v11 = v10;
    rect = v10;
    v13 = v12;
    v15 = v14;
    rect_16 = v16;
    _screen = [(SBDockView *)self _screen];
    [_screen bounds];
    rect_24 = v19;
    v34 = v18;

    v35.origin.x = v11;
    v35.origin.y = v13;
    v35.size.width = v15;
    v35.size.height = rect_16;
    rect_8 = CGRectGetWidth(v35);
    v36.origin.x = rect;
    v36.origin.y = v13;
    v36.size.width = v15;
    v36.size.height = rect_16;
    Height = CGRectGetHeight(v36);
    v21 = 1.0 / v4 + -1.0;
    v22 = v21 * v34;
    v23 = v21 * rect_24;
    if (rect_8 >= Height)
    {
      v24 = v6 - v23;
      v25 = v8 - v23;
      if (dockEdge == 1)
      {
        v6 = v24;
      }

      else
      {
        v8 = v25;
      }

      v5 = v5 - v22 * 0.5;
      v7 = v7 - v22 * 0.5;
    }

    else
    {
      if (dockEdge == 2)
      {
        v5 = -v22;
      }

      else
      {
        v7 = -v22;
      }

      v8 = v23 * -0.5;
      v6 = v23 * -0.5;
    }
  }

  v26 = v6;
  v27 = v5;
  v28 = v8;
  v29 = v7;
  result.right = v29;
  result.bottom = v28;
  result.left = v27;
  result.top = v26;
  return result;
}

- (double)_minimumHomeScreenScale
{
  delegate = [(SBDockView *)self delegate];
  v4 = delegate;
  if (delegate)
  {
    [delegate minimumHomeScreenScaleForDockView:self];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (SBDockViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isDockInset
{
  _visualConfiguration = [(SBDockView *)self _visualConfiguration];
  [_visualConfiguration dockBackgroundViewCornerRadius];
  v4 = v3;

  return v4 > 0.0;
}

- (double)dockHeight
{
  _visualConfiguration = [(SBDockView *)self _visualConfiguration];
  [_visualConfiguration dockViewHeight];
  v4 = v3;

  return v4;
}

- (SBDockView)initWithDockListView:(id)view forSnapshot:(BOOL)snapshot
{
  v17[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v8 = [(SBDockView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_iconListView, view);
    v9->_dockEdge = 4;
    v9->_forSnapshot = snapshot;
    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    glassView = v9->_glassView;
    v9->_glassView = v10;

    [(SBDockView *)v9 _applyGlass];
    [(SBDockView *)v9 addSubview:v9->_glassView];
    [(UIView *)v9->_glassView addSubview:v9->_iconListView];
    [(SBDockView *)v9 _updateCornerRadii];
    v12 = objc_opt_self();
    v17[0] = v12;
    v13 = objc_opt_self();
    v17[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v15 = [(SBDockView *)v9 registerForTraitChanges:v14 withTarget:v9 action:sel__updateBackgroundUserInterfaceStyle];

    [(SBDockView *)v9 setAutoresizesSubviews:0];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DD920] object:0];

  v4.receiver = self;
  v4.super_class = SBDockView;
  [(SBDockView *)&v4 dealloc];
}

- (void)setDockEdge:(unint64_t)edge
{
  if (self->_dockEdge != edge)
  {
    self->_dockEdge = edge;
    [(SBDockView *)self setNeedsLayout];
  }
}

- (double)dockHeightPadding
{
  _visualConfiguration = [(SBDockView *)self _visualConfiguration];
  [_visualConfiguration dockListViewInsets];
  v4 = v3;

  return v4;
}

- (CGRect)dockListViewFrame
{
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  [(SBDockView *)self getDockViewMetrics:&v6];
  v3 = *(&v6 + 1);
  v2 = *&v6;
  v5 = *(&v7 + 1);
  v4 = *&v7;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)getDockViewMetrics:(id *)metrics
{
  [(SBDockView *)self bounds];
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;
  v44 = v49.size.height;
  v45 = v49.origin.x;
  v43 = v49.size.width;
  if (CGRectIsEmpty(v49))
  {
    v9 = 0;
  }

  else
  {
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v10 = CGRectGetWidth(v50);
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    v9 = v10 < CGRectGetHeight(v51);
  }

  [(SBDockView *)self _layoutScale];
  rect_8 = [(SBDockView *)self _visualConfiguration];
  [rect_8 dockListViewInsets];
  SBFEdgeInsetsRelativeToRectEdge();
  v12 = v11;
  v42 = v13;
  [rect_8 dockBackgroundViewInsets];
  SBFEdgeInsetsRelativeToRectEdge();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(SBDockView *)self _dockOverhangInsets];
  v22 = v44 - (v15 + v19);
  rect = v45 + v17 + v23;
  v25 = y + v15 + v24;
  v27 = v43 - (v17 + v21) - (v23 + v26);
  v29 = v22 - (v24 + v28);
  [rect_8 dockBackgroundViewCornerRadius];
  if (v9)
  {
    if (v30 <= 0.0)
    {
      [rect_8 dockViewHeight];
      v31 = v32 - v12;
    }

    else
    {
      v52.origin.x = rect;
      v52.origin.y = v25;
      v52.size.width = v27;
      v52.size.height = v29;
      v31 = CGRectGetWidth(v52);
    }
  }

  else if (v30 <= 0.0)
  {
    [rect_8 dockViewHeight];
    v31 = v33 - v42;
  }

  else
  {
    v53.origin.x = rect;
    v53.origin.y = v25;
    v53.size.width = v27;
    v53.size.height = v29;
    v31 = CGRectGetHeight(v53);
  }

  [(SBDockView *)self dockListOffset];
  BSFloatIsZero();
  UIRectRoundToScale();
  metrics->var0.origin.x = v34;
  metrics->var0.origin.y = v35;
  metrics->var0.size.width = v36;
  metrics->var0.size.height = v37;
  UIRectRoundToScale();
  metrics->var1.origin.x = v38;
  metrics->var1.origin.y = v39;
  metrics->var1.size.width = v40;
  metrics->var1.size.height = v41;
}

- (void)listLayoutProviderDidChange
{
  [(SBDockView *)self _updateCornerRadii];
  [(SBDockView *)self setNeedsLayout];

  [(SBDockView *)self layoutIfNeeded];
}

- (void)setDockListOffset:(double)offset
{
  if (self->_dockListOffset != offset)
  {
    self->_dockListOffset = offset;
    [(SBDockView *)self setNeedsLayout];
  }
}

- (void)_updateCornerRadii
{
  _visualConfiguration = [(SBDockView *)self _visualConfiguration];
  [_visualConfiguration dockBackgroundViewCornerRadius];
  v5 = v4;

  glassView = self->_glassView;

  [(UIView *)glassView _setContinuousCornerRadius:v5];
}

- (void)_updateBackgroundUserInterfaceStyle
{
  if ((SBHPerformanceFlagEnabled(5) & 1) == 0)
  {
    traitCollection = [(SBDockView *)self traitCollection];
    -[UIView sbh_applyDockGlassWithUserInterfaceStyle:](self->_glassView, "sbh_applyDockGlassWithUserInterfaceStyle:", [MEMORY[0x1E69DD1B8] sbh_dockGlassUserInterfaceStyleFromTraitCollection:traitCollection]);
    v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:traitCollection];
    traitOverrides = [(UIView *)self->_glassView traitOverrides];
    v5 = objc_opt_self();
    [traitOverrides setObject:v3 forTrait:v5];
  }
}

- (void)setContentVisibility:(unint64_t)visibility
{
  if (self->_contentVisibility != visibility)
  {
    self->_contentVisibility = visibility;
    [(SBDockView *)self _applyGlass];
  }
}

- (double)_layoutScale
{
  _listLayout = [(SBDockView *)self _listLayout];
  [_listLayout iconImageInfo];
  v4 = v3;

  return v4;
}

- (void)_applyGlass
{
  if (SBHPerformanceFlagEnabled(5))
  {
    [(UIView *)self->_glassView _setBackground:0];
    glassView = self->_glassView;
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [(UIView *)glassView setBackgroundColor:?];
  }

  else
  {
    systemGrayColor = [(SBDockView *)self traitCollection];
    -[UIView sbh_applyDockGlassWithGrouping:userInterfaceStyle:highlightsDisplayAngle:](self->_glassView, "sbh_applyDockGlassWithGrouping:userInterfaceStyle:highlightsDisplayAngle:", 1, [MEMORY[0x1E69DD1B8] sbh_dockGlassUserInterfaceStyleFromTraitCollection:?], SBHContentVisibilityIsVisible(-[SBDockView contentVisibility](self, "contentVisibility")));
  }
}

@end