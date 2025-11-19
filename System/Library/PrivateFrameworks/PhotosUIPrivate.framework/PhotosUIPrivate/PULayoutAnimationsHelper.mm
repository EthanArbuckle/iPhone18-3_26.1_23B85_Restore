@interface PULayoutAnimationsHelper
+ (double)stackedTransitionAnimationPreferredDurationUsingSpringAnimations:(BOOL)a3;
+ (double)zoomTransitionAnimationPreferredDurationWhenZoomingIn:(BOOL)a3;
+ (id)stackedTransitionAnimationsForReusableView:(id)a3 toLayoutAttributes:(id)a4 shouldUseSpringAnimations:(BOOL)a5;
- (PULayoutAnimationsHelper)initWithSectionedGridLayout:(id)a3;
- (PUSectionedGridLayout)layout;
- (id)_adjustAnimation:(id)a3 forReusableView:(id)a4 toLayoutAttributes:(id)a5;
- (id)_adjustCellAnimation:(id)a3 forReusableView:(id)a4 toLayoutAttributes:(id)a5;
- (id)_adjustRenderedStripAnimation:(id)a3 forReusableView:(id)a4 toLayoutAttributes:(id)a5;
- (id)_adjustSectionHeaderAnimation:(id)a3 forReusableView:(id)a4 toLayoutAttributes:(id)a5;
- (id)_createDefaultZoomingInAnimationForKeyPath:(id)a3 ofReusableView:(id)a4 toLayoutAttributes:(id)a5;
- (id)_createDefaultZoomingOutAnimationForKeyPath:(id)a3 ofReusableView:(id)a4 toLayoutAttributes:(id)a5;
- (id)_defaultAnimationForKeyPath:(id)a3 ofReusableView:(id)a4 toLayoutAttributes:(id)a5;
- (id)animationsForReusableView:(id)a3 toLayoutAttributes:(id)a4;
- (void)_applyDefaultLayoutAttributes:(id)a3 toView:(id)a4;
- (void)_configureAnimationsForReusableView:(id)a3 toLayoutAttributes:(id)a4 withCompletionBlock:(id)a5;
- (void)didFinishLayoutTransitionAnimations:(BOOL)a3 transitionIsAppearing:(BOOL)a4;
@end

@implementation PULayoutAnimationsHelper

- (PUSectionedGridLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

- (void)_applyDefaultLayoutAttributes:(id)a3 toView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E69DD250];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__PULayoutAnimationsHelper__applyDefaultLayoutAttributes_toView___block_invoke;
  v10[3] = &unk_1E7B80C38;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  [v7 performWithoutAnimation:v10];
}

void __65__PULayoutAnimationsHelper__applyDefaultLayoutAttributes_toView___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) center];
  [v2 setCenter:?];
  [*(a1 + 32) bounds];
  v4 = v3;
  v6 = v5;
  [*(a1 + 40) size];
  [*(a1 + 32) setBounds:{v4, v6, v7, v8}];
  v9 = *(a1 + 32);
  [*(a1 + 40) alpha];
  [v9 setAlpha:?];
  v10 = [*(a1 + 32) layer];
  v11 = *(a1 + 40);
  if (v11)
  {
    [v11 transform3D];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  [v10 setTransform:v12];
}

