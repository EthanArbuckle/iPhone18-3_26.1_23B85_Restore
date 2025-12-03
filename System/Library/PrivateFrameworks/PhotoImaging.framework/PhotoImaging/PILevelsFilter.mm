@interface PILevelsFilter
+ (id)P3Kernel;
+ (id)_customAttributesForKey:(id)key;
+ (id)customAttributes;
+ (id)defaultValueForKey:(id)key;
- (double)floatValueForKey:(id)key defaultValue:(double)value clearIfNotDefault:(BOOL *)default;
- (id)_LUTImage;
- (id)outputImage;
- (void)setDefaults;
@end

@implementation PILevelsFilter

+ (id)customAttributes
{
  v20 = MEMORY[0x1E695DF20];
  v45 = [self _customAttributesForKey:@"inputBlackSrcRGB"];
  v44 = [self _customAttributesForKey:@"inputBlackDstRGB"];
  v43 = [self _customAttributesForKey:@"inputShadowSrcRGB"];
  v42 = [self _customAttributesForKey:@"inputShadowDstRGB"];
  v41 = [self _customAttributesForKey:@"inputMidSrcRGB"];
  v40 = [self _customAttributesForKey:@"inputMidDstRGB"];
  v39 = [self _customAttributesForKey:@"inputHilightSrcRGB"];
  v38 = [self _customAttributesForKey:@"inputHilightDstRGB"];
  v37 = [self _customAttributesForKey:@"inputWhiteSrcRGB"];
  v36 = [self _customAttributesForKey:@"inputWhiteDstRGB"];
  v35 = [self _customAttributesForKey:@"inputBlackSrcRed"];
  v34 = [self _customAttributesForKey:@"inputBlackDstRed"];
  v33 = [self _customAttributesForKey:@"inputShadowSrcRed"];
  v32 = [self _customAttributesForKey:@"inputShadowDstRed"];
  v31 = [self _customAttributesForKey:@"inputMidSrcRed"];
  v30 = [self _customAttributesForKey:@"inputMidDstRed"];
  v29 = [self _customAttributesForKey:@"inputHilightSrcRed"];
  v28 = [self _customAttributesForKey:@"inputHilightDstRed"];
  v27 = [self _customAttributesForKey:@"inputWhiteSrcRed"];
  v25 = [self _customAttributesForKey:@"inputWhiteDstRed"];
  v19 = [self _customAttributesForKey:@"inputBlackSrcGreen"];
  v18 = [self _customAttributesForKey:@"inputBlackDstGreen"];
  v17 = [self _customAttributesForKey:@"inputShadowSrcGreen"];
  v16 = [self _customAttributesForKey:@"inputShadowDstGreen"];
  v15 = [self _customAttributesForKey:@"inputMidSrcGreen"];
  v26 = [self _customAttributesForKey:@"inputMidDstGreen"];
  v14 = [self _customAttributesForKey:@"inputHilightSrcGreen"];
  v13 = [self _customAttributesForKey:@"inputHilightDstGreen"];
  v24 = [self _customAttributesForKey:@"inputWhiteSrcGreen"];
  v12 = [self _customAttributesForKey:@"inputWhiteDstGreen"];
  v23 = [self _customAttributesForKey:@"inputBlackSrcBlue"];
  v22 = [self _customAttributesForKey:@"inputBlackDstBlue"];
  v11 = [self _customAttributesForKey:@"inputShadowSrcBlue"];
  v7 = [self _customAttributesForKey:@"inputShadowDstBlue"];
  v10 = [self _customAttributesForKey:@"inputMidSrcBlue"];
  v9 = [self _customAttributesForKey:@"inputMidDstBlue"];
  v8 = [self _customAttributesForKey:@"inputHilightSrcBlue"];
  v6 = [self _customAttributesForKey:@"inputHilightDstBlue"];
  v5 = [self _customAttributesForKey:@"inputWhiteSrcBlue"];
  v4 = [self _customAttributesForKey:@"inputWhiteDstBlue"];
  v21 = [v20 dictionaryWithObjectsAndKeys:{v45, @"inputBlackSrcRGB", v44, @"inputBlackDstRGB", v43, @"inputShadowSrcRGB", v42, @"inputShadowDstRGB", v41, @"inputMidSrcRGB", v40, @"inputMidDstRGB", v39, @"inputHilightSrcRGB", v38, @"inputHilightDstRGB", v37, @"inputWhiteSrcRGB", v36, @"inputWhiteDstRGB", v35, @"inputBlackSrcRed", v34, @"inputBlackDstRed", v33, @"inputShadowSrcRed", v32, @"inputShadowDstRed", v31, @"inputMidSrcRed", v30, @"inputMidDstRed", v29, @"inputHilightSrcRed", v28, @"inputHilightDstRed", v27, @"inputWhiteSrcRed", v25, @"inputWhiteDstRed", v19, @"inputBlackSrcGreen", v18, @"inputBlackDstGreen", v17, @"inputShadowSrcGreen", v16, @"inputShadowDstGreen", v15, @"inputMidSrcGreen", v26, @"inputMidDstGreen", v14, @"inputHilightSrcGreen", v13, @"inputHilightDstGreen", v24, @"inputWhiteSrcGreen", v12, @"inputWhiteDstGreen", v23}];

  return v21;
}

