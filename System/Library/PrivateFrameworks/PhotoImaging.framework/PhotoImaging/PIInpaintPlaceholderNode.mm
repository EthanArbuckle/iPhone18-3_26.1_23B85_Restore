@interface PIInpaintPlaceholderNode
- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)a3;
- (id)_evaluateImageGeometry:(id *)a3;
- (id)_evaluateImageProperties:(id *)a3;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
@end

@implementation PIInpaintPlaceholderNode

- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)a3
{
  if (a3 == 2 || a3 == 7)
  {
    return 0;
  }

  v5 = [(PIInpaintPlaceholderNode *)self inputNode];
  v6 = [v5 canPropagateOriginalAuxiliaryData:a3];

  return v6;
}

- (id)_evaluateImageProperties:(id *)a3
{
  v16.receiver = self;
  v16.super_class = PIInpaintPlaceholderNode;
  v3 = [(NURenderNode *)&v16 _evaluateImageProperties:a3];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_alloc(MEMORY[0x1E69B3D60]) initWithProperties:v3];
    v6 = [v5 metadata];
    v7 = [v6 mutableCopy];

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

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!a5)
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
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v36;
        v45 = 2114;
        v46 = v40;
        _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v35;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = v9;
  if ([v9 evaluationMode] == 1 && -[PIInpaintPlaceholderNode _needsInpaintWithAuxImageType:](self, "_needsInpaintWithAuxImageType:", objc_msgSend(v10, "auxiliaryImageType")))
  {
    if ([PIObjectRemoval loadAndRegisterInpaintModel:a5]&& [PIObjectRemoval loadAndRegisterRefinementModel:a5])
    {
      v11 = [PIInpaintCacheNode alloc];
      v12 = [(NURenderNode *)self inputs];
      v13 = [(NURenderNode *)self settings];
      v14 = [(PIInpaintCacheNode *)v11 initWithInputs:v12 settings:v13];

      v15 = [PIInpaintSubsampleCacheNode alloc];
      v16 = [(NURenderNode *)self settings];
      v17 = [(NUCacheNode *)v15 initWithInput:v14 settings:v16];

      if ([v10 auxiliaryImageType] != 1)
      {
        v18 = [PIInpaintAuxiliaryImageNode alloc];
        v19 = [(NURenderNode *)self inputs];
        v20 = [(NURenderNode *)self settings];
        v21 = [(PIInpaintAuxiliaryImageNode *)v18 initWithInputs:v19 retouchNode:v17 settings:v20];

        v22 = objc_alloc(MEMORY[0x1E69B3B70]);
        v41 = @"auxiliaryImageType";
        [v10 auxiliaryImageType];
        v23 = NUAuxiliaryImageTypeToString();
        v42 = v23;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v17 = [v22 initWithInput:v21 settings:v24];
      }

      v25 = [(PIInpaintSubsampleCacheNode *)v17 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:a5];
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v26 = [(PIInpaintPlaceholderNode *)self inputNode];
    v25 = [v26 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:a5];
  }

  return v25;
}

- (id)_evaluateImageGeometry:(id *)a3
{
  v4 = [(PIInpaintPlaceholderNode *)self inputNode];
  v5 = [v4 outputImageGeometry:a3];

  return v5;
}

@end