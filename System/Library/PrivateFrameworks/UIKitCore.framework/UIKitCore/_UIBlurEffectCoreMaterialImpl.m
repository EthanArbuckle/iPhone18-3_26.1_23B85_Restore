@interface _UIBlurEffectCoreMaterialImpl
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (_UIBlurEffectCoreMaterialImpl)initWithLightMaterial:(id)a3 darkMaterial:(id)a4 bundle:(id)a5;
- (_UIBlurEffectCoreMaterialImpl)initWithStyle:(int64_t)a3;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
- (void)appendDescriptionTo:(id)a3;
@end

@implementation _UIBlurEffectCoreMaterialImpl

- (_UIBlurEffectCoreMaterialImpl)initWithStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = _UIBlurEffectCoreMaterialImpl;
  result = [(_UIBlurEffectCoreMaterialImpl *)&v5 init];
  if (result)
  {
    result->_style = a3;
  }

  return result;
}

- (_UIBlurEffectCoreMaterialImpl)initWithLightMaterial:(id)a3 darkMaterial:(id)a4 bundle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = _UIBlurEffectCoreMaterialImpl;
  v11 = [(_UIBlurEffectCoreMaterialImpl *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_style = 0x8000000000000000;
    if (v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = v9;
    }

    objc_storeStrong(&v11->_lightMaterial, v13);
    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = v8;
    }

    objc_storeStrong(&v12->_darkMaterial, v14);
    objc_storeStrong(&v12->_bundle, a5);
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
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

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  style = self->_style;
  v8 = a4;
  v13 = a3;
  if (style == 0x8000000000000000)
  {
    v9 = [v8 traitCollection];
    v10 = [v9 userInterfaceStyle];
    v11 = 11;
    if (v10 == 2)
    {
      v11 = 12;
    }

    v12 = *(&self->super.super.isa + OBJC_IVAR____UIBlurEffectLegacyImpl__style[v11]);

    _UICoreMaterialUpdateBlurEffectDescriptorForMTMaterial(v12, self->_bundle, v8, v13);
  }

  else
  {
    _UICoreMaterialUpdateBlurEffectDescriptor(style, v8, v13);
  }
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  style = self->_style;
  if (style != 0x8000000000000000)
  {
    if (_UICoreMaterialStyleNeedsUpdateForEnvironmentChange(style, v8, v9))
    {
      goto LABEL_3;
    }

LABEL_5:
    v13.receiver = self;
    v13.super_class = _UIBlurEffectCoreMaterialImpl;
    v11 = [(_UIBlurEffectImpl *)&v13 _needsUpdateForTransitionFromEnvironment:v8 toEnvironment:v9 usage:a5];
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

- (void)appendDescriptionTo:(id)a3
{
  style = self->_style;
  if (style == 0x8000000000000000)
  {
    lightMaterial = self->_lightMaterial;
    darkMaterial = self->_darkMaterial;
    v7 = a3;
    [v7 appendFormat:@" lightMaterial=%@ darkMaterial=%@", lightMaterial, darkMaterial];
  }

  else
  {
    v6 = a3;
    v7 = _UIStyledEffectConvertToString(style);
    [v6 appendFormat:@" style=%@", v7];
  }
}

@end