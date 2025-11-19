@interface PISpillSuppression
+ (id)applySpillMatteKernel;
+ (id)customAttributes;
+ (id)prepareSpillMatteKernel;
+ (id)spillSuppressionKernels;
- (id)outputImage;
@end

@implementation PISpillSuppression

- (id)outputImage
{
  v164 = *MEMORY[0x1E69E9840];
  v3 = [(PISpillSuppression *)self inputImage];

  if (!v3)
  {
    v5 = 0;
    goto LABEL_46;
  }

  v4 = [(PISpillSuppression *)self inputMatteImage];

  v5 = [(PISpillSuppression *)self inputImage];
  if (!v4)
  {
    goto LABEL_46;
  }

  v6 = [(PISpillSuppression *)self inputMatteImage];
  v7 = [(PISpillSuppression *)self inputTargetBackgroundImage];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = MEMORY[0x1E695F658];
    v11 = [MEMORY[0x1E695F610] blackColor];
    v9 = [v10 imageWithColor:v11];
  }

  v12 = [(PISpillSuppression *)self inputExtent];
  v13 = v12;
  if (v12)
  {
    [v12 CGRectValue];
    v14 = [v5 imageByCroppingToRect:?];

    [v13 CGRectValue];
    v15 = [v9 imageByCroppingToRect:?];

    v9 = v15;
    v5 = v14;
  }

  [v6 extent];
  if (CGRectIsEmpty(v166) || ([v6 extent], CGRectIsInfinite(v167)))
  {
    v123 = NUAssertLogger_6081();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      v124 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid input matte"];
      LODWORD(v163.a) = 138543362;
      *(&v163.a + 4) = v124;
      _os_log_error_impl(&dword_1C7694000, v123, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v163, 0xCu);
    }

    v82 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v126 = NUAssertLogger_6081();
    v127 = os_log_type_enabled(v126, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v127)
      {
        v134 = dispatch_get_specific(*v82);
        v135 = MEMORY[0x1E696AF00];
        v13 = v134;
        v82 = [v135 callStackSymbols];
        v136 = [v82 componentsJoinedByString:@"\n"];
        LODWORD(v163.a) = 138543618;
        *(&v163.a + 4) = v134;
        WORD2(v163.b) = 2114;
        *(&v163.b + 6) = v136;
        _os_log_error_impl(&dword_1C7694000, v126, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v163, 0x16u);
      }
    }

    else if (v127)
    {
      v128 = [MEMORY[0x1E696AF00] callStackSymbols];
      v82 = [v128 componentsJoinedByString:@"\n"];
      LODWORD(v163.a) = 138543362;
      *(&v163.a + 4) = v82;
      _os_log_error_impl(&dword_1C7694000, v126, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v163, 0xCu);
    }

    v132 = _NUAssertFailHandler();
    goto LABEL_62;
  }

  [v5 extent];
  if (CGRectIsEmpty(v168) || ([v5 extent], CGRectIsInfinite(v169)))
  {
    v129 = NUAssertLogger_6081();
    if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
    {
      v130 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid input image"];
      LODWORD(v163.a) = 138543362;
      *(&v163.a + 4) = v130;
      _os_log_error_impl(&dword_1C7694000, v129, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v163, 0xCu);
    }

    v82 = MEMORY[0x1E69B38E8];
    v131 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v126 = NUAssertLogger_6081();
    v132 = os_log_type_enabled(v126, OS_LOG_TYPE_ERROR);
    if (!v131)
    {
      if (v132)
      {
        v133 = [MEMORY[0x1E696AF00] callStackSymbols];
        v82 = [v133 componentsJoinedByString:@"\n"];
        LODWORD(v163.a) = 138543362;
        *(&v163.a + 4) = v82;
        _os_log_error_impl(&dword_1C7694000, v126, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v163, 0xCu);
      }

LABEL_64:

      _NUAssertFailHandler();
      goto LABEL_65;
    }

LABEL_62:
    if (v132)
    {
      v137 = dispatch_get_specific(*v82);
      v138 = MEMORY[0x1E696AF00];
      v13 = v137;
      v82 = [v138 callStackSymbols];
      v139 = [v82 componentsJoinedByString:@"\n"];
      LODWORD(v163.a) = 138543618;
      *(&v163.a + 4) = v137;
      WORD2(v163.b) = 2114;
      *(&v163.b + 6) = v139;
      _os_log_error_impl(&dword_1C7694000, v126, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v163, 0x16u);
    }

    goto LABEL_64;
  }

  [v5 extent];
  v17 = v16;
  [v6 extent];
  v19 = v17 / v18;
  [v5 extent];
  v21 = v20;
  [v6 extent];
  if (v19 >= v21 / v22)
  {
    v23 = v19;
  }

  else
  {
    v23 = v21 / v22;
  }

  v24 = 1.0 / v23;
  CGAffineTransformMakeScale(&v163, 1.0 / v23, 1.0 / v23);
  v25 = [v5 imageByApplyingTransform:&v163];
  [v6 extent];
  v26 = [v25 imageByCroppingToRect:?];

  CGAffineTransformMakeScale(&v163, 1.0 / v23, 1.0 / v23);
  v27 = [v9 imageByApplyingTransform:&v163];
  [v6 extent];
  v28 = [v27 imageByCroppingToRect:?];

  v29 = [(PISpillSuppression *)self inputAlphaThresholdLog10];
  v30 = v29;
  if (!v29)
  {
    v29 = &unk_1F471F490;
  }

  [v29 floatValue];
  v151 = __exp10f(v31);

  v32 = [(PISpillSuppression *)self inputEpsilonLog10];
  v33 = v32;
  if (!v32)
  {
    v32 = &unk_1F471F4A0;
  }

  [v32 floatValue];
  v35 = __exp10f(v34);

  v36 = [(PISpillSuppression *)self inputAlphaEdge];
  v37 = v36;
  if (!v36)
  {
    v36 = &unk_1F471F4C0;
  }

  [v36 floatValue];
  v39 = v38;

  v40 = [(PISpillSuppression *)self inputEdgeRadius];
  v148 = v13;
  v149 = v5;
  v152 = v9;
  v142 = v39;
  if (v40)
  {
    v41 = [(PISpillSuppression *)self inputEdgeRadius];
    [v41 floatValue];
    v140 = v42;
  }

  else
  {
    v140 = 5.0;
  }

  v43 = [(PISpillSuppression *)self inputErosionRadius];
  v44 = v43;
  if (!v43)
  {
    v43 = &unk_1F471F440;
  }

  [v43 floatValue];
  v46 = v45;

  v47 = [(PISpillSuppression *)self inputRadius];
  v48 = v47;
  if (!v47)
  {
    v47 = &unk_1F471F4D0;
  }

  [v47 floatValue];
  v50 = v49;

  v161 = *MEMORY[0x1E695FB10];
  v51 = [MEMORY[0x1E696AD98] numberWithDouble:v24 * v46];
  v162 = v51;
  v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
  v53 = [v6 imageByApplyingFilter:@"CIBoxBlur" withInputParameters:v52];

  v54 = +[PISpillSuppression prepareSpillMatteKernel];
  [v6 extent];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v160[0] = v26;
  v160[1] = v28;
  v145 = v53;
  v146 = v28;
  v160[2] = v53;
  *&v55 = v151;
  v63 = [MEMORY[0x1E696AD98] numberWithFloat:v55];
  v160[3] = v63;
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v160 count:4];
  v144 = v54;
  v65 = [v54 applyWithExtent:v64 arguments:{v56, v58, v60, v62}];

  [v6 extent];
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v143 = v65;
  v159[0] = v65;
  v159[1] = v26;
  v147 = v26;
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v159 count:2];
  v157[0] = @"channels";
  v75 = [(PISpillSuppression *)self inputDebugChannels];
  v76 = v75;
  v77 = @"RGB";
  if (v75)
  {
    v77 = v75;
  }

  v158[0] = v77;
  v157[1] = @"radius";
  v78 = [MEMORY[0x1E696AD98] numberWithDouble:v24 * v50];
  v158[1] = v78;
  v157[2] = @"epsilon";
  *&v79 = v35;
  v80 = [MEMORY[0x1E696AD98] numberWithFloat:v79];
  v158[2] = v80;
  v157[3] = @"iterations";
  v81 = [(PISpillSuppression *)self inputIterations];
  v82 = v6;
  v83 = v81;
  v84 = &unk_1F471EAA8;
  if (v81)
  {
    v84 = v81;
  }

  v158[3] = v84;
  v157[4] = @"constrainToAlpha";
  v85 = [(PISpillSuppression *)self inputConstrainToAlpha];
  v86 = v85;
  v87 = MEMORY[0x1E695E118];
  if (v85)
  {
    v87 = v85;
  }

  v158[4] = v87;
  v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v158 forKeys:v157 count:5];
  v153 = 0;
  v89 = [(CIImageProcessorKernel *)PISpatioTemporalGuidedFilterProcessor applyWithExtent:v74 inputs:v88 arguments:&v153 error:v67, v69, v71, v73];
  v150 = v153;

  v90 = v89;
  if (!v89)
  {
    v13 = v148;
    if (*MEMORY[0x1E69B3D78] == -1)
    {
LABEL_42:
      v116 = v149;
      v117 = v152;
      v118 = v146;
      v114 = v147;
      v119 = v144;
      v115 = v145;
      v120 = v143;
      v121 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v163.a) = 138543362;
        *(&v163.a + 4) = v150;
        _os_log_error_impl(&dword_1C7694000, v121, OS_LOG_TYPE_ERROR, "Failed to generate spill image: %{public}@", &v163, 0xCu);
      }

      v111 = v149;
      goto LABEL_45;
    }

