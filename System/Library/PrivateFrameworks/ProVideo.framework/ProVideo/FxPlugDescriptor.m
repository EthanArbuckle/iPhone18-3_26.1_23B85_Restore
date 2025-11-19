@interface FxPlugDescriptor
+ (id)fxPlugDescriptorWithPROPlugIn:(void *)a3;
- (BOOL)canDoGPU;
- (BOOL)requiresCoreImage;
- (Class)plugInClass;
- (FxPlugDescriptor)initWithPROPlugIn:(void *)a3;
- (id)displayName;
- (id)flavor;
- (id)groupDescriptor;
- (id)properties;
- (id)uuid;
- (id)version;
- (void)dealloc;
@end

@implementation FxPlugDescriptor

- (FxPlugDescriptor)initWithPROPlugIn:(void *)a3
{
  v7.receiver = self;
  v7.super_class = FxPlugDescriptor;
  v4 = [(FxPlugDescriptor *)&v7 init];
  if (v4)
  {
    v5 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    v4->_priv = v5;
    if (v5)
    {
      v4->_priv->var0 = a3;
    }
  }

  return v4;
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
  v10.super_class = FxPlugDescriptor;
  [(FxPlugDescriptor *)&v10 dealloc];
}

+ (id)fxPlugDescriptorWithPROPlugIn:(void *)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithPROPlugIn:a3];

  return v3;
}

- (id)properties
{
  var0 = self->_priv->var0;
  if (var0)
  {
    v3 = [var0 infoDictionary];

    return [v3 objectForKey:@"FxPlugProperties"];
  }

  else
  {
    NSLog(&cfstr_FxplugIsNotNat.isa, a2);
    return 0;
  }
}

- (Class)plugInClass
{
  var0 = self->_priv->var0;
  if (var0)
  {

    return [var0 plugInClass];
  }

  else
  {
    NSLog(&cfstr_FxplugIsNotNat.isa, a2);
    return 0;
  }
}

- (id)flavor
{
  v2 = [(FxPlugDescriptor *)self properties];

  return [v2 objectForKey:@"Flavor"];
}

- (id)displayName
{
  var0 = self->_priv->var0;
  if (var0)
  {

    return [var0 displayName];
  }

  else
  {
    NSLog(&cfstr_FxplugIsNotNat.isa, a2);
    return 0;
  }
}

- (id)uuid
{
  var0 = self->_priv->var0;
  if (var0)
  {
    v3 = CFUUIDCreateString(0, [var0 uuid]);

    return v3;
  }

  else
  {
    NSLog(&cfstr_FxplugIsNotNat.isa, a2);
    return 0;
  }
}

- (id)version
{
  var0 = self->_priv->var0;
  if (var0)
  {

    return [var0 version];
  }

  else
  {
    NSLog(&cfstr_FxplugIsNotNat.isa, a2);
    return 0;
  }
}

- (id)groupDescriptor
{
  var0 = self->_priv->var0;
  if (!var0)
  {
    NSLog(&cfstr_FxplugIsNotNat.isa, a2);
    return 0;
  }

  v3 = [var0 group];
  FxDebugAssert(v3 != 0, &cfstr_PluginGroupRet.isa, v4, v5, v6, v7, v8, v9, v13);
  if (!v3)
  {
    return 0;
  }

  v10 = [v3 displayName];
  v11 = CFUUIDCreateString(0, [v3 uuid]);

  return [FxPlugGroupDescriptor fxPlugGroupDescriptorWithUUID:v11 andDisplayName:v10];
}

- (BOOL)canDoGPU
{
  v2 = [-[FxPlugDescriptor properties](self "properties")];

  return [v2 BOOLValue];
}

- (BOOL)requiresCoreImage
{
  v2 = [-[FxPlugDescriptor properties](self "properties")];

  return [v2 BOOLValue];
}

@end