+ (id)_customAttributesForKey:(id)key
{
  v3 = [self defaultValueForKey:key];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E695F6D8], &unk_1F471FA00, *MEMORY[0x1E695F6D0], &unk_1F471F9F0, *MEMORY[0x1E695F6E8], &unk_1F471FA00, *MEMORY[0x1E695F6E0], v3, *MEMORY[0x1E695F6A0], v3, *MEMORY[0x1E695F6C8], *MEMORY[0x1E695F758], *MEMORY[0x1E695F6F0], 0}];

  return v4;
}

+ (id)defaultValueForKey:(id)key
{
  keyCopy = key;
  v4 = 0.0;
  if (([keyCopy containsString:@"inputBlackSrc"] & 1) == 0 && (objc_msgSend(keyCopy, "containsString:", @"inputBlackDst") & 1) == 0)
  {
    v4 = 0.25;
    if (([keyCopy containsString:@"inputShadowSrc"] & 1) == 0 && (objc_msgSend(keyCopy, "containsString:", @"inputShadowDst") & 1) == 0)
    {
      v4 = 0.5;
      if (([keyCopy containsString:@"inputMidSrc"] & 1) == 0 && (objc_msgSend(keyCopy, "containsString:", @"inputMidDst") & 1) == 0)
      {
        v4 = 0.75;
        if (([keyCopy containsString:@"inputHilightSrc"] & 1) == 0 && (objc_msgSend(keyCopy, "containsString:", @"inputHilightDst") & 1) == 0)
        {
          if (([keyCopy containsString:@"inputWhiteSrc"] & 1) != 0 || (v4 = 0.0, objc_msgSend(keyCopy, "containsString:", @"inputWhiteDst")))
          {
            v4 = 1.0;
          }
        }
      }
    }
  }

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:v4];

  return v5;
}

+ (id)P3Kernel
{
  if (P3Kernel_onceToken != -1)
  {
    dispatch_once(&P3Kernel_onceToken, &__block_literal_global_23955);
  }

  v3 = P3Kernel_P3Kernel;

  return v3;
}

