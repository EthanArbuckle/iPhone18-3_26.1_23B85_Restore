@interface UIColorEffect
+ (id)_colorEffectCAMatrix:(CAColorMatrix *)matrix;
+ (id)_colorEffectSourceOver:(id)over;
+ (id)colorEffectAdd:(id)add;
+ (id)colorEffectBlendColor:(id)color;
+ (id)colorEffectBrightness:(double)brightness;
+ (id)colorEffectColor:(id)color;
+ (id)colorEffectContrast:(double)contrast;
+ (id)colorEffectCurvesRed:(id)red green:(id)green blue:(id)blue alpha:(id)alpha;
+ (id)colorEffectInvert;
+ (id)colorEffectLightMatrix:(id *)matrix darkMatrix:(id *)darkMatrix;
+ (id)colorEffectLuminanceCurveMap:(id)map blendingAmount:(double)amount;
+ (id)colorEffectLuminanceMap:(id)map blendingAmount:(double)amount;
+ (id)colorEffectMatrix:(id *)matrix;
+ (id)colorEffectMonochromeTint:(id)tint blendingAmount:(double)amount brightnessAdjustment:(double)adjustment;
+ (id)colorEffectMultiply:(id)multiply;
+ (id)colorEffectSaturate:(double)saturate;
+ (id)colorEffectSubtract:(id)subtract;
+ (id)effectWithColor:(id)color;
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment changedTraits:(id)traits usage:(int64_t)usage;
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage;
- (BOOL)isEqual:(id)equal;
- (UIColorEffect)init;
- (UIColorEffect)initWithCoder:(id)coder;
- (id)_filterEntryForTraitCollection:(id)collection;
- (id)description;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIColorEffect

- (UIColorEffect)init
{
  v9.receiver = self;
  v9.super_class = UIColorEffect;
  v2 = [(UIColorEffect *)&v9 init];
  v3 = v2;
  if (v2)
  {
    configurationValues = v2->_configurationValues;
    v5 = MEMORY[0x1E695E0F8];
    v2->_configurationValues = MEMORY[0x1E695E0F8];

    identityValues = v3->_identityValues;
    v3->_identityValues = v5;

    requestedValues = v3->_requestedValues;
    v3->_requestedValues = v5;
  }

  return v3;
}

- (UIColorEffect)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = UIColorEffect;
  v5 = [(UIVisualEffect *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"UIColorEffectBackgroundColor"])
    {
      v6 = objc_opt_self();
      v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"UIColorEffectBackgroundColor"];
      backgroundColor = v5->_backgroundColor;
      v5->_backgroundColor = v7;
    }

    v9 = [coderCopy decodeObjectForKey:@"UIColorEffectType"];
    filterType = v5->_filterType;
    v5->_filterType = v9;

    v11 = _UIColorEffectDecodeDictionary(coderCopy, @"UIColorEffectConfigurationValues");
    configurationValues = v5->_configurationValues;
    v5->_configurationValues = v11;

    v13 = _UIColorEffectDecodeDictionary(coderCopy, @"UIColorEffectIdentityValues");
    identityValues = v5->_identityValues;
    v5->_identityValues = v13;

    v15 = _UIColorEffectDecodeDictionary(coderCopy, @"UIColorEffectRequestedValues");
    requestedValues = v5->_requestedValues;
    v5->_requestedValues = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = UIColorEffect;
  [(UIVisualEffect *)&v6 encodeWithCoder:coderCopy];
  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    [coderCopy encodeObject:backgroundColor forKey:@"UIColorEffectBackgroundColor"];
  }

  [coderCopy encodeObject:self->_filterType forKey:@"UIColorEffectType"];
  _UIColorEffectEncodeDictionary(coderCopy, @"UIColorEffectConfigurationValues", self->_configurationValues);
  _UIColorEffectEncodeDictionary(coderCopy, @"UIColorEffectIdentityValues", self->_identityValues);
  _UIColorEffectEncodeDictionary(coderCopy, @"UIColorEffectRequestedValues", self->_requestedValues);
}