- (void)_configureAnimationsForReusableView:(id)a3 toLayoutAttributes:(id)a4 withCompletionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 layer];
  [v9 center];
  v13 = v12;
  v15 = v14;
  [v8 center];
  v18 = v15 != v17 || v13 != v16;
  if (v18)
  {
    v19 = [(PULayoutAnimationsHelper *)self _defaultAnimationForKeyPath:@"position" ofReusableView:v8 toLayoutAttributes:v9];
    v20 = [(PULayoutAnimationsHelper *)self _adjustAnimation:v19 forReusableView:v8 toLayoutAttributes:v9];

    v21 = objc_alloc_init(MEMORY[0x1E69BE1B0]);
    [v21 setCompletion:v10];
    [v20 setDelegate:v21];

    [v11 addAnimation:v20 forKey:@"positionAnimation"];
  }

  [v9 size];
  v23 = v22;
  v25 = v24;
  [v8 bounds];
  if (v23 != v27 || v25 != v26)
  {
    v28 = [(PULayoutAnimationsHelper *)self _defaultAnimationForKeyPath:@"bounds" ofReusableView:v8 toLayoutAttributes:v9];
    v29 = [(PULayoutAnimationsHelper *)self _adjustAnimation:v28 forReusableView:v8 toLayoutAttributes:v9];

    if (!v18)
    {
      v30 = objc_alloc_init(MEMORY[0x1E69BE1B0]);
      [v30 setCompletion:v10];
      [v29 setDelegate:v30];
    }

    [v11 addAnimation:v29 forKey:@"boundsAnimation"];

    LOBYTE(v18) = 1;
  }

  [v9 alpha];
  v32 = v31;
  [v8 alpha];
  if (v32 != v33)
  {
    v34 = [(PULayoutAnimationsHelper *)self _defaultAnimationForKeyPath:@"opacity" ofReusableView:v8 toLayoutAttributes:v9];
    v35 = [(PULayoutAnimationsHelper *)self _adjustAnimation:v34 forReusableView:v8 toLayoutAttributes:v9];

    if (!v18)
    {
      v36 = objc_alloc_init(MEMORY[0x1E69BE1B0]);
      [v36 setCompletion:v10];
      [v35 setDelegate:v36];
    }

    [v11 addAnimation:v35 forKey:@"opacityAnimation"];

    LOBYTE(v18) = 1;
  }

  if (v9)
  {
    [v9 transform3D];
  }

  else
  {
    memset(&a, 0, sizeof(a));
  }

  v37 = [v8 layer];
  v38 = v37;
  if (v37)
  {
    [v37 transform];
  }

  else
  {
    memset(&b, 0, sizeof(b));
  }

  v39 = CATransform3DEqualToTransform(&a, &b);

  if (!v39)
  {
    v40 = [(PULayoutAnimationsHelper *)self _defaultAnimationForKeyPath:@"transform" ofReusableView:v8 toLayoutAttributes:v9];
    v41 = [(PULayoutAnimationsHelper *)self _adjustAnimation:v40 forReusableView:v8 toLayoutAttributes:v9];

    if (!v18)
    {
      v42 = objc_alloc_init(MEMORY[0x1E69BE1B0]);
      [v42 setCompletion:v10];
      [v41 setDelegate:v42];
    }

    [v11 addAnimation:v41 forKey:@"transformAnimation"];

    LOBYTE(v18) = 1;
  }

  if ([(PULayoutAnimationsHelper *)self shouldAnimateTemporaryImageView])
  {
    if (![v9 representedElementCategory])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v118 = v10;
        v43 = v8;
        v44 = [v43 temporaryPhotoContentView];
        v45 = [v43 transitionFillerView];
        v114 = [v44 layer];
        v111 = v45;
        v108 = [v45 layer];
        v46 = [v43 photoContentView];
        v47 = [v46 contentHelper];
        v48 = [v47 badgeContainerView];
        v110 = [v48 layer];

        WeakRetained = objc_loadWeakRetained(&self->_layout);
        v50 = [WeakRetained transitionZoomingOut];

        v112 = v43;
        v113 = v50;
        if (v44)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v9 exists] & 1) != 0 || !v50)
          {
            v51 = [(PULayoutAnimationsHelper *)self _defaultAnimationForKeyPath:@"opacity" ofReusableView:v43 toLayoutAttributes:v9];
            v52 = MEMORY[0x1E696AD98];
            v53 = [v114 presentationLayer];
            if (v53)
            {
              v54 = [v114 presentationLayer];
              [v54 opacity];
              v55 = [v52 numberWithFloat:?];

              v43 = v112;
            }

            else
            {
              [v114 opacity];
              v55 = [v52 numberWithFloat:?];
            }

            [v51 setFromValue:v55];
            [v51 setRemovedOnCompletion:0];
            [v114 addAnimation:v51 forKey:@"opacity"];
            v56 = MEMORY[0x1E69DD250];
            v129[0] = MEMORY[0x1E69E9820];
            v129[1] = 3221225472;
            v129[2] = __103__PULayoutAnimationsHelper__configureAnimationsForReusableView_toLayoutAttributes_withCompletionBlock___block_invoke;
            v129[3] = &unk_1E7B80DD0;
            v130 = v44;
            [v56 performWithoutAnimation:v129];

            v50 = v113;
          }
        }

        if (v50)
        {
          v57 = 0.275;
        }

        else
        {
          v57 = 0.055;
        }

        UIAnimationDragCoefficient();
        v59 = v58;
        UIAnimationDragCoefficient();
        v61 = v60;
        [v43 fillerEdgeInsets];
        v63 = fabs(v62);
        [v43 bounds];
        if (v63 >= CGRectGetWidth(v133))
        {
          if (v50)
          {
            [PULayoutAnimationsHelper zoomTransitionAnimationPreferredDurationWhenZoomingIn:0];
            v67 = v66;
            UIAnimationDragCoefficient();
            v65 = v67 * v68;
          }

          else
          {
            UIAnimationDragCoefficient();
            v65 = v69 * 0.18;
          }

          v64 = 0.0;
        }

        else
        {
          v64 = v57 * v59;
          v65 = v61 * 0.1;
        }

        v70 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
        v71 = MEMORY[0x1E696AD98];
        [v108 opacity];
        v72 = [v71 numberWithFloat:?];
        [v70 setFromValue:v72];

        [v70 setDuration:v65];
        [v108 convertTime:0 fromLayer:CACurrentMediaTime()];
        [v70 setBeginTime:v64 + v73];
        v107 = *MEMORY[0x1E6979EA0];
        v74 = [MEMORY[0x1E69793D0] functionWithName:?];
        [v70 setTimingFunction:v74];

        v75 = *MEMORY[0x1E69797E0];
        [v70 setFillMode:*MEMORY[0x1E69797E0]];
        [v70 setRemovedOnCompletion:0];
        [v108 addAnimation:v70 forKey:@"opacity"];
        v76 = MEMORY[0x1E69DD250];
        v126[0] = MEMORY[0x1E69E9820];
        v126[1] = 3221225472;
        v126[2] = __103__PULayoutAnimationsHelper__configureAnimationsForReusableView_toLayoutAttributes_withCompletionBlock___block_invoke_2;
        v126[3] = &unk_1E7B7FF98;
        v109 = v108;
        v127 = v109;
        v128 = v113;
        [v76 performWithoutAnimation:v126];
        v77 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
        v78 = MEMORY[0x1E696AD98];
        [v110 opacity];
        v79 = [v78 numberWithFloat:?];
        [v77 setFromValue:v79];

        UIAnimationDragCoefficient();
        v81 = v80;
        v82 = 0.18;
        if (v113)
        {
          v82 = 0.24;
        }

        [v77 setDuration:v82 * v81];
        v83 = [MEMORY[0x1E69793D0] functionWithName:v107];
        [v77 setTimingFunction:v83];

        [v77 setFillMode:v75];
        [v77 setRemovedOnCompletion:0];
        [v110 addAnimation:v77 forKey:@"opacity"];
        v84 = MEMORY[0x1E69DD250];
        v123[0] = MEMORY[0x1E69E9820];
        v123[1] = 3221225472;
        v123[2] = __103__PULayoutAnimationsHelper__configureAnimationsForReusableView_toLayoutAttributes_withCompletionBlock___block_invoke_3;
        v123[3] = &unk_1E7B7FF98;
        v124 = v110;
        v125 = v113;
        v85 = v110;
        [v84 performWithoutAnimation:v123];

        v10 = v118;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v86 = v8;
    v87 = [v86 itemIndexPaths];
    v88 = [v87 count];
    v89 = [v86 numberOfColumns];

    if (v88 == v89)
    {
      v90 = 2;
    }

    else
    {
      v90 = 1;
    }

    [v86 setContentExtenderType:v90];
    if ([v86 extendsToTop])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v91 = [v86 topContentView];
        v116 = [v91 layer];

        [PULayoutAnimationsHelper zoomTransitionAnimationPreferredDurationWhenZoomingIn:0];
        v93 = v92;
        UIAnimationDragCoefficient();
        v95 = v93 * v94;
        v96 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
        [v96 setFromValue:&unk_1F2B7DDA8];
        [v96 setDuration:v95];
        v117 = v11;
        v97 = *MEMORY[0x1E6979EA0];
        v98 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
        [v96 setTimingFunction:v98];

        v99 = *MEMORY[0x1E69797E0];
        [v96 setFillMode:*MEMORY[0x1E69797E0]];
        [v96 setRemovedOnCompletion:1];
        [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
        v100 = v119 = v10;
        v101 = MEMORY[0x1E696B098];
        CATransform3DMakeScale(&a, 1.0, 0.0, 1.0);
        v115 = [v101 valueWithCATransform3D:&a];
        [v100 setFromValue:v115];
        [v100 setDuration:v95];
        v102 = v97;
        v11 = v117;
        v103 = [MEMORY[0x1E69793D0] functionWithName:v102];
        [v100 setTimingFunction:v103];

        [v100 setFillMode:v99];
        [v100 setRemovedOnCompletion:1];
        [v116 addAnimation:v96 forKey:@"opacity"];
        [v116 addAnimation:v100 forKey:@"transform"];
        v104 = MEMORY[0x1E69DD250];
        v120[0] = MEMORY[0x1E69E9820];
        v120[1] = 3221225472;
        v120[2] = __103__PULayoutAnimationsHelper__configureAnimationsForReusableView_toLayoutAttributes_withCompletionBlock___block_invoke_37;
        v120[3] = &unk_1E7B80C38;
        v121 = v86;
        v122 = v116;
        v105 = v116;
        [v104 performWithoutAnimation:v120];

        v10 = v119;
      }
    }
  }

  [(PULayoutAnimationsHelper *)self _applyDefaultLayoutAttributes:v9 toView:v8];
  if (v10)
  {
    v106 = v18;
  }

  else
  {
    v106 = 1;
  }

  if ((v106 & 1) == 0)
  {
    v10[2](v10, 1);
  }
}

