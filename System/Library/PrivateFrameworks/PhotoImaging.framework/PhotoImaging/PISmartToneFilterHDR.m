@interface PISmartToneFilterHDR
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)_kernelBneg;
- (id)_kernelBpos;
- (id)_kernelC;
- (id)_kernelC_hdr;
- (id)_kernelH;
- (id)_kernelRH;
- (id)outputImage;
@end

@implementation PISmartToneFilterHDR

+ (id)customAttributes
{
  v44[8] = *MEMORY[0x1E69E9840];
  v43[0] = *MEMORY[0x1E695F6B8];
  v2 = *MEMORY[0x1E695F7D0];
  v42[0] = *MEMORY[0x1E695F7C8];
  v42[1] = v2;
  v3 = *MEMORY[0x1E695F788];
  v42[2] = *MEMORY[0x1E695F7C0];
  v42[3] = v3;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
  v44[0] = v21;
  v43[1] = @"inputExposure";
  v5 = *MEMORY[0x1E695F6E8];
  v34[0] = *MEMORY[0x1E695F6D8];
  v4 = v34[0];
  v34[1] = v5;
  v40[0] = &unk_1F471F930;
  v40[1] = &unk_1F471F940;
  v7 = *MEMORY[0x1E695F6D0];
  v35 = *MEMORY[0x1E695F6E0];
  v6 = v35;
  v36 = v7;
  v40[2] = &unk_1F471F950;
  v40[3] = &unk_1F471F960;
  v9 = *MEMORY[0x1E695F6C8];
  v37 = *MEMORY[0x1E695F6A0];
  v8 = v37;
  v38 = v9;
  v40[4] = &unk_1F471F970;
  v40[5] = &unk_1F471F970;
  v39 = *MEMORY[0x1E695F6F0];
  v10 = v39;
  v41 = *MEMORY[0x1E695F758];
  v11 = v41;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v34 count:7];
  v44[1] = v20;
  v43[2] = @"inputContrast";
  v32[0] = v4;
  v32[1] = v5;
  v33[0] = &unk_1F471F930;
  v33[1] = &unk_1F471F940;
  v32[2] = v6;
  v32[3] = v7;
  v33[2] = &unk_1F471F950;
  v33[3] = &unk_1F471F960;
  v32[4] = v8;
  v32[5] = v9;
  v33[4] = &unk_1F471F970;
  v33[5] = &unk_1F471F970;
  v32[6] = v10;
  v33[6] = v11;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:7];
  v44[2] = v19;
  v43[3] = @"inputBrightness";
  v30[0] = v4;
  v30[1] = v5;
  v31[0] = &unk_1F471F930;
  v31[1] = &unk_1F471F940;
  v30[2] = v6;
  v30[3] = v7;
  v31[2] = &unk_1F471F950;
  v31[3] = &unk_1F471F960;
  v30[4] = v8;
  v30[5] = v9;
  v31[4] = &unk_1F471F970;
  v31[5] = &unk_1F471F970;
  v30[6] = v10;
  v31[6] = v11;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:7];
  v44[3] = v18;
  v43[4] = @"inputShadows";
  v28[0] = v4;
  v28[1] = v5;
  v29[0] = &unk_1F471F930;
  v29[1] = &unk_1F471F940;
  v28[2] = v6;
  v28[3] = v7;
  v29[2] = &unk_1F471F950;
  v29[3] = &unk_1F471F960;
  v28[4] = v8;
  v28[5] = v9;
  v29[4] = &unk_1F471F970;
  v29[5] = &unk_1F471F970;
  v28[6] = v10;
  v29[6] = v11;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:7];
  v44[4] = v17;
  v43[5] = @"inputHighlights";
  v26[0] = v4;
  v26[1] = v5;
  v27[0] = &unk_1F471F930;
  v27[1] = &unk_1F471F940;
  v26[2] = v6;
  v26[3] = v7;
  v27[2] = &unk_1F471F950;
  v27[3] = &unk_1F471F960;
  v26[4] = v8;
  v26[5] = v9;
  v27[4] = &unk_1F471F970;
  v27[5] = &unk_1F471F970;
  v26[6] = v10;
  v27[6] = v11;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:7];
  v44[5] = v16;
  v43[6] = @"inputBlack";
  v24[0] = v4;
  v24[1] = v5;
  v25[0] = &unk_1F471F930;
  v25[1] = &unk_1F471F940;
  v24[2] = v6;
  v24[3] = v7;
  v25[2] = &unk_1F471F950;
  v25[3] = &unk_1F471F960;
  v24[4] = v8;
  v24[5] = v9;
  v25[4] = &unk_1F471F970;
  v25[5] = &unk_1F471F970;
  v24[6] = v10;
  v25[6] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:7];
  v44[6] = v12;
  v43[7] = @"inputRawHighlights";
  v22[0] = v4;
  v22[1] = v5;
  v23[0] = &unk_1F471F970;
  v23[1] = &unk_1F471F970;
  v22[2] = v6;
  v22[3] = v7;
  v23[2] = &unk_1F471F950;
  v23[3] = &unk_1F471F950;
  v22[4] = v8;
  v22[5] = v9;
  v23[4] = &unk_1F471F970;
  v23[5] = &unk_1F471F970;
  v22[6] = v10;
  v23[6] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:7];
  v44[7] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:8];

  return v14;
}

