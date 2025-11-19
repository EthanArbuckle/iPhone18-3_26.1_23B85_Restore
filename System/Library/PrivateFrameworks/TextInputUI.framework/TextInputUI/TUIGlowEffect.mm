@interface TUIGlowEffect
+ (BOOL)adjustVisibilityForDarkMode:(BOOL)a3 tintColor:(CGColor *)a4 alpha:(double)a5 outTintColor:(CGColor *)a6 outAlpha:(double *)a7;
- (CAFrameRateRange)preferredFrameRateRange;
- (TUIGlowEffect)initWithLayer:(id)a3;
- (id)estimateAnimationValueForKeyPath:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)recordAnimation:(id)a3 duration:(double)a4 fromValue:(id)a5 toValue:(id)a6 keyPath:(id)a7;
- (void)setBlurRadius:(double)a3;
- (void)setMinimumRadius:(double)a3;
- (void)setNonPulseRadius:(double)a3 animated:(BOOL)a4 duration:(double)a5;
- (void)setPreferredFrameRateRange:(CAFrameRateRange)a3;
- (void)setPulseInterval:(double)a3;
- (void)setPulseRadius:(double)a3;
- (void)setPulsing:(BOOL)a3;
- (void)setTintColor:(CGColor *)a3 animated:(BOOL)a4 duration:(double)a5 autoreverses:(BOOL)a6 repeatCount:(double)a7;
- (void)setupFilters;
- (void)updatePropertyForKeyPath:(id)a3 oldValue:(id)a4 newValue:(id)a5 animated:(BOOL)a6 duration:(double)a7 autoreverses:(BOOL)a8 repeatCount:(double)a9;
- (void)updatePulseAnimationRadius;
@end

@implementation TUIGlowEffect

- (void)setupFilters
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6979928];
  v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  v5 = MEMORY[0x1E696AD98];
  [(TUIGlowEffect *)self nonPulseRadius];
  v6 = [v5 numberWithDouble:?];
  [v4 setValue:v6 forKey:@"inputRadius"];

  [v4 setName:@"nonPulseFilter"];
  v7 = [MEMORY[0x1E6979378] filterWithType:v3];
  v8 = MEMORY[0x1E696AD98];
  [(TUIGlowEffect *)self minimumRadius];
  v9 = [v8 numberWithDouble:?];
  [v7 setValue:v9 forKey:@"inputRadius"];

  [v7 setName:@"pulseFilter"];
  v10 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979808]];
  [v10 setValue:&unk_1F03D91F8 forKey:@"inputAmount"];
  [v10 setValue:-[TUIGlowEffect tintColor](self forKey:{"tintColor"), @"inputColor"}];
  [v10 setName:@"thresholdFilter"];
  v11 = [MEMORY[0x1E6979378] filterWithType:v3];
  v12 = MEMORY[0x1E696AD98];
  [(TUIGlowEffect *)self blurRadius];
  v13 = [v12 numberWithDouble:?];
  [v11 setValue:v13 forKey:@"inputRadius"];

  [v11 setName:@"blurFilter"];
  v16[0] = v4;
  v16[1] = v7;
  v16[2] = v10;
  v16[3] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  v15 = [(TUIGlowEffect *)self layer];
  [v15 setFilters:v14];
}

- (CAFrameRateRange)preferredFrameRateRange
{
  minimum = self->_preferredFrameRateRange.minimum;
  maximum = self->_preferredFrameRateRange.maximum;
  preferred = self->_preferredFrameRateRange.preferred;
  result.preferred = preferred;
  result.maximum = maximum;
  result.minimum = minimum;
  return result;
}

