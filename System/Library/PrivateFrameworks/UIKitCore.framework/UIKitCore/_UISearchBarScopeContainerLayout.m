@interface _UISearchBarScopeContainerLayout
- (CGRect)scopeBarLayoutFrame;
- (UIEdgeInsets)containerSpecificInsets;
- (UIEdgeInsets)defaultScopeBarInsets;
- (_UISearchBarContainerSublayoutDelegate)delegate;
- (double)naturalContainerHeight;
- (double)scopeControlHeight;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)applyLayout;
- (void)setHasScopeBar:(BOOL)a3;
- (void)setNumberOfScopeTitles:(unint64_t)a3;
- (void)updateLayout;
@end

@implementation _UISearchBarScopeContainerLayout

- (double)naturalContainerHeight
{
  if ([(_UISearchBarLayoutBase *)self isHostedByNavigationBar])
  {
    v3 = [(_UISearchBarLayoutBase *)self barMetrics];
    v4 = [(_UISearchBarScopeContainerLayout *)self hostedScopeBarHeightForBarMetrics];
    v5 = v4[2](v4, v3);

    return v5;
  }

  else
  {
    [(_UISearchBarScopeContainerLayout *)self scopeControlHeight];
    v8 = v7;
    [(_UISearchBarScopeContainerLayout *)self containerSpecificInsets];
    return v10 + v8 + v9;
  }
}

- (void)setNumberOfScopeTitles:(unint64_t)a3
{
  if (self->_numberOfScopeTitles != a3)
  {
    self->_numberOfScopeTitles = a3;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setHasScopeBar:(BOOL)a3
{
  if (self->_hasScopeBar != a3)
  {
    self->_hasScopeBar = a3;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (CGRect)scopeBarLayoutFrame
{
  [(_UISearchBarLayoutBase *)self updateLayoutIfNeeded];
  x = self->_scopeBarLayoutFrame.origin.x;
  y = self->_scopeBarLayoutFrame.origin.y;
  width = self->_scopeBarLayoutFrame.size.width;
  height = self->_scopeBarLayoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)containerSpecificInsets
{
  [(_UISearchBarLayoutBase *)self contentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if ([(_UISearchBarLayoutBase *)self isHostedByNavigationBar])
  {
    v9 = [(_UISearchBarLayoutBase *)self barMetrics];
    v10 = [(_UISearchBarScopeContainerLayout *)self hostedScopeBarTopInsetForBarMetrics];
    v11 = v10;
    if (v10)
    {
      v12 = (*(v10 + 16))(v10, v9);
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        v25 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v25, OS_LOG_TYPE_FAULT, "Top inset for scope bar may be incorrect because of missing block", buf, 2u);
        }
      }

      else
      {
        v24 = *(__UILogGetCategoryCachedImpl("Assert", &containerSpecificInsets___s_category) + 8);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *v26 = 0;
          _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "Top inset for scope bar may be incorrect because of missing block", v26, 2u);
        }
      }

      [(_UISearchBarScopeContainerLayout *)self defaultScopeBarInsets];
    }

    v13 = v12;
  }

  else
  {
    [(_UISearchBarScopeContainerLayout *)self defaultScopeBarInsets];
    v13 = v14;
    [(_UISearchBarScopeContainerLayout *)self defaultScopeBarInsets];
    v6 = v15;
  }

  if ([(_UISearchBarLayoutBase *)self shouldApplyContainerSafeAreaInsets])
  {
    [(_UISearchBarLayoutBase *)self containerSafeAreaInsets];
    v13 = v13 + v16;
    v4 = v4 + v17;
    v6 = v6 + v18;
    v8 = v8 + v19;
  }

  v20 = v13;
  v21 = v4;
  v22 = v6;
  v23 = v8;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (double)scopeControlHeight
{
  v3 = [(_UISearchBarLayoutBase *)self barMetrics];
  v4 = [(_UISearchBarLayoutBase *)self isHostedByNavigationBar];
  v6 = (v3 == 1 || v3 == 102) && v4;

  [UISegmentedControl defaultHeightForStyle:7 size:v6];
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = _UISearchBarScopeContainerLayout;
  v4 = [(_UISearchBarLayoutBase *)&v13 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 17, self->_scopeBar);
    *(v5 + 113) = self->_hasScopeBar;
    v5[18] = self->_numberOfScopeTitles;
    v6 = *&self->_defaultScopeBarInsets.bottom;
    *(v5 + 13) = *&self->_defaultScopeBarInsets.top;
    *(v5 + 14) = v6;
    v7 = [self->_hostedScopeBarHeightForBarMetrics copy];
    v8 = v5[19];
    v5[19] = v7;

    v9 = [self->_hostedScopeBarTopInsetForBarMetrics copy];
    v10 = v5[20];
    v5[20] = v9;

    size = self->_scopeBarLayoutFrame.size;
    *(v5 + 11) = self->_scopeBarLayoutFrame.origin;
    *(v5 + 12) = size;
    v5[21] = *&self->_scopeBarOpacity;
  }

  return v5;
}

