@interface _UIPopoverLegacyChromeView
- (BOOL)isPinned;
- (BOOL)useShortMode;
- (CGSize)_shadowOffset;
- (UIEdgeInsets)_shadowInsets;
- (double)arrowOffset;
- (double)maxNonPinnedOffset;
- (double)minNonPinnedOffset;
- (id)_effectiveBackgroundEffect;
- (id)legacyBackgroundEffect;
- (int64_t)_resolvedBackgroundStyle;
- (void)_configureEffectView;
- (void)_layoutArrowViewsLeftOrRight;
- (void)_layoutArrowViewsNone;
- (void)_layoutArrowViewsUpOrDown;
- (void)_loadNecessaryViews;
- (void)_removeEffectView;
- (void)_resetComponentViews;
- (void)_updateBackgroundStyle;
- (void)_updateChrome;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setArrowBackgroundColor:(id)a3;
- (void)setArrowOffset:(double)a3;
- (void)setPopoverBackgroundColor:(id)a3;
@end

@implementation _UIPopoverLegacyChromeView

- (double)minNonPinnedOffset
{
  [objc_opt_class() arrowBase];
  v4 = floor(v3 * 0.5);
  v5 = [(_UIPopoverStandardChromeView *)self arrowDirection];
  if (v5 - 1 < 2)
  {
    [(UIView *)self bounds];
    v8 = floor(v9 * 0.5) + -8.0 - v4;
    return -v8;
  }

  if (v5 == 4 || (result = 0.0, v5 == 8))
  {
    [(UIView *)self bounds];
    v8 = floor(v7 * 0.5) + -24.0 + 16.0 - v4 + -2.0;
    return -v8;
  }

  return result;
}

- (double)maxNonPinnedOffset
{
  [objc_opt_class() arrowBase];
  v4 = floor(v3 * 0.5);
  v5 = [(_UIPopoverStandardChromeView *)self arrowDirection];
  if (v5 - 1 < 2)
  {
    [(UIView *)self bounds];
    v8 = floor(v10 * 0.5);
    v9 = -8.0;
    return v8 + v9 - v4;
  }

  if (v5 == 4 || (result = 0.0, v5 == 8))
  {
    [(UIView *)self bounds];
    v8 = floor(v7 * 0.5);
    v9 = -10.0;
    return v8 + v9 - v4;
  }

  return result;
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = _UIPopoverLegacyChromeView;
  [(UIView *)&v5 didMoveToWindow];
  v3 = [(UIView *)self window];

  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __45___UIPopoverLegacyChromeView_didMoveToWindow__block_invoke;
    v4[3] = &unk_1E70F3590;
    v4[4] = self;
    [UIView performWithoutAnimation:v4];
  }
}

