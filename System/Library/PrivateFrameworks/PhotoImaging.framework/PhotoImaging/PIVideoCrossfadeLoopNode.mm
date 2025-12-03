@interface PIVideoCrossfadeLoopNode
- ($2FE3C3292E52C4A5B67D27538456EAD9)loopTimeRange;
- (PIVideoCrossfadeLoopNode)initWithInput:(id)input timeRange:(id *)range crossfadeDuration:(id *)duration startTime:(id *)time;
- (PIVideoCrossfadeLoopNode)initWithSettings:(id)settings inputs:(id)inputs;
- (id)_evaluateAudioMix:(id *)mix;
- (id)_evaluateVideo:(id *)video;
- (id)_evaluateVideoComposition:(id *)composition;
- (id)input;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation PIVideoCrossfadeLoopNode

- ($2FE3C3292E52C4A5B67D27538456EAD9)loopTimeRange
{
  v3 = *&self[4].var1.var3;
  *&retstr->var0.var0 = *&self[4].var1.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[5].var0.var1;
  return self;
}

- (id)_evaluateAudioMix:(id *)mix
{
  v45 = *MEMORY[0x1E69E9840];
  if (!mix)
  {
    v24 = NUAssertLogger_3150();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(rhs.start.value) = 138543362;
      *(&rhs.start.value + 4) = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &rhs, 0xCu);
    }

    v26 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v28 = NUAssertLogger_3150();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v32 = dispatch_get_specific(*v26);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        callStackSymbols = [v33 callStackSymbols];
        v36 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(rhs.start.value) = 138543618;
        *(&rhs.start.value + 4) = v32;
        LOWORD(rhs.start.flags) = 2114;
        *(&rhs.start.flags + 2) = v36;
        _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &rhs, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(rhs.start.value) = 138543362;
      *(&rhs.start.value + 4) = v31;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &rhs, 0xCu);
    }

    _NUAssertFailHandler();
  }

  input = [(PIVideoCrossfadeLoopNode *)self input];
  v6 = [input outputVideo:mix];

  if (v6)
  {
    v7 = [MEMORY[0x1E69B3D40] firstEnabledVideoTrackInAsset:v6 error:mix];
    v8 = v7;
    if (v7)
    {
      [v7 timeRange];
      v42 = v41;
      v9 = [(NURenderNode *)self outputVideo:mix];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 tracksWithMediaType:*MEMORY[0x1E69875A0]];
        if ([v11 count] > 1)
        {
          v13 = MEMORY[0x1E6988040];
          v14 = [v11 objectAtIndexedSubscript:0];
          v15 = [v13 audioMixInputParametersWithTrack:v14];

          v16 = MEMORY[0x1E6988040];
          v17 = [v11 objectAtIndexedSubscript:1];
          v18 = [v16 audioMixInputParametersWithTrack:v17];

          *&rhs.start.value = *MEMORY[0x1E6960CC0];
          v37 = *&rhs.start.value;
          rhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
          epoch = rhs.start.epoch;
          [v15 setVolume:&rhs atTime:{COERCE_DOUBLE(__PAIR64__(HIDWORD(rhs.start.value), 1.0))}];
          *&rhs.start.value = v37;
          rhs.start.epoch = epoch;
          [v18 setVolume:&rhs atTime:0.0];
          memset(&v40, 0, sizeof(v40));
          [(PIVideoCrossfadeLoopNode *)self crossfadeDuration];
          CMTimeMultiply(&rhs.start, &time, 2);
          time = v42;
          CMTimeSubtract(&v40, &time, &rhs.start);
          [(PIVideoCrossfadeLoopNode *)self crossfadeDuration];
          start = v40;
          CMTimeRangeMake(&rhs, &start, &time);
          LODWORD(v20) = 1.0;
          [v15 setVolumeRampFromStartVolume:&rhs toEndVolume:v20 timeRange:0.0];
          [(PIVideoCrossfadeLoopNode *)self crossfadeDuration];
          start = v40;
          CMTimeRangeMake(&rhs, &start, &time);
          LODWORD(v21) = 1.0;
          [v18 setVolumeRampFromStartVolume:&rhs toEndVolume:0.0 timeRange:v21];
          audioMix = [MEMORY[0x1E6988038] audioMix];
          v43[0] = v15;
          v43[1] = v18;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
          [audioMix setInputParameters:v22];
        }

        else
        {
          audioMix = [MEMORY[0x1E6988038] audioMix];
        }
      }

      else
      {
        audioMix = 0;
      }
    }

    else
    {
      audioMix = 0;
    }
  }

  else
  {
    audioMix = 0;
  }

  return audioMix;
}