- (id)outputImage
{
  v150[5] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    v3 = 0;
    goto LABEL_46;
  }

  if ([(PISmartToneFilterHDR *)self _isIdentity])
  {
    v3 = self->inputImage;
    goto LABEL_46;
  }

  [(NSNumber *)self->inputExposure doubleValue];
  v5 = fmin(fmax(v4, -2.0), 2.0);
  [(NSNumber *)self->inputContrast doubleValue];
  v133 = v6;
  [(NSNumber *)self->inputBrightness doubleValue];
  v132 = fmax(v7, -2.0);
  [(NSNumber *)self->inputShadows doubleValue];
  v9 = v8;
  [(NSNumber *)self->inputHighlights doubleValue];
  v11 = v10;
  [(NSNumber *)self->inputBlack doubleValue];
  v13 = fmax(v12, -2.0);
  [(NSNumber *)self->inputRawHighlights doubleValue];
  v15 = fmax(v14, 0.0);
  v3 = self->inputImage;
  v131 = fmin(v15, 2.0);
  v136 = v15;
  v137 = fabs(v131);
  if (v137 >= 1.0e-10)
  {
    v16 = fmin(v15, 0.8);
    v17 = 1.0 - v16;
    v18 = (1.0 - v17) * 0.33333;
    v149[0] = @"inputRVector";
    v19 = (v17 + v18);
    v20 = v18;
    v21 = [MEMORY[0x1E695F688] vectorWithX:v19 Y:v20 Z:v20 W:0.0];
    v150[0] = v21;
    v149[1] = @"inputGVector";
    v22 = [MEMORY[0x1E695F688] vectorWithX:v20 Y:v19 Z:v20 W:0.0];
    v150[1] = v22;
    v149[2] = @"inputBVector";
    v23 = [MEMORY[0x1E695F688] vectorWithX:v20 Y:v20 Z:v19 W:0.0];
    v150[2] = v23;
    v149[3] = @"inputAVector";
    v24 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
    v150[3] = v24;
    v149[4] = @"inputBiasVector";
    v25 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
    v150[4] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v150 forKeys:v149 count:5];
    v27 = [(CIImage *)v3 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v26];

    v3 = v27;
  }

  v28 = fmax(v9, -2.0);
  v29 = fmax(v11, -2.0);
  v30 = fmin(v13, 2.0);
  v31 = fmin(v132, 2.0);
  if (fabs(v5) >= 1.0e-10 || fabs(v30) >= 1.0e-10)
  {
    v32 = 1.0 / (1.0 / exp2(v5 + v5) - v30 / 20.0);
    v147[0] = @"inputRVector";
    v33 = [MEMORY[0x1E695F688] vectorWithX:v32 Y:0.0 Z:0.0 W:0.0];
    v148[0] = v33;
    v147[1] = @"inputGVector";
    v34 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:v32 Z:0.0 W:0.0];
    v148[1] = v34;
    v147[2] = @"inputBVector";
    v35 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:v32 W:0.0];
    v148[2] = v35;
    v147[3] = @"inputAVector";
    v36 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
    v148[3] = v36;
    v147[4] = @"inputBiasVector";
    v37 = [MEMORY[0x1E695F688] vectorWithX:-(v30 / 20.0 * v32) Y:-(v30 / 20.0 * v32) Z:-(v30 / 20.0 * v32) W:0.0];
    v148[4] = v37;
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v148 forKeys:v147 count:5];
    v39 = [(CIImage *)v3 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v38];

    v3 = v39;
  }

  v40 = fmax(v133, -2.0);
  v41 = fmin(v28, 2.0);
  v42 = fmin(v29, 2.0);
  if (fabs(v31) >= 1.0e-10)
  {
    v134 = v42;
    v44 = [(CIImage *)v3 imageByUnpremultiplyingAlpha];

    if (v31 >= 0.0)
    {
      v45 = [(PISmartToneFilterHDR *)self _kernelBpos];
      [v44 extent];
      v47 = v56;
      v49 = v57;
      v51 = v58;
      v53 = v59;
      v145[0] = v44;
      v54 = [MEMORY[0x1E696AD98] numberWithDouble:v31 * 2.0 + 1.0];
      v145[1] = v54;
      v55 = v145;
    }

    else
    {
      v45 = [(PISmartToneFilterHDR *)self _kernelBneg];
      [v44 extent];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v146[0] = v44;
      v54 = [MEMORY[0x1E696AD98] numberWithDouble:v31 * -1.5 + 1.0];
      v146[1] = v54;
      v55 = v146;
    }

    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
    v3 = [v45 applyWithExtent:v60 arguments:{v47, v49, v51, v53}];

    if (fabs(v41) < 1.0e-10)
    {
      v43 = 0;
      v42 = v134;
      goto LABEL_20;
    }

    v61 = [(CIImage *)v3 imageByPremultiplyingAlpha];

    v3 = v61;
    v42 = v134;
  }

  else if (fabs(v41) < 1.0e-10)
  {
    v43 = 1;
    goto LABEL_20;
  }

  v143[0] = @"inputShadowAmount";
  v62 = [MEMORY[0x1E696AD98] numberWithDouble:v41];
  v144[0] = v62;
  v144[1] = &unk_1F471F950;
  v143[1] = @"inputHighlightAmount";
  v143[2] = @"inputRadius";
  v144[2] = &unk_1F471F970;
  v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v144 forKeys:v143 count:3];
  v64 = [(CIImage *)v3 imageByApplyingFilter:@"CIHighlightShadowAdjust" withInputParameters:v63];

  v43 = 1;
  v3 = v64;
