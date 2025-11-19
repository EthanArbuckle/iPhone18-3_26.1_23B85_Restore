@interface SBHomeScreenBackdropView
- (SBHomeScreenBackdropView)initWithFrame:(CGRect)a3 materialRecipe:(int64_t)a4 scaleAdjustment:(id)a5;
- (id)homeScreenBlurredContentSnapshotImage;
- (void)_configureBackdropAnimatableProperty;
- (void)_invalidateBackdropSnapshot;
- (void)_resetHomeScreenBlurredContentSnapshotImage;
- (void)_setupBackdropViewWithRecipe:(int64_t)a3 scaleAdjustment:(id)a4;
- (void)_updateBackdropViewIfNeededInvalidatingSnapshot:(BOOL)a3;
- (void)beginRequiringBackdropViewForReason:(id)a3;
- (void)beginRequiringLiveBackdropViewForReason:(id)a3;
- (void)cancelInProcessAnimations;
- (void)endRequiringBackdropViewForReason:(id)a3;
- (void)endRequiringLiveBackdropViewForReason:(id)a3;
- (void)setBlurProgress:(double)a3 behaviorMode:(int64_t)a4 completion:(id)a5;
- (void)setMaterialRecipeName:(id)a3;
@end

@implementation SBHomeScreenBackdropView

- (void)_invalidateBackdropSnapshot
{
  [(UIImageView *)self->_blurredContentSnapshotImageView setImage:0];
  [(SBHomeScreenBackdropView *)self _resetHomeScreenBlurredContentSnapshotImage];
  blurredContentSnapshotImageView = self->_blurredContentSnapshotImageView;

  [(UIImageView *)blurredContentSnapshotImageView setHidden:1];
}

- (void)_resetHomeScreenBlurredContentSnapshotImage
{
  blurredContentSnapshotImage = self->_blurredContentSnapshotImage;
  self->_blurredContentSnapshotImage = 0;
}

void __64__SBHomeScreenBackdropView__configureBackdropAnimatableProperty__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[60];
    if (v4)
    {
      v5 = v3;
      [v4 value];
      (*(*(a1 + 32) + 16))();
      [v5[55] setAlpha:?];
      v3 = v5;
    }
  }
}

double __64__SBHomeScreenBackdropView__configureBackdropAnimatableProperty__block_invoke(double a1)
{
  result = 1.0;
  if (a1 < 0.05)
  {
    return a1 / 0.05 + 0.0;
  }

  return result;
}

void __64__SBHomeScreenBackdropView__configureBackdropAnimatableProperty__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[60];
    if (v4)
    {
      v7 = v3;
      [v4 presentationValue];
      (*(*(a1 + 32) + 16))();
      v5 = v7[55];
      v6 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      [v5 _setPresentationValue:v6 forKey:@"opacity"];

      v3 = v7;
    }
  }
}

- (void)cancelInProcessAnimations
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __53__SBHomeScreenBackdropView_cancelInProcessAnimations__block_invoke;
  v2[3] = &unk_2783A8C18;
  v2[4] = self;
  [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v2];
}

uint64_t __53__SBHomeScreenBackdropView_cancelInProcessAnimations__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 480);
  [v1 value];

  return [v1 setValue:?];
}

- (SBHomeScreenBackdropView)initWithFrame:(CGRect)a3 materialRecipe:(int64_t)a4 scaleAdjustment:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SBHomeScreenBackdropView;
  v12 = [(SBHomeScreenBackdropViewBase *)&v15 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    [(SBHomeScreenBackdropView *)v12 _setupBackdropViewWithRecipe:a4 scaleAdjustment:v11];
  }

  return v13;
}

- (void)setMaterialRecipeName:(id)a3
{
  v6 = a3;
  if ((BSEqualStrings() & 1) == 0)
  {
    v4 = [v6 copy];
    materialRecipeName = self->_materialRecipeName;
    self->_materialRecipeName = v4;

    [(MTMaterialView *)self->_materialView setRecipeName:self->_materialRecipeName];
  }
}

