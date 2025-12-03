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
- (void)setArrowBackgroundColor:(id)color;
- (void)setArrowOffset:(double)offset;
- (void)setPopoverBackgroundColor:(id)color;
@end

@implementation _UIPopoverLegacyChromeView

- (double)minNonPinnedOffset
{
  [objc_opt_class() arrowBase];
  v4 = floor(v3 * 0.5);
  arrowDirection = [(_UIPopoverStandardChromeView *)self arrowDirection];
  if (arrowDirection - 1 < 2)
  {
    [(UIView *)self bounds];
    v8 = floor(v9 * 0.5) + -8.0 - v4;
    return -v8;
  }

  if (arrowDirection == 4 || (result = 0.0, arrowDirection == 8))
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
  arrowDirection = [(_UIPopoverStandardChromeView *)self arrowDirection];
  if (arrowDirection - 1 < 2)
  {
    [(UIView *)self bounds];
    v8 = floor(v10 * 0.5);
    v9 = -8.0;
    return v8 + v9 - v4;
  }

  if (arrowDirection == 4 || (result = 0.0, arrowDirection == 8))
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
  window = [(UIView *)self window];

  if (window)
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
  maskView = [(UIView *)self->_effectView maskView];
  [maskView setFrame:{v4, v6, v8, v10}];

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
  arrowDirection = [(_UIPopoverStandardChromeView *)self arrowDirection];
  if (arrowDirection > 3)
  {
    if (arrowDirection == 4 || arrowDirection == 8)
    {
      [(_UIPopoverLegacyChromeView *)self _layoutArrowViewsLeftOrRight];
      goto LABEL_13;
    }
  }

  else
  {
    if ((arrowDirection - 1) < 2)
    {
      [(_UIPopoverLegacyChromeView *)self _layoutArrowViewsUpOrDown];
      goto LABEL_13;
    }

    if (!arrowDirection)
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
  viewToMaskWhenContentExtendsOverArrow = [(_UIPopoverStandardChromeView *)self viewToMaskWhenContentExtendsOverArrow];

  if (viewToMaskWhenContentExtendsOverArrow)
  {
    maskView = self->_maskView;
    contentView = [(UIVisualEffectView *)self->_effectView contentView];
    [contentView frame];
    [(UIView *)maskView setFrame:?];
  }
}

- (double)arrowOffset
{
  useShortMode = [(_UIPopoverLegacyChromeView *)self useShortMode];
  result = 0.0;
  if (!useShortMode)
  {
    v5.receiver = self;
    v5.super_class = _UIPopoverLegacyChromeView;
    [(_UIPopoverStandardChromeView *)&v5 arrowOffset];
  }

  return result;
}

- (void)setArrowOffset:(double)offset
{
  if (![(_UIPopoverLegacyChromeView *)self useShortMode])
  {
    v5.receiver = self;
    v5.super_class = _UIPopoverLegacyChromeView;
    [(_UIPopoverStandardChromeView *)&v5 setArrowOffset:offset];
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
  _chromeHidden = [(UIPopoverBackgroundView *)self _chromeHidden];
  v4 = 1.0;
  if (_chromeHidden)
  {
    v4 = 0.0;
  }

  [(UIView *)self->_effectView setAlpha:v4];
  legacyBackgroundEffect = [(_UIPopoverLegacyChromeView *)self legacyBackgroundEffect];
  [(UIVisualEffectView *)self->_effectView setEffect:legacyBackgroundEffect];
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
  backgroundEffect = [(_UIPopoverStandardChromeView *)self backgroundEffect];
  v4 = backgroundEffect;
  if (backgroundEffect)
  {
    legacyBackgroundEffect = backgroundEffect;
  }

  else
  {
    legacyBackgroundEffect = [(_UIPopoverLegacyChromeView *)self legacyBackgroundEffect];
  }

  v6 = legacyBackgroundEffect;

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
    _effectiveBackgroundEffect = [(_UIPopoverLegacyChromeView *)self _effectiveBackgroundEffect];
    v5 = [(UIVisualEffectView *)v3 initWithEffect:_effectiveBackgroundEffect];
    effectView = self->_effectView;
    self->_effectView = v5;

    _chromeHidden = [(UIPopoverBackgroundView *)self _chromeHidden];
    v8 = 1.0;
    if (_chromeHidden)
    {
      v8 = 0.0;
    }

    [(UIView *)self->_effectView setAlpha:v8];
    [(UIVisualEffectView *)self->_effectView _setUseLiveMasking:1];
    popoverBackgroundColor = [(_UIPopoverStandardChromeView *)self popoverBackgroundColor];
    contentView = [(UIVisualEffectView *)self->_effectView contentView];
    [contentView setBackgroundColor:popoverBackgroundColor];
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

  popoverBackgroundColor = [(_UIPopoverStandardChromeView *)self popoverBackgroundColor];
  v3 = [_UIPopoverBackgroundVisualEffect effectWithStyle:v4 tint:popoverBackgroundColor];

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
      traitCollection = [(UIView *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      if (userInterfaceStyle == 2)
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
  _resolvedBackgroundStyle = [(_UIPopoverLegacyChromeView *)self _resolvedBackgroundStyle];
  if (_resolvedBackgroundStyle != self->_backgroundStyle)
  {
    v4 = _resolvedBackgroundStyle;
    self->_backgroundStyle = _resolvedBackgroundStyle;
    window = [(UIView *)self window];

    if (window)
    {
      v24 = [[_UIPopoverViewArtworkLoader alloc] initWithBackgroundStyle:v4];
      v6 = self->_leftCapView;
      directionSelector = [(UIView *)v6 directionSelector];
      useShortMode = [(_UIPopoverLegacyChromeView *)self useShortMode];
      traitCollection = [(UIView *)self traitCollection];
      v10 = [(_UIPopoverViewArtworkLoader *)v24 templateImageForDirection:directionSelector shortArtwork:useShortMode traitCollection:traitCollection];

      layer = [(UIView *)v6 layer];
      [layer setContents:{objc_msgSend(v10, "CGImage")}];

      v12 = self->_arrowView;
      directionSelector2 = [(UIView *)v12 directionSelector];
      useShortMode2 = [(_UIPopoverLegacyChromeView *)self useShortMode];
      traitCollection2 = [(UIView *)self traitCollection];
      v16 = [(_UIPopoverViewArtworkLoader *)v24 templateImageForDirection:directionSelector2 shortArtwork:useShortMode2 traitCollection:traitCollection2];

      layer2 = [(UIView *)v12 layer];
      [layer2 setContents:{objc_msgSend(v16, "CGImage")}];

      v18 = self->_rightCapView;
      directionSelector3 = [(UIView *)v18 directionSelector];
      useShortMode3 = [(_UIPopoverLegacyChromeView *)self useShortMode];
      traitCollection3 = [(UIView *)self traitCollection];
      v22 = [(_UIPopoverViewArtworkLoader *)v24 templateImageForDirection:directionSelector3 shortArtwork:useShortMode3 traitCollection:traitCollection3];

      layer3 = [(UIView *)v18 layer];

      [layer3 setContents:{objc_msgSend(v22, "CGImage")}];
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
  arrowDirection = [(_UIPopoverStandardChromeView *)self arrowDirection];
  if (arrowDirection <= 1)
  {
    if (!arrowDirection)
    {
      bottomArrowLeftEndCapView = [(_UIPopoverViewArtworkLoader *)v55 bottomArrowLeftEndCapView];
      leftCapView = self->_leftCapView;
      self->_leftCapView = bottomArrowLeftEndCapView;

      bottomArrowRightEndCapView = [(_UIPopoverViewArtworkLoader *)v55 bottomArrowRightEndCapView];
      v9 = 568;
      goto LABEL_28;
    }

    if (arrowDirection != 1)
    {
LABEL_19:
      v15 = MEMORY[0x1E695DF30];
      v16 = *MEMORY[0x1E695D940];
      v17 = _NSFullMethodName();
      [v15 raise:v16 format:{@"%@: Cannot load popover chrome with unrecognized direction or UIPopoverArrowDirectionUnknown.", v17}];
      goto LABEL_29;
    }

    topArrowLeftEndCapView = [(_UIPopoverViewArtworkLoader *)v55 topArrowLeftEndCapView];
    v6 = self->_leftCapView;
    self->_leftCapView = topArrowLeftEndCapView;

    [(_UIPopoverLegacyChromeView *)self arrowOffset];
    if ([(_UIPopoverStandardChromeView *)self wouldPinForOffset:?])
    {
      bottomArrowRightEndCapView = [(_UIPopoverViewArtworkLoader *)v55 topArrowPinnedView];
      goto LABEL_14;
    }

    topArrowView = [(_UIPopoverViewArtworkLoader *)v55 topArrowView];
    arrowView = self->_arrowView;
    self->_arrowView = topArrowView;

    bottomArrowRightEndCapView = [(_UIPopoverViewArtworkLoader *)v55 topArrowRightEndCapView];
LABEL_27:
    v9 = 568;
    goto LABEL_28;
  }

  if (arrowDirection == 2)
  {
    bottomArrowLeftEndCapView2 = [(_UIPopoverViewArtworkLoader *)v55 bottomArrowLeftEndCapView];
    v8 = self->_leftCapView;
    self->_leftCapView = bottomArrowLeftEndCapView2;

    [(_UIPopoverLegacyChromeView *)self arrowOffset];
    if ([(_UIPopoverStandardChromeView *)self wouldPinForOffset:?])
    {
      bottomArrowRightEndCapView = [(_UIPopoverViewArtworkLoader *)v55 bottomArrowPinnedView];
      goto LABEL_14;
    }

    bottomArrowView = [(_UIPopoverViewArtworkLoader *)v55 bottomArrowView];
    v25 = self->_arrowView;
    self->_arrowView = bottomArrowView;

    bottomArrowRightEndCapView = [(_UIPopoverViewArtworkLoader *)v55 bottomArrowRightEndCapView];
    goto LABEL_27;
  }

  if (arrowDirection != 4 && arrowDirection != 8)
  {
    goto LABEL_19;
  }

  if (![(_UIPopoverLegacyChromeView *)self useShortMode])
  {
    [(_UIPopoverLegacyChromeView *)self arrowOffset];
    if ([(_UIPopoverStandardChromeView *)self wouldPinForOffset:?]&& ([(_UIPopoverLegacyChromeView *)self arrowOffset], v10 < 0.0))
    {
      rightArrowPinnedTopView = [(_UIPopoverViewArtworkLoader *)v55 rightArrowPinnedTopView];
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
          rightArrowPinnedBottomView = [(_UIPopoverViewArtworkLoader *)v55 rightArrowPinnedBottomView];
          v20 = self->_arrowView;
          self->_arrowView = rightArrowPinnedBottomView;

          bottomArrowRightEndCapView = [(_UIPopoverViewArtworkLoader *)v55 rightArrowTopEndCapView];
          v9 = 560;
          goto LABEL_28;
        }
      }

      rightArrowView = [(_UIPopoverViewArtworkLoader *)v55 rightArrowView];
      v22 = self->_arrowView;
      self->_arrowView = rightArrowView;

      rightArrowPinnedTopView = [(_UIPopoverViewArtworkLoader *)v55 rightArrowTopEndCapView];
      v12 = 560;
    }

    v23 = *(&self->super.super.super.super.super.isa + v12);
    *(&self->super.super.super.super.super.isa + v12) = rightArrowPinnedTopView;

    bottomArrowRightEndCapView = [(_UIPopoverViewArtworkLoader *)v55 rightArrowBottomEndCapView];
    goto LABEL_27;
  }

  bottomArrowRightEndCapView = [(_UIPopoverViewArtworkLoader *)v55 shortRightArrowView];
LABEL_14:
  v9 = 552;
LABEL_28:
  v17 = *(&self->super.super.super.super.super.isa + v9);
  *(&self->super.super.super.super.super.isa + v9) = bottomArrowRightEndCapView;
LABEL_29:

  backgroundStyle = self->_backgroundStyle;
  if ((backgroundStyle - 6) < 2 || backgroundStyle == 100)
  {
    selfCopy = self;
    [(_UIPopoverLegacyChromeView *)selfCopy _configureEffectView];
    [(UIView *)selfCopy bounds];
    [(UIView *)selfCopy->_effectView setFrame:?];
    v30 = [UIView alloc];
    contentView = [(UIVisualEffectView *)selfCopy->_effectView contentView];

    [contentView frame];
    selfCopy2 = [(UIView *)v30 initWithFrame:?];

    [(UIView *)selfCopy2 setUserInteractionEnabled:0];
    arrowBackgroundView = selfCopy->_arrowBackgroundView;
    if (!arrowBackgroundView)
    {
      v34 = objc_alloc_init(UIView);
      v35 = selfCopy->_arrowBackgroundView;
      selfCopy->_arrowBackgroundView = v34;

      arrowBackgroundView = selfCopy->_arrowBackgroundView;
    }

    superview = [(UIView *)arrowBackgroundView superview];
    contentView2 = [(UIVisualEffectView *)selfCopy->_effectView contentView];

    if (superview != contentView2)
    {
      contentView3 = [(UIVisualEffectView *)selfCopy->_effectView contentView];
      [contentView3 addSubview:selfCopy->_arrowBackgroundView];
    }

    v39 = selfCopy->_arrowBackgroundView;
    arrowBackgroundColor = [(_UIPopoverStandardChromeView *)selfCopy arrowBackgroundColor];
    [(UIView *)v39 setBackgroundColor:arrowBackgroundColor];

    v41 = 1;
  }

  else
  {
    selfCopy2 = self;
    v41 = 0;
  }

  superview2 = [(UIView *)self->_arrowView superview];
  v43 = superview2;
  if (superview2 == selfCopy2)
  {
  }

  else
  {
    arrowDirection2 = [(_UIPopoverStandardChromeView *)self arrowDirection];

    if (arrowDirection2)
    {
      [(UIView *)selfCopy2 addSubview:self->_arrowView];
    }
  }

  superview3 = [(UIView *)self->_leftCapView superview];

  if (superview3 != selfCopy2)
  {
    [(UIView *)selfCopy2 addSubview:self->_leftCapView];
  }

  superview4 = [(UIView *)self->_rightCapView superview];

  if (superview4 != selfCopy2)
  {
    [(UIView *)selfCopy2 addSubview:self->_rightCapView];
  }

  if (v41)
  {
    viewToMaskWhenContentExtendsOverArrow = [(_UIPopoverStandardChromeView *)self viewToMaskWhenContentExtendsOverArrow];

    if (viewToMaskWhenContentExtendsOverArrow)
    {
      viewToMaskWhenContentExtendsOverArrow2 = [(_UIPopoverStandardChromeView *)self viewToMaskWhenContentExtendsOverArrow];
      [viewToMaskWhenContentExtendsOverArrow2 setMaskView:selfCopy2];
    }

    else
    {
      [(UIView *)self->_effectView setMaskView:selfCopy2];
    }
  }

  objc_storeStrong(&self->_maskView, selfCopy2);
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

- (void)setPopoverBackgroundColor:(id)color
{
  v8.receiver = self;
  v8.super_class = _UIPopoverLegacyChromeView;
  colorCopy = color;
  [(_UIPopoverStandardChromeView *)&v8 setPopoverBackgroundColor:colorCopy];
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
  [v7 setBackgroundColor:colorCopy];
}

- (void)setArrowBackgroundColor:(id)color
{
  colorCopy = color;
  v6.receiver = self;
  v6.super_class = _UIPopoverLegacyChromeView;
  [(_UIPopoverStandardChromeView *)&v6 setArrowBackgroundColor:colorCopy];
  arrowBackgroundView = self->_arrowBackgroundView;
  if (arrowBackgroundView)
  {
    [(UIView *)arrowBackgroundView setBackgroundColor:colorCopy];
  }
}

@end