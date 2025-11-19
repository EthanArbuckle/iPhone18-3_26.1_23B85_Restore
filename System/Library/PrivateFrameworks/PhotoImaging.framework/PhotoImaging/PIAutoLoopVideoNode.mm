@interface PIAutoLoopVideoNode
+ (id)loopParamsForTrimRange:(id *)a3 frameDuration:(id *)a4;
+ (int)fadeLengthForTrimRange:(id *)a3 frameDuration:(id *)a4;
+ (int)loopPeriodForTrimRange:(id *)a3 frameDuration:(id *)a4;
+ (int)loopStartForTrimRange:(id *)a3 frameDuration:(id *)a4;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)frameDuration;
- (NURenderNode)input;
- (PIAutoLoopVideoNode)initWithInput:(id)a3 frameDuration:(id *)a4 trimRange:(id *)a5 settings:(id)a6;
- (PIAutoLoopVideoNode)initWithSettings:(id)a3 inputs:(id)a4;
- (id)_evaluateAudioMix:(id *)a3;
- (id)_evaluateVideo:(id *)a3;
- (id)_evaluateVideoComposition:(id *)a3;
- (id)_evaluateVideoProperties:(id *)a3;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation PIAutoLoopVideoNode

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)frameDuration
{
  *&retstr->var0 = *&self[7].var2;
  retstr->var3 = *(&self[8].var0 + 4);
  return self;
}

