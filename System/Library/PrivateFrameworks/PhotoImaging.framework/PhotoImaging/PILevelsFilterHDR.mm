@interface PILevelsFilterHDR
+ (id)_customAttributesForKey:(id)a3;
+ (id)customAttributes;
+ (id)defaultValueForKey:(id)a3;
- (double)floatValueForKey:(id)a3 defaultValue:(double)a4 clearIfNotDefault:(BOOL *)a5;
- (id)P3KernelHDR;
- (id)_LUTImage;
- (id)outputImage;
- (void)setDefaults;
@end

@implementation PILevelsFilterHDR

+ (id)customAttributes
{
  v20 = MEMORY[0x1E695DF20];
  v45 = [a1 _customAttributesForKey:@"inputBlackSrcRGB"];
  v44 = [a1 _customAttributesForKey:@"inputBlackDstRGB"];
  v43 = [a1 _customAttributesForKey:@"inputShadowSrcRGB"];
  v42 = [a1 _customAttributesForKey:@"inputShadowDstRGB"];
  v41 = [a1 _customAttributesForKey:@"inputMidSrcRGB"];
  v40 = [a1 _customAttributesForKey:@"inputMidDstRGB"];
  v39 = [a1 _customAttributesForKey:@"inputHilightSrcRGB"];
  v38 = [a1 _customAttributesForKey:@"inputHilightDstRGB"];
  v37 = [a1 _customAttributesForKey:@"inputWhiteSrcRGB"];
  v36 = [a1 _customAttributesForKey:@"inputWhiteDstRGB"];
  v35 = [a1 _customAttributesForKey:@"inputBlackSrcRed"];
  v34 = [a1 _customAttributesForKey:@"inputBlackDstRed"];
  v33 = [a1 _customAttributesForKey:@"inputShadowSrcRed"];
  v32 = [a1 _customAttributesForKey:@"inputShadowDstRed"];
  v31 = [a1 _customAttributesForKey:@"inputMidSrcRed"];
  v30 = [a1 _customAttributesForKey:@"inputMidDstRed"];
  v29 = [a1 _customAttributesForKey:@"inputHilightSrcRed"];
  v28 = [a1 _customAttributesForKey:@"inputHilightDstRed"];
  v27 = [a1 _customAttributesForKey:@"inputWhiteSrcRed"];
  v25 = [a1 _customAttributesForKey:@"inputWhiteDstRed"];
  v19 = [a1 _customAttributesForKey:@"inputBlackSrcGreen"];
  v18 = [a1 _customAttributesForKey:@"inputBlackDstGreen"];
  v17 = [a1 _customAttributesForKey:@"inputShadowSrcGreen"];
  v16 = [a1 _customAttributesForKey:@"inputShadowDstGreen"];
  v15 = [a1 _customAttributesForKey:@"inputMidSrcGreen"];
  v26 = [a1 _customAttributesForKey:@"inputMidDstGreen"];
  v14 = [a1 _customAttributesForKey:@"inputHilightSrcGreen"];
  v13 = [a1 _customAttributesForKey:@"inputHilightDstGreen"];
  v24 = [a1 _customAttributesForKey:@"inputWhiteSrcGreen"];
  v12 = [a1 _customAttributesForKey:@"inputWhiteDstGreen"];
  v23 = [a1 _customAttributesForKey:@"inputBlackSrcBlue"];
  v22 = [a1 _customAttributesForKey:@"inputBlackDstBlue"];
  v11 = [a1 _customAttributesForKey:@"inputShadowSrcBlue"];
  v7 = [a1 _customAttributesForKey:@"inputShadowDstBlue"];
  v10 = [a1 _customAttributesForKey:@"inputMidSrcBlue"];
  v9 = [a1 _customAttributesForKey:@"inputMidDstBlue"];
  v8 = [a1 _customAttributesForKey:@"inputHilightSrcBlue"];
  v6 = [a1 _customAttributesForKey:@"inputHilightDstBlue"];
  v5 = [a1 _customAttributesForKey:@"inputWhiteSrcBlue"];
  v4 = [a1 _customAttributesForKey:@"inputWhiteDstBlue"];
  v21 = [v20 dictionaryWithObjectsAndKeys:{v45, @"inputBlackSrcRGB", v44, @"inputBlackDstRGB", v43, @"inputShadowSrcRGB", v42, @"inputShadowDstRGB", v41, @"inputMidSrcRGB", v40, @"inputMidDstRGB", v39, @"inputHilightSrcRGB", v38, @"inputHilightDstRGB", v37, @"inputWhiteSrcRGB", v36, @"inputWhiteDstRGB", v35, @"inputBlackSrcRed", v34, @"inputBlackDstRed", v33, @"inputShadowSrcRed", v32, @"inputShadowDstRed", v31, @"inputMidSrcRed", v30, @"inputMidDstRed", v29, @"inputHilightSrcRed", v28, @"inputHilightDstRed", v27, @"inputWhiteSrcRed", v25, @"inputWhiteDstRed", v19, @"inputBlackSrcGreen", v18, @"inputBlackDstGreen", v17, @"inputShadowSrcGreen", v16, @"inputShadowDstGreen", v15, @"inputMidSrcGreen", v26, @"inputMidDstGreen", v14, @"inputHilightSrcGreen", v13, @"inputHilightDstGreen", v24, @"inputWhiteSrcGreen", v12, @"inputWhiteDstGreen", v23}];

  return v21;
}

