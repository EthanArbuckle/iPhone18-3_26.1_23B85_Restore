@interface PIAutoLoopCacheNode
+ (id)nodeWithInput:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)frameDuration;
- (PIAutoLoopCacheNode)initWithInput:(id)a3 frameDuration:(id *)a4;
- (id)newRenderRequestWithOriginalRequest:(id)a3 error:(id *)a4;
- (id)outputSettings:(id *)a3;
- (id)persistentLongExposureURL;
- (id)persistentMaskURL;
- (id)persistentURL;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation PIAutoLoopCacheNode

- (id)outputSettings:(id *)a3
{
  v29[4] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = PIAutoLoopCacheNode;
  v5 = [(NUVideoCacheNode *)&v27 outputSettings:?];
  if (v5)
  {
    v6 = [(NUCacheNode *)self inputNode];
    v7 = [v6 outputImageGeometry:a3];

    if (v7)
    {
      v8 = [(NUCacheNode *)self inputNode];
      v9 = [v8 videoProperties:a3];

      if (v9)
      {
        v10 = [v9 colorProperties];
        v11 = [v10 mutableCopy];

        v12 = *MEMORY[0x1E6987DE8];
        v13 = [v11 objectForKeyedSubscript:*MEMORY[0x1E6987DE8]];
        v14 = [v13 isEqualToString:*MEMORY[0x1E6965F80]];

        if (v14)
        {
          [v11 setObject:*MEMORY[0x1E6987DF8] forKeyedSubscript:v12];
        }

        [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x1E6987D20]];
        v15 = [v7 scaledSize];
        v17 = (v15 * v16) * 1.5;
        [(PIAutoLoopCacheNode *)self frameDuration];
        v18 = 1.0 / CMTimeGetSeconds(&v26);
        v28[0] = *MEMORY[0x1E6987C60];
        v19 = [MEMORY[0x1E696AD98] numberWithDouble:v18 * (v17 * 8.0) * 0.05];
        v20 = *MEMORY[0x1E6987D80];
        v29[0] = v19;
        v29[1] = &unk_1F471EBC8;
        v21 = *MEMORY[0x1E6987D40];
        v28[1] = v20;
        v28[2] = v21;
        v22 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
        v28[3] = *MEMORY[0x1E6987C50];
        v29[2] = v22;
        v29[3] = MEMORY[0x1E695E110];
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];

        [v5 setObject:v23 forKeyedSubscript:*MEMORY[0x1E6987D30]];
        v24 = v5;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)newRenderRequestWithOriginalRequest:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v25 = NUAssertLogger_8835();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "originalRequest != nil"];
      *buf = 138543362;
      v42 = v26;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v29 = NUAssertLogger_8835();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v30)
      {
        v33 = dispatch_get_specific(*v27);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        v36 = [v34 callStackSymbols];
        v37 = [v36 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v33;
        v43 = 2114;
        v44 = v37;
        _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v32;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = [(NUCacheNode *)self temporaryURLPrefix];
  v9 = [v8 URLByAppendingPathExtension:@"stab"];
  v10 = [v9 URLByAppendingPathExtension:@"mov"];

  v11 = [v8 URLByAppendingPathExtension:@"lexp"];
  v12 = [v11 URLByAppendingPathExtension:@"jpg"];

  v13 = [v8 URLByAppendingPathExtension:@"mask"];
  v14 = [v13 URLByAppendingPathExtension:@"jpg"];

  v15 = [PIAutoLoopExportRequest alloc];
  v16 = [v7 composition];
  v17 = [*MEMORY[0x1E6982E58] identifier];
  v18 = [(PIAutoLoopExportRequest *)v15 initWithComposition:v16 stabilizedVideoURL:v10 longExposureDestinationURL:v12 maskDestinationURL:v14 destinationUTI:v17];

  v19 = [(PIAutoLoopCacheNode *)self outputSettings:a4];
  if (v19)
  {
    [(NUVideoExportRequest *)v18 setOutputSettings:v19];
    v20 = dispatch_queue_create("PIAutoLoopCacheNode", 0);
    [(NURenderRequest *)v18 setResponseQueue:v20];

    v21 = [v7 name];
    if ([v21 length])
    {
      v22 = [v7 name];
      [(NURenderRequest *)v18 setName:v22];
    }

    else
    {
      [(NURenderRequest *)v18 setName:@"PIAutoLoopCacheNode-autoLoopExportRequest"];
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __65__PIAutoLoopCacheNode_newRenderRequestWithOriginalRequest_error___block_invoke;
    v38[3] = &unk_1E82AA7B8;
    v38[4] = self;
    v39 = v12;
    v40 = v14;
    [(NURenderRequest *)v18 setCompletionBlock:v38];
    v23 = v18;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

void __65__PIAutoLoopCacheNode_newRenderRequestWithOriginalRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0;
  v4 = [v3 result:&v16];
  v5 = v16;
  v6 = *(a1 + 32);
  if (!v4)
  {
    v13 = *(a1 + 32);
LABEL_6:
    [v13 resolveWithSourceNode:0 error:v5];
    goto LABEL_8;
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) persistentLongExposureURL];
  v15 = 0;
  LOBYTE(v7) = [v6 installTemporaryURL:v7 intoPersistentURL:v8 error:&v15];
  v9 = v15;

  v10 = *(a1 + 32);
  if ((v7 & 1) == 0)
  {
    [*(a1 + 32) resolveWithSourceNode:0 error:v9];
    v5 = v9;
    goto LABEL_8;
  }

  v11 = *(a1 + 48);
  v12 = [*(a1 + 32) persistentMaskURL];
  v14 = 0;
  LOBYTE(v11) = [v10 installTemporaryURL:v11 intoPersistentURL:v12 error:&v14];
  v5 = v14;

  v13 = *(a1 + 32);
  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

  [v13 resolveSourceWithResponse:v3];
LABEL_8:
}

- (id)persistentMaskURL
{
  v2 = [(NUCacheNode *)self persistentURLPrefix];
  v3 = [v2 URLByAppendingPathExtension:@"mask"];
  v4 = [v3 URLByAppendingPathExtension:@"jpg"];

  return v4;
}

- (id)persistentLongExposureURL
{
  v2 = [(NUCacheNode *)self persistentURLPrefix];
  v3 = [v2 URLByAppendingPathExtension:@"lexp"];
  v4 = [v3 URLByAppendingPathExtension:@"jpg"];

  return v4;
}

- (id)persistentURL
{
  v2 = [(NUCacheNode *)self persistentURLPrefix];
  v3 = [v2 URLByAppendingPathExtension:@"stab"];
  v4 = [v3 URLByAppendingPathExtension:@"mov"];

  return v4;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v8.receiver = self;
  v8.super_class = PIAutoLoopCacheNode;
  v6 = [(NURenderNode *)&v8 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];

  return v6;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)frameDuration
{
  v4 = [(NURenderNode *)self settings];
  dictionaryRepresentation = [v4 objectForKeyedSubscript:@"frameDuration"];

  CMTimeMakeFromDictionary(retstr, dictionaryRepresentation);

  return result;
}

- (PIAutoLoopCacheNode)initWithInput:(id)a3 frameDuration:(id *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v13 = NUAssertLogger_8835();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v14;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &time, 0xCu);
    }

    v15 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_8835();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v26 = dispatch_get_specific(*v15);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        v15 = [v27 callStackSymbols];
        v29 = [v15 componentsJoinedByString:@"\n"];
        LODWORD(time.value) = 138543618;
        *(&time.value + 4) = v26;
        LOWORD(time.flags) = 2114;
        *(&time.flags + 2) = v29;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v19 componentsJoinedByString:@"\n"];
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v15;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time, 0xCu);
    }

    v23 = _NUAssertFailHandler();
    goto LABEL_17;
  }

  if ((a4->var2 & 1) == 0)
  {
    v20 = NUAssertLogger_8835();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "CMTIME_IS_VALID(frameDuration)"];
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &time, 0xCu);
    }

    v15 = MEMORY[0x1E69B38E8];
    v22 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_8835();
    v23 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!v22)
    {
      if (v23)
      {
        v24 = [MEMORY[0x1E696AF00] callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        LODWORD(time.value) = 138543362;
        *(&time.value + 4) = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (v23)
    {
      v30 = dispatch_get_specific(*v15);
      v31 = MEMORY[0x1E696AF00];
      v32 = v30;
      v33 = [v31 callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      LODWORD(time.value) = 138543618;
      *(&time.value + 4) = v30;
      LOWORD(time.flags) = 2114;
      *(&time.flags + 2) = v34;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time, 0x16u);
    }

LABEL_19:

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  time = *a4;
  v9 = CMTimeCopyAsDictionary(&time, 0);
  [v8 setObject:v9 forKeyedSubscript:@"frameDuration"];

  v36 = *MEMORY[0x1E69B38E0];
  v37 = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v35.receiver = self;
  v35.super_class = PIAutoLoopCacheNode;
  v11 = [(NUCacheNode *)&v35 initWithInputs:v10 settings:v8 subsampleFactor:0];

  return v11;
}

+ (id)nodeWithInput:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v72 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!a6)
  {
    v43 = NUAssertLogger_8835();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      LODWORD(v71.start.value) = 138543362;
      *(&v71.start.value + 4) = v44;
      _os_log_error_impl(&dword_1C7694000, v43, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v71, 0xCu);
    }

    v45 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v47 = NUAssertLogger_8835();
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v48)
      {
        v51 = dispatch_get_specific(*v45);
        v52 = MEMORY[0x1E696AF00];
        v53 = v51;
        v54 = [v52 callStackSymbols];
        v55 = [v54 componentsJoinedByString:@"\n"];
        LODWORD(v71.start.value) = 138543618;
        *(&v71.start.value + 4) = v51;
        LOWORD(v71.start.flags) = 2114;
        *(&v71.start.flags + 2) = v55;
        _os_log_error_impl(&dword_1C7694000, v47, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v71, 0x16u);
      }
    }

    else if (v48)
    {
      v49 = [MEMORY[0x1E696AF00] callStackSymbols];
      v50 = [v49 componentsJoinedByString:@"\n"];
      LODWORD(v71.start.value) = 138543362;
      *(&v71.start.value + 4) = v50;
      _os_log_error_impl(&dword_1C7694000, v47, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v71, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v13 = v12;
  v14 = [v11 objectForKeyedSubscript:@"recipe"];
  if (MEMORY[0x1CCA61C40]())
  {
    [MEMORY[0x1E69B3A48] invalidError:@"invalid autoloop recipe" object:v14];
    *a6 = v15 = 0;
    goto LABEL_38;
  }

  v16 = [v13 beginGroupWithName:@"AutoLoop" error:a6];
  if (v16)
  {
    v17 = [v10 videoProperties:a6];
    v18 = v17;
    if (!v17)
    {
      v15 = 0;
LABEL_36:

      goto LABEL_37;
    }

    [v17 orientation];
    v19 = [v10 outputImageGeometry:a6];
    if (!v19)
    {
      v15 = 0;
LABEL_35:

      goto LABEL_36;
    }

    v63 = v18;
    v64 = v19;
    [v19 orientation];
    NUOrientationInverse();
    v20 = NUOrientationConcat();
    v21 = NUOrientationInverse();
    v22 = [objc_alloc(MEMORY[0x1E69B3BC8]) initWithOrientation:v20 input:v10];
    v23 = [PIAutoLoopStabVideoNode nodeWithInput:v22 recipe:v14 error:a6];

    if (!v23)
    {
      v15 = 0;
      v18 = v63;
LABEL_34:
      v19 = v64;
      goto LABEL_35;
    }

    memset(&v70, 0, sizeof(v70));
    PIAutoLoopRecipeGetFrameDuration(v14, &v70);
    v24 = [objc_alloc(MEMORY[0x1E69B3BC8]) initWithOrientation:v21 input:v23];

    v25 = [a1 alloc];
    v71.start = v70;
    v61 = [v25 initWithInput:v24 frameDuration:&v71];
    v26 = [v16 addTag:@"StabilizedVideo" forNode:?];
    v27 = [v11 objectForKeyedSubscript:@"flavor"];
    v28 = PIAutoLoopFlavorFromString(v27);
    v62 = PIAutoLoopRecipeGetFlavorParameters(v14, v28);
    if (!v62)
    {
      [MEMORY[0x1E69B3A48] invalidError:@"Malformed AutoLoop recipe : missing flavor parameters" object:v27];
      *a6 = v15 = 0;
      v34 = v27;
      v18 = v63;
      v33 = v61;
LABEL_33:

      goto LABEL_34;
    }

    v29 = *(MEMORY[0x1E6960C98] + 16);
    *&v71.start.value = *MEMORY[0x1E6960C98];
    *&v71.start.epoch = v29;
    *&v71.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
    v59 = [v11 objectForKeyedSubscript:@"trim"];
    v60 = v27;
    if (v59)
    {
      v57 = v28;
      v58 = v24;
      v30 = [v59 objectForKeyedSubscript:@"start"];
      v56 = [v59 objectForKeyedSubscript:@"end"];
      v31 = [v59 objectForKeyedSubscript:@"startScale"];
      v32 = [v59 objectForKeyedSubscript:@"endScale"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              memset(&v65, 0, 24);
              CMTimeMake(&v65.start, [v30 integerValue], objc_msgSend(v31, "intValue"));
              memset(&v69, 0, sizeof(v69));
              CMTimeMake(&v69, [v56 integerValue], objc_msgSend(v32, "intValue"));
              lhs = v69;
              rhs = v65.start;
              CMTimeSubtract(&duration, &lhs, &rhs);
              lhs = v65.start;
              CMTimeRangeMake(&v71, &lhs, &duration);
            }
          }
        }
      }

      v28 = v57;
      v24 = v58;
    }

    if (v28 > 1)
    {
      if (v28 != 2)
      {
        if ([v13 mediaComponentType] == 1)
        {
          v33 = v61;
          v38 = [[PILongExposureCacheNode alloc] initWithAutoLoopCacheNode:v61 urlKey:@"persistentLongExposureURL"];
          v40 = [v16 addTag:@"LongExposure" forNode:v38];
          v41 = [[PILongExposureCacheNode alloc] initWithAutoLoopCacheNode:v61 urlKey:@"persistentMaskURL"];
          v42 = [v16 addTag:@"LongExposureMotion" forNode:v41];

          v24 = v41;
LABEL_29:
          v18 = v63;

          v24 = [v16 addTag:@"Output" forNode:v38];

          if ([v13 endGroupWithName:@"AutoLoop" error:a6])
          {
            v24 = v24;
            v15 = v24;
          }

          else
          {
            v15 = 0;
          }

          goto LABEL_32;
        }

        v33 = v61;
        v37 = v61;
LABEL_28:
        v38 = v37;
        goto LABEL_29;
      }

      v35 = PIAutoLoopMirrorVideoNode;
    }

    else
    {
      if (!v28)
      {
        [MEMORY[0x1E69B3A48] invalidError:@"Invalid recipe flavor" object:v27];
        *a6 = v15 = 0;
        v18 = v63;
        v33 = v61;
LABEL_32:

        v34 = v60;
        goto LABEL_33;
      }

      v35 = PIAutoLoopVideoNode;
    }

    v36 = [v35 alloc];
    v69 = v70;
    v65 = v71;
    v33 = v61;
    v37 = [v36 initWithInput:v61 frameDuration:&v69 trimRange:&v65 settings:v62];
    goto LABEL_28;
  }

  v15 = 0;
LABEL_37:

LABEL_38:

  return v15;
}

@end