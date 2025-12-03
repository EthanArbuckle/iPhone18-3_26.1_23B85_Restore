@interface PIVideoStabilizeRenderJob
- ($721907E0E1CDE8B6CD3FA271A8B25860)stabCropRect;
- (BOOL)prepare:(id *)prepare;
- (id)result;
@end

@implementation PIVideoStabilizeRenderJob

- ($721907E0E1CDE8B6CD3FA271A8B25860)stabCropRect
{
  var1 = self[9].var1;
  retstr->var0 = self[9].var0;
  retstr->var1 = var1;
  return self;
}

- (id)result
{
  v3 = [_PIVideoStabilizeResult alloc];
  keyframes = [(PIVideoStabilizeRenderJob *)self keyframes];
  [(PIVideoStabilizeRenderJob *)self stabCropRect];
  analysisType = [(PIVideoStabilizeRenderJob *)self analysisType];
  rawHomographies = [(PIVideoStabilizeRenderJob *)self rawHomographies];
  v7 = [(_PIVideoStabilizeResult *)v3 initWithKeyframes:keyframes stabCropRect:&v9 analysisType:analysisType rawHomographies:rawHomographies];

  return v7;
}

- (BOOL)prepare:(id *)prepare
{
  v114 = *MEMORY[0x1E69E9840];
  if (!prepare)
  {
    v58 = NUAssertLogger_7300();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      *&buf[4] = v59;
      _os_log_error_impl(&dword_1C7694000, v58, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v60 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v62 = NUAssertLogger_7300();
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v63)
      {
        v66 = dispatch_get_specific(*v60);
        v67 = MEMORY[0x1E696AF00];
        v68 = v66;
        callStackSymbols = [v67 callStackSymbols];
        v70 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v66;
        *&buf[12] = 2114;
        *&buf[14] = v70;
        _os_log_error_impl(&dword_1C7694000, v62, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v63)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v65 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v65;
      _os_log_error_impl(&dword_1C7694000, v62, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }

  v92.receiver = self;
  v92.super_class = PIVideoStabilizeRenderJob;
  if ([(NURenderJob *)&v92 prepare:?])
  {
    outputVideo = [(NURenderJob *)self outputVideo];
    v76 = [MEMORY[0x1E69B3D40] firstEnabledVideoTrackInAsset:outputVideo error:prepare];
    if (!v76)
    {
      v33 = 0;
LABEL_34:

      return v33;
    }

    [MEMORY[0x1E69B3D40] cleanApertureOfTrack:v76 oriented:0];
    v72 = location[4];
    v73 = location[3];
    v3 = objc_alloc_init(_PIVideoStabilizeFlowControl);
    [(_PIVideoStabilizeFlowControl *)v3 setProgressHandler:self->_progressHandler];
    objc_initWeak(location, self);
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __37__PIVideoStabilizeRenderJob_prepare___block_invoke;
    v89[3] = &unk_1E82ABB80;
    objc_copyWeak(&v90, location);
    [(_PIVideoStabilizeFlowControl *)v3 setShouldCancelHandler:v89];
    [(_PIVideoStabilizeFlowControl *)v3 setRangeMin:0.0];
    [(_PIVideoStabilizeFlowControl *)v3 setRangeMax:0.75];
    allowedAnalysisTypes = [(PIVideoStabilizeRenderJob *)self allowedAnalysisTypes];
    v74 = outputVideo;
    v75 = v3;
    v98 = 0;
    if ((allowedAnalysisTypes & 2) != 0)
    {
      v5 = [objc_alloc(MEMORY[0x1E69B3D18]) initWithAVAsset:v74];
      timedMetadataArray = [v5 timedMetadataArray];

      if (timedMetadataArray)
      {
        NUPixelSizeToCGSize();
        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v115);
        v82 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(timedMetadataArray, "count")}];
        v96 = 0u;
        v97 = 0u;
        v95 = 0u;
        v94 = 0u;
        obj = timedMetadataArray;
        v83 = [obj countByEnumeratingWithState:&v94 objects:buf count:16];
        if (v83)
        {
          v81 = *v95;
          do
          {
            for (i = 0; i != v83; ++i)
            {
              if (*v95 != v81)
              {
                objc_enumerationMutation(obj);
              }

              v7 = *(*(&v94 + 1) + 8 * i);
              if (v7)
              {
                [*(*(&v94 + 1) + 8 * i) time];
              }

              else
              {
                memset(&v93, 0, sizeof(v93));
              }

              time = v93;
              v84 = CMTimeCopyAsDictionary(&time, 0);
              [v7 trajectoryHomography];
              v87 = v9;
              v88 = v8;
              v86 = v10;
              v11 = [MEMORY[0x1E696AD98] numberWithFloat:*&v8];
              v104 = v11;
              v12 = [MEMORY[0x1E696AD98] numberWithFloat:*&v87];
              v105 = v12;
              v13 = [MEMORY[0x1E696AD98] numberWithFloat:*&v86];
              HIDWORD(v14) = DWORD1(v88);
              LODWORD(v14) = DWORD1(v88);
              v106 = v13;
              v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
              HIDWORD(v16) = DWORD1(v87);
              LODWORD(v16) = DWORD1(v87);
              v107 = v15;
              v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
              HIDWORD(v18) = DWORD1(v86);
              LODWORD(v18) = DWORD1(v86);
              v108 = v17;
              v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
              v109 = v19;
              v20 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v88), DWORD2(v88)))}];
              v110 = v20;
              v21 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v87), DWORD2(v87)))}];
              v111 = v21;
              v22 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v86), DWORD2(v86)))}];
              v112 = v22;
              v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:9];

              v24 = *MEMORY[0x1E69A8B70];
              v102[0] = *MEMORY[0x1E69A8B78];
              v102[1] = v24;
              v103[0] = v84;
              v103[1] = v23;
              v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:2];
              [v82 addObject:v25];
            }

            v83 = [obj countByEnumeratingWithState:&v94 objects:buf count:16];
          }

          while (v83);
        }

        v26 = *MEMORY[0x1E69A8B68];
        v100[0] = *MEMORY[0x1E69A8BA8];
        v100[1] = v26;
        v101[0] = DictionaryRepresentation;
        v101[1] = v82;
        v27 = *MEMORY[0x1E69A8B88];
        v100[2] = *MEMORY[0x1E69A8B80];
        v100[3] = v27;
        v101[2] = MEMORY[0x1E695E118];
        v101[3] = MEMORY[0x1E695E118];
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:4];
        v29 = ICSynthesizeAnalysis();
        if (!v29)
        {
          v30 = MEMORY[0x1E69B3A48];
          v31 = [MEMORY[0x1E696AD98] numberWithInt:v98];
          *prepare = [v30 failureError:@"Failure in ICSynthesizeAnalysis" object:v31];
        }

        if (!v29)
        {
          goto LABEL_32;
        }

        v32 = 2;
        goto LABEL_26;
      }
    }

    if (allowedAnalysisTypes)
    {
      if (ICAnalyzeInputMotion())
      {

        v32 = 1;
LABEL_26:
        if ([(NURenderJob *)self isCanceled])
        {
          v34 = MEMORY[0x1E69B3A48];
          v35 = [(PIVideoStabilizeRenderJob *)self copy];
          *prepare = [v34 canceledError:@"Stabilize request was cancelled" object:v35];

          ICDestroyResult();
        }

        else
        {
          [(_PIVideoStabilizeFlowControl *)v75 rangeMax];
          [(_PIVideoStabilizeFlowControl *)v75 setRangeMin:?];
          [(_PIVideoStabilizeFlowControl *)v75 setRangeMax:1.0];
          [v76 nominalFrameRate];
          v37 = v36;
          [(PIVideoStabilizeRenderJob *)self allowedCropFraction];
          v39 = v38;
          v104 = *MEMORY[0x1E69A8BF8];
          v40 = MEMORY[0x1E696AD98];
          v41 = v75;
          *&v42 = v37 * 60.0;
          v43 = [v40 numberWithFloat:v42];
          *buf = v43;
          v105 = *MEMORY[0x1E69A8C00];
          *&v44 = v37 * 50.0;
          v45 = [MEMORY[0x1E696AD98] numberWithFloat:v44];
          *&buf[8] = v45;
          v106 = *MEMORY[0x1E69A8BD0];
          v46 = [MEMORY[0x1E696AD98] numberWithDouble:v39];
          *&buf[16] = v46;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v104 count:3];

          LODWORD(v94) = 0;
          v48 = ICCalcCinematicL1Corrections();

          if (v48)
          {

            array = [MEMORY[0x1E695DF70] array];
            v50 = ICGetResultHomographies();
            CreateKeyframesFromHomographyDictionary(v50, v73, v72, array, &self->_stabCropRect.origin.x);
            v51 = [array copy];
            keyframes = self->_keyframes;
            self->_keyframes = v51;

            self->_analysisType = v32;
            objc_storeStrong(&self->_rawHomographies, v50);
            ICDestroyResult();
            ICDestroyResult();

            v33 = 1;
LABEL_33:
            objc_destroyWeak(&v90);
            objc_destroyWeak(location);

            goto LABEL_34;
          }

          v56 = MEMORY[0x1E69B3A48];
          v57 = [MEMORY[0x1E696AD98] numberWithInt:v94];
          *prepare = [v56 failureError:@"Failure in ICCalcCinematicL1Corrections" object:v57];

          ICDestroyResult();
        }

LABEL_32:
        v33 = 0;
        goto LABEL_33;
      }

      v53 = MEMORY[0x1E69B3A48];
      v54 = [MEMORY[0x1E696AD98] numberWithInt:v98];
      *prepare = [v53 failureError:@"Failure in ICAnalyzeInputMotion" object:v54];
    }

    else
    {
      *prepare = [MEMORY[0x1E69B3A48] failureError:@"No available analysis types were allowed" object:0];
    }

    goto LABEL_32;
  }

  return 0;
}

uint64_t __37__PIVideoStabilizeRenderJob_prepare___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained isCanceled];

  return v2;
}

@end