- (void)_layoutArrowViewsUpOrDown
{
  [(UIView *)self->_arrowView bounds];
  v4 = v3;
  [(UIView *)self bounds];
  v6 = v5;
  [(UIView *)self bounds];
  v8 = v7;
  [(UIView *)self bounds];
  MidX = CGRectGetMidX(v40);
  if ([(_UIPopoverLegacyChromeView *)self isPinned])
  {
    [(UIView *)self->_leftCapView setFrame:0.0, 0.0, v8 - v4, v6];
    arrowView = self->_arrowView;
    [(UIView *)self->_leftCapView frame];
    [(UIView *)arrowView setFrame:CGRectGetMaxX(v41), 0.0, v4, v6];
    [(_UIPopoverLegacyChromeView *)self arrowOffset];
    if (v11 < 0.0)
    {
      maskView = self->_maskView;
      CATransform3DMakeScale(&v38, -1.0, 1.0, 1.0);
      CATransform3DGetAffineTransform(&v39, &v38);
      [(UIView *)maskView setTransform:&v39];
    }
  }

  else
  {
    v13 = floor(MidX);
    [(_UIPopoverLegacyChromeView *)self arrowOffset];
    if (v14 >= 0.0)
    {
      [(_UIPopoverLegacyChromeView *)self maxNonPinnedOffset];
      v19 = v18;
      [(_UIPopoverLegacyChromeView *)self arrowOffset];
      if (v19 < v17)
      {
        v17 = v19;
      }
    }

    else
    {
      [(_UIPopoverLegacyChromeView *)self minNonPinnedOffset];
      v16 = v15;
      [(_UIPopoverLegacyChromeView *)self arrowOffset];
      if (v16 >= v17)
      {
        v17 = v16;
      }
    }

    [(UIView *)self->_arrowView setFrame:v13 + v17 - floor(v4 * 0.5), 0.0, v4, v6];
    leftCapView = self->_leftCapView;
    [(UIView *)self->_arrowView frame];
    [(UIView *)leftCapView setFrame:0.0, 0.0, v21, v6];
    rightCapView = self->_rightCapView;
    [(UIView *)self->_arrowView frame];
    MaxX = CGRectGetMaxX(v42);
    [(UIView *)self bounds];
    v25 = v24 - v4;
    [(UIView *)self->_leftCapView frame];
    [(UIView *)rightCapView setFrame:MaxX, 0.0, v25 - v26, v6];
  }

  [(UIView *)self->_arrowView frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  +[_UIPopoverLegacyChromeView arrowHeight];
  v36 = v35;
  if ([(_UIPopoverStandardChromeView *)self arrowDirection]== 2)
  {
    v37 = v34 - v36;
  }

  else
  {
    v37 = v30;
  }

  [(UIView *)self->_arrowBackgroundView setFrame:v28, v37, v32, v36];
}

- (void)_layoutArrowViewsLeftOrRight
{
  [(UIView *)self->_arrowView bounds];
  MaxY = v3;
  [(UIView *)self bounds];
  v6 = v5;
  [(UIView *)self bounds];
  v8 = v7;
  [(UIView *)self bounds];
  MidY = CGRectGetMidY(v34);
  if ([(_UIPopoverStandardChromeView *)self isRightArrowPinnedToTop])
  {
    [(UIView *)self->_arrowView setFrame:0.0, 0.0, v8, MaxY];
    rightCapView = self->_rightCapView;
    MinY = v6 - MaxY;
LABEL_3:
    v12 = MaxY;
LABEL_6:
    v14 = v8;
    goto LABEL_7;
  }

  if ([(_UIPopoverStandardChromeView *)self isRightArrowPinnedToBottom])
  {
    [(UIView *)self->_arrowView setFrame:0.0, v6 - MaxY, v8, MaxY];
    leftCapView = self->_leftCapView;
    [(UIView *)self->_arrowView frame];
    MinY = CGRectGetMinY(v35);
    v12 = 0.0;
    rightCapView = leftCapView;
    goto LABEL_6;
  }

  if (![(_UIPopoverLegacyChromeView *)self useShortMode])
  {
    v23 = floor(MidY);
    [(_UIPopoverLegacyChromeView *)self arrowOffset];
    if (v24 >= 0.0)
    {
      [(_UIPopoverLegacyChromeView *)self maxNonPinnedOffset];
      v29 = v28;
      [(_UIPopoverLegacyChromeView *)self arrowOffset];
      if (v29 < v27)
      {
        v27 = v29;
      }
    }

    else
    {
      [(_UIPopoverLegacyChromeView *)self minNonPinnedOffset];
      v26 = v25;
      [(_UIPopoverLegacyChromeView *)self arrowOffset];
      if (v26 >= v27)
      {
        v27 = v26;
      }
    }

    [(UIView *)self->_arrowView setFrame:0.0, v23 + v27 - floor(MaxY * 0.5), v8, MaxY];
    v30 = self->_leftCapView;
    [(UIView *)self->_arrowView frame];
    [(UIView *)v30 setFrame:0.0, 0.0, v8, CGRectGetMinY(v36)];
    v31 = self->_rightCapView;
    [(UIView *)self->_arrowView frame];
    MaxY = CGRectGetMaxY(v37);
    [(UIView *)self->_arrowView frame];
    MinY = v6 - CGRectGetMaxY(v38);
    rightCapView = v31;
    goto LABEL_3;
  }

  rightCapView = self->_arrowView;
  v12 = 2.0;
  if (self->_effectView)
  {
    v12 = 0.0;
  }

  v14 = v8;
  MinY = MaxY;
LABEL_7:
  [(UIView *)rightCapView setFrame:0.0, v12, v14, MinY];
  [(UIView *)self->_arrowView frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  +[_UIPopoverLegacyChromeView arrowHeight];
  [(UIView *)self->_arrowBackgroundView setFrame:v18 - v21, v16, v21, v20];
  if ([(_UIPopoverStandardChromeView *)self arrowDirection]== 4)
  {
    maskView = self->_maskView;
    CATransform3DMakeScale(&v32, -1.0, 1.0, 1.0);
    CATransform3DGetAffineTransform(&v33, &v32);
    [(UIView *)maskView setTransform:&v33];
  }
}

- (void)_layoutArrowViewsNone
{
  [(UIView *)self bounds];
  CGRectGetMidX(v10);
  UIRoundToViewScale(self);
  v4 = v3;
  [(UIView *)self bounds];
  v6 = v5;
  [(UIView *)self->_leftCapView setFrame:0.0, 0.0, v4];
  rightCapView = self->_rightCapView;
  [(UIView *)self bounds];
  v8 = CGRectGetWidth(v11) - v4;

  [(UIView *)rightCapView setFrame:v4, 0.0, v8, v6];
}

- (void)layoutSubviews
{
  [(UIView *)self bounds];
  [(UIView *)self->_effectView setFrame:?];
  [(UIView *)self->_effectView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UIView *)self->_effectView maskView];
  [v11 setFrame:{v4, v6, v8, v10}];

  if ([(_UIPopoverStandardChromeView *)self arrowDirection]!= -1)
  {
    wasPinned = self->_wasPinned;
    [(_UIPopoverLegacyChromeView *)self arrowOffset];
    if (wasPinned != [(_UIPopoverStandardChromeView *)self wouldPinForOffset:?])
    {
      [(_UIPopoverLegacyChromeView *)self _resetComponentViews];
      [(_UIPopoverLegacyChromeView *)self _loadNecessaryViews];
    }
  }

  self->_wasPinned = [(_UIPopoverLegacyChromeView *)self isPinned];
  v13 = [(_UIPopoverStandardChromeView *)self arrowDirection];
  if (v13 > 3)
  {
    if (v13 == 4 || v13 == 8)
    {
      [(_UIPopoverLegacyChromeView *)self _layoutArrowViewsLeftOrRight];
      goto LABEL_13;
    }
  }

  else
  {
    if ((v13 - 1) < 2)
    {
      [(_UIPopoverLegacyChromeView *)self _layoutArrowViewsUpOrDown];
      goto LABEL_13;
    }

    if (!v13)
    {
      [(_UIPopoverLegacyChromeView *)self _layoutArrowViewsNone];
      goto LABEL_13;
    }
  }

  v14 = MEMORY[0x1E695DF30];
  v15 = *MEMORY[0x1E695D940];
  v16 = _NSFullMethodName();
  [v14 raise:v15 format:{@"%@: Cannot lay out popover chrome with unrecognized direction or UIPopoverArrowDirectionUnknown.", v16}];

LABEL_13:
  v20.receiver = self;
  v20.super_class = _UIPopoverLegacyChromeView;
  [(UIPopoverBackgroundView *)&v20 layoutSubviews];
  [(_UIPopoverLegacyChromeView *)self _updateBackgroundStyle];
  v17 = [(_UIPopoverStandardChromeView *)self viewToMaskWhenContentExtendsOverArrow];

  if (v17)
  {
    maskView = self->_maskView;
    v19 = [(UIVisualEffectView *)self->_effectView contentView];
    [v19 frame];
    [(UIView *)maskView setFrame:?];
  }
}

- (double)arrowOffset
{
  v3 = [(_UIPopoverLegacyChromeView *)self useShortMode];
  result = 0.0;
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = _UIPopoverLegacyChromeView;
    [(_UIPopoverStandardChromeView *)&v5 arrowOffset];
  }

  return result;
}