+ (id)colorEffectMatrix:(id *)matrix
{
  v31[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(self);
  objc_storeStrong(v4 + 1, *MEMORY[0x1E6979880]);
  v30 = *MEMORY[0x1E6979AC0];
  v5 = v30;
  v6 = *(MEMORY[0x1E6979280] + 48);
  v25 = *(MEMORY[0x1E6979280] + 32);
  v26 = v6;
  v27 = *(MEMORY[0x1E6979280] + 64);
  v7 = *(MEMORY[0x1E6979280] + 16);
  v23 = *MEMORY[0x1E6979280];
  v24 = v7;
  v8 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v23];
  v31[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v10 = v4[4];
  v4[4] = v9;

  v28 = v5;
  v11.f64[0] = matrix->var1.var3;
  v12 = *&matrix->var2.var0;
  v13 = *&matrix->var2.var2;
  v14 = *&matrix->var3.var1;
  v15.f64[0] = matrix->var3.var3;
  v16.f64[0] = matrix->var4.var0;
  v17.f64[0] = matrix->var4.var2;
  v16.f64[1] = matrix->var1.var0;
  v18 = vcvt_hight_f32_f64(vcvt_f32_f64(v16), *&matrix->var1.var1);
  v23 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->var0.var0), *&matrix->var0.var2);
  v24 = v18;
  v11.f64[1] = matrix->var4.var1;
  v17.f64[1] = matrix->var3.var0;
  v25 = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v12);
  v26 = vcvt_hight_f32_f64(vcvt_f32_f64(v13), v17);
  v15.f64[1] = matrix->var4.var3;
  v27 = vcvt_hight_f32_f64(vcvt_f32_f64(v14), v15);
  v19 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v23];
  v29 = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v21 = v4[5];
  v4[5] = v20;

  return v4;
}

+ (id)colorEffectLightMatrix:(id *)matrix darkMatrix:(id *)darkMatrix
{
  v48[1] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(self);
  objc_storeStrong(v6 + 1, *MEMORY[0x1E6979880]);
  v47 = *MEMORY[0x1E6979AC0];
  v7 = *(MEMORY[0x1E6979280] + 48);
  v46[2] = *(MEMORY[0x1E6979280] + 32);
  v46[3] = v7;
  v46[4] = *(MEMORY[0x1E6979280] + 64);
  v8 = *(MEMORY[0x1E6979280] + 16);
  v46[0] = *MEMORY[0x1E6979280];
  v46[1] = v8;
  v9 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v46];
  v48[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
  v11 = v6[4];
  v6[4] = v10;

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __51__UIColorEffect_colorEffectLightMatrix_darkMatrix___block_invoke;
  v25[3] = &__block_descriptor_352_e61___NSDictionary_28__0__NSDictionary_8__UITraitCollection_16B24l;
  v12 = *&matrix->var3.var2;
  v32 = *&matrix->var3.var0;
  v33 = v12;
  v13 = *&matrix->var4.var2;
  v34 = *&matrix->var4.var0;
  v35 = v13;
  v14 = *&matrix->var1.var2;
  v28 = *&matrix->var1.var0;
  v29 = v14;
  v15 = *&matrix->var2.var2;
  v30 = *&matrix->var2.var0;
  v31 = v15;
  v16 = *&matrix->var0.var2;
  v26 = *&matrix->var0.var0;
  v27 = v16;
  v17 = *&darkMatrix->var3.var2;
  v42 = *&darkMatrix->var3.var0;
  v43 = v17;
  v18 = *&darkMatrix->var4.var2;
  v44 = *&darkMatrix->var4.var0;
  v45 = v18;
  v19 = *&darkMatrix->var1.var2;
  v38 = *&darkMatrix->var1.var0;
  v39 = v19;
  v20 = *&darkMatrix->var2.var2;
  v40 = *&darkMatrix->var2.var0;
  v41 = v20;
  v21 = *&darkMatrix->var0.var2;
  v36 = *&darkMatrix->var0.var0;
  v37 = v21;
  v22 = _Block_copy(v25);
  v23 = v6[6];
  v6[6] = v22;

  return v6;
}

