@interface PXGFocusEffectViewConfiguration
- (BOOL)isEqual:(id)equal;
- (CGPoint)contentMotionRotation;
- (CGPoint)contentMotionTranslation;
- (PXGFocusEffectViewConfiguration)initWithConfiguration:(id)configuration;
- (unint64_t)hash;
@end

@implementation PXGFocusEffectViewConfiguration

- (CGPoint)contentMotionTranslation
{
  x = self->_contentMotionTranslation.x;
  y = self->_contentMotionTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)contentMotionRotation
{
  x = self->_contentMotionRotation.x;
  y = self->_contentMotionRotation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v32.receiver = self;
      v32.super_class = PXGFocusEffectViewConfiguration;
      if (![(PXGFocusableViewConfiguration *)&v32 isEqual:v5])
      {
        goto LABEL_14;
      }

      [(PXGFocusEffectViewConfiguration *)self cornerRadius];
      v7 = v6;
      [(PXGFocusEffectViewConfiguration *)v5 cornerRadius];
      if (v7 != v8)
      {
        goto LABEL_14;
      }

      [(PXGFocusEffectViewConfiguration *)self contentMotionRotation];
      v10 = v9;
      v12 = v11;
      [(PXGFocusEffectViewConfiguration *)v5 contentMotionRotation];
      v14 = 0;
      if (v10 != v15)
      {
        goto LABEL_15;
      }

      if (v12 != v13)
      {
        goto LABEL_15;
      }

      [(PXGFocusEffectViewConfiguration *)self contentMotionTranslation];
      v17 = v16;
      v19 = v18;
      [(PXGFocusEffectViewConfiguration *)v5 contentMotionTranslation];
      v14 = 0;
      if (v17 != v21 || v19 != v20)
      {
        goto LABEL_15;
      }

      [(PXGFocusEffectViewConfiguration *)self focusedSizeIncrease];
      v23 = v22;
      [(PXGFocusEffectViewConfiguration *)v5 focusedSizeIncrease];
      if (v23 == v24 && ([(PXGFocusEffectViewConfiguration *)self shadowVerticalOffset], v26 = v25, [(PXGFocusEffectViewConfiguration *)v5 shadowVerticalOffset], v26 == v27))
      {
        [(PXGFocusEffectViewConfiguration *)self shadowOpacity];
        v29 = v28;
        [(PXGFocusEffectViewConfiguration *)v5 shadowOpacity];
        v14 = v29 == v30;
      }

      else
      {
LABEL_14:
        v14 = 0;
      }

LABEL_15:

      goto LABEL_16;
    }

    v14 = 0;
  }

LABEL_16:

  return v14;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = PXGFocusEffectViewConfiguration;
  v3 = [(PXGFocusableViewConfiguration *)&v8 hash];
  v4.f64[0] = self->_cornerRadius;
  v4.f64[1] = self->_contentMotionRotation.x;
  v5.f64[0] = self->_contentMotionTranslation.y;
  v5.f64[1] = self->_focusedSizeIncrease;
  v6 = veorq_s8(veorq_s8(vshlq_u64(vcvtq_u64_f64(v4), xmmword_1A52F8E10), veorq_s8(vshlq_u64(vcvtq_u64_f64(*&self->_contentMotionRotation.y), xmmword_1A5381150), vshlq_u64(vcvtq_u64_f64(*&self->_shadowVerticalOffset), xmmword_1A5381140))), vshlq_u64(vcvtq_u64_f64(v5), xmmword_1A5381130));
  return *&veor_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) ^ v3;
}

- (PXGFocusEffectViewConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = PXGFocusEffectViewConfiguration;
  v5 = [(PXGFocusableViewConfiguration *)&v21 initWithConfiguration:configurationCopy];
  v6 = v5;
  if (v5)
  {
    if (configurationCopy)
    {
      [configurationCopy cornerRadius];
      v6->_cornerRadius = v7;
      [configurationCopy contentMotionRotation];
      v6->_contentMotionRotation.x = v8;
      v6->_contentMotionRotation.y = v9;
      [configurationCopy contentMotionTranslation];
      v6->_contentMotionTranslation.x = v10;
      v6->_contentMotionTranslation.y = v11;
      [configurationCopy focusedSizeIncrease];
      v6->_focusedSizeIncrease = v12;
      [configurationCopy shadowVerticalOffset];
      v6->_shadowVerticalOffset = v13;
      [configurationCopy shadowOpacity];
    }

    else
    {
      v5->_cornerRadius = 5.0;
      v5->_contentMotionRotation = vdupq_n_s64(0x3FA47AE147AE147BuLL);
      __asm { FMOV            V0.2D, #4.0 }

      v5->_contentMotionTranslation = _Q0;
      v5->_focusedSizeIncrease = 30.0;
      v5->_shadowVerticalOffset = 25.0;
      v14 = 0.5;
    }

    v6->_shadowOpacity = v14;
  }

  return v6;
}

@end