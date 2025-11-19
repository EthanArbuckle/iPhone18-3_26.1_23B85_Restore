@interface PUTileViewAnimator
- (PUTileViewAnimator)init;
- (void)_performAnimations:(id)a3 withOptions:(id)a4;
- (void)animateTileController:(id)a3 toLayoutInfo:(id)a4 withOptions:(id)a5 completionHandler:(id)a6;
- (void)prepareTileControllerForAnimation:(id)a3 withInitialLayoutInfo:(id)a4;
- (void)transition:(id)a3 didComplete:(BOOL)a4;
@end

@implementation PUTileViewAnimator

- (void)transition:(id)a3 didComplete:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v19.receiver = self;
  v19.super_class = PUTileViewAnimator;
  [(PUTileAnimator *)&v19 transition:v6 didComplete:v4];
  if (v4)
  {
    v7 = [(PUTileViewAnimator *)self _synchronizedAnimationGroupsByTransition];
    v8 = [v7 objectForKey:v6];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * v13++) finishImmediately];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v11);
    }
  }

  v14 = [(PUTileViewAnimator *)self _synchronizedAnimationGroupsByTransition];
  [v14 removeObjectForKey:v6];
}

- (void)_performAnimations:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUTileAnimator *)self currentTransition];
  if (v8 && ([v7 isSynchronizedWithTransition] & 1) != 0)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__PUTileViewAnimator__performAnimations_withOptions___block_invoke;
    v13[3] = &unk_1E7B80C88;
    v14 = v6;
    v9 = [PUAnimationGroup animationGroupWithAnimations:v13];
    if (v9)
    {
      v10 = [(PUTileViewAnimator *)self _synchronizedAnimationGroupsByTransition];
      v11 = [v10 objectForKey:v8];

      if (!v11)
      {
        v11 = [MEMORY[0x1E695DF70] array];
        v12 = [(PUTileViewAnimator *)self _synchronizedAnimationGroupsByTransition];
        [v12 setObject:v11 forKey:v8];
      }

      [v11 addObject:v9];
    }
  }

  else
  {
    v6[2](v6);
  }
}

