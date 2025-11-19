@interface FxPlugGroup
+ (id)fxPlugGroupWithDescriptor:(id)a3;
- (FxPlugGroup)initWithDescriptor:(id)a3;
- (void)dealloc;
@end

@implementation FxPlugGroup

- (FxPlugGroup)initWithDescriptor:(id)a3
{
  v7.receiver = self;
  v7.super_class = FxPlugGroup;
  v4 = [(FxPlugGroup *)&v7 init];
  if (v4)
  {
    v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x80040803F642BuLL);
    v4->_priv = v5;
    if (v5)
    {
      v4->_priv->var1 = a3;
      v4->_priv->var0 = [MEMORY[0x277CBEB18] array];
    }
  }

  return v4;
}

- (void)dealloc
{
  FxDebugAssert(self->_priv != 0, &cfstr_PrivNull.isa, v2, v3, v4, v5, v6, v7, v11.receiver);
  priv = self->_priv;
  if (priv)
  {
    var1 = priv->var1;
    if (var1)
    {

      priv = self->_priv;
    }

    if (priv->var0)
    {

      priv = self->_priv;
    }

    free(priv);
  }

  v11.receiver = self;
  v11.super_class = FxPlugGroup;
  [(FxPlugGroup *)&v11 dealloc];
}

+ (id)fxPlugGroupWithDescriptor:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithDescriptor:a3];

  return v3;
}

@end