id __51__UIColorEffect_colorEffectLightMatrix_darkMatrix___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v74[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (a4)
  {
    v9 = [a3 userInterfaceStyle];
    v10 = 192;
    if (v9 == 1)
    {
      v10 = 32;
    }

    v11 = 200;
    if (v9 == 1)
    {
      v11 = 40;
    }

    v12 = 208;
    if (v9 == 1)
    {
      v12 = 48;
    }

    v13 = 216;
    if (v9 == 1)
    {
      v13 = 56;
    }

    v14 = 224;
    if (v9 == 1)
    {
      v14 = 64;
    }

    v15 = *(a1 + v10);
    v16 = *(a1 + v11);
    v17 = 72;
    if (v9 != 1)
    {
      v17 = 232;
    }

    v18 = *(a1 + v12);
    v19 = *(a1 + v13);
    v20 = *(a1 + v14);
    v21 = *(a1 + v17);
    if (v9 == 1)
    {
      v22 = 80;
    }

    else
    {
      v22 = 240;
    }

    v23 = 320;
    if (v9 == 1)
    {
      v23 = 160;
    }

    v24 = *(a1 + v22);
    v25 = *(a1 + v23);
    v26 = 248;
    if (v9 == 1)
    {
      v26 = 88;
    }

    v73 = *MEMORY[0x1E6979AC0];
    v27 = 96;
    if (v9 != 1)
    {
      v27 = 256;
    }

    v28 = v15;
    v29 = v16;
    *v72 = v28;
    *&v72[1] = v29;
    v30 = 264;
    v31 = v18;
    v32 = v19;
    *&v72[2] = v31;
    *&v72[3] = v32;
    if (v9 == 1)
    {
      v30 = 104;
    }

    v33 = 272;
    v34 = v25;
    v35 = v20;
    *&v72[4] = v34;
    *&v72[5] = v35;
    if (v9 == 1)
    {
      v33 = 112;
    }

    v36 = v21;
    v37 = v24;
    *&v72[6] = v36;
    *&v72[7] = v37;
    v38 = 280;
    if (v9 == 1)
    {
      v38 = 120;
    }

    v39 = 288;
    if (v9 == 1)
    {
      v39 = 128;
    }

    v40 = 296;
    if (v9 == 1)
    {
      v40 = 136;
    }

    v41 = 304;
    if (v9 == 1)
    {
      v41 = 144;
    }

    v42 = 312;
    if (v9 == 1)
    {
      v42 = 152;
    }

    v43 = 328;
    if (v9 == 1)
    {
      v43 = 168;
    }

    v44 = 336;
    if (v9 == 1)
    {
      v44 = 176;
    }

    v45 = *(a1 + v26);
    v46 = *(a1 + v27);
    v47 = *(a1 + v30);
    v48 = *(a1 + v33);
    v49 = 184;
    if (v9 != 1)
    {
      v49 = 344;
    }

    v50 = *(a1 + v38);
    v51 = *(a1 + v39);
    v52 = *(a1 + v40);
    v53 = *(a1 + v41);
    v54 = *(a1 + v42);
    v55 = *(a1 + v44);
    v56 = *(a1 + v49);
    v57 = v45;
    v58 = *(a1 + v43);
    *&v72[8] = v57;
    *&v72[9] = v58;
    v59 = v46;
    v60 = v47;
    *&v72[10] = v59;
    *&v72[11] = v60;
    v61 = v48;
    v62 = v50;
    *&v72[12] = v61;
    *&v72[13] = v62;
    v63 = v55;
    v64 = v51;
    *&v72[14] = v63;
    *&v72[15] = v64;
    v65 = v52;
    v66 = v53;
    *&v72[16] = v65;
    *&v72[17] = v66;
    v67 = v54;
    v68 = v56;
    *&v72[18] = v67;
    *&v72[19] = v68;
    v69 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v72];
    v74[0] = v69;
    v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:&v73 count:1];
  }

  else
  {
    v70 = v7;
  }

  return v70;
}

+ (id)_colorEffectCAMatrix:(CAColorMatrix *)matrix
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(self);
  objc_storeStrong(v4 + 1, *MEMORY[0x1E6979880]);
  v24 = *MEMORY[0x1E6979AC0];
  v5 = v24;
  v6 = *(MEMORY[0x1E6979280] + 48);
  v19 = *(MEMORY[0x1E6979280] + 32);
  v20 = v6;
  v21 = *(MEMORY[0x1E6979280] + 64);
  v7 = *(MEMORY[0x1E6979280] + 16);
  v17 = *MEMORY[0x1E6979280];
  v18 = v7;
  v8 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v17];
  v25[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v10 = v4[4];
  v4[4] = v9;

  v22 = v5;
  v11 = *&matrix->m33;
  v19 = *&matrix->m24;
  v20 = v11;
  v21 = *&matrix->m42;
  v12 = *&matrix->m15;
  v17 = *&matrix->m11;
  v18 = v12;
  v13 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v17];
  v23 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v15 = v4[5];
  v4[5] = v14;

  return v4;
}

+ (id)effectWithColor:(id)color
{
  colorCopy = color;
  v5 = objc_alloc_init(self);
  if (colorCopy)
  {
    v6 = [colorCopy copy];
  }

  else
  {
    v6 = +[UIColor clearColor];
  }

  v7 = v6;
  objc_storeStrong(v5 + 2, v6);

  return v5;
}

+ (id)colorEffectColor:(id)color
{
  v40[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  v5 = objc_alloc_init(self);
  objc_storeStrong(v5 + 1, *MEMORY[0x1E6979880]);
  v6 = *MEMORY[0x1E6979AC0];
  v39 = *MEMORY[0x1E6979AC0];
  v7 = *(MEMORY[0x1E6979280] + 48);
  v27[0] = *(MEMORY[0x1E6979280] + 32);
  v27[1] = v7;
  v28 = *(MEMORY[0x1E6979280] + 64);
  v8 = *(MEMORY[0x1E6979280] + 16);
  v25 = *MEMORY[0x1E6979280];
  v26 = v8;
  v9 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v25];
  v40[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v11 = v5[4];
  v5[4] = v10;

  if ([colorCopy _isDynamic])
  {
    v37 = @"UIDynamicColor";
    v38 = colorCopy;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v13 = v5[5];
    v5[5] = v12;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __34__UIColorEffect_colorEffectColor___block_invoke;
    aBlock[3] = &unk_1E70F68F8;
    v34 = colorCopy;
    v14 = _Block_copy(aBlock);
    v15 = v5[6];
    v5[6] = v14;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    memset(v30, 0, sizeof(v30));
    v28 = 0u;
    v29 = 0u;
    memset(v27, 0, sizeof(v27));
    v25 = 0u;
    v26 = 0u;
    [colorCopy getRed:&v31 green:&v31 + 8 blue:&v32 alpha:&v32 + 8];
    v35 = v6;
    v16.f64[0] = *(&v27[1] + 1);
    v17.f64[0] = v30[1].f64[1];
    *&v18.f64[0] = v31;
    *&v19.f64[0] = v32;
    v18.f64[1] = *v27;
    v24[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v25), v26);
    v24[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v18), *(v27 + 8));
    v16.f64[1] = *(&v31 + 1);
    v19.f64[1] = v30[0].f64[0];
    v24[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v16), v28);
    v24[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v29), v19);
    v17.f64[1] = *(&v32 + 1);
    v24[4] = vcvt_hight_f32_f64(vcvt_f32_f64(*(v30 + 8)), v17);
    v20 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v24];
    v36 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v22 = v5[5];
    v5[5] = v21;
  }

  return v5;
}

