@interface PIRetouchCacheNode
+ (id)nodeWithInput:(id)input settings:(id)settings pipelineState:(id)state error:(id *)error;
- (BOOL)_setupRenderRequest:(id)request error:(id *)error;
- (BOOL)_tryLoad:(id *)load;
- (BOOL)tryLoadPersistentURL:(id)l error:(id *)error;
- (PIRetouchCacheNode)initWithInputs:(id)inputs settings:(id)settings subsampleFactor:(int64_t)factor;
- (id)_evaluateImageGeometry:(id *)geometry;
- (id)_modifyEvaluatedGeometry:(id)geometry;
- (id)baseIdentifier;
- (id)newRenderRequestWithOriginalRequest:(id)request error:(id *)error;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)outputRegion;
- (id)persistentURL;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
- (void)_resolveSourceWithResponse:(id)response;
- (void)_updateDigest:(id)digest forStroke:(id)stroke;
- (void)_updateInputRegion:(id)region outputRegion:(id)outputRegion forStroke:(id)stroke geometry:(id)geometry;
- (void)resolveWithInputImage:(id)image retouchStrokes:(id)strokes cacheKey:(id)key;
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
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v14;
        v26 = 2114;
        v27 = v16;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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

- (void)resolveWithInputImage:(id)image retouchStrokes:(id)strokes cacheKey:(id)key
{
  keyCopy = key;
  strokesCopy = strokes;
  imageCopy = image;
  v11 = [PIRetouchSourceNode alloc];
  settings = [(NURenderNode *)self settings];
  v13 = [settings objectForKeyedSubscript:@"detectedFaces"];
  v14 = [(PIRetouchSourceNode *)v11 initWithInputImage:imageCopy retouchStrokes:strokesCopy detectedFaces:v13 cacheKey:keyCopy];

  [(NUCacheNode *)self resolveWithSourceNode:v14 error:0];
}

- (void)_resolveSourceWithResponse:(id)response
{
  v31 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  if (!responseCopy)
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
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v21;
        v29 = 2114;
        v30 = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v20;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = responseCopy;
  v26 = 0;
  v6 = [responseCopy result:&v26];
  v7 = v26;
  if (v6)
  {
    settings = [(NURenderNode *)self settings];
    v9 = [settings objectForKeyedSubscript:@"strokes"];

    baseStrokeIndex = self->_baseStrokeIndex;
    if (baseStrokeIndex)
    {
      v11 = [v9 subarrayWithRange:{baseStrokeIndex, objc_msgSend(v9, "count") - self->_baseStrokeIndex}];

      v9 = v11;
    }

    image = [v6 image];
    [(PIRetouchCacheNode *)self resolveWithInputImage:image retouchStrokes:v9 cacheKey:self->_outputKey];
  }

  else
  {
    [(NUCacheNode *)self resolveWithSourceNode:0 error:v7];
  }
}

- (BOOL)_setupRenderRequest:(id)request error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (!error)
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
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v21;
        v28 = 2114;
        v29 = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v20;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = requestCopy;
  workingColorSpace = [MEMORY[0x1E69B3A10] workingColorSpace];
  [v7 setColorSpace:workingColorSpace];

  rGBAh = [MEMORY[0x1E69B3BF0] RGBAh];
  [v7 setPixelFormat:rGBAh];

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
    *error = [MEMORY[0x1E69B3A48] missingError:@"Missing input retouch region" object:0];
  }

  return inputRegion != 0;
}

- (id)_evaluateImageGeometry:(id *)geometry
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
    *geometry = v10;
  }

  return v7;
}

- (id)_modifyEvaluatedGeometry:(id)geometry
{
  geometryCopy = geometry;
  v4 = objc_alloc(MEMORY[0x1E69B3B18]);
  if (geometryCopy)
  {
    [geometryCopy extent];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  orientation = [geometryCopy orientation];
  v6 = [v4 initWithExtent:&v8 renderScale:*MEMORY[0x1E69B3918] orientation:{*(MEMORY[0x1E69B3918] + 8), orientation}];

  return v6;
}

- (id)newRenderRequestWithOriginalRequest:(id)request error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (!requestCopy)
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
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v23;
        *&buf[12] = 2114;
        *&buf[14] = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }

  v7 = requestCopy;
  v8 = objc_alloc(MEMORY[0x1E69B39A0]);
  composition = [v7 composition];
  v10 = [v8 initWithComposition:composition];

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
    *error = v13 = 0;
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

