@interface PISemanticStyleLearnNode
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
- (id)styleSettingsForPipelineState:(id)state size:(id)size;
- (id)thumbnailSettingsWithStyleSettings:(id)settings thumbnailSize:(id)size;
@end

@implementation PISemanticStyleLearnNode

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v8.receiver = self;
  v8.super_class = PISemanticStyleLearnNode;
  v6 = [(PISemanticStyleRenderNode *)&v8 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];

  return v6;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v75 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if (!error)
  {
    v36 = NUAssertLogger_11150();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      buf = 138543362;
      *buf_4 = v37;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    v38 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v40 = NUAssertLogger_11150();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v41)
      {
        v52 = dispatch_get_specific(*v38);
        v53 = MEMORY[0x1E696AF00];
        v54 = v52;
        callStackSymbols = [v53 callStackSymbols];
        v56 = [callStackSymbols componentsJoinedByString:@"\n"];
        buf = 138543618;
        *buf_4 = v52;
        v73 = 2114;
        v74 = v56;
        _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v41)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      buf = 138543362;
      *buf_4 = v43;
      _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler();
LABEL_46:
    __break(1u);
  }

  v10 = stateCopy;
  if ([stateCopy auxiliaryImageType] != 1)
  {
    v44 = NUAssertLogger_11150();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ cannot be applied to aux images", objc_opt_class()];
      buf = 138543362;
      *buf_4 = v45;
      _os_log_error_impl(&dword_1C7694000, v44, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    v46 = MEMORY[0x1E69B38E8];
    v47 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v48 = NUAssertLogger_11150();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
    if (v47)
    {
      if (v49)
      {
        v57 = dispatch_get_specific(*v46);
        v58 = MEMORY[0x1E696AF00];
        v59 = v57;
        callStackSymbols3 = [v58 callStackSymbols];
        v61 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        buf = 138543618;
        *buf_4 = v57;
        v73 = 2114;
        v74 = v61;
        _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v49)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v51 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      buf = 138543362;
      *buf_4 = v51;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    objc_opt_class();
    _NUAssertFailHandler();
    goto LABEL_46;
  }

  if ([v10 evaluationMode])
  {
    v11 = [PISemanticStyleRenderNode alloc];
    input = [(PISemanticStyleRenderNode *)self input];
    settings = [(NURenderNode *)self settings];
    v14 = [(PISemanticStyleRenderNode *)v11 initWithInput:input settings:settings];

    v65 = v14;
    if ([v10 evaluationMode] == 2)
    {
      v15 = [(PISemanticStyleRenderNode *)v14 nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];
    }

    else
    {
      input2 = [(PISemanticStyleRenderNode *)self input];
      v17 = [input2 imageProperties:error];

      if (v17)
      {
        v18 = [v17 size];
        [v17 size];
        v20 = v18 < v19;
        v21 = [v17 size];
        v64 = [(PISemanticStyleLearnNode *)self styleSettingsForPipelineState:v10 size:v21, v22];
        settings2 = [(NURenderNode *)self settings];
        v24 = [settings2 mutableCopy];

        v63 = v24;
        [v24 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useStyleEngine"];
        if (v20)
        {
          v25 = 256;
        }

        else
        {
          v25 = 192;
        }

        if (v20)
        {
          v26 = 192;
        }

        else
        {
          v26 = 256;
        }

        if ([v10 evaluationMode] == 3)
        {
          v67 = 0;
          v68 = 0;
          v69 = 0;
          if (v10)
          {
            [v10 time];
          }

          [MEMORY[0x1E69B3A48] invalidError:@"invalid frame time" object:v10];
          *error = v15 = 0;
        }

        else if ([v10 evaluationMode] == 1)
        {
          v27 = [v17 auxiliaryImagePropertiesForType:10];
          v62 = v27;
          if (v27)
          {
            v26 = [v27 size];
            v25 = v28;
          }

          v29 = [(PISemanticStyleLearnNode *)self thumbnailSettingsWithStyleSettings:v64 thumbnailSize:v26, v25];
          v30 = MEMORY[0x1E69B3C40];
          input3 = [(PISemanticStyleRenderNode *)self input];
          v32 = [v30 styleTransferThumbnailNodeWithInput:input3 settings:v29];

          v33 = [[PISemanticStyleRenderNode alloc] initWithInput:v32 settings:v63];
          v34 = [MEMORY[0x1E69B3C40] styleTransferLearnNodeWithInput:v32 target:v33 settings:v64];
          v15 = [v34 nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];
        }

        else
        {
          v66.receiver = self;
          v66.super_class = PISemanticStyleLearnNode;
          v15 = [(PISemanticStyleRenderNode *)&v66 nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];
        }
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v70.receiver = self;
    v70.super_class = PISemanticStyleLearnNode;
    v15 = [(PISemanticStyleRenderNode *)&v70 nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];
  }

  return v15;
}

double __76__PISemanticStyleLearnNode_nodeByReplayingAgainstCache_pipelineState_error___block_invoke(uint64_t a1, CMTime *a2)
{
  memset(&v10, 0, sizeof(v10));
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 time];
  }

  lhs = *a2;
  v7 = v10;
  CMTimeSubtract(&time, &lhs, &v7);
  Seconds = CMTimeGetSeconds(&time);
  v5 = Seconds * Seconds / -0.08;

  return exp(v5);
}

void __76__PISemanticStyleLearnNode_nodeByReplayingAgainstCache_pipelineState_error___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) updatePipelineStateForWindowedSampleIndex:a2];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v19 = 0;
  v8 = [v5 nodeByReplayingAgainstCache:v6 pipelineState:v7 error:&v19];
  v9 = v19;
  if (v8)
  {
    [*(a1 + 56) addObject:v8];
    v10 = MEMORY[0x1E696AD98];
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    v13 = *(a1 + 32);
    if (v13)
    {
      [v13 time];
    }

    else
    {
      memset(v18, 0, sizeof(v18));
    }

    (*(v12 + 16))(v12, v18);
    v17 = [v10 numberWithDouble:?];
    [v11 addObject:v17];
  }

  else
  {
    v14 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to evaluate keyframe learn node" object:*(a1 + 40) underlyingError:v9];
    v15 = *(*(a1 + 80) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *a3 = 1;
  }
}

