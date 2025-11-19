@interface UIRefreshControl
+ (Class)_contentViewClassForStyle:(int64_t)a3;
+ (id)_defaultColor;
+ (void)_setAllowsUnsupportedMacIdiomBehavior:(BOOL)a3;
- (BOOL)_canTransitionFromState:(int64_t)a3 toState:(int64_t)a4;
- (CGPoint)_originForContentOffset:(CGPoint)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)_appliedInsets;
- (UIRefreshControl)initWithCoder:(id)a3;
- (UIRefreshControl)initWithFrame:(CGRect)a3;
- (UIRefreshControl)initWithStyle:(int64_t)a3;
- (double)_scrollViewHeight;
- (double)_stiffnessForVelocity:(double)a3;
- (double)_visibleHeightForContentOffset:(CGPoint)a3 origin:(CGPoint)a4;
- (double)revealedFraction;
- (id)_attributedTitle;
- (id)_contentView;
- (id)_tintColor;
- (id)description;
- (int64_t)_recomputeNewState;
- (void)_addInsetHeight:(double)a3;
- (void)_addInsets;
- (void)_endRefreshingAnimated:(BOOL)a3;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_removeInsetHeight:(double)a3;
- (void)_removeInsets;
- (void)_resizeToFitContents;
- (void)_setAttributedTitle:(id)a3;
- (void)_setRefreshControlState:(int64_t)a3 notify:(BOOL)a4;
- (void)_setTintColor:(id)a3;
- (void)_setVisibleHeight:(double)a3;
- (void)_update;
- (void)_updateConcealingMask;
- (void)_updateHiddenStateIfNeeded;
- (void)_updateSnappingHeight;
- (void)beginRefreshing;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)encodeWithCoder:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)sizeToFit;
@end

@implementation UIRefreshControl

- (void)didMoveToSuperview
{
  v3 = [(UIView *)self superview];

  if (v3)
  {
    if (!self->_host)
    {
      v4 = [(UIView *)self _containingScrollView];
      if (v4)
      {
        v5 = [[_UIScrollViewRefreshControlHost alloc] initWithScrollView:v4];
        host = self->_host;
        self->_host = v5;

        [(UIRefreshControl *)self sizeToFit];
        [(UIView *)self frame];
        self->_refreshControlHeight = v7;
        v8 = [(UIRefreshControl *)self _contentView];
        [v8 refreshControlInvalidatedSnappingHeight];
      }

      if (!self->_host)
      {
        v9 = MEMORY[0x1E695DF30];
        v10 = *MEMORY[0x1E695D930];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        [v9 raise:v10 format:{@"%@ was unable to find its associated scroll view", v12}];
      }
    }

    [(UIRefreshControl *)self _updateSnappingHeight];

    [(UIRefreshControl *)self _update];
  }
}

- (id)_contentView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    v4 = objc_alloc([objc_opt_class() _contentViewClassForStyle:self->_style]);
    [(UIView *)self bounds];
    v5 = [v4 initWithFrame:?];
    v6 = self->_contentView;
    self->_contentView = v5;

    [(_UIRefreshControlContentView *)self->_contentView setRefreshControl:self];
    [(UIView *)self insertSubview:self->_contentView atIndex:0];
    [(UIRefreshControl *)self setRefreshControlState:0];
    v7 = self->_contentView;
    v8 = [objc_opt_class() _defaultColor];
    [(_UIRefreshControlContentView *)v7 setTintColor:v8];

    contentView = self->_contentView;
  }

  return contentView;
}

- (void)_update
{
  if (!self->_adjustingInsets)
  {
    [(UIView *)self frame];
    v4 = v3;
    v5 = [(_UIRefreshControlHosting *)self->_host scrollView];
    [v5 contentOffset];
    v7 = v6;
    v9 = v8;

    [(UIRefreshControl *)self _originForContentOffset:v7, v9];
    v11 = v10;
    v13 = v12;
    v14 = [(_UIRefreshControlHosting *)self->_host scrollView];
    [v14 bounds];
    v16 = v15;

    if ([(_UIRefreshControlHosting *)self->_host refreshControlInsetsAffectScrollViewRubberBanding])
    {
      [(UIRefreshControl *)self setFrame:v11, v13, v16, v4];
    }

    [(UIRefreshControl *)self _visibleHeightForContentOffset:v7 origin:v9, v11, v13];
    v18 = v17;
    [(UIRefreshControl *)self _setVisibleHeight:?];
    if (v18 == 0.0)
    {
      [(UIRefreshControl *)self _updateConcealingMask];
      [(UIRefreshControl *)self _updateHiddenStateIfNeeded];
    }
  }

  if (self->_style == 2)
  {
    v19 = [(_UIRefreshControlHosting *)self->_host scrollView];
    [v19 _verticalVelocity];
    v21 = v20;

    [(UIRefreshControl *)self _stiffnessForVelocity:v21];
    v23 = v22;
    [(UIRefreshControl *)self _impactIntensityForVelocity:v21];
    v25 = v24;
    [(_UIRefreshControlContentView *)self->_contentView setCurrentPopStiffness:v23];
    contentView = self->_contentView;

    [(_UIRefreshControlContentView *)contentView setImpactIntensity:v25];
  }
}