- (void)_setupBackdropViewWithRecipe:(int64_t)a3 scaleAdjustment:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    v6 = &__block_literal_global_241;
  }

  v20 = v6;
  materialRecipeName = self->_materialRecipeName;
  self->_materialRecipeName = 0;

  if (a3)
  {
    v8 = [MEMORY[0x277D26718] materialViewWithRecipe:a3 options:2 initialWeighting:v20 scaleAdjustment:0.0];
    materialView = self->_materialView;
    self->_materialView = v8;
  }

  else
  {
    v10 = SBHomeScreenBackdropMaterialRecipeName();
    v11 = self->_materialRecipeName;
    self->_materialRecipeName = v10;

    v12 = MEMORY[0x277D26718];
    v13 = self->_materialRecipeName;
    materialView = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v12 materialViewWithRecipeNamed:v13 inBundle:materialView options:2 initialWeighting:v20 scaleAdjustment:0.0];
    v15 = self->_materialView;
    self->_materialView = v14;
  }

  [(MTMaterialView *)self->_materialView setShouldCrossfade:0];
  v16 = self->_materialView;
  [(SBHomeScreenBackdropView *)self bounds];
  [(MTMaterialView *)v16 setFrame:?];
  [(MTMaterialView *)self->_materialView setAutoresizingMask:18];
  [(MTMaterialView *)self->_materialView setHidden:1];
  [(SBHomeScreenBackdropView *)self addSubview:self->_materialView];
  [(SBHomeScreenBackdropView *)self _configureBackdropAnimatableProperty];
  v17 = objc_alloc(MEMORY[0x277D755E8]);
  [(SBHomeScreenBackdropView *)self bounds];
  v18 = [v17 initWithFrame:?];
  blurredContentSnapshotImageView = self->_blurredContentSnapshotImageView;
  self->_blurredContentSnapshotImageView = v18;

  [(UIImageView *)self->_blurredContentSnapshotImageView setHidden:1];
  [(SBHomeScreenBackdropView *)self addSubview:self->_blurredContentSnapshotImageView];
}

double __73__SBHomeScreenBackdropView__setupBackdropViewWithRecipe_scaleAdjustment___block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 sbf_animatedBlurRadiusGraphicsQuality];

  result = 0.3;
  if (v1 >= 41)
  {
    return 0.5;
  }

  return result;
}

- (void)_configureBackdropAnimatableProperty
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (!SBReduceMotion())
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D38]);
    backdropFloatAnimatableProperty = self->_backdropFloatAnimatableProperty;
    self->_backdropFloatAnimatableProperty = v3;

    v5 = self->_backdropFloatAnimatableProperty;
    [(MTMaterialView *)self->_materialView weighting];
    [(UIViewFloatAnimatableProperty *)v5 setValue:?];
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277D75D18];
    v15[0] = self->_backdropFloatAnimatableProperty;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__SBHomeScreenBackdropView__configureBackdropAnimatableProperty__block_invoke_2;
    v11[3] = &unk_2783AC308;
    objc_copyWeak(&v13, &location);
    v12 = &__block_literal_global_16_1;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__SBHomeScreenBackdropView__configureBackdropAnimatableProperty__block_invoke_3;
    v8[3] = &unk_2783AC308;
    objc_copyWeak(&v10, &location);
    v9 = &__block_literal_global_16_1;
    [v6 _createTransformerWithInputAnimatableProperties:v7 modelValueSetter:v11 presentationValueSetter:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)beginRequiringBackdropViewForReason:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBHomeScreenBackdropView;
  [(SBHomeScreenBackdropViewBase *)&v4 beginRequiringBackdropViewForReason:a3];
  [(SBHomeScreenBackdropView *)self _updateBackdropViewIfNeeded];
}

- (void)beginRequiringLiveBackdropViewForReason:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBHomeScreenBackdropView;
  [(SBHomeScreenBackdropViewBase *)&v4 beginRequiringLiveBackdropViewForReason:a3];
  [(SBHomeScreenBackdropView *)self _updateBackdropViewIfNeeded];
}

- (void)endRequiringBackdropViewForReason:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBHomeScreenBackdropView;
  [(SBHomeScreenBackdropViewBase *)&v4 endRequiringBackdropViewForReason:a3];
  [(SBHomeScreenBackdropView *)self _updateBackdropViewIfNeeded];
}

- (void)endRequiringLiveBackdropViewForReason:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBHomeScreenBackdropView;
  [(SBHomeScreenBackdropViewBase *)&v4 endRequiringLiveBackdropViewForReason:a3];
  [(SBHomeScreenBackdropView *)self _updateBackdropViewIfNeeded];
}

