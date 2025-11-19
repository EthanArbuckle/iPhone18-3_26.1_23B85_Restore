@interface PISelectiveColorFilter
+ (double)iptHueAngleFromRed:(double)a3 green:(double)a4 blue:(double)a5;
+ (id)convertFromIPT:(id)a3;
+ (id)convertToIPT:(id)a3;
+ (id)selectiveColorKernels;
+ (void)iptFromLinearInto:(float *)a3 fromRed:(float)a4 green:(float)a5 blue:(float)a6;
- (id)hueSatLumTable;
- (id)outputImage;
@end

@implementation PISelectiveColorFilter

- (id)outputImage
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = self->_inputImage;
  v4 = [PISelectiveColorFilter convertToIPT:v3];

  v5 = [(PISelectiveColorFilter *)self hueSatLumTable];
  v6 = +[PISelectiveColorFilter selectiveColorKernels];
  v7 = [v6 objectForKeyedSubscript:@"iptLumHueSatTable"];

  [v4 extent];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v20[0] = v4;
  v20[1] = v5;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v17 = [v7 applyWithExtent:&__block_literal_global_56_26237 roiCallback:v16 arguments:0 options:{v9, v11, v13, v15}];

  v18 = [PISelectiveColorFilter convertFromIPT:v17];

  return v18;
}

double __37__PISelectiveColorFilter_outputImage__block_invoke(uint64_t a1, int a2)
{
  if (a2 > 0)
  {
    return 0.0;
  }

  return result;
}

- (id)hueSatLumTable
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  v4 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
  v51 = v3;
  v5 = [MEMORY[0x1E695F610] colorWithRed:v3 green:0.0 blue:0.0 alpha:0.0 colorSpace:1.0];
  [v4 setValue:v5 forKey:@"inputColor"];

  v52 = v4;
  v6 = [v4 outputImage];
  v7 = [v6 imageByCroppingToRect:{0.0, 0.0}];

  v8 = +[PISelectiveColorFilter selectiveColorKernels];
  v54 = [v8 objectForKeyedSubscript:@"add_gaussian"];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = self->_inputCorrections;
  v56 = [(NSArray *)obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v56)
  {
    v55 = *v60;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v60 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v59 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"red"];
        v12 = [v10 objectForKeyedSubscript:@"green"];
        v13 = [v10 objectForKeyedSubscript:@"blue"];
        v14 = [v10 objectForKeyedSubscript:@"spread"];
        v15 = [v10 objectForKeyedSubscript:@"hueShift"];
        v16 = [v10 objectForKeyedSubscript:@"saturation"];
        v17 = [v10 objectForKeyedSubscript:@"luminance"];
        [v14 doubleValue];
        if (v18 >= 0.0000001)
        {
          v19 = v18;
        }

        else
        {
          v19 = 0.0000001;
        }

        [v15 doubleValue];
        if (v20 != 0.0 || ([v16 doubleValue], v21 != 0.0) || (objc_msgSend(v17, "doubleValue"), v22 != 0.0))
        {
          [v7 extent];
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v63[0] = v7;
          v63[1] = &unk_1F471FBA0;
          v63[2] = v15;
          v63[3] = v16;
          v63[4] = v17;
          v57 = v16;
          v58 = v14;
          v31 = v11;
          v32 = MEMORY[0x1E696AD98];
          v33 = v17;
          v34 = v13;
          [v31 doubleValue];
          v36 = v35;
          [v12 doubleValue];
          v38 = v37;
          [v13 doubleValue];
          [PISelectiveColorFilter iptHueAngleFromRed:v36 green:v38 blue:v39];
          v40 = [v32 numberWithDouble:?];
          v63[5] = v40;
          v41 = [MEMORY[0x1E696AD98] numberWithDouble:v19 * 0.0833333333 * (v19 * 0.0833333333)];
          v63[6] = v41;
          v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:7];
          v43 = [v54 applyWithExtent:&__block_literal_global_20 roiCallback:v42 arguments:{v24, v26, v28, v30}];
          v44 = v7;
          v7 = v43;

          v13 = v34;
          v17 = v33;
          v16 = v57;

          v11 = v31;
          v14 = v58;
        }
      }

      v56 = [(NSArray *)obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v56);
  }

  v45 = [MEMORY[0x1E695F610] colorWithRed:v51 green:0.0 blue:1.0 alpha:1.0 colorSpace:1.0];
  [v52 setValue:v45 forKey:@"inputColor"];

  v46 = [MEMORY[0x1E695F648] filterWithName:@"CIAdditionCompositing"];
  [v46 setValue:v7 forKey:@"inputBackgroundImage"];
  v47 = [v52 outputImage];
  [v46 setValue:v47 forKey:@"inputImage"];

  v48 = [v46 outputImage];

  v49 = [v48 imageByCroppingToRect:{0.0, 0.0, 360.0, 1.0}];

  CGColorSpaceRelease(v51);

  return v49;
}