id __34__UIColorEffect_colorEffectColor___block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (a4)
  {
    v9 = [*(a1 + 32) resolvedColorWithTraitCollection:a3];
    v24 = 0u;
    v25 = 0u;
    memset(v23, 0, sizeof(v23));
    v21 = 0u;
    v22 = 0u;
    memset(v20, 0, sizeof(v20));
    v18 = 0u;
    v19 = 0u;
    [v9 getRed:&v24 green:&v24 + 8 blue:&v25 alpha:&v25 + 8];
    v26 = *MEMORY[0x1E6979AC0];
    v10.f64[0] = v20[1].f64[1];
    v11.f64[0] = v23[1].f64[1];
    *&v12.f64[0] = v24;
    *&v13.f64[0] = v25;
    v12.f64[1] = v20[0].f64[0];
    v17[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v18), v19);
    v17[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v12), *(v20 + 8));
    v10.f64[1] = *(&v24 + 1);
    v13.f64[1] = v23[0].f64[0];
    v17[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v10), v21);
    v17[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v13);
    v11.f64[1] = *(&v25 + 1);
    v17[4] = vcvt_hight_f32_f64(vcvt_f32_f64(*(v23 + 8)), v11);
    v14 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v17];
    v27[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  }

  else
  {
    v15 = v7;
  }

  return v15;
}

+ (id)colorEffectMultiply:(id)multiply
{
  v24[1] = *MEMORY[0x1E69E9840];
  multiplyCopy = multiply;
  v5 = objc_alloc_init(self);
  objc_storeStrong(v5 + 1, *MEMORY[0x1E6979CB0]);
  v6 = *MEMORY[0x1E6979AA0];
  v23 = *MEMORY[0x1E6979AA0];
  v7 = +[UIColor whiteColor];
  v24[0] = [v7 CGColor];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v9 = v5[4];
  v5[4] = v8;

  if ([multiplyCopy _isDynamic])
  {
    v21 = @"UIDynamicColor";
    v22 = multiplyCopy;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v11 = v5[5];
    v5[5] = v10;

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __37__UIColorEffect_colorEffectMultiply___block_invoke;
    v17[3] = &unk_1E70F68F8;
    v18 = multiplyCopy;
    v12 = _Block_copy(v17);
    v13 = v5[6];
    v5[6] = v12;

    v14 = v18;
  }

  else
  {
    v19 = v6;
    cGColor = [multiplyCopy CGColor];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&cGColor forKeys:&v19 count:1];
    v14 = v5[5];
    v5[5] = v15;
  }

  return v5;
}

id __37__UIColorEffect_colorEffectMultiply___block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (a4)
  {
    v9 = [*(a1 + 32) resolvedColorWithTraitCollection:a3];
    v12 = *MEMORY[0x1E6979AA0];
    v13[0] = [v9 CGColor];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

+ (id)colorEffectAdd:(id)add
{
  v24[1] = *MEMORY[0x1E69E9840];
  addCopy = add;
  v5 = objc_alloc_init(self);
  objc_storeStrong(v5 + 1, *MEMORY[0x1E6979838]);
  v6 = *MEMORY[0x1E6979AA0];
  v23 = *MEMORY[0x1E6979AA0];
  v7 = +[UIColor clearColor];
  v24[0] = [v7 CGColor];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v9 = v5[4];
  v5[4] = v8;

  if ([addCopy _isDynamic])
  {
    v21 = @"UIDynamicColor";
    v22 = addCopy;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v11 = v5[5];
    v5[5] = v10;

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __32__UIColorEffect_colorEffectAdd___block_invoke;
    v17[3] = &unk_1E70F68F8;
    v18 = addCopy;
    v12 = _Block_copy(v17);
    v13 = v5[6];
    v5[6] = v12;

    v14 = v18;
  }

  else
  {
    v19 = v6;
    cGColor = [addCopy CGColor];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&cGColor forKeys:&v19 count:1];
    v14 = v5[5];
    v5[5] = v15;
  }

  return v5;
}

