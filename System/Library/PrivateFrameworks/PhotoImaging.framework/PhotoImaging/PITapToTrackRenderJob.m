@interface PITapToTrackRenderJob
- (BOOL)prepare:(id *)a3;
- (CGPoint)normalizedImagePoint;
- (id)result;
- (void)_reportProgressAtTime:(id *)a3 rect:(CGRect)a4 confidence:(float)a5;
- (void)setStartTime:(id *)a3;
@end

@implementation PITapToTrackRenderJob

- (CGPoint)normalizedImagePoint
{
  x = self->_normalizedImagePoint.x;
  y = self->_normalizedImagePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setStartTime:(id *)a3
{
  var3 = a3->var3;
  *&self->_startTime.value = *&a3->var0;
  self->_startTime.epoch = var3;
}

- (void)_reportProgressAtTime:(id *)a3 rect:(CGRect)a4 confidence:(float)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = [(PITapToTrackRenderJob *)self progressHandler];
  if (v12)
  {
    objc_initWeak(&location, self);
    v13 = [(NURenderJob *)self request];
    v14 = [v13 responseQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__PITapToTrackRenderJob__reportProgressAtTime_rect_confidence___block_invoke;
    block[3] = &unk_1E82A9CE8;
    v16 = v12;
    v18 = *&a3->var0;
    var3 = a3->var3;
    v17[1] = *&x;
    v17[2] = *&y;
    v17[3] = *&width;
    v17[4] = *&height;
    v20 = a5;
    objc_copyWeak(v17, &location);
    dispatch_async(v14, block);

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }
}

- (BOOL)prepare:(id *)a3
{
  v85 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v64 = NUAssertLogger_477();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v82 = v65;
      _os_log_error_impl(&dword_1C7694000, v64, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v66 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v68 = NUAssertLogger_477();
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v69)
      {
        v72 = dispatch_get_specific(*v66);
        v73 = MEMORY[0x1E696AF00];
        v74 = v72;
        v75 = [v73 callStackSymbols];
        v76 = [v75 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v82 = v72;
        v83 = 2114;
        v84 = v76;
        _os_log_error_impl(&dword_1C7694000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v69)
    {
      v70 = [MEMORY[0x1E696AF00] callStackSymbols];
      v71 = [v70 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v82 = v71;
      _os_log_error_impl(&dword_1C7694000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v80.receiver = self;
  v80.super_class = PITapToTrackRenderJob;
  if ([(NURenderJob *)&v80 prepare:?])
  {
    v5 = [(NURenderJob *)self request];
    v6 = [v5 device];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v10 = [MEMORY[0x1E69B3BF8] currentPlatform];
      v8 = [v10 mainDevice];
    }

    v11 = [v8 metalDevice];
    v12 = v11;
    if (!v11)
    {
      [MEMORY[0x1E69B3A48] missingError:@"No metal device for request" object:v8];
      *a3 = v9 = 0;
LABEL_39:

      return v9;
    }

    v13 = [v11 newCommandQueue];
    v14 = [objc_alloc(MEMORY[0x1E69C4FB8]) initWithCommandQueue:v13];
    v15 = [(NURenderJob *)self outputVideo];
    if (v15)
    {
      v16 = [objc_alloc(MEMORY[0x1E69C4F68]) initWithAsset:v15];
      if (!v16)
      {
        v47 = MEMORY[0x1E69B3A48];
        v18 = [v15 description];
        v48 = @"Failed to make asset reader for video";
        goto LABEL_32;
      }

      [(PITapToTrackRenderJob *)self startTime];
      if ([v16 startReadingFrames:6 atTime:buf error:a3])
      {
        v17 = [v16 nextFrame];
        if (v17)
        {
          v18 = v17;
          [(PITapToTrackRenderJob *)self normalizedImagePoint];
          v21 = [v14 getRectForPoint:objc_msgSend(v18 colorBuffer:{"colorBuffer"), v19, v20}];
          v78 = v14;
          if (v21)
          {
            v22 = v21;
            [v21 rect];
            v79 = v22;
            if (!CGRectIsEmpty(v86))
            {
              [v22 rect];
              v24 = v23;
              v26 = v25;
              v28 = v27;
              v30 = v29;
              [v18 time];
              if ([v14 addDetectionAndStartTrackingRect:buf time:objc_msgSend(v18 colorBuffer:"colorBuffer") disparityBuffer:{objc_msgSend(v18, "disparityBuffer"), v24, v26, v28, v30}])
              {
                [v18 time];
                v31 = v22;
                [v22 rect];
                v33 = v32;
                v35 = v34;
                v37 = v36;
                v39 = v38;
                [v22 confidence];
                LODWORD(v41) = v40;
                [(PITapToTrackRenderJob *)self _reportProgressAtTime:buf rect:v33 confidence:v35, v37, v39, v41];
                if ([(PITapToTrackRenderJob *)self clientRequestedStop])
                {
LABEL_16:
                  v79 = v22;
                  v42 = NULogger();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                  {
                    [v18 time];
                    v43 = NUStringFromTime();
                    *buf = 138412290;
                    v82 = v43;
                    _os_log_impl(&dword_1C7694000, v42, OS_LOG_TYPE_INFO, "Tap-to-track: client requested stop at %@", buf, 0xCu);
                  }

                  v14 = v78;
                }

                else
                {
                  while (1)
                  {
                    v79 = v31;
                    v49 = v18;
                    v18 = [v16 nextFrame];

                    if (!v18)
                    {
                      v14 = v78;
                      goto LABEL_20;
                    }

                    [v18 time];
                    v14 = v78;
                    v22 = [v78 addDetectionForNextFrameAt:buf colorBuffer:objc_msgSend(v18 disparityBuffer:{"colorBuffer"), objc_msgSend(v18, "disparityBuffer")}];

                    if (!v22)
                    {
                      v79 = 0;
                      goto LABEL_46;
                    }

                    [v22 rect];
                    if (CGRectIsEmpty(v87))
                    {
                      break;
                    }

                    [v18 time];
                    [v22 rect];
                    v51 = v50;
                    v53 = v52;
                    v55 = v54;
                    v57 = v56;
                    [v22 confidence];
                    LODWORD(v59) = v58;
                    [(PITapToTrackRenderJob *)self _reportProgressAtTime:buf rect:v51 confidence:v53, v55, v57, v59];
                    v31 = v22;
                    if ([(PITapToTrackRenderJob *)self clientRequestedStop])
                    {
                      goto LABEL_16;
                    }
                  }

                  v79 = v22;
LABEL_46:
                  v42 = NULogger();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                  {
                    [v18 time];
                    v77 = NUStringFromTime();
                    *buf = 138412290;
                    v82 = v77;
                    _os_log_impl(&dword_1C7694000, v42, OS_LOG_TYPE_INFO, "Tap-to-track: tracking lost at %@", buf, 0xCu);
                  }
                }

LABEL_20:
                [v16 stopReadingFrames];
                v44 = [v14 finalizeTrack];
                [(PITapToTrackRenderJob *)self setCompletedTrack:v44];

                v45 = [(PITapToTrackRenderJob *)self completedTrack];

                if (v45)
                {
                  v9 = 1;
LABEL_36:

                  goto LABEL_37;
                }

                v60 = @"Failed to get finalized track from tracking session";
              }

              else
              {
                v60 = @"Failed to add detection and start tracking";
              }

LABEL_35:
              v61 = MEMORY[0x1E69B3A48];
              v62 = [(NURenderJob *)self description];
              *a3 = [v61 missingError:v60 object:v62];

              v9 = 0;
              v14 = v78;
              goto LABEL_36;
            }
          }

          else
          {
            v79 = 0;
          }

          v60 = @"Failed to find rect to track at initial point";
          goto LABEL_35;
        }

        v47 = MEMORY[0x1E69B3A48];
        v18 = [v15 description];
        v48 = @"Failed to read first frame for video";
LABEL_32:
        [v47 missingError:v48 object:v18];
        *a3 = v9 = 0;
LABEL_37:

        goto LABEL_38;
      }

      v9 = 0;
    }

    else
    {
      v46 = MEMORY[0x1E69B3A48];
      v16 = [(NURenderJob *)self description];
      [v46 missingError:@"Failed to find output video asset" object:v16];
      *a3 = v9 = 0;
    }

LABEL_38:

    goto LABEL_39;
  }

  return 0;
}

- (id)result
{
  v2 = [[_PITapToTrackRenderResult alloc] initWithCompletedTrack:self->_completedTrack];

  return v2;
}

@end