- (void)_updateConcealingMask
{
  v3 = [(UIView *)self backgroundColor];

  if (!v3)
  {
    [(UIView *)self->_contentView setHidden:0];
    if (![(UIView *)self->_contentView clipsToBounds])
    {
      return;
    }

    [(UIView *)self->_contentView setClipsToBounds:0];
    [(UIView *)self bounds];
    [(UIView *)self->_contentView setBounds:?];
    [(UIView *)self bounds];
    contentView = self->_contentView;
    goto LABEL_6;
  }

  v4 = self->_contentView;
  if (self->_visibleHeight > 0.0)
  {
    [(UIView *)v4 setHidden:0];
    [(UIView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    visibleHeight = self->_visibleHeight;
    [(UIView *)self->_contentView setClipsToBounds:1];
    contentView = self->_contentView;
    v13 = v6;
    v14 = v8;
    v15 = v10;
    v16 = visibleHeight;
LABEL_6:

    [(UIView *)contentView setFrame:v13, v14, v15, v16];
    return;
  }

  [(UIView *)v4 setHidden:1];
}

- (void)_updateHiddenStateIfNeeded
{
  if (self->_style == 2)
  {
    visibleHeight = self->_visibleHeight;
    [(_UIRefreshControlContentView *)self->_contentView _heightAtWhichNoneOfTheInterfaceElementsAreVisibleEvenIfTheControlIsStillPartiallyOnScreen];

    [(UIView *)self setHidden:visibleHeight <= v5];
  }
}

- (void)sizeToFit
{
  if (self->_host)
  {
    v3 = [(UIRefreshControl *)self _contentView];
    [v3 sizeToFit];
  }

  v4.receiver = self;
  v4.super_class = UIRefreshControl;
  [(UIView *)&v4 sizeToFit];
}

+ (id)_defaultColor
{
  if (qword_1ED4991F8 != -1)
  {
    dispatch_once(&qword_1ED4991F8, &__block_literal_global_166);
  }

  v3 = _MergedGlobals_1_3;

  return v3;
}

void __33__UIRefreshControl__defaultColor__block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    [UIColor colorWithRed:0.584313725 green:0.611764706 blue:0.650980392 alpha:1.0];
  }
  v0 = ;
  v1 = _MergedGlobals_1_3;
  _MergedGlobals_1_3 = v0;
}

- (void)_updateSnappingHeight
{
  host = self->_host;
  if (host)
  {
    v4 = [(_UIRefreshControlHosting *)host scrollView];
    [v4 bounds];
    v6 = v5;

    v7 = round(v6 * 0.5);
    self->_snappingHeight = v7;
    v8 = [(UIRefreshControl *)self _contentView];
    [v8 maximumSnappingHeight];
    v10 = v9;

    if (v7 > v10)
    {
      v11 = [(UIRefreshControl *)self _contentView];
      [v11 maximumSnappingHeight];
      self->_snappingHeight = v12;
    }

    snappingHeight = self->_snappingHeight;
    v14 = [(UIRefreshControl *)self _contentView];
    [v14 minimumSnappingHeight];
    v16 = v15;

    if (snappingHeight < v16)
    {
      v17 = [(UIRefreshControl *)self _contentView];
      [v17 minimumSnappingHeight];
      self->_snappingHeight = v18;
    }

    v19 = [(UIRefreshControl *)self _contentView];
    [v19 refreshControlInvalidatedSnappingHeight];

    [(UIView *)self setNeedsLayout];
  }
}

- (double)_scrollViewHeight
{
  v2 = [(_UIRefreshControlHosting *)self->_host scrollView];
  [v2 bounds];
  v4 = v3;

  return v4;
}