- (void)setArrowOffset:(double)a3
{
  if (![(_UIPopoverLegacyChromeView *)self useShortMode])
  {
    v5.receiver = self;
    v5.super_class = _UIPopoverLegacyChromeView;
    [(_UIPopoverStandardChromeView *)&v5 setArrowOffset:a3];
    [(UIView *)self setNeedsLayout];
  }
}

- (UIEdgeInsets)_shadowInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)_shadowOffset
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_updateChrome
{
  v3 = [(UIPopoverBackgroundView *)self _chromeHidden];
  v4 = 1.0;
  if (v3)
  {
    v4 = 0.0;
  }

  [(UIView *)self->_effectView setAlpha:v4];
  v5 = [(_UIPopoverLegacyChromeView *)self legacyBackgroundEffect];
  [(UIVisualEffectView *)self->_effectView setEffect:v5];
}

- (BOOL)useShortMode
{
  if ([(_UIPopoverStandardChromeView *)self arrowDirection]== 1 || [(_UIPopoverStandardChromeView *)self arrowDirection]== 2)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = _UIPopoverLegacyChromeView;
  return [(_UIPopoverStandardChromeView *)&v4 useShortMode];
}

- (id)_effectiveBackgroundEffect
{
  v3 = [(_UIPopoverStandardChromeView *)self backgroundEffect];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(_UIPopoverLegacyChromeView *)self legacyBackgroundEffect];
  }

  v6 = v5;

  return v6;
}