LABEL_65:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_277);
    goto LABEL_42;
  }

  v91 = [v82 imageByClampingToExtent];
  v92 = [v91 imageByApplyingGaussianBlurWithSigma:v140];

  [v82 extent];
  v93 = [v92 imageByCroppingToRect:?];

  v155 = @"inputBackgroundImage";
  v156 = v93;
  v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
  v95 = [v82 imageByApplyingFilter:@"CIMultiplyBlendMode" withInputParameters:v94];

  v141 = v93;
  if (v23 > 1.0)
  {
    CGAffineTransformMakeScale(&v163, v23, v23);
    v96 = [v95 imageByApplyingTransform:&v163];

    CGAffineTransformMakeScale(&v163, v23, v23);
    v97 = [v90 imageByApplyingTransform:&v163];

    v90 = v97;
    v95 = v96;
  }

  v98 = +[PISpillSuppression applySpillMatteKernel];
  [v149 extent];
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v154[0] = v90;
  v154[1] = v149;
  v154[2] = v152;
  v154[3] = v95;
  *&v99 = v151;
  v107 = [MEMORY[0x1E696AD98] numberWithFloat:v99];
  v154[4] = v107;
  LODWORD(v108) = v142;
  v109 = [MEMORY[0x1E696AD98] numberWithFloat:v108];
  v154[5] = v109;
  v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:6];
  v111 = [v98 applyWithExtent:v110 arguments:{v100, v102, v104, v106}];

  v112 = [(PISpillSuppression *)self inputDebugSpillOnly];
  LODWORD(v109) = [v112 BOOLValue];

  if (v109)
  {
    v113 = v90;

    v111 = v113;
  }

  v114 = v147;
  v13 = v148;
  v115 = v145;

  v116 = v149;
  v117 = v152;
  v118 = v146;
  v120 = v143;
  v119 = v144;
