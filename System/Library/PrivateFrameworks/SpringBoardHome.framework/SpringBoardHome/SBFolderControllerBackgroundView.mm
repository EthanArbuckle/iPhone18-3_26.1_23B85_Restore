@interface SBFolderControllerBackgroundView
+ (id)_tintColorForEffect:(unint64_t)effect;
- (SBFolderControllerBackgroundView)initWithFrame:(CGRect)frame;
- (SBFolderControllerBackgroundViewDelegate)delegate;
- (double)minimumHomeScreenScale;
- (id)currentEffectMaterialRecipeNameForHighQualityBlur:(BOOL)blur;
- (unint64_t)concreteEffect;
- (void)_reduceTransparencyEnabledStateChanged;
- (void)_updateCurrentEffect;
- (void)layoutSubviews;
- (void)setDelegate:(id)delegate;
- (void)setEffect:(unint64_t)effect;
- (void)setEffectActive:(BOOL)active;
- (void)setExpanding:(BOOL)expanding;
- (void)setFrozen:(BOOL)frozen;
- (void)setTransitionCancelled:(BOOL)cancelled;
@end

@implementation SBFolderControllerBackgroundView

- (void)_updateCurrentEffect
{
  currentEffect = [(SBFolderControllerBackgroundView *)self currentEffect];
  concreteEffect = [(SBFolderControllerBackgroundView *)self concreteEffect];
  [(SBFolderControllerBackgroundView *)self setCurrentEffect:concreteEffect];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__SBFolderControllerBackgroundView__updateCurrentEffect__block_invoke;
  v15[3] = &unk_1E80897B0;
  v16 = concreteEffect - 3 < 2;
  v17 = currentEffect == 0;
  v18 = currentEffect - 3 < 2;
  v15[4] = self;
  v15[5] = v19;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v15];
  if (concreteEffect - 3 > 1)
  {
    if (UIAccessibilityIsReduceMotionEnabled() && !UIAccessibilityIsReduceTransparencyEnabled())
    {
      _isCurrentlyExpanding = [(SBFolderControllerBackgroundView *)self _isCurrentlyExpanding];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __56__SBFolderControllerBackgroundView__updateCurrentEffect__block_invoke_3;
      v13[3] = &unk_1E80897D8;
      v13[4] = self;
      v14 = _isCurrentlyExpanding;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v13];
      v10 = 0.0;
      if (_isCurrentlyExpanding)
      {
        v10 = 1.0;
      }

      [(MTMaterialView *)self->_blurView setAlpha:v10];
    }

    else
    {
      if ([(SBFolderControllerBackgroundView *)self isEffectActive])
      {
        v8 = 1.0;
      }

      else
      {
        v8 = 0.0;
      }

      if ([MEMORY[0x1E69DD250] _isInAnimationBlock])
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __56__SBFolderControllerBackgroundView__updateCurrentEffect__block_invoke_4;
        v12[3] = &unk_1E8088CB8;
        v12[4] = self;
        *&v12[5] = v8;
        [MEMORY[0x1E69DD250] _animateUsingSpringInteractive:0 animations:v12 completion:0];
      }

      else
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __56__SBFolderControllerBackgroundView__updateCurrentEffect__block_invoke_5;
        v11[3] = &unk_1E8088CB8;
        v11[4] = self;
        *&v11[5] = v8;
        [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:v11];
      }
    }
  }

  else
  {
    v5 = [objc_opt_class() _tintColorForEffect:concreteEffect];
    [(UIView *)self->_tintView setBackgroundColor:v5];
    isEffectActive = [(SBFolderControllerBackgroundView *)self isEffectActive];
    v7 = 0.0;
    if (isEffectActive)
    {
      v7 = 1.0;
    }

    [(UIView *)self->_tintView setAlpha:v7];
  }

  _Block_object_dispose(v19, 8);
}