- (id)_evaluateVideoComposition:(id *)composition
{
  v74 = *MEMORY[0x1E69E9840];
  if (!composition)
  {
    v37 = NUAssertLogger_3150();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(buf.start.value) = 138543362;
      *(&buf.start.value + 4) = v38;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    v39 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v41 = NUAssertLogger_3150();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v42)
      {
        v45 = dispatch_get_specific(*v39);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        callStackSymbols = [v46 callStackSymbols];
        v49 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(buf.start.value) = 138543618;
        *(&buf.start.value + 4) = v45;
        LOWORD(buf.start.flags) = 2114;
        *(&buf.start.flags + 2) = v49;
        _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v42)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(buf.start.value) = 138543362;
      *(&buf.start.value + 4) = v44;
      _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  input = [(PIVideoCrossfadeLoopNode *)self input];
  v6 = [input outputVideo:composition];

  if (v6)
  {
    v7 = [MEMORY[0x1E69B3D40] firstEnabledVideoTrackInAsset:v6 error:composition];
    if (v7)
    {
      v8 = [(NURenderNode *)self outputVideo:composition];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 tracksWithMediaType:*MEMORY[0x1E6987608]];
        inputs = [(NURenderNode *)self inputs];
        v12 = [inputs objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

        v13 = [v12 outputVideoComposition:composition];
        v14 = v13;
        if (v13)
        {
          v54 = v12;
          instructions = [v13 instructions];
          v16 = [instructions count];

          if (v16 == 1)
          {
            v50 = v14;
            v53 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
            v68 = 0uLL;
            v69 = 0;
            [(PIVideoCrossfadeLoopNode *)self startTime];
            v66 = 0uLL;
            v67 = 0;
            [(PIVideoCrossfadeLoopNode *)self crossfadeDuration];
            memset(&buf, 0, sizeof(buf));
            [(PIVideoCrossfadeLoopNode *)self loopTimeRange];
            memset(&v65, 0, sizeof(v65));
            range = buf;
            CMTimeRangeGetEnd(&start.start, &range);
            *&lhs.start.value = v68;
            lhs.start.epoch = v69;
            *&rhs.start.value = v66;
            rhs.start.epoch = v67;
            CMTimeAdd(&range.start, &lhs.start, &rhs.start);
            CMTimeSubtract(&v65, &start.start, &range.start);
            memset(&range, 0, sizeof(range));
            *&start.start.value = *MEMORY[0x1E6960CC0];
            start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
            lhs.start = v65;
            CMTimeRangeFromTimeToTime(&range, &start.start, &lhs.start);
            memset(&start, 0, sizeof(start));
            lhs.start = v65;
            *&rhs.start.value = v66;
            rhs.start.epoch = v67;
            CMTimeRangeMake(&start, &lhs.start, &rhs.start);
            memset(&v62, 0, sizeof(v62));
            lhs.start = buf.duration;
            *&rhs.start.value = v66;
            rhs.start.epoch = v67;
            CMTimeSubtract(&v62, &lhs.start, &rhs.start);
            memset(&lhs, 0, sizeof(lhs));
            rhs = start;
            CMTimeRangeGetEnd(&v60, &rhs);
            rhs = start;
            CMTimeRangeGetEnd(&v58, &rhs);
            v57 = v62;
            CMTimeSubtract(&rhs.start, &v57, &v58);
            CMTimeRangeMake(&lhs, &v60, &rhs.start);
            v17 = [v10 objectAtIndexedSubscript:0];
            v18 = objc_alloc_init(MEMORY[0x1E69B3D00]);
            rhs = range;
            [v18 setTimeRange:&rhs];
            v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "trackID")}];
            v72 = v19;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
            [v18 setRequiredSourceTrackIDs:v20];

            v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "trackID")}];
            [v18 setSourceIdentifier:@"primary" forTrackID:v21];

            v51 = v18;
            [v53 addObject:v18];
            v52 = v10;
            if ([v10 count] == 2)
            {
              v22 = [v10 objectAtIndexedSubscript:1];
              v23 = objc_alloc_init(MEMORY[0x1E69B3D00]);
              rhs = start;
              [v23 setTimeRange:&rhs];
              v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "trackID")}];
              v71[0] = v24;
              v25 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v22, "trackID")}];
              v71[1] = v25;
              v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
              [v23 setRequiredSourceTrackIDs:v26];

              v27 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "trackID")}];
              [v23 setSourceIdentifier:@"primary" forTrackID:v27];

              v28 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v22, "trackID")}];
              [v23 setSourceIdentifier:@"secondary" forTrackID:v28];

              [v53 addObject:v23];
            }

            v29 = objc_alloc_init(MEMORY[0x1E69B3D00]);
            rhs = lhs;
            [v29 setTimeRange:&rhs];
            v30 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "trackID")}];
            v70 = v30;
            v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
            [v29 setRequiredSourceTrackIDs:v31];

            v32 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "trackID")}];
            [v29 setSourceIdentifier:@"primary" forTrackID:v32];

            [v53 addObject:v29];
            v33 = objc_alloc_init(MEMORY[0x1E6988060]);
            v14 = v50;
            [v50 frameDuration];
            *&rhs.start.value = v55;
            rhs.start.epoch = v56;
            [v33 setFrameDuration:&rhs];
            [v50 renderSize];
            [v33 setRenderSize:?];
            [v33 setInstructions:v53];
            [v33 setSourceTrackIDForFrameTiming:{objc_msgSend(v17, "trackID")}];

            v10 = v52;
          }

          else
          {
            v34 = MEMORY[0x1E69B3A48];
            instructions2 = [v14 instructions];
            *composition = [v34 unsupportedError:@"Unsupported video configuration" object:instructions2];

            v33 = 0;
          }

          v12 = v54;
        }

        else
        {
          v33 = 0;
        }
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)_evaluateVideo:(id *)video
{
  v124 = *MEMORY[0x1E69E9840];
  if (!video)
  {
    v75 = NUAssertLogger_3150();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(buf.start.value) = 138543362;
      *(&buf.start.value + 4) = v76;
      _os_log_error_impl(&dword_1C7694000, v75, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    v77 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v79 = NUAssertLogger_3150();
    v80 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v80)
      {
        v83 = dispatch_get_specific(*v77);
        v84 = MEMORY[0x1E696AF00];
        v85 = v83;
        callStackSymbols = [v84 callStackSymbols];
        v87 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(buf.start.value) = 138543618;
        *(&buf.start.value + 4) = v83;
        LOWORD(buf.start.flags) = 2114;
        *(&buf.start.flags + 2) = v87;
        _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
      }
    }

    else if (v80)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v82 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(buf.start.value) = 138543362;
      *(&buf.start.value + 4) = v82;
      _os_log_error_impl(&dword_1C7694000, v79, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  input = [(PIVideoCrossfadeLoopNode *)self input];
  v6 = [input outputVideo:video];

  if (!v6)
  {
    v13 = 0;
    goto LABEL_50;
  }

  v7 = objc_alloc_init(MEMORY[0x1E6988048]);
  if (v7)
  {
    v8 = [MEMORY[0x1E69B3D40] firstEnabledVideoTrackInAsset:v6 error:video];
    if (!v8)
    {
      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"No input video track found" object:self underlyingError:*video];
      *video = v13 = 0;
LABEL_48:

      goto LABEL_49;
    }

    v9 = *MEMORY[0x1E69875A0];
    v10 = [v6 tracksWithMediaType:*MEMORY[0x1E69875A0]];
    firstObject = [v10 firstObject];

    v12 = *MEMORY[0x1E6987608];
    [v7 addMutableTrackWithMediaType:*MEMORY[0x1E6987608] preferredTrackID:0];
    v105 = v104 = firstObject;
    if (firstObject)
    {
      v100 = [v7 addMutableTrackWithMediaType:v9 preferredTrackID:2];
    }

    else
    {
      v100 = 0;
    }

    v121 = 0uLL;
    v122 = 0;
    [(PIVideoCrossfadeLoopNode *)self startTime];
    v119 = 0uLL;
    v120 = 0;
    [(PIVideoCrossfadeLoopNode *)self crossfadeDuration];
    memset(&buf, 0, sizeof(buf));
    [(PIVideoCrossfadeLoopNode *)self loopTimeRange];
    memset(&v118, 0, sizeof(v118));
    range = buf;
    CMTimeRangeGetEnd(&end.start, &range);
    *&range.start.value = v121;
    range.start.epoch = v122;
    CMTimeRangeFromTimeToTime(&v118, &range.start, &end.start);
    memset(&range, 0, sizeof(range));
    *&lhs.start.value = *&buf.start.value;
    lhs.start.epoch = buf.start.epoch;
    *&rhs.start.value = v119;
    rhs.start.epoch = v120;
    CMTimeAdd(&end.start, &lhs.start, &rhs.start);
    *&lhs.start.value = v121;
    lhs.start.epoch = v122;
    CMTimeRangeFromTimeToTime(&range, &end.start, &lhs.start);
    memset(&end, 0, sizeof(end));
    *&lhs.start.value = *&buf.start.value;
    lhs.start.epoch = buf.start.epoch;
    *&rhs.start.value = v119;
    rhs.start.epoch = v120;
    CMTimeRangeMake(&end, &lhs.start, &rhs.start);
    lhs.start = v118.duration;
    v101 = *MEMORY[0x1E6960CC0];
    *&rhs.start.value = *MEMORY[0x1E6960CC0];
    v14 = *(MEMORY[0x1E6960CC0] + 16);
    rhs.start.epoch = v14;
    if (CMTimeCompare(&lhs.start, &rhs.start) < 1)
    {
      v19 = 0;
    }

    else
    {
      v115 = 0;
      lhs = v118;
      *&rhs.start.value = v101;
      rhs.start.epoch = v14;
      v15 = [v105 insertTimeRange:&lhs ofTrack:v8 atTime:&rhs error:&v115];
      v16 = v115;
      v17 = v16;
      if ((v15 & 1) == 0)
      {
        v89 = MEMORY[0x1E696AEC0];
        lhs = v118;
        v20 = NUStringFromTimeRange();
        v21 = [MEMORY[0x1E69B3D40] debugDescriptionOfAssetTrack:v8];
        *&lhs.start.value = v101;
        lhs.start.epoch = v14;
        v22 = NUStringFromTime();
        [MEMORY[0x1E69B3D40] debugDescriptionOfAssetTrack:v105];
        selfCopy = self;
        v23 = v6;
        v24 = v7;
        v26 = v25 = v8;
        v27 = [v89 stringWithFormat:@"Failed to update video track when inserting the pre-crossfade content with source range %@ from track %@ to time %@ in track %@.", v20, v21, v22, v26];

        v8 = v25;
        v7 = v24;
        v6 = v23;

        *video = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:v27 object:selfCopy underlyingError:v17];

        v13 = 0;
        v28 = v100;
        v19 = v17;
        goto LABEL_47;
      }

      if (v100)
      {
        memset(&lhs, 0, sizeof(lhs));
        v18 = MEMORY[0x1E69B3D40];
        v97 = v8;
        if (v104)
        {
          [v104 timeRange];
        }

        else
        {
          memset(&rhs, 0, sizeof(rhs));
        }

        v112 = v118;
        [v18 conformRange:&v112 inRange:&rhs];
        v111 = v17;
        rhs = lhs;
        *&v112.start.value = v101;
        v112.start.epoch = v14;
        v29 = [v100 insertTimeRange:&rhs ofTrack:v104 atTime:&v112 error:&v111];
        v19 = v111;

        if ((v29 & 1) == 0)
        {
          v92 = MEMORY[0x1E696AEC0];
          rhs = lhs;
          v52 = NUStringFromTimeRange();
          v53 = [MEMORY[0x1E69B3D40] debugDescriptionOfAssetTrack:v104];
          *&rhs.start.value = v101;
          rhs.start.epoch = v14;
          v54 = NUStringFromTime();
          [MEMORY[0x1E69B3D40] debugDescriptionOfAssetTrack:v100];
          v55 = v6;
          v57 = v56 = v7;
          v58 = [v92 stringWithFormat:@"Failed to update audio track when inserting the pre-crossfade content with source range %@ from track %@ to time %@ in track %@.", v52, v53, v54, v57];

          v7 = v56;
          v6 = v55;

          *video = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:v58 object:self underlyingError:v19];

          v13 = 0;
          v8 = v97;
          v28 = v100;
          goto LABEL_47;
        }

        v8 = v97;
      }

      else
      {
        v19 = v16;
      }
    }

    lhs.start = end.duration;
    *&rhs.start.value = v101;
    rhs.start.epoch = v14;
    if (CMTimeCompare(&lhs.start, &rhs.start) < 1)
    {
LABEL_31:
      lhs.start = range.duration;
      *&rhs.start.value = v101;
      rhs.start.epoch = v14;
      if (CMTimeCompare(&lhs.start, &rhs.start) < 1)
      {
        v28 = v100;
LABEL_46:
        v13 = v7;
        goto LABEL_47;
      }

      v107 = v19;
      lhs = range;
      v102 = *MEMORY[0x1E6960C70];
      *&rhs.start.value = *MEMORY[0x1E6960C70];
      v36 = *(MEMORY[0x1E6960C70] + 16);
      rhs.start.epoch = v36;
      v37 = v8;
      v38 = [v105 insertTimeRange:&lhs ofTrack:v8 atTime:&rhs error:&v107];
      v39 = v107;

      if (v38)
      {
        v19 = v39;
        v99 = v37;
        v28 = v100;
        if (v100)
        {
          memset(&lhs, 0, sizeof(lhs));
          v40 = MEMORY[0x1E69B3D40];
          if (v104)
          {
            [v104 timeRange];
          }

          else
          {
            memset(&rhs, 0, sizeof(rhs));
          }

          v112 = range;
          [v40 conformRange:&v112 inRange:&rhs];
          v106 = v19;
          rhs = lhs;
          *&v112.start.value = v102;
          v112.start.epoch = v36;
          v65 = [v100 insertTimeRange:&rhs ofTrack:v104 atTime:&v112 error:&v106];
          v66 = v106;

          if ((v65 & 1) == 0)
          {
            v94 = MEMORY[0x1E696AEC0];
            rhs = lhs;
            v68 = NUStringFromTimeRange();
            v69 = [MEMORY[0x1E69B3D40] debugDescriptionOfAssetTrack:v104];
            *&rhs.start.value = v102;
            rhs.start.epoch = v36;
            v70 = NUStringFromTime();
            [MEMORY[0x1E69B3D40] debugDescriptionOfAssetTrack:v100];
            selfCopy2 = self;
            v71 = v6;
            v73 = v72 = v7;
            v74 = [v94 stringWithFormat:@"Failed to update audio track when inserting the post-crossfade content with source range %@ from track %@ to time %@ in track %@.", v68, v69, v70, v73];

            v7 = v72;
            v6 = v71;
            v28 = v100;

            *video = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:v74 object:selfCopy2 underlyingError:v66];

            v13 = 0;
            v19 = v66;
            v8 = v99;
            goto LABEL_47;
          }

          v8 = v99;
          v19 = v66;
        }

        else
        {
          v8 = v37;
        }

        goto LABEL_46;
      }

      v46 = MEMORY[0x1E696AEC0];
      lhs = range;
      NUStringFromTimeRange();
      v47 = v91 = v39;
      v48 = [MEMORY[0x1E69B3D40] debugDescriptionOfAssetTrack:v37];
      *&lhs.start.value = v102;
      lhs.start.epoch = v36;
      v49 = NUStringFromTime();
      v50 = [MEMORY[0x1E69B3D40] debugDescriptionOfAssetTrack:v105];
      v51 = [v46 stringWithFormat:@"Failed to update video track when inserting the post-crossfade content with source range %@ from track %@ to time %@ in track %@.", v47, v48, v49, v50];

      v19 = v91;
      *video = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:v51 object:self underlyingError:v91];

      v13 = 0;
      v8 = v37;
      v28 = v100;