- (void)updatePropertyForKeyPath:(id)a3 oldValue:(id)a4 newValue:(id)a5 animated:(BOOL)a6 duration:(double)a7 autoreverses:(BOOL)a8 repeatCount:(double)a9
{
  v10 = a8;
  v12 = a6;
  v29 = a3;
  v16 = a4;
  v17 = a5;
  v18 = [(TUIGlowEffect *)self layer];
  [v18 removeAnimationForKey:v29];

  if (v12)
  {
    v19 = [(TUIGlowEffect *)self estimateAnimationValueForKeyPath:v29];
    v20 = [MEMORY[0x1E6979318] animationWithKeyPath:v29];
    v21 = v20;
    if (v19)
    {
      v22 = v19;
    }

    else
    {
      v22 = v16;
    }

    [v20 setFromValue:v22];
    [v21 setToValue:v17];
    [v21 setDuration:a7];
    [v21 setRemovedOnCompletion:0];
    [v21 setFillMode:*MEMORY[0x1E69797E8]];
    [v21 setDelegate:self];
    *&v23 = self->_preferredFrameRateRange.minimum;
    *&v24 = self->_preferredFrameRateRange.maximum;
    *&v25 = self->_preferredFrameRateRange.preferred;
    [v21 setPreferredFrameRateRange:{v23, v24, v25}];
    *&v26 = a9;
    [v21 setRepeatCount:v26];
    [v21 setAutoreverses:v10];
    v27 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
    [v21 setTimingFunction:v27];

    v28 = [(TUIGlowEffect *)self layer];
    [v28 addAnimation:v21 forKey:v29];

    [(TUIGlowEffect *)self recordAnimation:v21 duration:v16 fromValue:v17 toValue:v29 keyPath:a7];
    v17 = v21;
  }

  else
  {
    v19 = [(TUIGlowEffect *)self layer];
    [v19 setValue:v17 forKeyPath:v29];
  }
}

- (id)estimateAnimationValueForKeyPath:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  [v4 timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = [(NSMutableDictionary *)self->_animationStates objectForKeyedSubscript:v5];

  if (v8)
  {
    v9 = [v8 animation];
    v10 = [v9 fromValue];
    v11 = [v9 toValue];
    [v8 startTime];
    v13 = v12;
    [v9 duration];
    if (v7 >= v13 + v14 || ([v9 duration], v15 < 2.22044605e-16))
    {
      v16 = v11;
LABEL_5:
      v17 = v16;
LABEL_6:

      goto LABEL_16;
    }

    [v8 startTime];
    v19 = v18;
    [v9 duration];
    v21 = v20;
    v22 = CFGetTypeID(v10);
    if (v22 != CFGetTypeID(v11))
    {
LABEL_20:
      v17 = 0;
      goto LABEL_6;
    }

    v35 = (v7 - v19) / v21;
    if (v22 == CFNumberGetTypeID())
    {
      [v10 floatValue];
      v24 = v23;
      [v11 floatValue];
      v16 = [MEMORY[0x1E696AD98] numberWithDouble:v24 + v35 * (v25 - v24)];
      goto LABEL_5;
    }

    if (v22 == CGColorGetTypeID())
    {
      v26 = v10;
      v27 = v11;
      NumberOfComponents = CGColorGetNumberOfComponents(v26);
      v29 = CGColorGetNumberOfComponents(v26);
      if (NumberOfComponents == 4 && v29 == 4)
      {
        v30 = CGColorGetComponents(v26);
        v31 = CGColorGetComponents(v27);
        v34 = vmlaq_n_f64(v30[1], vsubq_f64(v31[1], v30[1]), v35);
        v36 = vmlaq_n_f64(*v30, vsubq_f64(*v31, *v30), v35);
        ColorSpace = CGColorGetColorSpace(v26);
        *components = v36;
        v38 = v34;
        v17 = CGColorCreate(ColorSpace, components);
        CFRelease(v26);
        CFRelease(v27);
        goto LABEL_6;
      }

      CFRelease(v26);
      CFRelease(v27);
      goto LABEL_20;
    }
  }

  v17 = 0;
LABEL_16:

  return v17;
}

- (void)recordAnimation:(id)a3 duration:(double)a4 fromValue:(id)a5 toValue:(id)a6 keyPath:(id)a7
{
  v9 = a7;
  v10 = a3;
  v11 = objc_alloc_init(_TUICursorEffectAnimationState);
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [(_TUICursorEffectAnimationState *)v11 setStartTime:?];
  [(_TUICursorEffectAnimationState *)v11 setAnimation:v10];

  [(NSMutableDictionary *)self->_animationStates setObject:v11 forKeyedSubscript:v9];
}

