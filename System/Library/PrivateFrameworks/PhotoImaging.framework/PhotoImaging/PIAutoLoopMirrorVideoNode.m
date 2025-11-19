@interface PIAutoLoopMirrorVideoNode
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_conformTime:(SEL)a3;
- (id)_evaluateAudioMix:(id *)a3;
- (id)_evaluateVideo:(id *)a3;
- (id)_evaluateVideoComposition:(id *)a3;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation PIAutoLoopMirrorVideoNode

- (id)_evaluateAudioMix:(id *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v4 = MEMORY[0x1E69B3D70];
    v5 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = v5;
      v8 = [v6 stringWithFormat:@"Mirror does not require an AVAudioMix"];
      v21 = 138543362;
      v22 = v8;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v21, 0xCu);

      v9 = *v3;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v9 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_29086);
        }

LABEL_11:
        v15 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v17 = MEMORY[0x1E696AF00];
          v18 = specific;
          v19 = v15;
          v3 = [v17 callStackSymbols];
          v20 = [v3 componentsJoinedByString:@"\n"];
          v21 = 138543618;
          v22 = specific;
          v23 = 2114;
          v24 = v20;
          _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v21, 0x16u);
        }

        goto LABEL_13;
      }

      if (v9 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_29086);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v10 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v11 = MEMORY[0x1E696AF00];
      v12 = v10;
      v13 = [v11 callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      v21 = 138543362;
      v22 = v14;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v21, 0xCu);
    }

LABEL_13:
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_29086);
  }
}

