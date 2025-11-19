@interface PIRetouchCacheNode
+ (id)nodeWithInput:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (BOOL)_setupRenderRequest:(id)a3 error:(id *)a4;
- (BOOL)_tryLoad:(id *)a3;
- (BOOL)tryLoadPersistentURL:(id)a3 error:(id *)a4;
- (PIRetouchCacheNode)initWithInputs:(id)a3 settings:(id)a4 subsampleFactor:(int64_t)a5;
- (id)_evaluateImageGeometry:(id *)a3;
- (id)_modifyEvaluatedGeometry:(id)a3;
- (id)baseIdentifier;
- (id)newRenderRequestWithOriginalRequest:(id)a3 error:(id *)a4;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)outputRegion;
- (id)persistentURL;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (void)_resolveSourceWithResponse:(id)a3;
- (void)_updateDigest:(id)a3 forStroke:(id)a4;
- (void)_updateInputRegion:(id)a3 outputRegion:(id)a4 forStroke:(id)a5 geometry:(id)a6;
- (void)resolveWithInputImage:(id)a3 retouchStrokes:(id)a4 cacheKey:(id)a5;
@end

@implementation PIRetouchCacheNode

- (id)outputRegion
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6586;
  v22 = __Block_byref_object_dispose__6587;
  v23 = 0;
  retouchQueue = self->_retouchQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __34__PIRetouchCacheNode_outputRegion__block_invoke;
  v17[3] = &unk_1E82AB580;
  v17[4] = self;
  v17[5] = &v18;
  dispatch_sync(retouchQueue, v17);
  v3 = v19[5];
  if (!v3)
  {
    v6 = NUAssertLogger_6588();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing output region"];
      *buf = 138543362;
      v25 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_6588();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v14;
        v26 = 2114;
        v27 = v16;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }

  v4 = v3;
  _Block_object_dispose(&v18, 8);

  return v4;
}

- (void)resolveWithInputImage:(id)a3 retouchStrokes:(id)a4 cacheKey:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [PIRetouchSourceNode alloc];
  v12 = [(NURenderNode *)self settings];
  v13 = [v12 objectForKeyedSubscript:@"detectedFaces"];
  v14 = [(PIRetouchSourceNode *)v11 initWithInputImage:v10 retouchStrokes:v9 detectedFaces:v13 cacheKey:v8];

  [(NUCacheNode *)self resolveWithSourceNode:v14 error:0];
}

- (void)_resolveSourceWithResponse:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v13 = NUAssertLogger_6588();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "response != nil"];
      *buf = 138543362;
      v28 = v14;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_6588();
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

  v5 = v4;
  v26 = 0;
  v6 = [v4 result:&v26];
  v7 = v26;
  if (v6)
  {
    v8 = [(NURenderNode *)self settings];
    v9 = [v8 objectForKeyedSubscript:@"strokes"];

    baseStrokeIndex = self->_baseStrokeIndex;
    if (baseStrokeIndex)
    {
      v11 = [v9 subarrayWithRange:{baseStrokeIndex, objc_msgSend(v9, "count") - self->_baseStrokeIndex}];

      v9 = v11;
    }

    v12 = [v6 image];
    [(PIRetouchCacheNode *)self resolveWithInputImage:v12 retouchStrokes:v9 cacheKey:self->_outputKey];
  }

  else
  {
    [(NUCacheNode *)self resolveWithSourceNode:0 error:v7];
  }
}

- (BOOL)_setupRenderRequest:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v13 = NUAssertLogger_6588();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v27 = v14;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_6588();
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
        v27 = v21;
        v28 = 2114;
        v29 = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v20;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = [MEMORY[0x1E69B3A10] workingColorSpace];
  [v7 setColorSpace:v8];

  v9 = [MEMORY[0x1E69B3BF0] RGBAh];
  [v7 setPixelFormat:v9];

  [v7 setTileSize:{256, 256}];
  [v7 setName:@"PIRetouchCacheNode-setup"];
  inputRegion = self->_inputRegion;
  if (inputRegion)
  {
    v11 = [objc_alloc(MEMORY[0x1E69B3A80]) initWithRegion:self->_inputRegion];
    [v7 setRegionPolicy:v11];

    [v7 setTargetBufferImage:self->_inputImage];
  }

  else
  {
    *a4 = [MEMORY[0x1E69B3A48] missingError:@"Missing input retouch region" object:0];
  }

  return inputRegion != 0;
}