+ (id)convertFromIPT:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695F108];
  v4 = a3;
  v5 = CGColorSpaceCreateWithName(v3);
  v6 = +[PISelectiveColorFilter selectiveColorKernels];
  v7 = [v6 objectForKeyedSubscript:@"iptToSRGB"];

  [v4 extent];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v20[0] = v4;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];

  v17 = [v7 applyWithExtent:v16 arguments:{v9, v11, v13, v15}];

  v18 = [v17 imageByColorMatchingColorSpaceToWorkingSpace:v5];

  CGColorSpaceRelease(v5);

  return v18;
}

+ (id)convertToIPT:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695F108];
  v4 = a3;
  v5 = CGColorSpaceCreateWithName(v3);
  v6 = [v4 imageByColorMatchingWorkingSpaceToColorSpace:v5];

  v7 = +[PISelectiveColorFilter selectiveColorKernels];
  v8 = [v7 objectForKeyedSubscript:@"srgbToIPT"];

  [v6 extent];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v20[0] = v6;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v18 = [v8 applyWithExtent:v17 arguments:{v10, v12, v14, v16}];

  CGColorSpaceRelease(v5);

  return v18;
}

+ (id)selectiveColorKernels
{
  if (selectiveColorKernels_onceToken != -1)
  {
    dispatch_once(&selectiveColorKernels_onceToken, &__block_literal_global_26303);
  }

  v3 = selectiveColorKernels_selectiveColorKernels;

  return v3;
}