- (void)_configureEffectView
{
  if (self->_effectView)
  {
    [(_UIPopoverLegacyChromeView *)self _updateChrome];
  }

  else
  {
    v3 = [UIVisualEffectView alloc];
    v4 = [(_UIPopoverLegacyChromeView *)self _effectiveBackgroundEffect];
    v5 = [(UIVisualEffectView *)v3 initWithEffect:v4];
    effectView = self->_effectView;
    self->_effectView = v5;

    v7 = [(UIPopoverBackgroundView *)self _chromeHidden];
    v8 = 1.0;
    if (v7)
    {
      v8 = 0.0;
    }

    [(UIView *)self->_effectView setAlpha:v8];
    [(UIVisualEffectView *)self->_effectView _setUseLiveMasking:1];
    v9 = [(_UIPopoverStandardChromeView *)self popoverBackgroundColor];
    v10 = [(UIVisualEffectView *)self->_effectView contentView];
    [v10 setBackgroundColor:v9];
  }

  v11 = self->_effectView;

  [(UIView *)self insertSubview:v11 atIndex:0];
}

- (void)_removeEffectView
{
  [(UIView *)self->_effectView removeFromSuperview];
  effectView = self->_effectView;
  self->_effectView = 0;
}

- (id)legacyBackgroundEffect
{
  backgroundStyle = self->_backgroundStyle;
  if (backgroundStyle == 6)
  {
    v4 = 0;
  }

  else if (backgroundStyle == 100)
  {
    v4 = 1200;
  }

  else
  {
    v3 = 0;
    if (backgroundStyle != 7)
    {
      goto LABEL_8;
    }

    v4 = 99;
  }

  v5 = [(_UIPopoverStandardChromeView *)self popoverBackgroundColor];
  v3 = [_UIPopoverBackgroundVisualEffect effectWithStyle:v4 tint:v5];

LABEL_8:

  return v3;
}

- (int64_t)_resolvedBackgroundStyle
{
  result = self->_requestedBackgroundStyle;
  if ((result - 8) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    if (dyld_program_sdk_at_least())
    {
      return 100;
    }

    else
    {
      v4 = [(UIView *)self traitCollection];
      v5 = [v4 userInterfaceStyle];

      if (v5 == 2)
      {
        return 7;
      }

      else
      {
        return 6;
      }
    }
  }

  return result;
}