+ (id)_customAttributesForKey:(id)a3
{
  v3 = [a1 defaultValueForKey:a3];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E695F6D8], &unk_1F471F370, *MEMORY[0x1E695F6D0], &unk_1F471F360, *MEMORY[0x1E695F6E8], &unk_1F471F370, *MEMORY[0x1E695F6E0], v3, *MEMORY[0x1E695F6A0], v3, *MEMORY[0x1E695F6C8], *MEMORY[0x1E695F758], *MEMORY[0x1E695F6F0], 0}];

  return v4;
}

+ (id)defaultValueForKey:(id)a3
{
  v3 = a3;
  v4 = 0.0;
  if (([v3 containsString:@"inputBlackSrc"] & 1) == 0 && (objc_msgSend(v3, "containsString:", @"inputBlackDst") & 1) == 0)
  {
    v4 = 0.25;
    if (([v3 containsString:@"inputShadowSrc"] & 1) == 0 && (objc_msgSend(v3, "containsString:", @"inputShadowDst") & 1) == 0)
    {
      v4 = 0.5;
      if (([v3 containsString:@"inputMidSrc"] & 1) == 0 && (objc_msgSend(v3, "containsString:", @"inputMidDst") & 1) == 0)
      {
        v4 = 0.75;
        if (([v3 containsString:@"inputHilightSrc"] & 1) == 0 && (objc_msgSend(v3, "containsString:", @"inputHilightDst") & 1) == 0)
        {
          if (([v3 containsString:@"inputWhiteSrc"] & 1) != 0 || (v4 = 0.0, objc_msgSend(v3, "containsString:", @"inputWhiteDst")))
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

- (id)outputImage
{
  v58[3] = *MEMORY[0x1E69E9840];
  v3 = [(PILevelsFilterHDR *)self _LUTImage];
  if (v3)
  {
    v51 = [MEMORY[0x1E695F680] samplerWithImage:v3 keysAndValues:{*MEMORY[0x1E695FB80], *MEMORY[0x1E695FB78], 0}];
    v50 = [(PILevelsFilterHDR *)self P3KernelHDR];
    v49 = [MEMORY[0x1E695DF90] dictionary];
    v4 = self->_inputImage;
    [MEMORY[0x1E69B3AB0] HLGOpticalScale];
    v6 = v5;
    v7 = 0x1E69B3000;
    if (v5 > 1.0)
    {
      v57[0] = @"inputRVector";
      v8 = [MEMORY[0x1E695F688] vectorWithX:4.92610837 / v5 Y:0.0 Z:0.0 W:0.0];
      v58[0] = v8;
      v57[1] = @"inputGVector";
      v9 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:4.92610837 / v6 Z:0.0 W:0.0];
      v58[1] = v9;
      v57[2] = @"inputBVector";
      v10 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:4.92610837 / v6 W:0.0];
      v58[2] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:3];
      v12 = [(CIImage *)v4 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v11];

      v13 = [MEMORY[0x1E69B3A10] itur2100HLGColorSpace];
      v14 = [v13 linearized];
      v15 = [v14 extended];

      v16 = [v12 imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(v15, "CGColorSpace")}];

      v55[0] = @"inputMinComponents";
      v17 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
      v55[1] = @"inputMaxComponents";
      v56[0] = v17;
      v18 = [MEMORY[0x1E695F688] vectorWithX:4.92610837 Y:4.92610837 Z:4.92610837 W:1.0];
      v56[1] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
      v20 = [v16 imageByApplyingFilter:@"CIColorClamp" withInputParameters:v19];

      v4 = [v20 imageByColorMatchingColorSpaceToWorkingSpace:{objc_msgSend(v15, "CGColorSpace")}];

      v7 = 0x1E69B3000uLL;
    }

    v21 = [*(v7 + 2576) itur2100HLGColorSpace];
    v22 = [v21 CGColorSpace];

    v23 = [(CIImage *)v4 imageByColorMatchingWorkingSpaceToColorSpace:v22];
    v24 = MEMORY[0x1E695F680];
    v25 = [v23 imageByUnpremultiplyingAlpha];
    v26 = [v24 samplerWithImage:v25];

    v27 = [v26 definition];
    [v27 extent];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v54[0] = v26;
    v54[1] = v51;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
    v37 = [v50 applyWithExtent:&__block_literal_global_182 roiCallback:v36 arguments:v49 options:{v29, v31, v33, v35}];

    v38 = [v37 imageByColorMatchingColorSpaceToWorkingSpace:v22];

    v39 = [v38 imageByPremultiplyingAlpha];

    if (v6 > 1.0)
    {
      v52[0] = @"inputRVector";
      v40 = v6 / 4.92610837;
      v41 = [MEMORY[0x1E695F688] vectorWithX:v40 Y:0.0 Z:0.0 W:0.0];
      v53[0] = v41;
      v52[1] = @"inputGVector";
      v42 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:v40 Z:0.0 W:0.0];
      v53[1] = v42;
      v52[2] = @"inputBVector";
      v43 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:v40 W:0.0];
      v53[2] = v43;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:3];
      v45 = [v39 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v44];

      v39 = v45;
    }

    v46 = [MEMORY[0x1E69B3A10] workingColorSpace];
    v47 = [v39 imageByTaggingWithColorSpace:{objc_msgSend(v46, "CGColorSpace")}];
  }

  else
  {
    v47 = self->_inputImage;
  }

  return v47;
}

