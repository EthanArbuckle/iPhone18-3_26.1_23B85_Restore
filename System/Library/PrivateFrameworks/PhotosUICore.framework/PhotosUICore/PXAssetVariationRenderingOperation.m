@interface PXAssetVariationRenderingOperation
- (CGSize)targetSize;
- (PXAssetVariationRenderingOperation)init;
- (PXAssetVariationRenderingOperation)initWithEditSource:(id)a3 variationType:(int64_t)a4 analysisResult:(id)a5 baseCompositionController:(id)a6 outputImageURL:(id)a7 outputVideoURL:(id)a8 targetSize:(CGSize)a9 renderAllResources:(BOOL)a10;
- (void)_incrementProgressWithStartDate:(id)a3;
- (void)_timeout;
- (void)cancel;
- (void)main;
@end

@implementation PXAssetVariationRenderingOperation

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_incrementProgressWithStartDate:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PXAssetVariationRenderingOperation__incrementProgressWithStartDate___block_invoke;
  block[3] = &unk_1E774B248;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __70__PXAssetVariationRenderingOperation__incrementProgressWithStartDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained progress];
    v4 = [MEMORY[0x1E695DF00] date];
    [v4 timeIntervalSinceDate:*(a1 + 32)];
    v6 = v5;

    if (v6 + v6 <= 1.0)
    {
      v7 = v6 + v6;
    }

    else
    {
      v7 = 1.0;
    }

    [v3 setCompletedUnitCount:{(v7 * objc_msgSend(v3, "totalUnitCount"))}];
    [v8 _incrementProgressWithStartDate:*(a1 + 32)];

    WeakRetained = v8;
  }
}

