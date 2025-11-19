@interface PIAutoLoopStabVideoNode
+ (id)nodeWithInput:(id)a3 recipe:(id)a4 error:(id *)a5;
- (PIAutoLoopStabVideoNode)initWithInput:(id)a3 settings:(id)a4 bakedRecipe:(id)a5;
- (PIAutoLoopStabVideoNode)initWithSettings:(id)a3 inputs:(id)a4;
- (id)_evaluateImageGeometry:(id *)a3;
- (id)_evaluateVideo:(id *)a3;
- (id)_evaluateVideoComposition:(id *)a3;
- (id)_evaluateVideoProperties:(id *)a3;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation PIAutoLoopStabVideoNode

- (id)_evaluateVideoComposition:(id *)a3
{
  v74 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v46 = NUAssertLogger_15642();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(lhs.start.value) = 138543362;
      *(&lhs.start.value + 4) = v47;
      _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &lhs, 0xCu);
    }

    v48 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v50 = NUAssertLogger_15642();
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v51)
      {
        v54 = dispatch_get_specific(*v48);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        v57 = [v55 callStackSymbols];
        v58 = [v57 componentsJoinedByString:@"\n"];
        LODWORD(lhs.start.value) = 138543618;
        *(&lhs.start.value + 4) = v54;
        LOWORD(lhs.start.flags) = 2114;
        *(&lhs.start.flags + 2) = v58;
        _os_log_error_impl(&dword_1C7694000, v50, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &lhs, 0x16u);
      }
    }

    else if (v51)
    {
      v52 = [MEMORY[0x1E696AF00] callStackSymbols];
      v53 = [v52 componentsJoinedByString:@"\n"];
      LODWORD(lhs.start.value) = 138543362;
      *(&lhs.start.value + 4) = v53;
      _os_log_error_impl(&dword_1C7694000, v50, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &lhs, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = [(NURenderNode *)self outputVideo:?];
  v6 = v5;
  if (!v5)
  {
    v38 = 0;
    goto LABEL_13;
  }

  v7 = [v5 tracksWithMediaType:*MEMORY[0x1E6987608]];
  v8 = [(NURenderNode *)self inputs];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  v10 = [v9 outputVideoComposition:a3];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 instructions];
    v13 = [v12 count];

    if (v13 == 1)
    {
      v14 = [(PIAutoLoopStabVideoNode *)self bakedRecipe];
      v15 = [v14 objectForKeyedSubscript:@"loopRecipe_loopParams"];
      v16 = v15;
      if (v15)
      {
        memset(&v69, 0, sizeof(v69));
        v17 = [v15 objectForKeyedSubscript:@"loopParams_duration"];
        CMTimeMakeFromDictionary(&v69, v17);

        memset(&v68, 0, sizeof(v68));
        v18 = [v16 objectForKeyedSubscript:@"loopParams_fadeLen"];
        CMTimeMakeFromDictionary(&v68, v18);

        memset(&v67, 0, sizeof(v67));
        lhs.start = v69;
        rhs = v68;
        CMTimeSubtract(&v67, &lhs.start, &rhs);
        v19 = [v7 objectAtIndexedSubscript:0];
        v20 = [v7 objectAtIndexedSubscript:1];
        v21 = objc_alloc_init(MEMORY[0x1E69B3D00]);
        *&lhs.start.value = *MEMORY[0x1E6960CC0];
        lhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
        rhs = v67;
        CMTimeRangeMake(&v65, &lhs.start, &rhs);
        lhs = v65;
        v61 = v7;
        v60 = v9;
        v22 = v21;
        [v21 setTimeRange:&lhs];
        v62 = v16;
        v23 = v19;
        v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v19, "trackID")}];
        v72[0] = v24;
        v63 = v14;
        v25 = v20;
        v26 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v20, "trackID")}];
        v72[1] = v26;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
        [v22 setRequiredSourceTrackIDs:v27];

        v28 = v23;
        v29 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "trackID")}];
        v7 = v61;
        [v22 setSourceIdentifier:@"primary" forTrackID:v29];

        v30 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v20, "trackID")}];
        [v22 setSourceIdentifier:@"secondary" forTrackID:v30];

        v31 = objc_alloc_init(MEMORY[0x1E69B3D00]);
        lhs.start = v67;
        rhs = v68;
        CMTimeRangeMake(&v64, &lhs.start, &rhs);
        lhs = v64;
        [v31 setTimeRange:&lhs];
        v32 = v28;
        v33 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v28, "trackID")}];
        v71[0] = v33;
        v59 = v25;
        v34 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v25, "trackID")}];
        v71[1] = v34;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
        [v31 setRequiredSourceTrackIDs:v35];

        v36 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v32, "trackID")}];
        [v31 setSourceIdentifier:@"primary" forTrackID:v36];

        v37 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v25, "trackID")}];
        [v31 setSourceIdentifier:@"secondary" forTrackID:v37];

        v38 = objc_alloc_init(MEMORY[0x1E6988060]);
        v39 = [v63 objectForKeyedSubscript:@"loopRecipe_frameInstructions"];
        v40 = [v39 firstObject];
        memset(&lhs, 0, 24);
        v41 = [v40 objectForKeyedSubscript:@"loopFrameData_presDur"];
        CMTimeMakeFromDictionary(&lhs.start, v41);

        rhs = lhs.start;
        [v38 setFrameDuration:&rhs];
        v70[0] = v22;
        v70[1] = v31;
        v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
        [v38 setInstructions:v42];

        v16 = v62;
        v14 = v63;

        v9 = v60;
      }

      else
      {
        [MEMORY[0x1E69B3A48] invalidError:@"Malformed loop recipe object:{missing loop params", v14}];
        *a3 = v38 = 0;
      }

      goto LABEL_12;
    }

    v43 = MEMORY[0x1E69B3A48];
    v44 = [v11 instructions];
    *a3 = [v43 unsupportedError:@"Unsupported video configuration" object:v44];
  }

  v38 = 0;
