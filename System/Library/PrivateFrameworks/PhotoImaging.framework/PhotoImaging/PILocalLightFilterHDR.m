@interface PILocalLightFilterHDR
+ (id)customAttributes;
- (id)_polyKernelHDR;
- (id)_shadowKernelHDR;
- (id)outputImage;
@end

@implementation PILocalLightFilterHDR

+ (id)customAttributes
{
  v36[5] = *MEMORY[0x1E69E9840];
  v35[0] = *MEMORY[0x1E695F6B8];
  v2 = *MEMORY[0x1E695F7C0];
  v34[0] = *MEMORY[0x1E695F790];
  v34[1] = v2;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v36[0] = v19;
  v35[1] = @"inputLocalLight";
  v4 = *MEMORY[0x1E695F6E8];
  v26[0] = *MEMORY[0x1E695F6D8];
  v3 = v26[0];
  v26[1] = v4;
  v33[0] = &unk_1F471F860;
  v33[1] = &unk_1F471F860;
  v6 = *MEMORY[0x1E695F6D0];
  v27 = *MEMORY[0x1E695F6E0];
  v5 = v27;
  v28 = v6;
  v33[2] = &unk_1F471F870;
  v33[3] = &unk_1F471F880;
  v8 = *MEMORY[0x1E695F6C8];
  v29 = *MEMORY[0x1E695F6A0];
  v7 = v29;
  v30 = v8;
  v33[4] = &unk_1F471F850;
  v33[5] = &unk_1F471F850;
  v10 = *MEMORY[0x1E695F758];
  v11 = *MEMORY[0x1E695F698];
  v31 = *MEMORY[0x1E695F6F0];
  v9 = v31;
  v32 = v11;
  v33[6] = v10;
  v33[7] = @"NSNumber";
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v26 count:8];
  v36[1] = v18;
  v35[2] = @"inputSmartShadows";
  v24[0] = v3;
  v24[1] = v4;
  v25[0] = &unk_1F471F890;
  v25[1] = &unk_1F471F890;
  v24[2] = v5;
  v24[3] = v6;
  v25[2] = &unk_1F471F880;
  v25[3] = &unk_1F471F880;
  v24[4] = v7;
  v24[5] = v8;
  v25[4] = &unk_1F471F850;
  v25[5] = &unk_1F471F850;
  v24[6] = v9;
  v25[6] = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:7];
  v36[2] = v12;
  v35[3] = @"inputLightMapWidth";
  v22[0] = v3;
  v22[1] = v7;
  v23[0] = &unk_1F471F850;
  v23[1] = &unk_1F471F850;
  v13 = *MEMORY[0x1E695F718];
  v22[2] = v9;
  v22[3] = v11;
  v23[2] = v13;
  v23[3] = @"NSNumber";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];
  v36[3] = v14;
  v35[4] = @"inputLightMapHeight";
  v20[0] = v3;
  v20[1] = v7;
  v21[0] = &unk_1F471F850;
  v21[1] = &unk_1F471F850;
  v20[2] = v9;
  v20[3] = v11;
  v21[2] = v13;
  v21[3] = @"NSNumber";
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
  v36[4] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:5];

  return v16;
}

- (id)outputImage
{
  v66[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    v35 = 0;
    goto LABEL_25;
  }

  [(NSNumber *)self->inputLocalLight doubleValue];
  if (fabs(v3) < 1.0e-10 && ([(NSNumber *)self->inputSmartShadows doubleValue], fabs(v4) < 1.0e-10) || !self->inputLightMap && !self->inputLightMapImage)
  {
    v35 = self->inputImage;
    goto LABEL_25;
  }

  inputGuideImage = self->inputGuideImage;
  if (!inputGuideImage)
  {
    inputGuideImage = self->inputImage;
  }

  v6 = inputGuideImage;
  [(CIImage *)v6 extent];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CIImage *)self->inputImage extent];
  v70.origin.x = v15;
  v70.origin.y = v16;
  v70.size.width = v17;
  v70.size.height = v18;
  v68.origin.x = v8;
  v68.origin.y = v10;
  v68.size.width = v12;
  v68.size.height = v14;
  if (!CGRectEqualToRect(v68, v70))
  {
    __assert_rtn("[PILocalLightFilterHDR outputImage]", "PILocalLightHDR.m", 683, "CGRectEqualToRect([guideImage extent], [inputImage extent])");
  }

  inputLightMapImage = self->inputLightMapImage;
  if (inputLightMapImage)
  {
    v20 = _scaledLightMapImage(inputLightMapImage, v6);
    if (v20)
    {
LABEL_11:
      v21 = [(PILocalLightFilterHDR *)self _polyKernelHDR];
      if (!self->inputImage)
      {
        __assert_rtn("[PILocalLightFilterHDR outputImage]", "PILocalLightHDR.m", 699, "inputImage != nil");
      }

      if (!v6)
      {
        __assert_rtn("[PILocalLightFilterHDR outputImage]", "PILocalLightHDR.m", 700, "guideImage != nil");
      }

      if (!self->inputLocalLight)
      {
        __assert_rtn("[PILocalLightFilterHDR outputImage]", "PILocalLightHDR.m", 702, "inputLocalLight != nil");
      }

      v22 = v21;
      [v20 extent];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [(CIImage *)self->inputImage extent];
      v71.origin.x = v31;
      v71.origin.y = v32;
      v71.size.width = v33;
      v71.size.height = v34;
      v69.origin.x = v24;
      v69.origin.y = v26;
      v69.size.width = v28;
      v69.size.height = v30;
      if (!CGRectEqualToRect(v69, v71))
      {
        __assert_rtn("[PILocalLightFilterHDR outputImage]", "PILocalLightHDR.m", 703, "CGRectEqualToRect([lightMapImage extent], [inputImage extent])");
      }

      v35 = self->inputImage;
      [(NSNumber *)self->inputLocalLight doubleValue];
      if (fabs(v36) >= 1.0e-10)
      {
        [(CIImage *)self->inputImage extent];
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v66[0] = v35;
        v66[1] = v20;
        v66[2] = self->inputLocalLight;
        v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
        v46 = [v22 applyWithExtent:v45 arguments:{v38, v40, v42, v44}];

        v35 = v46;
      }

      [(NSNumber *)self->inputSmartShadows doubleValue];
      if (fabs(v47) >= 1.0e-10)
      {
        v48 = [(PILocalLightFilterHDR *)self _shadowKernelHDR];
        [(CIImage *)self->inputImage extent];
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v65[0] = v35;
        v65[1] = v20;
        v65[2] = self->inputSmartShadows;
        v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:3];
        v58 = [v48 applyWithExtent:v57 arguments:{v50, v52, v54, v56}];

        v35 = v58;
      }

      goto LABEL_24;
    }
  }

  else
  {
    inputLightMap = self->inputLightMap;
    inputLightMapWidth = self->inputLightMapWidth;
    inputLightMapHeight = self->inputLightMapHeight;
    v62 = v6;
    v63 = _lightMapImageFromData(inputLightMap, inputLightMapWidth, inputLightMapHeight);
    v20 = _scaledLightMapImage(v63, v62);

    if (v20)
    {
      goto LABEL_11;
    }
  }

  v35 = self->inputImage;