- (void)main
{
  v165[1] = *MEMORY[0x1E69E9840];
  kdebug_trace();
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 20000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PXAssetVariationRenderingOperation_main__block_invoke;
  block[3] = &unk_1E774C318;
  objc_copyWeak(&v150, &location);
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
  v4 = [(PXAssetVariationRenderingOperation *)self variationType];
  v81 = [(PXAssetVariationRenderingOperation *)self baseCompositionController];
  v5 = [(PXAssetVariationRenderingOperation *)self editSource];
  v77 = [(PXAssetVariationRenderingOperation *)self outputImageURL];
  v79 = [(PXAssetVariationRenderingOperation *)self outputVideoURL];
  v6 = [(PXAssetVariationRenderingOperation *)self analysisResult];
  [(PXAssetVariationRenderingOperation *)self targetSize];
  v8 = v7;
  v10 = v9;
  v82 = [MEMORY[0x1E695DF00] date];
  v78 = [MEMORY[0x1E69BE360] adjustmentConstants];
  v11 = [(PXAssetVariationRenderingOperation *)self startHandler];

  if (v11)
  {
    v12 = [(PXAssetVariationRenderingOperation *)self startHandler];
    v12[2]();
  }

  [(PXAssetVariationRenderingOperation *)self _incrementProgressWithStartDate:v82];
  v145 = 0;
  v146 = &v145;
  v147 = 0x2020000000;
  v148 = 1;
  v139 = 0;
  v140 = &v139;
  v141 = 0x3032000000;
  v142 = __Block_byref_object_copy__57391;
  v143 = __Block_byref_object_dispose__57392;
  v144 = 0;
  v13 = [objc_alloc(MEMORY[0x1E69BE658]) initWithEditSource:v5 renderPriority:2];
  v14 = [v81 copy];
  v136[0] = MEMORY[0x1E69E9820];
  v136[1] = 3221225472;
  v136[2] = __42__PXAssetVariationRenderingOperation_main__block_invoke_28;
  v136[3] = &unk_1E7733300;
  v138 = v4;
  v76 = v6;
  v137 = v76;
  [v13 applySourceChangesToCompositionSynchronously:v14 source:v5 withBlock:v136];
  objc_storeStrong(&self->_adjustedCompositionController, v14);
  [v13 setCompositionController:self->_adjustedCompositionController];
  v130 = 0;
  v131 = &v130;
  v132 = 0x3032000000;
  v133 = __Block_byref_object_copy__57391;
  v134 = __Block_byref_object_dispose__57392;
  v135 = 0;
  v124 = 0;
  v125 = &v124;
  v126 = 0x3032000000;
  v127 = __Block_byref_object_copy__57391;
  v128 = __Block_byref_object_dispose__57392;
  v129 = 0;
  v15 = [MEMORY[0x1E696AFB0] UUID];
  v80 = [v15 UUIDString];

  v16 = dispatch_group_create();
  if ((v4 - 1) >= 2 && ![(PXAssetVariationRenderingOperation *)self renderAllResources])
  {
    goto LABEL_19;
  }

  v17 = +[PXAssetVariationsSettings sharedInstance];
  if ([v17 useLiveRenderedPreviews])
  {
    v18 = [(PXAssetVariationRenderingOperation *)self renderAllResources];

    if (!v18)
    {
      dispatch_group_enter(v16);
      v122[0] = MEMORY[0x1E69E9820];
      v122[1] = 3221225472;
      v122[2] = __42__PXAssetVariationRenderingOperation_main__block_invoke_2;
      v122[3] = &unk_1E7745828;
      v123[1] = &v145;
      v123[2] = &v130;
      v123[3] = &v124;
      v123[4] = &v139;
      v19 = v16;
      v123[0] = v19;
      [v13 renderVideoWithTargetSize:0 contentMode:@"PXAssetVariationRenderingOperation-renderVideo" name:v122 completion:{v8, v10}];
      v20 = dispatch_time(0, 20000000000);
      if (dispatch_group_wait(v19, v20))
      {
        *(v146 + 24) = 0;
        v21 = MEMORY[0x1E696ABC0];
        v164 = *MEMORY[0x1E696A578];
        v165[0] = @"Video rendering timed out.";
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v165 forKeys:&v164 count:1];
        v23 = [v21 errorWithDomain:@"PXAssetVariationRenderingOperationErrorDomain" code:0 userInfo:v22];
        v24 = v140[5];
        v140[5] = v23;
      }

      objc_storeStrong(&self->_outputAVAsset, v131[5]);
      v25 = v123;
      v26 = v125[5];
      outputVideoComposition = self->_outputVideoComposition;
      self->_outputVideoComposition = v26;
      goto LABEL_13;
    }
  }

  else
  {
  }

  dispatch_group_enter(v16);
  v28 = *MEMORY[0x1E69872E0];
  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = __42__PXAssetVariationRenderingOperation_main__block_invoke_3;
  v120[3] = &unk_1E7733328;
  v121[1] = &v145;
  v121[2] = &v139;
  v29 = v16;
  v121[0] = v29;
  v30 = [v13 exportVideoToURL:v79 preset:v28 livePhotoPairingIdentifier:v80 completion:v120];
  v25 = v121;
  v31 = dispatch_time(0, 20000000000);
  if (dispatch_group_wait(v29, v31))
  {
    *(v146 + 24) = 0;
    v32 = MEMORY[0x1E696ABC0];
    v162 = *MEMORY[0x1E696A578];
    v163 = @"Video rendering timed out.";
    outputVideoComposition = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
    v33 = [v32 errorWithDomain:@"PXAssetVariationRenderingOperationErrorDomain" code:0 userInfo:outputVideoComposition];
    v34 = v140[5];
    v140[5] = v33;

LABEL_13:
  }

  if (*(v146 + 24) == 1 && ![(PXAssetVariationRenderingOperation *)self isCancelled])
  {
    if ((v4 - 3) >= 0xFFFFFFFFFFFFFFFELL && ![(PXAssetVariationRenderingOperation *)self renderAllResources])
    {
LABEL_45:
      self->_succeeded = *(v146 + 24);
      objc_storeStrong(&self->_error, v140[5]);
      v70 = [MEMORY[0x1E695DF00] date];
      [v70 timeIntervalSinceDate:v82];
      v72 = v71;

      v73 = [MEMORY[0x1E696AD98] numberWithDouble:v72];
      duration = self->_duration;
      self->_duration = v73;

      [(NSProgress *)self->_progress setCompletedUnitCount:[(NSProgress *)self->_progress totalUnitCount]];
      v75 = self;
      kdebug_trace();

      goto LABEL_46;
    }

LABEL_19:
    if (self->_variationType == 3 && [(PXAssetVariationRenderingOperation *)self renderAllResources])
    {
      dispatch_group_enter(v16);
      v114 = 0;
      v115 = &v114;
      v116 = 0x3032000000;
      v117 = __Block_byref_object_copy__57391;
      v118 = __Block_byref_object_dispose__57392;
      v119 = 0;
      v108 = 0;
      v109 = &v108;
      v110 = 0x3032000000;
      v111 = __Block_byref_object_copy__57391;
      v112 = __Block_byref_object_dispose__57392;
      v113 = 0;
      v104 = 0;
      v105 = &v104;
      v106 = 0x2020000000;
      v107 = 0;
      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 3221225472;
      v99[2] = __42__PXAssetVariationRenderingOperation_main__block_invoke_4;
      v99[3] = &unk_1E7733350;
      v101 = &v104;
      v102 = &v114;
      v103 = &v108;
      v35 = v16;
      v100 = v35;
      [v13 calculateLongExposureFusionParametersWithCompletionHandler:v99];
      v36 = dispatch_time(0, 20000000000);
      if (dispatch_group_wait(v35, v36))
      {
        *(v146 + 24) = 0;
        v37 = MEMORY[0x1E696ABC0];
        v160 = *MEMORY[0x1E696A578];
        v161 = @"Long exposure fusion calculation timed out.";
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
        v39 = [v37 errorWithDomain:@"PXAssetVariationRenderingOperationErrorDomain" code:0 userInfo:v38];
        v40 = v140[5];
        v140[5] = v39;
      }

      if (v105[3])
      {
        if ([v115[5] count])
        {
          v41 = [v78 PIHighResFusionAdjustmentKey];
          v98[0] = MEMORY[0x1E69E9820];
          v98[1] = 3221225472;
          v98[2] = __42__PXAssetVariationRenderingOperation_main__block_invoke_5;
          v98[3] = &unk_1E7733378;
          v98[4] = &v114;
          [v81 modifyAdjustmentWithKey:v41 modificationBlock:v98];
        }

        dispatch_group_enter(v35);
        v94 = 0;
        v95 = &v94;
        v96 = 0x2020000000;
        v97 = 0;
        v90[0] = MEMORY[0x1E69E9820];
        v90[1] = 3221225472;
        v90[2] = __42__PXAssetVariationRenderingOperation_main__block_invoke_6;
        v90[3] = &unk_1E77333A0;
        v93 = &v94;
        v91 = v77;
        v42 = v35;
        v92 = v42;
        [v13 generateJPEGImageDataWithCompressionQuality:v80 livePhotoPairingIdentifier:v90 completionHandler:0.899999976];
        v43 = dispatch_time(0, 20000000000);
        if (dispatch_group_wait(v42, v43))
        {
          *(v146 + 24) = 0;
          v44 = MEMORY[0x1E696ABC0];
          v158 = *MEMORY[0x1E696A578];
          v159 = @"Long exposure fusion rendering timed out.";
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
          v46 = [v44 errorWithDomain:@"PXAssetVariationRenderingOperationErrorDomain" code:0 userInfo:v45];
          v47 = v140[5];
          v140[5] = v46;
        }

        if ((v95[3] & 1) == 0)
        {
          *(v146 + 24) = 0;
          v48 = MEMORY[0x1E696ABC0];
          v156 = *MEMORY[0x1E696A578];
          v157 = @"Long exposure fusion rendering failed.";
          v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
          v50 = [v48 errorWithDomain:@"PXAssetVariationRenderingOperationErrorDomain" code:0 userInfo:v49];
          v51 = v140[5];
          v140[5] = v50;
        }

        _Block_object_dispose(&v94, 8);
      }

      else
      {
        v66 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v66 setObject:@"Long exposure fusion calculation failed." forKeyedSubscript:*MEMORY[0x1E696A578]];
        v67 = v109[5];
        if (v67)
        {
          [v66 setObject:v67 forKeyedSubscript:*MEMORY[0x1E696AA08]];
        }

        v68 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXAssetVariationRenderingOperationErrorDomain" code:0 userInfo:v66];
        v69 = v140[5];
        v140[5] = v68;
      }

      _Block_object_dispose(&v104, 8);
      _Block_object_dispose(&v108, 8);

      _Block_object_dispose(&v114, 8);
    }

    else
    {
      v52 = [v78 PIHighResFusionAdjustmentKey];
      [v81 removeAdjustmentWithKey:v52];

      if (!v4)
      {
        v53 = [v78 PIAutoLoopAdjustmentKey];
        [v81 removeAdjustmentWithKey:v53];
      }

      v114 = 0;
      v115 = &v114;
      v116 = 0x2020000000;
      LOBYTE(v117) = 0;
      v54 = [(PXAssetVariationRenderingOperation *)self renderAllResources];
      dispatch_group_enter(v16);
      if (v54)
      {
        v86[0] = MEMORY[0x1E69E9820];
        v86[1] = 3221225472;
        v86[2] = __42__PXAssetVariationRenderingOperation_main__block_invoke_7;
        v86[3] = &unk_1E77333A0;
        v89 = &v114;
        v87 = v77;
        v88 = v16;
        [v13 generateJPEGImageDataWithCompressionQuality:v80 livePhotoPairingIdentifier:v86 completionHandler:0.899999976];
      }

      else
      {
        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v83[2] = __42__PXAssetVariationRenderingOperation_main__block_invoke_8;
        v83[3] = &unk_1E77333C8;
        v85 = &v114;
        v83[4] = self;
        v84 = v16;
        [v13 renderImageWithTargetSize:0 contentMode:@"PXAssetVariationRenderingOperation-renderImage" name:v83 completion:{v8, v10}];
      }

      v55 = dispatch_time(0, 20000000000);
      v56 = dispatch_group_wait(v16, v55);
      v57 = MEMORY[0x1E696A578];
      if (v56)
      {
        *(v146 + 24) = 0;
        v58 = MEMORY[0x1E696ABC0];
        v154 = *v57;
        v155 = @"Image rendering timed out.";
        v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
        v60 = [v58 errorWithDomain:@"PXAssetVariationRenderingOperationErrorDomain" code:0 userInfo:v59];
        v61 = v140[5];
        v140[5] = v60;
      }

      if ((v115[3] & 1) == 0)
      {
        v62 = MEMORY[0x1E696ABC0];
        v152 = *v57;
        v153 = @"Image rendering failed.";
        v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
        v64 = [v62 errorWithDomain:@"PXAssetVariationRenderingOperationErrorDomain" code:0 userInfo:v63];
        v65 = v140[5];
        v140[5] = v64;
      }

      _Block_object_dispose(&v114, 8);
    }

    goto LABEL_45;
  }

  objc_storeStrong(&self->_error, v140[5]);