uint64_t __26__PILevelsFilter_P3Kernel__block_invoke()
{
  v0 = [MEMORY[0x1E695F660] kernelWithString:{@"kernel vec4 levelsNewGammaForP3 (sampler src, sampler LUT)\n{\nvec4\tp, r\nvec2\tc1, c2;\nfloat\tf;\np  = sample(src, samplerCoord(src));\nvec3 neg = min(p.rgb, 0.0);\nvec3 pos = max(p.rgb, 1.0)-1.0;\np.rgb = clamp(p.rgb, 0.0, 1.0);\nf = p.r * 255.0 + 256.0;\nc1 = vec2(floor(f)+0.5, 0.5);\nc2 = vec2(ceil(f)+0.5, 0.5);\nr = mix(sample(LUT, samplerTransform(LUT, c1)), sample(LUT, samplerTransform(LUT, c2)), fract(f));\np.r = r.r * 4.0 - 1.0;\nf = p.g * 255.0 + 256.0;\nc1 = vec2(floor(f)+0.5, 0.5);\nc2 = vec2(ceil(f)+0.5, 0.5);\nr = mix(sample(LUT, samplerTransform(LUT, c1)), sample(LUT, samplerTransform(LUT, c2)), fract(f));\np.g = r.g * 4.0 - 1.0;\nf = p.b * 255.0 + 256.0;\nc1 = vec2(floor(f)+0.5, 0.5);\nc2 = vec2(ceil(f)+0.5, 0.5);\nr = mix(sample(LUT, samplerTransform(LUT, c1)), sample(LUT, samplerTransform(LUT, c2)), fract(f));\np.b = r.b * 4.0 - 1.0;\np.rgb = max(p.rgb, 0.0);\np.rgb = p.rgb + pos + neg;\nreturn p;\n}\n\n"}];;
  v1 = P3Kernel_P3Kernel;
  P3Kernel_P3Kernel = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)outputImage
{
  v26[2] = *MEMORY[0x1E69E9840];
  _LUTImage = [(PILevelsFilter *)self _LUTImage];
  if (_LUTImage)
  {
    v4 = [MEMORY[0x1E695F680] samplerWithImage:_LUTImage keysAndValues:{*MEMORY[0x1E695FB80], *MEMORY[0x1E695FB78], 0}];
    p3Kernel = [objc_opt_class() P3Kernel];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0F0]);
    v8 = [(CIImage *)self->_inputImage imageByColorMatchingWorkingSpaceToColorSpace:v7];
    v9 = MEMORY[0x1E695F680];
    imageByUnpremultiplyingAlpha = [v8 imageByUnpremultiplyingAlpha];
    v11 = [v9 samplerWithImage:imageByUnpremultiplyingAlpha];

    definition = [v11 definition];
    [definition extent];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v26[0] = v11;
    v26[1] = v4;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v22 = [p3Kernel applyWithExtent:&__block_literal_global_182_24174 roiCallback:v21 arguments:dictionary options:{v14, v16, v18, v20}];

    v23 = [v22 imageByColorMatchingColorSpaceToWorkingSpace:v7];

    CGColorSpaceRelease(v7);
    imageByPremultiplyingAlpha = [v23 imageByPremultiplyingAlpha];
  }

  else
  {
    imageByPremultiplyingAlpha = self->_inputImage;
  }

  return imageByPremultiplyingAlpha;
}

double __29__PILevelsFilter_outputImage__block_invoke(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return 0.0;
  }

  return result;
}