- (void)setPreferredFrameRateRange:(CAFrameRateRange)a3
{
  preferred = a3.preferred;
  maximum = a3.maximum;
  minimum = a3.minimum;
  if (!CAFrameRateRangeIsEqualToRange(self->_preferredFrameRateRange, a3))
  {
    self->_preferredFrameRateRange.minimum = minimum;
    self->_preferredFrameRateRange.maximum = maximum;
    self->_preferredFrameRateRange.preferred = preferred;
    pulsing = self->_pulsing;

    [(TUIGlowEffect *)self setPulsing:pulsing];
  }
}

- (void)setBlurRadius:(double)a3
{
  if (self->_blurRadius != a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [(TUIGlowEffect *)self updatePropertyForKeyPath:@"filters.blurFilter.inputRadius" oldValue:v5 newValue:v6 animated:0 duration:0 autoreverses:0.0 repeatCount:0.0];

    self->_blurRadius = a3;
  }
}

- (void)setNonPulseRadius:(double)a3 animated:(BOOL)a4 duration:(double)a5
{
  if (self->_nonPulseRadius != a3)
  {
    v7 = a4;
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [(TUIGlowEffect *)self updatePropertyForKeyPath:@"filters.nonPulseFilter.inputRadius" oldValue:v9 newValue:v10 animated:v7 duration:0 autoreverses:a5 repeatCount:0.0];

    self->_nonPulseRadius = a3;
  }
}

- (void)setPulseRadius:(double)a3
{
  if (self->_pulseRadius != a3)
  {
    self->_pulseRadius = a3;
    [(TUIGlowEffect *)self setPulsing:self->_pulsing];
  }
}

- (void)setMinimumRadius:(double)a3
{
  if (self->_minimumRadius != a3)
  {
    self->_minimumRadius = a3;
    [(TUIGlowEffect *)self setPulsing:self->_pulsing];
  }
}

- (void)setPulseInterval:(double)a3
{
  if (self->_pulseInterval != a3)
  {
    if (self->_pulsing)
    {
      [(CABasicAnimation *)self->_pulseAnimation setDuration:a3];
      [(TUIGlowEffect *)self setPulsing:self->_pulsing];
    }

    self->_pulseInterval = a3;
  }
}

- (void)setPulsing:(BOOL)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.pulseFilter.inputRadius"];
    [(CABasicAnimation *)v5 setDuration:self->_pulseInterval * 0.5];
    LODWORD(v6) = 2139095040;
    [(CABasicAnimation *)v5 setRepeatCount:v6];
    [(CABasicAnimation *)v5 setAutoreverses:1];
    [(CABasicAnimation *)v5 setDelegate:self];
    *&v7 = self->_preferredFrameRateRange.minimum;
    *&v8 = self->_preferredFrameRateRange.maximum;
    *&v9 = self->_preferredFrameRateRange.preferred;
    [(CABasicAnimation *)v5 setPreferredFrameRateRange:v7, v8, v9];
    pulseAnimation = self->_pulseAnimation;
    self->_pulseAnimation = v5;
    v11 = v5;

    [(TUIGlowEffect *)self updatePulseAnimationRadius];
    v12 = [(TUIGlowEffect *)self layer];
    [v12 addAnimation:v11 forKey:@"filters.pulseFilter.inputRadius"];
  }

  else
  {
    v13 = [(TUIGlowEffect *)self layer];
    [v13 removeAnimationForKey:@"filters.pulseFilter.inputRadius"];

    v14 = [(TUIGlowEffect *)self layer];
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minimumRadius];
    [v14 setValue:v15 forKeyPath:@"filters.pulseFilter.inputRadius"];

    v12 = self->_pulseAnimation;
    self->_pulseAnimation = 0;
  }

  self->_pulsing = a3;
}

- (void)updatePulseAnimationRadius
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minimumRadius];
  [(CABasicAnimation *)self->_pulseAnimation setFromValue:v3];

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minimumRadius + self->_pulseRadius];
  [(CABasicAnimation *)self->_pulseAnimation setToValue:v4];

  v5 = [(TUIGlowEffect *)self layer];
  [v5 removeAnimationForKey:@"filters.pulseFilter.inputRadius"];

  v6 = [(TUIGlowEffect *)self layer];
  [v6 addAnimation:self->_pulseAnimation forKey:@"filters.pulseFilter.inputRadius"];
}