- (void)_updateInputRegion:(id)region outputRegion:(id)outputRegion forStroke:(id)stroke geometry:(id)geometry
{
  geometryCopy = geometry;
  strokeCopy = stroke;
  outputRegionCopy = outputRegion;
  regionCopy = region;
  v13 = [strokeCopy objectForKeyedSubscript:@"sourceOffset"];
  v14 = [v13 objectForKeyedSubscript:@"x"];
  v15 = [v13 objectForKeyedSubscript:@"y"];
  [v14 doubleValue];
  [v15 doubleValue];
  v39 = 0u;
  v40 = 0u;
  if (geometryCopy)
  {
    [geometryCopy extent];
  }

  v16 = [PIRepairUtilities brushStrokeFromRetouchStrokeDictionary:strokeCopy];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = [strokeCopy objectForKeyedSubscript:@"mode"];

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
  [regionCopy addRect:&v29];
  v29 = 0u;
  v30 = 0u;
  v27 = v35;
  v28 = v36;
  NUAlignPixelRectToPixelGrid();
  NUPixelRectIntersection();
  [regionCopy addRect:&v27];
  v27 = 0u;
  v28 = 0u;
  v25 = v37;
  v26 = v38;
  NUAlignPixelRectToPixelGrid();
  NUPixelRectIntersection();
  [regionCopy addRect:&v25];

  v25 = 0u;
  v26 = 0u;
  v24[0] = v37;
  v24[1] = v38;
  NUAlignPixelRectToPixelGrid();
  NUPixelRectIntersection();
  [outputRegionCopy addRect:v24];
}

- (void)_updateDigest:(id)digest forStroke:(id)stroke
{
  digestCopy = digest;
  strokeCopy = stroke;
  [digestCopy addString:@"RetouchStroke{"];
  v6 = [strokeCopy objectForKeyedSubscript:@"sourceOffset"];
  [v6 nu_updateDigest:digestCopy];
  [digestCopy addCString:{", "}];
  v7 = [strokeCopy objectForKeyedSubscript:@"radius"];
  [v7 nu_updateDigest:digestCopy];

  [digestCopy addCString:{", "}];
  v8 = [strokeCopy objectForKeyedSubscript:@"softness"];
  [v8 nu_updateDigest:digestCopy];

  [digestCopy addCString:{", "}];
  v9 = [strokeCopy objectForKeyedSubscript:@"opacity"];
  [v9 nu_updateDigest:digestCopy];

  [digestCopy addCString:{", "}];
  v10 = [strokeCopy objectForKeyedSubscript:@"points"];

  v11 = [v10 count];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  [v12 nu_updateDigest:digestCopy];
  if (v11)
  {
    [digestCopy addCString:{", "}];
    v13 = [v10 objectAtIndexedSubscript:0];
    [v13 nu_updateDigest:digestCopy];

    [digestCopy addCString:{", "}];
    v14 = [v10 objectAtIndexedSubscript:v11 - 1];
    [v14 nu_updateDigest:digestCopy];
  }

  [digestCopy addString:@"}"];
}

- (id)baseIdentifier
{
  baseIdentifier = self->_baseIdentifier;
  if (!baseIdentifier)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69B3A38]);
    inputNode = [(NUCacheNode *)self inputNode];
    [inputNode nu_updateDigest:v4];

    [v4 addString:@"subsample["];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NUCacheNode subsampleFactor](self, "subsampleFactor")}];
    [v6 nu_updateDigest:v4];

    [v4 addString:@"]"];
    stringValue = [v4 stringValue];
    v8 = self->_baseIdentifier;
    self->_baseIdentifier = stringValue;

    baseIdentifier = self->_baseIdentifier;
  }

  return baseIdentifier;
}