double __32__PILevelsFilterHDR_outputImage__block_invoke(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return 0.0;
  }

  return result;
}

- (id)_LUTImage
{
  v170 = *MEMORY[0x1E69E9840];
  v168 = xmmword_1E82A9EB0;
  v169 = @"Blue";
  v3 = malloc_type_malloc(0x2000uLL, 0x1000040BDFB0063uLL);
  v163 = 1;
  [(PILevelsFilterHDR *)self floatValueForKey:@"inputBlackSrcRGB" defaultValue:&v163 clearIfNotDefault:0.0];
  v5 = v4;
  [(PILevelsFilterHDR *)self floatValueForKey:@"inputShadowSrcRGB" defaultValue:&v163 clearIfNotDefault:0.25];
  v158 = v6;
  [(PILevelsFilterHDR *)self floatValueForKey:@"inputMidSrcRGB" defaultValue:&v163 clearIfNotDefault:0.5];
  v160 = v7;
  [(PILevelsFilterHDR *)self floatValueForKey:@"inputHilightSrcRGB" defaultValue:&v163 clearIfNotDefault:0.75];
  v155 = v8;
  [(PILevelsFilterHDR *)self floatValueForKey:@"inputWhiteSrcRGB" defaultValue:&v163 clearIfNotDefault:1.0];
  v10 = v9;
  [(PILevelsFilterHDR *)self floatValueForKey:@"inputBlackDstRGB" defaultValue:&v163 clearIfNotDefault:0.0];
  v12 = v11;
  [(PILevelsFilterHDR *)self floatValueForKey:@"inputShadowDstRGB" defaultValue:&v163 clearIfNotDefault:0.25];
  v14 = v13;
  [(PILevelsFilterHDR *)self floatValueForKey:@"inputMidDstRGB" defaultValue:&v163 clearIfNotDefault:0.5];
  v16 = v15;
  [(PILevelsFilterHDR *)self floatValueForKey:@"inputHilightDstRGB" defaultValue:&v163 clearIfNotDefault:0.75];
  v18 = v17;
  [(PILevelsFilterHDR *)self floatValueForKey:@"inputWhiteDstRGB" defaultValue:&v163 clearIfNotDefault:1.0];
  if (v5 == 0.0 && *&v160 == 0.0 && v10 == 0.0)
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
  v24 = v16 - (v23 + *&v160 * v22);
  v25 = *&v158 - *&v160;
  if (*&v158 - *&v160 >= 0.0)
  {
    v26 = 1.0 / (*&v160 - v10);
  }

  else
  {
    v26 = 1.0 / (*&v160 - v5);
  }

  v27 = v25 * v26;
  v28 = v27 + 1.0;
  v29 = -((v27 * 2.0 + 3.0) * v27) * v27 + 1.0;
  if (v28 < 0.0)
  {
    v29 = 0.0;
  }

  v30 = v14 - (v23 + *&v158 * v22 + v29 * v24);
  v31 = *&v155 - *&v160;
  if (*&v155 - *&v160 >= 0.0)
  {
    v32 = 1.0 / (*&v160 - v10);
  }

  else
  {
    v32 = 1.0 / (*&v160 - v5);
  }

  v33 = v31 * v32;
  v34 = v33 + 1.0;
  v35 = -((v33 * 2.0 + 3.0) * v33) * v33 + 1.0;
  if (v34 < 0.0)
  {
    v35 = 0.0;
  }

  v149 = vdupq_lane_s64(*&v22, 0);
  v148 = vdupq_lane_s64(*&v23, 0);
  v146 = vdupq_lane_s64(COERCE__INT64(1.0 / (*&v160 - v5)), 0);
  v147 = vdupq_lane_s64(v160, 0);
  v144 = vdupq_lane_s64(*&v24, 0);
  v145 = vdupq_lane_s64(COERCE__INT64(1.0 / (*&v160 - v10)), 0);
  v142 = vdupq_lane_s64(COERCE__INT64(*&v158 - v5), 0);
  v143 = vdupq_lane_s64(v158, 0);
  v140 = vdupq_lane_s64(*&v30, 0);
  v141 = vdupq_lane_s64(*&v25, 0);
  v138 = vdupq_lane_s64(*&v31, 0);
  v139 = vdupq_lane_s64(v155, 0);
  v135 = v3;
  v36 = v3 + 8;
  v136 = vdupq_lane_s64(COERCE__INT64(v18 - (v23 + *&v155 * v22 + v35 * v24)), 0);
  v137 = vdupq_lane_s64(COERCE__INT64(*&v155 - v10), 0);
  do
  {
    v37 = *(&v168 + v21);
    v38 = [@"inputBlackSrc" stringByAppendingString:v37];
    [(PILevelsFilterHDR *)self floatValueForKey:v38 defaultValue:&v163 clearIfNotDefault:0.0];
    v40 = v39;

    v41 = [@"inputShadowSrc" stringByAppendingString:v37];
    [(PILevelsFilterHDR *)self floatValueForKey:v41 defaultValue:&v163 clearIfNotDefault:0.25];
    v151 = v42;

    v43 = [@"inputMidSrc" stringByAppendingString:v37];
    [(PILevelsFilterHDR *)self floatValueForKey:v43 defaultValue:&v163 clearIfNotDefault:0.5];
    v156 = v44;

    v45 = [@"inputHilightSrc" stringByAppendingString:v37];
    [(PILevelsFilterHDR *)self floatValueForKey:v45 defaultValue:&v163 clearIfNotDefault:0.75];
    v150 = v46;

    v47 = [@"inputWhiteSrc" stringByAppendingString:v37];
    [(PILevelsFilterHDR *)self floatValueForKey:v47 defaultValue:&v163 clearIfNotDefault:1.0];
    v49 = v48;

    v50 = [@"inputBlackDst" stringByAppendingString:v37];
    [(PILevelsFilterHDR *)self floatValueForKey:v50 defaultValue:&v163 clearIfNotDefault:0.0];
    v52 = v51;

    v53 = [@"inputShadowDst" stringByAppendingString:v37];
    [(PILevelsFilterHDR *)self floatValueForKey:v53 defaultValue:&v163 clearIfNotDefault:0.25];
    v55 = v54;

    v56 = [@"inputMidDst" stringByAppendingString:v37];
    [(PILevelsFilterHDR *)self floatValueForKey:v56 defaultValue:&v163 clearIfNotDefault:0.5];
    v58 = v57;

    v59 = [@"inputHilightDst" stringByAppendingString:v37];
    [(PILevelsFilterHDR *)self floatValueForKey:v59 defaultValue:&v163 clearIfNotDefault:0.75];
    v61 = v60;

    v62 = [@"inputWhiteDst" stringByAppendingString:v37];
    [(PILevelsFilterHDR *)self floatValueForKey:v62 defaultValue:&v163 clearIfNotDefault:1.0];
    v64 = v63;

    v65 = *&v150 - *&v156;
    v66 = 1.0 / (*&v156 - v49);
    if (*&v150 - *&v156 >= 0.0)
    {
      v67 = 1.0 / (*&v156 - v49);
    }

    else
    {
      v67 = 1.0 / (*&v156 - v40);
    }

    v68 = v65 * v67;
    v69 = v68 + 1.0;
    v70 = -((v68 * 2.0 + 3.0) * v68) * v68 + 1.0;
    if (v69 < 0.0)
    {
      v70 = 0.0;
    }

    v71 = (v64 - v52) / (v49 - v40);
    v72 = v52 - v40 * v71;
    v73 = v58 - (v72 + *&v156 * v71);
    v74 = v72 + *&v150 * v71 + v70 * v73;
    v75 = *&v151 - *&v156;
    if (*&v151 - *&v156 >= 0.0)
    {
      v76 = 1.0 / (*&v156 - v49);
    }

    else
    {
      v76 = 1.0 / (*&v156 - v40);
    }

    v77 = v75 * v76;
    if (v77 + 1.0 >= 0.0)
    {
      v78 = -((v77 * 2.0 + 3.0) * v77) * v77 + 1.0;
    }

    else
    {
      v78 = 0.0;
    }

    v159 = vdupq_lane_s64(*&v72, 0);
    v161 = vdupq_lane_s64(*&v71, 0);
    v154 = vdupq_lane_s64(COERCE__INT64(1.0 / (*&v156 - v40)), 0);
    v157 = vdupq_lane_s64(v156, 0);
    v152 = vdupq_lane_s64(*&v73, 0);
    v153 = vdupq_lane_s64(*&v66, 0);
    v79 = vdupq_lane_s64(v151, 0);
    v80 = vdupq_lane_s64(COERCE__INT64(*&v151 - v40), 0);
    v81 = vdupq_lane_s64(*&v75, 0);
    v82 = vdupq_lane_s64(COERCE__INT64(v55 - (v72 + *&v151 * v71 + v78 * v73)), 0);
    v83 = vdupq_lane_s64(v150, 0);
    v84 = vdupq_lane_s64(*&v65, 0);
    v85 = vdupq_lane_s64(COERCE__INT64(*&v150 - v49), 0);
    v86 = vdupq_lane_s64(COERCE__INT64(v61 - v74), 0);
    v87 = xmmword_1C7845C80;
    v88 = v36;
    v89 = 1024;
    do
    {
      v90 = vmulq_f64(vcvtq_f64_u64(v87), vdupq_n_s64(0x3F50000000000000uLL));
      v91 = vsubq_f64(v90, v147);
      v92 = vmulq_f64(v91, vbslq_s8(vcltzq_f64(v91), v146, v145));
      __asm
      {
        FMOV            V23.2D, #1.0
        FMOV            V25.2D, #2.0
        FMOV            V26.2D, #3.0
      }

      v100 = vsubq_f64(v90, v143);
      v101 = vmlaq_f64(vmlaq_f64(v148, v149, v90), v144, vbicq_s8(vmlaq_f64(_Q23, v92, vmulq_f64(v92, vnegq_f64(vmlaq_f64(_Q26, _Q25, v92)))), vcltzq_f64(vaddq_f64(v92, _Q23))));
      v102 = vmulq_f64(v100, vdivq_f64(_Q23, vbslq_s8(vcltzq_f64(v100), v142, v141)));
      v103 = vsubq_f64(v90, v139);
      v104 = vmulq_f64(v103, vdivq_f64(_Q23, vbslq_s8(vcltzq_f64(v103), v138, v137)));
      v105 = vmlaq_f64(vmlaq_f64(v101, v140, vbicq_s8(vmlaq_f64(_Q23, v102, vmulq_f64(v102, vnegq_f64(vmlaq_f64(_Q26, _Q25, v102)))), vcltzq_f64(vaddq_f64(v102, _Q23)))), v136, vbicq_s8(vmlaq_f64(_Q23, v104, vmulq_f64(v104, vnegq_f64(vmlaq_f64(_Q26, _Q25, v104)))), vcltzq_f64(vaddq_f64(v104, _Q23))));
      v106 = vsubq_f64(v105, v157);
      v107 = vmulq_f64(v106, vbslq_s8(vcltzq_f64(v106), v154, v153));
      v108 = vsubq_f64(v105, v79);
      v109 = vmulq_f64(v108, vdivq_f64(_Q23, vbslq_s8(vcltzq_f64(v108), v80, v81)));
      v110 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v159, v161, v105), v152, vbicq_s8(vmlaq_f64(_Q23, v107, vmulq_f64(v107, vnegq_f64(vmlaq_f64(_Q26, _Q25, v107)))), vcltzq_f64(vaddq_f64(v107, _Q23)))), v82, vbicq_s8(vmlaq_f64(_Q23, v109, vmulq_f64(v109, vnegq_f64(vmlaq_f64(_Q26, _Q25, v109)))), vcltzq_f64(vaddq_f64(v109, _Q23))));
      v111 = vsubq_f64(v105, v83);
      v112 = vmulq_f64(v111, vdivq_f64(_Q23, vbslq_s8(vcltzq_f64(v111), v84, v85)));
      v113 = vmlaq_f64(v110, v86, vbicq_s8(vmlaq_f64(_Q23, v112, vmulq_f64(v112, vnegq_f64(vmlaq_f64(_Q26, _Q25, v112)))), vcltzq_f64(vaddq_f64(v112, _Q23))));
      v114 = vbicq_s8(v113, vcltzq_f64(v113));
      *&_Q23.f64[0] = vmovn_s64(vcvtq_s64_f64(vmulq_f64(vbslq_s8(vcgtq_f64(v114, _Q23), _Q23, v114), vdupq_n_s64(0x40EFFFE000000000uLL))));
      v87 = vaddq_s64(v87, vdupq_n_s64(2uLL));
      *(v88 - 4) = LOWORD(_Q23.f64[0]);
      *v88 = WORD2(_Q23.f64[0]);
      v88 += 8;
      v89 -= 2;
    }

    while (v89);

    ++v21;
    ++v36;
  }

  while (v21 != 3);
  if (v163)
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
  v116 = vImageConvert_16Uto16F(&dest, &dest, 0);
  if (!v116)
  {
    v117 = MEMORY[0x1E695F658];
    v118 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v135 length:0x2000 freeWhenDone:1];
    v3 = [v117 imageWithBitmapData:v118 bytesPerRow:0x2000 size:*MEMORY[0x1E695F920] format:0 colorSpace:{1024.0, 1.0}];

