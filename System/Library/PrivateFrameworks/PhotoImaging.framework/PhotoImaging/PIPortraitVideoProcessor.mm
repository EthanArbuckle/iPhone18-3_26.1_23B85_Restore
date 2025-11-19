@interface PIPortraitVideoProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (id)applyWithInputImage:(id)a3 disparityImage:(id)a4 inputPixelBuffer:(id)a5 disparityPixelBuffer:(id)a6 globalMetadata:(id)a7 timedMetadata:(id)a8 aperture:(id)a9 focusedDisparity:(id)a10 quality:(id)a11 debugMode:(id)a12 isHDR:(BOOL)a13 error:(id *)a14;
+ (int)formatForInputAtIndex:(int)a3;
+ (void)_configureRGBColorTexture:(id)a3 format:(int)a4 isHDR:(BOOL)a5;
@end

@implementation PIPortraitVideoProcessor

+ (id)applyWithInputImage:(id)a3 disparityImage:(id)a4 inputPixelBuffer:(id)a5 disparityPixelBuffer:(id)a6 globalMetadata:(id)a7 timedMetadata:(id)a8 aperture:(id)a9 focusedDisparity:(id)a10 quality:(id)a11 debugMode:(id)a12 isHDR:(BOOL)a13 error:(id *)a14
{
  v103 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v96 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v95 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  if (!a14)
  {
    v58 = NUAssertLogger_2746();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v100 = v59;
      _os_log_error_impl(&dword_1C7694000, v58, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v60 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v62 = NUAssertLogger_2746();
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v63)
      {
        v76 = dispatch_get_specific(*v60);
        v77 = MEMORY[0x1E696AF00];
        v78 = v76;
        v60 = [v77 callStackSymbols];
        v79 = [v60 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v100 = v76;
        v101 = 2114;
        v102 = v79;
        _os_log_error_impl(&dword_1C7694000, v62, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v63)
    {
      v64 = [MEMORY[0x1E696AF00] callStackSymbols];
      v60 = [v64 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v100 = v60;
      _os_log_error_impl(&dword_1C7694000, v62, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v68 = _NUAssertFailHandler();
    goto LABEL_33;
  }

  if (!(v19 | v20))
  {
    v65 = NUAssertLogger_2746();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputImage != nil || inputPixelBuffer != nil"];
      *buf = 138543362;
      v100 = v66;
      _os_log_error_impl(&dword_1C7694000, v65, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v60 = MEMORY[0x1E69B38E8];
    v67 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v62 = NUAssertLogger_2746();
    v68 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
    if (!v67)
    {
      if (v68)
      {
        v69 = [MEMORY[0x1E696AF00] callStackSymbols];
        v60 = [v69 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v100 = v60;
        _os_log_error_impl(&dword_1C7694000, v62, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_35:

      v73 = _NUAssertFailHandler();
      goto LABEL_36;
    }

LABEL_33:
    if (v68)
    {
      v80 = dispatch_get_specific(*v60);
      v81 = MEMORY[0x1E696AF00];
      v82 = v80;
      v60 = [v81 callStackSymbols];
      v83 = [v60 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v100 = v80;
      v101 = 2114;
      v102 = v83;
      _os_log_error_impl(&dword_1C7694000, v62, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_35;
  }

  v27 = v19;
  if (!(v96 | v21))
  {
    v70 = NUAssertLogger_2746();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "disparityImage != nil || disparityPixelBuffer != nil"];
      *buf = 138543362;
      v100 = v71;
      _os_log_error_impl(&dword_1C7694000, v70, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v60 = MEMORY[0x1E69B38E8];
    v72 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v62 = NUAssertLogger_2746();
    v73 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
    if (!v72)
    {
      if (v73)
      {
        v74 = [MEMORY[0x1E696AF00] callStackSymbols];
        v75 = [v74 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v100 = v75;
        _os_log_error_impl(&dword_1C7694000, v62, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_38;
    }

LABEL_36:
    if (v73)
    {
      v84 = dispatch_get_specific(*v60);
      v85 = MEMORY[0x1E696AF00];
      v86 = v84;
      v87 = [v85 callStackSymbols];
      v88 = [v87 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v100 = v84;
      v101 = 2114;
      v102 = v88;
      _os_log_error_impl(&dword_1C7694000, v62, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_38:

    _NUAssertFailHandler();
  }

  v91 = v26;
  v92 = v25;
  v90 = v19;
  if (v19)
  {
    [v19 extent];
    v29 = v28;
    v31 = v30;
    Width = v32;
    Height = v34;
    v36 = v20;
    if (v96)
    {
      v37 = v24;
      v38 = v23;
      [v96 extent];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v98[0] = v27;
      v98[1] = v96;
      v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2];
LABEL_9:
      v51 = v21;
      goto LABEL_12;
    }
  }

  else
  {
    Width = CVPixelBufferGetWidth([v20 CVPixelBuffer]);
    Height = CVPixelBufferGetHeight([v20 CVPixelBuffer]);
    v29 = 0.0;
    v36 = v20;
    if (v96)
    {
      v37 = v24;
      v38 = v23;
      [v96 extent];
      v40 = v47;
      v42 = v48;
      v44 = v49;
      v46 = v50;
      v31 = 0.0;
      v93 = MEMORY[0x1E695E0F0];
      goto LABEL_9;
    }

    v31 = 0.0;
  }

  v37 = v24;
  v38 = v23;
  v44 = CVPixelBufferGetWidth([v21 CVPixelBuffer]);
  v51 = v21;
  v46 = CVPixelBufferGetHeight([v21 CVPixelBuffer]);
  v40 = 0.0;
  v93 = MEMORY[0x1E695E0F0];
  v42 = 0.0;
LABEL_12:
  v52 = [MEMORY[0x1E695F688] vectorWithCGRect:{v29, v31, Width, Height}];
  v97[0] = v52;
  v53 = [MEMORY[0x1E695F688] vectorWithCGRect:{v40, v42, v44, v46}];
  v97[1] = v53;
  v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:2];

  v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v54 setObject:v89 forKeyedSubscript:@"imageExtents"];
  [v54 setObject:v22 forKeyedSubscript:@"globalMetadata"];
  [v54 setObject:v95 forKeyedSubscript:@"timedMetadata"];
  [v54 setObject:v38 forKeyedSubscript:@"aperture"];
  [v54 setObject:v37 forKeyedSubscript:@"focusDistance"];
  [v54 setObject:v92 forKeyedSubscript:@"quality"];
  [v54 setObject:v91 forKeyedSubscript:@"debug"];
  v55 = [MEMORY[0x1E696AD98] numberWithBool:a13];
  [v54 setObject:v55 forKeyedSubscript:@"isHDR"];

  [v54 setObject:v36 forKeyedSubscript:@"colorPixelBuffer"];
  [v54 setObject:v51 forKeyedSubscript:@"disparityPixelBuffer"];
  v56 = [a1 applyWithExtent:v93 inputs:v54 arguments:a14 error:{v29, v31, Width, Height}];

  return v56;
}

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  v6 = [a4 objectForKeyedSubscript:{@"imageExtents", a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];
  v7 = [v6 objectAtIndexedSubscript:a3];
  [v7 CGRectValue];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

+ (int)formatForInputAtIndex:(int)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v3 = MEMORY[0x1E695F920];
    return *v3;
  }

  if (a3 == 1)
  {
    v3 = MEMORY[0x1E695F930];
    return *v3;
  }

  v5 = NUAssertLogger_2746();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid index"];
    v24 = 138543362;
    v25 = v6;
    _os_log_error_impl(&dword_1C7694000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v24, 0xCu);
  }

  v7 = MEMORY[0x1E69B38E8];
  specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v9 = NUAssertLogger_2746();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v10)
    {
      v13 = dispatch_get_specific(*v7);
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      v24 = 138543618;
      v25 = v13;
      v26 = 2114;
      v27 = v17;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v24, 0x16u);
    }
  }

  else if (v10)
  {
    v11 = [MEMORY[0x1E696AF00] callStackSymbols];
    v12 = [v11 componentsJoinedByString:@"\n"];
    v24 = 138543362;
    v25 = v12;
    _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v24, 0xCu);
  }

  v18 = _NUAssertFailHandler();
  return [(PIPortraitVideoProcessor *)v18 processWithInputs:v19 arguments:v20 output:v21 error:v22, v23];
}

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v154 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v145 = a4;
  v9 = a5;
  if ([v8 count] != 2 && objc_msgSend(v8, "count"))
  {
    v66 = NUAssertLogger_2746();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unexpected inputs"];
      *v151 = 138543362;
      *&v151[4] = v67;
      _os_log_error_impl(&dword_1C7694000, v66, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v151, 0xCu);
    }

    v68 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v59 = NUAssertLogger_2746();
    v70 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v70)
      {
        v106 = dispatch_get_specific(*v68);
        v107 = MEMORY[0x1E696AF00];
        v108 = v106;
        v109 = [v107 callStackSymbols];
        v110 = [v109 componentsJoinedByString:@"\n"];
        *v151 = 138543618;
        *&v151[4] = v106;
        *&v151[12] = 2114;
        *&v151[14] = v110;
        _os_log_error_impl(&dword_1C7694000, v59, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v151, 0x16u);
      }

      goto LABEL_85;
    }

    if (!v70)
    {
      goto LABEL_85;
    }

    goto LABEL_68;
  }

  v144 = v8;
  v10 = [v9 metalCommandBuffer];
  v11 = [v10 device];

  if (!v11)
  {
    v55 = NUAssertLogger_2746();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"expected a device"];
      *v151 = 138543362;
      *&v151[4] = v56;
      _os_log_error_impl(&dword_1C7694000, v55, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v151, 0xCu);
    }

    v57 = MEMORY[0x1E69B38E8];
    v58 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v59 = NUAssertLogger_2746();
    v60 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
    if (v58)
    {
      if (v60)
      {
        v71 = dispatch_get_specific(*v57);
        v72 = MEMORY[0x1E696AF00];
        v73 = v71;
        v74 = [v72 callStackSymbols];
        v75 = [v74 componentsJoinedByString:@"\n"];
        *v151 = 138543618;
        *&v151[4] = v71;
        *&v151[12] = 2114;
        *&v151[14] = v75;
        _os_log_error_impl(&dword_1C7694000, v59, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v151, 0x16u);
      }

      goto LABEL_85;
    }

    if (!v60)
    {
      goto LABEL_85;
    }

    goto LABEL_68;
  }

  v12 = [v9 metalTexture];

  if (!v12)
  {
    v61 = NUAssertLogger_2746();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"expected a texture"];
      *v151 = 138543362;
      *&v151[4] = v62;
      _os_log_error_impl(&dword_1C7694000, v61, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v151, 0xCu);
    }

    v63 = MEMORY[0x1E69B38E8];
    v64 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v59 = NUAssertLogger_2746();
    v65 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
    if (v64)
    {
      if (v65)
      {
        v76 = dispatch_get_specific(*v63);
        v77 = MEMORY[0x1E696AF00];
        v78 = v76;
        v79 = [v77 callStackSymbols];
        v80 = [v79 componentsJoinedByString:@"\n"];
        *v151 = 138543618;
        *&v151[4] = v76;
        *&v151[12] = 2114;
        *&v151[14] = v80;
        _os_log_error_impl(&dword_1C7694000, v59, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v151, 0x16u);
      }

      goto LABEL_85;
    }

    if (!v65)
    {
      goto LABEL_85;
    }

    goto LABEL_68;
  }

  v138 = [v145 objectForKeyedSubscript:@"aperture"];
  v13 = [v145 objectForKeyedSubscript:@"focusDistance"];
  v136 = [v145 objectForKeyedSubscript:@"quality"];
  v135 = [v145 objectForKeyedSubscript:@"debug"];
  v142 = [v145 objectForKeyedSubscript:@"isHDR"];
  v140 = [v145 objectForKeyedSubscript:@"globalMetadata"];
  v137 = [v145 objectForKeyedSubscript:@"timedMetadata"];
  v14 = [v9 metalCommandBuffer];
  v141 = [v14 device];

  if ([v8 count] == 2)
  {
    v15 = [v8 objectAtIndexedSubscript:0];
    v16 = [v15 metalTexture];

    if (v16)
    {
      v17 = [v8 objectAtIndexedSubscript:0];
      v18 = [v17 metalTexture];

      v143 = [MEMORY[0x1E69C4FC0] createRGBA:v18];
      v19 = [v8 objectAtIndexedSubscript:0];
      [a1 _configureRGBColorTexture:v143 format:objc_msgSend(v19 isHDR:{"format"), objc_msgSend(v142, "BOOLValue")}];

      v20 = [v8 objectAtIndexedSubscript:0];
      [v20 region];
      v21 = NUPixelSizeFromCGSize();
      v23 = v22;

      v24 = [v144 objectAtIndexedSubscript:1];
      v25 = [v24 metalTexture];

      if (v25)
      {
        v26 = [v144 objectAtIndexedSubscript:1];
        v134 = [v26 metalTexture];

        v27 = [v144 objectAtIndexedSubscript:1];
        [v27 region];
        v28 = NUPixelSizeFromCGSize();
        v30 = v29;

        goto LABEL_21;
      }

      v91 = NUAssertLogger_2746();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        v92 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected an input disparity texture"];
        *v151 = 138543362;
        *&v151[4] = v92;
        _os_log_error_impl(&dword_1C7694000, v91, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v151, 0xCu);
      }

      v93 = MEMORY[0x1E69B38E8];
      v94 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v59 = NUAssertLogger_2746();
      v95 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
      if (v94)
      {
        if (v95)
        {
          v121 = dispatch_get_specific(*v93);
          v122 = MEMORY[0x1E696AF00];
          v123 = v121;
          v124 = [v122 callStackSymbols];
          v125 = [v124 componentsJoinedByString:@"\n"];
          *v151 = 138543618;
          *&v151[4] = v121;
          *&v151[12] = 2114;
          *&v151[14] = v125;
          _os_log_error_impl(&dword_1C7694000, v59, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v151, 0x16u);
        }

        goto LABEL_85;
      }

      if (v95)
      {
        goto LABEL_68;
      }

LABEL_85:

      _NUAssertFailHandler();
      goto LABEL_89;
    }

    v86 = NUAssertLogger_2746();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected an input color texture"];
      *v151 = 138543362;
      *&v151[4] = v87;
      _os_log_error_impl(&dword_1C7694000, v86, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v151, 0xCu);
    }

    v88 = MEMORY[0x1E69B38E8];
    v89 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v59 = NUAssertLogger_2746();
    v90 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
    if (v89)
    {
      if (v90)
      {
        v116 = dispatch_get_specific(*v88);
        v117 = MEMORY[0x1E696AF00];
        v118 = v116;
        v119 = [v117 callStackSymbols];
        v120 = [v119 componentsJoinedByString:@"\n"];
        *v151 = 138543618;
        *&v151[4] = v116;
        *&v151[12] = 2114;
        *&v151[14] = v120;
        _os_log_error_impl(&dword_1C7694000, v59, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v151, 0x16u);
      }

      goto LABEL_85;
    }

    if (!v90)
    {
      goto LABEL_85;
    }

LABEL_68:
    v96 = [MEMORY[0x1E696AF00] callStackSymbols];
    v97 = [v96 componentsJoinedByString:@"\n"];
    *v151 = 138543362;
    *&v151[4] = v97;
    _os_log_error_impl(&dword_1C7694000, v59, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v151, 0xCu);

    goto LABEL_85;
  }

  v31 = [v145 objectForKeyedSubscript:@"colorPixelBuffer"];
  v32 = [v31 CVPixelBuffer];
  if (!v32)
  {
    v81 = NUAssertLogger_2746();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      v82 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing direct source color pixel buffer"];
      *v151 = 138543362;
      *&v151[4] = v82;
      _os_log_error_impl(&dword_1C7694000, v81, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v151, 0xCu);
    }

    v83 = MEMORY[0x1E69B38E8];
    v84 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v59 = NUAssertLogger_2746();
    v85 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
    if (v84)
    {
      if (v85)
      {
        v111 = dispatch_get_specific(*v83);
        v112 = MEMORY[0x1E696AF00];
        v113 = v111;
        v114 = [v112 callStackSymbols];
        v115 = [v114 componentsJoinedByString:@"\n"];
        *v151 = 138543618;
        *&v151[4] = v111;
        *&v151[12] = 2114;
        *&v151[14] = v115;
        _os_log_error_impl(&dword_1C7694000, v59, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v151, 0x16u);
      }

      goto LABEL_85;
    }

    if (!v85)
    {
      goto LABEL_85;
    }

    goto LABEL_68;
  }

  *buf = 0;
  v150 = 0;
  [MEMORY[0x1E69C4F98] pixelBufferToLumaChroma:v141 pixelBuffer:v32 outLuma:buf outChroma:&v150 read:1 write:1];
  v143 = [MEMORY[0x1E69C4FC0] createYUV420:*buf chroma:v150];
  v33 = [v142 BOOLValue];
  v34 = v33;
  if (v33)
  {
    v35 = 10;
  }

  else
  {
    v35 = 8;
  }

  v36 = MEMORY[0x1E6965F48];
  if (!v33)
  {
    v36 = MEMORY[0x1E6965F50];
  }

  [v143 setTransferFunction:*v36];
  v37 = MEMORY[0x1E695FFC0];
  if (!v34)
  {
    v37 = MEMORY[0x1E6965DB8];
  }

  [v143 setColorPrimaries:*v37];
  v38 = MEMORY[0x1E6965FB0];
  if (!v34)
  {
    v38 = MEMORY[0x1E6965FD0];
  }

  [v143 setYCbCrMatrix:*v38];
  [v143 setYCbCrColorDepth:v35];
  [v143 setYCbCrFullRange:0];
  v21 = [v31 size];
  v23 = v39;
  v40 = [v145 objectForKeyedSubscript:@"disparityPixelBuffer"];
  v41 = [v40 CVPixelBuffer];
  if (!v41)
  {
    v98 = NUAssertLogger_2746();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      v99 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing direct source disparity pixel buffer"];
      *v151 = 138543362;
      *&v151[4] = v99;
      _os_log_error_impl(&dword_1C7694000, v98, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v151, 0xCu);
    }

    v100 = MEMORY[0x1E69B38E8];
    v101 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v102 = NUAssertLogger_2746();
    v103 = os_log_type_enabled(v102, OS_LOG_TYPE_ERROR);
    if (v101)
    {
      if (v103)
      {
        v126 = dispatch_get_specific(*v100);
        v127 = MEMORY[0x1E696AF00];
        v128 = v126;
        v129 = [v127 callStackSymbols];
        v130 = [v129 componentsJoinedByString:@"\n"];
        *v151 = 138543618;
        *&v151[4] = v126;
        *&v151[12] = 2114;
        *&v151[14] = v130;
        _os_log_error_impl(&dword_1C7694000, v102, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v151, 0x16u);
      }
    }

    else if (v103)
    {
      v104 = [MEMORY[0x1E696AF00] callStackSymbols];
      v105 = [v104 componentsJoinedByString:@"\n"];
      *v151 = 138543362;
      *&v151[4] = v105;
      _os_log_error_impl(&dword_1C7694000, v102, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v151, 0xCu);
    }

    _NUAssertFailHandler();