- (void)dealloc
{
  [(_UIRefreshControlContentView *)self->_contentView setRefreshControl:0];
  v3.receiver = self;
  v3.super_class = UIRefreshControl;
  [(UIView *)&v3 dealloc];
}

+ (Class)_contentViewClassForStyle:(int64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 0 && a3 != 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unknown UIRefreshControlStyle: %ld", a3}];
    v3 = 0;
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (UIRefreshControl)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UIRefreshControl;
  v5 = [(UIControl *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"UIRefreshControlStyle"];
    v7 = 2;
    if (v6)
    {
      v7 = v6;
    }

    v5->_style = v7;
    if ([v4 containsValueForKey:@"UITintColor"])
    {
      v8 = [v4 decodeObjectForKey:@"UITintColor"];
      [(UIRefreshControl *)v5 _setTintColor:v8];
    }

    if ([v4 containsValueForKey:@"UIAttributedTitle"])
    {
      v9 = [v4 decodeObjectForKey:@"UIAttributedTitle"];
      [(UIRefreshControl *)v5 _setAttributedTitle:v9];
    }

    [(UIView *)v5 setAutoresizingMask:2];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIRefreshControl;
  [(UIControl *)&v9 encodeWithCoder:v4];
  [v4 encodeInteger:self->_style forKey:@"UIRefreshControlStyle"];
  if (self->_contentView)
  {
    v5 = [(UIRefreshControl *)self _tintColor];

    if (v5)
    {
      v6 = [(UIRefreshControl *)self _tintColor];
      [v4 encodeObject:v6 forKey:@"UITintColor"];
    }

    v7 = [(UIRefreshControl *)self _attributedTitle];

    if (v7)
    {
      v8 = [(UIRefreshControl *)self _attributedTitle];
      [v4 encodeObject:v8 forKey:@"UIAttributedTitle"];
    }
  }
}

- (void)_populateArchivedSubviews:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = UIRefreshControl;
  [(UIView *)&v5 _populateArchivedSubviews:v4];
  if (self->_contentView)
  {
    [v4 removeObject:?];
  }
}

- (UIRefreshControl)initWithStyle:(int64_t)a3
{
  if (a3 == 2)
  {
    v4 = 60.0;
  }

  else
  {
    v4 = 58.0;
  }

  v8.receiver = self;
  v8.super_class = UIRefreshControl;
  v5 = [(UIControl *)&v8 initWithFrame:0.0, 0.0, 320.0, v4];
  v6 = v5;
  if (v5)
  {
    v5->_style = a3;
    [(UIView *)v5 setAutoresizingMask:2];
  }

  return v6;
}

- (UIRefreshControl)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(UIRefreshControl *)self initWithStyle:2];
  v8 = v7;
  if (v7)
  {
    [(UIRefreshControl *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = UIRefreshControl;
  v3 = [(UIView *)&v7 description];
  if (os_variant_has_internal_diagnostics())
  {
    v5 = _UIRefreshControlStateDescription([(UIRefreshControl *)self refreshControlState]);
    v6 = [v3 stringByAppendingFormat:@" %@", v5];

    if (self->_host)
    {
      v3 = [v6 stringByAppendingFormat:@" host=%p", self->_host];
    }

    else
    {
      v3 = v6;
    }
  }

  return v3;
}

- (double)revealedFraction
{
  refreshControlState = self->_refreshControlState;
  v3 = refreshControlState == 3 || refreshControlState == 0;
  v4 = 6;
  if (v3)
  {
    v4 = 5;
  }

  return fmin(fmax(self->_visibleHeight / *(&self->super.super.super.super.isa + OBJC_IVAR___UIRefreshControl__style[v4]), 0.0), 1.0);
}

- (void)setFrame:(CGRect)a3
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self->_host)
  {
    v7 = [(UIRefreshControl *)self _contentView:a3.origin.x];
    [v7 frame];
    height = v8;
  }

  else
  {
    height = a3.size.height;
  }

  [(UIView *)self frame];
  v11 = v10;
  v13 = v12;
  v17.receiver = self;
  v17.super_class = UIRefreshControl;
  [(UIView *)&v17 setFrame:x, y, width, height];
  [(UIView *)self frame];
  if (v11 != v15 || v13 != v14)
  {
    [(UIRefreshControl *)self _updateSnappingHeight];
  }
}