id __32__UIColorEffect_colorEffectAdd___block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (a4)
  {
    v9 = [*(a1 + 32) resolvedColorWithTraitCollection:a3];
    v12 = *MEMORY[0x1E6979AA0];
    v13[0] = [v9 CGColor];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

+ (id)colorEffectSubtract:(id)subtract
{
  v24[1] = *MEMORY[0x1E69E9840];
  subtractCopy = subtract;
  v5 = objc_alloc_init(self);
  objc_storeStrong(v5 + 1, *MEMORY[0x1E6979898]);
  v6 = *MEMORY[0x1E6979AA0];
  v23 = *MEMORY[0x1E6979AA0];
  v7 = +[UIColor clearColor];
  v24[0] = [v7 CGColor];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v9 = v5[4];
  v5[4] = v8;

  if ([subtractCopy _isDynamic])
  {
    v21 = @"UIDynamicColor";
    v22 = subtractCopy;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v11 = v5[5];
    v5[5] = v10;

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __37__UIColorEffect_colorEffectSubtract___block_invoke;
    v17[3] = &unk_1E70F68F8;
    v18 = subtractCopy;
    v12 = _Block_copy(v17);
    v13 = v5[6];
    v5[6] = v12;

    v14 = v18;
  }

  else
  {
    v19 = v6;
    cGColor = [subtractCopy CGColor];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&cGColor forKeys:&v19 count:1];
    v14 = v5[5];
    v5[5] = v15;
  }

  return v5;
}

id __37__UIColorEffect_colorEffectSubtract___block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (a4)
  {
    v9 = [*(a1 + 32) resolvedColorWithTraitCollection:a3];
    v12 = *MEMORY[0x1E6979AA0];
    v13[0] = [v9 CGColor];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

+ (id)colorEffectBlendColor:(id)color
{
  v41[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  _isDynamic = [colorCopy _isDynamic];
  v6 = objc_alloc_init(self);
  if ((_isDynamic & 1) != 0 || ([colorCopy alphaComponent], v7 != 0.0))
  {
    objc_storeStrong(v6 + 1, *MEMORY[0x1E6979880]);
    v8 = *MEMORY[0x1E6979AC0];
    v40 = *MEMORY[0x1E6979AC0];
    v9 = *(MEMORY[0x1E6979280] + 48);
    v26 = *(MEMORY[0x1E6979280] + 32);
    v27 = v9;
    v28 = *(MEMORY[0x1E6979280] + 64);
    v10 = *(MEMORY[0x1E6979280] + 16);
    v24 = *MEMORY[0x1E6979280];
    v25 = v10;
    v11 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v24];
    v41[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v13 = v6[4];
    v6[4] = v12;

    if (_isDynamic)
    {
      v38 = @"UIDynamicColor";
      v39 = colorCopy;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v15 = v6[5];
      v6[5] = v14;

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __39__UIColorEffect_colorEffectBlendColor___block_invoke;
      aBlock[3] = &unk_1E70F68F8;
      v35 = colorCopy;
      v16 = _Block_copy(aBlock);
      v17 = v6[6];
      v6[6] = v16;
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      [colorCopy getRed:&v32 green:&v32 + 8 blue:&v33 alpha:&v33 + 8];
      v36 = v8;
      v18 = MEMORY[0x1E696B098];
      _UIColorEffectSourceOverCAMatrix(v23, colorCopy);
      v19 = [v18 valueWithCAColorMatrix:v23];
      v37 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v21 = v6[5];
      v6[5] = v20;
    }
  }

  return v6;
}

id __39__UIColorEffect_colorEffectBlendColor___block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (a4)
  {
    v9 = [*(a1 + 32) resolvedColorWithTraitCollection:a3];
    v15 = *MEMORY[0x1E6979AC0];
    v10 = MEMORY[0x1E696B098];
    _UIColorEffectSourceOverCAMatrix(v14, v9);
    v11 = [v10 valueWithCAColorMatrix:v14];
    v16[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  else
  {
    v12 = v7;
  }

  return v12;
}

+ (id)_colorEffectSourceOver:(id)over
{
  if (over.var3 == 0.0)
  {
    v3 = objc_alloc_init(self);
  }

  else
  {
    v7 = 0u;
    v6 = 0u;
    v9 = 0u;
    v10 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = 1.0 - over.var3;
    v8 = 1.0 - over.var3;
    v11 = 1.0 - over.var3;
    v14 = 1.0 - over.var3;
    overCopy = over;
    v3 = [UIColorEffect colorEffectMatrix:&v5];
  }

  return v3;
}

+ (id)colorEffectSaturate:(double)saturate
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(self);
  objc_storeStrong(v4 + 1, *MEMORY[0x1E6979890]);
  v14 = *MEMORY[0x1E6979990];
  v5 = v14;
  v15[0] = &unk_1EFE2E208;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v7 = v4[4];
  v4[4] = v6;

  v12 = v5;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:saturate];
  v13 = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10 = v4[5];
  v4[5] = v9;

  return v4;
}

+ (id)colorEffectBrightness:(double)brightness
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(self);
  v5 = v4;
  if (brightness != 0.0)
  {
    objc_storeStrong(v4 + 1, *MEMORY[0x1E6979848]);
    v15 = *MEMORY[0x1E6979990];
    v6 = v15;
    v16[0] = &unk_1EFE2E218;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v8 = v5[4];
    v5[4] = v7;

    v13 = v6;
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:brightness];
    v14 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v11 = v5[5];
    v5[5] = v10;
  }

  return v5;
}