- (void)animateTileController:(id)a3 toLayoutInfo:(id)a4 withOptions:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v10;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v57 = [MEMORY[0x1E696AAA8] currentHandler];
    [v57 handleFailureInMethod:a2 object:self file:@"PUTileViewAnimator.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"[tileController isKindOfClass:[PUTileViewController class]]"}];
  }

  v15 = [v12 kind];
  [v12 duration];
  v17 = v16;
  [v12 delay];
  v19 = v18;
  v20 = [v12 completionGroup];
  v21 = [v12 shouldFadeOutSnapshotAfterCompletionGroup];
  v22 = [v14 view];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7B80C38;
  v23 = v14;
  v125 = v23;
  v24 = v11;
  v126 = v24;
  v25 = _Block_copy(aBlock);
  if ([v12 highFrameRateReason] && objc_msgSend(MEMORY[0x1E69C44C8], "highFramerateRequiresReasonAndRange"))
  {
    v121[0] = MEMORY[0x1E69E9820];
    v121[1] = 3221225472;
    v121[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_2;
    v121[3] = &unk_1E7B80B48;
    v122 = v12;
    v123 = v25;
    v25 = _Block_copy(v121);
  }

  v116[0] = MEMORY[0x1E69E9820];
  v116[1] = 3221225472;
  v116[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_4;
  v116[3] = &unk_1E7B7E748;
  v26 = v20;
  v117 = v26;
  v27 = v13;
  v119 = v27;
  v120 = v21;
  v28 = v22;
  v118 = v28;
  v29 = _Block_copy(v116);
  v58 = v27;
  v59 = v26;
  if (v15 <= 1000)
  {
    if (v15)
    {
      if (v15 != 1000)
      {
        goto LABEL_17;
      }

      [v12 springDampingRatio];
      v34 = v33;
      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 3221225472;
      v104[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_9;
      v104[3] = &unk_1E7B7E798;
      v35 = v28;
      v105 = v35;
      v106 = v17;
      v107 = v19;
      v108 = v34;
      v109 = 6;
      v36 = _Block_copy(v104);
      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v97[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_10;
      v97[3] = &unk_1E7B7E7C0;
      v98 = v35;
      v100 = v17;
      v101 = v19;
      v102 = v34;
      v103 = 6;
      v99 = v25;
      v32 = _Block_copy(v97);

      v31 = v105;
    }

    else
    {
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_8;
      v110[3] = &unk_1E7B7E770;
      v111 = v28;
      v113 = v17;
      v114 = v19;
      v115 = 6;
      v112 = v25;
      v32 = _Block_copy(v110);

      v36 = 0;
      v31 = v111;
    }
  }

  else
  {
    switch(v15)
    {
      case 1001:
        v93[0] = MEMORY[0x1E69E9820];
        v93[1] = 3221225472;
        v93[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_11;
        v93[3] = &unk_1E7B7E7E8;
        v37 = v28;
        v94 = v37;
        v95 = v19;
        v96 = 6;
        v36 = _Block_copy(v93);
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_12;
        v88[3] = &unk_1E7B7E810;
        v89 = v37;
        v91 = v19;
        v92 = 6;
        v90 = v25;
        v32 = _Block_copy(v88);

        v31 = v94;
        break;
      case 1002:
        [v12 springMass];
        v39 = v38;
        [v12 springStiffness];
        v41 = v40;
        [v12 springDampingRatio];
        v43 = v42 + v42;
        PXFloatSqrt();
        v45 = v43 * v44;
        v46 = [v12 springNumberOfOscillations];
        [MEMORY[0x1E69DD250] pu_springOscillationRootAtIndex:v46 + 1 forMass:v39 stiffness:v41 damping:v45 initialVelocity:0.0];
        v48 = v47;
        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 3221225472;
        v80[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_13;
        v80[3] = &unk_1E7B7E838;
        v49 = v28;
        v81 = v49;
        v82 = v48;
        v83 = v19;
        v84 = 6;
        v85 = v39;
        v86 = v41;
        v87 = v45;
        v36 = _Block_copy(v80);
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_14;
        v71[3] = &unk_1E7B7E860;
        v72 = v49;
        v74 = v48;
        v75 = v19;
        v76 = 6;
        v77 = v39;
        v78 = v41;
        v79 = v45;
        v73 = v25;
        v32 = _Block_copy(v71);

        v31 = v81;
        break;
      case 1003:
        v30 = [v12 customViewAnimatorBlock];
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_15;
        v68[3] = &unk_1E7B7E888;
        v69 = v30;
        v70 = v25;
        v31 = v30;
        v32 = _Block_copy(v68);

LABEL_18:
        v36 = 0;
        break;
      default:
LABEL_17:
        v31 = [MEMORY[0x1E696AAA8] currentHandler];
        v50 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
        [v31 handleFailureInMethod:a2 object:self file:@"PUTileViewAnimator.m" lineNumber:167 description:{@"unknown animation kind %@", v50}];

        v32 = 0;
        goto LABEL_18;
    }
  }

  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_16;
  v61[3] = &unk_1E7B7E900;
  v62 = v12;
  v63 = v23;
  v64 = v24;
  v65 = v29;
  v66 = v36;
  v67 = v32;
  v51 = v12;
  v52 = v29;
  v53 = v36;
  v54 = v23;
  v55 = v24;
  v56 = v32;
  [(PUTileViewAnimator *)self _performAnimations:v61 withOptions:v51];
}

void __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  PXFrameRateRangeTypeGetCAFrameRateRange();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [*(a1 + 32) highFrameRateReason];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_3;
  v13[3] = &unk_1E7B80C88;
  v14 = *(a1 + 40);
  LODWORD(v10) = v4;
  LODWORD(v11) = v6;
  LODWORD(v12) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:v9 updateReason:v13 animations:{v10, v11, v12}];
}

void __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_5;
    block[3] = &unk_1E7B7E720;
    v8 = *(a1 + 56);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    dispatch_group_notify(v2, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }
}

void __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_8(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DD250];
  v7 = *(a1 + 32);
  v4 = MEMORY[0x1E695DEC8];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v7 count:1];
  [v3 pu_animateViews:v6 withDuration:*(a1 + 64) delay:*(a1 + 40) options:v5 animations:*(a1 + 48) completion:{*(a1 + 56), v7, v8}];
}