- (id)_evaluateImageGeometry:(id *)a3
{
  v13.receiver = self;
  v13.super_class = PIRetouchCacheNode;
  v14 = 0;
  v5 = [(NUCacheNode *)&v13 _evaluateImageGeometry:&v14];
  if (v5)
  {
    v6 = v14;
    v7 = [(PIRetouchCacheNode *)self _modifyEvaluatedGeometry:v5];
  }

  else
  {
    v8 = MEMORY[0x1E69B3A48];
    v9 = v14;
    v10 = [v8 errorWithCode:1 reason:@"Could not get the input geometry" object:self underlyingError:v9];
    v11 = v10;

    v7 = 0;
    *a3 = v10;
  }

  return v7;
}

- (id)_modifyEvaluatedGeometry:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E69B3B18]);
  if (v3)
  {
    [v3 extent];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v5 = [v3 orientation];
  v6 = [v4 initWithExtent:&v8 renderScale:*MEMORY[0x1E69B3918] orientation:{*(MEMORY[0x1E69B3918] + 8), v5}];

  return v6;
}

- (id)newRenderRequestWithOriginalRequest:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v15 = NUAssertLogger_6588();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "originalRequest != nil"];
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_6588();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(*v17);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        v26 = [v24 callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v23;
        *&buf[12] = 2114;
        *&buf[14] = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }

  v7 = v6;
  v8 = objc_alloc(MEMORY[0x1E69B39A0]);
  v9 = [v7 composition];
  v10 = [v8 initWithComposition:v9];

  [v10 setName:@"PIRetouchCacheNode-newRequest"];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v38 = __Block_byref_object_copy__6586;
  v39 = __Block_byref_object_dispose__6587;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  retouchQueue = self->_retouchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PIRetouchCacheNode_newRenderRequestWithOriginalRequest_error___block_invoke;
  block[3] = &unk_1E82AA370;
  v31 = &v33;
  block[4] = self;
  v12 = v10;
  v30 = v12;
  v32 = buf;
  dispatch_sync(retouchQueue, block);
  if (v34[3])
  {
    [v12 setResponseQueue:self->_retouchQueue];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __64__PIRetouchCacheNode_newRenderRequestWithOriginalRequest_error___block_invoke_2;
    v28[3] = &unk_1E82AABF8;
    v28[4] = self;
    [v12 setCompletionBlock:v28];
    v13 = v12;
  }

  else
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to generate retouch render request" object:self underlyingError:*(*&buf[8] + 40)];
    *a4 = v13 = 0;
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(buf, 8);

  return v13;
}

