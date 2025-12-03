@interface PIInpaintSubsampleCacheNode
- (BOOL)_tryLoad:(id *)load;
- (id)compositeNode;
- (id)inpaintInputNode;
- (id)inpaintNode;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (int64_t)subsampleFactorForScale:(id)scale;
@end

@implementation PIInpaintSubsampleCacheNode

- (BOOL)_tryLoad:(id *)load
{
  if (self->super._outputRegion)
  {
    return 1;
  }

  inputNode = [(NUCacheNode *)self inputNode];
  v7 = [inputNode outputImageGeometry:load];

  if (v7)
  {
    v8 = [(NURenderNode *)self imageProperties:load];
    v3 = v8 != 0;
    if (v8)
    {
      inpaintNode = [(PIInpaintSubsampleCacheNode *)self inpaintNode];
      outputRegion = [inpaintNode outputRegion];

      v11 = objc_alloc_init(MEMORY[0x1E69B3BB0]);
      rawProperties = [v8 rawProperties];

      if (rawProperties)
      {
        v30[0] = 0;
        v30[1] = 0;
        v30[2] = [v7 scaledSize];
        v30[3] = v13;
        [v11 addRect:v30];
      }

      else
      {
        [(NUCacheNode *)self subsampleFactor];
        v14 = NUScaleMake();
        v16 = v15;
        scaledSize = [v7 scaledSize];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __40__PIInpaintSubsampleCacheNode__tryLoad___block_invoke;
        v31[3] = &unk_1E82AB620;
        v33 = v14;
        v34 = v16;
        v35 = 0;
        v36 = 0;
        v37 = scaledSize;
        v38 = v18;
        v32 = v11;
        [outputRegion enumerateRects:v31];
      }

      v19 = [v11 copy];
      outputRegion = self->super._outputRegion;
      self->super._outputRegion = v19;

      v21 = [v11 copy];
      inputRegion = self->super._inputRegion;
      self->super._inputRegion = v21;

      scaledSize2 = [v7 scaledSize];
      v25 = v24;
      colorSpace = [v8 colorSpace];
      v27 = [(PIInpaintCacheNode *)self newImageOfSize:scaledSize2 colorSpace:v25, colorSpace];
      inputImage = self->super._inputImage;
      self->super._inputImage = v27;

      self->super._sourceIsHDR = [v8 isHDR];
      self->super._sourceOrientation = [v8 orientation];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __40__PIInpaintSubsampleCacheNode__tryLoad___block_invoke(uint64_t a1, __int128 *a2)
{
  v9 = 0u;
  v10 = 0u;
  v3 = a2[1];
  v7 = *a2;
  v8 = v3;
  NUPixelRectScaleRational();
  NUAlignPixelRectToPixelGrid();
  v9 = v7;
  v10 = v8;
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  NUPixelRectIntersection();
  v9 = v7;
  v10 = v8;
  return [*(a1 + 32) addRect:{&v7, v5, v6, v7, v8}];
}

- (int64_t)subsampleFactorForScale:(id)scale
{
  v4[0] = 0;
  v4[1] = 0;
  return [MEMORY[0x1E69B3CE0] subsampleFactorForScale:scale.var0 additionalScale:{scale.var1, v4}];
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  cacheCopy = cache;
  stateCopy = state;
  if (([stateCopy evaluationMode] == 1 || !objc_msgSend(stateCopy, "evaluationMode")) && (v10 = objc_msgSend(stateCopy, "scale"), -[PIInpaintSubsampleCacheNode subsampleFactorForScale:](self, "subsampleFactorForScale:", v10, v11) == 1))
  {
    inputNode = [(NUCacheNode *)self inputNode];
    v13 = [inputNode nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PIInpaintSubsampleCacheNode;
    v13 = [(PIInpaintCacheNode *)&v15 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
  }

  return v13;
}

- (id)inpaintInputNode
{
  inpaintNode = [(PIInpaintSubsampleCacheNode *)self inpaintNode];
  inputNode = [inpaintNode inputNode];

  return inputNode;
}

- (id)inpaintNode
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(NURenderNode *)self isCached])
  {
    compositeNode = [(PIInpaintSubsampleCacheNode *)self compositeNode];
    inpaintNode = [compositeNode inpaintNode];
  }

  else
  {
    inpaintNode = [(NUCacheNode *)self inputNode];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = NUAssertLogger_16994();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected input node: %@", inpaintNode];
        *buf = 138543362;
        v20 = v7;
        _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v8 = MEMORY[0x1E69B38E8];
      specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v10 = NUAssertLogger_16994();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v11)
        {
          v14 = dispatch_get_specific(*v8);
          v15 = MEMORY[0x1E696AF00];
          v16 = v14;
          callStackSymbols = [v15 callStackSymbols];
          v18 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v20 = v14;
          v21 = 2114;
          v22 = v18;
          _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v11)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v20 = v13;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler();
    }
  }

  return inpaintNode;
}

- (id)compositeNode
{
  v21 = *MEMORY[0x1E69E9840];
  inputNode = [(NUCacheNode *)self inputNode];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = NUAssertLogger_16994();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected input node: %@", inputNode];
      *buf = 138543362;
      v18 = v5;
      _os_log_error_impl(&dword_1C7694000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v6 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v8 = NUAssertLogger_16994();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v12 = dispatch_get_specific(*v6);
        v13 = MEMORY[0x1E696AF00];
        v14 = v12;
        callStackSymbols = [v13 callStackSymbols];
        v16 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v18 = v12;
        v19 = 2114;
        v20 = v16;
        _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v18 = v11;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return inputNode;
}

@end