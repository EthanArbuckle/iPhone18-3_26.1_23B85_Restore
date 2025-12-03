@interface _UIRefreshControlModernContentView
- (CGAffineTransform)_bloomedSeedTransform;
- (CGAffineTransform)_unbloomedSeedTransform;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UIRefreshControlModernContentView)initWithFrame:(CGRect)frame;
- (double)_currentTimeOffset;
- (double)_maximumSnappingHeightScalingForScrollViewHeight;
- (double)_percentageShowing;
- (double)maximumSnappingHeight;
- (id)_effectiveTintColor;
- (id)_effectiveTintColorWithAlpha:(double)alpha;
- (void)_bloom;
- (void)_cleanUpAfterRevealing;
- (void)_goAway;
- (void)_removeAllAnimations;
- (void)_resetToRevealingState;
- (void)_reveal;
- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)insets;
- (void)_setBloomedAppearance;
- (void)_setSpunAppearance;
- (void)_setUnbloomedAppearance;
- (void)_snappingMagic;
- (void)_spin;
- (void)_tick;
- (void)_tickDueToProgrammaticRefresh;
- (void)_unbloom;
- (void)_updateTimeOffsetOfRelevantLayers;
- (void)didTransitionFromState:(int64_t)state toState:(int64_t)toState;
- (void)layoutSubviews;
- (void)setAttributedTitle:(id)title;
- (void)setRefreshControl:(id)control;
- (void)setTintColor:(id)color;
- (void)willTransitionFromState:(int64_t)state toState:(int64_t)toState;
@end

@implementation _UIRefreshControlModernContentView

- (void)_resetToRevealingState
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60___UIRefreshControlModernContentView__resetToRevealingState__block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [UIView performWithoutAnimation:v3];
  self->_hasFinishedRevealing = 0;
  [(_UIRefreshControlModernContentView *)self _reveal];
}

- (id)_effectiveTintColor
{
  tintColor = [(_UIRefreshControlContentView *)self tintColor];
  v3 = tintColor;
  if (tintColor)
  {
    v4 = tintColor;
  }

  else
  {
    v4 = +[UIColor labelColor];
  }

  v5 = v4;

  return v5;
}

- (void)_setUnbloomedAppearance
{
  seed = self->_seed;
  [(_UIRefreshControlModernContentView *)self _unbloomedSeedTransform];
  [(UIView *)seed setTransform:&v3];
}

- (CGAffineTransform)_unbloomedSeedTransform
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

- (void)_reveal
{
  layer = [(UIView *)self->_replicatorView layer];
  [layer setSpeed:0.0];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45___UIRefreshControlModernContentView__reveal__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [UIView animateWithDuration:0 delay:v4 options:0 animations:1.0 completion:0.0];
  [(_UIRefreshControlModernContentView *)self _updateTimeOffsetOfRelevantLayers];
}

- (void)_updateTimeOffsetOfRelevantLayers
{
  if (!self->_hasFinishedRevealing)
  {
    [(_UIRefreshControlModernContentView *)self _currentTimeOffset];
    v4 = v3;
    layer = [(UIView *)self->_replicatorView layer];
    [layer setTimeOffset:v4];
  }

  textLabel = self->_textLabel;
  [(_UIRefreshControlModernContentView *)self _percentageShowing];

  [(UIView *)textLabel setAlpha:?];
}

- (double)_currentTimeOffset
{
  refreshControl = [(_UIRefreshControlContentView *)self refreshControl];
  if (!refreshControl || (v4 = refreshControl, -[_UIRefreshControlContentView refreshControl](self, "refreshControl"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 refreshControlState], v5, v4, result = 0.0, v6 == 1))
  {
    [(_UIRefreshControlModernContentView *)self _percentageShowing];
    if (result >= 1.0)
    {
      return 0.999999881;
    }
  }

  return result;
}