LABEL_20:
  v65 = fmin(v40, 2.0);
  v66 = fabs(v42);
  if (v66 >= 1.0e-10)
  {
    v67 = exp(v42 * v42 / -0.75);
    v68 = v67 * -0.45 + 1.45;
    v69 = v67 * 0.45 + 0.55;
    if (v42 <= 0.0)
    {
      v70 = v69;
    }

    else
    {
      v70 = v68;
    }

    v71 = (v66 + -0.6) * 2.0 + 0.2;
    if (v66 < 0.6)
    {
      v71 = 0.2;
    }

    v135 = v71;
    if (v43)
    {
      v72 = [(CIImage *)v3 imageByUnpremultiplyingAlpha];

      v3 = v72;
    }

    v73 = v137;
    if (v137 >= 1.0e-10)
    {
      v130 = v65;
      if (v70 < v131)
      {
        v70 = v131;
      }

      v76 = [(PISmartToneFilterHDR *)self _kernelRH:0xBFDCCCCCCCCCCCCDLL];
      [(CIImage *)v3 extent];
      v78 = v77;
      v79 = v42;
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v142[0] = v3;
      v86 = [MEMORY[0x1E696AD98] numberWithDouble:v70];
      v142[1] = v86;
      v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:2];
      v74 = [v76 applyWithExtent:v87 arguments:{v78, v81, v83, v85}];

      if (v79 <= 0.0)
      {
        v73 = exp(v79 * (v79 * -0.4245) / 0.75);
        v70 = v73 * 0.45 + 0.55;
      }

      else
      {
        v73 = exp(v79 * (v79 * -0.4225) / 0.75);
        v70 = v129 + v73 * v128;
      }

      v65 = v130;
    }

    else
    {
      v74 = v3;
    }

    v88 = [(PISmartToneFilterHDR *)self _kernelH];
    [v74 extent];
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v141[0] = v74;
    v97 = [MEMORY[0x1E696AD98] numberWithDouble:v70];
    v141[1] = v97;
    v98 = [MEMORY[0x1E696AD98] numberWithDouble:v135];
    v141[2] = v98;
    v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:v141 count:3];
    v3 = [v88 applyWithExtent:v99 arguments:{v90, v92, v94, v96}];

    if (fabs(v65) < 1.0e-10)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (fabs(v65) >= 1.0e-10)
  {
    if (v43)
    {
      v75 = [(CIImage *)v3 imageByUnpremultiplyingAlpha];

      v3 = v75;
    }

LABEL_42:
    v100 = [(PISmartToneFilterHDR *)self _kernelC_hdr];
    [(CIImage *)v3 extent];
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v140[0] = v3;
    v109 = [MEMORY[0x1E696AD98] numberWithDouble:v65 * 3.4];
    v140[1] = v109;
    v110 = MEMORY[0x1E696AD98];
    [MEMORY[0x1E69B3AB0] HLGOpticalScale];
    v111 = [v110 numberWithDouble:?];
    v140[2] = v111;
    v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:v140 count:3];
    v113 = [v100 applyWithExtent:v112 arguments:{v102, v104, v106, v108}];

    v3 = v113;
    goto LABEL_43;
  }

  if ((v43 & 1) == 0)
  {
LABEL_43:
    v114 = [(CIImage *)v3 imageByPremultiplyingAlpha];

    v3 = v114;
  }

  if (v137 >= 1.0e-10)
  {
    v115 = fmin(v136, 0.8);
    v116 = 1.0 / (1.0 - v115);
    v117 = (1.0 - v116) * 0.33333;
    v138[0] = @"inputRVector";
    v118 = (v116 + v117);
    v119 = v117;
    v120 = [MEMORY[0x1E695F688] vectorWithX:v118 Y:v119 Z:v119 W:0.0];
    v139[0] = v120;
    v138[1] = @"inputGVector";
    v121 = [MEMORY[0x1E695F688] vectorWithX:v119 Y:v118 Z:v119 W:0.0];
    v139[1] = v121;
    v138[2] = @"inputBVector";
    v122 = [MEMORY[0x1E695F688] vectorWithX:v119 Y:v119 Z:v118 W:0.0];
    v139[2] = v122;
    v138[3] = @"inputAVector";
    v123 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
    v139[3] = v123;
    v138[4] = @"inputBiasVector";
    v124 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
    v139[4] = v124;
    v125 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v139 forKeys:v138 count:5];
    v126 = [(CIImage *)v3 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v125];

    v3 = v126;
  }

