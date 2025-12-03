@interface _UIBlurEffectCoreMaterialImpl
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage;
- (BOOL)isEqual:(id)equal;
- (_UIBlurEffectCoreMaterialImpl)initWithLightMaterial:(id)material darkMaterial:(id)darkMaterial bundle:(id)bundle;
- (_UIBlurEffectCoreMaterialImpl)initWithStyle:(int64_t)style;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
- (void)appendDescriptionTo:(id)to;
@end

@implementation _UIBlurEffectCoreMaterialImpl

- (_UIBlurEffectCoreMaterialImpl)initWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = _UIBlurEffectCoreMaterialImpl;
  result = [(_UIBlurEffectCoreMaterialImpl *)&v5 init];
  if (result)
  {
    result->_style = style;
  }

  return result;
}

- (_UIBlurEffectCoreMaterialImpl)initWithLightMaterial:(id)material darkMaterial:(id)darkMaterial bundle:(id)bundle
{
  materialCopy = material;
  darkMaterialCopy = darkMaterial;
  bundleCopy = bundle;
  v16.receiver = self;
  v16.super_class = _UIBlurEffectCoreMaterialImpl;
  v11 = [(_UIBlurEffectCoreMaterialImpl *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_style = 0x8000000000000000;
    if (materialCopy)
    {
      v13 = materialCopy;
    }

    else
    {
      v13 = darkMaterialCopy;
    }

    objc_storeStrong(&v11->_lightMaterial, v13);
    if (darkMaterialCopy)
    {
      v14 = darkMaterialCopy;
    }

    else
    {
      v14 = materialCopy;
    }

    objc_storeStrong(&v12->_darkMaterial, v14);
    objc_storeStrong(&v12->_bundle, bundle);
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5[1] == self->_style)
    {
      lightMaterial = self->_lightMaterial;
      v8 = v5[2];
      v9 = lightMaterial;
      v10 = v9;
      if (v8 == v9)
      {

        goto LABEL_13;
      }

      if (v8)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v13 = [(NSString *)v8 isEqual:v9];

      if (v13)
      {
LABEL_13:
        darkMaterial = self->_darkMaterial;
        v8 = v6[3];
        v15 = darkMaterial;
        v10 = v15;
        if (v8 == v15)
        {
          v12 = 1;
        }

        else
        {
          v12 = 0;
          if (v8 && v15)
          {
            v12 = [(NSString *)v8 isEqual:v15];
          }
        }

        goto LABEL_19;
      }
    }

    v12 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v12 = 0;
LABEL_21:

  return v12;
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  style = self->_style;
  environmentCopy = environment;
  descriptorCopy = descriptor;
  if (style == 0x8000000000000000)
  {
    traitCollection = [environmentCopy traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    v11 = 11;
    if (userInterfaceStyle == 2)
    {
      v11 = 12;
    }

    v12 = *(&self->super.super.isa + OBJC_IVAR____UIBlurEffectLegacyImpl__style[v11]);

    _UICoreMaterialUpdateBlurEffectDescriptorForMTMaterial(v12, self->_bundle, environmentCopy, descriptorCopy);
  }

  else
  {
    _UICoreMaterialUpdateBlurEffectDescriptor(style, environmentCopy, descriptorCopy);
  }
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage
{
  environmentCopy = environment;
  toEnvironmentCopy = toEnvironment;
  style = self->_style;
  if (style != 0x8000000000000000)
  {
    if (_UICoreMaterialStyleNeedsUpdateForEnvironmentChange(style, environmentCopy, toEnvironmentCopy))
    {
      goto LABEL_3;
    }

LABEL_5:
    v13.receiver = self;
    v13.super_class = _UIBlurEffectCoreMaterialImpl;
    v11 = [(_UIBlurEffectImpl *)&v13 _needsUpdateForTransitionFromEnvironment:environmentCopy toEnvironment:toEnvironmentCopy usage:usage];
    goto LABEL_6;
  }

  if (self->_lightMaterial == self->_darkMaterial)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = 1;
LABEL_6:

  return v11;
}

- (void)appendDescriptionTo:(id)to
{
  style = self->_style;
  if (style == 0x8000000000000000)
  {
    lightMaterial = self->_lightMaterial;
    darkMaterial = self->_darkMaterial;
    toCopy = to;
    [toCopy appendFormat:@" lightMaterial=%@ darkMaterial=%@", lightMaterial, darkMaterial];
  }

  else
  {
    toCopy2 = to;
    toCopy = _UIStyledEffectConvertToString(style);
    [toCopy2 appendFormat:@" style=%@", toCopy];
  }
}

@end