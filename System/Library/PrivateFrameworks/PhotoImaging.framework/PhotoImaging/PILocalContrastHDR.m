@interface PILocalContrastHDR
+ (id)customAttributes;
- (id)_kernelLocalContrast;
- (id)outputImage;
@end

@implementation PILocalContrastHDR

+ (id)customAttributes
{
  v25[3] = *MEMORY[0x1E69E9840];
  v24[0] = *MEMORY[0x1E695F6B8];
  v2 = *MEMORY[0x1E695F7C0];
  v23[0] = *MEMORY[0x1E695F790];
  v23[1] = v2;
  v23[2] = *MEMORY[0x1E695F778];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v25[0] = v3;
  v24[1] = @"inputStrength";
  v20[0] = *MEMORY[0x1E695F698];
  v4 = v20[0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *MEMORY[0x1E695F6A0];
  v21[0] = v6;
  v21[1] = &unk_1F471F300;
  v8 = *MEMORY[0x1E695F6D8];
  v20[1] = v7;
  v20[2] = v8;
  v9 = *MEMORY[0x1E695F6D0];
  v21[2] = &unk_1F471F310;
  v21[3] = &unk_1F471F320;
  v10 = *MEMORY[0x1E695F6F0];
  v20[3] = v9;
  v20[4] = v10;
  v22 = *MEMORY[0x1E695F758];
  v11 = v22;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:5];
  v25[1] = v12;
  v24[2] = @"inputScale";
  v18[0] = v4;
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v19[0] = v14;
  v19[1] = &unk_1F471F330;
  v18[1] = v7;
  v18[2] = v8;
  v19[2] = &unk_1F471F340;
  v19[3] = &unk_1F471F350;
  v18[3] = v9;
  v18[4] = v10;
  v19[4] = v11;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v25[2] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

  return v16;
}

- (id)outputImage
{
  v63[5] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  v62[0] = @"inputRVector";
  v4 = [MEMORY[0x1E695F688] vectorWithX:0.333333 Y:0.333333 Z:0.333333 W:0.0];
  v63[0] = v4;
  v62[1] = @"inputGVector";
  v5 = [MEMORY[0x1E695F688] vectorWithX:0.333333 Y:0.333333 Z:0.333333 W:0.0];
  v63[1] = v5;
  v62[2] = @"inputBVector";
  v6 = [MEMORY[0x1E695F688] vectorWithX:0.333333 Y:0.333333 Z:0.333333 W:0.0];
  v63[2] = v6;
  v62[3] = @"inputAVector";
  v7 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
  v63[3] = v7;
  v62[4] = @"inputBiasVector";
  v8 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
  v63[4] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:5];
  v10 = [(CIImage *)inputImage imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v9];

  [MEMORY[0x1E69B3AB0] HLGOpticalScale];
  v12 = v11;
  v60[0] = @"inputMinComponents";
  v13 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
  v60[1] = @"inputMaxComponents";
  v61[0] = v13;
  v14 = [MEMORY[0x1E695F688] vectorWithX:v12 Y:v12 Z:v12 W:1.0];
  v61[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
  v16 = [v10 imageByApplyingFilter:@"CIColorClamp" withInputParameters:v15];

  [(NSNumber *)self->inputScale floatValue];
  v18 = v17;
  [(CIImage *)self->inputImage extent];
  v20 = v19;
  v21 = v18 / v20;
  [(NSNumber *)self->inputScale floatValue];
  v23 = v22;
  [(CIImage *)self->inputImage extent];
  v25 = v24;
  v26 = v23 / v25;
  v27 = [v16 imageByClampingToExtent];

  CGAffineTransformMakeScale(&v56, v21, v26);
  v28 = [v27 imageByApplyingTransform:&v56];
  v29 = [v28 imageByApplyingGaussianBlurWithSigma:5.0];

  [(NSNumber *)self->inputScale floatValue];
  v31 = v30;
  [(NSNumber *)self->inputScale floatValue];
  v33 = [v29 imageByCroppingToRect:{0.0, 0.0, v31, v32}];

  v34 = self->inputImage;
  v59[0] = v33;
  v58[0] = @"inputSmallImage";
  v58[1] = @"inputSpatialSigma";
  LODWORD(v35) = 5.0;
  v36 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
  v59[1] = v36;
  v58[2] = @"inputLumaSigma";
  LODWORD(v37) = 1041865114;
  v38 = [MEMORY[0x1E696AD98] numberWithFloat:v37];
  v59[2] = v38;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:3];
  v40 = [(CIImage *)v34 imageByApplyingFilter:@"CIEdgePreserveUpsampleFilter" withInputParameters:v39];

  [(CIImage *)self->inputImage extent];
  v41 = [v40 imageByCroppingToRect:?];

  v42 = [(PILocalContrastHDR *)self _kernelLocalContrast];
  [(CIImage *)self->inputImage extent];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v57[0] = self->inputImage;
  v57[1] = v41;
  v51 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  inputStrength = self->inputStrength;
  v57[2] = v51;
  v57[3] = inputStrength;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:4];
  v54 = [v42 applyWithExtent:v53 arguments:{v44, v46, v48, v50}];

  return v54;
}

- (id)_kernelLocalContrast
{
  if (_kernelLocalContrast_once != -1)
  {
    dispatch_once(&_kernelLocalContrast_once, &__block_literal_global_938);
  }

  v3 = _kernelLocalContrast_singleton;

  return v3;
}

uint64_t __42__PILocalContrastHDR__kernelLocalContrast__block_invoke()
{
  _kernelLocalContrast_singleton = [MEMORY[0x1E695F618] kernelWithString:{@"vec3 localContrast(vec3 im, vec3 shc, float amt) { float midAmt = amt vec3 neg = min(im, 0.0); vec3 pos = max(im, 1.0)-1.0; im = clamp(im, 0.0, 1.0); float y = dot(im, vec3(0.3333)); y = sqrt(y); y = y*(1.0-y); im = sqrt(im); float pivot = sqrt(shc.g); float a = midAmt*y; float b = -pivot*a; vec3 pix = im.r * vec3(0.299*a) + im.g * vec3(0.587*a) + im.b * vec3(0.114*a) + im + vec3(b); im = mix(im, vec3(pivot), -y*midAmt); im = mix(im, pix, 0.8); im = max(im, 0.0); im *= im; im = im + neg + pos; return im; } vec3 localContrastHLG(vec3 im, vec3 shc, float hlg_scale, float amt) { return localContrast(im.rgb/hlg_scale, shc.rgb/hlg_scale, amt).rgb * hlg_scale; } kernel vec4 _localContrastHDR(__sample im, __sample shc, float hlg_scale, float amt) { float max_comp = max(im.r, max(im.g, im.b)); float threshold = 0.75 * hlg_scale; if (max_comp <= 1.0) { im.rgb = localContrast(im.rgb, shc.rgb, amt); } else if (max_comp < threshold) { vec3 retSDR = localContrast(im.rgb, shc.rgb, amt); vec3 retHDR = localContrastHLG(im.rgb, shc.rgb, hlg_scale, amt); float lerp_t = (max_comp - 1.0) / (threshold - 1.0); im.rgb = mix(retSDR, retHDR, lerp_t); } else { im.rgb = localContrastHLG(im.rgb, shc.rgb, hlg_scale, amt); } return im; }"}];;

  return MEMORY[0x1EEE66BB8]();
}

@end