void __64__PIRetouchCacheNode_newRenderRequestWithOriginalRequest_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = 0;
  v5 = [v2 _setupRenderRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (void)_updateInputRegion:(id)a3 outputRegion:(id)a4 forStroke:(id)a5 geometry:(id)a6
{
  v10 = a6;
  v11 = a5;
  v23 = a4;
  v12 = a3;
  v13 = [v11 objectForKeyedSubscript:@"sourceOffset"];
  v14 = [v13 objectForKeyedSubscript:@"x"];
  v15 = [v13 objectForKeyedSubscript:@"y"];
  [v14 doubleValue];
  [v15 doubleValue];
  v39 = 0u;
  v40 = 0u;
  if (v10)
  {
    [v10 extent];
  }

  v16 = [PIRepairUtilities brushStrokeFromRetouchStrokeDictionary:v11];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = [v11 objectForKeyedSubscript:@"mode"];

  v18 = PIRetouchModeFromString(v17);
  if (v18 == 2)
  {
    v37 = v39;
    v38 = v40;
    v35 = v39;
    v36 = v40;
    v33 = v39;
    v34 = v40;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    if (v16)
    {
      [v16 extent];
    }

    else
    {
      v29 = 0uLL;
      v30 = 0uLL;
    }

    NUPixelRectIntersection();
    [v16 radius];
    v20 = v19;
    v21 = NUPixelPointFromCGPoint();
    v29 = v39;
    v30 = v40;
    v27 = v31;
    v28 = v32;
    [PIRepairUtilities calcExtentsForStrokeRadius:v21 offset:v22 inputImageExtent:&v29 maskExtent:&v27 repairExtent:&v37 textureExtent:&v35 sourceExtent:v20, &v33];
  }

  v29 = v37;
  v30 = v38;
  v27 = v39;
  v28 = v40;
  NUPixelRectFlipYOrigin();
  v37 = v31;
  v38 = v32;
  v29 = v33;
  v30 = v34;
  v27 = v39;
  v28 = v40;
  NUPixelRectFlipYOrigin();
  v33 = v31;
  v34 = v32;
  v29 = v35;
  v30 = v36;
  v27 = v39;
  v28 = v40;
  NUPixelRectFlipYOrigin();
  v35 = v31;
  v36 = v32;
  [(PIRetouchCacheNode *)self padding];
  v29 = v37;
  v30 = v38;
  NUPixelRectDilate();
  v37 = v31;
  v38 = v32;
  v31 = 0u;
  v32 = 0u;
  v29 = v33;
  v30 = v34;
  NUAlignPixelRectToPixelGrid();
  v27 = v31;
  v28 = v32;
  NUPixelRectIntersection();
  [v12 addRect:&v29];
  v29 = 0u;
  v30 = 0u;
  v27 = v35;
  v28 = v36;
  NUAlignPixelRectToPixelGrid();
  NUPixelRectIntersection();
  [v12 addRect:&v27];
  v27 = 0u;
  v28 = 0u;
  v25 = v37;
  v26 = v38;
  NUAlignPixelRectToPixelGrid();
  NUPixelRectIntersection();
  [v12 addRect:&v25];

  v25 = 0u;
  v26 = 0u;
  v24[0] = v37;
  v24[1] = v38;
  NUAlignPixelRectToPixelGrid();
  NUPixelRectIntersection();
  [v23 addRect:v24];
}

- (void)_updateDigest:(id)a3 forStroke:(id)a4
{
  v15 = a3;
  v5 = a4;
  [v15 addString:@"RetouchStroke{"];
  v6 = [v5 objectForKeyedSubscript:@"sourceOffset"];
  [v6 nu_updateDigest:v15];
  [v15 addCString:{", "}];
  v7 = [v5 objectForKeyedSubscript:@"radius"];
  [v7 nu_updateDigest:v15];

  [v15 addCString:{", "}];
  v8 = [v5 objectForKeyedSubscript:@"softness"];
  [v8 nu_updateDigest:v15];

  [v15 addCString:{", "}];
  v9 = [v5 objectForKeyedSubscript:@"opacity"];
  [v9 nu_updateDigest:v15];

  [v15 addCString:{", "}];
  v10 = [v5 objectForKeyedSubscript:@"points"];

  v11 = [v10 count];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  [v12 nu_updateDigest:v15];
  if (v11)
  {
    [v15 addCString:{", "}];
    v13 = [v10 objectAtIndexedSubscript:0];
    [v13 nu_updateDigest:v15];

    [v15 addCString:{", "}];
    v14 = [v10 objectAtIndexedSubscript:v11 - 1];
    [v14 nu_updateDigest:v15];
  }

  [v15 addString:@"}"];
}

- (id)baseIdentifier
{
  baseIdentifier = self->_baseIdentifier;
  if (!baseIdentifier)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69B3A38]);
    v5 = [(NUCacheNode *)self inputNode];
    [v5 nu_updateDigest:v4];

    [v4 addString:@"subsample["];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NUCacheNode subsampleFactor](self, "subsampleFactor")}];
    [v6 nu_updateDigest:v4];

    [v4 addString:@"]"];
    v7 = [v4 stringValue];
    v8 = self->_baseIdentifier;
    self->_baseIdentifier = v7;

    baseIdentifier = self->_baseIdentifier;
  }

  return baseIdentifier;
}

