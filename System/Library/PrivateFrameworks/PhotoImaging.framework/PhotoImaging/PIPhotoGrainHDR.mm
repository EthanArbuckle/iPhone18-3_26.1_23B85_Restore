@interface PIPhotoGrainHDR
+ (id)customAttributes;
- (id)_grainBlendAndMixKernel;
- (id)_interpolateGrainKernel;
- (id)_paddedTileKernel;
- (id)outputImage;
@end

@implementation PIPhotoGrainHDR

+ (id)customAttributes
{
  v30[4] = *MEMORY[0x1E69E9840];
  v29[0] = *MEMORY[0x1E695F6B8];
  v2 = *MEMORY[0x1E695F7D0];
  v28[0] = *MEMORY[0x1E695F798];
  v28[1] = v2;
  v3 = *MEMORY[0x1E695F7B8];
  v28[2] = *MEMORY[0x1E695F7B0];
  v28[3] = v3;
  v4 = *MEMORY[0x1E695F788];
  v28[4] = *MEMORY[0x1E695F7C0];
  v28[5] = v4;
  v28[6] = *MEMORY[0x1E695F778];
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:7];
  v30[0] = v17;
  v29[1] = @"inputISO";
  v6 = *MEMORY[0x1E695F6E8];
  v22[0] = *MEMORY[0x1E695F6D8];
  v5 = v22[0];
  v22[1] = v6;
  v27[0] = &unk_1F471FC00;
  v27[1] = &unk_1F471FC00;
  v8 = *MEMORY[0x1E695F6A0];
  v23 = *MEMORY[0x1E695F6E0];
  v7 = v23;
  v24 = v8;
  v27[2] = &unk_1F471FC10;
  v27[3] = &unk_1F471FC00;
  v10 = *MEMORY[0x1E695F6F0];
  v25 = *MEMORY[0x1E695F6C8];
  v9 = v25;
  v26 = v10;
  v11 = *MEMORY[0x1E695F758];
  v27[4] = &unk_1F471FC20;
  v27[5] = v11;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v22 count:6];
  v30[1] = v16;
  v29[2] = @"inputAmount";
  v20[0] = v5;
  v20[1] = v6;
  v21[0] = &unk_1F471FC20;
  v21[1] = &unk_1F471FC20;
  v20[2] = v7;
  v20[3] = v8;
  v21[2] = &unk_1F471FC30;
  v21[3] = &unk_1F471FC30;
  v20[4] = v9;
  v20[5] = v10;
  v21[4] = &unk_1F471FC20;
  v21[5] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v30[2] = v12;
  v29[3] = @"inputSeed";
  v18[0] = v5;
  v18[1] = v6;
  v19[0] = &unk_1F471FC20;
  v19[1] = &unk_1F471FC20;
  v18[2] = v7;
  v18[3] = v8;
  v19[2] = &unk_1F471FC30;
  v19[3] = &unk_1F471FC20;
  v18[4] = v10;
  v19[4] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v30[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:4];

  return v14;
}

