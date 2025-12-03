@interface FxPlugGroupDescriptor
+ (id)fxPlugGroupDescriptorWithUUID:(id)d andDisplayName:(id)name;
- (BOOL)isEqual:(id)equal;
- (FxPlugGroupDescriptor)initWithUUID:(id)d andDisplayName:(id)name;
- (void)dealloc;
@end

@implementation FxPlugGroupDescriptor

- (FxPlugGroupDescriptor)initWithUUID:(id)d andDisplayName:(id)name
{
  v9.receiver = self;
  v9.super_class = FxPlugGroupDescriptor;
  v6 = [(FxPlugGroupDescriptor *)&v9 init];
  if (v6)
  {
    v7 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    v6->_priv = v7;
    if (v7)
    {
      v6->_priv->var0 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{d, @"UUID", name, @"DisplayName", 0}];
    }
  }

  return v6;
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
  v10.super_class = FxPlugGroupDescriptor;
  [(FxPlugGroupDescriptor *)&v10 dealloc];
}

+ (id)fxPlugGroupDescriptorWithUUID:(id)d andDisplayName:(id)name
{
  v4 = [objc_alloc(objc_opt_class()) initWithUUID:d andDisplayName:name];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [-[FxPlugGroupDescriptor uuid](self "uuid")];
  if (v5)
  {
    displayName = [(FxPlugGroupDescriptor *)self displayName];
    displayName2 = [equal displayName];

    LOBYTE(v5) = [displayName isEqualToString:displayName2];
  }

  return v5;
}

@end