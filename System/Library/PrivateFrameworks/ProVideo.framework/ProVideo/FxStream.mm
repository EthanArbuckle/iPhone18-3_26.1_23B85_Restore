@interface FxStream
- (FxStream)init;
- (id)createSampleAtTime:(double)time;
- (id)provider;
- (void)dealloc;
- (void)setPin:(id)pin;
@end

@implementation FxStream

- (FxStream)init
{
  v4.receiver = self;
  v4.super_class = FxStream;
  v2 = [(FxStream *)&v4 init];
  if (v2)
  {
    v2->_priv = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
  }

  return v2;
}

- (void)dealloc
{
  FxDebugAssert(self->_priv != 0, &cfstr_PrivNull.isa, v2, v3, v4, v5, v6, v7, v10.receiver);
  priv = self->_priv;
  if (priv)
  {
    if (priv->var0)
    {

      priv = self->_priv;
    }

    free(priv);
  }

  v10.receiver = self;
  v10.super_class = FxStream;
  [(FxStream *)&v10 dealloc];
}

- (void)setPin:(id)pin
{
  var0 = self->_priv->var0;
  if (var0 != pin)
  {
    if (var0)
    {
    }

    self->_priv->var0 = pin;
  }
}

- (id)provider
{
  v2 = [(FxStream *)self pin];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  direction = [v2 direction];
  if (direction != 1)
  {
    if (!direction)
    {
      parentPlug = [v3 parentPlug];

      return [parentPlug host];
    }

    FxDebugLog(&cfstr_IllegalPinDire.isa, v5, v6, v7, v8, v9, v10, v11, direction);
    return 0;
  }

  return [v3 parentPlug];
}

- (id)createSampleAtTime:(double)time
{
  v5 = objc_alloc_init(FxSample);
  [(FxSample *)v5 setStream:self];
  [(FxSample *)v5 setTime:time];
  return v5;
}

@end