- (id)outputImage
{
  v67[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    goto LABEL_10;
  }

  [(NSNumber *)self->inputAmount floatValue];
  if (v3 < 0.001)
  {
    imageByPremultiplyingAlpha = self->inputImage;
    goto LABEL_11;
  }

  [(NSNumber *)self->inputISO floatValue];
  v6 = v5;
  if (outputImage_onceToken != -1)
  {
    dispatch_once(&outputImage_onceToken, &__block_literal_global_38_26855);
  }

  if (outputImage_inputGrain)
  {
    v7 = fminf(fmaxf(v6, 10.0), 3200.0);
    v8 = log10(v7);
    _interpolateGrainKernel = [(PIPhotoGrainHDR *)self _interpolateGrainKernel];
    [outputImage_inputGrain extent];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v67[0] = outputImage_inputGrain;
    *&v10 = v8;
    v18 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
    v67[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
    v20 = [_interpolateGrainKernel applyWithExtent:v19 arguments:{v11, v13, v15, v17}];

    [v20 extent];
    v22 = v21 + -2.0;
    [v20 extent];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    _paddedTileKernel = [(PIPhotoGrainHDR *)self _paddedTileKernel];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __30__PIPhotoGrainHDR_outputImage__block_invoke_2;
    v64[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v64[4] = v24;
    v64[5] = v26;
    v64[6] = v28;
    v64[7] = v30;
    v32 = [MEMORY[0x1E695F688] vectorWithX:v22 Y:v22 Z:1.0 / v22 W:1.0 / v22];
    v66 = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
    v34 = [_paddedTileKernel applyWithExtent:v64 roiCallback:v20 inputImage:v33 arguments:{*MEMORY[0x1E695F040], *(MEMORY[0x1E695F040] + 8), *(MEMORY[0x1E695F040] + 16), *(MEMORY[0x1E695F040] + 24)}];

    [(NSNumber *)self->inputSeed doubleValue];
    __src = v35;
    if (v35 != 0.0)
    {
      v57[1] = 0;
      v59 = 0;
      v61 = 0u;
      v62 = 0u;
      v58 = xmmword_1C7845D60;
      v60 = 0x61C8864E7A143579uLL;
      v57[0] = 0;
      XXH64_update(v57, &__src, 8uLL);
      v36 = XXH64_digest(v57);
      CGAffineTransformMakeTranslation(&v56, (v36 & 0x1FF), ((v36 >> 9) & 0x1FF));
      v37 = [v34 imageByApplyingTransform:&v56];

      v34 = v37;
    }

    *&v38 = grainParams(v7);
    v40 = v39;
    imageByUnpremultiplyingAlpha = [(CIImage *)self->inputImage imageByUnpremultiplyingAlpha];
    _grainBlendAndMixKernel = [(PIPhotoGrainHDR *)self _grainBlendAndMixKernel];
    [imageByUnpremultiplyingAlpha extent];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v65[0] = imageByUnpremultiplyingAlpha;
    v65[1] = v34;
    LODWORD(v43) = v40;
    v51 = [MEMORY[0x1E696AD98] numberWithFloat:v43];
    inputAmount = self->inputAmount;
    v65[2] = v51;
    v65[3] = inputAmount;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:4];
    v54 = [_grainBlendAndMixKernel applyWithExtent:v53 arguments:{v44, v46, v48, v50}];

    imageByPremultiplyingAlpha = [v54 imageByPremultiplyingAlpha];
  }

  else
  {
LABEL_10:
    imageByPremultiplyingAlpha = 0;
  }

LABEL_11:

  return imageByPremultiplyingAlpha;
}

void __30__PIPhotoGrainHDR_outputImage__block_invoke()
{
  v29[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DEF0] dataWithBytes:"1536 x 1536 noise grain image prov" length:32];
  v1 = *MEMORY[0x1E695F9F0];
  v28[0] = *MEMORY[0x1E695F9E8];
  v28[1] = v1;
  v29[0] = v0;
  v29[1] = @"PIPhotoGrainHDR";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v3 = objc_alloc(MEMORY[0x1E695F658]);
  v4 = [v3 initWithImageProvider:&__block_literal_global_78 width:1536 height:1536 format:*MEMORY[0x1E695F910] colorSpace:0 options:v2];
  v5 = applyGrainParams(v4, 10.0);
  v6 = applyGrainParams(v4, 50.0);
  v7 = applyGrainParams(v4, 400.0);
  v8 = applyGrainParams(v4, 3200.0);
  v9 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _grainGenCombineHDR (__sample r, __sample g, __sample b, __sample a)\n{ return vec4(r.x, g.x, b.x, a.x) }"}];;
  [v8 extent];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v27[0] = v5;
  v27[1] = v6;
  v27[2] = v7;
  v27[3] = v8;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  v19 = [v9 applyWithExtent:v18 arguments:{v11, v13, v15, v17}];

  v20 = [v19 imageByCroppingToRect:{511.0, 511.0, 514.0, 514.0}];

  CGAffineTransformMakeTranslation(&v26, -511.0, -511.0);
  v21 = [v20 imageByApplyingTransform:&v26];

  v22 = outputImage_inputGrain;
  outputImage_inputGrain = v21;

  v23 = outputImage_inputGrain;
  CGAffineTransformMakeTranslation(&v26, -1.0, -1.0);
  v24 = [v23 imageByApplyingTransform:&v26];
  v25 = outputImage_inputGrain;
  outputImage_inputGrain = v24;
}

- (id)_paddedTileKernel
{
  if (_paddedTileKernel_once != -1)
  {
    dispatch_once(&_paddedTileKernel_once, &__block_literal_global_18_26886);
  }

  v3 = _paddedTileKernel_singleton;

  return v3;
}

