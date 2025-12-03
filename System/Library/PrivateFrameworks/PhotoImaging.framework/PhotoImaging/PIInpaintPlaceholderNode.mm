@interface PIInpaintPlaceholderNode
- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)data;
- (id)_evaluateImageGeometry:(id *)geometry;
- (id)_evaluateImageProperties:(id *)properties;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
@end

@implementation PIInpaintPlaceholderNode

- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)data
{
  if (data == 2 || data == 7)
  {
    return 0;
  }

  inputNode = [(PIInpaintPlaceholderNode *)self inputNode];
  v6 = [inputNode canPropagateOriginalAuxiliaryData:data];

  return v6;
}

- (id)_evaluateImageProperties:(id *)properties
{
  v16.receiver = self;
  v16.super_class = PIInpaintPlaceholderNode;
  v3 = [(NURenderNode *)&v16 _evaluateImageProperties:properties];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_alloc(MEMORY[0x1E69B3D60]) initWithProperties:v3];
    metadata = [v5 metadata];
    v7 = [metadata mutableCopy];

    v8 = *MEMORY[0x1E696DD90];
    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696DD90]];
    v10 = [v9 mutableCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v13 = v12;

    [v13 setObject:@"Apple Photos Clean Up" forKeyedSubscript:*MEMORY[0x1E696DD80]];
    [v13 setObject:@"http://cv.iptc.org/newscodes/digitalsourcetype/compositeWithTrainedAlgorithmicMedia" forKeyedSubscript:@"DigitalSourceType"];
    v14 = [v13 copy];
    [v7 setObject:v14 forKeyedSubscript:v8];

    [v5 setMetadata:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if (!error)
  {
    v28 = NUAssertLogger_16994();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v44 = v29;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v32 = NUAssertLogger_16994();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v36 = dispatch_get_specific(*v30);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols = [v37 callStackSymbols];
        v40 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v36;
        v45 = 2114;
        v46 = v40;
        _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v35;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = stateCopy;
  if ([stateCopy evaluationMode] == 1 && -[PIInpaintPlaceholderNode _needsInpaintWithAuxImageType:](self, "_needsInpaintWithAuxImageType:", objc_msgSend(v10, "auxiliaryImageType")))
  {
    if ([PIObjectRemoval loadAndRegisterInpaintModel:error]&& [PIObjectRemoval loadAndRegisterRefinementModel:error])
    {
      v11 = [PIInpaintCacheNode alloc];
      inputs = [(NURenderNode *)self inputs];
      settings = [(NURenderNode *)self settings];
      v14 = [(PIInpaintCacheNode *)v11 initWithInputs:inputs settings:settings];

      v15 = [PIInpaintSubsampleCacheNode alloc];
      settings2 = [(NURenderNode *)self settings];
      v17 = [(NUCacheNode *)v15 initWithInput:v14 settings:settings2];

      if ([v10 auxiliaryImageType] != 1)
      {
        v18 = [PIInpaintAuxiliaryImageNode alloc];
        inputs2 = [(NURenderNode *)self inputs];
        settings3 = [(NURenderNode *)self settings];
        v21 = [(PIInpaintAuxiliaryImageNode *)v18 initWithInputs:inputs2 retouchNode:v17 settings:settings3];

        v22 = objc_alloc(MEMORY[0x1E69B3B70]);
        v41 = @"auxiliaryImageType";
        [v10 auxiliaryImageType];
        v23 = NUAuxiliaryImageTypeToString();
        v42 = v23;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v17 = [v22 initWithInput:v21 settings:v24];
      }

      v25 = [(PIInpaintSubsampleCacheNode *)v17 nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    inputNode = [(PIInpaintPlaceholderNode *)self inputNode];
    v25 = [inputNode nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];
  }

  return v25;
}

- (id)_evaluateImageGeometry:(id *)geometry
{
  inputNode = [(PIInpaintPlaceholderNode *)self inputNode];
  v5 = [inputNode outputImageGeometry:geometry];

  return v5;
}

@end