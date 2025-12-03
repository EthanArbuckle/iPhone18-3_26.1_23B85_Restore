@interface PILongExposureCacheNode
- (BOOL)tryLoadPersistentURL:(id)l error:(id *)error;
- (PILongExposureCacheNode)initWithAutoLoopCacheNode:(id)node urlKey:(id)key;
- (id)_evaluateImageGeometry:(id *)geometry;
- (id)evaluateRenderDependenciesWithRequest:(id)request error:(id *)error;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)persistentURL;
- (id)resolvedSourceNode:(id *)node;
@end

@implementation PILongExposureCacheNode

- (id)_evaluateImageGeometry:(id *)geometry
{
  autoLoopCacheNode = [(PILongExposureCacheNode *)self autoLoopCacheNode];
  v5 = [autoLoopCacheNode outputImageGeometry:geometry];

  return v5;
}

- (id)resolvedSourceNode:(id *)node
{
  if ([(NUCacheNode *)self isResolved]|| ([(PILongExposureCacheNode *)self persistentURL], v5 = objc_claimAutoreleasedReturnValue(), v6 = [(PILongExposureCacheNode *)self tryLoadPersistentURL:v5 error:node], v5, v6))
  {
    v9.receiver = self;
    v9.super_class = PILongExposureCacheNode;
    v7 = [(NUCacheNode *)&v9 resolvedSourceNode:node];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)evaluateRenderDependenciesWithRequest:(id)request error:(id *)error
{
  requestCopy = request;
  autoLoopCacheNode = [(PILongExposureCacheNode *)self autoLoopCacheNode];
  v8 = [autoLoopCacheNode evaluateRenderDependenciesWithRequest:requestCopy error:error];

  return v8;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if (!error)
  {
    v16 = NUAssertLogger_8835();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v31 = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_8835();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(*v18);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v24;
        v32 = 2114;
        v33 = v28;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v23;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = stateCopy;
  if ([stateCopy evaluationMode] == 1 || !objc_msgSend(v10, "evaluationMode"))
  {
    v12 = [v10 copy];
    [v12 setMediaComponentType:2];
    [v12 setScale:{*MEMORY[0x1E69B3918], *(MEMORY[0x1E69B3918] + 8)}];
    v29.receiver = self;
    v29.super_class = PILongExposureCacheNode;
    v13 = [(NUCacheNode *)&v29 nodeByReplayingAgainstCache:cacheCopy pipelineState:v12 error:error];
    v11 = v13;
    if (v13)
    {
      v14 = v13;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] invalidError:@"Cannot evaluate cache node" object:self];
    *error = v11 = 0;
  }

  return v11;
}

- (BOOL)tryLoadPersistentURL:(id)l error:(id *)error
{
  v6 = MEMORY[0x1E69B39A8];
  lCopy = l;
  v8 = [v6 alloc];
  identifier = [*MEMORY[0x1E6982E58] identifier];
  v10 = [v8 initWithURL:lCopy UTI:identifier identifier:@"cache"];

  v11 = [v10 load:error];
  if (v11)
  {
    [(NUCacheNode *)self resolveWithSourceNode:v10 error:0];
  }

  return v11;
}

- (id)persistentURL
{
  autoLoopCacheNode = [(PILongExposureCacheNode *)self autoLoopCacheNode];
  settings = [(NURenderNode *)self settings];
  v5 = [settings objectForKeyedSubscript:@"key"];
  v6 = [autoLoopCacheNode valueForKey:v5];

  return v6;
}

- (PILongExposureCacheNode)initWithAutoLoopCacheNode:(id)node urlKey:(id)key
{
  v44 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  keyCopy = key;
  if (!nodeCopy)
  {
    v13 = NUAssertLogger_8835();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "cacheNode != nil"];
      *buf = 138543362;
      v41 = v14;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_8835();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v26 = dispatch_get_specific(*callStackSymbols);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v41 = v26;
        v42 = 2114;
        v43 = v29;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v41 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v23 = _NUAssertFailHandler();
    goto LABEL_17;
  }

  v8 = keyCopy;
  if (!keyCopy)
  {
    v20 = NUAssertLogger_8835();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "key != nil"];
      *buf = 138543362;
      v41 = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v22 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_8835();
    v23 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!v22)
    {
      if (v23)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v25 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v41 = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (v23)
    {
      v30 = dispatch_get_specific(*callStackSymbols);
      v31 = MEMORY[0x1E696AF00];
      v32 = v30;
      callStackSymbols4 = [v31 callStackSymbols];
      v34 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v41 = v30;
      v42 = 2114;
      v43 = v34;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_19:

    _NUAssertFailHandler();
  }

  v38 = *MEMORY[0x1E69B38E0];
  v39 = nodeCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v36 = @"key";
  v37 = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v35.receiver = self;
  v35.super_class = PILongExposureCacheNode;
  v11 = [(NUCacheNode *)&v35 initWithInputs:v9 settings:v10 subsampleFactor:1];

  return v11;
}

@end