@interface SBFSpringLoadedInteractionEffect
- (SBFSpringLoadedInteractionEffect)init;
- (SBFSpringLoadedInteractionEffectDelegate)delegate;
- (id)fastBlinkAnimation;
- (void)interaction:(id)interaction didChangeWithContext:(id)context;
- (void)setUseFastBlinkAnimation:(BOOL)animation;
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
    _blinkEffect = [MEMORY[0x1E69DCF80] _blinkEffect];
    blinkEffect = v3->_blinkEffect;
    v3->_blinkEffect = _blinkEffect;
  }

  return v3;
}

- (void)setUseFastBlinkAnimation:(BOOL)animation
{
  self->_useFastBlinkAnimation = animation;
  if (animation)
  {
    _blinkEffect = 0;
  }

  else
  {
    _blinkEffect = [MEMORY[0x1E69DCF80] _blinkEffect];
  }

  self->_blinkEffect = _blinkEffect;

  MEMORY[0x1EEE66BB8]();
}

- (void)interaction:(id)interaction didChangeWithContext:(id)context
{
  interactionCopy = interaction;
  contextCopy = context;
  targetItem = [contextCopy targetItem];
  if (targetItem)
  {
    [contextCopy targetItem];
  }

  else
  {
    [interactionCopy view];
  }
  v8 = ;

  delegate = [(SBFSpringLoadedInteractionEffect *)self delegate];
  v10 = [delegate targetViewForSpringLoadingEffectForView:v8];

  [contextCopy setTargetView:v10];
  if (![(SBFSpringLoadedInteractionEffect *)self useFastBlinkAnimation])
  {
    [(UISpringLoadedInteractionEffect *)self->_blinkEffect interaction:interactionCopy didChangeWithContext:contextCopy];
    goto LABEL_12;
  }

  layer = [v10 layer];
  state = [contextCopy state];
  switch(state)
  {
    case 3:
      goto LABEL_8;
    case 2:
      fastBlinkAnimation = [(SBFSpringLoadedInteractionEffect *)self fastBlinkAnimation];
      [layer addAnimation:fastBlinkAnimation forKey:@"fastBlinkingAnimation"];

      break;
    case 0:
LABEL_8:
      [layer removeAnimationForKey:@"fastBlinkingAnimation"];
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