uint64_t __103__PULayoutAnimationsHelper__configureAnimationsForReusableView_toLayoutAttributes_withCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) alpha];
  v3 = 1.0 - v2;
  v4 = *(a1 + 32);

  return [v4 setAlpha:v3];
}

uint64_t __103__PULayoutAnimationsHelper__configureAnimationsForReusableView_toLayoutAttributes_withCompletionBlock___block_invoke_2(uint64_t a1, double a2)
{
  LODWORD(a2) = 1.0;
  if (*(a1 + 40))
  {
    *&a2 = 0.0;
  }

  return [*(a1 + 32) setOpacity:a2];
}

uint64_t __103__PULayoutAnimationsHelper__configureAnimationsForReusableView_toLayoutAttributes_withCompletionBlock___block_invoke_3(uint64_t a1, double a2)
{
  LODWORD(a2) = 1.0;
  if (*(a1 + 40))
  {
    *&a2 = 0.0;
  }

  return [*(a1 + 32) setOpacity:a2];
}

uint64_t __103__PULayoutAnimationsHelper__configureAnimationsForReusableView_toLayoutAttributes_withCompletionBlock___block_invoke_37(uint64_t a1)
{
  v2 = [*(a1 + 32) topContentView];
  [v2 setAlpha:0.699999988];

  memset(&v6, 0, sizeof(v6));
  CATransform3DMakeScale(&v6, 1.0, -1.0, 1.0);
  v3 = *(a1 + 40);
  v5 = v6;
  return [v3 setTransform:&v5];
}