- (void)setTintColor:(CGColor *)a3 animated:(BOOL)a4 duration:(double)a5 autoreverses:(BOOL)a6 repeatCount:(double)a7
{
  v8 = a6;
  v10 = a4;
  v13 = !a4;
  v14 = [(TUIGlowEffect *)self layer];
  v18 = [v14 animationForKey:@"filters.thresholdFilter.inputColor"];

  tintColor = self->_tintColor;
  if (v18)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if (v16 || tintColor != a3)
  {
    [(TUIGlowEffect *)self updatePropertyForKeyPath:@"filters.thresholdFilter.inputColor" oldValue:tintColor newValue:a3 animated:v10 duration:v8 autoreverses:a5 repeatCount:a7];
    Copy = CGColorCreateCopy(a3);
    CGColorRelease(self->_tintColor);
    self->_tintColor = Copy;
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    animationStates = self->_animationStates;
    v6 = [v11 keyPath];
    v7 = [(NSMutableDictionary *)animationStates objectForKeyedSubscript:v6];

    v8 = [v7 animation];

    if (v8 == v11)
    {
      v9 = self->_animationStates;
      v10 = [v11 keyPath];
      [(NSMutableDictionary *)v9 removeObjectForKey:v10];
    }
  }
}

- (void)dealloc
{
  CGColorRelease(self->_tintColor);
  v3.receiver = self;
  v3.super_class = TUIGlowEffect;
  [(TUIGlowEffect *)&v3 dealloc];
}

- (TUIGlowEffect)initWithLayer:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TUIGlowEffect;
  v6 = [(TUIGlowEffect *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layer, a3);
    v7->_tintColor = CGColorCreateSRGB(0.2, 0.5, 1.0, 0.6);
    v7->_blurRadius = 5.0;
    v7->_pulsing = 1;
    v7->_pulseRadius = 1.5;
    *&v7->_pulseInterval = xmmword_1900C0FA0;
    v7->_preferredFrameRateRange = CAFrameRateRangeMake(30.0, 60.0, 30.0);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    animationStates = v7->_animationStates;
    v7->_animationStates = v8;

    [(TUIGlowEffect *)v7 setupFilters];
  }

  return v7;
}

