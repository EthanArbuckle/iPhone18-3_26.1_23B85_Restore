@interface FxPin
- (FxPin)init;
- (id)stream;
- (int)index;
- (void)dealloc;
- (void)setDescription:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setParentPlug:(id)a3;
- (void)setUUID:(id)a3;
@end

@implementation FxPin

- (FxPin)init
{
  v5.receiver = self;
  v5.super_class = FxPin;
  v2 = [(FxPin *)&v5 init];
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 0x40uLL, 0x10800409C3078A8uLL);
    v2->_priv = v3;
    if (v3)
    {
      v2->_priv->var1 = [MEMORY[0x277CBEB38] dictionary];
      v2->_priv->var7 = objc_opt_class();
    }
  }

  return v2;
}

- (void)dealloc
{
  FxDebugAssert(self->_priv != 0, &cfstr_PrivNull.isa, v2, v3, v4, v5, v6, v7, v15.receiver);
  priv = self->_priv;
  if (priv)
  {
    if (priv->var0)
    {

      priv = self->_priv;
    }

    var1 = priv->var1;
    if (var1)
    {

      priv = self->_priv;
    }

    var2 = priv->var2;
    if (var2)
    {

      priv = self->_priv;
    }

    var3 = priv->var3;
    if (var3)
    {

      priv = self->_priv;
    }

    var4 = priv->var4;
    if (var4)
    {

      priv = self->_priv;
    }

    var5 = priv->var5;
    if (var5)
    {

      priv = self->_priv;
    }

    free(priv);
  }

  v15.receiver = self;
  v15.super_class = FxPin;
  [(FxPin *)&v15 dealloc];
}

- (int)index
{
  if (![(FxPin *)self direction])
  {
    v3 = [-[FxPin parentPlug](self "parentPlug")];
    return [v3 indexOfObject:self];
  }

  if ([(FxPin *)self direction]== 1)
  {
    v3 = [-[FxPin parentPlug](self "parentPlug")];
    return [v3 indexOfObject:self];
  }

  return -1;
}

- (void)setParentPlug:(id)a3
{
  var0 = self->_priv->var0;
  if (var0)
  {
  }

  self->_priv->var0 = a3;
}

- (id)stream
{
  result = self->_priv->var2;
  if (!result)
  {
    v4 = objc_alloc_init(FxStream);
    [(FxStream *)v4 setPin:self];
    result = v4;
    self->_priv->var2 = result;
  }

  return result;
}

- (void)setUUID:(id)a3
{
  var3 = self->_priv->var3;
  if (var3)
  {
  }

  self->_priv->var3 = a3;
}

- (void)setDisplayName:(id)a3
{
  var4 = self->_priv->var4;
  if (var4)
  {
  }

  self->_priv->var4 = a3;
}

- (void)setDescription:(id)a3
{
  var5 = self->_priv->var5;
  if (var5)
  {
  }

  self->_priv->var5 = a3;
}

@end