LABEL_46:

  return v3;
}

- (id)_kernelRH
{
  if (_kernelRH_once != -1)
  {
    dispatch_once(&_kernelRH_once, &__block_literal_global_91_22232);
  }

  v3 = _kernelRH_singleton;

  return v3;
}

uint64_t __33__PISmartToneFilterHDR__kernelRH__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _rawHighlightsHDR(__sample pix, float gain) \n { \n vec3 high = gain*pix.rgb \n float lum = clamp(dot(pix.rgb, vec3(.3333)), 0.0, 1.0); \n vec3 neg = min(high, 0.0); \n high.rgb = mix(max(pix.rgb, 0.0), high.rgb, lum*lum) + neg; \n return vec4(high, pix.a); \n }"}];;
  v1 = _kernelRH_singleton;
  _kernelRH_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_kernelH
{
  if (_kernelH_once != -1)
  {
    dispatch_once(&_kernelH_once, &__block_literal_global_86);
  }

  v3 = _kernelH_singleton;

  return v3;
}

uint64_t __32__PISmartToneFilterHDR__kernelH__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _smarttone_highlightcontrast_HDR (__sample pix, float highAmt, float sat) \n { \n float maxVal = 1.0 vec3 neg = min(pix.rgb, 0.0); \n vec3 pos = max(pix.rgb, maxVal) - maxVal; \n pix.rgb = clamp(pix.rgb, 0.0, maxVal); \n float lum = clamp(dot(pix.rgb, vec3(.3333)), 0.0, 1.0); \n vec3 high = pow(pix.rgb, vec3(3.0 - 2.0*highAmt)); \n float pivot = 0.8; \n vec3 pix1 = (high - pivot)*(4.0 - 3.0*highAmt) + pivot; \n float h = highAmt*highAmt*highAmt*highAmt; \n float a = (4.0 - 3.0*h); \n vec3 pix2 = (lum-pivot)*a+pivot + high.rgb -lum; \n high = mix(pix2, pix1, sat); \n pix.rgb = mix(pix.rgb, high, lum*lum); \n pix.rgb = pix.rgb + neg + pos; \n return pix; \n }"}];;
  v1 = _kernelH_singleton;
  _kernelH_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_kernelC_hdr
{
  if (_kernelC_hdr_once != -1)
  {
    dispatch_once(&_kernelC_hdr_once, &__block_literal_global_81_22241);
  }

  v3 = _kernelC_hdr_singleton;

  return v3;
}