- (double)_percentageShowing
{
  refreshControl = [(_UIRefreshControlContentView *)self refreshControl];
  [refreshControl _visibleHeight];
  v5 = v4;

  [(_UIRefreshControlModernContentView *)self maximumSnappingHeight];
  result = v5 / v6;
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (double)maximumSnappingHeight
{
  [(UIView *)self->_textLabel frame];
  v4 = (v3 + 100.0) * 1.125;
  [(_UIRefreshControlModernContentView *)self _maximumSnappingHeightScalingForScrollViewHeight];
  return v5 * v4;
}

- (double)_maximumSnappingHeightScalingForScrollViewHeight
{
  refreshControl = [(_UIRefreshControlContentView *)self refreshControl];
  [refreshControl _scrollViewHeight];
  v4 = v3;

  v5 = 372.0;
  if (v4 >= 372.0)
  {
    v5 = v4;
  }

  return v5 / 568.0;
}

- (void)layoutSubviews
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __52___UIRefreshControlModernContentView_layoutSubviews__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (_UIRefreshControlModernContentView)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = _UIRefreshControlModernContentView;
  v3 = [(UIView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    textLabel = v3->_textLabel;
    v3->_textLabel = v4;

    v6 = v3->_textLabel;
    v7 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption1"];
    [(UILabel *)v6 setFont:v7];

    v8 = v3->_textLabel;
    v9 = +[UIColor labelColor];
    [(UILabel *)v8 setTextColor:v9];

    [(UILabel *)v3->_textLabel setTextAlignment:1];
    [(UILabel *)v3->_textLabel setNumberOfLines:1];
    v10 = v3->_textLabel;
    v11 = +[UIColor clearColor];
    [(UIView *)v10 setBackgroundColor:v11];

    [(UIView *)v3 setAutoresizingMask:2];
    v12 = objc_alloc_init(UIView);
    replicatorContainer = v3->_replicatorContainer;
    v3->_replicatorContainer = v12;

    v14 = objc_alloc_init(_UIRefreshControlModernReplicatorView);
    replicatorView = v3->_replicatorView;
    v3->_replicatorView = v14;

    v16 = objc_alloc_init(_UIRefreshControlSeedView);
    seed = v3->_seed;
    v3->_seed = v16;

    layer = [(UIView *)v3->_seed layer];
    [layer setAllowsEdgeAntialiasing:1];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __52___UIRefreshControlModernContentView_initWithFrame___block_invoke;
    v22[3] = &unk_1E70F3590;
    v19 = v3;
    v23 = v19;
    [UIView performWithoutAnimation:v22];
    [(UIView *)v3->_replicatorView addSubview:v3->_seed];
    layer2 = [(UIView *)v3->_replicatorView layer];
    [layer2 setInstanceCount:8];

    [(UIView *)v3->_replicatorContainer addSubview:v3->_replicatorView];
    [(UIView *)v19 addSubview:v3->_replicatorContainer];
    [(_UIRefreshControlModernContentView *)v19 _resetToRevealingState];
    [(_UIRefreshControlModernContentView *)v19 _updateTimeOffsetOfRelevantLayers];
    [(UIView *)v19 addSubview:v3->_textLabel];
  }

  return v3;
}

- (void)setRefreshControl:(id)control
{
  v11.receiver = self;
  v11.super_class = _UIRefreshControlModernContentView;
  controlCopy = control;
  [(_UIRefreshControlContentView *)&v11 setRefreshControl:controlCopy];
  _scrollView = [controlCopy _scrollView];

  impactFeedbackGenerator = [(_UIRefreshControlContentView *)self impactFeedbackGenerator];
  view = [impactFeedbackGenerator view];

  if (view != _scrollView)
  {
    v8 = +[_UIImpactFeedbackGeneratorConfiguration refreshConfiguration];
    v9 = [v8 tweakedConfigurationForClass:objc_opt_class() usage:@"refresh"];

    v10 = [(UIFeedbackGenerator *)[UIImpactFeedbackGenerator alloc] initWithConfiguration:v9 view:_scrollView];
    [(_UIRefreshControlContentView *)self setImpactFeedbackGenerator:v10];
  }
}

- (void)willTransitionFromState:(int64_t)state toState:(int64_t)toState
{
  v8.receiver = self;
  v8.super_class = _UIRefreshControlModernContentView;
  [_UIRefreshControlContentView willTransitionFromState:sel_willTransitionFromState_toState_ toState:?];
  if (state == 6 || state != 1 && toState == 1)
  {
    [(_UIRefreshControlModernContentView *)self _resetToRevealingState];
  }

  else if (toState == 3)
  {
    [(_UIRefreshControlModernContentView *)self _spin];
  }

  layer = [(UIView *)self->_textLabel layer];
  [layer removeAllAnimations];
}

- (void)didTransitionFromState:(int64_t)state toState:(int64_t)toState
{
  if (toState <= 2)
  {
    if (toState)
    {
      if (toState == 1)
      {
        if (state != 4)
        {
          [(_UIRefreshControlModernContentView *)self _updateTimeOffsetOfRelevantLayers];
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (toState != 2)
      {
        goto LABEL_23;
      }

      impactFeedbackGenerator = [(_UIRefreshControlContentView *)self impactFeedbackGenerator];
      isActive = [impactFeedbackGenerator isActive];

      if ((isActive & 1) == 0)
      {
        impactFeedbackGenerator2 = [(_UIRefreshControlContentView *)self impactFeedbackGenerator];
        [impactFeedbackGenerator2 activateWithCompletionBlock:0];
      }

      [(_UIRefreshControlModernContentView *)self _snappingMagic];
    }

    goto LABEL_15;
  }

  if (toState > 4)
  {
    if (toState == 5)
    {
      if (state == 4)
      {
        [(_UIRefreshControlModernContentView *)self _resetToRevealingState];
      }

      goto LABEL_19;
    }

    if (toState != 6)
    {
      goto LABEL_23;
    }

LABEL_22:
    [(_UIRefreshControlModernContentView *)self _resetToRevealingState];
    goto LABEL_23;
  }

  if (toState == 3)
  {
    if (!state)
    {
      [(_UIRefreshControlModernContentView *)self _tickDueToProgrammaticRefresh];
      goto LABEL_23;
    }

LABEL_15:
    if (state != 4)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  [(_UIRefreshControlModernContentView *)self _goAway];
LABEL_19:
  impactFeedbackGenerator3 = [(_UIRefreshControlContentView *)self impactFeedbackGenerator];
  isActive2 = [impactFeedbackGenerator3 isActive];

  if (isActive2)
  {
    impactFeedbackGenerator4 = [(_UIRefreshControlContentView *)self impactFeedbackGenerator];
    [impactFeedbackGenerator4 deactivate];
  }

LABEL_23:
  v13.receiver = self;
  v13.super_class = _UIRefreshControlModernContentView;
  [(_UIRefreshControlContentView *)&v13 didTransitionFromState:state toState:toState];
}

- (void)_tickDueToProgrammaticRefresh
{
  [(_UIRefreshControlModernContentView *)self _cleanUpAfterRevealing];
  [(_UIRefreshControlModernContentView *)self _setSpunAppearance];

  [(_UIRefreshControlModernContentView *)self _tick];
}

- (void)_removeAllAnimations
{
  layer = [(UIView *)self->_replicatorView layer];
  [layer removeAllAnimations];
}

- (void)_cleanUpAfterRevealing
{
  self->_hasFinishedRevealing = 1;
  layer = [(UIView *)self->_replicatorView layer];
  LODWORD(v2) = 1.0;
  [layer setSpeed:v2];
}

- (void)_setSpunAppearance
{
  replicatorContainer = self->_replicatorContainer;
  CGAffineTransformMakeRotation(&v11, 3.13159265);
  [(UIView *)replicatorContainer setTransform:&v11];
  layer = [(UIView *)self->_replicatorView layer];
  LODWORD(v5) = *"\nף=";
  [layer setInstanceAlphaOffset:v5];

  os_variant_has_internal_diagnostics();
  v6 = +[UITraitCollection _currentTraitCollectionIfExists];
  traitCollection = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:traitCollection];

  v8 = _UISetCurrentFallbackEnvironment(self);
  layer2 = [(UIView *)self->_replicatorView layer];
  v10 = [(_UIRefreshControlModernContentView *)self _effectiveTintColorWithAlpha:0.0];
  [layer2 setInstanceColor:{objc_msgSend(v10, "CGColor")}];

  _UIRestorePreviousFallbackEnvironment(v8);
  [UITraitCollection setCurrentTraitCollection:v6];
}

- (void)_setBloomedAppearance
{
  seed = self->_seed;
  [(_UIRefreshControlModernContentView *)self _bloomedSeedTransform];
  [(UIView *)seed setTransform:&v3];
}

- (CGAffineTransform)_bloomedSeedTransform
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  [(_UIRefreshControlModernContentView *)self _unbloomedSeedTransform];
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeScale(&v13, 1.2, 1.2);
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeTranslation(&v12, 0.0, -2.0);
  v4 = *&retstr->c;
  *&t1.a = *&retstr->a;
  *&t1.c = v4;
  *&t1.tx = *&retstr->tx;
  v9 = v13;
  CGAffineTransformConcat(&v11, &t1, &v9);
  v5 = *&v11.c;
  *&retstr->a = *&v11.a;
  *&retstr->c = v5;
  *&retstr->tx = *&v11.tx;
  v6 = *&retstr->c;
  *&t1.a = *&retstr->a;
  *&t1.c = v6;
  *&t1.tx = *&retstr->tx;
  v9 = v12;
  result = CGAffineTransformConcat(&v11, &t1, &v9);
  v8 = *&v11.c;
  *&retstr->a = *&v11.a;
  *&retstr->c = v8;
  *&retstr->tx = *&v11.tx;
  return result;
}

- (void)_unbloom
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46___UIRefreshControlModernContentView__unbloom__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView animateWithDuration:0 delay:v2 options:0 animations:0.15 completion:0.0];
}