LABEL_45:

  v5 = v111;
LABEL_46:

  return v5;
}

+ (id)customAttributes
{
  v48[11] = *MEMORY[0x1E69E9840];
  v47[0] = *MEMORY[0x1E695FAA8];
  v45 = *MEMORY[0x1E695F6F0];
  v2 = v45;
  v46 = *MEMORY[0x1E695F750];
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  v48[0] = v22;
  v47[1] = *MEMORY[0x1E695FB10];
  v4 = *MEMORY[0x1E695F6D0];
  v41[0] = *MEMORY[0x1E695F6D8];
  v3 = v41[0];
  v41[1] = v4;
  v44[0] = &unk_1F471F420;
  v44[1] = &unk_1F471F430;
  v42 = *MEMORY[0x1E695F6A0];
  v5 = v42;
  v43 = v2;
  v16 = *MEMORY[0x1E695F718];
  v44[2] = &unk_1F471F440;
  v44[3] = v16;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v41 count:4];
  v48[1] = v21;
  v47[2] = @"inputIterations";
  v39[0] = v3;
  v39[1] = v4;
  v40[0] = &unk_1F471F450;
  v40[1] = &unk_1F471F460;
  v39[2] = v5;
  v39[3] = v2;
  v6 = *MEMORY[0x1E695F710];
  v40[2] = &unk_1F471F440;
  v40[3] = v6;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:4];
  v48[2] = v20;
  v47[3] = @"inputConstrainToAlpha";
  v37[0] = v5;
  v37[1] = v2;
  v17 = *MEMORY[0x1E695F700];
  v38[0] = MEMORY[0x1E695E118];
  v38[1] = v17;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v48[3] = v19;
  v47[4] = @"inputAlphaThresholdLog10";
  v35[0] = v3;
  v35[1] = v4;
  v36[0] = &unk_1F471F470;
  v36[1] = &unk_1F471F480;
  v35[2] = v5;
  v35[3] = v2;
  v7 = *MEMORY[0x1E695F758];
  v36[2] = &unk_1F471F490;
  v36[3] = v7;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:4];
  v48[4] = v18;
  v47[5] = @"inputEpsilonLog10";
  v33[0] = v3;
  v33[1] = v4;
  v34[0] = &unk_1F471F470;
  v34[1] = &unk_1F471F480;
  v33[2] = v5;
  v33[3] = v2;
  v34[2] = &unk_1F471F4A0;
  v34[3] = v7;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:4];
  v47[6] = @"inputDebugChannels";
  v48[5] = v15;
  v31[0] = @"PIAttributeAvailableModes";
  v31[1] = v5;
  v32[0] = &unk_1F471FC80;
  v32[1] = @"RGB";
  v31[2] = v2;
  v32[2] = @"PIAttributeTypeMode";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];
  v48[6] = v8;
  v47[7] = @"inputErosionRadius";
  v29[0] = v3;
  v29[1] = v4;
  v30[0] = &unk_1F471F420;
  v30[1] = &unk_1F471F430;
  v29[2] = v5;
  v29[3] = v2;
  v30[2] = &unk_1F471F440;
  v30[3] = v16;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:4];
  v47[8] = @"inputAlphaEdge";
  v48[7] = v9;
  v28[0] = &unk_1F471F420;
  v28[1] = &unk_1F471F4B0;
  v27[0] = v3;
  v27[1] = v4;
  v27[2] = v5;
  v27[3] = v2;
  v28[2] = &unk_1F471F4C0;
  v28[3] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v48[8] = v10;
  v47[9] = @"inputEdgeRadius";
  v25[0] = v3;
  v25[1] = v4;
  v26[0] = &unk_1F471F420;
  v26[1] = &unk_1F471F430;
  v25[2] = v5;
  v25[3] = v2;
  v26[2] = &unk_1F471F440;
  v26[3] = v16;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v48[9] = v11;
  v47[10] = @"inputDebugSpillOnly";
  v23[0] = v5;
  v23[1] = v2;
  v24[0] = MEMORY[0x1E695E110];
  v24[1] = v17;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v48[10] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:11];

  return v13;
}