+ (BOOL)adjustVisibilityForDarkMode:(BOOL)a3 tintColor:(CGColor *)a4 alpha:(double)a5 outTintColor:(CGColor *)a6 outAlpha:(double *)a7
{
  components[4] = *MEMORY[0x1E69E9840];
  if (adjustVisibilityForDarkMode_tintColor_alpha_outTintColor_outAlpha__onceToken != -1)
  {
    dispatch_once(&adjustVisibilityForDarkMode_tintColor_alpha_outTintColor_outAlpha__onceToken, &__block_literal_global_7057);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    result = 0;
    *a6 = a4;
    *a7 = a5;
    return result;
  }

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  if (CGColorGetNumberOfComponents(a4) <= 2)
  {
    goto LABEL_5;
  }

  v12 = CGColorGetComponents(a4);
  *v13.i64 = v12[2];
  v14.f64[0] = 0.0784313725;
  v15 = vcgtq_f64(vabdq_f64(*v12, vextq_s8(*v12, v13, 8uLL)), vdupq_n_s64(0x3FB4141414141414uLL));
  if (((v15.i64[0] | vcgtq_f64(vabdq_f64(v13, *v12), v14).u64[0] | v15.i64[1]) & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v44 = v12[2];
  v45 = *v12;
  MEMORY[0x193AE78A0](adjustVisibilityForDarkMode_tintColor_alpha_outTintColor_outAlpha__extendedGrayColorSpace, 0);
  v17 = CGColorTransformConvertColor();
  CGColorTransformRelease();
  v18 = *CGColorGetComponents(v17);
  CGColorRelease(v17);
  if (v45.f64[0] < v45.f64[1] || v45.f64[0] < v44)
  {
    if (v45.f64[1] < v45.f64[0] || v45.f64[1] < v44)
    {
      if (v45.f64[1] >= v45.f64[0])
      {
        v22 = v45.f64[0];
      }

      else
      {
        v22 = v45.f64[1];
      }

      v23 = v44;
    }

    else
    {
      if (v45.f64[0] >= v44)
      {
        v22 = v44;
      }

      else
      {
        v22 = v45.f64[0];
      }

      v23 = v45.f64[1];
    }
  }

  else
  {
    if (v45.f64[1] >= v44)
    {
      v22 = v44;
    }

    else
    {
      v22 = v45.f64[1];
    }

    v23 = v45.f64[0];
  }

  v19.i64[0] = 0;
  if (v23 <= 0.0)
  {
    v25 = 0.0;
  }

  else
  {
    v24 = v23 - v22;
    v25 = (v23 - v22) / v23;
    if (v25 != 0.0)
    {
      v26 = (v23 - v45.f64[1]) / v24;
      v27 = (v23 - v44) / v24;
      if (v23 == v45.f64[0])
      {
        if (v22 == v45.f64[1])
        {
          *v19.i64 = v27 + 5.0;
        }

        else
        {
          *v19.i64 = 1.0 - v26;
        }
      }

      else
      {
        v43 = (v23 - v45.f64[0]) / v24;
        if (v23 == v45.f64[1])
        {
          if (v22 == v44)
          {
            *v19.i64 = v43 + 1.0;
          }

          else
          {
            *v19.i64 = 3.0 - v27;
          }
        }

        else if (v22 == v45.f64[0])
        {
          *v19.i64 = v26 + 3.0;
        }

        else
        {
          *v19.i64 = 5.0 - v43;
        }
      }
    }
  }

  *v19.i64 = *v19.i64 / 6.0;
  *v20.i64 = *v19.i64 - trunc(*v19.i64);
  v28.f64[0] = NAN;
  v28.f64[1] = NAN;
  v29 = vnegq_f64(v28);
  v30 = vbslq_s8(v29, v20, v19);
  v31 = 0.1;
  if (v18 <= 0.48)
  {
    v23 = v23 + 0.1;
    v31 = 0.2;
  }

  v32 = v31 + a5;
  *v30.i64 = *v30.i64 - trunc(*v30.i64);
  v33 = *vbslq_s8(v29, v30, v19).i64;
  v34 = (v33 * 6.0);
  v35 = fmin(v25 + 0.2, 1.0);
  v36 = v33 * 6.0 - v34;
  v37 = v23 * (1.0 - v35);
  v38 = v23 * (1.0 - v35 * v36);
  v39 = v23 * (1.0 - v35 * (1.0 - v36));
  if (v34 <= 2)
  {
    if (v34)
    {
      if (v34 != 1)
      {
        v40 = v37;
        v41 = v23;
        if (v34 != 2)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      v40 = v38;
      v41 = v23;
    }

    else
    {
      v40 = v23;
      v41 = v39;
    }

    v39 = v37;
LABEL_48:
    components[0] = v40;
    components[1] = v41;
    components[2] = v39;
    goto LABEL_49;
  }

  switch(v34)
  {
    case 3:
      v40 = v37;
      v41 = v38;
LABEL_47:
      v39 = v23;
      goto LABEL_48;
    case 4:
      v40 = v39;
      v41 = v37;
      goto LABEL_47;
    case 5:
      v40 = v23;
      v41 = v37;
      v39 = v38;
      goto LABEL_48;
  }

LABEL_49:
  components[3] = 1.0;
  v42 = CGColorCreate(adjustVisibilityForDarkMode_tintColor_alpha_outTintColor_outAlpha__extendedSRGBColorSpace, components);
  CFAutorelease(v42);
  *a6 = v42;
  *a7 = v32;
  return 1;
}

CGColorSpaceRef __83__TUIGlowEffect_adjustVisibilityForDarkMode_tintColor_alpha_outTintColor_outAlpha___block_invoke()
{
  adjustVisibilityForDarkMode_tintColor_alpha_outTintColor_outAlpha__extendedGrayColorSpace = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0E0]);
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  adjustVisibilityForDarkMode_tintColor_alpha_outTintColor_outAlpha__extendedSRGBColorSpace = result;
  return result;
}

@end