- (void)updateLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained containerLayoutWillUpdateLayout:self];

  [(_UISearchBarLayoutBase *)self layoutSize];
  v5 = v4;
  v7 = v6;
  v8 = [(_UISearchBarLayoutBase *)self isLayoutRTL];
  [(_UISearchBarScopeContainerLayout *)self containerSpecificInsets];
  v10 = v9;
  v12 = v11;
  v14 = v5 - v11 - v13;
  [(_UISearchBarScopeContainerLayout *)self scopeControlHeight];
  v16 = v15;
  [(UIView *)self->_scopeBar sizeThatFits:v5, v7];
  v18 = v17 + self->_numberOfScopeTitles * 78.0;
  [(_UISearchBarSearchContainerLayout *)self->_neighboringSearchLayout visibleCancelButtonSearchFieldLayoutFrame];
  v23 = v19;
  v24 = v20;
  v25 = v21;
  neighboringSearchLayout = self->_neighboringSearchLayout;
  if (!neighboringSearchLayout)
  {
    v19 = v12;
    v20 = v10;
    v21 = v14;
  }

  v43 = v22;
  if (!neighboringSearchLayout)
  {
    v22 = v16;
  }

  rect = v10;
  if (v18 >= CGRectGetWidth(*&v19))
  {
    v28 = v16;
  }

  else
  {
    v45.origin.x = v12;
    v45.origin.y = v10;
    v45.size.width = v14;
    v45.size.height = v16;
    v27 = v12 + round(CGRectGetWidth(v45) - v18) * 0.5;
    v28 = v16;
    if (!self->_neighboringSearchLayout)
    {
      goto LABEL_13;
    }

    v29 = rect;
    v30 = v27;
    v31 = v18;
    v32 = v28;
    if (v8)
    {
      MinX = CGRectGetMinX(*&v27);
      v46.origin.x = v23;
      v46.origin.y = v24;
      v46.size.width = v25;
      v46.size.height = v43;
      v33 = MinX < CGRectGetMinX(v46) + 20.0;
      v27 = v30;
      if (v33)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    MaxX = CGRectGetMaxX(*&v27);
    v47.origin.x = v23;
    v47.origin.y = v24;
    v47.size.width = v25;
    v47.size.height = v43;
    v34 = MaxX > CGRectGetMaxX(v47) + -20.0;
    v27 = v30;
    if (!v34)
    {
LABEL_13:
      v12 = v27;
      v14 = v18;
    }
  }

LABEL_14:
  self->_scopeBarLayoutFrame.origin.x = v12;
  self->_scopeBarLayoutFrame.origin.y = rect;
  self->_scopeBarLayoutFrame.size.width = v14;
  self->_scopeBarLayoutFrame.size.height = v28;
  v35 = self->_neighboringSearchLayout;
  v36 = 1.0;
  if (v35)
  {
    if (![(_UISearchBarSearchContainerLayout *)v35 allowSearchFieldShrinkage])
    {
      MaxY = CGRectGetMaxY(self->_scopeBarLayoutFrame);
      [(_UISearchBarScopeContainerLayout *)self naturalContainerHeight];
      v39 = v38 - MaxY;
      [(_UISearchBarLayoutBase *)self layoutSize];
      if (v40 - MaxY < v39)
      {
        v36 = 1.0 - (v39 - (v40 - MaxY)) / v39;
      }
    }
  }

  self->_scopeBarOpacity = v36;
}

- (void)applyLayout
{
  [(_UISearchBarScopeContainerLayout *)self scopeBarLayoutFrame];
  [(UIView *)self->_scopeBar setFrame:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained isHostingNavBarTransitionActive];

  if ((v4 & 1) == 0)
  {
    [(_UISearchBarScopeContainerLayout *)self scopeBarOpacity];
    scopeBar = self->_scopeBar;

    [(UIView *)scopeBar setAlpha:?];
  }
}

- (id)description
{
  v15.receiver = self;
  v15.super_class = _UISearchBarScopeContainerLayout;
  v3 = [(_UISearchBarLayoutBase *)&v15 description];
  if (os_variant_has_internal_diagnostics())
  {
    if (!self->_hasScopeBar)
    {
      v5 = [v3 stringByAppendingString:@" [no scopeBar]"];

      v3 = v5;
    }

    if (self->_collapsed)
    {
      v6 = [v3 stringByAppendingString:@" collapsed"];

      v3 = v6;
    }

    v7 = v3;
    [(_UISearchBarScopeContainerLayout *)self naturalContainerHeight];
    v3 = [v3 stringByAppendingFormat:@" naturalContainerHeight=%g", v8];

    [(_UISearchBarScopeContainerLayout *)self containerSpecificInsets];
    if (v10 != 0.0 || v9 != 0.0 || v12 != 0.0 || v11 != 0.0)
    {
      v13 = [v3 stringByAppendingFormat:@" containerSpecificInsets={%g, %g, %g, %g}", *&v9, *&v10, *&v11, *&v12];

      v3 = v13;
    }

    if (self->_hasScopeBar)
    {
      v14 = [v3 stringByAppendingFormat:@" numberOfScopeTitles=%lu scopeBar=%p", self->_numberOfScopeTitles, self->_scopeBar];

      if ([(_UISearchBarLayoutBase *)self isLayoutValid])
      {
        v3 = [v14 stringByAppendingFormat:@" scopeBarLayoutFrame=(%g, %g %g, %g) opacity=%g", *&self->_scopeBarLayoutFrame.origin.x, *&self->_scopeBarLayoutFrame.origin.y, *&self->_scopeBarLayoutFrame.size.width, *&self->_scopeBarLayoutFrame.size.height, *&self->_scopeBarOpacity];;
      }

      else
      {
        v3 = v14;
      }
    }
  }

  return v3;
}

- (_UISearchBarContainerSublayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)defaultScopeBarInsets
{
  top = self->_defaultScopeBarInsets.top;
  left = self->_defaultScopeBarInsets.left;
  bottom = self->_defaultScopeBarInsets.bottom;
  right = self->_defaultScopeBarInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end