- (void)setBounds:(CGRect)a3
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self->_host)
  {
    v7 = [(UIRefreshControl *)self _contentView:a3.origin.x];
    [v7 bounds];
    height = v8;
  }

  else
  {
    height = a3.size.height;
  }

  [(UIView *)self bounds];
  v11 = v10;
  v13 = v12;
  v17.receiver = self;
  v17.super_class = UIRefreshControl;
  [(UIView *)&v17 setBounds:x, y, width, height];
  [(UIView *)self bounds];
  if (v11 != v15 || v13 != v14)
  {
    [(UIRefreshControl *)self _updateSnappingHeight];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (self->_host)
  {
    v3 = [(UIRefreshControl *)self _contentView:a3.width];
    [v3 frame];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UIRefreshControl;
    [(UIView *)&v12 sizeThatFits:a3.width, a3.height];
    v5 = v8;
    v7 = v9;
  }

  v10 = v5;
  v11 = v7;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_setTintColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    if (!self->_contentView)
    {
      return;
    }

    v4 = [objc_opt_class() _defaultColor];
  }

  v6 = v4;
  v5 = [(UIRefreshControl *)self _contentView];
  [v5 setTintColor:v6];
}

- (id)_tintColor
{
  if (self->_contentView)
  {
    v2 = [(UIRefreshControl *)self _contentView];
    v3 = [v2 tintColor];

    v4 = [objc_opt_class() _defaultColor];

    if (v3 != v4)
    {
      goto LABEL_5;
    }
  }

  v3 = 0;
LABEL_5:

  return v3;
}

- (void)_setAttributedTitle:(id)a3
{
  v4 = a3;
  v5 = [(UIRefreshControl *)self _contentView];
  [v5 setAttributedTitle:v4];

  [(UIRefreshControl *)self _resizeToFitContents];
}

- (id)_attributedTitle
{
  if (self->_contentView)
  {
    v2 = [(UIRefreshControl *)self _contentView];
    v3 = [v2 attributedTitle];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_resizeToFitContents
{
  refreshControlHeight = self->_refreshControlHeight;
  [(UIRefreshControl *)self sizeToFit];
  [(UIView *)self frame];
  if (v4 != refreshControlHeight)
  {
    v5 = v4;
    self->_refreshControlHeight = v4;
    if ([(UIRefreshControl *)self _areInsetsBeingApplied]&& ![(UIRefreshControl *)self _hostAdjustsContentOffset])
    {
      [(UIRefreshControl *)self _removeInsetHeight:refreshControlHeight];
      [(UIRefreshControl *)self _addInsetHeight:v5];
    }

    [(UIRefreshControl *)self _update];
  }
}

- (int64_t)_recomputeNewState
{
  [(UIRefreshControl *)self revealedFraction];
  v5 = v4;
  v6 = [(UIRefreshControl *)self _contentView];
  [v6 _heightAtWhichNoneOfTheInterfaceElementsAreVisibleEvenIfTheControlIsStillPartiallyOnScreen];
  v8 = v7;

  refreshControlState = self->_refreshControlState;
  if (refreshControlState > 3)
  {
    switch(refreshControlState)
    {
      case 4:
        if (self->_visibleHeight <= v8)
        {
          return 0;
        }

        v16 = [(_UIRefreshControlHosting *)self->_host scrollView];
        v17 = [v16 isTracking];

        v14 = (v17 & (v5 <= 0.75)) == 0;
        v15 = 4;
        break;
      case 5:
        if (self->_visibleHeight <= v8)
        {
          return 0;
        }

        else
        {
          return 5;
        }

      case 6:
        if (self->_visibleHeight <= v8)
        {
          return 0;
        }

        v12 = [(_UIRefreshControlHosting *)self->_host scrollView];
        v13 = [v12 isTracking];

        v14 = (v13 & (v5 <= 0.75)) == 0;
        v15 = 6;
        break;
      default:
        goto LABEL_18;
    }

    if (v14)
    {
      return v15;
    }

    else
    {
      return 1;
    }
  }

  if ((refreshControlState - 2) >= 2)
  {
    if (!refreshControlState)
    {
      if (v5 > 0.0)
      {
        v19 = [(_UIRefreshControlHosting *)self->_host scrollView];
        if ([v19 _isBouncing])
        {
          v20 = [(_UIRefreshControlHosting *)self->_host scrollView];
          v21 = [v20 isDecelerating];

          if (v21)
          {
            return 6;
          }
        }

        else
        {
        }
      }

      if (self->_visibleHeight > v8 && v5 < 1.0)
      {
        return 1;
      }

      if (v5 >= 1.0)
      {
        v23 = [(_UIRefreshControlHosting *)self->_host scrollView];
        v24 = [v23 isTracking];

        if ((v24 & 1) == 0)
        {
          return 1;
        }
      }

      return 0;
    }

    if (refreshControlState == 1)
    {
      if (v5 >= 1.0)
      {
        v10 = [(_UIRefreshControlHosting *)self->_host scrollView];
        v11 = [v10 isTracking];

        if (v11)
        {
          return 2;
        }
      }

      return self->_visibleHeight >= v8;
    }

LABEL_18:
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"UIRefreshControl.m" lineNumber:398 description:{@"Unknown UIRefreshControlState: %ld", self->_refreshControlState}];
  }

  return refreshControlState;
}

- (void)_setVisibleHeight:(double)a3
{
  if (self->_visibleHeight != a3)
  {
    self->_visibleHeight = a3;
    [(UIRefreshControl *)self setRefreshControlState:[(UIRefreshControl *)self _recomputeNewState]];
    [(UIView *)self setNeedsLayout];
    [(UIRefreshControl *)self _updateHiddenStateIfNeeded];

    [(UIRefreshControl *)self _updateConcealingMask];
  }
}

- (UIEdgeInsets)_appliedInsets
{
  top = self->_appliedInsets.top;
  left = self->_appliedInsets.left;
  bottom = self->_appliedInsets.bottom;
  right = self->_appliedInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)_originForContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = 0.0;
  if (self->_style != 2)
  {
    v7 = [(_UIRefreshControlHosting *)self->_host scrollView];
    [v7 _effectiveContentInset];
    v6 = -v8;
  }

  if (!self->_insetsApplied)
  {
    [(UIRefreshControl *)self _refreshControlHeight];
    v6 = v6 - v9;
  }

  style = self->_style;
  v11 = v6 - y;
  if (v6 - y < 0.0 && style != 2)
  {
    y = v6;
  }

  if (style == 2)
  {
    v13 = [(_UIRefreshControlHosting *)self->_host scrollView];
    [v13 _effectiveContentInset];
    y = y + v14 - self->_additionalTopInset;
  }

  v15 = x;
  v16 = y;
  result.y = v16;
  result.x = v15;
  return result;
}