- (void)_updateBackgroundStyle
{
  v3 = [(_UIPopoverLegacyChromeView *)self _resolvedBackgroundStyle];
  if (v3 != self->_backgroundStyle)
  {
    v4 = v3;
    self->_backgroundStyle = v3;
    v5 = [(UIView *)self window];

    if (v5)
    {
      v24 = [[_UIPopoverViewArtworkLoader alloc] initWithBackgroundStyle:v4];
      v6 = self->_leftCapView;
      v7 = [(UIView *)v6 directionSelector];
      v8 = [(_UIPopoverLegacyChromeView *)self useShortMode];
      v9 = [(UIView *)self traitCollection];
      v10 = [(_UIPopoverViewArtworkLoader *)v24 templateImageForDirection:v7 shortArtwork:v8 traitCollection:v9];

      v11 = [(UIView *)v6 layer];
      [v11 setContents:{objc_msgSend(v10, "CGImage")}];

      v12 = self->_arrowView;
      v13 = [(UIView *)v12 directionSelector];
      v14 = [(_UIPopoverLegacyChromeView *)self useShortMode];
      v15 = [(UIView *)self traitCollection];
      v16 = [(_UIPopoverViewArtworkLoader *)v24 templateImageForDirection:v13 shortArtwork:v14 traitCollection:v15];

      v17 = [(UIView *)v12 layer];
      [v17 setContents:{objc_msgSend(v16, "CGImage")}];

      v18 = self->_rightCapView;
      v19 = [(UIView *)v18 directionSelector];
      v20 = [(_UIPopoverLegacyChromeView *)self useShortMode];
      v21 = [(UIView *)self traitCollection];
      v22 = [(_UIPopoverViewArtworkLoader *)v24 templateImageForDirection:v19 shortArtwork:v20 traitCollection:v21];

      v23 = [(UIView *)v18 layer];

      [v23 setContents:{objc_msgSend(v22, "CGImage")}];
      if ((v4 - 6) < 2 || v4 == 100)
      {
        [(_UIPopoverLegacyChromeView *)self _configureEffectView];
      }

      else
      {
        [(_UIPopoverLegacyChromeView *)self _removeEffectView];
      }
    }
  }
}

- (void)_resetComponentViews
{
  [(UIView *)self->_leftCapView removeFromSuperview];
  leftCapView = self->_leftCapView;
  self->_leftCapView = 0;

  [(UIView *)self->_rightCapView removeFromSuperview];
  rightCapView = self->_rightCapView;
  self->_rightCapView = 0;

  [(UIView *)self->_arrowView removeFromSuperview];
  arrowView = self->_arrowView;
  self->_arrowView = 0;
}