- (id)_LUTImage
{
  v180 = *MEMORY[0x1E69E9840];
  v178 = xmmword_1E82ABE58;
  v179 = @"Blue";
  v3 = malloc_type_malloc(0x2000uLL, 0x1000040BDFB0063uLL);
  v173 = 1;
  [(PILevelsFilter *)self floatValueForKey:@"inputBlackSrcRGB" defaultValue:&v173 clearIfNotDefault:0.0];
  v5 = v4;
  [(PILevelsFilter *)self floatValueForKey:@"inputShadowSrcRGB" defaultValue:&v173 clearIfNotDefault:0.25];
  v165 = v6;
  [(PILevelsFilter *)self floatValueForKey:@"inputMidSrcRGB" defaultValue:&v173 clearIfNotDefault:0.5];
  v169 = v7;
  [(PILevelsFilter *)self floatValueForKey:@"inputHilightSrcRGB" defaultValue:&v173 clearIfNotDefault:0.75];
  __x = v8;
  [(PILevelsFilter *)self floatValueForKey:@"inputWhiteSrcRGB" defaultValue:&v173 clearIfNotDefault:1.0];
  v10 = v9;
  [(PILevelsFilter *)self floatValueForKey:@"inputBlackDstRGB" defaultValue:&v173 clearIfNotDefault:0.0];
  v12 = v11;
  [(PILevelsFilter *)self floatValueForKey:@"inputShadowDstRGB" defaultValue:&v173 clearIfNotDefault:0.25];
  v14 = v13;
  [(PILevelsFilter *)self floatValueForKey:@"inputMidDstRGB" defaultValue:&v173 clearIfNotDefault:0.5];
  v16 = v15;
  [(PILevelsFilter *)self floatValueForKey:@"inputHilightDstRGB" defaultValue:&v173 clearIfNotDefault:0.75];
  v18 = v17;
  [(PILevelsFilter *)self floatValueForKey:@"inputWhiteDstRGB" defaultValue:&v173 clearIfNotDefault:1.0];
  if (v5 == 0.0 && *&v169 == 0.0 && v10 == 0.0)
  {
    if (!v3)
    {
      goto LABEL_38;
    }

    v20 = v3;
    goto LABEL_33;
  }

  v21 = 0;
  v22 = (v19 - v12) / (v10 - v5);
  v23 = v12 - v5 * v22;
  v24 = v16 - (v23 + *&v169 * v22);
  v25 = *&v165 - *&v169;
  if (*&v165 - *&v169 >= 0.0)
  {
    v26 = 1.0 / (*&v169 - v10);
  }

  else
  {
    v26 = 1.0 / (*&v169 - v5);
  }

  v27 = v25 * v26;
  v28 = v27 + 1.0;
  v29 = -((v27 * 2.0 + 3.0) * v27) * v27 + 1.0;
  if (v28 < 0.0)
  {
    v29 = 0.0;
  }

  v30 = v14 - (v23 + *&v165 * v22 + v29 * v24);
  v31 = *&__x - *&v169;
  if (*&__x - *&v169 >= 0.0)
  {
    v32 = 1.0 / (*&v169 - v10);
  }

  else
  {
    v32 = 1.0 / (*&v169 - v5);
  }

  v33 = v31 * v32;
  v34 = v33 + 1.0;
  v35 = -((v33 * 2.0 + 3.0) * v33) * v33 + 1.0;
  if (v34 < 0.0)
  {
    v35 = 0.0;
  }

  v143 = vdupq_lane_s64(*&v22, 0);
  v142 = vdupq_lane_s64(*&v23, 0);
  v140 = vdupq_lane_s64(COERCE__INT64(1.0 / (*&v169 - v5)), 0);
  v141 = vdupq_lane_s64(v169, 0);
  v138 = vdupq_lane_s64(*&v24, 0);
  v139 = vdupq_lane_s64(COERCE__INT64(1.0 / (*&v169 - v10)), 0);
  v136 = vdupq_lane_s64(COERCE__INT64(*&v165 - v5), 0);
  v137 = vdupq_lane_s64(v165, 0);
  v129 = v3;
  v36 = v3 + 8;
  v134 = vdupq_lane_s64(*&v30, 0);
  v135 = vdupq_lane_s64(*&v25, 0);
  v132 = vdupq_lane_s64(*&v31, 0);
  v133 = vdupq_lane_s64(__x, 0);
  v130 = vdupq_lane_s64(COERCE__INT64(v18 - (v23 + *&__x * v22 + v35 * v24)), 0);
  v131 = vdupq_lane_s64(COERCE__INT64(*&__x - v10), 0);
  do
  {
    v37 = *(&v178 + v21);
    v38 = [@"inputBlackSrc" stringByAppendingString:v37];
    [(PILevelsFilter *)self floatValueForKey:v38 defaultValue:&v173 clearIfNotDefault:0.0];
    v40 = v39;

    v41 = [@"inputShadowSrc" stringByAppendingString:v37];
    [(PILevelsFilter *)self floatValueForKey:v41 defaultValue:&v173 clearIfNotDefault:0.25];
    v170 = v42;

    v43 = [@"inputMidSrc" stringByAppendingString:v37];
    [(PILevelsFilter *)self floatValueForKey:v43 defaultValue:&v173 clearIfNotDefault:0.5];
    v166 = v44;

    v45 = [@"inputHilightSrc" stringByAppendingString:v37];
    [(PILevelsFilter *)self floatValueForKey:v45 defaultValue:&v173 clearIfNotDefault:0.75];
    __xa = v46;

    v47 = [@"inputWhiteSrc" stringByAppendingString:v37];
    [(PILevelsFilter *)self floatValueForKey:v47 defaultValue:&v173 clearIfNotDefault:1.0];
    v49 = v48;

    v50 = [@"inputBlackDst" stringByAppendingString:v37];
    [(PILevelsFilter *)self floatValueForKey:v50 defaultValue:&v173 clearIfNotDefault:0.0];
    v52 = v51;

    v53 = [@"inputShadowDst" stringByAppendingString:v37];
    [(PILevelsFilter *)self floatValueForKey:v53 defaultValue:&v173 clearIfNotDefault:0.25];
    v159 = v54;

    v55 = [@"inputMidDst" stringByAppendingString:v37];
    [(PILevelsFilter *)self floatValueForKey:v55 defaultValue:&v173 clearIfNotDefault:0.5];
    v57 = v56;

    v58 = [@"inputHilightDst" stringByAppendingString:v37];
    [(PILevelsFilter *)self floatValueForKey:v58 defaultValue:&v173 clearIfNotDefault:0.75];
    v60 = v59;

    v61 = [@"inputWhiteDst" stringByAppendingString:v37];
    [(PILevelsFilter *)self floatValueForKey:v61 defaultValue:&v173 clearIfNotDefault:1.0];
    v63 = v62;

    v64 = *&__xa - *&v166;
    if (*&__xa - *&v166 >= 0.0)
    {
      v65 = 1.0 / (*&v166 - v49);
    }

    else
    {
      v65 = 1.0 / (*&v166 - v40);
    }

    v66 = v64 * v65;
    v67 = v66 + 1.0;
    v68 = -((v66 * 2.0 + 3.0) * v66) * v66 + 1.0;
    if (v67 < 0.0)
    {
      v68 = 0.0;
    }

    v69 = (v63 - v52) / (v49 - v40);
    v70 = v52 - v40 * v69;
    v71 = v57 - (v70 + *&v166 * v69);
    v72 = v70 + *&__xa * v69 + v68 * v71;
    v73 = *&v170 - *&v166;
    if (*&v170 - *&v166 >= 0.0)
    {
      v74 = 1.0 / (*&v166 - v49);
    }

    else
    {
      v74 = 1.0 / (*&v166 - v40);
    }

    v75 = v73 * v74;
    if (v75 + 1.0 >= 0.0)
    {
      v76 = -((v75 * 2.0 + 3.0) * v75) * v75 + 1.0;
    }

    else
    {
      v76 = 0.0;
    }

    v157 = vdupq_lane_s64(*&v69, 0);
    v156 = vdupq_lane_s64(*&v70, 0);
    v154 = vdupq_lane_s64(COERCE__INT64(1.0 / (*&v166 - v40)), 0);
    v155 = vdupq_lane_s64(v166, 0);
    v152 = vdupq_lane_s64(*&v71, 0);
    v153 = vdupq_lane_s64(COERCE__INT64(1.0 / (*&v166 - v49)), 0);
    v150 = vdupq_lane_s64(COERCE__INT64(*&v170 - v40), 0);
    v151 = vdupq_lane_s64(v170, 0);
    v148 = vdupq_lane_s64(COERCE__INT64(v159 - (v70 + *&v170 * v69 + v76 * v71)), 0);
    v149 = vdupq_lane_s64(*&v73, 0);
    v146 = vdupq_lane_s64(*&v64, 0);
    v147 = vdupq_lane_s64(__xa, 0);
    v144 = vdupq_lane_s64(COERCE__INT64(v60 - v72), 0);
    v145 = vdupq_lane_s64(COERCE__INT64(*&__xa - v49), 0);
    v77 = xmmword_1C7845C80;
    v78 = v36;
    v79 = 1024;
    do
    {
      v171 = v77;
      __xb = vdivq_f64(vaddq_f64(vcvtq_f64_u64(v77), vdupq_n_s64(0xC070000000000000)), vdupq_n_s64(0x406FE00000000000uLL));
      v167 = pow(__xb.f64[1], 0.454545438);
      v80.f64[0] = pow(__xb.f64[0], 0.454545438);
      v80.f64[1] = v167;
      v81 = vsubq_f64(v80, v141);
      v82 = vmulq_f64(v81, vbslq_s8(vcltzq_f64(v81), v140, v139));
      __asm
      {
        FMOV            V7.2D, #1.0
        FMOV            V2.2D, #2.0
        FMOV            V5.2D, #3.0
      }

      v90 = vmlaq_f64(vmlaq_f64(v142, v143, v80), v138, vbicq_s8(vmlaq_f64(_Q7, v82, vmulq_f64(v82, vnegq_f64(vmlaq_f64(_Q5, _Q2, v82)))), vcltzq_f64(vaddq_f64(v82, _Q7))));
      v91 = vsubq_f64(v80, v137);
      v92 = _Q7;
      __xc = _Q7;
      v93 = vmulq_f64(v91, vdivq_f64(_Q7, vbslq_s8(vcltzq_f64(v91), v136, v135)));
      v94 = vsubq_f64(v80, v133);
      v95 = vmulq_f64(v94, vdivq_f64(_Q7, vbslq_s8(vcltzq_f64(v94), v132, v131)));
      v96 = vmlaq_f64(vmlaq_f64(v90, v134, vbicq_s8(vmlaq_f64(_Q7, v93, vmulq_f64(v93, vnegq_f64(vmlaq_f64(_Q5, _Q2, v93)))), vcltzq_f64(vaddq_f64(v93, _Q7)))), v130, vbicq_s8(vmlaq_f64(_Q7, v95, vmulq_f64(v95, vnegq_f64(vmlaq_f64(_Q5, _Q2, v95)))), vcltzq_f64(vaddq_f64(v95, _Q7))));
      v97 = vsubq_f64(v96, v155);
      v98 = vmulq_f64(v97, vbslq_s8(vcltzq_f64(v97), v154, v153));
      v99 = vmlaq_f64(vmlaq_f64(v156, v157, v96), v152, vbicq_s8(vmlaq_f64(v92, v98, vmulq_f64(v98, vnegq_f64(vmlaq_f64(_Q5, _Q2, v98)))), vcltzq_f64(vaddq_f64(v98, v92))));
      v100 = vsubq_f64(v96, v151);
      v101 = vmulq_f64(v100, vdivq_f64(v92, vbslq_s8(vcltzq_f64(v100), v150, v149)));
      v168 = _Q5;
      v102 = vmlaq_f64(v99, v148, vbicq_s8(vmlaq_f64(v92, v101, vmulq_f64(v101, vnegq_f64(vmlaq_f64(_Q5, _Q2, v101)))), vcltzq_f64(vaddq_f64(v101, v92))));
      v103 = vsubq_f64(v96, v147);
      v104 = vmulq_f64(v103, vdivq_f64(v92, vbslq_s8(vcltzq_f64(v103), v146, v145)));
      v158 = vmlaq_f64(v102, v144, vbicq_s8(vmlaq_f64(v92, v104, vmulq_f64(v104, vnegq_f64(vmlaq_f64(_Q5, _Q2, v104)))), vcltzq_f64(vaddq_f64(v104, v92))));
      v160 = pow(v158.f64[1], 2.20000005);
      v105.f64[0] = pow(v158.f64[0], 2.20000005);
      v105.f64[1] = v160;
      __asm { FMOV            V1.2D, #-1.0 }

      v107 = vbslq_s8(vcgtq_f64(_Q1, v105), _Q1, v105);
      __asm { FMOV            V1.2D, #0.25 }

      *&v107.f64[0] = vmovn_s64(vcvtq_s64_f64(vmulq_f64(vmulq_f64(vaddq_f64(vbslq_s8(vcgtq_f64(v107, v168), v168, v107), __xc), _Q1), vdupq_n_s64(0x40EFFFE000000000uLL))));
      *(v78 - 4) = LOWORD(v107.f64[0]);
      *v78 = WORD2(v107.f64[0]);
      v78 += 8;
      v77 = vaddq_s64(v171, vdupq_n_s64(2uLL));
      v79 -= 2;
    }

    while (v79);

    ++v21;
    ++v36;
  }

  while (v21 != 3);
  if (v173)
  {
    v20 = v3;
LABEL_33:
    free(v20);
    v3 = 0;
    goto LABEL_38;
  }

  for (i = 6; i != 8198; i += 8)
  {
    *&v3[i] = 0x7FFF;
  }

  dest.data = v3;
  *&dest.height = xmmword_1C7845C90;
  dest.rowBytes = 0x2000;
  v110 = vImageConvert_16Uto16F(&dest, &dest, 0);
  if (!v110)
  {
    v111 = MEMORY[0x1E695F658];
    v112 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v129 length:0x2000 freeWhenDone:1];
    v3 = [v111 imageWithBitmapData:v112 bytesPerRow:0x2000 size:*MEMORY[0x1E695F920] format:0 colorSpace:{1024.0, 1.0}];

LABEL_38:
    for (j = 16; j != -8; j -= 8)
    {
    }

    return v3;
  }

  v115 = v110;
  v116 = NUAssertLogger_24177();
  if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
  {
    v115 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed converting data to RGBAh: %ld", v115];
    *buf = 138543362;
    v175 = v115;
    _os_log_error_impl(&dword_1C7694000, v116, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  v118 = MEMORY[0x1E69B38E8];
  specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v120 = NUAssertLogger_24177();
  v121 = os_log_type_enabled(v120, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v121)
    {
      v124 = dispatch_get_specific(*v118);
      v125 = MEMORY[0x1E696AF00];
      v126 = v124;
      callStackSymbols = [v125 callStackSymbols];
      v128 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v175 = v124;
      v176 = 2114;
      v177 = v128;
      _os_log_error_impl(&dword_1C7694000, v120, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v121)
  {
    callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
    v123 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    v175 = v123;
    _os_log_error_impl(&dword_1C7694000, v120, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  _NUAssertFailHandler();
  return NUAssertLogger_24177();
}

- (double)floatValueForKey:(id)key defaultValue:(double)value clearIfNotDefault:(BOOL *)default
{
  v7 = [(PILevelsFilter *)self valueForKey:key];
  v8 = v7;
  valueCopy = value;
  if (v7)
  {
    [v7 floatValue];
    valueCopy = v10;
  }

  if (valueCopy != value)
  {
    *default = 0;
  }

  return valueCopy;
}

- (void)setDefaults
{
  v3 = 0;
  v29 = *MEMORY[0x1E69E9840];
  v27 = xmmword_1E82ABE38;
  v28 = *&off_1E82ABE48;
  do
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = *(&v27 + v3);
    v6 = [v4 numberWithDouble:{0.0, v27, v28}];
    v7 = [@"inputBlackSrc" stringByAppendingString:v5];
    [(PILevelsFilter *)self setValue:v6 forKey:v7];

    v8 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
    v9 = [@"inputBlackDst" stringByAppendingString:v5];
    [(PILevelsFilter *)self setValue:v8 forKey:v9];

    v10 = [MEMORY[0x1E696AD98] numberWithDouble:0.25];
    v11 = [@"inputShadowSrc" stringByAppendingString:v5];
    [(PILevelsFilter *)self setValue:v10 forKey:v11];

    v12 = [MEMORY[0x1E696AD98] numberWithDouble:0.25];
    v13 = [@"inputShadowDst" stringByAppendingString:v5];
    [(PILevelsFilter *)self setValue:v12 forKey:v13];

    v14 = [MEMORY[0x1E696AD98] numberWithDouble:0.5];
    v15 = [@"inputMidSrc" stringByAppendingString:v5];
    [(PILevelsFilter *)self setValue:v14 forKey:v15];

    v16 = [MEMORY[0x1E696AD98] numberWithDouble:0.5];
    v17 = [@"inputMidDst" stringByAppendingString:v5];
    [(PILevelsFilter *)self setValue:v16 forKey:v17];

    v18 = [MEMORY[0x1E696AD98] numberWithDouble:0.75];
    v19 = [@"inputHilightSrc" stringByAppendingString:v5];
    [(PILevelsFilter *)self setValue:v18 forKey:v19];

    v20 = [MEMORY[0x1E696AD98] numberWithDouble:0.75];
    v21 = [@"inputHilightDst" stringByAppendingString:v5];
    [(PILevelsFilter *)self setValue:v20 forKey:v21];

    v22 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
    v23 = [@"inputWhiteSrc" stringByAppendingString:v5];
    [(PILevelsFilter *)self setValue:v22 forKey:v23];

    v24 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
    v25 = [@"inputWhiteDst" stringByAppendingString:v5];

    [(PILevelsFilter *)self setValue:v24 forKey:v25];
    v3 += 8;
  }

  while (v3 != 32);
  for (i = 24; i != -8; i -= 8)
  {
  }
}

@end