LABEL_12:

LABEL_13:

  return v38;
}

- (id)_evaluateVideo:(id *)a3
{
  v85 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v45 = NUAssertLogger_15642();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(v83.start.value) = 138543362;
      *(&v83.start.value + 4) = v46;
      _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v83, 0xCu);
    }

    v47 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v49 = NUAssertLogger_15642();
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v50)
      {
        v53 = dispatch_get_specific(*v47);
        v54 = MEMORY[0x1E696AF00];
        v55 = v53;
        v56 = [v54 callStackSymbols];
        v57 = [v56 componentsJoinedByString:@"\n"];
        LODWORD(v83.start.value) = 138543618;
        *(&v83.start.value + 4) = v53;
        LOWORD(v83.start.flags) = 2114;
        *(&v83.start.flags + 2) = v57;
        _os_log_error_impl(&dword_1C7694000, v49, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v83, 0x16u);
      }
    }

    else if (v50)
    {
      v51 = [MEMORY[0x1E696AF00] callStackSymbols];
      v52 = [v51 componentsJoinedByString:@"\n"];
      LODWORD(v83.start.value) = 138543362;
      *(&v83.start.value + 4) = v52;
      _os_log_error_impl(&dword_1C7694000, v49, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v83, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = [(NURenderNode *)self inputs];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  v7 = [v6 outputVideo:a3];
  if (!v7)
  {
    v42 = 0;
    goto LABEL_39;
  }

  v8 = objc_alloc_init(MEMORY[0x1E6988048]);
  if (!v8)
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"[[AVMutableComposition alloc] init] failed." object:self];
    *a3 = v42 = 0;
    goto LABEL_38;
  }

  v9 = [(PIAutoLoopStabVideoNode *)self bakedRecipe];
  v10 = [MEMORY[0x1E69B3D40] firstEnabledVideoTrackInAsset:v7 error:a3];
  v64 = v9;
  if (!v10)
  {
    v42 = 0;
    goto LABEL_37;
  }

  v58 = self;
  v61 = a3;
  v63 = v7;
  v11 = *MEMORY[0x1E6987608];
  v12 = [v8 addMutableTrackWithMediaType:*MEMORY[0x1E6987608] preferredTrackID:0];
  v13 = [v8 addMutableTrackWithMediaType:v11 preferredTrackID:1];
  [v9 objectForKeyedSubscript:@"loopRecipe_frameInstructions"];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v14 = v82 = 0u;
  v66 = v14;
  v68 = [v14 countByEnumeratingWithState:&v79 objects:v84 count:16];
  v62 = v13;
  if (!v68)
  {
    goto LABEL_19;
  }

  v67 = *v80;
  v59 = v8;
  v60 = v6;
  v65 = v12;
  while (2)
  {
    for (i = 0; i != v68; ++i)
    {
      if (*v80 != v67)
      {
        objc_enumerationMutation(v14);
      }

      v16 = *(*(&v79 + 1) + 8 * i);
      memset(&rhs, 0, 24);
      v17 = [v16 objectForKeyedSubscript:@"loopFrameData_presTime"];
      CMTimeMakeFromDictionary(&rhs.start, v17);

      memset(&v71, 0, sizeof(v71));
      v18 = [v16 objectForKeyedSubscript:@"loopFrameData_presDur"];
      CMTimeMakeFromDictionary(&v71, v18);

      memset(&v70, 0, 24);
      CMTimeMake(&v70.start, 1, v71.timescale);
      v19 = [v16 objectForKeyedSubscript:@"loopFrameData_frameTransforms"];
      if ([v19 count] != 1 && objc_msgSend(v19, "count") != 2)
      {
        *v61 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Unexpected number of frame transforms" object:v19];

        v43 = v14;
        v42 = 0;
LABEL_31:
        v30 = v43;
        v8 = v59;
        v6 = v60;
        v7 = v63;
        goto LABEL_36;
      }

      v20 = [v19 objectAtIndexedSubscript:0];
      memset(&v78, 0, sizeof(v78));
      v21 = [v20 objectForKeyedSubscript:@"frameTransform_rawTime"];
      CMTimeMakeFromDictionary(&v78, v21);

      start = v78;
      duration = v70.start;
      CMTimeRangeMake(&v83, &start, &duration);
      v75 = 0;
      start = rhs.start;
      LOBYTE(v21) = [v12 insertTimeRange:&v83 ofTrack:v10 atTime:&start error:&v75];
      v22 = v75;
      if ((v21 & 1) == 0)
      {
        *v61 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to update video track" object:v58 underlyingError:v22];
LABEL_30:

        v42 = 0;
        v43 = v66;
        goto LABEL_31;
      }

      start = rhs.start;
      duration = v70.start;
      CMTimeRangeMake(&v83, &start, &duration);
      start = v71;
      [v12 scaleTimeRange:&v83 toDuration:&start];
      if ([v19 count] == 2)
      {
        v23 = [v19 objectAtIndexedSubscript:1];
        memset(&start, 0, sizeof(start));
        v24 = [v23 objectForKeyedSubscript:@"frameTransform_rawTime"];
        CMTimeMakeFromDictionary(&start, v24);

        duration = start;
        v74 = v70.start;
        CMTimeRangeMake(&v83, &duration, &v74);
        v73 = v22;
        duration = rhs.start;
        v25 = v10;
        v26 = [v13 insertTimeRange:&v83 ofTrack:v10 atTime:&duration error:&v73];
        v27 = v73;

        if (v26)
        {
          duration = rhs.start;
          v74 = v70.start;
          CMTimeRangeMake(&v83, &duration, &v74);
          duration = v71;
          [v13 scaleTimeRange:&v83 toDuration:&duration];

          v10 = v25;
          v12 = v65;
          v14 = v66;
          goto LABEL_17;
        }

        *v61 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to update video track" object:v58 underlyingError:v27];

        v22 = v27;
        v10 = v25;
        v12 = v65;
        goto LABEL_30;
      }

      v27 = v22;
LABEL_17:
    }

    v8 = v59;
    v6 = v60;
    v68 = [v14 countByEnumeratingWithState:&v79 objects:v84 count:16];
    if (v68)
    {
      continue;
    }

    break;
  }