- (BOOL)_tryLoad:(id *)a3
{
  v91 = *MEMORY[0x1E69E9840];
  if (self->_outputKey)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v6 = [(NUCacheNode *)self inputNode];
    v58 = [v6 outputImageGeometry:a3];

    if (v58)
    {
      v7 = [(NURenderNode *)self settings];
      v8 = [v7 objectForKeyedSubscript:@"strokes"];

      v56 = [v8 count];
      v9 = [(PIRetouchCacheNode *)self baseIdentifier];
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v56 + 1];
      [v10 addObject:v9];
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v74 objects:v90 count:16];
      if (v12)
      {
        v13 = *v75;
        do
        {
          v14 = 0;
          v15 = v9;
          do
          {
            if (*v75 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v74 + 1) + 8 * v14);
            v17 = objc_alloc_init(MEMORY[0x1E69B3A38]);
            [v15 nu_updateDigest:v17];
            [(PIRetouchCacheNode *)self _updateDigest:v17 forStroke:v16];
            v9 = [v17 stringValue];

            [v10 addObject:v9];
            ++v14;
            v15 = v9;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v74 objects:v90 count:16];
        }

        while (v12);
      }

      v18 = objc_alloc_init(MEMORY[0x1E69B3BB0]);
      v19 = objc_alloc_init(MEMORY[0x1E69B3BB0]);
      v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v56 + 1];
      v21 = [MEMORY[0x1E69B3C10] region];
      [v20 addObject:v21];

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = v11;
      v22 = [obj countByEnumeratingWithState:&v70 objects:v89 count:16];
      if (v22)
      {
        v23 = *v71;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v71 != v23)
            {
              objc_enumerationMutation(obj);
            }

            [(PIRetouchCacheNode *)self _updateInputRegion:v18 outputRegion:v19 forStroke:*(*(&v70 + 1) + 8 * i) geometry:v58];
            v25 = [v19 copy];
            [v20 addObject:v25];
          }

          v22 = [obj countByEnumeratingWithState:&v70 objects:v89 count:16];
        }

        while (v22);
      }

      v26 = [v19 copy];
      outputRegion = self->_outputRegion;
      self->_outputRegion = v26;

      objc_opt_class();
      v28 = [PIRetouchSourceNode intermediateCacheForSubsample:objc_opt_isKindOfClass() & 1];
      v66 = 0;
      v67 = &v66;
      v68 = 0x2020000000;
      v69 = 0x7FFFFFFFFFFFFFFFLL;
      *&v84 = 0;
      *(&v84 + 1) = &v84;
      v85 = 0x3032000000;
      v86 = __Block_byref_object_copy__6586;
      v87 = __Block_byref_object_dispose__6587;
      v88 = 0;
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __31__PIRetouchCacheNode__tryLoad___block_invoke;
      v59[3] = &unk_1E82AB558;
      v63 = &v84;
      v55 = v28;
      v60 = v55;
      v29 = v20;
      v61 = v29;
      v62 = self;
      v64 = &v66;
      v65 = v56;
      [v10 enumerateObjectsWithOptions:2 usingBlock:v59];
      v30 = [*(*(&v84 + 1) + 40) validRegion];
      v3 = [v30 includesRegion:v18];

      if (v3)
      {
        if (*MEMORY[0x1E69B3D78] != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_269);
        }

        v31 = *MEMORY[0x1E69B3D80];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [(NUCacheNode *)self subsampleFactor];
          v33 = v67[3];
          *buf = 67109632;
          v79 = v32;
          v80 = 1024;
          v81 = v33;
          v82 = 1024;
          LODWORD(v83[0]) = v56;
          _os_log_impl(&dword_1C7694000, v31, OS_LOG_TYPE_DEFAULT, "Retouch intermediate #%d cache hit (stroke #%d out of %d)", buf, 0x14u);
        }

        outputKey = [*(*(&v84 + 1) + 40) immutableImageCopy];
        v35 = [obj subarrayWithRange:{v67[3], v56 - v67[3]}];
        [(PIRetouchCacheNode *)self resolveWithInputImage:outputKey retouchStrokes:v35 cacheKey:v9];
        [*(*(&v84 + 1) + 40) endAccess];
      }

      else
      {
        v37 = *(*(&v84 + 1) + 40);
        if (v37)
        {
          v38 = [v37 validRegion];
          v39 = [v18 regionByRemovingRegion:v38];
          inputRegion = self->_inputRegion;
          self->_inputRegion = v39;

          if (*MEMORY[0x1E69B3D78] != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_269);
          }

          v41 = *MEMORY[0x1E69B3D80];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = [(NUCacheNode *)self subsampleFactor];
            v43 = v67[3];
            v44 = self->_inputRegion;
            *buf = 67109890;
            v79 = v42;
            v80 = 1024;
            v81 = v43;
            v82 = 1024;
            LODWORD(v83[0]) = v56;
            WORD2(v83[0]) = 2112;
            *(v83 + 6) = v44;
            _os_log_impl(&dword_1C7694000, v41, OS_LOG_TYPE_DEFAULT, "Retouch intermediate #%d cache hit [partial] (stroke #%d out of %d), invalid region: %@", buf, 0x1Eu);
          }

          v45 = [*(*(&v84 + 1) + 40) mutableImageCopy];
          inputImage = self->_inputImage;
          self->_inputImage = v45;

          self->_baseStrokeIndex = v67[3];
          [*(*(&v84 + 1) + 40) endAccess];
        }

        else
        {
          if (*MEMORY[0x1E69B3D78] != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_269);
          }

          v47 = *MEMORY[0x1E69B3D80];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = [(NUCacheNode *)self subsampleFactor];
            *buf = 67109632;
            v79 = v48;
            v80 = 1024;
            v81 = v56;
            v82 = 2048;
            v83[0] = self;
            _os_log_impl(&dword_1C7694000, v47, OS_LOG_TYPE_DEFAULT, "Retouch intermediate #%d cache miss [%d strokes] (%p)", buf, 0x18u);
          }

          v49 = [v18 copy];
          v50 = self->_inputRegion;
          self->_inputRegion = v49;

          self->_baseStrokeIndex = 0;
          v51 = self->_inputImage;
          self->_inputImage = 0;
        }

        v52 = v9;
        outputKey = self->_outputKey;
        self->_outputKey = v52;
      }

      _Block_object_dispose(&v84, 8);
      _Block_object_dispose(&v66, 8);
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_269);
      }

      v36 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        v54 = *a3;
        LODWORD(v84) = 138543362;
        *(&v84 + 4) = v54;
        _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Failed to load retouch geometry, error: %{public}@", &v84, 0xCu);
      }

      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

