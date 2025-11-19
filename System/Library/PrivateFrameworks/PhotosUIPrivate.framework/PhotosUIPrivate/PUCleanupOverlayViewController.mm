@interface PUCleanupOverlayViewController
- (PUCleanupOverlayViewController)initWithMediaView:(id)a3 isHDR:(BOOL)a4;
- (PUCleanupOverlayViewControllerDelegate)overlayControllerDelegate;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)createBrushView;
- (void)disableUI;
- (void)enableBrushSizeFeedback:(BOOL)a3;
- (void)fadeOutBrushStrokeWithDuration:(double)a3;
- (void)hovered:(id)a3;
- (void)longPressed:(id)a3;
- (void)mediaViewIsReady;
- (void)panned:(id)a3;
- (void)removeBrushView;
- (void)setCleanupMode:(unint64_t)a3;
- (void)tapped:(id)a3;
- (void)updateBrushSizeFeedback;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PUCleanupOverlayViewController

- (PUCleanupOverlayViewControllerDelegate)overlayControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayControllerDelegate);

  return WeakRetained;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [a3 view];
  if (v5 == self->_mediaView)
  {
    v6 = [MEMORY[0x1E69DCDD0] hiddenPointerStyle];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v7 = a5;
  v8 = [a3 view];
  mediaView = self->_mediaView;
  v10 = v7;
  if (v8 == mediaView)
  {
    v11 = MEMORY[0x1E69DCDC0];
    [(NUMediaView *)mediaView imageFrame];
    v10 = [v11 regionWithRect:0 identifier:?];
  }

  return v10;
}

- (void)updateViewConstraints
{
  v30[4] = *MEMORY[0x1E69E9840];
  v3 = [(PUCleanupOverlayViewController *)self brushView];
  if (v3)
  {
    v4 = v3;
    v5 = [(PUCleanupOverlayViewController *)self brushView];
    v6 = [v5 constraints];
    v7 = [v6 count];

    if (!v7)
    {
      v28 = [(PUCleanupOverlayViewController *)self brushView];
      v26 = [v28 widthAnchor];
      v27 = [(PUCleanupOverlayViewController *)self view];
      v25 = [v27 widthAnchor];
      v24 = [v26 constraintEqualToAnchor:v25];
      v30[0] = v24;
      v23 = [(PUCleanupOverlayViewController *)self brushView];
      v21 = [v23 heightAnchor];
      v22 = [(PUCleanupOverlayViewController *)self view];
      v20 = [v22 heightAnchor];
      v19 = [v21 constraintEqualToAnchor:v20];
      v30[1] = v19;
      v18 = [(PUCleanupOverlayViewController *)self brushView];
      v17 = [v18 centerXAnchor];
      v8 = [(PUCleanupOverlayViewController *)self view];
      v9 = [v8 centerXAnchor];
      v10 = [v17 constraintEqualToAnchor:v9];
      v30[2] = v10;
      v11 = [(PUCleanupOverlayViewController *)self brushView];
      v12 = [v11 centerYAnchor];
      v13 = [(PUCleanupOverlayViewController *)self view];
      v14 = [v13 centerYAnchor];
      v15 = [v12 constraintEqualToAnchor:v14];
      v30[3] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];

      [MEMORY[0x1E696ACD8] activateConstraints:v16];
    }
  }

  v29.receiver = self;
  v29.super_class = PUCleanupOverlayViewController;
  [(PUCleanupOverlayViewController *)&v29 updateViewConstraints];
}

- (void)disableUI
{
  self->_toolDisabled = 1;
  v3 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
  [v3 setEnabled:0];

  v4 = [(PUCleanupOverlayViewController *)self tapGestureRecognizer];
  [v4 setEnabled:0];

  v5 = [(PUCleanupOverlayViewController *)self hoverGestureRecognizer];
  [v5 setEnabled:0];
}

- (void)removeBrushView
{
  v3 = [(PUCleanupOverlayViewController *)self brushView];

  if (v3)
  {
    v4 = [(PUCleanupOverlayViewController *)self brushView];
    [v4 removeFromSuperview];

    [(PUCleanupOverlayViewController *)self setBrushView:0];
  }
}