LABEL_38:
    for (j = 16; j != -8; j -= 8)
    {
    }

    return v3;
  }

  v121 = v116;
  v122 = NUAssertLogger_2293();
  if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
  {
    v123 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed converting data to RGBAh: %ld", v121];
    *buf = 138543362;
    v165 = v123;
    _os_log_error_impl(&dword_1C7694000, v122, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  v124 = MEMORY[0x1E69B38E8];
  specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v126 = NUAssertLogger_2293();
  v127 = os_log_type_enabled(v126, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v127)
    {
      v130 = dispatch_get_specific(*v124);
      v131 = MEMORY[0x1E696AF00];
      v132 = v130;
      v133 = [v131 callStackSymbols];
      v134 = [v133 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v165 = v130;
      v166 = 2114;
      v167 = v134;
      _os_log_error_impl(&dword_1C7694000, v126, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v127)
  {
    v128 = [MEMORY[0x1E696AF00] callStackSymbols];
    v129 = [v128 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    v165 = v129;
    _os_log_error_impl(&dword_1C7694000, v126, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  _NUAssertFailHandler();
  return NUAssertLogger_2293();
}

- (double)floatValueForKey:(id)a3 defaultValue:(double)a4 clearIfNotDefault:(BOOL *)a5
{
  v7 = [(PILevelsFilterHDR *)self valueForKey:a3];
  v8 = v7;
  v9 = a4;
  if (v7)
  {
    [v7 floatValue];
    v9 = v10;
  }

  if (v9 != a4)
  {
    *a5 = 0;
  }

  return v9;
}

- (void)setDefaults
{
  v3 = 0;
  v29 = *MEMORY[0x1E69E9840];
  v27 = xmmword_1E82A9E90;
  v28 = *&off_1E82A9EA0;
  do
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = *(&v27 + v3);
    v6 = [v4 numberWithDouble:{0.0, v27, v28}];
    v7 = [@"inputBlackSrc" stringByAppendingString:v5];
    [(PILevelsFilterHDR *)self setValue:v6 forKey:v7];

    v8 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
    v9 = [@"inputBlackDst" stringByAppendingString:v5];
    [(PILevelsFilterHDR *)self setValue:v8 forKey:v9];

    v10 = [MEMORY[0x1E696AD98] numberWithDouble:0.25];
    v11 = [@"inputShadowSrc" stringByAppendingString:v5];
    [(PILevelsFilterHDR *)self setValue:v10 forKey:v11];

    v12 = [MEMORY[0x1E696AD98] numberWithDouble:0.25];
    v13 = [@"inputShadowDst" stringByAppendingString:v5];
    [(PILevelsFilterHDR *)self setValue:v12 forKey:v13];

    v14 = [MEMORY[0x1E696AD98] numberWithDouble:0.5];
    v15 = [@"inputMidSrc" stringByAppendingString:v5];
    [(PILevelsFilterHDR *)self setValue:v14 forKey:v15];

    v16 = [MEMORY[0x1E696AD98] numberWithDouble:0.5];
    v17 = [@"inputMidDst" stringByAppendingString:v5];
    [(PILevelsFilterHDR *)self setValue:v16 forKey:v17];

    v18 = [MEMORY[0x1E696AD98] numberWithDouble:0.75];
    v19 = [@"inputHilightSrc" stringByAppendingString:v5];
    [(PILevelsFilterHDR *)self setValue:v18 forKey:v19];

    v20 = [MEMORY[0x1E696AD98] numberWithDouble:0.75];
    v21 = [@"inputHilightDst" stringByAppendingString:v5];
    [(PILevelsFilterHDR *)self setValue:v20 forKey:v21];

    v22 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
    v23 = [@"inputWhiteSrc" stringByAppendingString:v5];
    [(PILevelsFilterHDR *)self setValue:v22 forKey:v23];

    v24 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
    v25 = [@"inputWhiteDst" stringByAppendingString:v5];

    [(PILevelsFilterHDR *)self setValue:v24 forKey:v25];
    v3 += 8;
  }

  while (v3 != 32);
  for (i = 24; i != -8; i -= 8)
  {
  }
}

- (id)P3KernelHDR
{
  if (P3KernelHDR_once != -1)
  {
    dispatch_once(&P3KernelHDR_once, &__block_literal_global_2305);
  }

  v3 = P3KernelHDR_singleton;

  return v3;
}

uint64_t __32__PILevelsFilterHDR_P3KernelHDR__block_invoke()
{
  v0 = [MEMORY[0x1E695F660] kernelWithString:{@"kernel vec4 levelsHDR (sampler src, sampler LUT) { vec4 p, r vec2 c1, c2; float f; p = sample(src, samplerCoord(src)); vec3 neg = min(p.rgb, 0.0); vec3 pos = max(p.rgb, 1.0)-1.0; p.rgb = clamp(p.rgb, 0.0, 1.0); f = p.r * 1024; c1 = vec2(floor(f)+0.5, 0.5); c2 = vec2(ceil(f)+0.5, 0.5); r = mix(sample(LUT, samplerTransform(LUT, c1)), sample(LUT, samplerTransform(LUT, c2)), fract(f)); p.r = r.r; f = p.g * 1024; c1 = vec2(floor(f)+0.5, 0.5); c2 = vec2(ceil(f)+0.5, 0.5); r = mix(sample(LUT, samplerTransform(LUT, c1)), sample(LUT, samplerTransform(LUT, c2)), fract(f)); p.g = r.g; f = p.b * 1024; c1 = vec2(floor(f)+0.5, 0.5); c2 = vec2(ceil(f)+0.5, 0.5); r = mix(sample(LUT, samplerTransform(LUT, c1)), sample(LUT, samplerTransform(LUT, c2)), fract(f)); p.b = r.b; p.rgb = max(p.rgb, 0.0); p.rgb = p.rgb + pos + neg; return p; }"}];;
  v1 = P3KernelHDR_singleton;
  P3KernelHDR_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end