- (id)_evaluateAudioMix:(id *)a3
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v28 = NUAssertLogger_29069();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(lhs.start.value) = 138543362;
      *(&lhs.start.value + 4) = v29;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &lhs, 0xCu);
    }

    v30 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v32 = NUAssertLogger_29069();
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
        LODWORD(lhs.start.value) = 138543618;
        *(&lhs.start.value + 4) = v36;
        LOWORD(lhs.start.flags) = 2114;
        *(&lhs.start.flags + 2) = v40;
        _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &lhs, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      LODWORD(lhs.start.value) = 138543362;
      *(&lhs.start.value + 4) = v35;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &lhs, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = [(NURenderNode *)self outputVideo:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 tracksWithMediaType:*MEMORY[0x1E69875A0]];
    if ([v6 count] > 1)
    {
      v8 = MEMORY[0x1E6988040];
      v9 = [v6 objectAtIndexedSubscript:0];
      v10 = [v8 audioMixInputParametersWithTrack:v9];

      v11 = MEMORY[0x1E6988040];
      v12 = 1;
      v13 = [v6 objectAtIndexedSubscript:1];
      v14 = [v11 audioMixInputParametersWithTrack:v13];

      *&lhs.start.value = *MEMORY[0x1E6960CC0];
      v41 = *&lhs.start.value;
      lhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
      epoch = lhs.start.epoch;
      [v10 setVolume:&lhs atTime:{COERCE_DOUBLE(__PAIR64__(HIDWORD(lhs.start.value), 1.0))}];
      *&lhs.start.value = v41;
      lhs.start.epoch = epoch;
      [v14 setVolume:&lhs atTime:0.0];
      memset(&v46, 0, sizeof(v46));
      [(PIAutoLoopVideoNode *)self loopDuration];
      [(PIAutoLoopVideoNode *)self fadeDuration];
      CMTimeSubtract(&v46, &lhs.start, &rhs);
      rhs = v46;
      memset(&v44, 0, sizeof(v44));
      [(PIAutoLoopVideoNode *)self fadeDuration];
      CMTimeMultiplyByRatio(&v44, &lhs.start, 1, 20);
      do
      {
        v16 = __sincos_stret(((v12 - 1) / 20.0) * 1.57079633);
        cosval = v16.__cosval;
        v18 = __sincos_stret((v12 / 20.0) * 1.57079633);
        v19 = v18.__cosval;
        sinval = v18.__sinval;
        start = rhs;
        duration = v44;
        CMTimeRangeMake(&lhs, &start, &duration);
        *&v22 = cosval;
        *&v23 = v19;
        [v10 setVolumeRampFromStartVolume:&lhs toEndVolume:v22 timeRange:v23];
        start = rhs;
        duration = v44;
        CMTimeRangeMake(&lhs, &start, &duration);
        v20 = v16.__sinval;
        *&v24 = v20;
        *&v25 = sinval;
        [v14 setVolumeRampFromStartVolume:&lhs toEndVolume:v24 timeRange:v25];
        lhs.start = rhs;
        start = v44;
        CMTimeAdd(&rhs, &lhs.start, &start);
        ++v12;
      }

      while (v12 != 21);
      v7 = [MEMORY[0x1E6988038] audioMix];
      v47[0] = v10;
      v47[1] = v14;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
      [v7 setInputParameters:v26];
    }

    else
    {
      v7 = [MEMORY[0x1E6988038] audioMix];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_evaluateVideoComposition:(id *)a3
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v29 = NUAssertLogger_29069();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(lhs.start.value) = 138543362;
      *(&lhs.start.value + 4) = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &lhs, 0xCu);
    }

    v31 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_29069();
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
        LODWORD(lhs.start.value) = 138543618;
        *(&lhs.start.value + 4) = v37;
        LOWORD(lhs.start.flags) = 2114;
        *(&lhs.start.flags + 2) = v41;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &lhs, 0x16u);
      }
    }

    else if (v34)
    {
      v35 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [v35 componentsJoinedByString:@"\n"];
      LODWORD(lhs.start.value) = 138543362;
      *(&lhs.start.value + 4) = v36;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &lhs, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = [(NURenderNode *)self outputVideo:?];
  v6 = v5;
  if (!v5)
  {
    v25 = 0;
    goto LABEL_12;
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
      v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
      v14 = [v7 objectAtIndexedSubscript:0];
      v15 = objc_alloc_init(MEMORY[0x1E69B3D00]);
      memset(&v50, 0, sizeof(v50));
      [(PIAutoLoopVideoNode *)self loopDuration];
      [(PIAutoLoopVideoNode *)self fadeDuration];
      CMTimeSubtract(&v50, &lhs.start, &rhs);
      *&lhs.start.value = *MEMORY[0x1E6960CC0];
      lhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
      rhs = v50;
      CMTimeRangeMake(&v48, &lhs.start, &rhs);
      lhs = v48;
      [v15 setTimeRange:&lhs];
      v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v14, "trackID")}];
      v52 = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
      [v15 setRequiredSourceTrackIDs:v17];

      v43 = v14;
      v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v14, "trackID")}];
      [v15 setSourceIdentifier:@"primary" forTrackID:v18];

      [v44 addObject:v15];
      if ([v7 count] == 2)
      {
        v42 = [v7 objectAtIndexedSubscript:1];
        v19 = objc_alloc_init(MEMORY[0x1E69B3D00]);
        [(PIAutoLoopVideoNode *)self fadeDuration];
        rhs = v50;
        CMTimeRangeMake(&v47, &rhs, &lhs.start);
        lhs = v47;
        [v19 setTimeRange:&lhs];
        v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v14, "trackID")}];
        v51[0] = v20;
        v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v42, "trackID")}];
        v51[1] = v21;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
        [v19 setRequiredSourceTrackIDs:v22];

        v23 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v43, "trackID")}];
        [v19 setSourceIdentifier:@"primary" forTrackID:v23];

        v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v42, "trackID")}];
        [v19 setSourceIdentifier:@"secondary" forTrackID:v24];

        [v44 addObject:v19];
      }

      v25 = objc_alloc_init(MEMORY[0x1E6988060]);
      [(PIAutoLoopVideoNode *)self frameDuration];
      *&lhs.start.value = v45;
      lhs.start.epoch = v46;
      [v25 setFrameDuration:&lhs];
      [v25 setInstructions:v44];

      goto LABEL_11;
    }

    v26 = MEMORY[0x1E69B3A48];
    v27 = [v11 instructions];
    *a3 = [v26 unsupportedError:@"Unsupported video configuration" object:v27];
  }

  v25 = 0;
LABEL_11:

LABEL_12:

  return v25;
}

