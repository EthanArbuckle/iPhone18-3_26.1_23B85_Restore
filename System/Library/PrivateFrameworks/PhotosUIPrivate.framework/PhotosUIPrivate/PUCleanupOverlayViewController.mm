@interface PUCleanupOverlayViewController
- (PUCleanupOverlayViewController)initWithMediaView:(id)view isHDR:(BOOL)r;
- (PUCleanupOverlayViewControllerDelegate)overlayControllerDelegate;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)createBrushView;
- (void)disableUI;
- (void)enableBrushSizeFeedback:(BOOL)feedback;
- (void)fadeOutBrushStrokeWithDuration:(double)duration;
- (void)hovered:(id)hovered;
- (void)longPressed:(id)pressed;
- (void)mediaViewIsReady;
- (void)panned:(id)panned;
- (void)removeBrushView;
- (void)setCleanupMode:(unint64_t)mode;
- (void)tapped:(id)tapped;
- (void)updateBrushSizeFeedback;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PUCleanupOverlayViewController

- (PUCleanupOverlayViewControllerDelegate)overlayControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayControllerDelegate);

  return WeakRetained;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  view = [interaction view];
  if (view == self->_mediaView)
  {
    hiddenPointerStyle = [MEMORY[0x1E69DCDD0] hiddenPointerStyle];
  }

  else
  {
    hiddenPointerStyle = 0;
  }

  return hiddenPointerStyle;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  view = [interaction view];
  mediaView = self->_mediaView;
  v10 = regionCopy;
  if (view == mediaView)
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
  brushView = [(PUCleanupOverlayViewController *)self brushView];
  if (brushView)
  {
    v4 = brushView;
    brushView2 = [(PUCleanupOverlayViewController *)self brushView];
    constraints = [brushView2 constraints];
    v7 = [constraints count];

    if (!v7)
    {
      brushView3 = [(PUCleanupOverlayViewController *)self brushView];
      widthAnchor = [brushView3 widthAnchor];
      view = [(PUCleanupOverlayViewController *)self view];
      widthAnchor2 = [view widthAnchor];
      v24 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      v30[0] = v24;
      brushView4 = [(PUCleanupOverlayViewController *)self brushView];
      heightAnchor = [brushView4 heightAnchor];
      view2 = [(PUCleanupOverlayViewController *)self view];
      heightAnchor2 = [view2 heightAnchor];
      v19 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      v30[1] = v19;
      brushView5 = [(PUCleanupOverlayViewController *)self brushView];
      centerXAnchor = [brushView5 centerXAnchor];
      view3 = [(PUCleanupOverlayViewController *)self view];
      centerXAnchor2 = [view3 centerXAnchor];
      v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v30[2] = v10;
      brushView6 = [(PUCleanupOverlayViewController *)self brushView];
      centerYAnchor = [brushView6 centerYAnchor];
      view4 = [(PUCleanupOverlayViewController *)self view];
      centerYAnchor2 = [view4 centerYAnchor];
      v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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
  panGestureRecognizer = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
  [panGestureRecognizer setEnabled:0];

  tapGestureRecognizer = [(PUCleanupOverlayViewController *)self tapGestureRecognizer];
  [tapGestureRecognizer setEnabled:0];

  hoverGestureRecognizer = [(PUCleanupOverlayViewController *)self hoverGestureRecognizer];
  [hoverGestureRecognizer setEnabled:0];
}

- (void)removeBrushView
{
  brushView = [(PUCleanupOverlayViewController *)self brushView];

  if (brushView)
  {
    brushView2 = [(PUCleanupOverlayViewController *)self brushView];
    [brushView2 removeFromSuperview];

    [(PUCleanupOverlayViewController *)self setBrushView:0];
  }
}

- (void)createBrushView
{
  brushView = [(PUCleanupOverlayViewController *)self brushView];

  if (!brushView)
  {
    vfxBrushView = [(PUCleanupOverlayViewController *)self vfxBrushView];
    superview = [vfxBrushView superview];

    if (!superview || ([superview window], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
    {
      v7 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Cleanup: vfxBrushView not present", v19, 2u);
      }

      view = [(PUCleanupOverlayViewController *)self view];

      superview = view;
    }

    v9 = [PUCleanupToolBrushView alloc];
    mediaView = [(PUCleanupOverlayViewController *)self mediaView];
    v11 = [(PUCleanupToolBrushView *)v9 initWithMediaView:mediaView isHDR:[(PUCleanupOverlayViewController *)self isHDR]];
    [(PUCleanupOverlayViewController *)self setBrushView:v11];

    brushView2 = [(PUCleanupOverlayViewController *)self brushView];
    [brushView2 setBackgroundColor:0];

    vfxBrushView2 = [(PUCleanupOverlayViewController *)self vfxBrushView];
    superview2 = [vfxBrushView2 superview];

    brushView3 = [(PUCleanupOverlayViewController *)self brushView];
    if (superview2)
    {
      vfxBrushView3 = [(PUCleanupOverlayViewController *)self vfxBrushView];
      [superview insertSubview:brushView3 belowSubview:vfxBrushView3];
    }

    else
    {
      [superview addSubview:brushView3];
    }

    brushView4 = [(PUCleanupOverlayViewController *)self brushView];
    [brushView4 setTranslatesAutoresizingMaskIntoConstraints:0];

    view2 = [(PUCleanupOverlayViewController *)self view];
    [view2 setNeedsUpdateConstraints];
  }
}

- (void)fadeOutBrushStrokeWithDuration:(double)duration
{
  if (duration == 0.0)
  {
    brushView = [(PUCleanupOverlayViewController *)self brushView];
    [brushView removeStroke];
  }

  else
  {
    view = [(PUCleanupOverlayViewController *)self view];
    [view setAlpha:1.0];

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
    [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:v7 completion:duration];
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
  view = [(PUCleanupOverlayViewController *)self view];
  isUserInteractionEnabled = [view isUserInteractionEnabled];

  if ((isUserInteractionEnabled & 1) == 0)
  {
    view2 = [(PUCleanupOverlayViewController *)self view];
    [view2 setUserInteractionEnabled:1];
  }
}

- (void)updateBrushSizeFeedback
{
  view = [(PUCleanupOverlayViewController *)self view];
  isUserInteractionEnabled = [view isUserInteractionEnabled];

  if (isUserInteractionEnabled)
  {
    overlayControllerDelegate = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
    [overlayControllerDelegate scaledBrushRadiusForTouchType:0];
    v7 = v6;

    view2 = [(PUCleanupOverlayViewController *)self view];
    [view2 frame];
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

- (void)enableBrushSizeFeedback:(BOOL)feedback
{
  feedbackCopy = feedback;
  [(PUCleanupToolBrushView *)self->_brushView setShouldDrawCursor:?];
  if (feedbackCopy)
  {

    [(PUCleanupOverlayViewController *)self updateBrushSizeFeedback];
  }
}

- (void)longPressed:(id)pressed
{
  pressedCopy = pressed;
  state = [pressedCopy state];
  if (state == 1 || [pressedCopy state] == 3)
  {
    overlayControllerDelegate = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
    [overlayControllerDelegate toolControllerWantsToShowOriginal:state == 1];
  }
}

- (void)hovered:(id)hovered
{
  hoveredCopy = hovered;
  view = [(PUCleanupOverlayViewController *)self view];
  [hoveredCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  overlayControllerDelegate = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
  [overlayControllerDelegate scaledBrushRadiusForTouchType:0];
  v12 = v11;

  state = [hoveredCopy state];
  if (state <= 2)
  {
    if (state == 1)
    {
      [(PUCleanupToolBrushView *)self->_brushView setShouldDrawCursor:1];
      brushView = self->_brushView;

      [(PUCleanupToolBrushView *)brushView drawCursorAtPoint:v7 withRadius:v9, v12];
    }

    else if (state == 2)
    {
      [(PUCleanupToolBrushView *)self->_brushView setShouldDrawCursor:1];
      v15 = self->_brushView;
      overlayControllerDelegate2 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
      [overlayControllerDelegate2 scaledBrushRadiusForTouchType:0];
      [(PUCleanupToolBrushView *)v15 drawCursorAtPoint:v7 withRadius:v9, v16];
    }
  }

  else if (state == 3 || state == 4 || state == 5)
  {
    v14 = self->_brushView;

    [(PUCleanupToolBrushView *)v14 setShouldDrawCursor:0];
  }
}

- (void)tapped:(id)tapped
{
  tappedCopy = tapped;
  if ([tappedCopy state] == 3)
  {
    [(NUMediaView *)self->_mediaView imageFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    mediaView = self->_mediaView;
    view = [(PUCleanupOverlayViewController *)self view];
    [(NUMediaView *)mediaView convertRect:view toView:v6, v8, v10, v12];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    view2 = [(PUCleanupOverlayViewController *)self view];
    [tappedCopy locationInView:view2];
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
      overlayControllerDelegate = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
      [overlayControllerDelegate hidePromptViewIfNeededAnimated:0];

      cleanupMode = self->_cleanupMode;
      overlayControllerDelegate2 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
      v31 = overlayControllerDelegate2;
      if (cleanupMode == 2)
      {
        [overlayControllerDelegate2 brushRadiusForTouchType:self->_touchType];
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
        overlayControllerDelegate3 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
        [overlayControllerDelegate3 scaledBrushRadiusForTouchType:self->_touchType];
        [(PUCleanupToolBrushView *)brushView startStrokeWithPoint:v43 radius:v44, v46];

        [(PUCleanupToolBrushView *)self->_brushView addPointToStroke:v43, v44];
        overlayControllerDelegate4 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
        [overlayControllerDelegate4 addStroke:v31 closeAndFillStroke:0 completion:&__block_literal_global_83];
      }

      else
      {
        [overlayControllerDelegate2 addObjectRemovalAtPoint:{v25, v27}];
      }
    }
  }
}

- (void)panned:(id)panned
{
  pannedCopy = panned;
  if (self->_cleanupMode != 1 || self->_vfxBrushView)
  {
    view = [(PUCleanupOverlayViewController *)self view];
    [pannedCopy locationInView:view];
    v8 = v7;
    v10 = v9;

    overlayControllerDelegate = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
    [overlayControllerDelegate scaledBrushRadiusForTouchType:self->_touchType];
    v13 = v12;

    state = [pannedCopy state];
    if (state > 3)
    {
      if ((state - 4) < 2)
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
      switch(state)
      {
        case 1:
          [(NUMediaView *)self->_mediaView imageFrame];
          v53 = v52;
          v55 = v54;
          v57 = v56;
          v59 = v58;
          mediaView = self->_mediaView;
          view2 = [(PUCleanupOverlayViewController *)self view];
          [(NUMediaView *)mediaView convertRect:view2 toView:v53, v55, v57, v59];
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
            overlayControllerDelegate2 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
            [overlayControllerDelegate2 hidePromptViewIfNeededAnimated:0];

            v71 = objc_alloc(MEMORY[0x1E69B3B90]);
            v72 = *(MEMORY[0x1E69B3908] + 16);
            v156[0] = *MEMORY[0x1E69B3908];
            v156[1] = v72;
            LODWORD(v72) = 1045220557;
            LODWORD(v73) = 1.0;
            v74 = [v71 initWithRadius:v156 softness:0 opacity:COERCE_DOUBLE(__PAIR64__(DWORD1(v156[0]) clipRect:v13)) pressureMode:{*&v72, v73}];
            [(PUCleanupOverlayViewController *)self setBrushStroke:v74];

            touchType = self->_touchType;
            globalSettings = [MEMORY[0x1E69C4290] globalSettings];
            v77 = globalSettings;
            if (touchType)
            {
              [globalSettings subjectExclusionMaskHitRadiusForPencilTouch];
            }

            else
            {
              [globalSettings subjectExclusionMaskHitRadiusForDirectTouch];
            }

            v103 = v78;

            overlayControllerDelegate3 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
            [overlayControllerDelegate3 originalPointFromOverlayViewPoint:{v8, v10}];
            v106 = v105;
            v108 = v107;

            overlayControllerDelegate4 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
            [overlayControllerDelegate4 subjectExclusionMaskBrushRadiusForScreenSpaceRadius:v103];
            v111 = v110;

            overlayControllerDelegate5 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
            v113 = [overlayControllerDelegate5 brushStrokeExclusionMaskForStrokeStartingAtImageSpacePoint:v106 withRadius:{v108, v111}];
            v114 = self->_brushStrokeExclusionMask;
            self->_brushStrokeExclusionMask = v113;

            overlayControllerDelegate6 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
            v116 = [overlayControllerDelegate6 transformedImageForBrushStrokeExclusionMask:self->_brushStrokeExclusionMask];

            cleanupMode = self->_cleanupMode;
            if (v116)
            {
              if (cleanupMode == 1)
              {
                v118 = [v116 imageByApplyingFilter:@"CIMaskToAlpha"];
                context = [MEMORY[0x1E695F620] context];
                [v118 extent];
                v120 = [context createCGImage:v118 fromRect:?];

                [(PUVFXBrushView *)self->_vfxBrushView setMask:v120];
                CGImageRelease(v120);
              }

              brushView = [(PUCleanupOverlayViewController *)self brushView];
              v122 = brushView;
              v123 = v116;
            }

            else
            {
              if (cleanupMode == 1)
              {
                [(PUVFXBrushView *)self->_vfxBrushView setMask:0];
              }

              brushView = [(PUCleanupOverlayViewController *)self brushView];
              v122 = brushView;
              v123 = 0;
            }

            [brushView setBrushStrokeExclusionMask:v123];

            if (self->_cleanupMode == 1)
            {
              if (!self->_vfxBrushView)
              {
                currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler handleFailureInMethod:a2 object:self file:@"PUCleanupOverlayViewController.m" lineNumber:300 description:@"Nil brushview"];
              }

              overlayControllerDelegate7 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
              [overlayControllerDelegate7 scaledBrushRadiusForTouchType:self->_touchType];
              v126 = v125;

              view3 = [(PUCleanupOverlayViewController *)self view];
              _visibleImageRectOverlayView = [(NUMediaView *)self->_mediaView _visibleImageRectOverlayView];
              [view3 convertPoint:_visibleImageRectOverlayView toView:{0.0, 0.0}];
              v130 = v129;
              v132 = v131;

              view4 = [(PUCleanupOverlayViewController *)self view];
              _visibleImageRectOverlayView2 = [(NUMediaView *)self->_mediaView _visibleImageRectOverlayView];
              [view4 convertPoint:_visibleImageRectOverlayView2 toView:{0.0, v126}];
              v136 = v135;
              v138 = v137;

              [(PUVFXBrushView *)self->_vfxBrushView setBrushRadius:sqrt((v138 - v132) * (v138 - v132) + (v136 - v130) * (v136 - v130)) * 4.0];
            }

            v139 = v8;
            v140 = v10;
            brushStroke = [(PUCleanupOverlayViewController *)self brushStroke];
            LODWORD(v142) = 1.0;
            *&v143 = v8;
            *&v144 = v10;
            [brushStroke appendPoint:{v143, v144, v142}];

            if (self->_cleanupMode == 1)
            {
              view5 = [(PUCleanupOverlayViewController *)self view];
              _visibleImageRectOverlayView3 = [(NUMediaView *)self->_mediaView _visibleImageRectOverlayView];
              [view5 convertPoint:_visibleImageRectOverlayView3 toView:{v8, v10}];
              v148 = v147;
              v150 = v149;

              [(PUVFXBrushView *)self->_vfxBrushView startEmissionAtPoint:v148, v150];
            }

            brushView = self->_brushView;
            brushStroke2 = [(PUCleanupOverlayViewController *)self brushStroke];
            [brushStroke2 radius];
            [(PUCleanupToolBrushView *)brushView startStrokeWithPoint:v139 radius:v140, v153];

            [(PUCleanupToolBrushView *)self->_brushView setShouldDrawCursor:0];
          }

          else
          {
            [pannedCopy setEnabled:0];
            [pannedCopy setEnabled:1];
          }

          break;
        case 2:
          view6 = [(PUCleanupOverlayViewController *)self view];
          [pannedCopy locationInView:view6];
          v81 = v80;
          v83 = v82;

          v84 = v81;
          v85 = v83;
          brushStroke3 = [(PUCleanupOverlayViewController *)self brushStroke];
          v87 = [brushStroke3 pointCount] - 1;

          brushStroke4 = [(PUCleanupOverlayViewController *)self brushStroke];
          [brushStroke4 pointAtIndex:v87];
          v90 = v89;
          v92 = v91;

          if ((v85 - v92) * (v85 - v92) + (v84 - v90) * (v84 - v90) >= 2.0)
          {
            brushStroke5 = [(PUCleanupOverlayViewController *)self brushStroke];
            LODWORD(v94) = 1.0;
            *&v95 = v81;
            *&v96 = v83;
            [brushStroke5 appendPoint:{v95, v96, v94}];

            [(PUCleanupToolBrushView *)self->_brushView addPointToStroke:v84, v85];
            if (self->_cleanupMode == 1)
            {
              view7 = [(PUCleanupOverlayViewController *)self view];
              _visibleImageRectOverlayView4 = [(NUMediaView *)self->_mediaView _visibleImageRectOverlayView];
              [view7 convertPoint:_visibleImageRectOverlayView4 toView:{v81, v83}];
              v100 = v99;
              v102 = v101;

              [(PUVFXBrushView *)self->_vfxBrushView setBrushPosition:v100, v102];
            }
          }

          break;
        case 3:
          view8 = [(PUCleanupOverlayViewController *)self view];
          [pannedCopy locationInView:view8];
          v17 = v16;
          v19 = v18;

          v20 = v17;
          brushStroke6 = [(PUCleanupOverlayViewController *)self brushStroke];
          v23 = [brushStroke6 pointCount] - 1;

          brushStroke7 = [(PUCleanupOverlayViewController *)self brushStroke];
          [brushStroke7 pointAtIndex:v23];
          v26 = v25;
          v28 = v27;

          if (v26 != v20 || (v21 = v19, v28 != v21))
          {
            brushStroke8 = [(PUCleanupOverlayViewController *)self brushStroke];
            LODWORD(v30) = 1.0;
            *&v31 = v17;
            *&v32 = v19;
            [brushStroke8 appendPoint:{v31, v32, v30}];

            if (self->_cleanupMode != 1)
            {
              goto LABEL_13;
            }

            view9 = [(PUCleanupOverlayViewController *)self view];
            _visibleImageRectOverlayView5 = [(NUMediaView *)self->_mediaView _visibleImageRectOverlayView];
            [view9 convertPoint:_visibleImageRectOverlayView5 toView:{v17, v19}];
            v36 = v35;
            v38 = v37;

            [(PUVFXBrushView *)self->_vfxBrushView setBrushPosition:v36, v38];
          }

          if (self->_cleanupMode == 1)
          {
            [(PUVFXBrushView *)self->_vfxBrushView endEmission];
          }

LABEL_13:
          brushStroke9 = [(PUCleanupOverlayViewController *)self brushStroke];
          if (!brushStroke9)
          {
            goto LABEL_46;
          }

          v40 = brushStroke9;
          brushStroke10 = [(PUCleanupOverlayViewController *)self brushStroke];
          pointCount = [brushStroke10 pointCount];

          if (pointCount < 1)
          {
            goto LABEL_46;
          }

          overlayControllerDelegate8 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
          [overlayControllerDelegate8 brushRadiusForTouchType:self->_touchType];
          v45 = v44;
          brushStroke11 = [(PUCleanupOverlayViewController *)self brushStroke];
          LODWORD(v47) = v45;
          [brushStroke11 setRadius:v47];

          v48 = self->_cleanupMode;
          if (v48 == 1)
          {
            overlayControllerDelegate9 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
            brushStroke12 = [(PUCleanupOverlayViewController *)self brushStroke];
            [overlayControllerDelegate9 addObjectRemovalUsingStroke:brushStroke12 exclusionMask:self->_brushStrokeExclusionMask];
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

            overlayControllerDelegate9 = [(PUCleanupOverlayViewController *)self overlayControllerDelegate];
            brushStroke12 = [(PUCleanupOverlayViewController *)self brushStroke];
            [overlayControllerDelegate9 addStroke:brushStroke12 closeAndFillStroke:0 completion:&__block_literal_global_32087];
          }

          goto LABEL_46;
      }
    }
  }
}

- (void)setCleanupMode:(unint64_t)mode
{
  self->_cleanupMode = mode;
  if (self->_toolDisabled)
  {
    panGestureRecognizer = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
    [panGestureRecognizer setEnabled:0];

    tapGestureRecognizer = [(PUCleanupOverlayViewController *)self tapGestureRecognizer];
    [tapGestureRecognizer setEnabled:0];

    hoverGestureRecognizer = [(PUCleanupOverlayViewController *)self hoverGestureRecognizer];
  }

  else
  {
    if (mode == 2 || mode == 1)
    {
      panGestureRecognizer2 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
      [panGestureRecognizer2 setEnabled:1];

      hoverGestureRecognizer = [(PUCleanupOverlayViewController *)self tapGestureRecognizer];
      v10 = hoverGestureRecognizer;
      v7 = 1;
      goto LABEL_9;
    }

    if (mode)
    {
      return;
    }

    panGestureRecognizer3 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
    [panGestureRecognizer3 setEnabled:0];

    hoverGestureRecognizer = [(PUCleanupOverlayViewController *)self tapGestureRecognizer];
  }

  v10 = hoverGestureRecognizer;
  v7 = 0;
LABEL_9:
  [hoverGestureRecognizer setEnabled:v7];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v20.receiver = self;
  v20.super_class = PUCleanupOverlayViewController;
  [(PUCleanupOverlayViewController *)&v20 viewWillDisappear:disappear];
  mediaViewPointerInteraction = [(PUCleanupOverlayViewController *)self mediaViewPointerInteraction];

  if (mediaViewPointerInteraction)
  {
    mediaView = [(PUCleanupOverlayViewController *)self mediaView];
    mediaViewPointerInteraction2 = [(PUCleanupOverlayViewController *)self mediaViewPointerInteraction];
    [mediaView removeInteraction:mediaViewPointerInteraction2];

    [(PUCleanupOverlayViewController *)self setMediaViewPointerInteraction:0];
  }

  mediaView2 = [(PUCleanupOverlayViewController *)self mediaView];
  [mediaView2 setScrollEnabled:1];

  panGestureRecognizer = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
  view = [panGestureRecognizer view];
  panGestureRecognizer2 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
  [view removeGestureRecognizer:panGestureRecognizer2];

  tapGestureRecognizer = [(PUCleanupOverlayViewController *)self tapGestureRecognizer];
  view2 = [tapGestureRecognizer view];
  tapGestureRecognizer2 = [(PUCleanupOverlayViewController *)self tapGestureRecognizer];
  [view2 removeGestureRecognizer:tapGestureRecognizer2];

  hoverGestureRecognizer = [(PUCleanupOverlayViewController *)self hoverGestureRecognizer];
  view3 = [hoverGestureRecognizer view];
  hoverGestureRecognizer2 = [(PUCleanupOverlayViewController *)self hoverGestureRecognizer];
  [view3 removeGestureRecognizer:hoverGestureRecognizer2];

  longPressGestureRecognizer = [(PUCleanupOverlayViewController *)self longPressGestureRecognizer];
  view4 = [longPressGestureRecognizer view];
  longPressGestureRecognizer2 = [(PUCleanupOverlayViewController *)self longPressGestureRecognizer];
  [view4 removeGestureRecognizer:longPressGestureRecognizer2];

  [(PUCleanupOverlayViewController *)self setPanGestureRecognizer:0];
  [(PUCleanupOverlayViewController *)self setTapGestureRecognizer:0];
  [(PUCleanupOverlayViewController *)self setHoverGestureRecognizer:0];
  [(PUCleanupOverlayViewController *)self setLongPressGestureRecognizer:0];
  [(PUCleanupOverlayViewController *)self removeBrushView];
}

- (void)viewWillAppear:(BOOL)appear
{
  v37.receiver = self;
  v37.super_class = PUCleanupOverlayViewController;
  [(PUCleanupOverlayViewController *)&v37 viewWillAppear:appear];
  mediaViewPointerInteraction = [(PUCleanupOverlayViewController *)self mediaViewPointerInteraction];

  if (!mediaViewPointerInteraction)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self];
    [(PUCleanupOverlayViewController *)self setMediaViewPointerInteraction:v5];

    mediaView = [(PUCleanupOverlayViewController *)self mediaView];
    mediaViewPointerInteraction2 = [(PUCleanupOverlayViewController *)self mediaViewPointerInteraction];
    [mediaView addInteraction:mediaViewPointerInteraction2];
  }

  v8 = [[ImmediatePanGestureRecognizer alloc] initWithTarget:self action:sel_panned_];
  [(PUCleanupOverlayViewController *)self setPanGestureRecognizer:v8];

  panGestureRecognizer = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
  [panGestureRecognizer setMaximumNumberOfTouches:1];

  panGestureRecognizer2 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
  [panGestureRecognizer2 setEnabled:0];

  panGestureRecognizer3 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
  [panGestureRecognizer3 setDelegate:0];

  panGestureRecognizer4 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
  [panGestureRecognizer4 setTouchTypeDelegate:self];

  mediaView2 = [(PUCleanupOverlayViewController *)self mediaView];
  _scrollView = [mediaView2 _scrollView];
  pinchGestureRecognizer = [_scrollView pinchGestureRecognizer];

  panGestureRecognizer5 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
  [pinchGestureRecognizer requireGestureRecognizerToFail:panGestureRecognizer5];

  v17 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapped_];
  [(PUCleanupOverlayViewController *)self setTapGestureRecognizer:v17];

  tapGestureRecognizer = [(PUCleanupOverlayViewController *)self tapGestureRecognizer];
  [tapGestureRecognizer setEnabled:0];

  tapGestureRecognizer2 = [(PUCleanupOverlayViewController *)self tapGestureRecognizer];
  [tapGestureRecognizer2 setDelegate:0];

  v20 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:self action:sel_hovered_];
  [(PUCleanupOverlayViewController *)self setHoverGestureRecognizer:v20];

  hoverGestureRecognizer = [(PUCleanupOverlayViewController *)self hoverGestureRecognizer];
  [hoverGestureRecognizer setEnabled:1];

  hoverGestureRecognizer2 = [(PUCleanupOverlayViewController *)self hoverGestureRecognizer];
  [hoverGestureRecognizer2 setDelegate:0];

  v23 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_longPressed_];
  [(PUCleanupOverlayViewController *)self setLongPressGestureRecognizer:v23];

  longPressGestureRecognizer = [(PUCleanupOverlayViewController *)self longPressGestureRecognizer];
  [longPressGestureRecognizer setMinimumPressDuration:1.0];

  longPressGestureRecognizer2 = [(PUCleanupOverlayViewController *)self longPressGestureRecognizer];
  [longPressGestureRecognizer2 setAllowableMovement:7.0];

  longPressGestureRecognizer3 = [(PUCleanupOverlayViewController *)self longPressGestureRecognizer];
  [longPressGestureRecognizer3 setEnabled:1];

  longPressGestureRecognizer4 = [(PUCleanupOverlayViewController *)self longPressGestureRecognizer];
  [longPressGestureRecognizer4 setDelegate:0];

  mediaView3 = [(PUCleanupOverlayViewController *)self mediaView];
  panGestureRecognizer6 = [(PUCleanupOverlayViewController *)self panGestureRecognizer];
  [mediaView3 addGestureRecognizer:panGestureRecognizer6];

  mediaView4 = [(PUCleanupOverlayViewController *)self mediaView];
  tapGestureRecognizer3 = [(PUCleanupOverlayViewController *)self tapGestureRecognizer];
  [mediaView4 addGestureRecognizer:tapGestureRecognizer3];

  mediaView5 = [(PUCleanupOverlayViewController *)self mediaView];
  hoverGestureRecognizer3 = [(PUCleanupOverlayViewController *)self hoverGestureRecognizer];
  [mediaView5 addGestureRecognizer:hoverGestureRecognizer3];

  mediaView6 = [(PUCleanupOverlayViewController *)self mediaView];
  longPressGestureRecognizer5 = [(PUCleanupOverlayViewController *)self longPressGestureRecognizer];
  [mediaView6 addGestureRecognizer:longPressGestureRecognizer5];

  [(PUCleanupOverlayViewController *)self setCleanupMode:self->_cleanupMode];
  hoverGestureRecognizer4 = [(PUCleanupOverlayViewController *)self hoverGestureRecognizer];
  [hoverGestureRecognizer4 setEnabled:1];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PUCleanupOverlayViewController;
  [(PUCleanupOverlayViewController *)&v4 viewDidLoad];
  view = [(PUCleanupOverlayViewController *)self view];
  [view setUserInteractionEnabled:0];
}

- (PUCleanupOverlayViewController)initWithMediaView:(id)view isHDR:(BOOL)r
{
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCleanupOverlayViewController.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"mediaView != nil"}];
  }

  v14.receiver = self;
  v14.super_class = PUCleanupOverlayViewController;
  v9 = [(PUCleanupOverlayViewController *)&v14 init];
  if (v9)
  {
    v10 = [[PUCleanupOverlayView alloc] initWithMediaView:viewCopy];
    overlayView = v9->_overlayView;
    v9->_overlayView = v10;

    objc_storeStrong(&v9->_mediaView, view);
    v9->_isHDR = r;
  }

  return v9;
}

@end