- (id)_adjustRenderedStripAnimation:(id)a3 forReusableView:(id)a4 toLayoutAttributes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 keyPath];
  v12 = [v11 isEqualToString:@"opacity"];

  v13 = [(PULayoutAnimationsHelper *)self layout];
  v14 = [v13 transitionIsAppearing];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || (v15 = [v10 exists], v14 & 1 | ((v12 & 1) == 0)) || (v15)
  {
    v21 = v8;
  }

  else
  {
    v16 = [v9 layer];
    UIAnimationDragCoefficient();
    v18 = v17 * 0.18;
    UIAnimationDragCoefficient();
    v20 = v19 * 0.0;
    v21 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    v22 = [v16 presentationLayer];
    if (v22)
    {
      v23 = [v16 presentationLayer];
      v24 = [v23 valueForKeyPath:@"opacity"];
    }

    else
    {
      v24 = [v16 valueForKeyPath:@"opacity"];
    }

    [v21 setFromValue:v24];
    [v21 setDuration:v18];
    [v16 convertTime:0 fromLayer:CACurrentMediaTime()];
    [v21 setBeginTime:v20 + v25];
    LODWORD(v26) = 1048165965;
    LODWORD(v27) = 1002897197;
    LODWORD(v28) = 1062925553;
    LODWORD(v29) = *"R\n:?";
    v30 = [MEMORY[0x1E69793D0] functionWithControlPoints:v26 :v27 :v28 :v29];
    [v21 setTimingFunction:v30];

    [v21 setFillMode:*MEMORY[0x1E69797E0]];
    [v21 setRemovedOnCompletion:0];
  }

  return v21;
}