- (id)_evaluateVideo:(id *)a3
{
  v65 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v31 = NUAssertLogger_29069();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(v64.start.value) = 138543362;
      *(&v64.start.value + 4) = v32;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v64, 0xCu);
    }

    v33 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v35 = NUAssertLogger_29069();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v36)
      {
        v39 = dispatch_get_specific(*v33);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        v42 = [v40 callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        LODWORD(v64.start.value) = 138543618;
        *(&v64.start.value + 4) = v39;
        LOWORD(v64.start.flags) = 2114;
        *(&v64.start.flags + 2) = v43;
        _os_log_error_impl(&dword_1C7694000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v64, 0x16u);
      }
    }

    else if (v36)
    {
      v37 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      LODWORD(v64.start.value) = 138543362;
      *(&v64.start.value + 4) = v38;
      _os_log_error_impl(&dword_1C7694000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v64, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = [(PIAutoLoopVideoNode *)self input];
  v6 = [v5 outputVideo:a3];

  if (!v6)
  {
    v20 = 0;
    goto LABEL_36;
  }

  v7 = objc_alloc_init(MEMORY[0x1E6988048]);
  if (v7)
  {
    v8 = [MEMORY[0x1E69B3D40] firstEnabledVideoTrackInAsset:v6 error:a3];
    if (!v8)
    {
      v20 = 0;
LABEL_34:

      goto LABEL_35;
    }

    v49 = *MEMORY[0x1E69875A0];
    v9 = [v6 tracksWithMediaType:?];
    v10 = [v9 firstObject];

    v45 = *MEMORY[0x1E6987608];
    v11 = [v7 addMutableTrackWithMediaType:? preferredTrackID:?];
    memset(&v64, 0, sizeof(v64));
    [(PIAutoLoopVideoNode *)self startTime];
    [(PIAutoLoopVideoNode *)self loopDuration];
    CMTimeRangeMake(&v64, &start.start, &duration.start);
    memset(&start, 0, sizeof(start));
    v12 = MEMORY[0x1E69B3D40];
    [v8 timeRange];
    time1 = v64;
    [v12 conformRange:&time1 inRange:&duration];
    v60 = 0;
    duration = start;
    v46 = *MEMORY[0x1E6960CC0];
    *&time1.start.value = *MEMORY[0x1E6960CC0];
    v13 = *(MEMORY[0x1E6960CC0] + 16);
    time1.start.epoch = v13;
    v50 = v11;
    LOBYTE(v12) = [v11 insertTimeRange:&duration ofTrack:v8 atTime:&time1 error:&v60];
    v14 = v60;
    if ((v12 & 1) == 0)
    {
      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to update video track #1" object:self underlyingError:v14];
      *a3 = v20 = 0;
      v18 = v10;
LABEL_32:
      v29 = v50;
      goto LABEL_33;
    }

    if (!v10)
    {
      v18 = 0;
LABEL_19:
      if ([(PIAutoLoopVideoNode *)self fadeLength]< 1)
      {
        v29 = v50;
LABEL_28:
        v20 = v7;
LABEL_33:

        goto LABEL_34;
      }

      v22 = [v7 addMutableTrackWithMediaType:v45 preferredTrackID:1];
      [(PIAutoLoopVideoNode *)self fadeStartTime];
      [(PIAutoLoopVideoNode *)self fadeDuration];
      CMTimeRangeMake(&duration, &time1.start, &time2.start);
      v64 = duration;
      v23 = MEMORY[0x1E69B3D40];
      [v8 timeRange];
      time2 = v64;
      [v23 conformRange:&time2 inRange:&time1];
      start = duration;
      memset(&v54, 0, sizeof(v54));
      [(PIAutoLoopVideoNode *)self loopDuration];
      [(PIAutoLoopVideoNode *)self fadeDuration];
      CMTimeSubtract(&v54, &duration.start, &time1.start);
      v52 = v14;
      duration = start;
      time1.start = v54;
      v48 = v22;
      LOBYTE(v22) = [v22 insertTimeRange:&duration ofTrack:v8 atTime:&time1 error:&v52];
      v24 = v52;

      if (v22)
      {
        if (!v18)
        {
          v14 = v24;
          goto LABEL_27;
        }

        [v7 addMutableTrackWithMediaType:v49 preferredTrackID:3];
        v26 = v25 = v18;
        memset(&duration, 0, sizeof(duration));
        v27 = MEMORY[0x1E69B3D40];
        [v25 timeRange];
        time2 = v64;
        [v27 conformRange:&time2 inRange:&time1];
        v51 = v24;
        time1 = duration;
        time2.start = v54;
        v28 = v25;
        LOBYTE(v25) = [v26 insertTimeRange:&time1 ofTrack:v25 atTime:&time2 error:&v51];
        v14 = v51;

        if (v25)
        {

          v18 = v28;
LABEL_27:
          v29 = v50;

          goto LABEL_28;
        }

        *a3 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to update audio track #2" object:self underlyingError:v14];

        v18 = v28;
      }

      else
      {
        *a3 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to update video track #2" object:self underlyingError:v24];
        v14 = v24;
      }

      goto LABEL_31;
    }

    v44 = v8;
    v15 = [v7 addMutableTrackWithMediaType:v49 preferredTrackID:2];
    memset(&duration, 0, sizeof(duration));
    v16 = MEMORY[0x1E69B3D40];
    [v10 timeRange];
    time2 = v64;
    [v16 conformRange:&time2 inRange:&time1];
    v58 = v14;
    time1 = duration;
    *&time2.start.value = v46;
    time2.start.epoch = v13;
    v47 = v15;
    LOBYTE(v16) = [v15 insertTimeRange:&time1 ofTrack:v10 atTime:&time2 error:&v58];
    v17 = v58;

    v18 = v10;
    if (v16)
    {
      time1.start = duration.duration;
      time2.start = start.duration;
      if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
      {
        v14 = v17;
        v19 = v47;
        v8 = v44;
LABEL_18:

        goto LABEL_19;
      }

      memset(&v57, 0, sizeof(v57));
      time1.start = start.duration;
      time2.start = duration.duration;
      CMTimeSubtract(&v57, &time1.start, &time2.start);
      memset(&v56, 0, sizeof(v56));
      [(PIAutoLoopVideoNode *)self startTime];
      time2.start = v57;
      CMTimeSubtract(&v56, &time1.start, &time2.start);
      memset(&time1, 0, sizeof(time1));
      v21 = MEMORY[0x1E69B3D40];
      v54 = v56;
      v55 = v57;
      CMTimeRangeMake(&time2, &v54, &v55);
      [v10 timeRange];
      [v21 conformRange:&time2 inRange:&v54];
      v53 = v17;
      time2 = time1;
      v54 = duration.duration;
      v19 = v47;
      LOBYTE(v21) = [v47 insertTimeRange:&time2 ofTrack:v18 atTime:&v54 error:&v53];
      v14 = v53;

      v8 = v44;
      if (v21)
      {
        goto LABEL_18;
      }

      *a3 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to update audio track #1" object:self underlyingError:v14];
    }

    else
    {
      *a3 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to update audio track #1" object:self underlyingError:v17];
      v14 = v17;
      v19 = v47;
      v8 = v44;
    }

LABEL_31:
    v20 = 0;
    goto LABEL_32;
  }

  [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"[[AVMutableComposition alloc] init] failed." object:self];
  *a3 = v20 = 0;
LABEL_35:

LABEL_36:

  return v20;
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v73[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    v39 = NUAssertLogger_29069();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(lhs.value) = 138543362;
      *(&lhs.value + 4) = v40;
      _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &lhs, 0xCu);
    }

    v41 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v43 = NUAssertLogger_29069();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v44)
      {
        v47 = dispatch_get_specific(*v41);
        v48 = MEMORY[0x1E696AF00];
        v49 = v47;
        v50 = [v48 callStackSymbols];
        v51 = [v50 componentsJoinedByString:@"\n"];
        LODWORD(lhs.value) = 138543618;
        *(&lhs.value + 4) = v47;
        LOWORD(lhs.flags) = 2114;
        *(&lhs.flags + 2) = v51;
        _os_log_error_impl(&dword_1C7694000, v43, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &lhs, 0x16u);
      }
    }

    else if (v44)
    {
      v45 = [MEMORY[0x1E696AF00] callStackSymbols];
      v46 = [v45 componentsJoinedByString:@"\n"];
      LODWORD(lhs.value) = 138543362;
      *(&lhs.value + 4) = v46;
      _os_log_error_impl(&dword_1C7694000, v43, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &lhs, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = v9;
  v11 = [v9 evaluationMode];
  if ((v11 & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    v64.receiver = self;
    v64.super_class = PIAutoLoopVideoNode;
    v17 = [(NURenderNode *)&v64 nodeByReplayingAgainstCache:v8 pipelineState:v10 error:a5];
    goto LABEL_31;
  }

  v12 = v11;
  v13 = [v10 copy];
  if (v12 != 3)
  {
LABEL_6:
    [(PIAutoLoopVideoNode *)self startTime];
    if (v10)
    {
      [v10 time];
    }

    else
    {
      memset(&rhs, 0, sizeof(rhs));
    }

    CMTimeAdd(&v63, &lhs, &rhs);
    lhs = v63;
    [v13 setTime:&lhs];
    v18 = [(PIAutoLoopVideoNode *)self input];
    v19 = [v18 nodeByReplayingAgainstCache:v8 pipelineState:v13 error:a5];

    if (!v19)
    {
      v17 = 0;
LABEL_29:

      goto LABEL_30;
    }

    memset(&lhs, 0, sizeof(lhs));
    if (v10)
    {
      [v10 time];
      memset(&rhs, 0, sizeof(rhs));
      [(PIAutoLoopVideoNode *)self frameDuration];
      [v10 time];
      v20 = v59;
      timescale = lhs.timescale;
    }

    else
    {
      memset(&rhs, 0, sizeof(rhs));
      [(PIAutoLoopVideoNode *)self frameDuration];
      timescale = 0;
      v20 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
    }

    v22 = v20 * rhs.timescale / (rhs.value * timescale);
    v23 = v22 % [(PIAutoLoopVideoNode *)self loopPeriod];
    LODWORD(v22) = [(PIAutoLoopVideoNode *)self fadeLength]+ v23;
    if (v22 < [(PIAutoLoopVideoNode *)self loopPeriod])
    {
      v17 = v19;
      goto LABEL_29;
    }

    v24 = [(PIAutoLoopVideoNode *)self loopPeriod];
    v53 = [(PIAutoLoopVideoNode *)self fadeLength];
    v25 = [v10 copy];
    if (v12 == 3)
    {
      v52 = v24;
      v26 = [v10 videoFrames];
      v27 = [v26 objectForKeyedSubscript:@"secondary"];

      if (!v27)
      {
        [MEMORY[0x1E69B3A48] missingError:@"Missing secondary video frame" object:v10];
        *a5 = v17 = 0;
LABEL_28:

        goto LABEL_29;
      }

      v69 = @"video";
      v70 = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      [v25 setVideoFrames:v28];

      v24 = v52;
    }

    [(PIAutoLoopVideoNode *)self startTime];
    [(PIAutoLoopVideoNode *)self loopDuration];
    if (v10)
    {
      [v10 time];
    }

    else
    {
      memset(&v54, 0, sizeof(v54));
    }

    CMTimeSubtract(&v56, &v55, &v54);
    CMTimeSubtract(&v58, &v57, &v56);
    v57 = v58;
    [v25 setTime:&v57];
    v29 = [(PIAutoLoopVideoNode *)self input];
    v30 = [v29 nodeByReplayingAgainstCache:v8 pipelineState:v25 error:a5];

    if (v30)
    {
      v31 = objc_alloc(MEMORY[0x1E69B3A70]);
      v67 = *MEMORY[0x1E695FB30];
      *&v32 = 1.0 - ((v24 - v23) / v53);
      v33 = [MEMORY[0x1E696AD98] numberWithFloat:v32];
      v68 = v33;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v35 = *MEMORY[0x1E695FB28];
      v65[0] = *MEMORY[0x1E695FAB0];
      v65[1] = v35;
      v66[0] = v19;
      v66[1] = v30;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
      v37 = [v31 initWithFilterName:@"CIDissolveTransition" settings:v34 inputs:v36];

      v17 = [MEMORY[0x1E69B3C28] nodeFromCache:v37 cache:v8];
      [v17 setEvaluatedForMode:{objc_msgSend(v10, "evaluationMode")}];
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_28;
  }

  v14 = [v10 videoFrames];
  v15 = [v14 objectForKeyedSubscript:@"primary"];

  if (v15)
  {
    v72 = @"video";
    v73[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];
    [v13 setVideoFrames:v16];

    goto LABEL_6;
  }

  [MEMORY[0x1E69B3A48] missingError:@"Missing primary video frame" object:v10];
  *a5 = v17 = 0;
LABEL_30:

LABEL_31:

  return v17;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v10.receiver = self;
  v10.super_class = PIAutoLoopVideoNode;
  v7 = [(NURenderNode *)&v10 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];
  v8 = *(&self->_fadeLength + 1);
  *(v7 + 196) = *&self->_frameDuration.flags;
  *(v7 + 180) = v8;
  *(v7 + 168) = self->_loopStart;
  *(v7 + 172) = self->_loopPeriod;
  *(v7 + 176) = self->_fadeLength;

  return v7;
}

- (id)_evaluateVideoProperties:(id *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v6 = NUAssertLogger_29069();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_29069();
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
        *&buf[4] = v14;
        *&buf[12] = 2114;
        *&buf[14] = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v19.receiver = self;
  v19.super_class = PIAutoLoopVideoNode;
  v3 = [(NURenderNode *)&v19 _evaluateVideoProperties:?];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69B3D68]) initWithProperties:v3];
    *buf = *MEMORY[0x1E6960C70];
    *&buf[16] = *(MEMORY[0x1E6960C70] + 16);
    [v4 setLivePhotoKeyFrameTime:buf];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NURenderNode)input
{
  v2 = [(NURenderNode *)self inputs];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  return v3;
}

