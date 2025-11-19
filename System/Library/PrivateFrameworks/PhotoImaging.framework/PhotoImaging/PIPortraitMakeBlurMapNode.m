@interface PIPortraitMakeBlurMapNode
- (PIPortraitMakeBlurMapNode)initWithInput:(id)a3 settings:(id)a4;
- (PIPortraitMakeBlurMapNode)initWithSettings:(id)a3 inputs:(id)a4;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
@end

@implementation PIPortraitMakeBlurMapNode

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v152 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    v109 = NUAssertLogger_16450();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      v110 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v149 = v110;
      _os_log_error_impl(&dword_1C7694000, v109, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v111 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v113 = NUAssertLogger_16450();
    v114 = os_log_type_enabled(v113, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v114)
      {
        v117 = dispatch_get_specific(*v111);
        v118 = MEMORY[0x1E696AF00];
        v119 = v117;
        v120 = [v118 callStackSymbols];
        v121 = [v120 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v149 = v117;
        v150 = 2114;
        v151 = v121;
        _os_log_error_impl(&dword_1C7694000, v113, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v114)
    {
      v115 = [MEMORY[0x1E696AF00] callStackSymbols];
      v116 = [v115 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v149 = v116;
      _os_log_error_impl(&dword_1C7694000, v113, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = v9;
  if ([v9 evaluationMode] != 1)
  {
    v29 = MEMORY[0x1E69B3A48];
    v30 = @"Portrait Blur Map only applies to images";
LABEL_13:
    [v29 unsupportedError:v30 object:0];
    *a5 = v27 = 0;
    goto LABEL_54;
  }

  if ([v10 auxiliaryImageType] != 1)
  {
    v29 = MEMORY[0x1E69B3A48];
    v30 = @"Portrait Blur Map does not apply to auxiliary images";
    goto LABEL_13;
  }

  v11 = [(PIPortraitNode *)self input];
  v12 = [v11 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:a5];

  if (v12)
  {
    v13 = [(PIPortraitNode *)self input];
    v14 = [v13 imageProperties:a5];

    if (!v14)
    {
      v27 = 0;
LABEL_52:

      goto LABEL_53;
    }

    v15 = [v10 copy];
    v16 = [v14 auxiliaryImagePropertiesForType:2];
    if (v16)
    {
      v17 = v16;
      v140 = v12;
      [v15 setAuxiliaryImageType:2];
      [v14 size];
      [v17 size];
      v18 = NUScaleToFillSizeInSize();
      [v15 setScale:{v18, v19}];
      v20 = [(PIPortraitNode *)self input];
      v145 = 0;
      v21 = [v20 nodeByReplayingAgainstCache:v8 pipelineState:v15 error:&v145];
      v22 = v145;

      v135 = v21;
      if (v21)
      {
        v139 = v22;
        v23 = [v14 auxiliaryImagePropertiesForType:3];

        v134 = v15;
        if (v23)
        {
          [v15 setAuxiliaryImageType:3];
          [v14 size];
          [v23 size];
          v24 = NUScaleToFillSizeInSize();
          [v15 setScale:{v24, v25}];
          v26 = [(PIPortraitNode *)self input];
          v144 = 0;
          v27 = [v26 nodeByReplayingAgainstCache:v8 pipelineState:v15 error:&v144];
          v28 = v144;

          v131 = v27;
          v12 = v140;
          if (!v27)
          {
            v48 = MEMORY[0x1E69B3A48];
            v49 = [(PIPortraitNode *)self input];
            *a5 = [v48 errorWithCode:1 reason:@"Failed to obtain portrait matte aux image" object:v49 underlyingError:v28];
LABEL_50:

            v15 = v134;
            goto LABEL_51;
          }

          v139 = v28;
          v15 = v134;
        }

        else
        {
          v131 = 0;
        }

        v35 = [v14 auxiliaryImagePropertiesForType:5];

        if (v35)
        {
          [v15 setAuxiliaryImageType:5];
          [v14 size];
          [v35 size];
          v36 = NUScaleToFillSizeInSize();
          [v15 setScale:{v36, v37}];
          v38 = [(PIPortraitNode *)self input];
          v143 = 0;
          v27 = [v38 nodeByReplayingAgainstCache:v8 pipelineState:v15 error:&v143];
          v28 = v143;

          if (!v27)
          {
            v50 = MEMORY[0x1E69B3A48];
            v51 = [(PIPortraitNode *)self input];
            *a5 = [v50 errorWithCode:1 reason:@"Failed to obtain hair matte aux image" object:v51 underlyingError:v28];
            v49 = v131;
LABEL_49:

            v23 = v35;
            v12 = v140;
            goto LABEL_50;
          }

          v139 = v28;
          v15 = v134;
        }

        else
        {
          v27 = 0;
        }

        v130 = v27;
        v39 = [(NURenderNode *)self settings];
        v40 = [v39 objectForKeyedSubscript:@"glassesMatteAllowed"];
        if ([v40 BOOLValue])
        {
          v41 = [v14 auxiliaryImagePropertiesForType:8];

          v42 = v41;
          if (v41)
          {
            [v15 setAuxiliaryImageType:8];
            [v14 size];
            [v41 size];
            v43 = NUScaleToFillSizeInSize();
            [v15 setScale:{v43, v44}];
            v45 = [(PIPortraitNode *)self input];
            v142 = 0;
            v46 = [v45 nodeByReplayingAgainstCache:v8 pipelineState:v15 error:&v142];
            v47 = v142;

            if (!v46)
            {
              v128 = v41;
              v106 = MEMORY[0x1E69B3A48];
              v107 = [(PIPortraitNode *)self input];
              v108 = v106;
              v104 = v107;
              [v108 errorWithCode:1 reason:@"Failed to obtain glasses matte aux image" object:v107 underlyingError:v47];
              *a5 = v27 = 0;
              v28 = v47;
              v51 = v130;
              v49 = v131;
LABEL_48:

              v35 = v128;
              goto LABEL_49;
            }

            v132 = v46;
            v139 = v47;
          }

          else
          {
            v132 = 0;
          }
        }

        else
        {

          v132 = 0;
          v42 = v35;
        }

        v52 = [MEMORY[0x1E695DF90] dictionary];
        v53 = [(NURenderNode *)self settings];
        v54 = [v53 objectForKeyedSubscript:@"depthInfo"];

        v55 = [(NURenderNode *)self settings];
        v56 = [v55 objectForKeyedSubscript:@"focusRect"];
        v57 = v56;
        v127 = v8;
        v128 = v42;
        if (v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = [v54 objectForKeyedSubscript:@"focusRect"];
        }

        v59 = v58;

        v126 = v54;
        v141 = [v54 objectForKeyedSubscript:@"faces"];
        v60 = [(NURenderNode *)self settings];
        v61 = [v60 objectForKeyedSubscript:@"aperture"];
        v62 = v61;
        if (v61)
        {
          v63 = v61;
        }

        else
        {
          v63 = &unk_1F471F760;
        }

        [v52 setObject:v63 forKeyedSubscript:@"inputAperture"];

        v64 = v52;
        v65 = v59;
        v66 = v132;
        v129 = v64;
        if (v59)
        {
          v67 = objc_opt_class();
          v136 = [v65 objectForKeyedSubscript:@"x"];
          v147[0] = v136;
          v124 = [v65 objectForKeyedSubscript:@"y"];
          v147[1] = v124;
          v122 = [v65 objectForKeyedSubscript:@"w"];
          v147[2] = v122;
          v68 = [v65 objectForKeyedSubscript:@"h"];
          v147[3] = v68;
          v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v147 count:4];
          v70 = [v67 vectorWithFloats:v69];
          [v129 setObject:v70 forKeyedSubscript:@"inputFocusRect"];

          v66 = v132;
        }

        v125 = v65;
        v71 = v141;
        v133 = v66;
        if (v141)
        {
          v123 = v14;
          v72 = [MEMORY[0x1E695DF70] array];
          v73 = [MEMORY[0x1E695DF70] array];
          v74 = [MEMORY[0x1E695DF70] array];
          v137 = [MEMORY[0x1E695DF70] array];
          if ([v141 count])
          {
            v75 = 0;
            do
            {
              v76 = [v71 objectAtIndexedSubscript:v75];
              v77 = [v76 objectForKeyedSubscript:@"leftEyeX"];
              [v72 addObject:v77];

              v78 = [v76 objectForKeyedSubscript:@"leftEyeY"];
              [v72 addObject:v78];

              v79 = [v76 objectForKeyedSubscript:@"rightEyeX"];
              [v73 addObject:v79];

              v80 = [v76 objectForKeyedSubscript:@"rightEyeY"];
              [v73 addObject:v80];

              v81 = [v76 objectForKeyedSubscript:@"noseX"];
              [v74 addObject:v81];

              v82 = [v76 objectForKeyedSubscript:@"noseY"];
              [v74 addObject:v82];

              v83 = [v76 objectForKeyedSubscript:@"chinX"];
              if (v83)
              {
                v84 = v83;
                v85 = [v76 objectForKeyedSubscript:@"chinY"];

                if (v85)
                {
                  v86 = [v76 objectForKeyedSubscript:@"chinX"];
                  [v137 addObject:v86];

                  v87 = [v76 objectForKeyedSubscript:@"chinY"];
                  [v137 addObject:v87];
                }
              }

              ++v75;
              v71 = v141;
            }

            while (v75 < [v141 count]);
          }

          v88 = [objc_opt_class() vectorWithFloats:v72];
          [v129 setObject:v88 forKeyedSubscript:@"inputLeftEyePosition"];

          v89 = [objc_opt_class() vectorWithFloats:v73];
          [v129 setObject:v89 forKeyedSubscript:@"inputRightEyePosition"];

          v90 = [objc_opt_class() vectorWithFloats:v74];
          [v129 setObject:v90 forKeyedSubscript:@"inputFaceMidPoint"];

          v91 = [objc_opt_class() vectorWithFloats:v137];
          [v129 setObject:v91 forKeyedSubscript:@"inputChinPosition"];

          v14 = v123;
        }

        v92 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v92 setObject:v140 forKeyedSubscript:@"inputImage"];
        [v92 setObject:v135 forKeyedSubscript:@"inputShiftmapImage"];
        v138 = [v14 auxiliaryImagePropertiesForType:2];
        [v138 depthCameraCalibrationData];
        v94 = v93 = v14;
        [v129 setObject:v94 forKeyedSubscript:@"inputCalibrationData"];

        [v129 setObject:objc_msgSend(v138 forKeyedSubscript:{"auxiliaryDataInfoMetadata"), @"inputAuxDataMetadata"}];
        v95 = [MEMORY[0x1E69B3C38] scaleMultiplyOfScalar:1.0];
        [v129 setObject:v95 forKeyedSubscript:@"inputScale"];

        v96 = objc_opt_class();
        v97 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v93, "size")}];
        v146[0] = v97;
        v98 = MEMORY[0x1E696AD98];
        [v93 size];
        v100 = [v98 numberWithInteger:v99];
        v146[1] = v100;
        v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:v146 count:2];
        v102 = [v96 vectorWithFloats:v101];
        [v129 setObject:v102 forKeyedSubscript:@"inputOriginalSize"];

        v49 = v131;
        [v92 setObject:v131 forKeyedSubscript:@"inputMatteImage"];
        [v92 setObject:v130 forKeyedSubscript:@"inputHairImage"];
        [v92 setObject:v133 forKeyedSubscript:@"inputGlassesImage"];
        v103 = [objc_alloc(MEMORY[0x1E69B3A70]) initWithFilterName:@"CIDepthEffectMakeBlurMap" settings:v129 inputs:v92];
        v8 = v127;
        v27 = [v103 resolvedNodeWithCachedInputs:v92 cache:v127 pipelineState:v10 error:a5];

        v14 = v93;
        v104 = v133;

        v51 = v130;
        v28 = v139;
        goto LABEL_48;
      }

      v33 = MEMORY[0x1E69B3A48];
      v34 = [(PIPortraitNode *)self input];
      *a5 = [v33 errorWithCode:1 reason:@"Failed to obtain disparity aux image" object:v34 underlyingError:v22];

      v27 = 0;
      v12 = v140;
    }

    else
    {
      v31 = MEMORY[0x1E69B3A48];
      v32 = [(PIPortraitNode *)self input];
      *a5 = [v31 missingError:@"Missing depth data" object:v32];

      v27 = 0;
    }

LABEL_51:

    goto LABEL_52;
  }

  v27 = 0;