LABEL_89:
    __break(1u);
  }

  v134 = [MEMORY[0x1E69C4F98] getMTLTextureFromPixelBuffer:v41 device:v141];
  v28 = [v40 size];
  v30 = v42;

LABEL_21:
  v43 = MEMORY[0x1E69C4FC0];
  v44 = [v9 metalTexture];
  v139 = [v43 createRGBA:v44];

  [a1 _configureRGBColorTexture:v139 format:objc_msgSend(v9 isHDR:{"format"), objc_msgSend(v142, "BOOLValue")}];
  v45 = objc_alloc_init(MEMORY[0x1E69C4FB0]);
  [v45 setSourceColor:v143];
  [v45 setSourceDisparity:v134];
  [v45 setDestinationColor:v139];
  [v140 applyToRenderRequest:v45];
  [v137 applyToRenderRequest:v45];
  if (v138)
  {
    [v138 floatValue];
    [v45 setFNumber:?];
  }

  if (v13)
  {
    [v13 floatValue];
    [v45 setFocusDisparity:?];
  }

  v133 = v13;
  *v151 = 0;
  *&v151[8] = v151;
  *&v151[16] = 0x2020000000;
  v152 = 0;
  v46 = [v136 intValue];
  v47 = [v135 integerValue];
  v146[0] = MEMORY[0x1E69E9820];
  v146[1] = 3221225472;
  v146[2] = __69__PIPortraitVideoProcessor_processWithInputs_arguments_output_error___block_invoke;
  v146[3] = &unk_1E82A9F28;
  v48 = v45;
  v147 = v48;
  v149 = v151;
  v49 = v9;
  v148 = v49;
  [PIPortraitVideoRenderer renderOnDevice:v141 colorSize:v21 disparitySize:v23 quality:v28 debugMode:v30 globalRenderingMetadata:v46 usingBlock:v47, v140, v146];
  v50 = *(*&v151[8] + 24);
  v51 = v133;
  if (v50)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_200);
    }

    v52 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v54 = *(*&v151[8] + 24);
      *buf = 67109120;
      *&buf[4] = v54;
      _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "CPV rendering failure, returned status %d", buf, 8u);
    }

    if (a6)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(*&v151[8] + 24) userInfo:0];
      *a6 = v51 = v133;
    }
  }

  _Block_object_dispose(v151, 8);
  return v50 == 0;
}

