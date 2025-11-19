@interface PKUISpringAnimationFactory
- (id)_springAnimationForView:(id)a3 withKeyPath:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)highFrameRateSpringAnimationForView:(id)a3 withKeyPath:(id)a4 reason:(unsigned __int16)a5;
- (id)springAnimationForView:(id)a3 withKeyPath:(id)a4;
- (void)setAnimationDelayHandler:(id)a3;
@end

@implementation PKUISpringAnimationFactory

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = PKUISpringAnimationFactory;
  v4 = [(PKSpringAnimationFactory *)&v8 copyWithZone:a3];
  v5 = MEMORY[0x25F8AAFE0](self->_animationDelayHandler);
  v6 = v4[11];
  v4[11] = v5;

  return v4;
}

- (id)springAnimationForView:(id)a3 withKeyPath:(id)a4
{
  v4 = [(PKUISpringAnimationFactory *)self _springAnimationForView:a3 withKeyPath:a4];
  [v4 setAdditive:1];

  return v4;
}

- (id)highFrameRateSpringAnimationForView:(id)a3 withKeyPath:(id)a4 reason:(unsigned __int16)a5
{
  v5 = a5;
  v6 = [(PKUISpringAnimationFactory *)self springAnimationForView:a3 withKeyPath:a4];
  [v6 setHighFrameRateReason:v5 | 0x210000u];
  LODWORD(v7) = 1117782016;
  LODWORD(v8) = 1123024896;
  LODWORD(v9) = 1123024896;
  [v6 setPreferredFrameRateRange:{v7, v8, v9}];

  return v6;
}

- (id)_springAnimationForView:(id)a3 withKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKSpringAnimationFactory *)self _createSpringAnimationWithKeyPath:v7];
  animationDelayHandler = self->_animationDelayHandler;
  if (animationDelayHandler)
  {
    v10 = animationDelayHandler[2](animationDelayHandler, v6, v7);
    if (v10 > 0.0)
    {
      v11 = v10;
      [v8 setBeginTime:?];
      self->_maximumVendedDelay = fmax(v11, self->_maximumVendedDelay);
    }
  }

  return v8;
}

- (void)setAnimationDelayHandler:(id)a3
{
  v4 = [a3 copy];
  animationDelayHandler = self->_animationDelayHandler;
  self->_animationDelayHandler = v4;

  MEMORY[0x2821F96F8]();
}

@end