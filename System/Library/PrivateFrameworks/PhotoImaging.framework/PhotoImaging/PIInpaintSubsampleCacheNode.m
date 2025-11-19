@interface PIInpaintSubsampleCacheNode
- (BOOL)_tryLoad:(id *)a3;
- (id)compositeNode;
- (id)inpaintInputNode;
- (id)inpaintNode;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (int64_t)subsampleFactorForScale:(id)a3;
@end

@implementation PIInpaintSubsampleCacheNode

- (BOOL)_tryLoad:(id *)a3
{
  if (self->super._outputRegion)
  {
    return 1;
  }

  v6 = [(NUCacheNode *)self inputNode];
  v7 = [v6 outputImageGeometry:a3];

  if (v7)
  {
    v8 = [(NURenderNode *)self imageProperties:a3];
    v3 = v8 != 0;
    if (v8)
    {
      v9 = [(PIInpaintSubsampleCacheNode *)self inpaintNode];
      v10 = [v9 outputRegion];

      v11 = objc_alloc_init(MEMORY[0x1E69B3BB0]);
      v12 = [v8 rawProperties];

      if (v12)
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
        v17 = [v7 scaledSize];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __40__PIInpaintSubsampleCacheNode__tryLoad___block_invoke;
        v31[3] = &unk_1E82AB620;
        v33 = v14;
        v34 = v16;
        v35 = 0;
        v36 = 0;
        v37 = v17;
        v38 = v18;
        v32 = v11;
        [v10 enumerateRects:v31];
      }

      v19 = [v11 copy];
      outputRegion = self->super._outputRegion;
      self->super._outputRegion = v19;

      v21 = [v11 copy];
      inputRegion = self->super._inputRegion;
      self->super._inputRegion = v21;

      v23 = [v7 scaledSize];
      v25 = v24;
      v26 = [v8 colorSpace];
      v27 = [(PIInpaintCacheNode *)self newImageOfSize:v23 colorSpace:v25, v26];
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

- (int64_t)subsampleFactorForScale:(id)a3
{
  v4[0] = 0;
  v4[1] = 0;
  return [MEMORY[0x1E69B3CE0] subsampleFactorForScale:a3.var0 additionalScale:{a3.var1, v4}];
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (([v9 evaluationMode] == 1 || !objc_msgSend(v9, "evaluationMode")) && (v10 = objc_msgSend(v9, "scale"), -[PIInpaintSubsampleCacheNode subsampleFactorForScale:](self, "subsampleFactorForScale:", v10, v11) == 1))
  {
    v12 = [(NUCacheNode *)self inputNode];
    v13 = [v12 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PIInpaintSubsampleCacheNode;
    v13 = [(PIInpaintCacheNode *)&v15 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];
  }

  return v13;
}

- (id)inpaintInputNode
{
  v2 = [(PIInpaintSubsampleCacheNode *)self inpaintNode];
  v3 = [v2 inputNode];

  return v3;
}

- (id)inpaintNode
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(NURenderNode *)self isCached])
  {
    v3 = [(PIInpaintSubsampleCacheNode *)self compositeNode];
    v4 = [v3 inpaintNode];
  }

  else
  {
    v4 = [(NUCacheNode *)self inputNode];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = NUAssertLogger_16994();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected input node: %@", v4];
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
          v17 = [v15 callStackSymbols];
          v18 = [v17 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v20 = v14;
          v21 = 2114;
          v22 = v18;
          _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v11)
      {
        v12 = [MEMORY[0x1E696AF00] callStackSymbols];
        v13 = [v12 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v20 = v13;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler();
    }
  }

  return v4;
}

- (id)compositeNode
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [(NUCacheNode *)self inputNode];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = NUAssertLogger_16994();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected input node: %@", v2];
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
        v15 = [v13 callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v18 = v12;
        v19 = 2114;
        v20 = v16;
        _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v18 = v11;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

@end