- (PIAutoLoopVideoNode)initWithInput:(id)a3 frameDuration:(id *)a4 trimRange:(id *)a5 settings:(id)a6
{
  v63 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  if (!v10)
  {
    v25 = NUAssertLogger_29069();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *time = 138543362;
      *&time[4] = v26;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", time, 0xCu);
    }

    v27 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v29 = NUAssertLogger_29069();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v30)
      {
        v43 = dispatch_get_specific(*v27);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        v27 = [v44 callStackSymbols];
        v46 = [v27 componentsJoinedByString:@"\n"];
        *time = 138543618;
        *&time[4] = v43;
        *&time[12] = 2114;
        *&time[14] = v46;
        _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", time, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v31 componentsJoinedByString:@"\n"];
      *time = 138543362;
      *&time[4] = v27;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", time, 0xCu);
    }

    v35 = _NUAssertFailHandler();
    goto LABEL_28;
  }

  if ((a4->var2 & 1) == 0)
  {
    v32 = NUAssertLogger_29069();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "CMTIME_IS_VALID(frameDuration)"];
      *time = 138543362;
      *&time[4] = v33;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", time, 0xCu);
    }

    v27 = MEMORY[0x1E69B38E8];
    v34 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v29 = NUAssertLogger_29069();
    v35 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (!v34)
    {
      if (v35)
      {
        v36 = [MEMORY[0x1E696AF00] callStackSymbols];
        v27 = [v36 componentsJoinedByString:@"\n"];
        *time = 138543362;
        *&time[4] = v27;
        _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", time, 0xCu);
      }

LABEL_30:

      v40 = _NUAssertFailHandler();
      goto LABEL_31;
    }