LABEL_46:

  _Block_object_dispose(&v124, 8);
  _Block_object_dispose(&v130, 8);

  _Block_object_dispose(&v139, 8);
  _Block_object_dispose(&v145, 8);

  objc_destroyWeak(&v150);
  objc_destroyWeak(&location);
}

void __42__PXAssetVariationRenderingOperation_main__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timeout];
}

void __42__PXAssetVariationRenderingOperation_main__block_invoke_28(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69BE360];
  v4 = *(a1 + 40);
  v5 = a2;
  [v3 compositionController:v5 applyAssetVariation:v4 withRecipe:*(a1 + 32)];
}

void __42__PXAssetVariationRenderingOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  *(*(*(a1 + 40) + 8) + 24) &= v9 != 0;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (v11)
  {
    v12 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696AA08];
    v18[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = [v12 errorWithDomain:@"PXAssetVariationRenderingOperationErrorDomain" code:0 userInfo:v13];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __42__PXAssetVariationRenderingOperation_main__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  if (v5)
  {
    v7 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696AA08];
    v13[0] = v5;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v7 errorWithDomain:@"PXAssetVariationRenderingOperationErrorDomain" code:0 userInfo:v8];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __42__PXAssetVariationRenderingOperation_main__block_invoke_4(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  dispatch_group_leave(*(a1 + 32));
}

