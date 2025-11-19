@interface PIPortraitEffectNode
- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)a3;
- (BOOL)isPortraitMono;
- (BOOL)isPortraitStage;
- (PIPortraitEffectNode)initWithInput:(id)a3 blurMap:(id)a4 settings:(id)a5;
- (PIPortraitEffectNode)initWithSettings:(id)a3 inputs:(id)a4;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (int64_t)portraitVersion;
@end

@implementation PIPortraitEffectNode

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v158 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    v112 = NUAssertLogger_16450();
    if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
    {
      v113 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v155 = v113;
      _os_log_error_impl(&dword_1C7694000, v112, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v114 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v116 = NUAssertLogger_16450();
    v117 = os_log_type_enabled(v116, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v117)
      {
        v120 = dispatch_get_specific(*v114);
        v121 = MEMORY[0x1E696AF00];
        v122 = v120;
        v123 = [v121 callStackSymbols];
        v124 = [v123 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v155 = v120;
        v156 = 2114;
        v157 = v124;
        _os_log_error_impl(&dword_1C7694000, v116, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v117)
    {
      v118 = [MEMORY[0x1E696AF00] callStackSymbols];
      v119 = [v118 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v155 = v119;
      _os_log_error_impl(&dword_1C7694000, v116, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = v9;
  if ([v9 evaluationMode] != 1)
  {
    [MEMORY[0x1E69B3A48] unsupportedError:@"Portrait Effect only applies to images" object:0];
    *a5 = v27 = 0;
    goto LABEL_85;
  }

  if ([v10 auxiliaryImageType] != 1 && objc_msgSend(v10, "auxiliaryImageType") != 7)
  {
    v28 = [(PIPortraitNode *)self input];
    v27 = [v28 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:a5];

    goto LABEL_85;
  }

  v11 = [(PIPortraitNode *)self input];
  v12 = [v11 imageProperties:a5];

  v144 = v12;
  if (v12)
  {
    v13 = [(PIPortraitNode *)self input];
    v14 = [v13 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:a5];

    if (!v14)
    {
      v27 = 0;
LABEL_83:

      goto LABEL_84;
    }

    v15 = [MEMORY[0x1E695DF90] dictionary];
    v16 = [(NURenderNode *)self settings];
    v17 = [v16 objectForKeyedSubscript:@"portraitInfo"];

    v18 = [v17 objectForKeyedSubscript:@"faceLandmarks"];
    [v15 setObject:v18 forKeyedSubscript:@"inputFaceLandmarkArray"];

    v140 = v17;
    v19 = [v17 objectForKeyedSubscript:@"faceLandmarks"];
    v20 = [v19 count];

    v142 = [v10 copy];
    v21 = [v144 auxiliaryImagePropertiesForType:3];
    v22 = 0;
    v141 = v15;
    if (v21)
    {
      v143 = 0;
      if (v20)
      {
        [v142 setAuxiliaryImageType:3];
        [v144 size];
        [v21 size];
        v23 = NUScaleToFillSizeInSize();
        [v142 setScale:{v23, v24}];
        v25 = [(PIPortraitNode *)self input];
        v153 = 0;
        v22 = [v25 nodeByReplayingAgainstCache:v8 pipelineState:v142 error:&v153];
        v26 = v153;

        v143 = v26;
        if (!v22)
        {
          v34 = MEMORY[0x1E69B3A48];
          v35 = [(PIPortraitNode *)self input];
          v36 = v34;
          v22 = v35;
          [v36 errorWithCode:1 reason:@"Failed to obtain portrait matte aux image" object:v35 underlyingError:v26];
          *a5 = v27 = 0;
          v15 = v141;
          goto LABEL_82;
        }

        v15 = v141;
      }
    }

    else
    {
      v143 = 0;
    }

    if ([v10 auxiliaryImageType] == 7)
    {
      if ([(PIPortraitEffectNode *)self isPortraitMono])
      {
        [MEMORY[0x1E69B3A48] invalidError:@"Gain map is disabled" object:self];
        *a5 = v27 = 0;
LABEL_82:

        goto LABEL_83;
      }

      if ([(PIPortraitEffectNode *)self isPortraitStage])
      {
        v33 = [v144 flexRangeProperties];
        v138 = v22;
        if (v33)
        {

LABEL_49:
          v66 = [MEMORY[0x1E695DF90] dictionary];
          [v66 setObject:v14 forKeyedSubscript:@"inputGainMap"];
          [v66 setObject:v138 forKeyedSubscript:@"inputMatte"];
          v67 = v15;
          v68 = [objc_alloc(MEMORY[0x1E69B3A70]) initWithFilterName:@"NUGainMapClearFilter" settings:&unk_1F47201A8 inputs:v66];
          v27 = [v68 resolvedNodeWithCachedInputs:v66 cache:v8 pipelineState:v10 error:a5];

          v15 = v67;
          v22 = v138;
          goto LABEL_82;
        }

        v63 = [v144 meteorPlusGainMapVersion];
        v64 = [v63 major];

        v65 = v64 < 2;
        v22 = v138;
        if (!v65)
        {
          goto LABEL_49;
        }
      }

      v27 = v14;
      goto LABEL_82;
    }

    v134 = v14;
    v29 = [(PIPortraitNode *)self blurMap];

    if (v29)
    {
      v30 = [(PIPortraitNode *)self blurMap];
      v152 = 0;
      v31 = [v30 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:&v152];
      v32 = v152;

      v135 = v31;
      if (!v31)
      {
        v61 = MEMORY[0x1E69B3A48];
        v136 = [(PIPortraitNode *)self blurMap];
        [v61 errorWithCode:1 reason:@"Failed to obtain portrait blur map" object:? underlyingError:?];
        *a5 = v27 = 0;
        v143 = v32;
        v14 = v134;
        v15 = v141;

        goto LABEL_82;
      }

      v143 = v32;
    }

    else
    {
      v135 = 0;
    }

    v139 = v22;
    v130 = [(PIPortraitEffectNode *)self portraitVersion];
    v37 = [(NURenderNode *)self settings];
    v131 = [v37 objectForKeyedSubscript:@"kind"];

    v38 = [v144 auxiliaryImagePropertiesForType:2];

    v15 = v141;
    v132 = v38;
    if (v38)
    {
      [v142 setAuxiliaryImageType:2];
      [v144 size];
      [v38 size];
      v39 = NUScaleToFillSizeInSize();
      [v142 setScale:{v39, v40}];
      v41 = [(PIPortraitNode *)self input];
      v151 = 0;
      v137 = [v41 nodeByReplayingAgainstCache:v8 pipelineState:v142 error:&v151];
      v42 = v151;

      v143 = v42;
    }

    else
    {
      v137 = 0;
    }

    v43 = v131;
    if ([v131 isEqualToString:@"Black"])
    {
      v44 = 0;
    }

    else
    {
      v44 = [v131 isEqualToString:@"BlackoutMono"] ^ 1;
    }

    if (!v137 && (v44 & 1) == 0)
    {
      v45 = MEMORY[0x1E69B3A48];
      v46 = [(PIPortraitNode *)self input];
      [v45 errorWithCode:1 reason:@"Failed to obtain disparity aux image" object:v46 underlyingError:v143];
      *a5 = v27 = 0;
      v47 = v132;
      v14 = v134;
LABEL_81:

      v21 = v47;
      goto LABEL_82;
    }

    if (v130 == 2 && v20)
    {
      v47 = [v144 auxiliaryImagePropertiesForType:4];

      if (v47)
      {
        [v142 setAuxiliaryImageType:4];
        [v144 size];
        [v47 size];
        v48 = NUScaleToFillSizeInSize();
        [v142 setScale:{v48, v49}];
        v50 = [(PIPortraitNode *)self input];
        v150 = 0;
        v51 = [v50 nodeByReplayingAgainstCache:v8 pipelineState:v142 error:&v150];
        v52 = v150;

        if (!v51)
        {
          v107 = MEMORY[0x1E69B3A48];
          v46 = [(PIPortraitNode *)self input];
          [v107 errorWithCode:1 reason:@"Failed to obtain skin matte aux image" object:v46 underlyingError:v52];
          *a5 = v27 = 0;
          v143 = v52;
          v14 = v134;
          goto LABEL_80;
        }

        v143 = v52;
      }

      else
      {
        v51 = 0;
      }

      v90 = [v144 auxiliaryImagePropertiesForType:5];

      v129 = v51;
      v133 = v90;
      if (v90)
      {
        [v142 setAuxiliaryImageType:5];
        [v144 size];
        [v90 size];
        v91 = NUScaleToFillSizeInSize();
        [v142 setScale:{v91, v92}];
        v93 = [(PIPortraitNode *)self input];
        v149 = 0;
        v94 = [v93 nodeByReplayingAgainstCache:v8 pipelineState:v142 error:&v149];
        v95 = v149;

        v128 = v94;
        if (!v94)
        {
          v108 = MEMORY[0x1E69B3A48];
          v109 = [(PIPortraitNode *)self input];
          *a5 = [v108 errorWithCode:1 reason:@"Failed to obtain hair matte aux image" object:v109 underlyingError:v95];

          v27 = 0;
          v143 = v95;
          v47 = v90;
          v14 = v134;
          v22 = v139;
          v46 = v129;
          v43 = v131;
          goto LABEL_81;
        }

        v143 = v95;
      }

      else
      {
        v128 = 0;
      }

      v43 = v131;
      v47 = [v144 auxiliaryImagePropertiesForType:6];

      if (v47)
      {
        [v142 setAuxiliaryImageType:6];
        [v144 size];
        [v47 size];
        v99 = NUScaleToFillSizeInSize();
        [v142 setScale:{v99, v100}];
        v101 = [(PIPortraitNode *)self input];
        v148 = 0;
        v102 = [v101 nodeByReplayingAgainstCache:v8 pipelineState:v142 error:&v148];
        v103 = v148;

        v127 = v102;
        if (!v102)
        {
          v110 = MEMORY[0x1E69B3A48];
          v111 = [(PIPortraitNode *)self input];
          *a5 = [v110 errorWithCode:1 reason:@"Failed to obtain teeth matte aux image" object:v111 underlyingError:v103];

          v27 = 0;
          v143 = v103;
          v14 = v134;
          v22 = v139;
          v46 = v129;
          goto LABEL_81;
        }

        v132 = v47;
        v143 = v103;
      }

      else
      {
        v127 = 0;
        v132 = 0;
      }
    }

    else
    {
      v127 = 0;
      v128 = 0;
      v129 = 0;
    }

    v53 = [(NURenderNode *)self settings];
    v54 = [v53 objectForKeyedSubscript:@"glassesMatteAllowed"];
    v55 = [v54 BOOLValue];

    if (v55)
    {
      v47 = [v144 auxiliaryImagePropertiesForType:8];

      if (v47)
      {
        [v142 setAuxiliaryImageType:8];
        [v144 size];
        [v47 size];
        v56 = NUScaleToFillSizeInSize();
        [v142 setScale:{v56, v57}];
        v58 = [(PIPortraitNode *)self input];
        v147 = 0;
        v59 = [v58 nodeByReplayingAgainstCache:v8 pipelineState:v142 error:&v147];
        v60 = v147;

        if (!v59)
        {
          v96 = MEMORY[0x1E69B3A48];
          v126 = [(PIPortraitNode *)self input];
          [v96 errorWithCode:1 reason:@"Failed to obtain glasses matte aux image" object:? underlyingError:?];
          *a5 = v27 = 0;
          v143 = v60;
          v14 = v134;
          v46 = v129;
LABEL_79:

LABEL_80:
          v22 = v139;
          goto LABEL_81;
        }

        v143 = v60;
      }

      else
      {
        v59 = 0;
      }

      v126 = v59;
      v69 = [v144 auxiliaryImagePropertiesForType:7];

      if (v69)
      {
        [v142 setAuxiliaryImageType:7];
        [v144 size];
        v132 = v69;
        [v69 size];
        v70 = NUScaleToFillSizeInSize();
        [v142 setScale:{v70, v71}];
        v72 = [(PIPortraitNode *)self input];
        v146 = 0;
        v73 = [v72 nodeByReplayingAgainstCache:v8 pipelineState:v142 error:&v146];
        v74 = v146;

        if (!v73)
        {
          v105 = MEMORY[0x1E69B3A48];
          v106 = [(PIPortraitNode *)self input];
          *a5 = [v105 errorWithCode:1 reason:@"Failed to obtain gain map aux image" object:v106 underlyingError:v74];

          v27 = 0;
          v143 = v74;
          v47 = v69;
          v14 = v134;
          v46 = v129;
          v43 = v131;
          goto LABEL_79;
        }

        v125 = v73;
        v143 = v74;
      }

      else
      {
        v125 = 0;
        v132 = 0;
      }

      v62 = v134;
      v43 = v131;
    }

    else
    {
      v125 = 0;
      v126 = 0;
      v62 = v134;
    }

    v75 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v75 setObject:v62 forKeyedSubscript:@"inputImage"];
    v76 = MEMORY[0x1E696AD98];
    [v10 scale];
    NUScaleToDouble();
    v77 = [v76 numberWithDouble:?];
    [v141 setObject:v77 forKeyedSubscript:@"inputScale"];

    v78 = [MEMORY[0x1E696AD98] numberWithInteger:v130];
    [v141 setObject:v78 forKeyedSubscript:@"inputVersion"];

    [v141 setObject:v43 forKeyedSubscript:@"inputKind"];
    if (v130 == 2)
    {
      [v75 setObject:v137 forKeyedSubscript:@"inputDisparity"];
      [v75 setObject:v135 forKeyedSubscript:@"inputBlurMap"];
      [v75 setObject:v139 forKeyedSubscript:@"inputMatte"];
      [v75 setObject:v129 forKeyedSubscript:@"inputFaceMask"];
      [v75 setObject:v128 forKeyedSubscript:@"inputHairMask"];
      [v75 setObject:v127 forKeyedSubscript:@"inputTeethMask"];
      v79 = [(NURenderNode *)self settings];
      v80 = [v79 objectForKeyedSubscript:@"spillMatteAllowed"];
      v81 = [v80 BOOLValue];

      if (v81)
      {
        [v141 setObject:&unk_1F471F770 forKeyedSubscript:@"inputGenerateSpillMatte"];
      }

      v82 = [(NURenderNode *)self settings];
      v83 = [v82 objectForKeyedSubscript:@"strength"];
      v15 = v141;
      [v141 setObject:v83 forKeyedSubscript:@"inputStrength"];

      v84 = [(NURenderNode *)self settings];
      v85 = [v84 objectForKeyedSubscript:@"disablePortraitMixing"];
      [v141 setObject:v85 forKeyedSubscript:@"inputOneShot"];
    }

    else if (([v43 isEqualToString:@"Black"] & 1) != 0 || objc_msgSend(v43, "isEqualToString:", @"BlackoutMono"))
    {
      [v75 setObject:v137 forKeyedSubscript:@"inputDisparity"];
      v86 = [v10 copy];
      [v86 setScale:{*MEMORY[0x1E69B3918], *(MEMORY[0x1E69B3918] + 8)}];
      v87 = [(PIPortraitNode *)self input];
      v145 = 0;
      v88 = [v87 nodeByReplayingAgainstCache:v8 pipelineState:v86 error:&v145];
      v89 = v145;

      if (!v88)
      {
        v97 = MEMORY[0x1E69B3A48];
        v98 = [(PIPortraitNode *)self input];
        *a5 = [v97 errorWithCode:1 reason:@"Failed to obtain full-size input image" object:v98 underlyingError:v89];

        v27 = 0;
        v14 = v134;
        v15 = v141;
LABEL_78:

        v46 = v129;
        v47 = v132;
        goto LABEL_79;
      }

      [v75 setObject:v88 forKeyedSubscript:@"inputFullSizeImage"];
      [v75 setObject:v139 forKeyedSubscript:@"inputMatte"];

      v15 = v141;
    }

    else if (([v43 isEqualToString:@"Light"] & 1) == 0)
    {
      [v75 setObject:v135 forKeyedSubscript:@"inputBlurMap"];
    }

    v89 = [objc_alloc(MEMORY[0x1E69B3A70]) initWithFilterName:@"PIPortraitEffectFilter" settings:v15 inputs:v75];
    v27 = [v89 resolvedNodeWithCachedInputs:v75 cache:v8 pipelineState:v10 error:a5];
    v14 = v134;
    goto LABEL_78;
  }

  v27 = 0;
LABEL_84:

LABEL_85:

  return v27;
}

- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PIPortraitEffectNode;
  v5 = [(PIPortraitNode *)&v7 canPropagateOriginalAuxiliaryData:?];
  if (a3 == 7 && v5)
  {
    LOBYTE(v5) = ![(PIPortraitEffectNode *)self isPortraitStage];
  }

  return v5;
}

- (BOOL)isPortraitStage
{
  v3 = objc_opt_class();
  v4 = [(NURenderNode *)self settings];
  v5 = [v4 objectForKeyedSubscript:@"kind"];
  LOBYTE(v3) = [v3 isPortraitStageEffect:v5];

  return v3;
}

- (BOOL)isPortraitMono
{
  v3 = objc_opt_class();
  v4 = [(NURenderNode *)self settings];
  v5 = [v4 objectForKeyedSubscript:@"kind"];
  LOBYTE(v3) = [v3 isPortraitMonoEffect:v5];

  return v3;
}

- (int64_t)portraitVersion
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"kind"];

  if ([&unk_1F471FD28 containsObject:v3])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (PIPortraitEffectNode)initWithInput:(id)a3 blurMap:(id)a4 settings:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v19 = NUAssertLogger_16450();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v38 = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_16450();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(*v21);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v27;
        v39 = 2114;
        v40 = v31;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v26;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v11 = v10;
  if (v9)
  {
    v35[0] = @"inputImage";
    v35[1] = @"inputBlurMap";
    v36[0] = v8;
    v36[1] = v9;
    v12 = MEMORY[0x1E695DF20];
    v13 = v36;
    v14 = v35;
    v15 = 2;
  }

  else
  {
    v33 = @"inputImage";
    v34 = v8;
    v12 = MEMORY[0x1E695DF20];
    v13 = &v34;
    v14 = &v33;
    v15 = 1;
  }

  v16 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:v15];
  v32.receiver = self;
  v32.super_class = PIPortraitEffectNode;
  v17 = [(NURenderNode *)&v32 initWithSettings:v11 inputs:v16];

  return v17;
}

- (PIPortraitEffectNode)initWithSettings:(id)a3 inputs:(id)a4
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