LABEL_47:

      goto LABEL_48;
    }

    v30 = [v7 addMutableTrackWithMediaType:v12 preferredTrackID:1];
    memset(&v110, 0, sizeof(v110));
    if (v105)
    {
      [v105 timeRange];
    }

    else
    {
      memset(&lhs, 0, sizeof(lhs));
    }

    CMTimeRangeGetEnd(&rhs.start, &lhs);
    *&lhs.start.value = v119;
    lhs.start.epoch = v120;
    CMTimeSubtract(&v110, &rhs.start, &lhs.start);
    v109 = v19;
    lhs = end;
    rhs.start = v110;
    v31 = v8;
    v32 = [v30 insertTimeRange:&lhs ofTrack:v8 atTime:&rhs error:&v109];
    v90 = v109;

    v98 = v31;
    if (v32)
    {
      v88 = v30;
      v19 = v90;
      if (!v104)
      {
LABEL_30:

        v8 = v98;
        goto LABEL_31;
      }

      v33 = [v7 addMutableTrackWithMediaType:v9 preferredTrackID:3];
      memset(&lhs, 0, sizeof(lhs));
      v34 = MEMORY[0x1E69B3D40];
      [v104 timeRange];
      v112 = end;
      [v34 conformRange:&v112 inRange:&rhs];
      v108 = v90;
      rhs = lhs;
      v112.start = v110;
      LOBYTE(v34) = [v33 insertTimeRange:&rhs ofTrack:v104 atTime:&v112 error:&v108];
      v35 = v108;

      if (v34)
      {

        v19 = v35;
        goto LABEL_30;
      }

      v103 = MEMORY[0x1E696AEC0];
      rhs = lhs;
      v59 = NUStringFromTimeRange();
      v60 = [MEMORY[0x1E69B3D40] debugDescriptionOfAssetTrack:v104];
      rhs.start = v110;
      NUStringFromTime();
      v61 = v93 = v35;
      v62 = [MEMORY[0x1E69B3D40] debugDescriptionOfAssetTrack:v33];
      v63 = v59;
      v64 = [v103 stringWithFormat:@"Failed to update audio track when inserting the crossfade content with source range %@ from track %@ to time %@ in track %@.", v59, v60, v61, v62];

      v19 = v93;
      *video = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:v64 object:self underlyingError:v93];

      v30 = v88;
    }

    else
    {
      v41 = MEMORY[0x1E696AEC0];
      lhs = end;
      v42 = NUStringFromTimeRange();
      v43 = [MEMORY[0x1E69B3D40] debugDescriptionOfAssetTrack:v31];
      lhs.start = v110;
      v44 = NUStringFromTime();
      v45 = [MEMORY[0x1E69B3D40] debugDescriptionOfAssetTrack:v30];
      v33 = [v41 stringWithFormat:@"Failed to update video track when inserting the crossfade content with source range %@ from track %@ to time %@ in track %@.", v42, v43, v44, v45];

      v19 = v90;
      *video = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:v33 object:self underlyingError:v90];
    }

    v13 = 0;
    v8 = v98;
    v28 = v100;
    goto LABEL_47;
  }

  [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"[[AVMutableComposition alloc] init] failed." object:self];
  *video = v13 = 0;