+ (id)colorEffectContrast:(double)contrast
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(self);
  objc_storeStrong(v4 + 1, *MEMORY[0x1E6979858]);
  v14 = *MEMORY[0x1E6979990];
  v5 = v14;
  v15[0] = &unk_1EFE2E208;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v7 = v4[4];
  v4[4] = v6;

  v12 = v5;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:contrast];
  v13 = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10 = v4[5];
  v4[5] = v9;

  return v4;
}

+ (id)colorEffectInvert
{
  v15 = 0;
  v16 = 0;
  v9[0] = 0xBFF0000000000000;
  memset(&v9[1], 0, 32);
  v9[5] = 0xBFF0000000000000;
  v10 = 0u;
  v11 = 0u;
  v13 = 0;
  v14 = 0;
  v12 = 0xBFF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  v17 = _Q0;
  v18 = _Q0;
  v19 = 0;
  v7 = [self colorEffectMatrix:v9];

  return v7;
}

+ (id)colorEffectMonochromeTint:(id)tint blendingAmount:(double)amount brightnessAdjustment:(double)adjustment
{
  v34[1] = *MEMORY[0x1E69E9840];
  tintCopy = tint;
  v9 = objc_alloc_init(self);
  objc_storeStrong(v9 + 1, *MEMORY[0x1E6979888]);
  if ([tintCopy _isDynamic])
  {
    v33 = @"UIDynamicColor";
    v34[0] = tintCopy;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v11 = v9[5];
    v9[5] = v10;

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __79__UIColorEffect_colorEffectMonochromeTint_blendingAmount_brightnessAdjustment___block_invoke;
    v25[3] = &unk_1E70F6920;
    v26 = tintCopy;
    adjustmentCopy = adjustment;
    amountCopy = amount;
    v12 = _Block_copy(v25);
    v13 = v9[6];
    v9[6] = v12;

    v14 = v26;
  }

  else
  {
    v31[0] = *MEMORY[0x1E6979AA0];
    v15 = v31[0];
    cGColor = [tintCopy CGColor];
    v17 = *MEMORY[0x1E69799C8];
    v32[0] = cGColor;
    v32[1] = &unk_1EFE2E218;
    v18 = *MEMORY[0x1E6979990];
    v31[1] = v17;
    v31[2] = v18;
    v32[2] = &unk_1EFE2E218;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];
    v20 = v9[4];
    v9[4] = v19;

    v29[0] = v15;
    v30[0] = [tintCopy CGColor];
    v29[1] = v17;
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:adjustment];
    v30[1] = v14;
    v29[2] = v18;
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:amount];
    v30[2] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
    v23 = v9[5];
    v9[5] = v22;
  }

  return v9;
}

id __79__UIColorEffect_colorEffectMonochromeTint_blendingAmount_brightnessAdjustment___block_invoke(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [*(a1 + 32) resolvedColorWithTraitCollection:v6];

  v9 = [v8 CGColor];
  [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6979AA0]];
  if (a4)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
    [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69799C8]];

    v11 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
    [v7 setObject:v11 forKeyedSubscript:*MEMORY[0x1E6979990]];
  }

  else
  {
    [v7 setObject:&unk_1EFE2E218 forKeyedSubscript:*MEMORY[0x1E69799C8]];
    [v7 setObject:&unk_1EFE2E218 forKeyedSubscript:*MEMORY[0x1E6979990]];
  }

  return v7;
}