uint64_t __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_9(double *a1, _OWORD *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17)
{
  v18 = *(a1 + 4);
  v19 = a1[5];
  v20 = a1[6];
  v21 = *(a1 + 7);
  v22 = *(a1 + 8);
  v23 = a2[1];
  v25[0] = *a2;
  v25[1] = v23;
  v25[2] = a2[2];
  return [MEMORY[0x1E69DD250] pu_animateView:v18 toCenter:v25 bounds:v22 transform:a3 withDuration:a4 delay:a5 usingSpringWithDamping:a6 initialVelocity:a7 options:a8 completion:{a9, v19, v20, v21, a15, a16, a17}];
}

void __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_10(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DD250];
  v7 = *(a1 + 32);
  v4 = MEMORY[0x1E695DEC8];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v7 count:1];
  [v3 pu_animateViews:v6 withDuration:*(a1 + 72) delay:*(a1 + 40) usingSpringWithDamping:v5 initialSpringVelocity:*(a1 + 48) options:*(a1 + 56) animations:*(a1 + 64) completion:{0.0, v7, v8}];
}

uint64_t __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_11(double *a1, _OWORD *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17)
{
  v18 = *(a1 + 4);
  v19 = a1[5];
  v20 = *(a1 + 6);
  v21 = a2[1];
  v23[0] = *a2;
  v23[1] = v21;
  v23[2] = a2[2];
  return [MEMORY[0x1E69DD250] pu_animateView:v18 toCenter:v23 bounds:v20 transform:a3 usingDefaultDampedSpringWithDelay:a4 initialVelocity:a5 options:a6 completion:{a7, a8, a9, v19, a15, a16, a17}];
}

void __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_12(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DD250];
  v7 = *(a1 + 32);
  v4 = MEMORY[0x1E695DEC8];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v7 count:1];
  [v3 pu_animateViews:v6 usingDefaultDampedSpringWithDelay:*(a1 + 56) initialSpringVelocity:*(a1 + 40) options:v5 animations:*(a1 + 48) completion:{0.0, v7, v8}];
}

uint64_t __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_13(uint64_t a1, _OWORD *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17)
{
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  v23 = *(a1 + 80);
  v24 = a2[1];
  v26[0] = *a2;
  v26[1] = v24;
  v26[2] = a2[2];
  return [MEMORY[0x1E69DD250] pu_animateView:v18 toCenter:v26 bounds:v21 transform:a3 usingSpringWithDuration:a4 delay:a5 options:a6 mass:a7 stiffness:a8 damping:a9 initialVelocity:v19 completion:{v20, v22, v23, a15, a16, a17}];
}

void __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_14(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DD250];
  v7 = *(a1 + 32);
  v4 = MEMORY[0x1E695DEC8];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v7 count:1];
  [v3 pu_animateViews:v6 usingSpringWithDuration:*(a1 + 64) delay:*(a1 + 40) options:v5 mass:*(a1 + 48) stiffness:*(a1 + 56) damping:*(a1 + 72) initialVelocity:*(a1 + 80) animations:*(a1 + 88) completion:{0.0, v7, v8}];
}

