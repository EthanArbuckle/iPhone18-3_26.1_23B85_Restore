@interface PXVideoStabilizeOperation
- (PXVideoStabilizeOperation)initWithSpec:(id)a3;
- (id)imagePropertiesRequest;
- (id)performProcessing;
- (id)renderer;
- (id)stabilizeRequest;
- (void)_cancelWork;
- (void)cancel;
- (void)dealloc;
- (void)setImagePropertiesRequest:(id)a3;
- (void)setRenderer:(id)a3;
- (void)setStabilizeRequest:(id)a3;
@end

@implementation PXVideoStabilizeOperation

- (void)setStabilizeRequest:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_stabilizeRequest = self->_lock_stabilizeRequest;
  self->_lock_stabilizeRequest = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)stabilizeRequest
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_stabilizeRequest;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setImagePropertiesRequest:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_imagePropertiesRequest = self->_lock_imagePropertiesRequest;
  self->_lock_imagePropertiesRequest = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)imagePropertiesRequest
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_imagePropertiesRequest;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setRenderer:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_renderer = self->_lock_renderer;
  self->_lock_renderer = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)renderer
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_renderer;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_cancelWork
{
  os_unfair_lock_lock(&self->_lock);
  lock_renderer = self->_lock_renderer;
  lock_stabilizeRequest = self->_lock_stabilizeRequest;
  v5 = self->_lock_imagePropertiesRequest;
  v6 = lock_stabilizeRequest;
  v9 = lock_renderer;
  os_unfair_lock_unlock(&self->_lock);
  [(PLPhotoEditRenderer *)v9 cancelAllRenders];
  v7 = [(PIVideoStabilizeRequest *)v6 renderContext];
  [v7 cancelAllRequests];

  v8 = [(NUImagePropertiesRequest *)v5 renderContext];

  [v8 cancelAllRequests];
}

- (void)dealloc
{
  [(PXVideoStabilizeOperation *)self _cancelWork];
  v3.receiver = self;
  v3.super_class = PXVideoStabilizeOperation;
  [(PXVideoStabilizeOperation *)&v3 dealloc];
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = PXVideoStabilizeOperation;
  [(PXVideoStabilizeOperation *)&v3 cancel];
  [(PXVideoStabilizeOperation *)self _cancelWork];
}

