@interface _UIVibrancyEffectCoreMaterialImpl
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (_UIVibrancyEffectCoreMaterialImpl)initWithLightMaterial:(id)a3 darkMaterial:(id)a4 vibrancyStyle:(int64_t)a5;
- (_UIVibrancyEffectCoreMaterialImpl)initWithStyle:(int64_t)a3 vibrancyStyle:(int64_t)a4;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
- (void)appendDescriptionTo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIVibrancyEffectCoreMaterialImpl

- (_UIVibrancyEffectCoreMaterialImpl)initWithStyle:(int64_t)a3 vibrancyStyle:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = _UIVibrancyEffectCoreMaterialImpl;
  result = [(_UIVibrancyEffectCoreMaterialImpl *)&v7 init];
  if (result)
  {
    result->_blurStyle = a3;
    result->_vibrancyStyle = a4;
  }

  return result;
}

- (_UIVibrancyEffectCoreMaterialImpl)initWithLightMaterial:(id)a3 darkMaterial:(id)a4 vibrancyStyle:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = _UIVibrancyEffectCoreMaterialImpl;
  v10 = [(_UIVibrancyEffectCoreMaterialImpl *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_blurStyle = 0x8000000000000000;
    v10->_vibrancyStyle = a5;
    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v9;
    }

    objc_storeStrong(&v10->_lightMaterial, v12);
    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v8;
    }

    objc_storeStrong(&v11->_darkMaterial, v13);
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (self->_blurStyle != 0x8000000000000000)
  {
    v5 = v4;
    [v4 encodeInteger:self->_vibrancyStyle forKey:@"UIVibrancyEffectVibrancyStyle"];
    [v5 encodeInteger:self->_blurStyle forKey:@"UIVibrancyEffectBlurMaterialStyle"];
    v6 = 0;
    v7 = 0;
    _UIStyledEffectFallbackStylesForCoreMaterialStyle(self->_blurStyle, &v7, &v6);
    if (v7 != 0x8000000000000000)
    {
      [v5 encodeInteger:v7 forKey:@"UIVibrancyEffectBlurAutomaticStyle"];
    }

    if (v6 != 0x8000000000000000)
    {
      [v5 encodeInteger:v6 forKey:@"UIVibrancyEffectBlurStyle"];
    }

    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5[1] == self->_blurStyle && v5[2] == self->_vibrancyStyle)
    {
      lightMaterial = self->_lightMaterial;
      v8 = v5[3];
      v9 = lightMaterial;
      v10 = v9;
      if (v8 == v9)
      {

        goto LABEL_14;
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
LABEL_20:

        goto LABEL_21;
      }

      v13 = [(NSString *)v8 isEqual:v9];

      if (v13)
      {
LABEL_14:
        darkMaterial = self->_darkMaterial;
        v8 = v6[4];
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

        goto LABEL_20;
      }
    }

    v12 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v12 = 0;
LABEL_22:

  return v12;
}

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  blurStyle = self->_blurStyle;
  if (blurStyle == 0x8000000000000000)
  {
    v8 = a4;
    v9 = a3;
    v10 = [v8 traitCollection];
    v11 = [v10 userInterfaceStyle];
    v12 = 19;
    if (v11 == 2)
    {
      v12 = 20;
    }

    v13 = *(&self->super.super.isa + OBJC_IVAR____UIVibrancyEffectLegacyImpl__style[v12]);

    _UICoreMaterialUpdateVibrancyEffectDescriptorForMTMaterial(v13, self->_vibrancyStyle, v8, v9);
  }

  else
  {
    _UICoreMaterialUpdateVibrancyEffectDescriptor(blurStyle, self->_vibrancyStyle, a4, a3);
  }
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  blurStyle = self->_blurStyle;
  if (blurStyle != 0x8000000000000000)
  {
    if (_UICoreMaterialStyleNeedsUpdateForEnvironmentChange(blurStyle, v8, v9))
    {
      goto LABEL_3;
    }

LABEL_5:
    v13.receiver = self;
    v13.super_class = _UIVibrancyEffectCoreMaterialImpl;
    v11 = [(_UIVibrancyEffectImpl *)&v13 _needsUpdateForTransitionFromEnvironment:v8 toEnvironment:v9 usage:a5];
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
  v4 = a3;
  v8 = v4;
  if (self->_blurStyle == 0x8000000000000000)
  {
    [v4 appendFormat:@" lightMaterial=%@ darkMaterial=%@", self->_lightMaterial, self->_darkMaterial];
  }

  else
  {
    [v4 appendString:@" style="];
    v5 = _UIStyledEffectConvertToString(self->_blurStyle);
    [v8 appendString:v5];
  }

  [v8 appendString:@" vibrancyStyle="];
  vibrancyStyle = self->_vibrancyStyle;
  if (vibrancyStyle >= 8)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%li)", self->_vibrancyStyle];
  }

  else
  {
    v7 = off_1E70F6990[vibrancyStyle];
  }

  [v8 appendString:v7];
}

@end