- (void)createBrushView
{
  v3 = [(PUCleanupOverlayViewController *)self brushView];

  if (!v3)
  {
    v4 = [(PUCleanupOverlayViewController *)self vfxBrushView];
    v5 = [v4 superview];

    if (!v5 || ([v5 window], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
    {
      v7 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Cleanup: vfxBrushView not present", v19, 2u);
      }

      v8 = [(PUCleanupOverlayViewController *)self view];

      v5 = v8;
    }

    v9 = [PUCleanupToolBrushView alloc];
    v10 = [(PUCleanupOverlayViewController *)self mediaView];
    v11 = [(PUCleanupToolBrushView *)v9 initWithMediaView:v10 isHDR:[(PUCleanupOverlayViewController *)self isHDR]];
    [(PUCleanupOverlayViewController *)self setBrushView:v11];

    v12 = [(PUCleanupOverlayViewController *)self brushView];
    [v12 setBackgroundColor:0];

    v13 = [(PUCleanupOverlayViewController *)self vfxBrushView];
    v14 = [v13 superview];

    v15 = [(PUCleanupOverlayViewController *)self brushView];
    if (v14)
    {
      v16 = [(PUCleanupOverlayViewController *)self vfxBrushView];
      [v5 insertSubview:v15 belowSubview:v16];
    }

    else
    {
      [v5 addSubview:v15];
    }

    v17 = [(PUCleanupOverlayViewController *)self brushView];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = [(PUCleanupOverlayViewController *)self view];
    [v18 setNeedsUpdateConstraints];
  }
}

- (void)fadeOutBrushStrokeWithDuration:(double)a3
{
  if (a3 == 0.0)
  {
    v6 = [(PUCleanupOverlayViewController *)self brushView];
    [v6 removeStroke];
  }

  else
  {
    v5 = [(PUCleanupOverlayViewController *)self view];
    [v5 setAlpha:1.0];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__PUCleanupOverlayViewController_fadeOutBrushStrokeWithDuration___block_invoke;
    v8[3] = &unk_1E7B80DD0;
    v8[4] = self;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__PUCleanupOverlayViewController_fadeOutBrushStrokeWithDuration___block_invoke_2;
    v7[3] = &unk_1E7B7F020;
    v7[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:v7 completion:a3];
  }
}

void __65__PUCleanupOverlayViewController_fadeOutBrushStrokeWithDuration___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

void __65__PUCleanupOverlayViewController_fadeOutBrushStrokeWithDuration___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) brushView];
  [v3 removeStroke];
}

- (void)mediaViewIsReady
{
  v3 = [(PUCleanupOverlayViewController *)self view];
  v4 = [v3 isUserInteractionEnabled];

  if ((v4 & 1) == 0)
  {
    v5 = [(PUCleanupOverlayViewController *)self view];
    [v5 setUserInteractionEnabled:1];
  }
}

- (void)updateBrushSizeFeedback
{
  v3 = [(PUCleanupOverlayViewController *)self view];
  v4 = [v3 isUserInteractionEnabled];

  if (v4)
  {
    v5 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
    [v5 scaledBrushRadiusForTouchType:0];
    v7 = v6;

    v8 = [(PUCleanupOverlayViewController *)self view];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v21.origin.x = v10;
    v21.origin.y = v12;
    v21.size.width = v14;
    v21.size.height = v16;
    MidX = CGRectGetMidX(v21);
    v22.origin.x = v10;
    v22.origin.y = v12;
    v22.size.width = v14;
    v22.size.height = v16;
    MidY = CGRectGetMidY(v22);
    brushView = self->_brushView;

    [(PUCleanupToolBrushView *)brushView drawCursorAtPoint:MidX withRadius:MidY, v7];
  }
}

- (void)enableBrushSizeFeedback:(BOOL)a3
{
  v3 = a3;
  [(PUCleanupToolBrushView *)self->_brushView setShouldDrawCursor:?];
  if (v3)
  {

    [(PUCleanupOverlayViewController *)self updateBrushSizeFeedback];
  }
}

- (void)longPressed:(id)a3
{
  v6 = a3;
  v4 = [v6 state];
  if (v4 == 1 || [v6 state] == 3)
  {
    v5 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
    [v5 toolControllerWantsToShowOriginal:v4 == 1];
  }
}