- (double)_visibleHeightForContentOffset:(CGPoint)a3 origin:(CGPoint)a4
{
  y = a4.y;
  v5 = a3.y;
  [(UIRefreshControl *)self _refreshControlHeight:a3.x];
  v8 = v7;
  v9 = y + v7;
  result = 0.0;
  if (v9 > v5)
  {
    v11 = [(_UIRefreshControlHosting *)self->_host scrollView];
    [v11 _effectiveContentInset];
    v13 = v12;
    v14 = -v12;

    v15 = v8 - v13;
    if (!self->_insetsApplied)
    {
      v15 = v14;
    }

    result = v15 - v5;
    if (result < 0.0)
    {
      return 0.0;
    }
  }

  return result;
}

- (double)_stiffnessForVelocity:(double)a3
{
  v3 = fabs(a3) * 48.3333333;
  result = 150.0;
  if (v3 <= 150.0)
  {
    result = 5.0;
    if (v3 >= 5.0)
    {
      return v3 + 0.0;
    }
  }

  return result;
}

- (void)_addInsets
{
  [(UIRefreshControl *)self _refreshControlHeight];

  [(UIRefreshControl *)self _addInsetHeight:?];
}

- (void)_removeInsets
{
  [(UIRefreshControl *)self _refreshControlHeight];

  [(UIRefreshControl *)self _removeInsetHeight:?];
}

- (void)_addInsetHeight:(double)a3
{
  if (a3 > 0.0 && !self->_insetsApplied)
  {
    if (self->_host)
    {
      self->_appliedInsets.top = self->_appliedInsets.top + a3;
      self->_insetsApplied = 1;
      self->_adjustingInsets = 1;
      self->_additionalTopInset = a3;
      [(_UIRefreshControlHosting *)self->_host incrementInsetHeight:?];
      self->_adjustingInsets = 0;
    }
  }
}

- (void)_removeInsetHeight:(double)a3
{
  if (a3 > 0.0 && self->_insetsApplied)
  {
    if (self->_host)
    {
      self->_appliedInsets.top = self->_appliedInsets.top - a3;
      self->_adjustingInsets = 1;
      [(_UIRefreshControlHosting *)self->_host decrementInsetHeight:?];
      self->_additionalTopInset = 0.0;
      self->_adjustingInsets = 0;
      self->_insetsApplied = 0;
    }
  }
}

