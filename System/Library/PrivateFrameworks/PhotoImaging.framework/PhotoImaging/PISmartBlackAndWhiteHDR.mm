@interface PISmartBlackAndWhiteHDR
+ (id)customAttributes;
- (float)createHueArray;
- (id)hueArrayImage:(float *)a3;
- (id)outputImage;
- (id)smartBlackWhiteKernel;
- (void)getNonNormalizedSettings:(id *)a3;
@end

@implementation PISmartBlackAndWhiteHDR

+ (id)customAttributes
{
  v42[8] = *MEMORY[0x1E69E9840];
  v41[0] = *MEMORY[0x1E695F6B8];
  v2 = *MEMORY[0x1E695F7D0];
  v40[0] = *MEMORY[0x1E695F798];
  v40[1] = v2;
  v3 = *MEMORY[0x1E695F7B8];
  v40[2] = *MEMORY[0x1E695F7B0];
  v40[3] = v3;
  v4 = *MEMORY[0x1E695F788];
  v40[4] = *MEMORY[0x1E695F7C0];
  v40[5] = v4;
  v40[6] = *MEMORY[0x1E695F778];
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:7];
  v42[0] = v21;
  v41[1] = @"inputStrength";
  v6 = *MEMORY[0x1E695F6E8];
  v34[0] = *MEMORY[0x1E695F6D8];
  v5 = v34[0];
  v34[1] = v6;
  v39[0] = &unk_1F471F8A0;
  v39[1] = &unk_1F471F8A0;
  v8 = *MEMORY[0x1E695F6D0];
  v35 = *MEMORY[0x1E695F6E0];
  v7 = v35;
  v36 = v8;
  v39[2] = &unk_1F471F8B0;
  v39[3] = &unk_1F471F8B0;
  v10 = *MEMORY[0x1E695F6F0];
  v37 = *MEMORY[0x1E695F6A0];
  v9 = v37;
  v38 = v10;
  v11 = *MEMORY[0x1E695F758];
  v39[4] = &unk_1F471F8C0;
  v39[5] = v11;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v34 count:6];
  v42[1] = v20;
  v41[2] = @"inputNeutralGamma";
  v32[0] = v5;
  v32[1] = v6;
  v33[0] = &unk_1F471F8D0;
  v33[1] = &unk_1F471F8D0;
  v32[2] = v7;
  v32[3] = v8;
  v33[2] = &unk_1F471F8B0;
  v33[3] = &unk_1F471F8B0;
  v32[4] = v9;
  v32[5] = v10;
  v33[4] = &unk_1F471F8A0;
  v33[5] = v11;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:6];
  v42[2] = v19;
  v41[3] = @"inputTone";
  v30[0] = v5;
  v30[1] = v6;
  v31[0] = &unk_1F471F8D0;
  v31[1] = &unk_1F471F8D0;
  v30[2] = v7;
  v30[3] = v8;
  v31[2] = &unk_1F471F8B0;
  v31[3] = &unk_1F471F8B0;
  v30[4] = v9;
  v30[5] = v10;
  v31[4] = &unk_1F471F8A0;
  v31[5] = v11;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:6];
  v42[3] = v18;
  v41[4] = @"inputHue";
  v28[0] = v5;
  v28[1] = v6;
  v29[0] = &unk_1F471F8D0;
  v29[1] = &unk_1F471F8D0;
  v28[2] = v7;
  v28[3] = v8;
  v29[2] = &unk_1F471F8B0;
  v29[3] = &unk_1F471F8B0;
  v28[4] = v9;
  v28[5] = v10;
  v29[4] = &unk_1F471F8A0;
  v29[5] = v11;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:6];
  v42[4] = v17;
  v41[5] = @"inputGrain";
  v26[0] = v5;
  v26[1] = v6;
  v27[0] = &unk_1F471F8A0;
  v27[1] = &unk_1F471F8A0;
  v26[2] = v7;
  v26[3] = v8;
  v27[2] = &unk_1F471F8B0;
  v27[3] = &unk_1F471F8B0;
  v26[4] = v9;
  v26[5] = v10;
  v27[4] = &unk_1F471F8A0;
  v27[5] = v11;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:6];
  v42[5] = v16;
  v41[6] = @"inputSeed";
  v24[0] = v5;
  v24[1] = v6;
  v25[0] = &unk_1F471F8A0;
  v25[1] = &unk_1F471F8A0;
  v24[2] = v7;
  v24[3] = v9;
  v25[2] = &unk_1F471F8B0;
  v25[3] = &unk_1F471F8A0;
  v24[4] = v10;
  v25[4] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:5];
  v42[6] = v12;
  v41[7] = @"inputScaleFactor";
  v22[0] = v5;
  v22[1] = v8;
  v23[0] = &unk_1F471F8A0;
  v23[1] = &unk_1F471F8B0;
  v22[2] = v9;
  v22[3] = v10;
  v23[2] = &unk_1F471F8B0;
  v23[3] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];
  v42[7] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:8];

  return v14;
}