uint64_t __36__PISmartToneFilterHDR__kernelC_hdr__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _smarttone_contrast_HDR (__sample im, float midAmt, float maxVal) \n { \n midAmt = midAmt / maxVal \n vec3 neg = min(im.rgb, 0.0); \n vec3 pos = max(im.rgb, maxVal) - maxVal; \n im.rgb = clamp(im.rgb, 0.0, maxVal); \n float y = dot(im.rgb, vec3(0.3333)); \n y = sqrt(y); \n im.rgb = sqrt(im.rgb); \n float sat = dot(im.rgb - vec3(y), im.rgb - vec3(y)) / sqrt(maxVal); \n y = y*(sqrt(maxVal)-y); \n float a = midAmt*y; \n float b = -0.5*a; \n vec3 pix = im.r * vec3(0.299*a) + \n im.g * vec3(0.587*a) + \n im.b * vec3(0.114*a) + \n im.rgb + vec3(b); \n im.rgb = mix(im.rgb, vec3(0.5), -a); \n im.rgb = mix(im.rgb, pix, clamp(0.8+sat, 0.0, 1.0)); \n im.rgb = max(im.rgb, 0.0); \n im.rgb *= im.rgb; \n im.rgb = im.rgb + neg + pos; \n return im; \n }"}];;
  v1 = _kernelC_hdr_singleton;
  _kernelC_hdr_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_kernelC
{
  if (_kernelC_once != -1)
  {
    dispatch_once(&_kernelC_once, &__block_literal_global_76);
  }

  v3 = _kernelC_singleton;

  return v3;
}