void __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_16(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) initialVelocity];
  v6 = v5;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  if (v5 == 0.0 && v2 == 0.0 && v3 == 0.0 && v4 == 0.0 || (+[PUTilingViewSettings sharedInstance](PUTilingViewSettings, "sharedInstance"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 carryOverVelocities], v10, !v11))
  {
    v30 = *(*(a1 + 72) + 16);

    v30();
  }

  else
  {
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x2020000000;
    v47 = 1;
    v12 = dispatch_group_create();
    dispatch_group_enter(v12);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_17;
    block[3] = &unk_1E7B7E8B0;
    v44 = *(a1 + 56);
    v45 = v46;
    dispatch_group_notify(v12, MEMORY[0x1E69E96A0], block);
    if (*(a1 + 64))
    {
      v13 = [*(a1 + 40) tilingView];
      [*(a1 + 48) center];
      v15 = v14;
      v17 = v16;
      v18 = [*(a1 + 48) coordinateSystem];
      v19 = [v13 contentCoordinateSystem];
      v20 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v18, v19, v15, v17);
      v22 = v21;

      [*(a1 + 48) size];
      v34 = v24;
      v35 = v23;
      v49 = 0u;
      v50 = 0u;
      *buf = 0u;
      v25 = *(a1 + 48);
      if (v25)
      {
        [v25 transform];
      }

      v26 = *MEMORY[0x1E695EFF8];
      v27 = *(MEMORY[0x1E695EFF8] + 8);
      dispatch_group_enter(v12);
      v28 = *(a1 + 64);
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_18;
      v40[3] = &unk_1E7B7E8D8;
      v42 = v46;
      v41 = v12;
      v29 = *(v28 + 16);
      v39[0] = *buf;
      v39[1] = v49;
      v39[2] = v50;
      v29(v28, v39, v40, v20, v22, v26, v27, v35, v34);
    }

    else
    {
      v13 = PLUIGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{x:%0.1f, y:%0.1f, s:%0.3f, r:%0.2f}", *&v6, *&v7, *&v8, *&v9];
        *buf = 138412290;
        *&buf[4] = v31;
        _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_DEFAULT, "initial velocity ignored (%@)", buf, 0xCu);
      }
    }

    v32 = *(a1 + 72);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_28;
    v36[3] = &unk_1E7B7E8D8;
    v38 = v46;
    v33 = v12;
    v37 = v33;
    (*(v32 + 16))(v32, v36);

    _Block_object_dispose(v46, 8);
  }
}

void __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_18(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_28(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) snapshotViewAfterScreenUpdates:0];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }

  if (*(a1 + 48) == 1)
  {
    v4 = [*(a1 + 32) layer];
    v5 = [v4 presentationLayer];

    [v5 frame];
    [v2 setFrame:?];
    if (v5)
    {
      [v5 transform];
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
    }

    v6 = [v2 layer];
    v16[4] = v21;
    v16[5] = v22;
    v16[6] = v23;
    v16[7] = v24;
    v16[0] = v17;
    v16[1] = v18;
    v16[2] = v19;
    v16[3] = v20;
    [v6 setTransform:v16];

    [v5 zPosition];
    v8 = v7;
    v9 = [v2 layer];
    [v9 setZPosition:v8];

    v10 = [*(a1 + 32) superview];
    [v10 insertSubview:v2 aboveSubview:*(a1 + 32)];

    v11 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_6;
    v14[3] = &unk_1E7B80DD0;
    v15 = v2;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __87__PUTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_7;
    v12[3] = &unk_1E7B7F020;
    v13 = v15;
    [v11 animateWithDuration:v14 animations:v12 completion:0.5];
  }
}

- (void)prepareTileControllerForAnimation:(id)a3 withInitialLayoutInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUTileViewAnimator.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"[tileController isKindOfClass:[PUTileViewController class]]"}];
  }

  v9 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUTileViewAnimator.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"[tileViewController isKindOfClass:[PUTileViewController class]]"}];
  }

  [MEMORY[0x1E6979518] begin];
  [v9 removeAllAnimations];
  v10 = MEMORY[0x1E69DD250];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__PUTileViewAnimator_prepareTileControllerForAnimation_withInitialLayoutInfo___block_invoke;
  v15[3] = &unk_1E7B7FE10;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = a2;
  v11 = v9;
  v12 = v8;
  [v10 performWithoutAnimation:v15];
  [MEMORY[0x1E6979518] commit];
}

uint64_t __78__PUTileViewAnimator_prepareTileControllerForAnimation_withInitialLayoutInfo___block_invoke(uint64_t a1)
{
  [*(a1 + 32) center];
  if (!CGFloatIsValid() || (CGFloatIsValid() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"PUTileViewAnimator.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"PUPointIsValid(initialLayoutInfo.center)"}];
  }

  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v2 applyLayoutInfo:v3];
}

- (PUTileViewAnimator)init
{
  v6.receiver = self;
  v6.super_class = PUTileViewAnimator;
  v2 = [(PUTileViewAnimator *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    synchronizedAnimationGroupsByTransition = v2->__synchronizedAnimationGroupsByTransition;
    v2->__synchronizedAnimationGroupsByTransition = v3;
  }

  return v2;
}

@end