LABEL_28:
    if (v35)
    {
      v47 = dispatch_get_specific(*v27);
      v48 = MEMORY[0x1E696AF00];
      v49 = v47;
      v27 = [v48 callStackSymbols];
      v50 = [v27 componentsJoinedByString:@"\n"];
      *time = 138543618;
      *&time[4] = v47;
      *&time[12] = 2114;
      *&time[14] = v50;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", time, 0x16u);
    }

    goto LABEL_30;
  }

  v12 = v11;
  if (!v11)
  {
    v37 = NUAssertLogger_29069();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "loopParams != nil"];
      *time = 138543362;
      *&time[4] = v38;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", time, 0xCu);
    }

    v27 = MEMORY[0x1E69B38E8];
    v39 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v29 = NUAssertLogger_29069();
    v40 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (!v39)
    {
      if (v40)
      {
        v41 = [MEMORY[0x1E696AF00] callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *time = 138543362;
        *&time[4] = v42;
        _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", time, 0xCu);
      }

      goto LABEL_33;
    }

LABEL_31:
    if (v40)
    {
      v51 = dispatch_get_specific(*v27);
      v52 = MEMORY[0x1E696AF00];
      v53 = v51;
      v54 = [v52 callStackSymbols];
      v55 = [v54 componentsJoinedByString:@"\n"];
      *time = 138543618;
      *&time[4] = v51;
      *&time[12] = 2114;
      *&time[14] = v55;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", time, 0x16u);
    }

LABEL_33:

    _NUAssertFailHandler();
  }

  if ((a5->var0.var2 & 1) != 0 && (a5->var1.var2 & 1) != 0 && !a5->var1.var3 && (a5->var1.var0 & 0x8000000000000000) == 0)
  {
    v13 = objc_opt_class();
    v14 = *&a5->var0.var3;
    *time = *&a5->var0.var0;
    *&time[16] = v14;
    v62 = *&a5->var1.var1;
    v57 = *&a4->var0;
    var3 = a4->var3;
    v15 = [v13 loopParamsForTrimRange:time frameDuration:&v57];

    v12 = v15;
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v16 setObject:v12 forKeyedSubscript:@"loopParams"];
  *time = *&a4->var0;
  *&time[16] = a4->var3;
  v17 = CMTimeCopyAsDictionary(time, 0);
  [v16 setObject:v17 forKeyedSubscript:@"frameDuration"];

  v59 = *MEMORY[0x1E695FAB0];
  v60 = v10;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  v56.receiver = self;
  v56.super_class = PIAutoLoopVideoNode;
  v19 = [(NURenderNode *)&v56 initWithSettings:v16 inputs:v18];

  v20 = a4->var3;
  *(v19 + 180) = *&a4->var0;
  *(v19 + 196) = v20;
  v21 = [v12 objectForKeyedSubscript:*MEMORY[0x1E698E200]];
  *(v19 + 42) = [v21 intValue];

  v22 = [v12 objectForKeyedSubscript:*MEMORY[0x1E698E1F8]];
  *(v19 + 43) = [v22 intValue];

  v23 = [v12 objectForKeyedSubscript:*MEMORY[0x1E698E1F0]];
  *(v19 + 44) = [v23 intValue];

  return v19;
}