- (id)_evaluateVideoComposition:(id *)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = [(NURenderNode *)self outputVideo:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 tracksWithMediaType:*MEMORY[0x1E6987608]];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = objc_alloc_init(MEMORY[0x1E69B3D00]);
    if (v7)
    {
      [v7 timeRange];
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
    }

    v17 = v20;
    v18 = v21;
    v19 = v22;
    [v8 setTimeRange:&v17];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v7, "trackID")}];
    v24[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [v8 setRequiredSourceTrackIDs:v11];

    v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v7, "trackID")}];
    [v8 setSourceIdentifier:@"video" forTrackID:v12];

    v9 = objc_alloc_init(MEMORY[0x1E6988060]);
    [(PIAutoLoopVideoNode *)self frameDuration];
    v17 = v15;
    *&v18 = v16;
    [v9 setFrameDuration:&v17];
    v23 = v8;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [v9 setInstructions:v13];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_evaluateVideo:(id *)a3
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v22 = NUAssertLogger_29069();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(v47.start.value) = 138543362;
      *(&v47.start.value + 4) = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v47, 0xCu);
    }

    v24 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_29069();
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
        LODWORD(v47.start.value) = 138543618;
        *(&v47.start.value + 4) = v30;
        LOWORD(v47.start.flags) = 2114;
        *(&v47.start.flags + 2) = v34;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v47, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      LODWORD(v47.start.value) = 138543362;
      *(&v47.start.value + 4) = v29;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v47, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = [(NURenderNode *)self inputs];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  v7 = [v6 outputVideo:a3];
  if (v7)
  {
    v8 = [MEMORY[0x1E69B3D40] firstEnabledVideoTrackInAsset:v7 error:a3];
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E6988048]);
      v10 = v9;
      if (v9)
      {
        v11 = [v9 addMutableTrackWithMediaType:*MEMORY[0x1E6987608] preferredTrackID:0];
        memset(&v47, 0, sizeof(v47));
        [(PIAutoLoopVideoNode *)self startTime];
        [(PIAutoLoopVideoNode *)self loopDuration];
        CMTimeRangeMake(&v47, &start.start, &duration);
        v45 = 0;
        start = v47;
        duration = **&MEMORY[0x1E6960CC0];
        v12 = [v11 insertTimeRange:&start ofTrack:v8 atTime:&duration error:&v45];
        v13 = v45;
        if (v12)
        {
          v35 = v7;
          v36 = v10;
          v37 = v6;
          v14 = [(PIAutoLoopVideoNode *)self loopPeriod];
          if (v14 < 3)
          {
LABEL_10:
            v10 = v36;
            v20 = v36;
            v6 = v37;
          }

          else
          {
            v15 = v14;
            v16 = v14 - 1;
            while (1)
            {
              v17 = v13;
              --v16;
              memset(&duration, 0, sizeof(duration));
              [(PIAutoLoopVideoNode *)self startTime];
              [(PIAutoLoopVideoNode *)self frameDuration];
              CMTimeMultiply(&rhs, &time, v16);
              CMTimeAdd(&duration, &start.start, &rhs);
              memset(&rhs, 0, sizeof(rhs));
              [(PIAutoLoopVideoNode *)self frameDuration];
              CMTimeMultiply(&rhs, &start.start, v15);
              memset(&time, 0, sizeof(time));
              [(PIAutoLoopVideoNode *)self frameDuration];
              CMTimeMake(&time, 1, timescale);
              v40 = duration;
              v39 = time;
              CMTimeRangeMake(&start, &v40, &v39);
              v47 = start;
              v38 = v13;
              v40 = rhs;
              v18 = v8;
              v19 = [v11 insertTimeRange:&start ofTrack:v8 atTime:&v40 error:&v38];
              v13 = v38;

              if (!v19)
              {
                break;
              }

              v40 = rhs;
              v39 = time;
              CMTimeRangeMake(&start, &v40, &v39);
              [(PIAutoLoopVideoNode *)self frameDuration];
              [v11 scaleTimeRange:&start toDuration:&v40];
              ++v15;
              v8 = v18;
              if (v16 < 2)
              {
                goto LABEL_10;
              }
            }

            [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to update video track" object:self underlyingError:v13];
            *a3 = v20 = 0;
            v8 = v18;
            v10 = v36;
            v6 = v37;
          }

          v7 = v35;
        }

        else
        {
          [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to update video track #1" object:self underlyingError:v13];
          *a3 = v20 = 0;
        }
      }

      else
      {
        [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"[[AVMutableComposition alloc] init] failed." object:self];
        *a3 = v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    v15 = NUAssertLogger_29069();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_29069();
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
  }

  v10 = v9;
  if (([v9 evaluationMode] & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    memset(buf, 0, sizeof(buf));
    if (v10)
    {
      [v10 time];
    }

    else
    {
      v28 = 0uLL;
      v29 = 0;
    }

    [(PIAutoLoopMirrorVideoNode *)self _conformTime:&v28];
    v12 = [v10 copy];
    v28 = *buf;
    v29 = *&buf[16];
    [v12 setTime:&v28];
    v13 = [(PIAutoLoopVideoNode *)self input];
    v11 = [v13 nodeByReplayingAgainstCache:v8 pipelineState:v12 error:a5];
  }

  else
  {
    v30.receiver = self;
    v30.super_class = PIAutoLoopMirrorVideoNode;
    v11 = [(PIAutoLoopVideoNode *)&v30 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:a5];
  }

  return v11;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_conformTime:(SEL)a3
{
  *retstr = *a4;
  [(PIAutoLoopVideoNode *)self frameDuration];
  time = *retstr;
  CMTimeConvertScale(retstr, &time, v19, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  memset(&time, 0, sizeof(time));
  [(PIAutoLoopVideoNode *)self loopDuration];
  [(PIAutoLoopVideoNode *)self frameDuration];
  CMTimeConvertScale(&time, &v17, newTimescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  value = time.value;
  [(PIAutoLoopVideoNode *)self frameDuration];
  v7 = 2 * (value - v15);
  var0 = retstr->var0;
  if (retstr->var0 < 0)
  {
    var0 = var0 % v7 + v7;
  }

  v9 = var0 % v7;
  [(PIAutoLoopVideoNode *)self frameDuration];
  CMTimeMake(&v17, v9, timescale);
  *retstr = v17;
  memset(&v17, 0, sizeof(v17));
  [(PIAutoLoopVideoNode *)self frameDuration];
  lhs = time;
  CMTimeSubtract(&v17, &lhs, &rhs);
  rhs = *retstr;
  lhs = v17;
  if ((CMTimeCompare(&rhs, &lhs) & 0x80000000) == 0)
  {
    rhs = *retstr;
    v11 = v17;
    CMTimeSubtract(&lhs, &rhs, &v11);
    v11 = v17;
    CMTimeSubtract(&rhs, &v11, &lhs);
    *retstr = rhs;
  }

  [(PIAutoLoopVideoNode *)self startTime];
  v11 = *retstr;
  result = CMTimeAdd(&rhs, &lhs, &v11);
  *retstr = rhs;
  return result;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v8.receiver = self;
  v8.super_class = PIAutoLoopMirrorVideoNode;
  v6 = [(PIAutoLoopVideoNode *)&v8 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];

  return v6;
}

@end