- (id)_adjustSectionHeaderAnimation:(id)a3 forReusableView:(id)a4 toLayoutAttributes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a5 indexPath];
  v11 = [v10 section];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_layout);
    v14 = [WeakRetained transitionLayout];

    v15 = [v14 visualSectionForRealSection:v11];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL || (v16 = v15, [v14 mainRealSectionForVisualSection:v15] != v11))
    {
      v12 = 0;
    }

    else
    {
      [v9 frame];
      [v14 frameForSectionHeaderAtVisualSection:v16];
      UIDistanceBetweenPoints();
      v12 = v17 < 3.0;
    }
  }

  v18 = [(PULayoutAnimationsHelper *)self layout];
  v19 = [v18 transitionIsAppearing];

  v20 = [v8 keyPath];
  v21 = [v20 isEqualToString:@"opacity"];

  if (v21)
  {
    v22 = [v9 layer];
    if (v12 || (v19 & 1) == 0)
    {
      if (v12)
      {
LABEL_20:

        goto LABEL_21;
      }

      v23 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
      v24 = [v22 presentationLayer];
      if (v24)
      {
        v25 = [v22 presentationLayer];
        v26 = [v25 valueForKeyPath:@"opacity"];
      }

      else
      {
        v26 = [v22 valueForKeyPath:@"opacity"];
      }

      [v23 setFromValue:v26];
      UIAnimationDragCoefficient();
      [v23 setDuration:v35 * 0.18];
    }

    else
    {
      v23 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
      v27 = [v22 presentationLayer];
      if (v27)
      {
        v28 = [v22 presentationLayer];
        v26 = [v28 valueForKeyPath:@"opacity"];
      }

      else
      {
        v26 = [v22 valueForKeyPath:@"opacity"];
      }

      [v23 setFromValue:v26];
      UIAnimationDragCoefficient();
      [v23 setDuration:v29 * 0.18];
      [v22 convertTime:0 fromLayer:CACurrentMediaTime()];
      [v23 setBeginTime:v30 + 0.2];
    }

    LODWORD(v31) = 1048165965;
    LODWORD(v32) = 1002897197;
    LODWORD(v33) = 1062925553;
    LODWORD(v34) = *"R\n:?";
    v36 = [MEMORY[0x1E69793D0] functionWithControlPoints:v31 :v32 :v33 :v34];
    [v23 setTimingFunction:v36];

    [v23 setFillMode:*MEMORY[0x1E69797E0]];
    [v23 setRemovedOnCompletion:0];

    v8 = v23;
    goto LABEL_20;
  }