void __42__PXAssetVariationRenderingOperation_main__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = a2;
  [v3 setAlignment:v2];
  [v3 setEnabled:1];
}

void __42__PXAssetVariationRenderingOperation_main__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) = v3 != 0;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v3 writeToURL:*(a1 + 32) atomically:1];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __42__PXAssetVariationRenderingOperation_main__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) = v3 != 0;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v3 writeToURL:*(a1 + 32) atomically:1];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __42__PXAssetVariationRenderingOperation_main__block_invoke_8(void *a1, uint64_t a2)
{
  *(*(a1[6] + 8) + 24) = a2 != 0;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:a2];
    v4 = a1[4];
    v5 = *(v4 + 304);
    *(v4 + 304) = v3;
  }

  v6 = a1[5];

  dispatch_group_leave(v6);
}

- (void)cancel
{
  if (([(PXAssetVariationRenderingOperation *)self isFinished]& 1) == 0)
  {
    kdebug_trace();
  }

  v3.receiver = self;
  v3.super_class = PXAssetVariationRenderingOperation;
  [(PXAssetVariationRenderingOperation *)&v3 cancel];
}

- (void)_timeout
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (([(PXAssetVariationRenderingOperation *)self isFinished]& 1) == 0)
  {
    self->_succeeded = 0;
    v3 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A578];
    v8[0] = @"Rendering timed out";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v5 = [v3 errorWithDomain:@"PXAssetVariationRenderingOperationErrorDomain" code:0 userInfo:v4];
    error = self->_error;
    self->_error = v5;

    [(PXAssetVariationRenderingOperation *)self cancel];
  }
}