- (void)_loadNecessaryViews
{
  if ([(_UIPopoverLegacyChromeView *)self hasComponentViews])
  {
    return;
  }

  v55 = [[_UIPopoverViewArtworkLoader alloc] initWithBackgroundStyle:self->_backgroundStyle];
  v3 = [(_UIPopoverStandardChromeView *)self arrowDirection];
  if (v3 <= 1)
  {
    if (!v3)
    {
      v13 = [(_UIPopoverViewArtworkLoader *)v55 bottomArrowLeftEndCapView];
      leftCapView = self->_leftCapView;
      self->_leftCapView = v13;

      v4 = [(_UIPopoverViewArtworkLoader *)v55 bottomArrowRightEndCapView];
      v9 = 568;
      goto LABEL_28;
    }

    if (v3 != 1)
    {
LABEL_19:
      v15 = MEMORY[0x1E695DF30];
      v16 = *MEMORY[0x1E695D940];
      v17 = _NSFullMethodName();
      [v15 raise:v16 format:{@"%@: Cannot load popover chrome with unrecognized direction or UIPopoverArrowDirectionUnknown.", v17}];
      goto LABEL_29;
    }

    v5 = [(_UIPopoverViewArtworkLoader *)v55 topArrowLeftEndCapView];
    v6 = self->_leftCapView;
    self->_leftCapView = v5;

    [(_UIPopoverLegacyChromeView *)self arrowOffset];
    if ([(_UIPopoverStandardChromeView *)self wouldPinForOffset:?])
    {
      v4 = [(_UIPopoverViewArtworkLoader *)v55 topArrowPinnedView];
      goto LABEL_14;
    }

    v26 = [(_UIPopoverViewArtworkLoader *)v55 topArrowView];
    arrowView = self->_arrowView;
    self->_arrowView = v26;

    v4 = [(_UIPopoverViewArtworkLoader *)v55 topArrowRightEndCapView];
LABEL_27:
    v9 = 568;
    goto LABEL_28;
  }

  if (v3 == 2)
  {
    v7 = [(_UIPopoverViewArtworkLoader *)v55 bottomArrowLeftEndCapView];
    v8 = self->_leftCapView;
    self->_leftCapView = v7;

    [(_UIPopoverLegacyChromeView *)self arrowOffset];
    if ([(_UIPopoverStandardChromeView *)self wouldPinForOffset:?])
    {
      v4 = [(_UIPopoverViewArtworkLoader *)v55 bottomArrowPinnedView];
      goto LABEL_14;
    }

    v24 = [(_UIPopoverViewArtworkLoader *)v55 bottomArrowView];
    v25 = self->_arrowView;
    self->_arrowView = v24;

    v4 = [(_UIPopoverViewArtworkLoader *)v55 bottomArrowRightEndCapView];
    goto LABEL_27;
  }

  if (v3 != 4 && v3 != 8)
  {
    goto LABEL_19;
  }

  if (![(_UIPopoverLegacyChromeView *)self useShortMode])
  {
    [(_UIPopoverLegacyChromeView *)self arrowOffset];
    if ([(_UIPopoverStandardChromeView *)self wouldPinForOffset:?]&& ([(_UIPopoverLegacyChromeView *)self arrowOffset], v10 < 0.0))
    {
      v11 = [(_UIPopoverViewArtworkLoader *)v55 rightArrowPinnedTopView];
      v12 = 552;
    }

    else
    {
      [(_UIPopoverLegacyChromeView *)self arrowOffset];
      if ([(_UIPopoverStandardChromeView *)self wouldPinForOffset:?])
      {
        [(_UIPopoverLegacyChromeView *)self arrowOffset];
        if (v18 > 0.0)
        {
          v19 = [(_UIPopoverViewArtworkLoader *)v55 rightArrowPinnedBottomView];
          v20 = self->_arrowView;
          self->_arrowView = v19;

          v4 = [(_UIPopoverViewArtworkLoader *)v55 rightArrowTopEndCapView];
          v9 = 560;
          goto LABEL_28;
        }
      }

      v21 = [(_UIPopoverViewArtworkLoader *)v55 rightArrowView];
      v22 = self->_arrowView;
      self->_arrowView = v21;

      v11 = [(_UIPopoverViewArtworkLoader *)v55 rightArrowTopEndCapView];
      v12 = 560;
    }

    v23 = *(&self->super.super.super.super.super.isa + v12);
    *(&self->super.super.super.super.super.isa + v12) = v11;

    v4 = [(_UIPopoverViewArtworkLoader *)v55 rightArrowBottomEndCapView];
    goto LABEL_27;
  }

  v4 = [(_UIPopoverViewArtworkLoader *)v55 shortRightArrowView];
LABEL_14:
  v9 = 552;
LABEL_28:
  v17 = *(&self->super.super.super.super.super.isa + v9);
  *(&self->super.super.super.super.super.isa + v9) = v4;
LABEL_29:

  backgroundStyle = self->_backgroundStyle;
  if ((backgroundStyle - 6) < 2 || backgroundStyle == 100)
  {
    v29 = self;
    [(_UIPopoverLegacyChromeView *)v29 _configureEffectView];
    [(UIView *)v29 bounds];
    [(UIView *)v29->_effectView setFrame:?];
    v30 = [UIView alloc];
    v31 = [(UIVisualEffectView *)v29->_effectView contentView];

    [v31 frame];
    v32 = [(UIView *)v30 initWithFrame:?];

    [(UIView *)v32 setUserInteractionEnabled:0];
    arrowBackgroundView = v29->_arrowBackgroundView;
    if (!arrowBackgroundView)
    {
      v34 = objc_alloc_init(UIView);
      v35 = v29->_arrowBackgroundView;
      v29->_arrowBackgroundView = v34;

      arrowBackgroundView = v29->_arrowBackgroundView;
    }

    v36 = [(UIView *)arrowBackgroundView superview];
    v37 = [(UIVisualEffectView *)v29->_effectView contentView];

    if (v36 != v37)
    {
      v38 = [(UIVisualEffectView *)v29->_effectView contentView];
      [v38 addSubview:v29->_arrowBackgroundView];
    }

    v39 = v29->_arrowBackgroundView;
    v40 = [(_UIPopoverStandardChromeView *)v29 arrowBackgroundColor];
    [(UIView *)v39 setBackgroundColor:v40];

    v41 = 1;
  }

  else
  {
    v32 = self;
    v41 = 0;
  }

  v42 = [(UIView *)self->_arrowView superview];
  v43 = v42;
  if (v42 == v32)
  {
  }

  else
  {
    v44 = [(_UIPopoverStandardChromeView *)self arrowDirection];

    if (v44)
    {
      [(UIView *)v32 addSubview:self->_arrowView];
    }
  }

  v45 = [(UIView *)self->_leftCapView superview];

  if (v45 != v32)
  {
    [(UIView *)v32 addSubview:self->_leftCapView];
  }

  v46 = [(UIView *)self->_rightCapView superview];

  if (v46 != v32)
  {
    [(UIView *)v32 addSubview:self->_rightCapView];
  }

  if (v41)
  {
    v47 = [(_UIPopoverStandardChromeView *)self viewToMaskWhenContentExtendsOverArrow];

    if (v47)
    {
      v48 = [(_UIPopoverStandardChromeView *)self viewToMaskWhenContentExtendsOverArrow];
      [v48 setMaskView:v32];
    }

    else
    {
      [(UIView *)self->_effectView setMaskView:v32];
    }
  }

  objc_storeStrong(&self->_maskView, v32);
  if ([(_UIPopoverStandardChromeView *)self isDebugModeEnabled])
  {
    v49 = self->_arrowView;
    v50 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.5];
    [(UIView *)v49 setBackgroundColor:v50];

    v51 = self->_leftCapView;
    v52 = [UIColor colorWithRed:0.0 green:1.0 blue:0.0 alpha:0.5];
    [(UIView *)v51 setBackgroundColor:v52];

    rightCapView = self->_rightCapView;
    v54 = [UIColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.5];
    [(UIView *)rightCapView setBackgroundColor:v54];
  }
}