- (PIAutoLoopVideoNode)initWithSettings:(id)a3 inputs:(id)a4
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_29086);
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_29086);
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_29086);
  }
}

+ (int)fadeLengthForTrimRange:(id *)a3 frameDuration:(id *)a4
{
  var1 = a3->var1;
  v5 = fmin(CMTimeGetSeconds(&var1) * 0.5, 1.0);
  var1 = *a4;
  return vcvtmd_s64_f64(v5 / CMTimeGetSeconds(&var1));
}

+ (int)loopPeriodForTrimRange:(id *)a3 frameDuration:(id *)a4
{
  *time = a3->var1;
  Seconds = CMTimeGetSeconds(time);
  *time = *a4;
  v8 = vcvtpd_s64_f64(Seconds / CMTimeGetSeconds(time));
  v9 = *&a3->var0.var3;
  *time = *&a3->var0.var0;
  *&time[16] = v9;
  v13 = *&a3->var1.var1;
  v11 = *a4;
  return v8 - [a1 fadeLengthForTrimRange:time frameDuration:&v11];
}

+ (int)loopStartForTrimRange:(id *)a3 frameDuration:(id *)a4
{
  var0 = a3->var0;
  Seconds = CMTimeGetSeconds(&var0);
  var0 = *a4;
  return vcvtmd_s64_f64(Seconds / CMTimeGetSeconds(&var0));
}

