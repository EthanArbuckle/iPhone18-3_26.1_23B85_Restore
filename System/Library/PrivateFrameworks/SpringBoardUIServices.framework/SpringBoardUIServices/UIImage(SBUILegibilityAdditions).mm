@interface UIImage(SBUILegibilityAdditions)
+ (id)sbui_legibilityImageForSettings:()SBUILegibilityAdditions scale:inputImage:inputSize:allowMinFillHeightHack:strength:type:pool:;
+ (id)sbui_legibilityImageForSettings:()SBUILegibilityAdditions scale:inputImage:inputSize:allowMinFillHeightHack:type:pool:;
+ (id)sbui_legibilityImageForSettings:()SBUILegibilityAdditions scale:inputImage:inputSize:type:pool:;
- (id)sbui_legibilityImageForSettings:()SBUILegibilityAdditions scale:pool:;
- (id)sbui_strikeImageForLegibilitySettings:()SBUILegibilityAdditions strength:size:type:pool:;
@end

@implementation UIImage(SBUILegibilityAdditions)

- (id)sbui_strikeImageForLegibilitySettings:()SBUILegibilityAdditions strength:size:type:pool:
{
  v14 = a6;
  v15 = a8;
  selfCopy = self;
  v17 = selfCopy;
  if (a2 > 0.0)
  {
    [selfCopy scale];
    v19 = v18;
    if (v14)
    {
      [v14 shadowSettings];
      v20 = *(&v32 + 1);
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v20 = 0;
    }

    v21 = MEMORY[0x1E69DCAB8];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __98__UIImage_SBUILegibilityAdditions__sbui_strikeImageForLegibilitySettings_strength_size_type_pool___block_invoke;
    v24[3] = &unk_1E789EE30;
    v26 = v20;
    v27 = a2;
    v25 = v17;
    v28 = 0;
    v29 = 0;
    v30 = a3;
    v31 = a4;
    v22 = v17;
    v17 = [v21 sbf_imageFromContextWithSize:a7 scale:v15 type:v24 pool:0 drawing:a3 encapsulation:{a4, v19}];
  }

  return v17;
}

- (id)sbui_legibilityImageForSettings:()SBUILegibilityAdditions scale:pool:
{
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_class();
  [self size];
  v13 = [v10 sbui_legibilityImageForSettings:v9 scale:self inputImage:4 inputSize:v8 type:a2 pool:{v11, v12}];

  return v13;
}

+ (id)sbui_legibilityImageForSettings:()SBUILegibilityAdditions scale:inputImage:inputSize:type:pool:
{
  v15 = a9;
  v16 = a7;
  v17 = a6;
  v18 = [objc_opt_class() sbui_legibilityImageForSettings:v17 scale:v16 inputImage:1 inputSize:a8 allowMinFillHeightHack:v15 type:self pool:{a2, a3}];

  return v18;
}

+ (id)sbui_legibilityImageForSettings:()SBUILegibilityAdditions scale:inputImage:inputSize:allowMinFillHeightHack:type:pool:
{
  v17 = a10;
  v18 = a7;
  v19 = a6;
  v20 = [objc_opt_class() sbui_legibilityImageForSettings:v19 scale:v18 inputImage:a8 inputSize:0 allowMinFillHeightHack:a9 strength:v17 type:self pool:{a2, a3}];

  return v20;
}

+ (id)sbui_legibilityImageForSettings:()SBUILegibilityAdditions scale:inputImage:inputSize:allowMinFillHeightHack:strength:type:pool:
{
  v19 = a6;
  v20 = a7;
  v21 = a11;
  v37 = SBUILegibilityImageSizeForContentSizeAndSettings(v19, a2);
  v38 = v22;
  UIRectCenteredIntegralRectScale();
  Height = CGRectGetHeight(v59);
  [v19 minFillHeight];
  if (Height < v24)
  {
    v25 = a8;
  }

  else
  {
    v25 = 0;
  }

  if (a10 == 4)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [v19 shadowColor];
  }
  v26 = ;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__1;
  v56 = __Block_byref_object_dispose__1;
  v57 = 0;
  v27.f64[0] = v37;
  v27.f64[1] = v38;
  v28 = MEMORY[0x1E69DCAB8];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __137__UIImage_SBUILegibilityAdditions__sbui_legibilityImageForSettings_scale_inputImage_inputSize_allowMinFillHeightHack_strength_type_pool___block_invoke;
  v40[3] = &unk_1E789EE58;
  v46 = vcvtq_f64_f32(vrndp_f32(vcvt_f32_f64(vmulq_f64(v27, vdupq_n_s64(0x3FC999999999999AuLL)))));
  v47 = a2;
  v48 = a3;
  selfCopy = self;
  v29 = v26;
  v41 = v29;
  v51 = v25;
  v30 = v20;
  v42 = v30;
  v31 = v19;
  v43 = v31;
  v45 = &v52;
  v50 = a10;
  v32 = v21;
  v44 = v32;
  v33 = [v28 sbf_imageFromContextWithSize:a10 scale:v32 type:v40 pool:*&v46 drawing:self];
  if (a9)
  {
    v34 = [v53[5] sbui_strikeImageForLegibilitySettings:v31 strength:a10 size:v32 type:*a9 pool:{v37, v38}];
  }

  else
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __137__UIImage_SBUILegibilityAdditions__sbui_legibilityImageForSettings_scale_inputImage_inputSize_allowMinFillHeightHack_strength_type_pool___block_invoke_3;
    v39[3] = &unk_1E789EE80;
    v39[5] = 0;
    v39[6] = 0;
    v39[4] = &v52;
    *&v39[7] = v37;
    *&v39[8] = v38;
    v34 = [MEMORY[0x1E69DCAB8] sbf_imageFromContextWithSize:a10 scale:v32 type:v39 pool:? drawing:?];
  }

  v35 = v34;

  _Block_object_dispose(&v52, 8);

  return v35;
}

@end