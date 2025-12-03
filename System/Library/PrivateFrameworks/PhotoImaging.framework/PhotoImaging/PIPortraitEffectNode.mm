@interface PIPortraitEffectNode
- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)data;
- (BOOL)isPortraitMono;
- (BOOL)isPortraitStage;
- (PIPortraitEffectNode)initWithInput:(id)input blurMap:(id)map settings:(id)settings;
- (PIPortraitEffectNode)initWithSettings:(id)settings inputs:(id)inputs;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (int64_t)portraitVersion;
@end

@implementation PIPortraitEffectNode

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v158 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if (!error)
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
        callStackSymbols = [v121 callStackSymbols];
        v124 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v155 = v120;
        v156 = 2114;
        v157 = v124;
        _os_log_error_impl(&dword_1C7694000, v116, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v117)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v119 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v155 = v119;
      _os_log_error_impl(&dword_1C7694000, v116, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = stateCopy;
  if ([stateCopy evaluationMode] != 1)
  {
    [MEMORY[0x1E69B3A48] unsupportedError:@"Portrait Effect only applies to images" object:0];
    *error = v27 = 0;
    goto LABEL_85;
  }

  if ([v10 auxiliaryImageType] != 1 && objc_msgSend(v10, "auxiliaryImageType") != 7)
  {
    input = [(PIPortraitNode *)self input];
    v27 = [input nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];

    goto LABEL_85;
  }

  input2 = [(PIPortraitNode *)self input];
  v12 = [input2 imageProperties:error];

  v144 = v12;
  if (v12)
  {
    input3 = [(PIPortraitNode *)self input];
    v14 = [input3 nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];

    if (!v14)
    {
      v27 = 0;
LABEL_83:

      goto LABEL_84;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    settings = [(NURenderNode *)self settings];
    v17 = [settings objectForKeyedSubscript:@"portraitInfo"];

    v18 = [v17 objectForKeyedSubscript:@"faceLandmarks"];
    [dictionary setObject:v18 forKeyedSubscript:@"inputFaceLandmarkArray"];

    v140 = v17;
    v19 = [v17 objectForKeyedSubscript:@"faceLandmarks"];
    v20 = [v19 count];

    v142 = [v10 copy];
    v21 = [v144 auxiliaryImagePropertiesForType:3];
    v22 = 0;
    v141 = dictionary;
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
        input4 = [(PIPortraitNode *)self input];
        v153 = 0;
        v22 = [input4 nodeByReplayingAgainstCache:cacheCopy pipelineState:v142 error:&v153];
        v26 = v153;

        v143 = v26;
        if (!v22)
        {
          v34 = MEMORY[0x1E69B3A48];
          input5 = [(PIPortraitNode *)self input];
          v36 = v34;
          v22 = input5;
          [v36 errorWithCode:1 reason:@"Failed to obtain portrait matte aux image" object:input5 underlyingError:v26];
          *error = v27 = 0;
          dictionary = v141;
          goto LABEL_82;
        }

        dictionary = v141;
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
        *error = v27 = 0;
LABEL_82:

        goto LABEL_83;
      }

      if ([(PIPortraitEffectNode *)self isPortraitStage])
      {
        flexRangeProperties = [v144 flexRangeProperties];
        v138 = v22;
        if (flexRangeProperties)
        {

LABEL_49:
          dictionary2 = [MEMORY[0x1E695DF90] dictionary];
          [dictionary2 setObject:v14 forKeyedSubscript:@"inputGainMap"];
          [dictionary2 setObject:v138 forKeyedSubscript:@"inputMatte"];
          v67 = dictionary;
          v68 = [objc_alloc(MEMORY[0x1E69B3A70]) initWithFilterName:@"NUGainMapClearFilter" settings:&unk_1F47201A8 inputs:dictionary2];
          v27 = [v68 resolvedNodeWithCachedInputs:dictionary2 cache:cacheCopy pipelineState:v10 error:error];

          dictionary = v67;
          v22 = v138;
          goto LABEL_82;
        }

        meteorPlusGainMapVersion = [v144 meteorPlusGainMapVersion];
        major = [meteorPlusGainMapVersion major];

        v65 = major < 2;
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
    blurMap = [(PIPortraitNode *)self blurMap];

    if (blurMap)
    {
      blurMap2 = [(PIPortraitNode *)self blurMap];
      v152 = 0;
      v31 = [blurMap2 nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:&v152];
      v32 = v152;

      v135 = v31;
      if (!v31)
      {
        v61 = MEMORY[0x1E69B3A48];
        blurMap3 = [(PIPortraitNode *)self blurMap];
        [v61 errorWithCode:1 reason:@"Failed to obtain portrait blur map" object:? underlyingError:?];
        *error = v27 = 0;
        v143 = v32;
        v14 = v134;
        dictionary = v141;

        goto LABEL_82;
      }

      v143 = v32;
    }

    else
    {
      v135 = 0;
    }

    v139 = v22;
    portraitVersion = [(PIPortraitEffectNode *)self portraitVersion];
    settings2 = [(NURenderNode *)self settings];
    v131 = [settings2 objectForKeyedSubscript:@"kind"];

    v38 = [v144 auxiliaryImagePropertiesForType:2];

    dictionary = v141;
    v132 = v38;
    if (v38)
    {
      [v142 setAuxiliaryImageType:2];
      [v144 size];
      [v38 size];
      v39 = NUScaleToFillSizeInSize();
      [v142 setScale:{v39, v40}];
      input6 = [(PIPortraitNode *)self input];
      v151 = 0;
      v137 = [input6 nodeByReplayingAgainstCache:cacheCopy pipelineState:v142 error:&v151];
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
      input7 = [(PIPortraitNode *)self input];
      [v45 errorWithCode:1 reason:@"Failed to obtain disparity aux image" object:input7 underlyingError:v143];
      *error = v27 = 0;
      v47 = v132;
      v14 = v134;
LABEL_81:

      v21 = v47;
      goto LABEL_82;
    }

    if (portraitVersion == 2 && v20)
    {
      v47 = [v144 auxiliaryImagePropertiesForType:4];

      if (v47)
      {
        [v142 setAuxiliaryImageType:4];
        [v144 size];
        [v47 size];
        v48 = NUScaleToFillSizeInSize();
        [v142 setScale:{v48, v49}];
        input8 = [(PIPortraitNode *)self input];
        v150 = 0;
        v51 = [input8 nodeByReplayingAgainstCache:cacheCopy pipelineState:v142 error:&v150];
        v52 = v150;

        if (!v51)
        {
          v107 = MEMORY[0x1E69B3A48];
          input7 = [(PIPortraitNode *)self input];
          [v107 errorWithCode:1 reason:@"Failed to obtain skin matte aux image" object:input7 underlyingError:v52];
          *error = v27 = 0;
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
        input9 = [(PIPortraitNode *)self input];
        v149 = 0;
        v94 = [input9 nodeByReplayingAgainstCache:cacheCopy pipelineState:v142 error:&v149];
        v95 = v149;

        v128 = v94;
        if (!v94)
        {
          v108 = MEMORY[0x1E69B3A48];
          input10 = [(PIPortraitNode *)self input];
          *error = [v108 errorWithCode:1 reason:@"Failed to obtain hair matte aux image" object:input10 underlyingError:v95];

          v27 = 0;
          v143 = v95;
          v47 = v90;
          v14 = v134;
          v22 = v139;
          input7 = v129;
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
        input11 = [(PIPortraitNode *)self input];
        v148 = 0;
        v102 = [input11 nodeByReplayingAgainstCache:cacheCopy pipelineState:v142 error:&v148];
        v103 = v148;

        v127 = v102;
        if (!v102)
        {
          v110 = MEMORY[0x1E69B3A48];
          input12 = [(PIPortraitNode *)self input];
          *error = [v110 errorWithCode:1 reason:@"Failed to obtain teeth matte aux image" object:input12 underlyingError:v103];

          v27 = 0;
          v143 = v103;
          v14 = v134;
          v22 = v139;
          input7 = v129;
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

    settings3 = [(NURenderNode *)self settings];
    v54 = [settings3 objectForKeyedSubscript:@"glassesMatteAllowed"];
    bOOLValue = [v54 BOOLValue];

    if (bOOLValue)
    {
      v47 = [v144 auxiliaryImagePropertiesForType:8];

      if (v47)
      {
        [v142 setAuxiliaryImageType:8];
        [v144 size];
        [v47 size];
        v56 = NUScaleToFillSizeInSize();
        [v142 setScale:{v56, v57}];
        input13 = [(PIPortraitNode *)self input];
        v147 = 0;
        v59 = [input13 nodeByReplayingAgainstCache:cacheCopy pipelineState:v142 error:&v147];
        v60 = v147;

        if (!v59)
        {
          v96 = MEMORY[0x1E69B3A48];
          input14 = [(PIPortraitNode *)self input];
          [v96 errorWithCode:1 reason:@"Failed to obtain glasses matte aux image" object:? underlyingError:?];
          *error = v27 = 0;
          v143 = v60;
          v14 = v134;
          input7 = v129;
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

      input14 = v59;
      v69 = [v144 auxiliaryImagePropertiesForType:7];

      if (v69)
      {
        [v142 setAuxiliaryImageType:7];
        [v144 size];
        v132 = v69;
        [v69 size];
        v70 = NUScaleToFillSizeInSize();
        [v142 setScale:{v70, v71}];
        input15 = [(PIPortraitNode *)self input];
        v146 = 0;
        v73 = [input15 nodeByReplayingAgainstCache:cacheCopy pipelineState:v142 error:&v146];
        v74 = v146;

        if (!v73)
        {
          v105 = MEMORY[0x1E69B3A48];
          input16 = [(PIPortraitNode *)self input];
          *error = [v105 errorWithCode:1 reason:@"Failed to obtain gain map aux image" object:input16 underlyingError:v74];

          v27 = 0;
          v143 = v74;
          v47 = v69;
          v14 = v134;
          input7 = v129;
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
      input14 = 0;
      v62 = v134;
    }

    v75 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v75 setObject:v62 forKeyedSubscript:@"inputImage"];
    v76 = MEMORY[0x1E696AD98];
    [v10 scale];
    NUScaleToDouble();
    v77 = [v76 numberWithDouble:?];
    [v141 setObject:v77 forKeyedSubscript:@"inputScale"];

    v78 = [MEMORY[0x1E696AD98] numberWithInteger:portraitVersion];
    [v141 setObject:v78 forKeyedSubscript:@"inputVersion"];

    [v141 setObject:v43 forKeyedSubscript:@"inputKind"];
    if (portraitVersion == 2)
    {
      [v75 setObject:v137 forKeyedSubscript:@"inputDisparity"];
      [v75 setObject:v135 forKeyedSubscript:@"inputBlurMap"];
      [v75 setObject:v139 forKeyedSubscript:@"inputMatte"];
      [v75 setObject:v129 forKeyedSubscript:@"inputFaceMask"];
      [v75 setObject:v128 forKeyedSubscript:@"inputHairMask"];
      [v75 setObject:v127 forKeyedSubscript:@"inputTeethMask"];
      settings4 = [(NURenderNode *)self settings];
      v80 = [settings4 objectForKeyedSubscript:@"spillMatteAllowed"];
      bOOLValue2 = [v80 BOOLValue];

      if (bOOLValue2)
      {
        [v141 setObject:&unk_1F471F770 forKeyedSubscript:@"inputGenerateSpillMatte"];
      }

      settings5 = [(NURenderNode *)self settings];
      v83 = [settings5 objectForKeyedSubscript:@"strength"];
      dictionary = v141;
      [v141 setObject:v83 forKeyedSubscript:@"inputStrength"];

      settings6 = [(NURenderNode *)self settings];
      v85 = [settings6 objectForKeyedSubscript:@"disablePortraitMixing"];
      [v141 setObject:v85 forKeyedSubscript:@"inputOneShot"];
    }

    else if (([v43 isEqualToString:@"Black"] & 1) != 0 || objc_msgSend(v43, "isEqualToString:", @"BlackoutMono"))
    {
      [v75 setObject:v137 forKeyedSubscript:@"inputDisparity"];
      v86 = [v10 copy];
      [v86 setScale:{*MEMORY[0x1E69B3918], *(MEMORY[0x1E69B3918] + 8)}];
      input17 = [(PIPortraitNode *)self input];
      v145 = 0;
      v88 = [input17 nodeByReplayingAgainstCache:cacheCopy pipelineState:v86 error:&v145];
      v89 = v145;

      if (!v88)
      {
        v97 = MEMORY[0x1E69B3A48];
        input18 = [(PIPortraitNode *)self input];
        *error = [v97 errorWithCode:1 reason:@"Failed to obtain full-size input image" object:input18 underlyingError:v89];

        v27 = 0;
        v14 = v134;
        dictionary = v141;
LABEL_78:

        input7 = v129;
        v47 = v132;
        goto LABEL_79;
      }

      [v75 setObject:v88 forKeyedSubscript:@"inputFullSizeImage"];
      [v75 setObject:v139 forKeyedSubscript:@"inputMatte"];

      dictionary = v141;
    }

    else if (([v43 isEqualToString:@"Light"] & 1) == 0)
    {
      [v75 setObject:v135 forKeyedSubscript:@"inputBlurMap"];
    }

    v89 = [objc_alloc(MEMORY[0x1E69B3A70]) initWithFilterName:@"PIPortraitEffectFilter" settings:dictionary inputs:v75];
    v27 = [v89 resolvedNodeWithCachedInputs:v75 cache:cacheCopy pipelineState:v10 error:error];
    v14 = v134;
    goto LABEL_78;
  }

  v27 = 0;
LABEL_84:

LABEL_85:

  return v27;
}

- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)data
{
  v7.receiver = self;
  v7.super_class = PIPortraitEffectNode;
  v5 = [(PIPortraitNode *)&v7 canPropagateOriginalAuxiliaryData:?];
  if (data == 7 && v5)
  {
    LOBYTE(v5) = ![(PIPortraitEffectNode *)self isPortraitStage];
  }

  return v5;
}

- (BOOL)isPortraitStage
{
  v3 = objc_opt_class();
  settings = [(NURenderNode *)self settings];
  v5 = [settings objectForKeyedSubscript:@"kind"];
  LOBYTE(v3) = [v3 isPortraitStageEffect:v5];

  return v3;
}

- (BOOL)isPortraitMono
{
  v3 = objc_opt_class();
  settings = [(NURenderNode *)self settings];
  v5 = [settings objectForKeyedSubscript:@"kind"];
  LOBYTE(v3) = [v3 isPortraitMonoEffect:v5];

  return v3;
}

- (int64_t)portraitVersion
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"kind"];

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

- (PIPortraitEffectNode)initWithInput:(id)input blurMap:(id)map settings:(id)settings
{
  v41 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  mapCopy = map;
  settingsCopy = settings;
  if (!inputCopy)
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
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v27;
        v39 = 2114;
        v40 = v31;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v26;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v11 = settingsCopy;
  if (mapCopy)
  {
    v35[0] = @"inputImage";
    v35[1] = @"inputBlurMap";
    v36[0] = inputCopy;
    v36[1] = mapCopy;
    v12 = MEMORY[0x1E695DF20];
    v13 = v36;
    v14 = v35;
    v15 = 2;
  }

  else
  {
    v33 = @"inputImage";
    v34 = inputCopy;
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

- (PIPortraitEffectNode)initWithSettings:(id)settings inputs:(id)inputs
{
  v35 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  inputsCopy = inputs;
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
          callStackSymbols = [v25 callStackSymbols];
          v29 = [callStackSymbols componentsJoinedByString:@"\n"];
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
      callStackSymbols2 = [v19 callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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