- (BOOL)_tryLoad:(id *)load
{
  v91 = *MEMORY[0x1E69E9840];
  if (self->_outputKey)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    inputNode = [(NUCacheNode *)self inputNode];
    v58 = [inputNode outputImageGeometry:load];

    if (v58)
    {
      settings = [(NURenderNode *)self settings];
      v8 = [settings objectForKeyedSubscript:@"strokes"];

      v56 = [v8 count];
      baseIdentifier = [(PIRetouchCacheNode *)self baseIdentifier];
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v56 + 1];
      [v10 addObject:baseIdentifier];
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
          v15 = baseIdentifier;
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
            baseIdentifier = [v17 stringValue];

            [v10 addObject:baseIdentifier];
            ++v14;
            v15 = baseIdentifier;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v74 objects:v90 count:16];
        }

        while (v12);
      }

      v18 = objc_alloc_init(MEMORY[0x1E69B3BB0]);
      v19 = objc_alloc_init(MEMORY[0x1E69B3BB0]);
      v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v56 + 1];
      region = [MEMORY[0x1E69B3C10] region];
      [v20 addObject:region];

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
      selfCopy = self;
      v64 = &v66;
      v65 = v56;
      [v10 enumerateObjectsWithOptions:2 usingBlock:v59];
      validRegion = [*(*(&v84 + 1) + 40) validRegion];
      v3 = [validRegion includesRegion:v18];

      if (v3)
      {
        if (*MEMORY[0x1E69B3D78] != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_269);
        }

        v31 = *MEMORY[0x1E69B3D80];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          subsampleFactor = [(NUCacheNode *)self subsampleFactor];
          v33 = v67[3];
          *buf = 67109632;
          v79 = subsampleFactor;
          v80 = 1024;
          v81 = v33;
          v82 = 1024;
          LODWORD(v83[0]) = v56;
          _os_log_impl(&dword_1C7694000, v31, OS_LOG_TYPE_DEFAULT, "Retouch intermediate #%d cache hit (stroke #%d out of %d)", buf, 0x14u);
        }

        outputKey = [*(*(&v84 + 1) + 40) immutableImageCopy];
        v35 = [obj subarrayWithRange:{v67[3], v56 - v67[3]}];
        [(PIRetouchCacheNode *)self resolveWithInputImage:outputKey retouchStrokes:v35 cacheKey:baseIdentifier];
        [*(*(&v84 + 1) + 40) endAccess];
      }

      else
      {
        v37 = *(*(&v84 + 1) + 40);
        if (v37)
        {
          validRegion2 = [v37 validRegion];
          v39 = [v18 regionByRemovingRegion:validRegion2];
          inputRegion = self->_inputRegion;
          self->_inputRegion = v39;

          if (*MEMORY[0x1E69B3D78] != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_269);
          }

          v41 = *MEMORY[0x1E69B3D80];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            subsampleFactor2 = [(NUCacheNode *)self subsampleFactor];
            v43 = v67[3];
            v44 = self->_inputRegion;
            *buf = 67109890;
            v79 = subsampleFactor2;
            v80 = 1024;
            v81 = v43;
            v82 = 1024;
            LODWORD(v83[0]) = v56;
            WORD2(v83[0]) = 2112;
            *(v83 + 6) = v44;
            _os_log_impl(&dword_1C7694000, v41, OS_LOG_TYPE_DEFAULT, "Retouch intermediate #%d cache hit [partial] (stroke #%d out of %d), invalid region: %@", buf, 0x1Eu);
          }

          mutableImageCopy = [*(*(&v84 + 1) + 40) mutableImageCopy];
          inputImage = self->_inputImage;
          self->_inputImage = mutableImageCopy;

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
            subsampleFactor3 = [(NUCacheNode *)self subsampleFactor];
            *buf = 67109632;
            v79 = subsampleFactor3;
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

        v52 = baseIdentifier;
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
        v54 = *load;
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