LABEL_19:

  v28 = *MEMORY[0x1E69875A0];
  v7 = v63;
  v29 = [v63 tracksWithMediaType:*MEMORY[0x1E69875A0]];
  v30 = [v29 firstObject];

  if (v30)
  {
    v31 = v10;
    v32 = v8;
    v33 = [v8 addMutableTrackWithMediaType:v28 preferredTrackID:2];
    v34 = [v64 objectForKeyedSubscript:@"loopRecipe_loopParams"];
    if (v34)
    {
      v35 = v34;
      memset(&v78, 0, sizeof(v78));
      v36 = [v34 objectForKeyedSubscript:@"loopParams_duration"];
      CMTimeMakeFromDictionary(&v78, v36);

      memset(&start, 0, sizeof(start));
      v37 = [v35 objectForKeyedSubscript:@"loopParams_fadeLen"];
      CMTimeMakeFromDictionary(&start, v37);

      memset(&duration, 0, sizeof(duration));
      v38 = [v35 objectForKeyedSubscript:@"loopParams_startTime"];
      CMTimeMakeFromDictionary(&duration, v38);

      memset(&v74, 0, sizeof(v74));
      v83.start = duration;
      rhs.start = start;
      CMTimeAdd(&v74, &v83.start, &rhs.start);
      memset(&v83, 0, sizeof(v83));
      rhs.start = v74;
      v71 = v78;
      CMTimeRangeMake(&v83, &rhs.start, &v71);
      v39 = MEMORY[0x1E69B3D40];
      [v30 timeRange];
      v70 = v83;
      [v39 conformRange:&v70 inRange:&v71];
      v83 = rhs;
      v69 = 0;
      v71 = **&MEMORY[0x1E6960CC0];
      v40 = [v33 insertTimeRange:&rhs ofTrack:v30 atTime:&v71 error:&v69];
      v41 = v69;
      if (v40)
      {
        [v33 setNaturalTimeScale:{objc_msgSend(v30, "naturalTimeScale")}];

        v8 = v32;
        v10 = v31;
        goto LABEL_23;
      }

      *v61 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to update audio track" object:v58 underlyingError:v41];
    }

    else
    {
      *v61 = [MEMORY[0x1E69B3A48] invalidError:@"Malformed loop recipe object:{missing loop params", v64}];
    }

    v42 = 0;
    v8 = v32;
    v10 = v31;
  }

  else
  {
LABEL_23:
    v42 = v8;
  }

  v43 = v66;
