@interface PIRAWFaceBalance
+ (CGColorSpace)linearWideGamutColorSpace;
+ (CGColorSpace)newLinearWideGamutColorSpace;
+ (id)faceBalanceKernels;
- (id)outputImage;
@end

@implementation PIRAWFaceBalance

+ (CGColorSpace)linearWideGamutColorSpace
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PIRAWFaceBalance_linearWideGamutColorSpace__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (linearWideGamutColorSpace_onceToken != -1)
  {
    dispatch_once(&linearWideGamutColorSpace_onceToken, block);
  }

  return linearWideGamutColorSpace_s_linearWideGamutColorSpaceRef;
}

uint64_t __45__PIRAWFaceBalance_linearWideGamutColorSpace__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) newLinearWideGamutColorSpace];
  linearWideGamutColorSpace_s_linearWideGamutColorSpaceRef = result;
  return result;
}

+ (CGColorSpace)newLinearWideGamutColorSpace
{
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:&newLinearWideGamutColorSpace_data length:529];
  v3 = CGColorSpaceCreateWithICCData(v2);

  return v3;
}

+ (id)faceBalanceKernels
{
  if (faceBalanceKernels_onceToken != -1)
  {
    dispatch_once(&faceBalanceKernels_onceToken, &__block_literal_global_18379);
  }

  v3 = faceBalanceKernels_faceBalanceKernels;

  return v3;
}

uint64_t __38__PIRAWFaceBalance_faceBalanceKernels__block_invoke()
{
  v0 = [MEMORY[0x1E695F660] kernelsDictionaryWithString:{@"kernel vec4 facebalance(__sample src, vec2 gamma, vec3 matchMinusOrigStrength)\n{\nvec4 pix = src\npix.rgb = pow(max(pix.rgb, 0.0), vec3(gamma.x));\npix.rgb = pix.r * vec3(0.299, 0.595716, 0.211456) +\npix.g * vec3(0.587, -0.274453, -0.522591) +\npix.b * vec3(0.114, -0.321263, 0.311135);\nvec4 orig = pix ;\nfloat chroma = min(1.0, 2.0*sqrt(pix.g*pix.g + pix.b*pix.b));\npix.gb +=  matchMinusOrigStrength.rg;\nfloat strength = matchMinusOrigStrength.z*pow(chroma, .4) ;\npix.gb = mix(orig.gb, pix.gb, strength) ;\npix.rgb = pix.rrr +\npix.g * vec3(0.956296, -0.272122, -1.10699) +\npix.b * vec3(0.621024, -0.647381, 1.70461);\npix.rgb = max(pix.rgb, vec3(0.0));\npix.rgb = pow(pix.rgb, vec3(gamma.y));\nreturn pix;\n}\n\n"}];;
  v1 = faceBalanceKernels_faceBalanceKernels;
  faceBalanceKernels_faceBalanceKernels = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)outputImage
{
  v41[3] = *MEMORY[0x1E69E9840];
  v3 = [(PIRAWFaceBalance *)self inputImage];
  [(PIRAWFaceBalance *)self inputWarmth];
  v5 = v4;
  [(PIRAWFaceBalance *)self inputWarmth];
  v7 = (1.0 - v6) * 0.005 + v5 * 0.105;
  [(PIRAWFaceBalance *)self inputWarmth];
  v9 = v8;
  [(PIRAWFaceBalance *)self inputWarmth];
  v11 = (1.0 - v10) * 0.01 + v9 * -0.01;
  [(PIRAWFaceBalance *)self inputOrigI];
  v13 = v12;
  [(PIRAWFaceBalance *)self inputOrigQ];
  if (vabdd_f64(v7, v13) + vabdd_f64(v11, v14) >= 0.00000001)
  {
    v16 = v7 - v13;
    v17 = v11 - v14;
    v18 = [objc_opt_class() linearWideGamutColorSpace];
    v19 = [objc_opt_class() faceBalanceKernels];
    v20 = [v19 objectForKeyedSubscript:@"facebalance"];

    v21 = [(PIRAWFaceBalance *)self inputImage];
    v22 = [v21 imageByColorMatchingWorkingSpaceToColorSpace:v18];

    [v22 extent];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = [MEMORY[0x1E695F688] vectorWithX:0.25 Y:{4.0, v22}];
    v41[1] = v31;
    v32 = MEMORY[0x1E695F688];
    [(PIRAWFaceBalance *)self inputStrength];
    v34 = [v32 vectorWithX:v16 Y:v17 Z:v33];
    v41[2] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
    v36 = [v20 applyWithExtent:v35 arguments:{v24, v26, v28, v30}];

    v37 = [v36 imageByColorMatchingColorSpaceToWorkingSpace:v18];

    v38 = [(PIRAWFaceBalance *)self inputImage];
    [v38 extent];
    v39 = [v37 imageByCroppingToRect:?];

    v15 = v39;
  }

  else
  {
    v15 = v3;
  }

  return v15;
}

@end