+ (id)nodeWithInput:(id)input settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  settingsCopy = settings;
  stateCopy = state;
  if (!error)
  {
    v23 = NUAssertLogger_6588();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v57 = v24;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v27 = NUAssertLogger_6588();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v41 = dispatch_get_specific(*callStackSymbols);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        callStackSymbols = [v42 callStackSymbols];
        v44 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v57 = v41;
        v58 = 2114;
        v59 = v44;
        _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v57 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v33 = _NUAssertFailHandler();
    goto LABEL_33;
  }

  if (!inputCopy)
  {
    v30 = NUAssertLogger_6588();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v57 = v31;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v32 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v27 = NUAssertLogger_6588();
    v33 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (!v32)
    {
      if (v33)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v57 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_35:

      v38 = _NUAssertFailHandler();
      goto LABEL_36;
    }

LABEL_33:
    if (v33)
    {
      v45 = dispatch_get_specific(*callStackSymbols);
      v46 = MEMORY[0x1E696AF00];
      v47 = v45;
      callStackSymbols = [v46 callStackSymbols];
      v48 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v57 = v45;
      v58 = 2114;
      v59 = v48;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!settingsCopy)
  {
    v35 = NUAssertLogger_6588();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "settings != nil"];
      *buf = 138543362;
      v57 = v36;
      _os_log_error_impl(&dword_1C7694000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v37 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v27 = NUAssertLogger_6588();
    v38 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (!v37)
    {
      if (v38)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v40 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v57 = v40;
        _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_38;
    }

LABEL_36:
    if (v38)
    {
      v49 = dispatch_get_specific(*callStackSymbols);
      v50 = MEMORY[0x1E696AF00];
      v51 = v49;
      callStackSymbols5 = [v50 callStackSymbols];
      v53 = [callStackSymbols5 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v57 = v49;
      v58 = 2114;
      v59 = v53;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_38:

    _NUAssertFailHandler();
  }

  v12 = stateCopy;
  v13 = [settingsCopy objectForKeyedSubscript:@"retouch"];
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

      v20 = [(NUCacheNode *)[PIRetouchCacheNode alloc] initWithInput:inputCopy settings:v18];
      v21 = [(NUCacheNode *)[PIRetouchSubsampleCacheNode alloc] initWithInput:v20 settings:v18];
    }

    else
    {
      [MEMORY[0x1E69B3A48] missingError:@"Missing input strokes" object:v14];
      *error = v21 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] missingError:@"Missing retouch settings" object:settingsCopy];
    *error = v21 = 0;
  }

  return v21;
}

- (BOOL)tryLoadPersistentURL:(id)l error:(id *)error
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
    *error = v10[5];
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

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v8.receiver = self;
  v8.super_class = PIRetouchCacheNode;
  v6 = [(NURenderNode *)&v8 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];

  return v6;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if (!error)
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
        callStackSymbols = [v38 callStackSymbols];
        v41 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v37;
        v48 = 2114;
        v49 = v41;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v36;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = stateCopy;
  if ([stateCopy evaluationMode] == 1 || !objc_msgSend(v10, "evaluationMode"))
  {
    v45.receiver = self;
    v45.super_class = PIRetouchCacheNode;
    v12 = [(NUCacheNode *)&v45 nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];
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

        retouchInputNode = [(PIRetouchCacheNode *)self retouchInputNode];
        v22 = [retouchInputNode nodeByReplayingAgainstCache:cacheCopy pipelineState:v19 error:error];

        if (v22)
        {
          v23 = -[PIRetouchCompositeNode initWithScale:sampleMode:input:retouch:]([PIRetouchCompositeNode alloc], "initWithScale:sampleMode:input:retouch:", v16, v18, [v10 sampleMode], v22, v12);
          v11 = [MEMORY[0x1E69B3C28] nodeFromCache:v23 cache:cacheCopy];

          [v11 setEvaluatedForMode:{objc_msgSend(v10, "evaluationMode")}];
          if ((NUScaleEqual() & 1) == 0)
          {
            v43 = objc_alloc(MEMORY[0x1E69B3C90]);
            v24 = v20;
            scale = [v10 scale];
            v27 = [v43 initWithTargetScale:scale effectiveScale:v26 sampleMode:v44 input:{v24, objc_msgSend(v10, "sampleMode"), v11}];

            v11 = [MEMORY[0x1E69B3C28] nodeFromCache:v27 cache:cacheCopy];

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
    *error = v11 = 0;
  }

  return v11;
}

- (id)persistentURL
{
  v3 = objc_alloc(MEMORY[0x1E695DFF8]);
  v4 = MEMORY[0x1E696AEC0];
  cacheIdentifier = [(NUCacheNode *)self cacheIdentifier];
  v6 = [v4 stringWithFormat:@"x-cache-node://retouch/%@", cacheIdentifier];
  v7 = [v3 initWithString:v6];

  return v7;
}

- (PIRetouchCacheNode)initWithInputs:(id)inputs settings:(id)settings subsampleFactor:(int64_t)factor
{
  v9.receiver = self;
  v9.super_class = PIRetouchCacheNode;
  v5 = [(NUCacheNode *)&v9 initWithInputs:inputs settings:settings subsampleFactor:factor];
  v6 = dispatch_queue_create("PIRetouchCacheNode", 0);
  retouchQueue = v5->_retouchQueue;
  v5->_retouchQueue = v6;

  return v5;
}

@end