void __69__PIPortraitVideoProcessor_processWithInputs_arguments_output_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 setRenderState:a3];
  v7 = [*(a1 + 40) metalCommandBuffer];
  LODWORD(v5) = [v6 encodeRenderTo:v7 withRenderRequest:*(a1 + 32)];

  *(*(*(a1 + 48) + 8) + 24) = v5;
  v8 = [*(a1 + 40) metalCommandBuffer];
  [v8 addCompletedHandler:&__block_literal_global_2838];
}

void __69__PIPortraitVideoProcessor_processWithInputs_arguments_output_error___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 status] == 5)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_200);
    }

    v3 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 label];
      v6 = [v2 error];
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      _os_log_error_impl(&dword_1C7694000, v4, OS_LOG_TYPE_ERROR, "Error executing command buffer '%{public}@': %{public}@", &v7, 0x16u);
    }
  }
}

+ (void)_configureRGBColorTexture:(id)a3 format:(int)a4 isHDR:(BOOL)a5
{
  v5 = a5;
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (*MEMORY[0x1E695F890] != a4 && *MEMORY[0x1E695F920] != a4)
  {
    v12 = NUAssertLogger_2746();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected input pixel format"];
      *buf = 138543362;
      v28 = v14;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_2746();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(*v15);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        v24 = [v22 callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v21;
        v29 = 2114;
        v30 = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v20;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v9 = MEMORY[0x1E69C4FD0];
  if (!v5)
  {
    v9 = MEMORY[0x1E6965F60];
  }

  v10 = MEMORY[0x1E6965F48];
  if (!v5)
  {
    v10 = MEMORY[0x1E6965F50];
  }

  if (*MEMORY[0x1E695F890] == a4)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v26 = v7;
  [v7 setTransferFunction:*v11];
}

@end