LABEL_24:

LABEL_25:

  return v35;
}

- (id)_polyKernelHDR
{
  if (_polyKernelHDR_once != -1)
  {
    dispatch_once(&_polyKernelHDR_once, &__block_literal_global_63_19954);
  }

  v3 = _polyKernelHDR_singleton;

  return v3;
}

uint64_t __39__PILocalLightFilterHDR__polyKernelHDR__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _polyKernelHDR(__sample im, __sample adj, float str) { adj.r = 3.4*adj.r-1.2 vec3 neg = min(im.rgb, 0.0); vec3 pos = max(im.rgb, 1.0)-1.0; im.rgb = clamp(im.rgb, 0.0, 1.0); vec4 orig = im; float y = sqrt(dot(im.rgb, vec3(.33333))); float s = mix(0.0, adj.r, str); vec3 gain = s > 0.0 ? vec3(1.5*s) : vec3(1.75*s, 1.75*s, 1.55*s); im.rgb = im.rgb*im.rgb*gain + im.rgb*(1.0-gain); im.rgb = (clamp(im.rgb, 0.0, 1.0)); float midAmt = min(str, .5); y = y*(1.0-y); im.rgb = sqrt(im.rgb); float pivot = max(adj.g, 0.5); float a = midAmt*y; float b = -pivot*a; vec3 pix = im.r * vec3(0.299*a) + \n im.g * vec3(0.587*a) + \n im.b * vec3(0.114*a) + \n im.rgb + vec3(b); \n im.rgb = mix(im.rgb, vec3(pivot), -y*midAmt); im.rgb = mix(im.rgb, pix, 0.8); im.rgb = max(im.rgb, 0.0); im.rgb *= im.rgb; im.rgb = clamp(im.rgb, 0.0, 1.0)+pos+neg; return im; }"}];;
  v1 = _polyKernelHDR_singleton;
  _polyKernelHDR_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_shadowKernelHDR
{
  if (_shadowKernelHDR_once != -1)
  {
    dispatch_once(&_shadowKernelHDR_once, &__block_literal_global_19960);
  }

  v3 = _shadowKernelHDR_singleton;

  return v3;
}

uint64_t __41__PILocalLightFilterHDR__shadowKernelHDR__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _shadowKernelHDR(__sample im, __sample adj, float str) { adj.r = 3.4*adj.r-1.2 vec3 neg = min(im.rgb, 0.0); vec3 pos = max(im.rgb, 1.0)-1.0; im.rgb = clamp(im.rgb, 0.0, 1.0); vec4 orig = im; float y = sqrt(dot(im.rgb, vec3(.33333))); float s = mix(0.0, adj.r, str); vec3 gain = s > 0.0 ? vec3(0.0) : vec3(s*s) * vec3(-2.75, -2.75, -2.5); im.rgb = im.rgb*im.rgb*gain + im.rgb*(1.0-gain); float m = 1.0 + 1.85*s*(max(0.1-y, 0.0)) ; im.rgb = (clamp(m*im.rgb, 0.0, 1.0)); float midAmt = s < 0.0 ? min(s*s, 1.0) : 0.0; y = y*(1.0-y); im.rgb = sqrt(im.rgb); float pivot = .4; float a = midAmt*y; float b = -pivot*a; vec3 pix = im.r * vec3(0.299*a) + \n im.g * vec3(0.587*a) + \n im.b * vec3(0.114*a) + \n im.rgb + vec3(b); im.rgb = mix(im.rgb, vec3(pivot), -y*midAmt); im.rgb = mix(im.rgb, pix, 0.8); im.rgb = max(im.rgb, 0.0); im.rgb *= im.rgb; im.rgb = clamp(im.rgb, 0.0, 1.0)+pos+neg; return im; }"}];;
  v1 = _shadowKernelHDR_singleton;
  _shadowKernelHDR_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end