void __31__PIRetouchCacheNode__tryLoad___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [*(a1 + 32) objectForKey:v7];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(*(*(a1 + 56) + 8) + 40);
  if (v11)
  {
    [v11 beginAccess];
    v12 = [*(*(*(a1 + 56) + 8) + 40) validRegion];
    v13 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    v14 = [v12 includesRegion:v13];

    if (v14)
    {
      *(*(*(a1 + 64) + 8) + 24) = a3;
      *a4 = 1;
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_269);
      }

      v15 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 48);
        v17 = v15;
        v18 = [v16 subsampleFactor];
        v19 = *(a1 + 72);
        v20[0] = 67109632;
        v20[1] = v18;
        v21 = 1024;
        v22 = a3;
        v23 = 1024;
        v24 = v19;
        _os_log_impl(&dword_1C7694000, v17, OS_LOG_TYPE_DEFAULT, "Retouch intermediate #%d cache miss [purged] (stroke #%d out of %d)", v20, 0x14u);
      }

      [*(a1 + 32) removeObjectForKey:v7];
      [*(*(*(a1 + 56) + 8) + 40) endAccess];
    }
  }
}

+ (id)nodeWithInput:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v60 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!a6)
  {
    v23 = NUAssertLogger_6588();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v57 = v24;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v27 = NUAssertLogger_6588();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v41 = dispatch_get_specific(*v25);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        v25 = [v42 callStackSymbols];
        v44 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v57 = v41;
        v58 = 2114;
        v59 = v44;
        _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v57 = v25;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v33 = _NUAssertFailHandler();
    goto LABEL_33;
  }

  if (!v9)
  {
    v30 = NUAssertLogger_6588();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v57 = v31;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = MEMORY[0x1E69B38E8];
    v32 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v27 = NUAssertLogger_6588();
    v33 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (!v32)
    {
      if (v33)
      {
        v34 = [MEMORY[0x1E696AF00] callStackSymbols];
        v25 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v57 = v25;
        _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_35:

      v38 = _NUAssertFailHandler();
      goto LABEL_36;
    }

LABEL_33:
    if (v33)
    {
      v45 = dispatch_get_specific(*v25);
      v46 = MEMORY[0x1E696AF00];
      v47 = v45;
      v25 = [v46 callStackSymbols];
      v48 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v57 = v45;
      v58 = 2114;
      v59 = v48;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!v10)
  {
    v35 = NUAssertLogger_6588();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "settings != nil"];
      *buf = 138543362;
      v57 = v36;
      _os_log_error_impl(&dword_1C7694000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = MEMORY[0x1E69B38E8];
    v37 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v27 = NUAssertLogger_6588();
    v38 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (!v37)
    {
      if (v38)
      {
        v39 = [MEMORY[0x1E696AF00] callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v57 = v40;
        _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_38;
    }

LABEL_36:
    if (v38)
    {
      v49 = dispatch_get_specific(*v25);
      v50 = MEMORY[0x1E696AF00];
      v51 = v49;
      v52 = [v50 callStackSymbols];
      v53 = [v52 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v57 = v49;
      v58 = 2114;
      v59 = v53;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_38:

    _NUAssertFailHandler();
  }

  v12 = v11;
  v13 = [v10 objectForKeyedSubscript:@"retouch"];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 objectForKeyedSubscript:@"inputStrokes"];
    if (v15)
    {
      v16 = objc_alloc(MEMORY[0x1E695DF90]);
      v54 = @"strokes";
      v55 = v15;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v18 = [v16 initWithDictionary:v17];

      v19 = [v14 objectForKeyedSubscript:@"detectedFaces"];
      if (v19)
      {
        [v18 setObject:v19 forKey:@"detectedFaces"];
      }

      v20 = [(NUCacheNode *)[PIRetouchCacheNode alloc] initWithInput:v9 settings:v18];
      v21 = [(NUCacheNode *)[PIRetouchSubsampleCacheNode alloc] initWithInput:v20 settings:v18];
    }

    else
    {
      [MEMORY[0x1E69B3A48] missingError:@"Missing input strokes" object:v14];
      *a6 = v21 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] missingError:@"Missing retouch settings" object:v10];
    *a6 = v21 = 0;
  }

  return v21;
}

- (BOOL)tryLoadPersistentURL:(id)a3 error:(id *)a4
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6586;
  retouchQueue = self->_retouchQueue;
  v13 = __Block_byref_object_dispose__6587;
  v14 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PIRetouchCacheNode_tryLoadPersistentURL_error___block_invoke;
  block[3] = &unk_1E82AA348;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(retouchQueue, block);
  v6 = *(v16 + 24);
  if ((v6 & 1) == 0)
  {
    *a4 = v10[5];
    v6 = *(v16 + 24);
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6 & 1;
}

void __49__PIRetouchCacheNode_tryLoadPersistentURL_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = 0;
  v4 = [v2 _tryLoad:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v8.receiver = self;
  v8.super_class = PIRetouchCacheNode;
  v6 = [(NURenderNode *)&v8 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];

  return v6;
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    v29 = NUAssertLogger_6588();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v47 = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_6588();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v34)
      {
        v37 = dispatch_get_specific(*v31);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        v40 = [v38 callStackSymbols];
        v41 = [v40 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v37;
        v48 = 2114;
        v49 = v41;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      v35 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [v35 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v36;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = v9;
  if ([v9 evaluationMode] == 1 || !objc_msgSend(v10, "evaluationMode"))
  {
    v45.receiver = self;
    v45.super_class = PIRetouchCacheNode;
    v12 = [(NUCacheNode *)&v45 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:a5];
    if (v12)
    {
      if ([(NURenderNode *)self isCached])
      {
        v11 = v12;
      }

      else
      {
        [v12 subsampleFactor];
        v13 = NUScaleMake();
        v15 = v14;
        [v10 scale];
        v16 = NUScaleDivide();
        v18 = v17;
        v42 = *(MEMORY[0x1E69B3918] + 8);
        v44 = *MEMORY[0x1E69B3918];
        v19 = [v10 copy];
        NUScaleMake();
        if (NUScaleCompare() < 1)
        {
          v20 = v42;
        }

        else
        {
          [v19 setScale:{v13, v15}];
          v20 = v18;
          v44 = v16;
          v16 = *MEMORY[0x1E69B3918];
          v18 = *(MEMORY[0x1E69B3918] + 8);
        }

        v21 = [(PIRetouchCacheNode *)self retouchInputNode];
        v22 = [v21 nodeByReplayingAgainstCache:v8 pipelineState:v19 error:a5];

        if (v22)
        {
          v23 = -[PIRetouchCompositeNode initWithScale:sampleMode:input:retouch:]([PIRetouchCompositeNode alloc], "initWithScale:sampleMode:input:retouch:", v16, v18, [v10 sampleMode], v22, v12);
          v11 = [MEMORY[0x1E69B3C28] nodeFromCache:v23 cache:v8];

          [v11 setEvaluatedForMode:{objc_msgSend(v10, "evaluationMode")}];
          if ((NUScaleEqual() & 1) == 0)
          {
            v43 = objc_alloc(MEMORY[0x1E69B3C90]);
            v24 = v20;
            v25 = [v10 scale];
            v27 = [v43 initWithTargetScale:v25 effectiveScale:v26 sampleMode:v44 input:{v24, objc_msgSend(v10, "sampleMode"), v11}];

            v11 = [MEMORY[0x1E69B3C28] nodeFromCache:v27 cache:v8];

            [v11 setEvaluatedForMode:{objc_msgSend(v10, "evaluationMode")}];
          }
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] invalidError:@"Cannot evaluate cache node" object:self];
    *a5 = v11 = 0;
  }

  return v11;
}

- (id)persistentURL
{
  v3 = objc_alloc(MEMORY[0x1E695DFF8]);
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(NUCacheNode *)self cacheIdentifier];
  v6 = [v4 stringWithFormat:@"x-cache-node://retouch/%@", v5];
  v7 = [v3 initWithString:v6];

  return v7;
}

- (PIRetouchCacheNode)initWithInputs:(id)a3 settings:(id)a4 subsampleFactor:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = PIRetouchCacheNode;
  v5 = [(NUCacheNode *)&v9 initWithInputs:a3 settings:a4 subsampleFactor:a5];
  v6 = dispatch_queue_create("PIRetouchCacheNode", 0);
  retouchQueue = v5->_retouchQueue;
  v5->_retouchQueue = v6;

  return v5;
}

@end