+ (id)applySpillMatteKernel
{
  v2 = [a1 spillSuppressionKernels];
  v3 = [v2 objectForKeyedSubscript:@"applySpillMatte"];

  return v3;
}

+ (id)prepareSpillMatteKernel
{
  v2 = [a1 spillSuppressionKernels];
  v3 = [v2 objectForKeyedSubscript:@"prepareSpillMatte"];

  return v3;
}

+ (id)spillSuppressionKernels
{
  if (spillSuppressionKernels_onceToken != -1)
  {
    dispatch_once(&spillSuppressionKernels_onceToken, &__block_literal_global_6266);
  }

  v3 = spillSuppressionKernels_kernels;

  return v3;
}

uint64_t __45__PISpillSuppression_spillSuppressionKernels__block_invoke()
{
  v0 = [MEMORY[0x1E695F660] kernelsDictionaryWithString:{@"kernel vec4 prepareSpillMatte(__sample fg, __sample bg, __sample matte, float threshold)\n{\nfloat a = step(threshold, matte.r)\nvec4 pix = mix(bg, fg, a);\npix.a = max(1.0 - step(threshold, matte.r), step(1.0 - threshold, matte.r));\nreturn pix;\n}\nkernel vec4 applySpillMatte(__sample sp, __sample fg, __sample bg, __sample matte, float threshold, float edge)\n{\nfloat m0 = matte.r;\nfloat ba = smoothstep(threshold, threshold + edge, m0);\nsp = mix(bg, sp, ba);\nfloat m1 = 1.0 - m0;\nfloat fa = 1.0 - smoothstep(threshold, threshold + edge, m1);\nsp = mix(sp, fg, fa);\nfloat m2 = m1 * m0;\nsp = mix(sp, bg, m2);\nreturn sp;\n}\n\n"}];;
  v1 = spillSuppressionKernels_kernels;
  spillSuppressionKernels_kernels = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end