- (id)performProcessing
{
  v144[1] = *MEMORY[0x1E69E9840];
  v89 = objc_alloc_init(_PXVideoStabilizeResult);
  v3 = [(PXVideoProcessingOperation *)self spec];
  v4 = [v3 inputVideoURL];

  v5 = [(PXVideoProcessingOperation *)self spec];
  v85 = [v5 performStabilization];

  v6 = [objc_alloc(MEMORY[0x1E69BE880]) initWithVideoURL:v4];
  v7 = [(PXVideoProcessingOperation *)self progressHandler];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, @"Preparing NUComposition", 0.0);
  }

  PIPhotoEditHelperClass_211976 = getPIPhotoEditHelperClass_211976();
  v10 = [getPIPhotoEditHelperClass_211976() newComposition];
  v11 = [PIPhotoEditHelperClass_211976 newCompositionControllerWithComposition:v10];

  v12 = [v6 source];
  [v11 setSource:v12 mediaType:2];

  v88 = [v11 adjustmentConstants];
  v13 = [v11 copy];
  if (([(PXVideoStabilizeOperation *)self isCancelled]& 1) != 0)
  {
    v14 = 0;
    v15 = 0;
    goto LABEL_78;
  }

  v16 = getPIPhotoEditHelperClass_211976();
  v81 = v13;
  v17 = [v13 composition];
  v87 = [v16 imagePropertiesRequestWithComposition:v17];

  [(PXVideoStabilizeOperation *)self setImagePropertiesRequest:v87];
  [v87 setName:@"PXStabilizedPlayerItemWithVideoURL-imageProperties"];
  v133 = 0;
  v84 = [v87 submitSynchronous:&v133];
  v82 = v133;
  if (([(PXVideoStabilizeOperation *)self isCancelled]& 1) == 0)
  {
    v18 = objc_alloc(MEMORY[0x1E6988168]);
    v143 = *MEMORY[0x1E6987BB8];
    v144[0] = MEMORY[0x1E695E118];
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v144 forKeys:&v143 count:1];
    v80 = [v18 initWithURL:v4 options:v19];

    v132 = 0;
    v75 = [getNUVideoUtilitiesClass() firstEnabledVideoTrackInAsset:v80 error:&v132];
    v74 = v132;
    v130 = 0u;
    v131 = 0u;
    NUVideoUtilitiesClass = getNUVideoUtilitiesClass();
    if (NUVideoUtilitiesClass)
    {
      [NUVideoUtilitiesClass cleanApertureOfTrack:v75 oriented:0];
      v76 = *(&v131 + 1);
      v73 = v131;
    }

    else
    {
      v76 = 0;
      v73 = 0;
      v130 = 0u;
      v131 = 0u;
    }

    if (v84)
    {
      v21 = [v84 properties];
      v22 = [v21 orientation];

      v121 = 0;
      v122 = &v121;
      v123 = 0x2020000000;
      v23 = getNUOrientationIsValidSymbolLoc_ptr_211980;
      v124 = getNUOrientationIsValidSymbolLoc_ptr_211980;
      if (!getNUOrientationIsValidSymbolLoc_ptr_211980)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v139 = __getNUOrientationIsValidSymbolLoc_block_invoke_211981;
        v140 = &unk_1E774BD00;
        v141 = &v121;
        v24 = NeutrinoCoreLibrary();
        v25 = dlsym(v24, "NUOrientationIsValid");
        *(*(v141 + 1) + 24) = v25;
        getNUOrientationIsValidSymbolLoc_ptr_211980 = *(*(v141 + 1) + 24);
        v23 = v122[3];
      }

      _Block_object_dispose(&v121, 8);
      if (!v23)
      {
        v69 = [MEMORY[0x1E696AAA8] currentHandler];
        v70 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NUOrientation SOFT_LINKED_NUOrientationIsValid(NUOrientation)"];
        [v69 handleFailureInFunction:v70 file:@"PXVideoStabilizeOperation.m" lineNumber:39 description:{@"%s", dlerror()}];

        goto LABEL_83;
      }

      if (v23(v22))
      {
        [MEMORY[0x1E69BE360] compositionController:v11 setInputOrientation:v22];
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = v22;
        _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "image orientation from the image properties is invalid: %d", &buf, 8u);
      }

      v14 = 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v82;
        _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error encountered determining image properties for stabilized video composition: %@", &buf, 0xCu);
      }

      v14 = v82;
    }

    v83 = 0;
    v129 = 0;
    if (!v85)
    {
      goto LABEL_43;
    }

    v26 = [(PXVideoProcessingOperation *)self spec];
    v27 = [v26 recipeSource];
    v128 = 0;
    group = [v27 loadStabilizationRecipe:&v128 analysisType:&v129];
    v28 = v128;

    if (!group)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v28;
        _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error encountered loading stabilization recipe: %@", &buf, 0xCu);
      }

      v33 = v28;

      goto LABEL_40;
    }

    v127 = v28;
    v29 = group;
    v121 = 0;
    v122 = &v121;
    v123 = 0x2020000000;
    v30 = getPIVideoStabilizeResultFromHomographiesSymbolLoc_ptr;
    v124 = getPIVideoStabilizeResultFromHomographiesSymbolLoc_ptr;
    if (!getPIVideoStabilizeResultFromHomographiesSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v139 = __getPIVideoStabilizeResultFromHomographiesSymbolLoc_block_invoke;
      v140 = &unk_1E774BD00;
      v141 = &v121;
      v31 = PhotoImagingLibrary_211991();
      v32 = dlsym(v31, "PIVideoStabilizeResultFromHomographies");
      *(*(v141 + 1) + 24) = v32;
      getPIVideoStabilizeResultFromHomographiesSymbolLoc_ptr = *(*(v141 + 1) + 24);
      v30 = v122[3];
    }

    _Block_object_dispose(&v121, 8);
    if (v30)
    {
      v83 = v30(v29, v73, v76, &v127);

      v33 = v127;
      if (v83)
      {
        [v83 stabCropRect];
        if (NUPixelRectIsEmpty() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v83;
          _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Stabilization recipe returned empty crop rect: %{public}@", &buf, 0xCu);
        }

        v34 = [v83 keyframes];
        v35 = [v34 count] == 0;

        if (v35)
        {
          v36 = group;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v83;
            _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Stabilization recipe returned no keyframes: %{public}@", &buf, 0xCu);
          }

          goto LABEL_42;
        }

LABEL_41:
        v36 = group;
LABEL_42:

LABEL_43:
        *&buf = 0;
        *(&buf + 1) = &buf;
        v139 = 0x3032000000;
        v140 = __Block_byref_object_copy__211997;
        v141 = __Block_byref_object_dispose__211998;
        v142 = 0;
        v121 = 0;
        v122 = &v121;
        v123 = 0x3032000000;
        v124 = __Block_byref_object_copy__211997;
        v125 = __Block_byref_object_dispose__211998;
        v126 = 0;
        v115 = 0;
        v116 = &v115;
        v117 = 0x3032000000;
        v118 = __Block_byref_object_copy__211997;
        v119 = __Block_byref_object_dispose__211998;
        v120 = 0;
        v109 = 0;
        v110 = &v109;
        v111 = 0x3032000000;
        v112 = __Block_byref_object_copy__211997;
        v113 = __Block_byref_object_dispose__211998;
        v114 = 0;
        groupa = dispatch_group_create();
        if (([(PXVideoStabilizeOperation *)self isCancelled]& 1) != 0)
        {
          v15 = 0;
LABEL_76:

          _Block_object_dispose(&v109, 8);
          _Block_object_dispose(&v115, 8);

          _Block_object_dispose(&v121, 8);
          _Block_object_dispose(&buf, 8);

          goto LABEL_77;
        }

        if (v8)
        {
          (v8)[2](v8, @"Rendering", 0.9);
        }

        v77 = [objc_alloc(MEMORY[0x1E69BE658]) initWithEditSource:v6];
        [(PXVideoStabilizeOperation *)self setRenderer:v77];
        [v77 setCompositionController:v11];
        if (v83 || (-[PXVideoProcessingOperation spec](self, "spec"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 abortIfStabilizationFails], v37, (v38 & 1) == 0))
        {
          v101[0] = MEMORY[0x1E69E9820];
          v101[1] = 3221225472;
          v101[2] = __46__PXVideoStabilizeOperation_performProcessing__block_invoke;
          v101[3] = &unk_1E77457D8;
          v108 = v85;
          v102 = v83;
          v39 = v88;
          v106 = v130;
          v107 = v131;
          v103 = v39;
          v104 = self;
          v105 = v80;
          [v77 applySourceChangesToCompositionSynchronously:v11 source:v6 withBlock:v101];
        }

        v40 = [(PXVideoProcessingOperation *)self spec];
        v86 = [v40 outputURL];

        if (!v86)
        {
          dispatch_group_enter(groupa);
          v50 = [v84 properties];
          v51 = [v50 size];
          v52 = [v84 properties];
          [v52 size];
          v54 = v53;
          v91[0] = MEMORY[0x1E69E9820];
          v91[1] = 3221225472;
          v91[2] = __46__PXVideoStabilizeOperation_performProcessing__block_invoke_2_29;
          v91[3] = &unk_1E7745828;
          p_buf = &buf;
          v94 = &v121;
          v95 = &v115;
          v96 = &v109;
          v92 = groupa;
          [v77 renderVideoWithTargetSize:0 contentMode:@"PXVideoStabilizeOperation-video" name:v91 completion:{v51, v54}];

          v41 = v92;
LABEL_60:

          dispatch_group_wait(groupa, 0xFFFFFFFFFFFFFFFFLL);
          if (v8)
          {
            (v8)[2](v8, @"Finished!", 1.0);
          }

          if (!*(*(&buf + 1) + 40))
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v134 = 138412290;
              v135 = v14;
              _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error encountered rendering stabilized video: %@", v134, 0xCu);
            }

            v55 = v110[5];

            v14 = v55;
          }

          v56 = [(PXVideoProcessingOperation *)self spec];
          [(_PXVideoStabilizeResult *)v89 setSpec:v56];

          [(_PXVideoStabilizeResult *)v89 setOutputVideoAsset:*(*(&buf + 1) + 40)];
          [(_PXVideoStabilizeResult *)v89 setOutputVideoComposition:v122[5]];
          [(_PXVideoStabilizeResult *)v89 setOutputAudioMix:v116[5]];
          if (v83)
          {
            v57 = v129;
          }

          else
          {
            v57 = 4;
          }

          [(_PXVideoStabilizeResult *)v89 setAnalysisType:v57];
          [(_PXVideoStabilizeResult *)v89 setError:v14];
          v58 = [v83 rawHomographies];
          [(_PXVideoStabilizeResult *)v89 setStabilizationRecipe:v58];

          v59 = [(PXVideoProcessingOperation *)self spec];
          v60 = [v59 recipeSource];
          v61 = [v60 debugInfo];
          [(_PXVideoStabilizeResult *)v89 setDebugInfo:v61];

          v62 = [(PXVideoProcessingOperation *)self spec];
          v63 = [v62 debugInfoOutputURL];

          if (v63)
          {
            v64 = [(_PXVideoStabilizeResult *)v89 dictionaryRepresentation];
            v90 = 0;
            v65 = [v64 writeToURL:v63 error:&v90];
            v66 = v90;

            if ((v65 & 1) == 0)
            {
              v67 = PLUIGetLog();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                *v134 = 138412546;
                v135 = self;
                v136 = 2112;
                v137 = v66;
                _os_log_impl(&dword_1A3C1C000, v67, OS_LOG_TYPE_ERROR, "%@: Unable to write debug plist to disk. Error: %@", v134, 0x16u);
              }
            }
          }

          v15 = v89;

          goto LABEL_76;
        }

        v41 = [MEMORY[0x1E696AC08] defaultManager];
        v42 = [(PXVideoStabilizeOperation *)v86 path];
        v43 = [v41 fileExistsAtPath:v42];

        if (v43)
        {
          v44 = [MEMORY[0x1E696AC08] defaultManager];
          v100 = 0;
          v45 = [v44 removeItemAtURL:v86 error:&v100];
          v46 = v100;

          if ((v45 & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v134 = 138412546;
              v135 = v86;
              v136 = 2112;
              v137 = v46;
              _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error encountered deleting existing file before exporting to %@: %@", v134, 0x16u);
            }

            v49 = v110[5];
            v110[5] = v46;
            goto LABEL_59;
          }
        }

        dispatch_group_enter(groupa);
        v47 = *MEMORY[0x1E69872E0];
        v97[0] = MEMORY[0x1E69E9820];
        v97[1] = 3221225472;
        v97[2] = __46__PXVideoStabilizeOperation_performProcessing__block_invoke_24;
        v97[3] = &unk_1E7745800;
        v99 = &v109;
        v98 = groupa;
        v48 = [v77 exportVideoToURL:v86 preset:v47 livePhotoPairingIdentifier:0 completion:v97];
        v49 = v98;