LABEL_53:

LABEL_54:

  return v27;
}

- (PIPortraitMakeBlurMapNode)initWithInput:(id)a3 settings:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v12 = NUAssertLogger_16450();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v14 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_16450();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(*v14);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        v23 = [v21 callStackSymbols];
        v24 = [v23 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v20;
        v30 = 2114;
        v31 = v24;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v19;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v8 = v7;
  v26 = *MEMORY[0x1E695FAB0];
  v27 = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v25.receiver = self;
  v25.super_class = PIPortraitMakeBlurMapNode;
  v10 = [(NURenderNode *)&v25 initWithSettings:v8 inputs:v9];

  return v10;
}

- (PIPortraitMakeBlurMapNode)initWithSettings:(id)a3 inputs:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = MEMORY[0x1E69B3D70];
    v10 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = v10;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      v16 = [v11 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v14, v15];
      *buf = 138543362;
      v32 = v16;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v17 = *v8;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v17 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_16587);
        }

LABEL_11:
        v23 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v25 = MEMORY[0x1E696AF00];
          v26 = specific;
          v27 = v23;
          v28 = [v25 callStackSymbols];
          v29 = [v28 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v32 = specific;
          v33 = 2114;
          v34 = v29;
          _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v17 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_16587);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v18 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v19 = MEMORY[0x1E696AF00];
      v20 = v18;
      v21 = [v19 callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v22;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v30 = objc_opt_class();
    NSStringFromClass(v30);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_16587);
  }
}

@end