@interface _UIVisualEffectAlphaEntry
- (_UIVisualEffectAlphaEntry)initWithInitialAlpha:(double)alpha finalAlpha:(double)finalAlpha;
- (id)copyForTransitionOut;
- (id)copyForTransitionToEffect:(id)effect;
- (id)description;
@end

@implementation _UIVisualEffectAlphaEntry

- (_UIVisualEffectAlphaEntry)initWithInitialAlpha:(double)alpha finalAlpha:(double)finalAlpha
{
  v7.receiver = self;
  v7.super_class = _UIVisualEffectAlphaEntry;
  result = [(_UIVisualEffectAlphaEntry *)&v7 init];
  if (result)
  {
    result->_initialAlpha = alpha;
    result->_finalAlpha = finalAlpha;
  }

  return result;
}

- (id)copyForTransitionToEffect:(id)effect
{
  effectCopy = effect;
  v5 = [_UIVisualEffectAlphaEntry alloc];
  finalAlpha = self->_finalAlpha;
  v7 = effectCopy[3];

  return [(_UIVisualEffectAlphaEntry *)v5 initWithInitialAlpha:finalAlpha finalAlpha:v7];
}

- (id)copyForTransitionOut
{
  v3 = [_UIVisualEffectAlphaEntry alloc];
  finalAlpha = self->_finalAlpha;
  initialAlpha = self->_initialAlpha;

  return [(_UIVisualEffectAlphaEntry *)v3 initWithInitialAlpha:finalAlpha finalAlpha:initialAlpha];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UIVisualEffectAlphaEntry;
  v3 = [(_UIVisualEffectViewEntry *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" initialAlpha=%f finalAlpha=%f", *&self->_initialAlpha, *&self->_finalAlpha];

  return v4;
}

@end