LABEL_49:

LABEL_50:

  return v13;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v81 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if (!error)
  {
    v44 = NUAssertLogger_3150();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(buf.start.value) = 138543362;
      *(&buf.start.value + 4) = v45;
      _os_log_error_impl(&dword_1C7694000, v44, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &buf, 0xCu);
    }

    v46 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v48 = NUAssertLogger_3150();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (!v49)
      {
        goto LABEL_48;
      }

      v52 = dispatch_get_specific(*v46);
      v53 = MEMORY[0x1E696AF00];
      v51 = v52;
      callStackSymbols = [v53 callStackSymbols];
      v55 = [callStackSymbols componentsJoinedByString:@"\n"];
      LODWORD(buf.start.value) = 138543618;
      *(&buf.start.value + 4) = v52;
      LOWORD(buf.start.flags) = 2114;
      *(&buf.start.flags + 2) = v55;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &buf, 0x16u);
    }

    else
    {
      if (!v49)
      {
        goto LABEL_48;
      }

      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v51 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(buf.start.value) = 138543362;
      *(&buf.start.value + 4) = v51;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &buf, 0xCu);
    }

LABEL_48:
    _NUAssertFailHandler();
  }

  v10 = stateCopy;
  evaluationMode = [stateCopy evaluationMode];
  if ((evaluationMode & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    v71.receiver = self;
    v71.super_class = PIVideoCrossfadeLoopNode;
    v19 = [(NURenderNode *)&v71 nodeByReplayingAgainstCache:cacheCopy pipelineState:v10 error:error];
    goto LABEL_36;
  }

  v12 = evaluationMode;
  [(PIVideoCrossfadeLoopNode *)self startTime];
  [(PIVideoCrossfadeLoopNode *)self crossfadeDuration];
  memset(&buf, 0, sizeof(buf));
  [(PIVideoCrossfadeLoopNode *)self loopTimeRange];
  memset(v70, 0, sizeof(v70));
  if (v10)
  {
    [v10 time];
  }

  input = [(PIVideoCrossfadeLoopNode *)self input];
  v14 = [input outputVideo:error];

  if (v14)
  {
    memset(&v69, 0, sizeof(v69));
    range = buf;
    CMTimeRangeGetEnd(&start.start, &range);
    lhs = v70[2];
    rhs = v70[1];
    CMTimeAdd(&range.start, &lhs, &rhs);
    CMTimeSubtract(&v69, &start.start, &range.start);
    memset(&range, 0, sizeof(range));
    start.start = v69;
    lhs = v70[1];
    CMTimeRangeMake(&range, &start.start, &lhs);
    v15 = [v10 copy];
    v57 = v15;
    if (v12 == 3)
    {
      videoFrames = [v10 videoFrames];
      v17 = [videoFrames objectForKeyedSubscript:@"primary"];

      if (!v17)
      {
        [MEMORY[0x1E69B3A48] missingError:@"Missing primary video frame" object:v10];
        *error = v19 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v78 = @"video";
      v79 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      [v57 setVideoFrames:v18];

      start = range;
      CMTimeRangeGetEnd(&lhs, &start);
      start.start = v70[0];
      if (CMTimeCompare(&start.start, &lhs) < 0)
      {
        if (v10)
        {
          [v10 time];
        }

        else
        {
          memset(&start, 0, 24);
        }

        lhs = v70[2];
        CMTimeAdd(&v64, &start.start, &lhs);
        *&start.start.value = *&v64.value;
        epoch = v64.epoch;
      }

      else
      {
        memset(&lhs, 0, sizeof(lhs));
        [(PIVideoCrossfadeLoopNode *)self loopTimeRange];
        *&start.start.value = v62;
        start.start.epoch = v63;
        rhs = v70[1];
        CMTimeAdd(&lhs, &start.start, &rhs);
        if (v10)
        {
          [v10 time];
        }

        else
        {
          memset(&rhs, 0, sizeof(rhs));
        }

        start = range;
        CMTimeRangeGetEnd(&v60, &start);
        CMTimeSubtract(&start.start, &rhs, &v60);
        rhs = lhs;
        CMTimeAdd(&v61, &rhs, &start.start);
        *&start.start.value = *&v61.value;
        epoch = v61.epoch;
      }

      start.start.epoch = epoch;
      [v57 setRawTime:&start];

      v15 = v57;
    }

    input2 = [(PIVideoCrossfadeLoopNode *)self input];
    v22 = [input2 nodeByReplayingAgainstCache:cacheCopy pipelineState:v15 error:error];

    if (v22)
    {
      start = range;
      lhs = v70[0];
      if (CMTimeRangeContainsTime(&start, &lhs))
      {
        memset(&start, 0, 24);
        lhs = v70[0];
        rhs = v69;
        CMTimeSubtract(&start.start, &lhs, &rhs);
        lhs = start.start;
        Seconds = CMTimeGetSeconds(&lhs);
        lhs = v70[1];
        v24 = CMTimeGetSeconds(&lhs);
        v25 = [v10 copy];
        if (v12 == 3)
        {
          v56 = v14;
          videoFrames2 = [v10 videoFrames];
          v27 = [videoFrames2 objectForKeyedSubscript:@"secondary"];

          if (!v27)
          {
            [MEMORY[0x1E69B3A48] missingError:@"Missing secondary video frame" object:v10];
            *error = v19 = 0;
            v14 = v56;
LABEL_32:

            goto LABEL_33;
          }

          lhs = buf.start;
          rhs = start.start;
          CMTimeAdd(&v59, &lhs, &rhs);
          lhs = v59;
          [v25 setTime:&lhs];
          v76 = @"video";
          v77 = v27;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          [v25 setVideoFrames:v28];

          lhs = start.start;
          rhs = buf.start;
          CMTimeAdd(&v58, &lhs, &rhs);
          lhs = v58;
          [v57 setRawTime:&lhs];

          v14 = v56;
        }

        input3 = [(PIVideoCrossfadeLoopNode *)self input];
        v30 = [input3 nodeByReplayingAgainstCache:cacheCopy pipelineState:v25 error:error];

        if (v30)
        {
          v31 = Seconds;
          v32 = v24;
          v33 = v31 / v32;
          v34 = objc_alloc(MEMORY[0x1E69B3A70]);
          v74 = *MEMORY[0x1E695FB30];
          *&v35 = v33;
          v36 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
          v75 = v36;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          v38 = v37 = v14;
          v39 = *MEMORY[0x1E695FB28];
          v72[0] = *MEMORY[0x1E695FAB0];
          v72[1] = v39;
          v73[0] = v22;
          v73[1] = v30;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:2];
          v41 = v40 = v25;
          v42 = [v34 initWithFilterName:@"CIDissolveTransition" settings:v38 inputs:v41];

          v25 = v40;
          v14 = v37;

          v19 = [MEMORY[0x1E69B3C28] nodeFromCache:v42 cache:cacheCopy];
          [v19 setEvaluatedForMode:{objc_msgSend(v10, "evaluationMode")}];
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_32;
      }

      v19 = v22;
    }

    else
    {
      v19 = 0;
    }

LABEL_33:

    goto LABEL_34;
  }

  v19 = 0;
LABEL_35:

LABEL_36:

  return v19;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v13.receiver = self;
  v13.super_class = PIVideoCrossfadeLoopNode;
  v7 = [(NURenderNode *)&v13 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];
  v8 = *&self->_crossfadeDuration.value;
  *(v7 + 208) = self->_crossfadeDuration.epoch;
  *(v7 + 192) = v8;
  v9 = *&self->_startTime.value;
  *(v7 + 184) = self->_startTime.epoch;
  *(v7 + 168) = v9;
  v11 = *&self->_loopTimeRange.start.epoch;
  v10 = *&self->_loopTimeRange.duration.timescale;
  *(v7 + 216) = *&self->_loopTimeRange.start.value;
  *(v7 + 232) = v11;
  *(v7 + 248) = v10;

  return v7;
}

- (id)input
{
  inputs = [(NURenderNode *)self inputs];
  v3 = [inputs objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  return v3;
}

- (PIVideoCrossfadeLoopNode)initWithInput:(id)input timeRange:(id *)range crossfadeDuration:(id *)duration startTime:(id *)time
{
  v65 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  if (!inputCopy)
  {
    v32 = NUAssertLogger_3150();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      LODWORD(time.start.value) = 138543362;
      *(&time.start.value + 4) = v33;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &time, 0xCu);
    }

    callStackSymbols2 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v29 = NUAssertLogger_3150();
    v35 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v35)
      {
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols2 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(time.start.value) = 138543362;
        *(&time.start.value + 4) = callStackSymbols2;
        _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time, 0xCu);
      }

      goto LABEL_32;
    }

