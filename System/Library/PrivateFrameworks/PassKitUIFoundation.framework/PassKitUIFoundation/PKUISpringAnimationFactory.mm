@interface PKUISpringAnimationFactory
- (id)_springAnimationForView:(id)view withKeyPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)highFrameRateSpringAnimationForView:(id)view withKeyPath:(id)path reason:(unsigned __int16)reason;
- (id)springAnimationForView:(id)view withKeyPath:(id)path;
- (void)setAnimationDelayHandler:(id)handler;
@end

@implementation PKUISpringAnimationFactory

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = PKUISpringAnimationFactory;
  v4 = [(PKSpringAnimationFactory *)&v8 copyWithZone:zone];
  v5 = MEMORY[0x25F8AAFE0](self->_animationDelayHandler);
  v6 = v4[11];
  v4[11] = v5;

  return v4;
}

- (id)springAnimationForView:(id)view withKeyPath:(id)path
{
  v4 = [(PKUISpringAnimationFactory *)self _springAnimationForView:view withKeyPath:path];
  [v4 setAdditive:1];

  return v4;
}

- (id)highFrameRateSpringAnimationForView:(id)view withKeyPath:(id)path reason:(unsigned __int16)reason
{
  reasonCopy = reason;
  v6 = [(PKUISpringAnimationFactory *)self springAnimationForView:view withKeyPath:path];
  [v6 setHighFrameRateReason:reasonCopy | 0x210000u];
  LODWORD(v7) = 1117782016;
  LODWORD(v8) = 1123024896;
  LODWORD(v9) = 1123024896;
  [v6 setPreferredFrameRateRange:{v7, v8, v9}];

  return v6;
}

- (id)_springAnimationForView:(id)view withKeyPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(PKSpringAnimationFactory *)self _createSpringAnimationWithKeyPath:pathCopy];
  animationDelayHandler = self->_animationDelayHandler;
  if (animationDelayHandler)
  {
    v10 = animationDelayHandler[2](animationDelayHandler, viewCopy, pathCopy);
    if (v10 > 0.0)
    {
      v11 = v10;
      [v8 setBeginTime:?];
      self->_maximumVendedDelay = fmax(v11, self->_maximumVendedDelay);
    }
  }

  return v8;
}

- (void)setAnimationDelayHandler:(id)handler
{
  v4 = [handler copy];
  animationDelayHandler = self->_animationDelayHandler;
  self->_animationDelayHandler = v4;

  MEMORY[0x2821F96F8]();
}

@end