- (void)beginRefreshing
{
  v3 = [(UIView *)self window];

  if (v3 || (UIRefreshControlReceivedOffscreenBeginRefreshing(self), (dyld_program_sdk_at_least() & 1) == 0))
  {

    [(UIRefreshControl *)self _setRefreshControlState:3 notify:0];
  }
}

- (void)_endRefreshingAnimated:(BOOL)a3
{
  if (a3)
  {
    v5 = [(_UIRefreshControlHosting *)self->_host refreshControlInsetsAffectScrollViewRubberBanding];
  }

  else
  {
    v5 = 1;
  }

  [(UIRefreshControl *)self _update];
  [(UIRefreshControl *)self _visibleHeight];
  if (v6 <= 0.0)
  {
    v8 = 0;
  }

  else
  {
    v3 = [(_UIRefreshControlHosting *)self->_host scrollView];
    v7 = [v3 isTracking] & v5;

    if (v7)
    {
      v8 = 5;
    }

    else if (+[UIView areAnimationsEnabled])
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }
  }

  [(UIRefreshControl *)self _setRefreshControlState:v8 notify:0];
  v9 = [(UIRefreshControl *)self refreshControlState];
  if ((v9 | 4) == 4)
  {
    v3 = [(_UIRefreshControlHosting *)self->_host scrollView];
    if ([v3 _isBouncing])
    {
      v10 = 0;
    }

    else
    {
      v10 = [(_UIRefreshControlHosting *)self->_host refreshControlInsetsAffectScrollViewRubberBanding];
    }
  }

  else
  {
    v10 = 0;
  }

  if ((v9 | 4) == 4)
  {
  }

  if (v10)
  {
    v11 = [(_UIRefreshControlHosting *)self->_host scrollView];
    [v11 contentOffset];
    v13 = v12;
    v15 = v14;

    v16 = v15 + self->_visibleHeight;
    v17 = [(_UIRefreshControlHosting *)self->_host scrollView];
    [v17 _setAbsoluteContentOffset:v9 == 4 animated:{v13, v16}];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIRefreshControl;
  [(UIView *)&v4 setBackgroundColor:a3];
  [(UIRefreshControl *)self _updateConcealingMask];
}

- (BOOL)_canTransitionFromState:(int64_t)a3 toState:(int64_t)a4
{
  result = a4 == 3;
  if (a3 != 3 && a4 == 3)
  {
    return 1;
  }

  if (a3 <= 2)
  {
    switch(a3)
    {
      case 0:
        return a4 == 1 || a4 == 6;
      case 1:
        v5 = a4 >= 3;
        return !v5;
      case 2:
        return result;
    }

    return 0;
  }

  if (a3 > 4)
  {
    if (a3 == 5)
    {
      return a4 == 0;
    }

    if (a3 == 6)
    {
LABEL_14:
      v5 = a4 >= 2;
      return !v5;
    }

    return 0;
  }

  if (a3 != 3)
  {
    goto LABEL_14;
  }

  return !a4 || (a4 & 0xFFFFFFFFFFFFFFFELL) == 4;
}

- (void)_setRefreshControlState:(int64_t)a3 notify:(BOOL)a4
{
  v4 = a4;
  if (a3 >= 7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UIRefreshControl.m" lineNumber:790 description:{@"Illegal state: %ld", a3}];
  }

  if ([(UIRefreshControl *)self _canTransitionFromState:self->_refreshControlState toState:a3])
  {
    refreshControlState = self->_refreshControlState;
    if ((a3 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      [(UIRefreshControl *)self _removeInsets];
    }

    v8 = [(UIRefreshControl *)self _contentView];
    [v8 willTransitionFromState:refreshControlState toState:a3];

    self->_refreshControlState = a3;
    v9 = [(UIRefreshControl *)self _contentView];
    [v9 didTransitionFromState:refreshControlState toState:a3];

    if (self->_refreshControlState == a3)
    {
      if (a3 == 3)
      {
        [(UIRefreshControl *)self _addInsets];
        if (v4)
        {
          [(UIControl *)self sendActionsForControlEvents:4096];
        }
      }

      else if (a3 == 2)
      {
        [(UIRefreshControl *)self _addInsets];
      }

      [(_UIRefreshControlHosting *)self->_host refreshControl:self didChangeToState:a3 fromState:refreshControlState];

      [(UIView *)self setNeedsLayout];
    }
  }
}

+ (void)_setAllowsUnsupportedMacIdiomBehavior:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  _UnsupportedFlags_0 = _UnsupportedFlags_0 & 0xF7 | v3;
}

@end