LABEL_30:
    if (v35)
    {
      v47 = dispatch_get_specific(*callStackSymbols2);
      v48 = MEMORY[0x1E696AF00];
      v49 = v47;
      callStackSymbols2 = [v48 callStackSymbols];
      v50 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(time.start.value) = 138543618;
      *(&time.start.value + 4) = v47;
      LOWORD(time.start.flags) = 2114;
      *(&time.start.flags + 2) = v50;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time, 0x16u);
    }

LABEL_32:

    v40 = _NUAssertFailHandler();
    goto LABEL_33;
  }

  if ((duration->var2 & 1) == 0)
  {
    v37 = NUAssertLogger_3150();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "CMTIME_IS_VALID(crossfadeDuration)"];
      LODWORD(time.start.value) = 138543362;
      *(&time.start.value + 4) = v38;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &time, 0xCu);
    }

    callStackSymbols2 = MEMORY[0x1E69B38E8];
    v39 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v29 = NUAssertLogger_3150();
    v40 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (!v39)
    {
      if (v40)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v42 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        LODWORD(time.start.value) = 138543362;
        *(&time.start.value + 4) = v42;
        _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time, 0xCu);
      }

LABEL_35:

      _NUAssertFailHandler();
    }

LABEL_33:
    if (v40)
    {
      v51 = dispatch_get_specific(*callStackSymbols2);
      v52 = MEMORY[0x1E696AF00];
      v53 = v51;
      callStackSymbols4 = [v52 callStackSymbols];
      v55 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      LODWORD(time.start.value) = 138543618;
      *(&time.start.value + 4) = v51;
      LOWORD(time.start.flags) = 2114;
      *(&time.start.flags + 2) = v55;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time, 0x16u);
    }

    goto LABEL_35;
  }

  if ((range->var0.var2 & 1) == 0 || (range->var1.var2 & 1) == 0 || range->var1.var3 || range->var1.var0 < 0)
  {
    v25 = NUAssertLogger_3150();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "CMTIMERANGE_IS_VALID(loopTimeRange)"];
      LODWORD(time.start.value) = 138543362;
      *(&time.start.value + 4) = v26;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &time, 0xCu);
    }

    callStackSymbols2 = MEMORY[0x1E69B38E8];
    v28 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v29 = NUAssertLogger_3150();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v30)
      {
        v43 = dispatch_get_specific(*callStackSymbols2);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        callStackSymbols2 = [v44 callStackSymbols];
        v46 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        LODWORD(time.start.value) = 138543618;
        *(&time.start.value + 4) = v43;
        LOWORD(time.start.flags) = 2114;
        *(&time.start.flags + 2) = v46;
        _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time, 0x16u);
      }
    }

    else if (v30)
    {
      callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols2 = [callStackSymbols5 componentsJoinedByString:@"\n"];
      LODWORD(time.start.value) = 138543362;
      *(&time.start.value + 4) = callStackSymbols2;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time, 0xCu);
    }

    v35 = _NUAssertFailHandler();
    goto LABEL_30;
  }

  v11 = inputCopy;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  *&time.start.value = *&duration->var0;
  time.start.epoch = duration->var3;
  v13 = CMTimeCopyAsDictionary(&time.start, 0);
  [v12 setObject:v13 forKeyedSubscript:@"crossfadeDuration"];

  *&time.start.value = *&time->var0;
  time.start.epoch = time->var3;
  v14 = CMTimeCopyAsDictionary(&time.start, 0);
  [v12 setObject:v14 forKeyedSubscript:@"startTime"];

  v15 = *&range->var0.var3;
  *&time.start.value = *&range->var0.var0;
  *&time.start.epoch = v15;
  *&time.duration.timescale = *&range->var1.var1;
  v16 = CMTimeRangeCopyAsDictionary(&time, 0);
  [v12 setObject:v16 forKeyedSubscript:@"loopTimeRange"];

  v62 = *MEMORY[0x1E695FAB0];
  v63 = v11;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  v61.receiver = self;
  v61.super_class = PIVideoCrossfadeLoopNode;
  v18 = [(NURenderNode *)&v61 initWithSettings:v12 inputs:v17];

  if (v18)
  {
    var3 = duration->var3;
    *(v18 + 12) = *&duration->var0;
    *(v18 + 26) = var3;
    v20 = *&range->var1.var1;
    v21 = *&range->var0.var0;
    *(v18 + 232) = *&range->var0.var3;
    *(v18 + 248) = v20;
    *(v18 + 216) = v21;
    memset(&v60, 0, sizeof(v60));
    CMTimeMake(&v60, 1, 600);
    memset(&v59, 0, sizeof(v59));
    v22 = *&range->var0.var3;
    *&time.start.value = *&range->var0.var0;
    *&time.start.epoch = v22;
    *&time.duration.timescale = *&range->var1.var1;
    CMTimeRangeGetEnd(&time2, &time);
    lhs = *duration;
    rhs = v60;
    CMTimeAdd(&time.start, &lhs, &rhs);
    CMTimeSubtract(&v59, &time2, &time.start);
    *&time.start.value = *&time->var0;
    time.start.epoch = time->var3;
    time2 = v59;
    if ((CMTimeCompare(&time.start, &time2) & 0x80000000) == 0)
    {
      *time = v59;
    }

    v23 = time->var3;
    *(v18 + 168) = *&time->var0;
    *(v18 + 23) = v23;
  }

  return v18;
}

- (PIVideoCrossfadeLoopNode)initWithSettings:(id)settings inputs:(id)inputs
{
  v35 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  inputsCopy = inputs;
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3167);
        }

LABEL_11:
        v23 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v25 = MEMORY[0x1E696AF00];
          v26 = specific;
          v27 = v23;
          callStackSymbols = [v25 callStackSymbols];
          v29 = [callStackSymbols componentsJoinedByString:@"\n"];
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3167);
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
      callStackSymbols2 = [v19 callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3167);
  }
}

@end