LABEL_59:

        goto LABEL_60;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v33;
        _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error encountered loading stabilization recipe: %@", &buf, 0xCu);
      }

      v33 = v33;

LABEL_40:
      v83 = 0;
      v14 = v33;
      goto LABEL_41;
    }

    v71 = [MEMORY[0x1E696AAA8] currentHandler];
    v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<PIVideoStabilizeResult>  _Nullable SOFT_LINKED_PIVideoStabilizeResultFromHomographies(NSDictionary *__strong, NUPixelSize, NSError *__autoreleasing *)"}];
    [v71 handleFailureInFunction:v72 file:@"PXVideoStabilizeOperation.m" lineNumber:38 description:{@"%s", dlerror()}];

LABEL_83:
    __break(1u);
  }

  v14 = 0;
  v15 = 0;
LABEL_77:

  v13 = v81;
LABEL_78:

  return v15;
}

void __46__PXVideoStabilizeOperation_performProcessing__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 96);
  if (v4 == 1)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = [v5 keyframes];
      if ([v6 count])
      {
        v7 = *(a1 + 32);
        if (v7)
        {
          [v7 stabCropRect];
        }

        else
        {
          memset(&time1, 0, 32);
        }

        IsEmpty = NUPixelRectIsEmpty();

        if ((IsEmpty & 1) == 0)
        {
          v9 = [*(a1 + 40) PIVideoStabilizeAdjustmentKey];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __46__PXVideoStabilizeOperation_performProcessing__block_invoke_2;
          v44[3] = &unk_1E7745730;
          v45 = *(a1 + 32);
          v46 = 1;
          [v3 modifyAdjustmentWithKey:v9 modificationBlock:v44];
        }
      }

      else
      {
      }
    }

    v4 = *(a1 + 96);
  }

  if (!v4 || !*(a1 + 32))
  {
    v10 = *(a1 + 80);
    *&time1.start.value = *(a1 + 64);
    *&time1.start.epoch = v10;
    if ((NUPixelRectIsEmpty() & 1) == 0)
    {
      v11 = [*(a1 + 40) PICropAdjustmentKey];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __46__PXVideoStabilizeOperation_performProcessing__block_invoke_3;
      v41[3] = &__block_descriptor_64_e36_v16__0__PICropAdjustmentController_8l;
      v12 = *(a1 + 80);
      v42 = *(a1 + 64);
      v43 = v12;
      [v3 modifyAdjustmentWithKey:v11 modificationBlock:v41];
    }
  }

  v13 = [*(a1 + 48) spec];
  v14 = [v13 wantsAudio];

  if ((v14 & 1) == 0)
  {
    v15 = [*(a1 + 40) PIMuteAdjustmentKey];
    [v3 modifyAdjustmentWithKey:v15 modificationBlock:&__block_literal_global_212013];
  }

  memset(&v40, 0, sizeof(v40));
  v16 = [*(a1 + 48) spec];
  v17 = v16;
  if (v16)
  {
    [v16 crossfadeDuration];
  }

  else
  {
    memset(&v40, 0, sizeof(v40));
  }

  memset(&v39, 0, sizeof(v39));
  v18 = [*(a1 + 48) spec];
  v19 = v18;
  if (v18)
  {
    [v18 startTime];
  }

  else
  {
    memset(&v39, 0, sizeof(v39));
  }

  if ((v40.flags & 0x1D) == 1 && (time1.start = v40, v20 = MEMORY[0x1E6960CC0], *&time2.start.value = *MEMORY[0x1E6960CC0], time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time1.start, &time2.start) >= 1))
  {
    memset(&time1, 0, sizeof(time1));
    v21 = [*(a1 + 48) spec];
    v22 = v21;
    if (v21)
    {
      [v21 timeRange];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    if ((time1.start.flags & 1) == 0 || (time1.duration.flags & 1) == 0 || time1.duration.epoch || time1.duration.value < 0)
    {
      v25 = *(a1 + 56);
      if (v25)
      {
        [v25 duration];
      }

      else
      {
        memset(&time2, 0, 24);
      }

      v38 = time2.start;
      *&start.start.value = *v20;
      start.start.epoch = *(v20 + 16);
      duration = time2.start;
      CMTimeRangeMake(&time2, &start.start, &duration);
      time1 = time2;
    }

    else
    {
      v38 = time1.duration;
    }

    time2.start = v38;
    CMTimeMultiplyByRatio(&start.start, &time2.start, 1, 2);
    duration = v40;
    CMTimeMinimum(&time2.start, &duration, &start.start);
    v40 = time2.start;
    memset(&time2, 0, sizeof(time2));
    *&start.start.value = *&time1.start.value;
    start.start.epoch = time1.start.epoch;
    rhs = v40;
    CMTimeAdd(&duration, &start.start, &rhs);
    start = time1;
    CMTimeRangeGetEnd(&rhs, &start);
    CMTimeRangeFromTimeToTime(&time2, &duration, &rhs);
    rhs = v39;
    start = time2;
    CMTimeClampToRange(&duration, &rhs, &start);
    v39 = duration;
    v23 = [*(a1 + 40) PIVideoCrossfadeLoopAdjustmentKey];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __46__PXVideoStabilizeOperation_performProcessing__block_invoke_5;
    v29 = &__block_descriptor_128_e50_v16__0__PIVideoCrossfadeLoopAdjustmentController_8l;
    v30 = v40;
    v31 = v39;
    v32 = time1;
    v24 = &v26;
  }

  else
  {
    v23 = [*(a1 + 40) PIVideoCrossfadeLoopAdjustmentKey];
    v24 = &__block_literal_global_21_212014;
  }

  [v3 modifyAdjustmentWithKey:v23 modificationBlock:{v24, v26, v27, v28, v29, *&v30.value, v30.epoch, *&v31.value, v31.epoch, *&v32.start.value, *&v32.start.epoch, *&v32.duration.timescale}];
}