uint64_t __32__PISmartToneFilterHDR__kernelC__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _smarttone_contrast_HDR (__sample im, float midAmt) \n { \n vec3 neg = min(im.rgb, 0.0) \n vec3 pos = max(im.rgb, 1.0)-1.0; \n im.rgb = clamp(im.rgb, 0.0, 1.0); \n float y = dot(im.rgb, vec3(0.3333)); \n y = sqrt(y); \n float sat = (im.r-y)*(im.r-y)+(im.g-y)*(im.g-y)+(im.b-y)*(im.b-y); \n y = y*(1.0-y); \n im.rgb = sqrt(im.rgb); \n float a = midAmt*y; \n float b = -0.5*a; \n vec3 pix = im.r * vec3(0.299*a) + \n im.g * vec3(0.587*a) + \n im.b * vec3(0.114*a) + \n im.rgb + vec3(b); \n im.rgb = mix(im.rgb, vec3(0.5), -y*midAmt); \n im.rgb = mix(im.rgb, pix, 0.8+sat); \n im.rgb = max(im.rgb, 0.0); \n im.rgb *= im.rgb; \n im.rgb = im.rgb + neg + pos; \n return im; \n }"}];;
  v1 = _kernelC_singleton;
  _kernelC_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_kernelBpos
{
  if (_kernelBpos_once != -1)
  {
    dispatch_once(&_kernelBpos_once, &__block_literal_global_71);
  }

  v3 = _kernelBpos_singleton;

  return v3;
}

uint64_t __35__PISmartToneFilterHDR__kernelBpos__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _smarttone_brightness_pos_HDR (__sample c, float gamma) \n { \n vec3 neg = min(c.rgb, 0.0) \n vec3 pos = max(c.rgb, 1.0)-1.0; \n c.rgb = clamp(c.rgb, 0.0, 1.0); \n vec3 m = 1.0-c.rgb; \n float a = 0.6; \n vec4 result = c; \n result.rgb = 1.0 - (pow(m, vec3(gamma))+a*( ((gamma-1.0)*m*(1.0-m*m))/(gamma*gamma))); \n c.rgb = pow(c.rgb, vec3(1.0-((min(gamma, 2.95)-1.0)/2.6))); \n result.rgb = mix(c.rgb, result.rgb, .85); \n result.rgb = result.rgb+neg+pos; \n return result; \n } \n"}];;
  v1 = _kernelBpos_singleton;
  _kernelBpos_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_kernelBneg
{
  if (_kernelBneg_once != -1)
  {
    dispatch_once(&_kernelBneg_once, &__block_literal_global_22252);
  }

  v3 = _kernelBneg_singleton;

  return v3;
}

uint64_t __35__PISmartToneFilterHDR__kernelBneg__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _smarttone_brightness_neg_HDR (__sample c, float gamma) \n { \n vec3 neg = min(c.rgb, 0.0) \n c.rgb = max(c.rgb, 0.0); \n vec3 pix = pow(c.rgb, vec3(gamma)); \n float lum = dot(c.rgb, vec3(0.39, .5, .11)); \n vec3 pix2 = lum>0.0 ? c.rgb*pow(lum, gamma)/lum : vec3(0.0); \n pix = mix(pix, pix2, 0.8) + neg; \n return vec4(pix, c.a); \n } \n"}];;
  v1 = _kernelBneg_singleton;
  _kernelBneg_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)_isIdentity
{
  [(NSNumber *)self->inputExposure doubleValue];
  v4 = v3;
  [(NSNumber *)self->inputContrast doubleValue];
  v6 = v5;
  [(NSNumber *)self->inputBrightness doubleValue];
  v8 = v7;
  [(NSNumber *)self->inputShadows doubleValue];
  v10 = v9;
  [(NSNumber *)self->inputHighlights doubleValue];
  v12 = v11;
  [(NSNumber *)self->inputBlack doubleValue];
  v14 = v13;
  [(NSNumber *)self->inputRawHighlights doubleValue];
  result = 0;
  if (fabs(v4) < 1.0e-10 && fabs(v6) < 1.0e-10 && fabs(v8) < 1.0e-10 && fabs(v10) < 1.0e-10 && fabs(v12) < 1.0e-10 && fabs(v14) < 1.0e-10)
  {
    return fabs(v15) < 1.0e-10;
  }

  return result;
}

@end