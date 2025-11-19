@interface PVEffectComponent
- (PVEffect)effect;
- (PVEffectComponent)initWithEffect:(id)a3;
@end

@implementation PVEffectComponent

- (PVEffectComponent)initWithEffect:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PVEffectComponent;
  v5 = [(PVEffectComponent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PVEffectComponent *)v5 setEffect:v4];
  }

  return v6;
}

- (PVEffect)effect
{
  WeakRetained = objc_loadWeakRetained(&self->_effect);

  return WeakRetained;
}

@end