uint64_t __47__PISelectiveColorFilter_selectiveColorKernels__block_invoke()
{
  v0 = [MEMORY[0x1E695F660] kernelsDictionaryWithString:{@"kernel vec4 iptLumHueSatTable(sampler image, __table sampler hueSatLumTable)\n{\nvec4 im = sample(image, samplerCoord(image)) \nvec4 result = im;\nfloat hue = atan(im.b, im.g);\nfloat hueIdx = 359.0 * 0.5 * (hue/3.1416 + 1.0);\nhueIdx = clamp(hueIdx, 0.0, 359.0) + 0.5;\nfloat hueChange = (sample(hueSatLumTable, samplerTransform(hueSatLumTable, vec2(hueIdx, 0.5))).r);\nfloat satChange = (sample(hueSatLumTable, samplerTransform(hueSatLumTable, vec2(hueIdx, 0.5))).g);\nfloat lumChange = (sample(hueSatLumTable, samplerTransform(hueSatLumTable, vec2(hueIdx, 0.5))).b);\nfloat chroma = sqrt(im.g*im.g+im.b*im.b) ;\nchroma *= satChange ;\nhue += hueChange ;\nvec3 adjustIm = im.rgb;\nfloat hueAngle = hue  ;\nlumChange = mix(1.0, lumChange, clamp(chroma, -0.7, 0.7));\nadjustIm.r *= lumChange;\nadjustIm.g = chroma * cos(hueAngle) ;\nadjustIm.b = chroma * sin(hueAngle) ;\nresult.rgb = adjustIm.rgb;\nresult.a = im.a ;\nreturn result ;\n}\nkernel vec4 srgbToIPT(sampler image){\nvec4 im = sample(image, samplerCoord(image));\nvec3 lms, ipt;\nlms = im.r * vec3(0.3139902162, 0.155372406, 0.017752387) +\nim.g * vec3(0.6395129383, 0.7578944616, 0.109442094) +\nim.b * vec3(0.0464975462, 0.0867014186, 0.8725692246);\nlms = sign(lms)*pow(abs(lms), vec3(0.43, 0.43, 0.43));\nipt = lms.r * vec3(0.4, 4.455, 0.8056) +\nlms.g * vec3(0.4, -4.851, 0.3572) +\nlms.b * vec3(0.2, 0.3960, -1.1628);\nreturn vec4(ipt, im.a);\n}\nkernel vec4 iptToSRGB(sampler image){\nvec4 im = sample(image, samplerCoord(image));\nvec3 lms, rgb;\nlms = im.rrr +\nim.g * vec3(0.09756893, -0.11387649, 0.03261511) +\nim.b * vec3(0.20522644, 0.13321716, -0.67688718);\nlms = sign(lms)*pow(abs(lms), vec3(1.0/.43));\nrgb = lms.r * vec3( 5.472212058380287, -1.125241895533569, 0.029801651173470) +\nlms.g * vec3(-4.641960098354470, 2.293170938060623, -0.193180728257140) +\nlms.b * vec3(0.169637076827974, -0.167895202223709, 1.163647892783812);\nreturn vec4(rgb, im.a);\n}\nkernel vec4 add_gaussian(sampler srcTable, float tableSize, float hueAmplitude, float satAmplitude, float lumAmplitude, float gaussX, float gaussSigmaSquared) {\nvec2 d = destCoord();\nvec4 src = sample(srcTable, samplerCoord(srcTable));\nfloat x = d.x / (tableSize - 1.0);\nfloat dist = min(min(abs(x - gaussX), abs(x - 1.0 - gaussX)), abs(x + 1.0 - gaussX));\nfloat p = -((dist * dist) / (2.0 * gaussSigmaSquared));\nfloat ep = exp(p);\nfloat hue = hueAmplitude * ep;\nfloat sat = satAmplitude * ep;\nfloat lum = lumAmplitude * ep;\nfloat h = clamp(src.r + hue, -1.0, 1.0);\nfloat s = clamp(src.g + sat, -1.0, 1.0);\nfloat l = clamp(src.b + lum, -1.0, 1.0);\nreturn vec4(h, s, l, 1.0);\n}\n\n"}];;
  v1 = selectiveColorKernels_selectiveColorKernels;
  selectiveColorKernels_selectiveColorKernels = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (double)iptHueAngleFromRed:(double)a3 green:(double)a4 blue:(double)a5
{
  v9 = *MEMORY[0x1E69E9840];
  *&a3 = a3;
  *&a4 = a4;
  *&a5 = a5;
  [a1 iptFromLinearInto:v8 fromRed:a3 green:a4 blue:a5];
  [a1 hueAngleFrom:v8];
  return v6;
}

+ (void)iptFromLinearInto:(float *)a3 fromRed:(float)a4 green:(float)a5 blue:(float)a6
{
  v7 = 0;
  v25 = *MEMORY[0x1E69E9840];
  v8 = &dword_1C784626C;
  do
  {
    v9 = (*(v8 - 1) * a5) + (*(v8 - 2) * a4);
    v10 = *v8;
    v8 += 3;
    *(&v21 + v7) = v9 + (v10 * a6);
    v7 += 4;
  }

  while (v7 != 12);
  for (i = 0; i != 12; i += 4)
  {
    v12 = *(&v21 + i);
    v13 = powf(fabsf(v12), 0.43);
    if (v12 < 0.0)
    {
      v13 = -v13;
    }

    *(&v21 + i) = v13;
  }

  v14 = 0;
  v15 = v21;
  v16 = &dword_1C7846290;
  v17 = v22;
  do
  {
    v18 = (*(&v15 + 1) * *(v16 - 1)) + (*(v16 - 2) * *&v15);
    v19 = *v16;
    v16 += 3;
    *(&v23 + v14) = v18 + (v19 * v17);
    v14 += 4;
  }

  while (v14 != 12);
  v20 = v24;
  *a3 = v23;
  *(a3 + 2) = v20;
}

@end