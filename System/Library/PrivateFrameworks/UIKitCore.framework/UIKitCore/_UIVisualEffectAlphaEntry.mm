@interface _UIVisualEffectAlphaEntry
- (_UIVisualEffectAlphaEntry)initWithInitialAlpha:(double)a3 finalAlpha:(double)a4;
- (id)copyForTransitionOut;
- (id)copyForTransitionToEffect:(id)a3;
- (id)description;
@end

@implementation _UIVisualEffectAlphaEntry

- (_UIVisualEffectAlphaEntry)initWithInitialAlpha:(double)a3 finalAlpha:(double)a4
{
  v7.receiver = self;
  v7.super_class = _UIVisualEffectAlphaEntry;
  result = [(_UIVisualEffectAlphaEntry *)&v7 init];
  if (result)
  {
    result->_initialAlpha = a3;
    result->_finalAlpha = a4;
  }

  return result;
}

- (id)copyForTransitionToEffect:(id)a3
{
  v4 = a3;
  v5 = [_UIVisualEffectAlphaEntry alloc];
  finalAlpha = self->_finalAlpha;
  v7 = v4[3];

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