- (PXAssetVariationRenderingOperation)initWithEditSource:(id)a3 variationType:(int64_t)a4 analysisResult:(id)a5 baseCompositionController:(id)a6 outputImageURL:(id)a7 outputVideoURL:(id)a8 targetSize:(CGSize)a9 renderAllResources:(BOOL)a10
{
  height = a9.height;
  width = a9.width;
  v34 = a3;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  if (width <= 0.0 || height <= 0.0)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PXAssetVariationRenderingOperation.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"targetSize.width > 0 && targetSize.height > 0"}];
  }

  v38.receiver = self;
  v38.super_class = PXAssetVariationRenderingOperation;
  v24 = [(PXAssetVariationRenderingOperation *)&v38 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_editSource, a3);
    v25->_variationType = a4;
    v26 = [v20 copy];
    analysisResult = v25->_analysisResult;
    v25->_analysisResult = v26;

    v28 = [v21 copy];
    baseCompositionController = v25->_baseCompositionController;
    v25->_baseCompositionController = v28;

    objc_storeStrong(&v25->_outputImageURL, a7);
    v25->_targetSize.width = width;
    v25->_targetSize.height = height;
    objc_storeStrong(&v25->_outputVideoURL, a8);
    v25->_renderAllResources = a10;
    v30 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:50];
    progress = v25->_progress;
    v25->_progress = v30;

    objc_initWeak(&location, v25);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __172__PXAssetVariationRenderingOperation_initWithEditSource_variationType_analysisResult_baseCompositionController_outputImageURL_outputVideoURL_targetSize_renderAllResources___block_invoke;
    v35[3] = &unk_1E774C318;
    objc_copyWeak(&v36, &location);
    [(NSProgress *)v25->_progress setCancellationHandler:v35];
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  return v25;
}

void __172__PXAssetVariationRenderingOperation_initWithEditSource_variationType_analysisResult_baseCompositionController_outputImageURL_outputVideoURL_targetSize_renderAllResources___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

- (PXAssetVariationRenderingOperation)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAssetVariationRenderingOperation.m" lineNumber:66 description:{@"%s is not available as initializer", "-[PXAssetVariationRenderingOperation init]"}];

  abort();
}

@end