id __76__PISemanticStyleLearnNode_nodeByReplayingAgainstCache_pipelineState_error___block_invoke_191(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  [*(*(*(a1 + 32) + 8) + 40) doubleValue];
  v9 = v8;
  [v6 doubleValue];
  v10 = v7;
  if (v9 < v11)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v10 = *(*(*(a1 + 40) + 8) + 40);
  }

  v12 = v10;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "unsignedIntegerValue") + 1}];
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  return v12;
}

- (id)thumbnailSettingsWithStyleSettings:(id)settings thumbnailSize:(id)size
{
  var1 = size.var1;
  var0 = size.var0;
  v29 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if (!settingsCopy)
  {
    v12 = NUAssertLogger_11150();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "settings != nil"];
      *buf = 138543362;
      v26 = v13;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v14 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_11150();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(*v14);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v20;
        v27 = 2114;
        v28 = v24;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v19;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = settingsCopy;
  v8 = [settingsCopy mutableCopy];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:var0];
  [v8 setObject:v9 forKeyedSubscript:@"thumbnailWidth"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:var1];
  [v8 setObject:v10 forKeyedSubscript:@"thumbnailHeight"];

  return v8;
}

- (id)styleSettingsForPipelineState:(id)state size:(id)size
{
  var1 = size.var1;
  var0 = size.var0;
  v73 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  settings = [(NURenderNode *)self settings];
  v9 = [settings objectForKeyedSubscript:@"cast"];

  evaluationMode = [stateCopy evaluationMode];
  v11 = MEMORY[0x1E69B3940];
  if (evaluationMode == 3 || stateCopy && ([stateCopy time], (v68 & 1) != 0))
  {
    v12 = MEMORY[0x1E69B3CD8];
    scale = [stateCopy scale];
    v15 = [v12 semanticStyleVideoSettingsForScale:scale aspectRatio:{v14, var0, var1}];
    v16 = [v15 mutableCopy];

    v17 = [v16 objectForKeyedSubscript:*v11];
    v18 = [v17 mutableCopy];

    v19 = [PISemanticStyleFilter styleTuningParametersForCast:v9];
    if (v19)
    {
      [v18 addEntriesFromDictionary:v19];
    }

    [v16 setObject:v18 forKeyedSubscript:*v11];

    goto LABEL_9;
  }

  if ([stateCopy evaluationMode] == 1)
  {
    v20 = MEMORY[0x1E69B3CD8];
    scale2 = [stateCopy scale];
    v16 = [v20 semanticStyleImageSettingsForScale:scale2 aspectRatio:{v22, var0, var1}];
LABEL_9:
    v23 = [v16 objectForKeyedSubscript:*v11];
    v24 = [v23 objectForKeyedSubscript:@"StylePriorStrength"];
    [v24 floatValue];
    v26 = v25;

    settings2 = [(NURenderNode *)self settings];
    v28 = [settings2 objectForKeyedSubscript:@"tone"];
    [v28 floatValue];
    v30 = v29;

    settings3 = [(NURenderNode *)self settings];
    v32 = [settings3 objectForKeyedSubscript:@"color"];
    [v32 floatValue];
    v34 = v33;

    settings4 = [(NURenderNode *)self settings];
    v36 = [settings4 objectForKeyedSubscript:@"intensity"];
    [v36 floatValue];
    v38 = v37;

    LODWORD(v39) = v30;
    LODWORD(v40) = v34;
    LODWORD(v41) = v38;
    LODWORD(v42) = v26;
    v43 = [PISemanticStyleFilter stylePriorDataForCast:v9 tone:v39 color:v40 intensity:v41 priorStrength:v42];
    if (v43)
    {
      v44 = [v16 mutableCopy];
      v45 = MEMORY[0x1E69B3930];
      v46 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69B3930]];
      v47 = [v46 mutableCopy];

      [v47 setObject:v43 forKeyedSubscript:@"priorMatrix"];
      [v44 setObject:v47 forKeyedSubscript:*v45];
      v48 = [v44 copy];

      v16 = v48;
    }

    return v16;
  }

  v50 = NUAssertLogger_11150();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected pipeline state"];
    *buf = 138543362;
    v70 = v51;
    _os_log_error_impl(&dword_1C7694000, v50, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  v52 = MEMORY[0x1E69B38E8];
  specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v54 = NUAssertLogger_11150();
  v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v55)
    {
      v58 = dispatch_get_specific(*v52);
      v59 = MEMORY[0x1E696AF00];
      v60 = v58;
      callStackSymbols = [v59 callStackSymbols];
      v62 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v70 = v58;
      v71 = 2114;
      v72 = v62;
      _os_log_error_impl(&dword_1C7694000, v54, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v55)
  {
    callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
    v57 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    v70 = v57;
    _os_log_error_impl(&dword_1C7694000, v54, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  v63 = _NUAssertFailHandler();
  return [(PISemanticStyleApplyNode *)v63 nodeByReplayingAgainstCache:v64 pipelineState:v65 error:v66, v67];
}

@end