uint64_t __36__PIPhotoGrainHDR__paddedTileKernel__block_invoke()
{
  v0 = [MEMORY[0x1E695F690] kernelWithString:@"kernel vec2 _paddedTile2(vec4 k) { return fract(destCoord() * k.zw) * k.xy + vec2(1.0) }\n"];;
  v1 = _paddedTileKernel_singleton;
  _paddedTileKernel_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_grainBlendAndMixKernel
{
  if (_grainBlendAndMixKernel_once != -1)
  {
    dispatch_once(&_grainBlendAndMixKernel_once, &__block_literal_global_26892);
  }

  v3 = _grainBlendAndMixKernel_singleton;

  return v3;
}

uint64_t __42__PIPhotoGrainHDR__grainBlendAndMixKernel__block_invoke()
{
  v26 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _grainBlendAndMixHDR(__sample img, __sample grainImage, float contrast, float mixAmount) __attribute__((preserves_opacity)) \n{\n  vec3 rgb = img.rgb\n  float luminance = clamp(dot(rgb, vec3(.333333)), 0.0, 1.0); \n  float gamma = 4.01 - 2.0*luminance;\n  rgb = sign(rgb) * pow(abs(rgb), vec3(1.0/gamma));\n  float grain = grainImage.r - 0.5;\n  float mult = contrast * grain;\n  rgb += (max(luminance, 0.5) * mult * (1.0-luminance));\n  rgb = sign(rgb) * pow(abs(rgb), vec3(gamma));\n  rgb = min(rgb, 12.0);\n  return mix(img, vec4(rgb, img.a), mixAmount);\n}"}];;
  v1 = _grainBlendAndMixKernel_singleton;
  _grainBlendAndMixKernel_singleton = v0;

  result = [_grainBlendAndMixKernel_singleton preservesOpacity];
  if ((result & 1) == 0)
  {
    v3 = MEMORY[0x1E69B3D78];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_69);
    }

    v4 = MEMORY[0x1E69B3D70];
    v5 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = v5;
      v8 = [v6 stringWithFormat:@"_grainBlendAndMixKernel kernel should have preservesOpacity set to true"];
      v22 = 138543362;
      v23 = v8;
      _os_log_impl(&dword_1C7694000, v7, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", &v22, 0xCu);

      v9 = *v3;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v9 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_69);
        }

        goto LABEL_9;
      }

      if (v9 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_69);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
LABEL_9:
      v10 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
        v12 = MEMORY[0x1E696AF00];
        v13 = specific;
        v14 = v10;
        v15 = [v12 callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        v22 = 138543618;
        v23 = specific;
        v24 = 2114;
        v25 = v16;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v22, 0x16u);
      }

      return _NUAssertContinueHandler();
    }

    v17 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v18 = MEMORY[0x1E696AF00];
      v19 = v17;
      v20 = [v18 callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      v22 = 138543362;
      v23 = v21;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v22, 0xCu);
    }

    return _NUAssertContinueHandler();
  }

  return result;
}

- (id)_interpolateGrainKernel
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PIPhotoGrainHDR__interpolateGrainKernel__block_invoke;
  block[3] = &unk_1E82AC670;
  v6 = @"kernel vec4 _blendGrainsHDR(__sample isoImages, float log10iso)\n{\n  vec4 c = isoImages; \n  float mix10_50    = mix(c.r, c.g, log10iso*1.43067655809 \n                                           - 1.43067655809); \n  float mix50_400   = mix(c.g, c.b, log10iso*1.10730936496 \n                                           - 1.88128539659); \n  float mix400_3200 = mix(c.b, c.a, log10iso*1.10730936496 \n                                           - 2.88128539659); \n  float v = compare(log10iso - 1.69897000434,                     mix10_50,                     compare(log10iso - 2.60205999133,                             mix50_400,                             mix400_3200)); \n  return vec4(v,v,v,1.0);\n}";
  if (_interpolateGrainKernel_once != -1)
  {
    dispatch_once(&_interpolateGrainKernel_once, block);
  }

  v2 = _interpolateGrainKernel_singleton;
  v3 = _interpolateGrainKernel_singleton;

  return v2;
}

uint64_t __42__PIPhotoGrainHDR__interpolateGrainKernel__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E695F618] kernelWithString:*(a1 + 32)];
  v2 = _interpolateGrainKernel_singleton;
  _interpolateGrainKernel_singleton = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end