- (void)_bloom
{
  v2[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44___UIRefreshControlModernContentView__bloom__block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __44___UIRefreshControlModernContentView__bloom__block_invoke_2;
  v2[3] = &unk_1E70F5AC0;
  [UIView animateWithDuration:196608 delay:v3 options:v2 animations:0.05 completion:0.0];
}

- (void)_spin
{
  [(_UIRefreshControlModernContentView *)self _cleanUpAfterRevealing];
  [(_UIRefreshControlModernContentView *)self currentPopStiffness];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __43___UIRefreshControlModernContentView__spin__block_invoke;
  v19[3] = &unk_1E70F3590;
  v19[4] = self;
  [UIView _animateUsingSpringWithDuration:196612 delay:v19 options:0 mass:4.0 stiffness:0.0 damping:1.0 initialVelocity:v3 animations:5000.0 completion:0.0];
  [(_UIRefreshControlModernContentView *)self _tick];
  [(_UIRefreshControlModernContentView *)self _bloom];
  impactFeedbackGenerator = [(_UIRefreshControlContentView *)self impactFeedbackGenerator];
  isActive = [impactFeedbackGenerator isActive];

  if (isActive)
  {
    impactFeedbackGenerator2 = [(_UIRefreshControlContentView *)self impactFeedbackGenerator];
    [(_UIRefreshControlModernContentView *)self impactIntensity];
    v8 = v7;
    refreshControl = [(_UIRefreshControlContentView *)self refreshControl];
    _scrollView = [refreshControl _scrollView];
    [(UIView *)self center];
    v12 = v11;
    v14 = v13;
    superview = [(UIView *)self superview];
    [_scrollView convertPoint:superview fromView:{v12, v14}];
    [impactFeedbackGenerator2 impactOccurredWithIntensity:v8 atLocation:{v16, v17}];

    impactFeedbackGenerator3 = [(_UIRefreshControlContentView *)self impactFeedbackGenerator];
    [impactFeedbackGenerator3 deactivate];
  }
}

- (void)_tick
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __43___UIRefreshControlModernContentView__tick__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView animateKeyframesWithDuration:117638156 delay:v2 options:0 animations:1.0 completion:0.0];
}