LABEL_21:

  return v8;
}

- (id)_adjustCellAnimation:(id)a3 forReusableView:(id)a4 toLayoutAttributes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 keyPath];
  v12 = [v11 isEqualToString:@"opacity"];

  v13 = [(PULayoutAnimationsHelper *)self layout];
  v14 = [v13 transitionIsAppearing];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v15 = [v10 exists], v12) && (v15 & 1) == 0)
  {
    v16 = [v9 layer];
    UIAnimationDragCoefficient();
    v18 = v17;
    v19 = 0.18;
    if (v14)
    {
      v19 = 0.24;
    }

    v20 = v19 * v18;
    UIAnimationDragCoefficient();
    v22 = v21 * 0.0;
    v23 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    v24 = [v16 presentationLayer];
    if (v24)
    {
      v25 = [v16 presentationLayer];
      v26 = [v25 valueForKeyPath:@"opacity"];
    }

    else
    {
      v26 = [v16 valueForKeyPath:@"opacity"];
    }

    [v23 setFromValue:v26];
    [v23 setDuration:v20];
    [v16 convertTime:0 fromLayer:CACurrentMediaTime()];
    [v23 setBeginTime:v22 + v27];
    LODWORD(v28) = 1048165965;
    LODWORD(v29) = 1002897197;
    LODWORD(v30) = 1062925553;
    LODWORD(v31) = *"R\n:?";
    v32 = [MEMORY[0x1E69793D0] functionWithControlPoints:v28 :v29 :v30 :v31];
    [v23 setTimingFunction:v32];

    [v23 setFillMode:*MEMORY[0x1E69797E0]];
    [v23 setRemovedOnCompletion:0];
  }

  else
  {
    v23 = v8;
  }

  return v23;
}

- (id)_adjustAnimation:(id)a3 forReusableView:(id)a4 toLayoutAttributes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 representedElementCategory];
  v12 = [v10 representedElementKind];
  if (v11 == 2)
  {
    v13 = [(PULayoutAnimationsHelper *)self _adjustDecorationViewAnimation:v8 forReusableView:v9 toLayoutAttributes:v10];
    goto LABEL_8;
  }

  if (v11 != 1)
  {
    if (v11)
    {
      goto LABEL_9;
    }

    v13 = [(PULayoutAnimationsHelper *)self _adjustCellAnimation:v8 forReusableView:v9 toLayoutAttributes:v10];
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_layout);
  v15 = [WeakRetained sectionHeaderElementKind];
  v16 = [v12 isEqualToString:v15];

  if (v16)
  {
    v13 = [(PULayoutAnimationsHelper *)self _adjustSectionHeaderAnimation:v8 forReusableView:v9 toLayoutAttributes:v10];
LABEL_8:
    v17 = v13;

    v8 = v17;
    goto LABEL_9;
  }

  v19 = objc_loadWeakRetained(&self->_layout);
  v20 = [v19 renderedStripsElementKind];
  v21 = [v12 isEqualToString:v20];

  if (v21)
  {
    v13 = [(PULayoutAnimationsHelper *)self _adjustRenderedStripAnimation:v8 forReusableView:v9 toLayoutAttributes:v10];
    goto LABEL_8;
  }

LABEL_9:

  return v8;
}

- (id)_defaultAnimationForKeyPath:(id)a3 ofReusableView:(id)a4 toLayoutAttributes:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_layout);
  v12 = [WeakRetained transitionZoomingOut];

  if (v12)
  {
    [(PULayoutAnimationsHelper *)self _createDefaultZoomingOutAnimationForKeyPath:v10 ofReusableView:v9 toLayoutAttributes:v8];
  }

  else
  {
    [(PULayoutAnimationsHelper *)self _createDefaultZoomingInAnimationForKeyPath:v10 ofReusableView:v9 toLayoutAttributes:v8];
  }
  v13 = ;

  return v13;
}