void __46__PXVideoStabilizeOperation_performProcessing__block_invoke_24(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __46__PXVideoStabilizeOperation_performProcessing__block_invoke_2_29(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v9;
  v24 = v9;

  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v10;
  v17 = v10;

  v18 = *(*(a1 + 56) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v11;
  v20 = v11;

  v21 = *(*(a1 + 64) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v12;
  v23 = v12;

  dispatch_group_leave(*(a1 + 32));
}

void __46__PXVideoStabilizeOperation_performProcessing__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) keyframes];
  [v3 setKeyframes:v4];

  v5 = *(a1 + 32);
  if (v5)
  {
    [v5 stabCropRect];
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v6[0] = v7;
  v6[1] = v8;
  [v3 setStabCropRect:v6];
  [v3 setEnabled:*(a1 + 40)];
}

void __46__PXVideoStabilizeOperation_performProcessing__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v2 = a2;
  NUPixelRectToCGRect();
  [v2 setCropRect:{v3, v4}];
}

void __46__PXVideoStabilizeOperation_performProcessing__block_invoke_5(uint64_t a1, void *a2)
{
  v5 = *(a1 + 32);
  *&v6 = *(a1 + 48);
  v3 = a2;
  [v3 setCrossfadeDuration:&v5];
  v5 = *(a1 + 56);
  *&v6 = *(a1 + 72);
  [v3 setStartTime:&v5];
  v4 = *(a1 + 96);
  v5 = *(a1 + 80);
  v6 = v4;
  v7 = *(a1 + 112);
  [v3 setLoopTimeRange:&v5];
  [v3 setEnabled:1];
}

void __46__PXVideoStabilizeOperation_performProcessing__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6960CC0];
  v5 = *MEMORY[0x1E6960CC0];
  *&v6 = *(MEMORY[0x1E6960CC0] + 16);
  v3 = a2;
  [v3 setCrossfadeDuration:&v5];
  v5 = *v2;
  *&v6 = *(v2 + 2);
  [v3 setStartTime:&v5];
  v4 = *(MEMORY[0x1E6960CA8] + 16);
  v5 = *MEMORY[0x1E6960CA8];
  v6 = v4;
  v7 = *(MEMORY[0x1E6960CA8] + 32);
  [v3 setLoopTimeRange:&v5];
  [v3 setEnabled:0];
}

- (PXVideoStabilizeOperation)initWithSpec:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXVideoStabilizeOperation;
  result = [(PXVideoProcessingOperation *)&v4 initWithSpec:a3];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end