- (id)outputImage
{
  v35[4] = *MEMORY[0x1E69E9840];
  if (self->inputImage && self->inputNeutralGamma && self->inputTone && self->inputStrength && self->inputScaleFactor)
  {
    v32 = 1.0;
    v3 = [(PISmartBlackAndWhiteHDR *)self hueArrayImage:&v32];
    if (v3)
    {
      v30 = 0u;
      *v31 = 0u;
      [(PISmartBlackAndWhiteHDR *)self getNonNormalizedSettings:&v30];
      v4 = [MEMORY[0x1E695F688] vectorWithX:v31[1] Y:v31[2] Z:v31[3] W:v32];
      v5 = [(CIImage *)self->inputImage imageByUnpremultiplyingAlpha];
      v6 = [MEMORY[0x1E695F688] vectorWithX:0.997222245 Y:0.00138888892 Z:*(&v30 + 3) W:v31[0]];
      v7 = [(PISmartBlackAndWhiteHDR *)self smartBlackWhiteKernel];
      [(CIImage *)self->inputImage extent];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v35[0] = v5;
      v35[1] = v3;
      v35[2] = v4;
      v35[3] = v6;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
      v17 = [v7 applyWithExtent:v16 arguments:{v9, v11, v13, v15}];

      v18 = [v17 imageByPremultiplyingAlpha];

      [(NSNumber *)self->inputGrain floatValue];
      if (v19 > 0.0)
      {
        v20 = v19;
        [(NSNumber *)self->inputScaleFactor floatValue];
        *&v22 = v21 * 100.0;
        v33[0] = @"inputISO";
        v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
        v34[0] = v23;
        v33[1] = @"inputAmount";
        *&v24 = v20;
        v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
        v33[2] = @"inputSeed";
        inputSeed = self->inputSeed;
        v34[1] = v25;
        v34[2] = inputSeed;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
        v28 = [v18 imageByApplyingFilter:@"PIPhotoGrainHDR" withInputParameters:v27];

        v18 = v28;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)smartBlackWhiteKernel
{
  if (smartBlackWhiteKernel_once != -1)
  {
    dispatch_once(&smartBlackWhiteKernel_once, &__block_literal_global_20711);
  }

  v3 = smartBlackWhiteKernel_singleton;

  return v3;
}

uint64_t __48__PISmartBlackAndWhiteHDR_smartBlackWhiteKernel__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _smartBlackAndWhiteHDR(__sample imageHDR, sampler2D hueImage, vec4 rgbWeights, vec4 normalizer) { float hueTableScaleFactor = rgbWeights.w float hueImageWidth = normalizer.x; float huePixelCenter = normalizer.y; float neutralGamma = normalizer.z; float phototone = normalizer.w; float bw = dot(imageHDR.rgb / 12.0, rgbWeights.rgb); bw = clamp(bw, 0.0, 1.0); vec3 lms; lms.x = dot(imageHDR.rgb, vec3(0.3139902162, 0.6395129383, 0.0464975462)); lms.y = dot(imageHDR.rgb, vec3(0.155372406, 0.7578944616, 0.0867014186)); lms.z = dot(imageHDR.rgb, vec3(0.017752387, 0.109442094, 0.8725692246)); lms = pow(lms, vec3(0.43)); float i = dot(lms, vec3(0.4, 0.4, 0.2)); float p = dot(lms, vec3(4.4550, -4.8510, 0.3960)); float t = dot(lms, vec3(0.8056, 0.3572, -1.1628)); float chroma = sqrt(p*p+t*t); float hue = 0.5 + (atan(t, p) / 6.28318530718); vec2 huePt = vec2(hue * hueImageWidth + huePixelCenter, 0.5); float hueGamma = hueTableScaleFactor * texture2D(hueImage, huePt).a; float cd = 0.06 + 0.53 * abs(i-0.5); float lowSaturationDamp = smoothstep(0.0, 1.0, (chroma)/cd); float intensityDamp = smoothstep(0.0, 1.0, 1.0 - i); float lowLuminosityDamp = smoothstep(0.0, 1.0, 25.0 * i); float hWeight = lowSaturationDamp * intensityDamp * lowLuminosityDamp; hueGamma -= 1; hueGamma *= hWeight; hueGamma += 1; bw = pow(bw, hueGamma); float bwSDR = clamp(bw * 12.0, 0.0, 1.0); float midLumWeight = bwSDR*(1.0 - bwSDR); float grayWeight = 1.0 - smoothstep(0.0, 1.0, chroma * 10.0); float nWeight = midLumWeight * grayWeight; neutralGamma -= 1; neutralGamma *= nWeight; neutralGamma *= -2; neutralGamma += 1; bw = pow(bw, neutralGamma); bw = bw * 12.0; bw = clamp(bw, 0.0, 12.0); float df0 = 0.812379; float result; if (bw < df0) { result = 1.8031*bw*bw*bw - 2.1972*bw*bw + 1.3823*bw; } else { float scale = 12.0 - df0; float x = (bw - df0) / scale; result = 1.8031*x*x*x - 2.1972*x*x + 1.3823*x; result = result * scale + df0; result -= 0.158305860; } bw = mix(bw, result, -phototone); return vec4(bw, bw, bw, imageHDR.a); }"}];;
  v1 = smartBlackWhiteKernel_singleton;
  smartBlackWhiteKernel_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)hueArrayImage:(float *)a3
{
  v19[5] = *MEMORY[0x1E69E9840];
  v4 = [(PISmartBlackAndWhiteHDR *)self createHueArray];
  v5 = [MEMORY[0x1E695DF88] dataWithLength:368];
  v6 = v5;
  v7 = *v4;
  for (i = 1; i != 360; ++i)
  {
    if (v7 < v4[i])
    {
      v7 = v4[i];
    }
  }

  v9 = [v5 mutableBytes];
  for (j = 0; j != 360; ++j)
  {
    *(v9 + j) = fmaxf(fminf((v4[j] * 255.0) / v7, 255.0), 0.0);
  }

  *a3 = v7;
  free(v4);
  v18[0] = *MEMORY[0x1E695F9A8];
  v11 = [MEMORY[0x1E695DFB0] null];
  v12 = *MEMORY[0x1E695F9A0];
  v18[1] = *MEMORY[0x1E695F9B8];
  v18[2] = v12;
  v19[0] = v11;
  v19[1] = MEMORY[0x1E695E110];
  v13 = *MEMORY[0x1E695F9C0];
  v19[2] = MEMORY[0x1E695E118];
  v19[3] = MEMORY[0x1E695E110];
  v14 = *MEMORY[0x1E695F990];
  v18[3] = v13;
  v18[4] = v14;
  v19[4] = MEMORY[0x1E695E118];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];

  v16 = [MEMORY[0x1E695F658] imageWithBitmapData:v6 bytesPerRow:368 size:*MEMORY[0x1E695F898] format:v15 options:{360.0, 1.0}];

  return v16;
}

- (float)createHueArray
{
  memset(v29, 0, sizeof(v29));
  [(PISmartBlackAndWhiteHDR *)self getNonNormalizedSettings:v29];
  v2 = malloc_type_calloc(0x168uLL, 4uLL, 0x100004052888210uLL);
  v3 = 0;
  v4 = xmmword_1C7845DD0;
  v22 = vdupq_n_s32(0x40C90FDBu);
  v23 = vdupq_n_s32(0x43B38000u);
  v20 = vdupq_lane_s32(*(v29 + 4), 0);
  v21 = vdupq_n_s32(0x3EE66666u);
  __asm { FMOV            V0.4S, #1.0 }

  v18 = _Q0;
  v19 = vdupq_lane_s32(*(v29 + 8), 0);
  __asm { FMOV            V0.4S, #3.0 }

  v17 = _Q0;
  do
  {
    v27 = v4;
    v11 = vmulq_f32(vsubq_f32(vdivq_f32(vcvtq_f32_u32(v4), v23), v20), v22);
    v28 = vcvtq_f64_f32(*v11.f32);
    __x = vcvt_hight_f64_f32(v11);
    v25 = cos(__x.f64[1]);
    v12.f64[0] = cos(__x.f64[0]);
    v12.f64[1] = v25;
    v26 = v12;
    __x.f64[0] = cos(v28.f64[1]);
    v13.f64[0] = cos(v28.f64[0]);
    v13.f64[1] = __x.f64[0];
    v14 = vmlaq_f32(v18, vcvt_hight_f32_f64(vcvt_f32_f64(v13), v26), v19);
    v15 = vbslq_s8(vcgtq_f32(v21, v14), v21, v14);
    *&v2[v3] = vbslq_s8(vcgtq_f32(v15, v17), v17, v15);
    v15.i64[0] = 0x400000004;
    v15.i64[1] = 0x400000004;
    v4 = vaddq_s32(v27, v15);
    v3 += 4;
  }

  while (v3 != 360);
  return v2;
}

- (void)getNonNormalizedSettings:(id *)a3
{
  a3->var0 = 1;
  [(NSNumber *)self->inputHue floatValue];
  a3->var1 = v5;
  [(NSNumber *)self->inputStrength floatValue];
  a3->var2 = v6;
  [(NSNumber *)self->inputNeutralGamma floatValue];
  a3->var3 = v7;
  [(NSNumber *)self->inputTone floatValue];
  v28 = v8;
  a3->var4 = v8;
  var1 = a3->var1;
  var2 = a3->var2;
  v10 = var2;
  v11 = var2 * cos((0.60167 - var1) * 6.28318531) + 1.0;
  if (v11 <= 1.0)
  {
    v12 = v11 * -2.0 + 3.0;
  }

  else
  {
    v12 = (v11 + -1.0) * -0.550000012 + 1.0;
  }

  v13 = v12;
  v14 = powf(0.3, v13);
  v15 = v10 * cos((0.8663 - var1) * 6.28318531) + 1.0;
  if (v15 <= 1.0)
  {
    v16 = v15 * -2.0 + 3.0;
  }

  else
  {
    v16 = (v15 + -1.0) * -0.550000012 + 1.0;
  }

  v17 = v16;
  v18 = powf(0.6, v17);
  v19 = v10 * cos((0.22284 - var1) * 6.28318531) + 1.0;
  if (v19 <= 1.0)
  {
    v20 = v19 * -2.0 + 3.0;
  }

  else
  {
    v20 = (v19 + -1.0) * -0.550000012 + 1.0;
  }

  v21 = v20;
  v22 = powf(0.1, v21);
  v23 = v22 + (v14 + v18);
  a3->var5[0] = v14 / v23;
  a3->var5[1] = v18 / v23;
  a3->var5[2] = v22 / v23;
  if (a3->var0)
  {
    a3->var0 = 0;
    v24 = (var1 * 0.5) + 0.35;
    if (v24 < 0.0)
    {
      v24 = v24 + 1.0;
    }

    if (var2 <= 0.5)
    {
      v25 = var2 * 0.8;
    }

    else
    {
      v25 = ((var2 + -0.5) * 1.2) + 0.4;
    }

    a3->var1 = v24;
    a3->var2 = v25;
    v26 = v28 + v28;
    if (v28 <= 0.0)
    {
      v26 = v28;
    }

    a3->var3 = a3->var3 + 1.0;
    a3->var4 = v26;
  }
}

@end