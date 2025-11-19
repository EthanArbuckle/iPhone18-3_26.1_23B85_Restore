@interface SBFSpringLoadedInteractionEffect
- (SBFSpringLoadedInteractionEffect)init;
- (SBFSpringLoadedInteractionEffectDelegate)delegate;
- (id)fastBlinkAnimation;
- (void)interaction:(id)a3 didChangeWithContext:(id)a4;
- (void)setUseFastBlinkAnimation:(BOOL)a3;
@end

@implementation SBFSpringLoadedInteractionEffect

- (SBFSpringLoadedInteractionEffect)init
{
  v7.receiver = self;
  v7.super_class = SBFSpringLoadedInteractionEffect;
  v2 = [(SBFSpringLoadedInteractionEffect *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_useFastBlinkAnimation = 0;
    v4 = [MEMORY[0x1E69DCF80] _blinkEffect];
    blinkEffect = v3->_blinkEffect;
    v3->_blinkEffect = v4;
  }

  return v3;
}

- (void)setUseFastBlinkAnimation:(BOOL)a3
{
  self->_useFastBlinkAnimation = a3;
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E69DCF80] _blinkEffect];
  }

  self->_blinkEffect = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)interaction:(id)a3 didChangeWithContext:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [v6 targetItem];
  if (v7)
  {
    [v6 targetItem];
  }

  else
  {
    [v14 view];
  }
  v8 = ;

  v9 = [(SBFSpringLoadedInteractionEffect *)self delegate];
  v10 = [v9 targetViewForSpringLoadingEffectForView:v8];

  [v6 setTargetView:v10];
  if (![(SBFSpringLoadedInteractionEffect *)self useFastBlinkAnimation])
  {
    [(UISpringLoadedInteractionEffect *)self->_blinkEffect interaction:v14 didChangeWithContext:v6];
    goto LABEL_12;
  }

  v11 = [v10 layer];
  v12 = [v6 state];
  switch(v12)
  {
    case 3:
      goto LABEL_8;
    case 2:
      v13 = [(SBFSpringLoadedInteractionEffect *)self fastBlinkAnimation];
      [v11 addAnimation:v13 forKey:@"fastBlinkingAnimation"];

      break;
    case 0:
LABEL_8:
      [v11 removeAnimationForKey:@"fastBlinkingAnimation"];
      break;
  }

LABEL_12:
}

- (id)fastBlinkAnimation
{
  v2 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v2 setToValue:&unk_1F3D3EEC8];
  [v2 setDuration:0.1];
  [v2 setAutoreverses:1];
  LODWORD(v3) = 2.0;
  [v2 setRepeatCount:v3];

  return v2;
}

- (SBFSpringLoadedInteractionEffectDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end