+ (id)loopParamsForTrimRange:(id *)a3 frameDuration:(id *)a4
{
  v25[3] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = *&a3->var0.var3;
  v21 = *&a3->var0.var0;
  v22 = v7;
  v23 = *&a3->var1.var1;
  v20 = *a4;
  v8 = [v6 loopStartForTrimRange:&v21 frameDuration:&v20];
  v9 = objc_opt_class();
  v10 = *&a3->var0.var3;
  v21 = *&a3->var0.var0;
  v22 = v10;
  v23 = *&a3->var1.var1;
  v20 = *a4;
  v11 = [v9 loopPeriodForTrimRange:&v21 frameDuration:&v20];
  v12 = objc_opt_class();
  v13 = *&a3->var0.var3;
  v21 = *&a3->var0.var0;
  v22 = v13;
  v23 = *&a3->var1.var1;
  v20 = *a4;
  v14 = [v12 fadeLengthForTrimRange:&v21 frameDuration:&v20];
  v24[0] = *MEMORY[0x1E698E200];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:v8];
  v25[0] = v15;
  v24[1] = *MEMORY[0x1E698E1F8];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:v11];
  v25[1] = v16;
  v24[2] = *MEMORY[0x1E698E1F0];
  v17 = [MEMORY[0x1E696AD98] numberWithInt:v14];
  v25[2] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

  return v18;
}

@end