LABEL_36:

LABEL_37:
LABEL_38:

LABEL_39:

  return v42;
}

- (id)_evaluateVideoProperties:(id *)a3
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v22 = NUAssertLogger_15642();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(time1.value) = 138543362;
      *(&time1.value + 4) = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &time1, 0xCu);
    }

    v24 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_15642();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v30 = dispatch_get_specific(*v24);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        v33 = [v31 callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
        LODWORD(time1.value) = 138543618;
        *(&time1.value + 4) = v30;
        LOWORD(time1.flags) = 2114;
        *(&time1.flags + 2) = v34;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time1, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      LODWORD(time1.value) = 138543362;
      *(&time1.value + 4) = v29;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time1, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = [(NURenderNode *)self inputs];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  v7 = [v6 videoProperties:a3];
  v8 = v7;
  if (v7)
  {
    memset(&v42, 0, sizeof(v42));
    [v7 livePhotoKeyFrameTime];
    v9 = [(PIAutoLoopStabVideoNode *)self bakedRecipe];
    v10 = [v9 objectForKeyedSubscript:@"loopRecipe_loopParams"];
    v11 = v10;
    if (v10)
    {
      memset(&v41, 0, sizeof(v41));
      v12 = [v10 objectForKeyedSubscript:@"loopParams_startTime"];
      CMTimeMakeFromDictionary(&v41, v12);

      memset(&v40, 0, sizeof(v40));
      v13 = [v11 objectForKeyedSubscript:@"loopParams_duration"];
      CMTimeMakeFromDictionary(&v40, v13);

      memset(&v39, 0, sizeof(v39));
      PIAutoLoopRecipeGetFrameDuration(v9, &v39);
      memset(&v38, 0, sizeof(v38));
      lhs = v42;
      rhs = v41;
      CMTimeSubtract(&time1, &lhs, &rhs);
      rhs = v40;
      v35 = v39;
      CMTimeSubtract(&lhs, &rhs, &v35);
      CMTimeMinimum(&v38, &time1, &lhs);
      v14 = [objc_alloc(MEMORY[0x1E69B3D68]) initWithProperties:v8];
      time1 = v38;
      [v14 setLivePhotoKeyFrameTime:&time1];
      v15 = [(NURenderNode *)self outputImageGeometry:a3];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 scaledSize];
        v19 = v18;
        time1.value = 0;
        *&time1.timescale = 0;
        time1.epoch = v17;
        v44 = v18;
        [v14 setCleanAperture:&time1];
        [v14 setSize:{v17, v19}];
        v20 = v14;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      [MEMORY[0x1E69B3A48] invalidError:@"Malformed loop recipe object:{missing loop params", v9}];
      *a3 = v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)_evaluateImageGeometry:(id *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v18 = NUAssertLogger_15642();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_15642();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(*v20);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = v30;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = [(NURenderNode *)self inputs];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  v31 = 0;
  v7 = [v6 outputImageGeometry:&v31];
  v8 = v31;
  if (v7)
  {
    v9 = [(PIAutoLoopStabVideoNode *)self bakedRecipe];
    v10 = [v7 orientation];
    v11 = [v7 renderScale];
    v13 = v12;
    v14 = PIAutoLoopRecipeComputeOutputGeometry(v9);
    v15 = objc_alloc(MEMORY[0x1E69B3B18]);
    if (v14)
    {
      [v14 extent];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v16 = [v15 initWithExtent:buf renderScale:v11 orientation:v13 spaceMap:v10 roundingPolicy:{0, 4}];
  }

  else
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to get input geometry" object:self underlyingError:v8];
    *a3 = v16 = 0;
  }

  return v16;
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v100 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    v63 = NUAssertLogger_15642();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(buf.value) = 138543362;
      *(&buf.value + 4) = v64;
      _os_log_error_impl(&dword_1C7694000, v63, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    v65 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v67 = NUAssertLogger_15642();
    v68 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v68)
      {
        v71 = dispatch_get_specific(*v65);
        v72 = MEMORY[0x1E696AF00];
        v73 = v71;
        v74 = [v72 callStackSymbols];
        v75 = [v74 componentsJoinedByString:@"\n"];
        LODWORD(buf.value) = 138543618;
        *(&buf.value + 4) = v71;
        LOWORD(buf.flags) = 2114;
        *(&buf.flags + 2) = v75;
        _os_log_error_impl(&dword_1C7694000, v67, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v68)
    {
      v69 = [MEMORY[0x1E696AF00] callStackSymbols];
      v70 = [v69 componentsJoinedByString:@"\n"];
      LODWORD(buf.value) = 138543362;
      *(&buf.value + 4) = v70;
      _os_log_error_impl(&dword_1C7694000, v67, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = v9;
  v11 = [v9 evaluationMode];
  if ((v11 & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    v87.receiver = self;
    v87.super_class = PIAutoLoopStabVideoNode;
    v27 = [(NURenderNode *)&v87 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:a5];
    goto LABEL_37;
  }

  v12 = v11;
  v13 = [(NURenderNode *)self outputImageGeometry:a5];
  if (v13)
  {
    v82 = v13;
    v14 = [(NURenderNode *)self inputs];
    v80 = [v14 objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

    v15 = [(PIAutoLoopStabVideoNode *)self bakedRecipe];
    memset(&buf, 0, sizeof(buf));
    if (!v10 || ([v10 time], (buf.flags & 1) == 0))
    {
      buf = **&MEMORY[0x1E6960CC0];
    }

    v98 = buf;
    v16 = PIAutoLoopRecipeGetInstructionAtTime(v15, &v98);
    v17 = [v16 objectForKeyedSubscript:@"loopFrameData_frameTransforms"];
    v78 = v16;
    v18 = [v16 mutableCopy];
    v79 = v15;
    v19 = [v15 objectForKeyedSubscript:@"loopRecipe_stabCropRect"];
    [v18 setObject:v19 forKeyedSubscript:@"loopRecipe_stabCropRect"];

    v20 = [(NURenderNode *)self settings];
    v21 = [v20 objectForKeyedSubscript:@"cleanAperture"];
    v22 = v17;
    [v18 setObject:v21 forKeyedSubscript:@"cleanAperture"];

    [v82 renderScale];
    v23 = NUScaleToValue();
    [v18 setObject:v23 forKeyedSubscript:@"videoScale"];

    v81 = v17;
    if ([v17 count] == 1)
    {
      v24 = [v10 copy];
      v25 = v80;
      if (v12 == 3)
      {
        v26 = [v10 videoFrames];
        v27 = [v26 objectForKeyedSubscript:@"primary"];

        if (!v27)
        {
          *a5 = [MEMORY[0x1E69B3A48] missingError:@"Missing primary video frame" object:v10];
LABEL_27:

          v33 = 0;
LABEL_31:
          v34 = v78;
          goto LABEL_35;
        }

        v96 = @"video";
        v97 = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
        [v24 setVideoFrames:v28];
      }

      v29 = [v17 objectAtIndexedSubscript:0];
      v30 = [v29 objectForKeyedSubscript:@"frameTransform_rawTime"];
      CMTimeMakeFromDictionary(&v86, v30);
      v98 = v86;
      [v24 setTime:&v98];

      v27 = [v80 nodeByReplayingAgainstCache:v8 pipelineState:v24 error:a5];
      if (v27)
      {
        v31 = [PIAutoLoopFrameNode alloc];
        v94 = @"primary";
        v95 = v27;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        v33 = [(NURenderNode *)v31 initWithSettings:v18 inputs:v32];

        v34 = v78;
LABEL_34:
        v27 = [MEMORY[0x1E69B3C28] nodeFromCache:v33 cache:v8];
        [v27 setEvaluatedForMode:{objc_msgSend(v10, "evaluationMode")}];
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    if ([v17 count] != 2)
    {
      v34 = v78;
      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Unexpected number of frame transforms" object:v78];
      v33 = 0;
      *a5 = v27 = 0;
      v25 = v80;
LABEL_35:

      v13 = v82;
      goto LABEL_36;
    }

    v35 = [v10 copy];
    v25 = v80;
    if (v12 == 3)
    {
      v36 = [v10 videoFrames];
      v33 = [v36 objectForKeyedSubscript:@"primary"];

      if (!v33)
      {
        *a5 = [MEMORY[0x1E69B3A48] missingError:@"Missing primary video frame" object:v10];

LABEL_30:
        v27 = 0;
        goto LABEL_31;
      }

      v92 = @"video";
      v93 = v33;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
      [v35 setVideoFrames:v37];

      v22 = v81;
    }

    v38 = [v22 objectAtIndexedSubscript:1];
    v39 = [v38 objectForKeyedSubscript:@"frameTransform_rawTime"];
    CMTimeMakeFromDictionary(&v85, v39);
    v98 = v85;
    [v35 setTime:&v98];

    v77 = [v80 nodeByReplayingAgainstCache:v8 pipelineState:v35 error:a5];
    if (v77)
    {
      v40 = [v10 copy];
      v41 = v40;
      if (v12 == 3)
      {
        v76 = v40;
        v42 = [v10 videoFrames];
        v43 = [v42 objectForKeyedSubscript:@"secondary"];

        if (!v43)
        {
          v52 = NULogger_15744();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v98.value) = 138412290;
            *(&v98.value + 4) = v10;
            _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "Missing secondary video frame %@", &v98, 0xCu);
          }

          v84 = 0;
          v53 = [(PIAutoLoopStabVideoNode *)self _evaluateImageGeometry:&v84];
          v54 = MEMORY[0x1E69B39B8];
          v55 = v84;
          v56 = [v54 alloc];
          v57 = MEMORY[0x1E695F658];
          v58 = [MEMORY[0x1E695F610] redColor];
          v59 = [v57 imageWithColor:v58];
          [v53 scaledExtent];
          v60 = [v59 imageByCroppingToRect:?];
          v61 = [v53 orientation];
          v27 = [v56 initWithImage:v60 settings:MEMORY[0x1E695E0F8] orientation:v61];

          v62 = [v10 evaluationMode];
          [v27 setEvaluatedForMode:v62];

          v33 = 0;
          v25 = v80;
          goto LABEL_31;
        }

        v90 = @"video";
        v91 = v43;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        v41 = v76;
        [v76 setVideoFrames:v44];
      }

      v45 = [v81 objectAtIndexedSubscript:0];
      v46 = [v45 objectForKeyedSubscript:@"frameTransform_rawTime"];
      CMTimeMakeFromDictionary(&v83, v46);
      v98 = v83;
      [v41 setTime:&v98];

      v27 = [v80 nodeByReplayingAgainstCache:v8 pipelineState:v41 error:a5];
      v47 = v41;
      if (v27)
      {
        v48 = [PIAutoLoopFrameNode alloc];
        v88[0] = @"primary";
        v88[1] = @"secondary";
        v49 = v77;
        v89[0] = v77;
        v89[1] = v27;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:2];
        v33 = [(NURenderNode *)v48 initWithSettings:v18 inputs:v50];
      }

      else
      {
        v33 = 0;
        v49 = v77;
      }

      v34 = v78;

      if (!v27)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v33 = 0;
    goto LABEL_30;
  }

  v27 = 0;
LABEL_36:

LABEL_37:

  return v27;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v10.receiver = self;
  v10.super_class = PIAutoLoopStabVideoNode;
  v7 = [(NURenderNode *)&v10 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong((v7 + 168), self->_bakedRecipe);
  }

  return v8;
}

- (PIAutoLoopStabVideoNode)initWithInput:(id)a3 settings:(id)a4 bakedRecipe:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v17 = *MEMORY[0x1E695FAB0];
  v18[0] = a3;
  v9 = MEMORY[0x1E695DF20];
  v10 = a4;
  v11 = a3;
  v12 = [v9 dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v16.receiver = self;
  v16.super_class = PIAutoLoopStabVideoNode;
  v13 = [(NURenderNode *)&v16 initWithSettings:v10 inputs:v12];

  bakedRecipe = v13->_bakedRecipe;
  v13->_bakedRecipe = v8;

  return v13;
}

- (PIAutoLoopStabVideoNode)initWithSettings:(id)a3 inputs:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15688);
        }

LABEL_11:
        v23 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v25 = MEMORY[0x1E696AF00];
          v26 = specific;
          v27 = v23;
          v28 = [v25 callStackSymbols];
          v29 = [v28 componentsJoinedByString:@"\n"];
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15688);
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
      v21 = [v19 callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15688);
  }
}

+ (id)nodeWithInput:(id)a3 recipe:(id)a4 error:(id *)a5
{
  v27[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E69B3A38]);
  [v7 nu_updateDigest:v8];
  v23 = [v8 stringValue];
  v9 = [v6 videoProperties:a5];
  v10 = v9;
  if (v9)
  {
    [v9 cleanAperture];
    v27[0] = v23;
    v26[0] = @"recipeDigest";
    v26[1] = @"cleanAperture";
    v24[0] = @"x";
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    v25[0] = v11;
    v24[1] = @"y";
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    v25[1] = v12;
    v24[2] = @"w";
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    v25[2] = v13;
    v24[3] = @"h";
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    v25[3] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
    v27[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

    v17 = PIAutoLoopRecipeForFlavor(v7, 3);
    v18 = [v17 copy];

    v19 = [[a1 alloc] initWithInput:v6 settings:v16 bakedRecipe:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end