- (unint64_t)concreteEffect
{
  result = [(SBFolderControllerBackgroundView *)self effect];
  if (!result)
  {
    if ([(SBFolderControllerBackgroundView *)self isReduceTransparencyEnabled])
    {
      return 4;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void __56__SBFolderControllerBackgroundView__updateCurrentEffect__block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if ((*(a1 + 49) & 1) != 0 || (*(a1 + 50) & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [*(*(a1 + 32) + 408) removeFromSuperview];
      v2 = *(a1 + 32);
      v3 = *(v2 + 408);
      *(v2 + 408) = 0;

      v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v5 = *(a1 + 32);
      v6 = *(v5 + 424);
      *(v5 + 424) = v4;

      [*(*(a1 + 32) + 424) setAlpha:0.0];
      [*(a1 + 32) addSubview:*(*(a1 + 32) + 424)];
    }
  }

  else
  {
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass())
      {
        v7 = SBFEffectiveDeviceClass() == 1;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v8 = [MEMORY[0x1E69DC938] currentDevice];
      v7 = [v8 userInterfaceIdiom] == 0;
    }

    v9 = [MEMORY[0x1E69DC938] currentDevice];
    v10 = [v9 sbf_homescreenFolderBackgroundGraphicsQuality];

    v11 = [*(a1 + 32) currentEffectMaterialRecipeNameForHighQualityBlur:(v10 == 100) | v7];
    if ((*(a1 + 49) & 1) != 0 || *(a1 + 50) == 1)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [*(*(a1 + 32) + 424) removeFromSuperview];
      v12 = *(a1 + 32);
      v13 = *(v12 + 424);
      *(v12 + 424) = 0;

      v14 = MEMORY[0x1E69AE158];
      v15 = SBHBundle();
      v16 = [v14 materialViewWithRecipeNamed:v11 inBundle:v15 options:0 initialWeighting:0 scaleAdjustment:0.01];
      v17 = *(a1 + 32);
      v18 = *(v17 + 408);
      *(v17 + 408) = v16;

      [*(*(a1 + 32) + 408) setGroupNameBase:@"SBFolderControllerBackgroundViewBlurGroupName"];
      [*(*(a1 + 32) + 408) setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:1];
      if (v10 == 100 && v7)
      {
        v20 = [*(a1 + 32) traitCollection];
        [v20 displayScale];
        v22 = v21;

        if (v22 == 3.0)
        {
          [*(*(a1 + 32) + 408) setBackdropScaleAdjustment:&__block_literal_global_5];
        }
      }

      [*(*(a1 + 32) + 408) setWeighting:0.0];
      [*(a1 + 32) addSubview:*(*(a1 + 32) + 408)];
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [*(a1 + 32) bringSubviewToFront:*(*(a1 + 32) + 432)];
    [*(a1 + 32) setNeedsLayout];
    v23 = *(a1 + 32);

    [v23 layoutIfNeeded];
  }
}

+ (id)_tintColorForEffect:(unint64_t)effect
{
  if (effect == 3)
  {
    v5 = 0.6;
LABEL_5:
    v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:{v5, v3}];

    return v6;
  }

  if (effect == 4)
  {
    v5 = 0.8;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (SBFolderControllerBackgroundView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SBFolderControllerBackgroundView;
  v3 = [(SBFolderControllerBackgroundView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__reduceTransparencyEnabledStateChanged name:*MEMORY[0x1E69DD920] object:0];

    [(SBFolderControllerBackgroundView *)v3 _reduceTransparencyEnabledStateChanged];
  }

  return v3;
}

- (void)_reduceTransparencyEnabledStateChanged
{
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  if (IsReduceTransparencyEnabled != [(SBFolderControllerBackgroundView *)self isReduceTransparencyEnabled])
  {
    [(SBFolderControllerBackgroundView *)self setReduceTransparencyEnabled:IsReduceTransparencyEnabled];

    [(SBFolderControllerBackgroundView *)self _updateCurrentEffect];
  }
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = SBFolderControllerBackgroundView;
  [(SBFolderControllerBackgroundView *)&v18 layoutSubviews];
  [(SBFolderControllerBackgroundView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SBFolderControllerBackgroundView *)self minimumHomeScreenScale];
  v12 = v11;
  if (BSFloatGreaterThanFloat())
  {
    UIRectGetCenter();
    CGAffineTransformMakeScale(&v17, 1.0 / v12, 1.0 / v12);
    v19.origin.x = v4;
    v19.origin.y = v6;
    v19.size.width = v8;
    v19.size.height = v10;
    CGRectApplyAffineTransform(v19, &v17);
    UIRectCenteredAboutPoint();
    v4 = v13;
    v6 = v14;
    v8 = v15;
    v10 = v16;
  }

  [(MTMaterialView *)self->_blurView setFrame:v4, v6, v8, v10];
  [(UIView *)self->_tintView setFrame:v4, v6, v8, v10];
  [(UIImageView *)self->_blurViewSnapshot setFrame:v4, v6, v8, v10];
  [(UIView *)self->_debugFreezingView setFrame:v4, v6, v8, v10];
}

- (void)setEffect:(unint64_t)effect
{
  if (self->_effect != effect)
  {
    self->_effect = effect;
    [(SBFolderControllerBackgroundView *)self _updateCurrentEffect];
  }
}

- (id)currentEffectMaterialRecipeNameForHighQualityBlur:(BOOL)blur
{
  blurCopy = blur;
  concreteEffect = [(SBFolderControllerBackgroundView *)self concreteEffect];
  if (concreteEffect == 2)
  {
    v6 = @"folderExpandedBackgroundApp";
  }

  else if (concreteEffect == 1)
  {
    v5 = @"folderExpandedBackgroundHomeSimplified";
    if (blurCopy)
    {
      v5 = @"folderExpandedBackgroundHome";
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __56__SBFolderControllerBackgroundView__updateCurrentEffect__block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 408);
  v3 = 1.0;
  if (*(a1 + 40))
  {
    v3 = 0.0;
  }

  [v2 setAlpha:v3];
  v4 = *(*(a1 + 32) + 408);

  return [v4 setWeighting:1.0];
}

- (void)setTransitionCancelled:(BOOL)cancelled
{
  if (self->_transitionCancelled != cancelled)
  {
    self->_transitionCancelled = cancelled;
    [(SBFolderControllerBackgroundView *)self _updateCurrentEffect];
  }
}

- (void)setEffectActive:(BOOL)active
{
  if (self->_effectActive != active)
  {
    self->_effectActive = active;
    [(SBFolderControllerBackgroundView *)self _updateCurrentEffect];
  }
}

- (void)setExpanding:(BOOL)expanding
{
  if (self->_expanding != expanding)
  {
    self->_expanding = expanding;
    [(SBFolderControllerBackgroundView *)self _updateCurrentEffect];
  }
}

- (void)setFrozen:(BOOL)frozen
{
  if (self->_frozen != frozen)
  {
    v16[13] = v3;
    v16[14] = v4;
    self->_frozen = frozen;
    v6 = !frozen;
    [(UIView *)self->_debugFreezingView setHidden:!frozen];
    if (v6)
    {
      [(SBFolderControllerBackgroundView *)self addSubview:self->_blurView];
      [(UIImageView *)self->_blurViewSnapshot removeFromSuperview];
      blurViewSnapshot = self->_blurViewSnapshot;
      self->_blurViewSnapshot = 0;
    }

    else
    {
      defaultFormat = [MEMORY[0x1E69DCA80] defaultFormat];
      [defaultFormat setOpaque:1];
      v8 = objc_alloc(MEMORY[0x1E69DCA78]);
      [(MTMaterialView *)self->_blurView bounds];
      v11 = [v8 initWithSize:defaultFormat format:{v9, v10}];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __46__SBFolderControllerBackgroundView_setFrozen___block_invoke;
      v16[3] = &unk_1E8089800;
      v16[4] = self;
      v12 = [v11 imageWithActions:v16];
      v13 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      v14 = self->_blurViewSnapshot;
      self->_blurViewSnapshot = v13;

      [(UIImageView *)self->_blurViewSnapshot setImage:v12];
      [(SBFolderControllerBackgroundView *)self addSubview:self->_blurViewSnapshot];
      [(MTMaterialView *)self->_blurView removeFromSuperview];
    }

    [(SBFolderControllerBackgroundView *)self bringSubviewToFront:self->_debugFreezingView];
    [(SBFolderControllerBackgroundView *)self setNeedsLayout];
  }
}

uint64_t __46__SBFolderControllerBackgroundView_setFrozen___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 408);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:0 afterScreenUpdates:?];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(SBFolderControllerBackgroundView *)self setNeedsLayout];
    v5 = obj;
  }
}

- (double)minimumHomeScreenScale
{
  delegate = [(SBFolderControllerBackgroundView *)self delegate];
  v4 = delegate;
  if (delegate)
  {
    [delegate minimumHomeScreenScaleForFolderControllerBackgroundView:self];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (SBFolderControllerBackgroundViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end