- (id)_createDefaultZoomingInAnimationForKeyPath:(id)a3 ofReusableView:(id)a4 toLayoutAttributes:(id)a5
{
  v6 = a3;
  v7 = [a4 layer];
  UIAnimationDragCoefficient();
  v9 = v8;
  v10 = [v7 presentationLayer];
  if (v10)
  {
    v11 = [v7 presentationLayer];
    v12 = [v11 valueForKeyPath:v6];
  }

  else
  {
    v12 = [v7 valueForKeyPath:v6];
  }

  v13 = [MEMORY[0x1E69794A8] animationWithKeyPath:v6];
  [v13 setFromValue:v12];
  [PULayoutAnimationsHelper zoomTransitionAnimationPreferredDurationWhenZoomingIn:1];
  v15 = v14;
  UIAnimationDragCoefficient();
  [v13 setDuration:v15 * v16];
  [v13 setMass:1.0];
  [v13 setStiffness:250.0 / (v9 * v9)];
  v17 = v9;
  [v13 setDamping:22.0 / v17];
  [v13 setVelocity:0.0 / v17];
  [v13 setFillMode:*MEMORY[0x1E69797E0]];

  return v13;
}

- (id)_createDefaultZoomingOutAnimationForKeyPath:(id)a3 ofReusableView:(id)a4 toLayoutAttributes:(id)a5
{
  v6 = a3;
  v7 = [a4 layer];
  UIAnimationDragCoefficient();
  v9 = v8;
  v10 = [v7 presentationLayer];
  if (v10)
  {
    v11 = [v7 presentationLayer];
    v12 = [v11 valueForKeyPath:v6];
  }

  else
  {
    v12 = [v7 valueForKeyPath:v6];
  }

  v13 = [MEMORY[0x1E69794A8] animationWithKeyPath:v6];
  [v13 setFromValue:v12];
  [v13 setMass:0.899999976];
  [v13 setStiffness:(300.0 / (v9 * v9))];
  [v13 setDamping:(400.0 / v9)];
  [v13 setVelocity:(0.0 / v9)];
  [PULayoutAnimationsHelper zoomTransitionAnimationPreferredDurationWhenZoomingIn:0];
  v15 = v14;
  UIAnimationDragCoefficient();
  [v13 setDuration:v15 * v16];
  LODWORD(v17) = 1048165965;
  LODWORD(v18) = 1002897197;
  LODWORD(v19) = 1062925553;
  LODWORD(v20) = *"R\n:?";
  v21 = [MEMORY[0x1E69793D0] functionWithControlPoints:v17 :v18 :v19 :v20];
  [v13 setTimingFunction:v21];

  [v13 setFillMode:*MEMORY[0x1E69797E0]];

  return v13;
}

- (void)didFinishLayoutTransitionAnimations:(BOOL)a3 transitionIsAppearing:(BOOL)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->_layout);
    v5 = [WeakRetained collectionView];
    v6 = [v5 subviews];

    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v11 layer];
            [v12 removeAllAnimations];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v11 transitionFillerView];
              v14 = [v13 layer];
              [v14 removeAllAnimations];
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v11 setExtendsToTop:0];
              [v11 setContentExtenderType:0];
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }
}

- (id)animationsForReusableView:(id)a3 toLayoutAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PULayoutAnimationsHelper_animationsForReusableView_toLayoutAttributes___block_invoke;
  aBlock[3] = &unk_1E7B78E98;
  aBlock[4] = self;
  v14 = v6;
  v15 = v7;
  v8 = v7;
  v9 = v6;
  v10 = _Block_copy(aBlock);
  v11 = _Block_copy(v10);

  return v11;
}