- (void)_goAway
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45___UIRefreshControlModernContentView__goAway__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView animateWithDuration:0 delay:v2 options:0 animations:0.3 completion:0.0];
}

- (void)_snappingMagic
{
  refreshControl = [(_UIRefreshControlContentView *)self refreshControl];
  [refreshControl setRefreshControlState:3];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UIView *)self->_textLabel frame:fits.width];
  if (v5 <= 0.0)
  {
    v7 = 60.0;
  }

  else
  {
    [(UIView *)self->_textLabel frame];
    v7 = v6 + 62.0 + 5.0;
  }

  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [(UIView *)self safeAreaInsets];
  if (self->_horizontallyCenteredFramesNeedUpdate || v8 != left)
  {
    self->_horizontallyCenteredFramesNeedUpdate = 1;
  }

  else
  {
    self->_horizontallyCenteredFramesNeedUpdate = v9 != right;
    if (v9 == right)
    {
      goto LABEL_7;
    }
  }

  [(UIView *)self setNeedsLayout];
LABEL_7:
  v10.receiver = self;
  v10.super_class = _UIRefreshControlModernContentView;
  [(UIView *)&v10 _safeAreaInsetsDidChangeFromOldInsets:top, left, bottom, right];
}

- (id)_effectiveTintColorWithAlpha:(double)alpha
{
  _effectiveTintColor = [(_UIRefreshControlModernContentView *)self _effectiveTintColor];
  v5 = [_effectiveTintColor colorWithAlphaComponent:alpha];

  return v5;
}

- (void)setTintColor:(id)color
{
  v4.receiver = self;
  v4.super_class = _UIRefreshControlModernContentView;
  [(_UIRefreshControlContentView *)&v4 setTintColor:color];
  [(UIView *)self setNeedsLayout];
}

- (void)setAttributedTitle:(id)title
{
  [(UILabel *)self->_textLabel setAttributedText:title];
  [(UIView *)self->_textLabel sizeToFit];
  [(UIView *)self setNeedsLayout];
  self->_animationsAreValid = 0;
}

@end