+ (id)colorEffectLuminanceMap:(id)map blendingAmount:(double)amount
{
  v44[1] = *MEMORY[0x1E69E9840];
  mapCopy = map;
  if (![mapCopy CGImage])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIColorEffect.m" lineNumber:473 description:@"Luminance Map Image must be a CGImage based image"];
  }

  [mapCopy size];
  if (v9 <= 0.0 || v8 <= 0.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIColorEffect.m" lineNumber:475 description:@"Luminance Map Image must be non-zero size"];
  }

  v10 = objc_alloc_init(self);
  objc_storeStrong(v10 + 1, *MEMORY[0x1E6979C70]);
  v11 = mapCopy;
  imageOrientation = [v11 imageOrientation];
  cGImage = [v11 CGImage];
  if (imageOrientation)
  {
    [v11 size];
    v15 = v14;
    [v11 scale];
    v17 = 1.0 / v16;
    v18 = [UIGraphicsImageRenderer alloc];
    imageRendererFormat = [v11 imageRendererFormat];
    v20 = [(UIGraphicsImageRenderer *)v18 initWithSize:imageRendererFormat format:v15, v17];

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = ___UIColorEffectProcessLuminanceMap_block_invoke;
    v37[3] = &unk_1E70F6970;
    v38 = v11;
    v21 = [(UIGraphicsImageRenderer *)v20 imageWithActions:v37];
  }

  else
  {
    v22 = cGImage;
    if (CGImageGetHeight(cGImage) == 1)
    {
      v21 = v11;
    }

    else
    {
      v23 = *MEMORY[0x1E695EFF8];
      v24 = *(MEMORY[0x1E695EFF8] + 8);
      v46.size.width = CGImageGetWidth(v22);
      v46.size.height = 1.0;
      v46.origin.x = v23;
      v46.origin.y = v24;
      v25 = CGImageCreateWithImageInRect(v22, v46);
      v21 = [UIImage imageWithCGImage:v25];
      CGImageRelease(v25);
    }
  }

  v43 = *MEMORY[0x1E6979AB8];
  v44[0] = [v21 CGImage];
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
  v27 = v10[3];
  v10[3] = v26;

  v41 = *MEMORY[0x1E6979990];
  v28 = v41;
  v42 = &unk_1EFE2E218;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v30 = v10[4];
  v10[4] = v29;

  v39 = v28;
  v31 = [MEMORY[0x1E696AD98] numberWithDouble:amount];
  v40 = v31;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v33 = v10[5];
  v10[5] = v32;

  return v10;
}

+ (id)colorEffectLuminanceCurveMap:(id)map blendingAmount:(double)amount
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = _UIColorEffectUpgradeCurve(map);
  v8 = objc_alloc_init(self);
  v9 = v8;
  if (map)
  {
    objc_storeStrong(v8 + 1, *MEMORY[0x1E6979C68]);
    v23 = *MEMORY[0x1E6979C28];
    v24[0] = v7;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v11 = v9[3];
    v9[3] = v10;

    v21 = *MEMORY[0x1E6979990];
    v12 = v21;
    v22 = &unk_1EFE2E218;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v14 = v9[4];
    v9[4] = v13;

    v19 = v12;
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:amount];
    v20 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v17 = v9[5];
    v9[5] = v16;
  }

  return v9;
}

+ (id)colorEffectCurvesRed:(id)red green:(id)green blue:(id)blue alpha:(id)alpha
{
  v32[4] = *MEMORY[0x1E69E9840];
  alphaCopy = alpha;
  blueCopy = blue;
  greenCopy = green;
  v26 = _UIColorEffectUpgradeCurve(red);
  v13 = _UIColorEffectUpgradeCurve(greenCopy);

  v14 = _UIColorEffectUpgradeCurve(blueCopy);

  v15 = _UIColorEffectUpgradeCurve(alphaCopy);

  v16 = objc_alloc_init(self);
  objc_storeStrong(v16 + 1, *MEMORY[0x1E69798B8]);
  v18 = *MEMORY[0x1E6979B38];
  v29[0] = *MEMORY[0x1E6979BB0];
  v17 = v29[0];
  v29[1] = v18;
  v32[0] = &unk_1EFE2B4A0;
  v32[1] = &unk_1EFE2B4A0;
  v20 = *MEMORY[0x1E6979988];
  v30 = *MEMORY[0x1E6979A28];
  v19 = v30;
  v31 = v20;
  v32[2] = &unk_1EFE2B4A0;
  v32[3] = &unk_1EFE2B4A0;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v29 count:4];
  v22 = v16[4];
  v16[4] = v21;

  v27[0] = v17;
  v27[1] = v18;
  v28[0] = v26;
  v28[1] = v13;
  v27[2] = v19;
  v27[3] = v20;
  v28[2] = v14;
  v28[3] = v15;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v24 = v16[5];
  v16[5] = v23;

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if (equalCopy && [(UIColorEffect *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      backgroundColor = v6->_backgroundColor;
      v8 = self->_backgroundColor;
      v9 = backgroundColor;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
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
          LOBYTE(v12) = 0;
          goto LABEL_32;
        }

        v12 = [(UIColor *)v8 isEqual:v9];

        if (!v12)
        {
          goto LABEL_33;
        }
      }

      filterType = v6->_filterType;
      v8 = self->_filterType;
      v14 = filterType;
      v10 = v14;
      if (v8 == v14)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        if (!v8 || !v14)
        {
          goto LABEL_32;
        }

        v12 = [(UIColor *)v8 isEqual:v14];

        if (!v12)
        {
          goto LABEL_33;
        }
      }

      configurationValues = v6->_configurationValues;
      v8 = self->_configurationValues;
      v16 = configurationValues;
      v10 = v16;
      if (v8 == v16)
      {

LABEL_27:
        requestedValues = self->_requestedValues;
        v18 = v6->_requestedValues;
        v8 = requestedValues;
        v19 = v18;
        v10 = v19;
        if (v8 == v19)
        {
          LOBYTE(v12) = 1;
        }

        else
        {
          LOBYTE(v12) = 0;
          if (v8 && v19)
          {
            LOBYTE(v12) = [(UIColor *)v8 isEqual:v19];
          }
        }

        goto LABEL_32;
      }

      LOBYTE(v12) = 0;
      if (v8 && v16)
      {
        v12 = [(UIColor *)v8 isEqual:v16];

        if (!v12)
        {
          goto LABEL_33;
        }

        goto LABEL_27;
      }

LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    LOBYTE(v12) = 0;
  }

LABEL_34:

  return v12;
}

- (id)_filterEntryForTraitCollection:(id)collection
{
  v5 = self->_requestedValues;
  v6 = self->_identityValues;
  if (collection)
  {
    sourceColorUpdater = self->_sourceColorUpdater;
    if (sourceColorUpdater)
    {
      v8 = sourceColorUpdater[2];
      collectionCopy = collection;
      v10 = v8(sourceColorUpdater, v5, collectionCopy, 1);

      v11 = (*(self->_sourceColorUpdater + 2))();

      v5 = v10;
      v6 = v11;
    }
  }

  v12 = [[_UIVisualEffectFilterEntry alloc] initWithFilterType:self->_filterType configurationValues:self->_configurationValues requestedValues:v5 identityValues:v6];

  return v12;
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment changedTraits:(id)traits usage:(int64_t)usage
{
  traitsCopy = traits;
  if (self->_sourceColorUpdater)
  {
    v8 = +[UITraitCollection systemTraitsAffectingColorAppearance];
    if ([v8 count])
    {
      v9 = 0;
      do
      {
        v10 = [traitsCopy containsObject:{objc_msgSend(v8, "objectAtIndexedSubscript:", v9)}];
        if (v10)
        {
          break;
        }

        ++v9;
      }

      while (v9 < [v8 count]);
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage
{
  toEnvironmentCopy = toEnvironment;
  environmentCopy = environment;
  traitCollection = [environmentCopy traitCollection];
  traitCollection2 = [toEnvironmentCopy traitCollection];
  v12 = [traitCollection changedTraitsFromTraitCollection:traitCollection2];

  LOBYTE(usage) = [(UIColorEffect *)self _needsUpdateForTransitionFromEnvironment:environmentCopy toEnvironment:toEnvironmentCopy changedTraits:v12 usage:usage];
  return usage;
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  descriptorCopy = descriptor;
  environmentCopy = environment;
  if (self->_backgroundColor)
  {
    v8 = objc_opt_new();
    [v8 setColor:self->_backgroundColor];
    [descriptorCopy addViewEffect:v8];
  }

  if (self->_filterType)
  {
    traitCollection = [environmentCopy traitCollection];
    v10 = [(UIColorEffect *)self _filterEntryForTraitCollection:traitCollection];
    [descriptorCopy addFilterEntry:v10];

    if (self->_disableInPlaceFiltering)
    {
      [descriptorCopy setDisableInPlaceFiltering:1];
    }
  }
}

- (id)description
{
  v16.receiver = self;
  v16.super_class = UIColorEffect;
  v3 = [(UIColorEffect *)&v16 description];
  v4 = [v3 mutableCopy];

  if (self->_backgroundColor)
  {
    [v4 appendFormat:@" color=%@", self->_backgroundColor];
  }

  if (self->_filterType)
  {
    [v4 appendFormat:@" filterType=%@", self->_filterType];
  }

  if (self->_sourceColorUpdater)
  {
    [v4 appendString:@" dynamicColorBased"];
  }

  configurationValues = self->_configurationValues;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __28__UIColorEffect_description__block_invoke;
  v14[3] = &unk_1E70F6948;
  v6 = v4;
  v15 = v6;
  [(NSDictionary *)configurationValues enumerateKeysAndObjectsUsingBlock:v14];
  requestedValues = self->_requestedValues;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __28__UIColorEffect_description__block_invoke_2;
  v12[3] = &unk_1E70F6948;
  v8 = v6;
  v13 = v8;
  [(NSDictionary *)requestedValues enumerateKeysAndObjectsUsingBlock:v12];
  v9 = v13;
  v10 = v8;

  return v8;
}

void __28__UIColorEffect_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = _UIVisualEffectFilterEntryDescribeValue(a3);
  [v4 appendFormat:@" %@=%@", v5, v6];
}

void __28__UIColorEffect_description__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = _UIVisualEffectFilterEntryDescribeValue(a3);
  [v4 appendFormat:@" %@=%@", v5, v6];
}

@end