- (void)hovered:(id)a3
{
  v4 = a3;
  v5 = [(PUCleanupOverlayViewController *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
  [v10 scaledBrushRadiusForTouchType:0];
  v12 = v11;

  v13 = [v4 state];
  if (v13 <= 2)
  {
    if (v13 == 1)
    {
      [(PUCleanupToolBrushView *)self->_brushView setShouldDrawCursor:1];
      brushView = self->_brushView;

      [(PUCleanupToolBrushView *)brushView drawCursorAtPoint:v7 withRadius:v9, v12];
    }

    else if (v13 == 2)
    {
      [(PUCleanupToolBrushView *)self->_brushView setShouldDrawCursor:1];
      v15 = self->_brushView;
      v18 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
      [v18 scaledBrushRadiusForTouchType:0];
      [(PUCleanupToolBrushView *)v15 drawCursorAtPoint:v7 withRadius:v9, v16];
    }
  }

  else if (v13 == 3 || v13 == 4 || v13 == 5)
  {
    v14 = self->_brushView;

    [(PUCleanupToolBrushView *)v14 setShouldDrawCursor:0];
  }
}

- (void)tapped:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    [(NUMediaView *)self->_mediaView imageFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    mediaView = self->_mediaView;
    v14 = [(PUCleanupOverlayViewController *)self view];
    [(NUMediaView *)mediaView convertRect:v14 toView:v6, v8, v10, v12];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = [(PUCleanupOverlayViewController *)self view];
    [v4 locationInView:v23];
    v25 = v24;
    v27 = v26;

    v50.origin.x = v16;
    v50.origin.y = v18;
    v50.size.width = v20;
    v50.size.height = v22;
    v49.x = v25;
    v49.y = v27;
    if (CGRectContainsPoint(v50, v49))
    {
      v28 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
      [v28 hidePromptViewIfNeededAnimated:0];

      cleanupMode = self->_cleanupMode;
      v30 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
      v31 = v30;
      if (cleanupMode == 2)
      {
        [v30 brushRadiusForTouchType:self->_touchType];
        v33 = v32;

        v34 = objc_alloc(MEMORY[0x1E69B3B90]);
        v35 = *(MEMORY[0x1E69B3908] + 16);
        v48[0] = *MEMORY[0x1E69B3908];
        v48[1] = v35;
        LODWORD(v35) = 1045220557;
        LODWORD(v36) = 1.0;
        v31 = [v34 initWithRadius:v48 softness:0 opacity:COERCE_DOUBLE(__PAIR64__(DWORD1(v48[0]) clipRect:v33)) pressureMode:{*&v35, v36}];
        v37 = v25;
        v38 = v27;
        LODWORD(v39) = 1.0;
        *&v40 = v37;
        *&v41 = v38;
        [v31 appendPoint:{v40, v41, v39}];
        brushView = self->_brushView;
        v43 = v37;
        v44 = v38;
        v45 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
        [v45 scaledBrushRadiusForTouchType:self->_touchType];
        [(PUCleanupToolBrushView *)brushView startStrokeWithPoint:v43 radius:v44, v46];

        [(PUCleanupToolBrushView *)self->_brushView addPointToStroke:v43, v44];
        v47 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
        [v47 addStroke:v31 closeAndFillStroke:0 completion:&__block_literal_global_83];
      }

      else
      {
        [v30 addObjectRemovalAtPoint:{v25, v27}];
      }
    }
  }
}

- (void)panned:(id)a3
{
  v5 = a3;
  if (self->_cleanupMode != 1 || self->_vfxBrushView)
  {
    v6 = [(PUCleanupOverlayViewController *)self view];
    [v5 locationInView:v6];
    v8 = v7;
    v10 = v9;

    v11 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
    [v11 scaledBrushRadiusForTouchType:self->_touchType];
    v13 = v12;

    v14 = [v5 state];
    if (v14 > 3)
    {
      if ((v14 - 4) < 2)
      {
        [(PUCleanupOverlayViewController *)self setBrushStroke:0];
        if (self->_cleanupMode == 1)
        {
          [(PUVFXBrushView *)self->_vfxBrushView endEmission];
        }

        brushStrokeExclusionMask = self->_brushStrokeExclusionMask;
        self->_brushStrokeExclusionMask = 0;

        [(PUCleanupOverlayViewController *)self setBrushStroke:0];
        [(PUCleanupOverlayViewController *)self fadeOutBrushStrokeWithDuration:0.0];
      }
    }

    else
    {
      switch(v14)
      {
        case 1:
          [(NUMediaView *)self->_mediaView imageFrame];
          v53 = v52;
          v55 = v54;
          v57 = v56;
          v59 = v58;
          mediaView = self->_mediaView;
          v61 = [(PUCleanupOverlayViewController *)self view];
          [(NUMediaView *)mediaView convertRect:v61 toView:v53, v55, v57, v59];
          v63 = v62;
          v65 = v64;
          v67 = v66;
          v69 = v68;

          v158.origin.x = v63;
          v158.origin.y = v65;
          v158.size.width = v67;
          v158.size.height = v69;
          v157.x = v8;
          v157.y = v10;
          if (CGRectContainsPoint(v158, v157))
          {
            v70 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
            [v70 hidePromptViewIfNeededAnimated:0];

            v71 = objc_alloc(MEMORY[0x1E69B3B90]);
            v72 = *(MEMORY[0x1E69B3908] + 16);
            v156[0] = *MEMORY[0x1E69B3908];
            v156[1] = v72;
            LODWORD(v72) = 1045220557;
            LODWORD(v73) = 1.0;
            v74 = [v71 initWithRadius:v156 softness:0 opacity:COERCE_DOUBLE(__PAIR64__(DWORD1(v156[0]) clipRect:v13)) pressureMode:{*&v72, v73}];
            [(PUCleanupOverlayViewController *)self setBrushStroke:v74];

            touchType = self->_touchType;
            v76 = [MEMORY[0x1E69C4290] globalSettings];
            v77 = v76;
            if (touchType)
            {
              [v76 subjectExclusionMaskHitRadiusForPencilTouch];
            }

            else
            {
              [v76 subjectExclusionMaskHitRadiusForDirectTouch];
            }

            v103 = v78;

            v104 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
            [v104 originalPointFromOverlayViewPoint:{v8, v10}];
            v106 = v105;
            v108 = v107;

            v109 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
            [v109 subjectExclusionMaskBrushRadiusForScreenSpaceRadius:v103];
            v111 = v110;

            v112 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
            v113 = [v112 brushStrokeExclusionMaskForStrokeStartingAtImageSpacePoint:v106 withRadius:{v108, v111}];
            v114 = self->_brushStrokeExclusionMask;
            self->_brushStrokeExclusionMask = v113;

            v115 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
            v116 = [v115 transformedImageForBrushStrokeExclusionMask:self->_brushStrokeExclusionMask];

            cleanupMode = self->_cleanupMode;
            if (v116)
            {
              if (cleanupMode == 1)
              {
                v118 = [v116 imageByApplyingFilter:@"CIMaskToAlpha"];
                v119 = [MEMORY[0x1E695F620] context];
                [v118 extent];
                v120 = [v119 createCGImage:v118 fromRect:?];

                [(PUVFXBrushView *)self->_vfxBrushView setMask:v120];
                CGImageRelease(v120);
              }

              v121 = [(PUCleanupOverlayViewController *)self brushView];
              v122 = v121;
              v123 = v116;
            }

            else
            {
              if (cleanupMode == 1)
              {
                [(PUVFXBrushView *)self->_vfxBrushView setMask:0];
              }

              v121 = [(PUCleanupOverlayViewController *)self brushView];
              v122 = v121;
              v123 = 0;
            }

            [v121 setBrushStrokeExclusionMask:v123];

            if (self->_cleanupMode == 1)
            {
              if (!self->_vfxBrushView)
              {
                v155 = [MEMORY[0x1E696AAA8] currentHandler];
                [v155 handleFailureInMethod:a2 object:self file:@"PUCleanupOverlayViewController.m" lineNumber:300 description:@"Nil brushview"];
              }

              v124 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
              [v124 scaledBrushRadiusForTouchType:self->_touchType];
              v126 = v125;

              v127 = [(PUCleanupOverlayViewController *)self view];
              v128 = [(NUMediaView *)self->_mediaView _visibleImageRectOverlayView];
              [v127 convertPoint:v128 toView:{0.0, 0.0}];
              v130 = v129;
              v132 = v131;

              v133 = [(PUCleanupOverlayViewController *)self view];
              v134 = [(NUMediaView *)self->_mediaView _visibleImageRectOverlayView];
              [v133 convertPoint:v134 toView:{0.0, v126}];
              v136 = v135;
              v138 = v137;

              [(PUVFXBrushView *)self->_vfxBrushView setBrushRadius:sqrt((v138 - v132) * (v138 - v132) + (v136 - v130) * (v136 - v130)) * 4.0];
            }

            v139 = v8;
            v140 = v10;
            v141 = [(PUCleanupOverlayViewController *)self brushStroke];
            LODWORD(v142) = 1.0;
            *&v143 = v8;
            *&v144 = v10;
            [v141 appendPoint:{v143, v144, v142}];

            if (self->_cleanupMode == 1)
            {
              v145 = [(PUCleanupOverlayViewController *)self view];
              v146 = [(NUMediaView *)self->_mediaView _visibleImageRectOverlayView];
              [v145 convertPoint:v146 toView:{v8, v10}];
              v148 = v147;
              v150 = v149;

              [(PUVFXBrushView *)self->_vfxBrushView startEmissionAtPoint:v148, v150];
            }

            brushView = self->_brushView;
            v152 = [(PUCleanupOverlayViewController *)self brushStroke];
            [v152 radius];
            [(PUCleanupToolBrushView *)brushView startStrokeWithPoint:v139 radius:v140, v153];

            [(PUCleanupToolBrushView *)self->_brushView setShouldDrawCursor:0];
          }

          else
          {
            [v5 setEnabled:0];
            [v5 setEnabled:1];
          }

          break;
        case 2:
          v79 = [(PUCleanupOverlayViewController *)self view];
          [v5 locationInView:v79];
          v81 = v80;
          v83 = v82;

          v84 = v81;
          v85 = v83;
          v86 = [(PUCleanupOverlayViewController *)self brushStroke];
          v87 = [v86 pointCount] - 1;

          v88 = [(PUCleanupOverlayViewController *)self brushStroke];
          [v88 pointAtIndex:v87];
          v90 = v89;
          v92 = v91;

          if ((v85 - v92) * (v85 - v92) + (v84 - v90) * (v84 - v90) >= 2.0)
          {
            v93 = [(PUCleanupOverlayViewController *)self brushStroke];
            LODWORD(v94) = 1.0;
            *&v95 = v81;
            *&v96 = v83;
            [v93 appendPoint:{v95, v96, v94}];

            [(PUCleanupToolBrushView *)self->_brushView addPointToStroke:v84, v85];
            if (self->_cleanupMode == 1)
            {
              v97 = [(PUCleanupOverlayViewController *)self view];
              v98 = [(NUMediaView *)self->_mediaView _visibleImageRectOverlayView];
              [v97 convertPoint:v98 toView:{v81, v83}];
              v100 = v99;
              v102 = v101;

              [(PUVFXBrushView *)self->_vfxBrushView setBrushPosition:v100, v102];
            }
          }

          break;
        case 3:
          v15 = [(PUCleanupOverlayViewController *)self view];
          [v5 locationInView:v15];
          v17 = v16;
          v19 = v18;

          v20 = v17;
          v22 = [(PUCleanupOverlayViewController *)self brushStroke];
          v23 = [v22 pointCount] - 1;

          v24 = [(PUCleanupOverlayViewController *)self brushStroke];
          [v24 pointAtIndex:v23];
          v26 = v25;
          v28 = v27;

          if (v26 != v20 || (v21 = v19, v28 != v21))
          {
            v29 = [(PUCleanupOverlayViewController *)self brushStroke];
            LODWORD(v30) = 1.0;
            *&v31 = v17;
            *&v32 = v19;
            [v29 appendPoint:{v31, v32, v30}];

            if (self->_cleanupMode != 1)
            {
              goto LABEL_13;
            }

            v33 = [(PUCleanupOverlayViewController *)self view];
            v34 = [(NUMediaView *)self->_mediaView _visibleImageRectOverlayView];
            [v33 convertPoint:v34 toView:{v17, v19}];
            v36 = v35;
            v38 = v37;

            [(PUVFXBrushView *)self->_vfxBrushView setBrushPosition:v36, v38];
          }

          if (self->_cleanupMode == 1)
          {
            [(PUVFXBrushView *)self->_vfxBrushView endEmission];
          }

LABEL_13:
          v39 = [(PUCleanupOverlayViewController *)self brushStroke];
          if (!v39)
          {
            goto LABEL_46;
          }

          v40 = v39;
          v41 = [(PUCleanupOverlayViewController *)self brushStroke];
          v42 = [v41 pointCount];

          if (v42 < 1)
          {
            goto LABEL_46;
          }

          v43 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
          [v43 brushRadiusForTouchType:self->_touchType];
          v45 = v44;
          v46 = [(PUCleanupOverlayViewController *)self brushStroke];
          LODWORD(v47) = v45;
          [v46 setRadius:v47];

          v48 = self->_cleanupMode;
          if (v48 == 1)
          {
            v49 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
            v50 = [(PUCleanupOverlayViewController *)self brushStroke];
            [v49 addObjectRemovalUsingStroke:v50 exclusionMask:self->_brushStrokeExclusionMask];
          }

          else
          {
            if (v48 != 2)
            {
LABEL_46:
              v154 = self->_brushStrokeExclusionMask;
              self->_brushStrokeExclusionMask = 0;

              [(PUCleanupOverlayViewController *)self setBrushStroke:0];
              break;
            }

            v49 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
            v50 = [(PUCleanupOverlayViewController *)self brushStroke];
            [v49 addStroke:v50 closeAndFillStroke:0 completion:&__block_literal_global_32087];
          }

          goto LABEL_46;
      }
    }
  }
}

- (void)setCleanupMode:(unint64_t)a3
{
  self->_cleanupMode = a3;
  if (self->_toolDisabled)
  {
    v4 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
    [v4 setEnabled:0];

    v5 = [(PUCleanupOverlayViewController *)self tapGestureRecognizer];
    [v5 setEnabled:0];

    v6 = [(PUCleanupOverlayViewController *)self hoverGestureRecognizer];
  }

  else
  {
    if (a3 == 2 || a3 == 1)
    {
      v9 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
      [v9 setEnabled:1];

      v6 = [(PUCleanupOverlayViewController *)self tapGestureRecognizer];
      v10 = v6;
      v7 = 1;
      goto LABEL_9;
    }

    if (a3)
    {
      return;
    }

    v8 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
    [v8 setEnabled:0];

    v6 = [(PUCleanupOverlayViewController *)self tapGestureRecognizer];
  }

  v10 = v6;
  v7 = 0;
LABEL_9:
  [v6 setEnabled:v7];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v20.receiver = self;
  v20.super_class = PUCleanupOverlayViewController;
  [(PUCleanupOverlayViewController *)&v20 viewWillDisappear:a3];
  v4 = [(PUCleanupOverlayViewController *)self mediaViewPointerInteraction];

  if (v4)
  {
    v5 = [(PUCleanupOverlayViewController *)self mediaView];
    v6 = [(PUCleanupOverlayViewController *)self mediaViewPointerInteraction];
    [v5 removeInteraction:v6];

    [(PUCleanupOverlayViewController *)self setMediaViewPointerInteraction:0];
  }

  v7 = [(PUCleanupOverlayViewController *)self mediaView];
  [v7 setScrollEnabled:1];

  v8 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
  v9 = [v8 view];
  v10 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
  [v9 removeGestureRecognizer:v10];

  v11 = [(PUCleanupOverlayViewController *)self tapGestureRecognizer];
  v12 = [v11 view];
  v13 = [(PUCleanupOverlayViewController *)self tapGestureRecognizer];
  [v12 removeGestureRecognizer:v13];

  v14 = [(PUCleanupOverlayViewController *)self hoverGestureRecognizer];
  v15 = [v14 view];
  v16 = [(PUCleanupOverlayViewController *)self hoverGestureRecognizer];
  [v15 removeGestureRecognizer:v16];

  v17 = [(PUCleanupOverlayViewController *)self longPressGestureRecognizer];
  v18 = [v17 view];
  v19 = [(PUCleanupOverlayViewController *)self longPressGestureRecognizer];
  [v18 removeGestureRecognizer:v19];

  [(PUCleanupOverlayViewController *)self setPanGestureRecognizer:0];
  [(PUCleanupOverlayViewController *)self setTapGestureRecognizer:0];
  [(PUCleanupOverlayViewController *)self setHoverGestureRecognizer:0];
  [(PUCleanupOverlayViewController *)self setLongPressGestureRecognizer:0];
  [(PUCleanupOverlayViewController *)self removeBrushView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v37.receiver = self;
  v37.super_class = PUCleanupOverlayViewController;
  [(PUCleanupOverlayViewController *)&v37 viewWillAppear:a3];
  v4 = [(PUCleanupOverlayViewController *)self mediaViewPointerInteraction];

  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self];
    [(PUCleanupOverlayViewController *)self setMediaViewPointerInteraction:v5];

    v6 = [(PUCleanupOverlayViewController *)self mediaView];
    v7 = [(PUCleanupOverlayViewController *)self mediaViewPointerInteraction];
    [v6 addInteraction:v7];
  }

  v8 = [[ImmediatePanGestureRecognizer alloc] initWithTarget:self action:sel_panned_];
  [(PUCleanupOverlayViewController *)self setPanGestureRecognizer:v8];

  v9 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
  [v9 setMaximumNumberOfTouches:1];

  v10 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
  [v10 setEnabled:0];

  v11 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
  [v11 setDelegate:0];

  v12 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
  [v12 setTouchTypeDelegate:self];

  v13 = [(PUCleanupOverlayViewController *)self mediaView];
  v14 = [v13 _scrollView];
  v15 = [v14 pinchGestureRecognizer];

  v16 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
  [v15 requireGestureRecognizerToFail:v16];

  v17 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapped_];
  [(PUCleanupOverlayViewController *)self setTapGestureRecognizer:v17];

  v18 = [(PUCleanupOverlayViewController *)self tapGestureRecognizer];
  [v18 setEnabled:0];

  v19 = [(PUCleanupOverlayViewController *)self tapGestureRecognizer];
  [v19 setDelegate:0];

  v20 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:self action:sel_hovered_];
  [(PUCleanupOverlayViewController *)self setHoverGestureRecognizer:v20];

  v21 = [(PUCleanupOverlayViewController *)self hoverGestureRecognizer];
  [v21 setEnabled:1];

  v22 = [(PUCleanupOverlayViewController *)self hoverGestureRecognizer];
  [v22 setDelegate:0];

  v23 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_longPressed_];
  [(PUCleanupOverlayViewController *)self setLongPressGestureRecognizer:v23];

  v24 = [(PUCleanupOverlayViewController *)self longPressGestureRecognizer];
  [v24 setMinimumPressDuration:1.0];

  v25 = [(PUCleanupOverlayViewController *)self longPressGestureRecognizer];
  [v25 setAllowableMovement:7.0];

  v26 = [(PUCleanupOverlayViewController *)self longPressGestureRecognizer];
  [v26 setEnabled:1];

  v27 = [(PUCleanupOverlayViewController *)self longPressGestureRecognizer];
  [v27 setDelegate:0];

  v28 = [(PUCleanupOverlayViewController *)self mediaView];
  v29 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
  [v28 addGestureRecognizer:v29];

  v30 = [(PUCleanupOverlayViewController *)self mediaView];
  v31 = [(PUCleanupOverlayViewController *)self tapGestureRecognizer];
  [v30 addGestureRecognizer:v31];

  v32 = [(PUCleanupOverlayViewController *)self mediaView];
  v33 = [(PUCleanupOverlayViewController *)self hoverGestureRecognizer];
  [v32 addGestureRecognizer:v33];

  v34 = [(PUCleanupOverlayViewController *)self mediaView];
  v35 = [(PUCleanupOverlayViewController *)self longPressGestureRecognizer];
  [v34 addGestureRecognizer:v35];

  [(PUCleanupOverlayViewController *)self setCleanupMode:self->_cleanupMode];
  v36 = [(PUCleanupOverlayViewController *)self hoverGestureRecognizer];
  [v36 setEnabled:1];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PUCleanupOverlayViewController;
  [(PUCleanupOverlayViewController *)&v4 viewDidLoad];
  v3 = [(PUCleanupOverlayViewController *)self view];
  [v3 setUserInteractionEnabled:0];
}

- (PUCleanupOverlayViewController)initWithMediaView:(id)a3 isHDR:(BOOL)a4
{
  v8 = a3;
  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUCleanupOverlayViewController.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"mediaView != nil"}];
  }

  v14.receiver = self;
  v14.super_class = PUCleanupOverlayViewController;
  v9 = [(PUCleanupOverlayViewController *)&v14 init];
  if (v9)
  {
    v10 = [[PUCleanupOverlayView alloc] initWithMediaView:v8];
    overlayView = v9->_overlayView;
    v9->_overlayView = v10;

    objc_storeStrong(&v9->_mediaView, a3);
    v9->_isHDR = a4;
  }

  return v9;
}

@end