void __73__PULayoutAnimationsHelper_animationsForReusableView_toLayoutAttributes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PULayoutAnimationsHelper_animationsForReusableView_toLayoutAttributes___block_invoke_2;
  aBlock[3] = &unk_1E7B7FA80;
  v7 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);
  [*(a1 + 32) _configureAnimationsForReusableView:*(a1 + 40) toLayoutAttributes:*(a1 + 48) withCompletionBlock:v5];
}

uint64_t __73__PULayoutAnimationsHelper_animationsForReusableView_toLayoutAttributes___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (PULayoutAnimationsHelper)initWithSectionedGridLayout:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PULayoutAnimationsHelper;
  v5 = [(PULayoutAnimationsHelper *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_layout, v4);
    v7 = v6;
  }

  return v6;
}

+ (double)stackedTransitionAnimationPreferredDurationUsingSpringAnimations:(BOOL)a3
{
  if (!a3)
  {
    return 0.3;
  }

  [MEMORY[0x1E69DD250] pu_springOscillationRootAtIndex:2 forMass:1.0 stiffness:200.0 damping:22.0 initialVelocity:0.0];
  return result;
}

+ (id)stackedTransitionAnimationsForReusableView:(id)a3 toLayoutAttributes:(id)a4 shouldUseSpringAnimations:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __116__PULayoutAnimationsHelper_stackedTransitionAnimationsForReusableView_toLayoutAttributes_shouldUseSpringAnimations___block_invoke;
  aBlock[3] = &unk_1E7B78EC0;
  v15 = v7;
  v16 = v8;
  v17 = a5;
  v9 = v8;
  v10 = v7;
  v11 = _Block_copy(aBlock);
  v12 = _Block_copy(v11);

  return v12;
}

void __116__PULayoutAnimationsHelper_stackedTransitionAnimationsForReusableView_toLayoutAttributes_shouldUseSpringAnimations___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __116__PULayoutAnimationsHelper_stackedTransitionAnimationsForReusableView_toLayoutAttributes_shouldUseSpringAnimations___block_invoke_2;
  aBlock[3] = &unk_1E7B7F248;
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = v5;
  v21 = v7;
  v22 = v9;
  v23 = v11;
  v12 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __116__PULayoutAnimationsHelper_stackedTransitionAnimationsForReusableView_toLayoutAttributes_shouldUseSpringAnimations___block_invoke_3;
  v15[3] = &unk_1E7B7FA80;
  v13 = v3;
  v16 = v13;
  v14 = _Block_copy(v15);
  if (*(a1 + 48) == 1)
  {
    [MEMORY[0x1E69DD250] _animateUsingSpringWithDuration:5 delay:v12 options:v14 mass:0.3 stiffness:0.0 damping:1.0 initialVelocity:200.0 animations:22.0 completion:0.0];
  }

  else
  {
    [MEMORY[0x1E69DD250] animateWithDuration:5 delay:v12 options:v14 animations:0.3 completion:0.0];
  }
}

void __116__PULayoutAnimationsHelper_stackedTransitionAnimationsForReusableView_toLayoutAttributes_shouldUseSpringAnimations___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) center];
  [v2 setCenter:?];
  v3 = *(a1 + 32);
  [*(a1 + 40) alpha];
  [v3 setAlpha:?];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  [*(a1 + 40) size];
  [*(a1 + 32) setBounds:{v4, v5, v6, v7}];
  v8 = [*(a1 + 32) layer];
  v9 = *(a1 + 40);
  if (v9)
  {
    [v9 transform3D];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  [v8 setTransform:v10];
}

uint64_t __116__PULayoutAnimationsHelper_stackedTransitionAnimationsForReusableView_toLayoutAttributes_shouldUseSpringAnimations___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (double)zoomTransitionAnimationPreferredDurationWhenZoomingIn:(BOOL)a3
{
  if (!a3)
  {
    return 0.6;
  }

  [MEMORY[0x1E69DD250] pu_springOscillationRootAtIndex:2 forMass:1.0 stiffness:250.0 damping:22.0 initialVelocity:0.0];
  return result;
}

@end