- (void)setBlurProgress:(double)a3 behaviorMode:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  materialViewAnimationCount = self->_materialViewAnimationCount;
  v19 = 0;
  self->_materialViewAnimationCount = materialViewAnimationCount + 1;
  v10 = MEMORY[0x277D75D18];
  v11 = [(SBHomeScreenBackdropViewBase *)self backdropBlurSettings];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__SBHomeScreenBackdropView_setBlurProgress_behaviorMode_completion___block_invoke;
  v15[3] = &unk_2783BAB80;
  *&v15[6] = a3;
  v15[4] = self;
  v15[5] = &v16;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__SBHomeScreenBackdropView_setBlurProgress_behaviorMode_completion___block_invoke_2;
  v13[3] = &unk_2783AE668;
  v13[4] = self;
  v12 = v8;
  v14 = v12;
  [v10 sb_animateWithSettings:v11 mode:a4 animations:v15 completion:v13];

  if (*(v17 + 24) == 1)
  {
    [(SBHomeScreenBackdropView *)self _updateBackdropViewIfNeededInvalidatingSnapshot:1];
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __68__SBHomeScreenBackdropView_setBlurProgress_behaviorMode_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  [*(*(a1 + 32) + 440) weighting];
  if (v2 != v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  [*(*(a1 + 32) + 440) setWeighting:*(a1 + 48)];
  v4 = *(*(a1 + 32) + 480);
  v5 = *(a1 + 48);

  return [v4 setValue:v5];
}

uint64_t __68__SBHomeScreenBackdropView_setBlurProgress_behaviorMode_completion___block_invoke_2(uint64_t a1)
{
  --*(*(a1 + 32) + 464);
  [*(a1 + 32) _updateBackdropViewIfNeeded];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)homeScreenBlurredContentSnapshotImage
{
  blurredContentSnapshotImage = self->_blurredContentSnapshotImage;
  if (!blurredContentSnapshotImage)
  {
    v4 = [(SBHomeScreenBackdropView *)self window];
    v5 = [v4 interfaceOrientation];

    if ((v5 - 2) >= 3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5 - 1;
    }

    v7 = [(SBHomeScreenBackdropView *)self window];
    v8 = SBCreateSnapshotBelowWindowWithOptions(v7, 1, v6, 0, 1u, 0.25);
    v9 = self->_blurredContentSnapshotImage;
    self->_blurredContentSnapshotImage = v8;

    blurredContentSnapshotImage = self->_blurredContentSnapshotImage;
  }

  return blurredContentSnapshotImage;
}

- (void)_updateBackdropViewIfNeededInvalidatingSnapshot:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBHomeScreenBackdropViewBase *)self requiresLiveBackdropView];
  v6 = v5 || [(SBHomeScreenBackdropViewBase *)self requiresBackdropView];
  v7 = [(SBHomeScreenBackdropView *)self isOpaque];
  if (v3)
  {
    [(SBHomeScreenBackdropView *)self _invalidateBackdropSnapshot];
  }

  if (v5)
  {
    [(MTMaterialView *)self->_materialView setHidden:0];
    [(SBHomeScreenBackdropView *)self _invalidateBackdropSnapshot];
    goto LABEL_19;
  }

  if (!v6)
  {
    [(SBHomeScreenBackdropView *)self _invalidateBackdropSnapshot];
    materialView = self->_materialView;
    v10 = 1;
LABEL_18:
    [materialView setHidden:v10];
    goto LABEL_19;
  }

  if (![(UIImageView *)self->_blurredContentSnapshotImageView isHidden])
  {
    goto LABEL_19;
  }

  if (([(MTMaterialView *)self->_materialView isHidden]& 1) == 0 && !self->_materialViewAnimationCount && !self->_waitingForBackdropViewToRender)
  {
    blurredContentSnapshotImageView = self->_blurredContentSnapshotImageView;
    v17 = [(SBHomeScreenBackdropView *)self homeScreenBlurredContentSnapshotImage];
    [(UIImageView *)blurredContentSnapshotImageView setImage:v17];

    v18 = [(UIImageView *)self->_blurredContentSnapshotImageView layer];
    [v18 setContentsOpaque:1];

    [(MTMaterialView *)self->_materialView setHidden:1];
    materialView = self->_blurredContentSnapshotImageView;
    v10 = 0;
    goto LABEL_18;
  }

  if ([(MTMaterialView *)self->_materialView isHidden])
  {
    self->_waitingForBackdropViewToRender = 1;
  }

  [(MTMaterialView *)self->_materialView setHidden:0];
  [(UIImageView *)self->_blurredContentSnapshotImageView setHidden:1];
  if (self->_waitingForBackdropViewToRender)
  {
    v8 = *MEMORY[0x277D76620];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__SBHomeScreenBackdropView__updateBackdropViewIfNeededInvalidatingSnapshot___block_invoke;
    v19[3] = &unk_2783A8C18;
    v19[4] = self;
    [v8 sb_performBlockAfterCATransactionSynchronizedCommit:v19];
  }

LABEL_19:
  v11 = [(SBHomeScreenBackdropView *)self isOpaque];
  if (v7 != v11)
  {
    v12 = v11;
    v13 = [(SBHomeScreenBackdropViewBase *)self delegate];
    [v13 homeScreenBackdropView:self opaquenessDidChange:v12];
  }

  v14 = self->_materialView;
  [(SBHomeScreenBackdropView *)self bounds];
  [(MTMaterialView *)v14 setFrame:?];
  v15 = self->_blurredContentSnapshotImageView;
  [(SBHomeScreenBackdropView *)self bounds];
  [(UIImageView *)v15 setFrame:?];
}

@end