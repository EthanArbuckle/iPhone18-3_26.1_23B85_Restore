@interface SBCrossfadeView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (id)_initWithStartView:(id)view endView:(id)endView translucent:(BOOL)translucent;
- (void)crossfadeWithCompletion:(id)completion;
- (void)layoutSubviews;
@end

@implementation SBCrossfadeView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBCrossfadeView;
  [(SBCrossfadeView *)&v5 layoutSubviews];
  startView = self->_startView;
  [(SBCrossfadeView *)self bounds];
  [(UIView *)startView setFrame:?];
  endView = self->_endView;
  [(SBCrossfadeView *)self bounds];
  [(UIView *)endView setFrame:?];
}

- (id)_initWithStartView:(id)view endView:(id)endView translucent:(BOOL)translucent
{
  viewCopy = view;
  endViewCopy = endView;
  [viewCopy frame];
  v18.receiver = self;
  v18.super_class = SBCrossfadeView;
  v11 = [(SBCrossfadeView *)&v18 initWithFrame:?];
  if (v11)
  {
    v12 = [MEMORY[0x277CF0D38] factoryWithDuration:0.35];
    animationFactory = v11->_animationFactory;
    v11->_animationFactory = v12;

    objc_storeStrong(&v11->_startView, view);
    objc_storeStrong(&v11->_endView, endView);
    v11->_translucent = translucent;
    v11->_allowsGroupOpacityDuringCrossfade = 1;
    v11->_adaptsAnimationFactoryTimingFunction = 1;
    [(SBCrossfadeView *)v11 addSubview:v11->_endView];
    [(SBCrossfadeView *)v11 addSubview:v11->_startView];
    v14 = MEMORY[0x277D75D18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__SBCrossfadeView__initWithStartView_endView_translucent___block_invoke;
    v16[3] = &unk_27836AFB0;
    v17 = v11;
    [v14 performWithoutAnimation:v16];
  }

  return v11;
}

- (void)crossfadeWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!self->_crossfaded)
  {
    self->_crossfaded = 1;
    isUserInteractionEnabled = [(UIView *)self->_startView isUserInteractionEnabled];
    layer = [(UIView *)self->_startView layer];
    allowsHitTesting = [layer allowsHitTesting];

    layer2 = [(UIView *)self->_startView layer];
    [layer2 setAllowsHitTesting:0];

    [(UIView *)self->_startView setUserInteractionEnabled:0];
    [(UIView *)self->_endView setHidden:0];
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 1;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __43__SBCrossfadeView_crossfadeWithCompletion___block_invoke;
    v33[3] = &unk_27836B6B0;
    v35 = &v38;
    v33[4] = self;
    v36 = allowsHitTesting;
    v37 = isUserInteractionEnabled;
    v34 = completionCopy;
    v9 = MEMORY[0x223D63700](v33);
    animationFactory = [(SBCrossfadeView *)self animationFactory];
    if (self->_translucent)
    {
      ++v39[3];
      allowsGroupOpacityDuringCrossfade = [(SBCrossfadeView *)self allowsGroupOpacityDuringCrossfade];
      layer3 = [(UIView *)self->_endView layer];
      [layer3 setAllowsGroupOpacity:allowsGroupOpacityDuringCrossfade];

      layer4 = [(UIView *)self->_startView layer];
      [layer4 setAllowsGroupOpacity:allowsGroupOpacityDuringCrossfade];

      adaptsAnimationFactoryTimingFunction = [(SBCrossfadeView *)self adaptsAnimationFactoryTimingFunction];
      if (adaptsAnimationFactoryTimingFunction)
      {
        LODWORD(v15) = 0.25;
        LODWORD(v16) = 0.75;
        LODWORD(v17) = 0.25;
        LODWORD(v18) = 0.75;
        v19 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v15 :v16 :v17 :v18];
        v20 = [animationFactory factoryWithTimingFunction:v19];

        animationFactory = v20;
      }

      v21 = MEMORY[0x277CF0D38];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __43__SBCrossfadeView_crossfadeWithCompletion___block_invoke_2;
      v32[3] = &unk_27836AFB0;
      v32[4] = self;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __43__SBCrossfadeView_crossfadeWithCompletion___block_invoke_3;
      v30[3] = &unk_27836B6D8;
      v30[4] = self;
      v31 = v9;
      [v21 animateWithFactory:animationFactory options:2 actions:v32 completion:v30];
      if (adaptsAnimationFactoryTimingFunction)
      {
        LODWORD(v22) = 0.75;
        LODWORD(v23) = 0.25;
        LODWORD(v24) = 0.75;
        LODWORD(v25) = 0.25;
        v26 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v22 :v23 :v24 :v25];
        v27 = [animationFactory factoryWithTimingFunction:v26];

        animationFactory = v27;
      }
    }

    else
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __43__SBCrossfadeView_crossfadeWithCompletion___block_invoke_4;
      v29[3] = &unk_27836AFB0;
      v29[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v29];
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __43__SBCrossfadeView_crossfadeWithCompletion___block_invoke_5;
    v28[3] = &unk_27836AFB0;
    v28[4] = self;
    [MEMORY[0x277CF0D38] animateWithFactory:animationFactory options:2 actions:v28 completion:v9];

    _Block_object_dispose(&v38, 8);
  }
}

void *__43__SBCrossfadeView_crossfadeWithCompletion___block_invoke(void *result)
{
  if (--*(*(result[6] + 8) + 24) <= 0)
  {
    v1 = result;
    v2 = [*(result[4] + 416) layer];
    [v2 setAllowsHitTesting:*(v1 + 56)];

    [*(v1[4] + 416) setUserInteractionEnabled:*(v1 + 57)];
    result = v1[5];
    if (result)
    {
      v3 = result[2];

      return v3();
    }
  }

  return result;
}

uint64_t __43__SBCrossfadeView_crossfadeWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 424) layer];
  [v2 setAllowsGroupOpacity:0];

  v3 = [*(*(a1 + 32) + 416) layer];
  [v3 setAllowsGroupOpacity:0];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"zPosition"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBCrossfadeView;
    v5 = [(SBCrossfadeView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end