- (BOOL)isPinned
{
  [(_UIPopoverLegacyChromeView *)self arrowOffset];
  v3 = [(_UIPopoverStandardChromeView *)self wouldPinForOffset:?];
  if (v3)
  {
    if (self->_arrowView)
    {
      leftCapView = self->_leftCapView;
      rightCapView = self->_rightCapView;
      if (leftCapView)
      {
        LOBYTE(v3) = 1;
        if (!rightCapView)
        {
          return v3;
        }
      }

      else
      {
        LOBYTE(v3) = rightCapView != 0;
      }

      if (leftCapView)
      {
        LOBYTE(v3) = 0;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)setPopoverBackgroundColor:(id)a3
{
  v8.receiver = self;
  v8.super_class = _UIPopoverLegacyChromeView;
  v4 = a3;
  [(_UIPopoverStandardChromeView *)&v8 setPopoverBackgroundColor:v4];
  if (self->_effectView)
  {
    v5 = [(_UIPopoverLegacyChromeView *)self legacyBackgroundEffect:v8.receiver];
    [(UIVisualEffectView *)self->_effectView setEffect:v5];
    self->_popoverBackgroundColorIsOpaque = [v5 tintColorIsTranslucent] ^ 1;

    effectView = self->_effectView;
  }

  else
  {
    effectView = 0;
  }

  v7 = [(UIVisualEffectView *)effectView contentView:v8.receiver];
  [v7 setBackgroundColor:v4];
}

- (void)setArrowBackgroundColor:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _UIPopoverLegacyChromeView;
  [(_UIPopoverStandardChromeView *)&v6 setArrowBackgroundColor:v4];
  arrowBackgroundView = self->_arrowBackgroundView;
  if (arrowBackgroundView)
  {
    [(UIView *)arrowBackgroundView setBackgroundColor:v4];
  }
}

@end