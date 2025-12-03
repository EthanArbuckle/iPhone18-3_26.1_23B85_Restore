@interface PXBasicUIViewTileAnimator
+ (void)animateWithOptions:(id)options animations:(id)animations completion:(id)completion;
- (void)_applyGeometry:(PXTileGeometry *)geometry toTile:(id)tile;
- (void)_applyGeometry:(PXTileGeometry *)geometry userData:(id)data toTile:(id)tile;
- (void)animateTile:(id)tile toGeometry:(PXTileGeometry *)geometry userData:(id)data withOptions:(id)options completionHandler:(id)handler;
- (void)prepareTile:(id)tile withGeometry:(PXTileGeometry *)geometry userData:(id)data;
- (void)suspendAnimationsForTile:(id)tile;
@end

@implementation PXBasicUIViewTileAnimator

+ (void)animateWithOptions:(id)options animations:(id)animations completion:(id)completion
{
  optionsCopy = options;
  animationsCopy = animations;
  completionCopy = completion;
  if (optionsCopy)
  {
    style = [optionsCopy style];
    v10 = MEMORY[0x1E69DD250];
    if (style == 2)
    {
      [optionsCopy delay];
      [v10 _animateUsingDefaultDampedSpringWithDelay:2 initialSpringVelocity:animationsCopy options:completionCopy animations:? completion:?];
    }

    else if (style == 3)
    {
      [optionsCopy duration];
      [v10 px_animateUsingDefaultDampedEaseInEaseOutWithDuration:animationsCopy animations:completionCopy completion:?];
    }

    else
    {
      [optionsCopy duration];
      v12 = v11;
      [optionsCopy delay];
      [v10 animateWithDuration:2 delay:animationsCopy options:completionCopy animations:v12 completion:v13];
    }
  }

  else
  {
    animationsCopy[2](animationsCopy);
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }
}

- (void)_applyGeometry:(PXTileGeometry *)geometry userData:(id)data toTile:(id)tile
{
  v8 = *&geometry->contentSize.height;
  v30 = *&geometry->hidden;
  v31 = v8;
  v9 = *&geometry->contentsRect.size.height;
  v32 = *&geometry->contentsRect.origin.y;
  v33 = v9;
  v10 = *&geometry->transform.c;
  v26 = *&geometry->transform.a;
  v27 = v10;
  v11 = *&geometry->alpha;
  v28 = *&geometry->transform.tx;
  v29 = v11;
  size = geometry->frame.size;
  origin = geometry->frame.origin;
  v23 = size;
  v13 = geometry->size;
  center = geometry->center;
  v25 = v13;
  tileCopy = tile;
  dataCopy = data;
  [(PXBasicUIViewTileAnimator *)self _applyGeometry:&origin toTile:tileCopy];
  v16 = *&geometry->contentSize.height;
  v30 = *&geometry->hidden;
  v31 = v16;
  v17 = *&geometry->contentsRect.size.height;
  v32 = *&geometry->contentsRect.origin.y;
  v33 = v17;
  v18 = *&geometry->transform.c;
  v26 = *&geometry->transform.a;
  v27 = v18;
  v19 = *&geometry->alpha;
  v28 = *&geometry->transform.tx;
  v29 = v19;
  v20 = geometry->frame.size;
  origin = geometry->frame.origin;
  v23 = v20;
  v21 = geometry->size;
  center = geometry->center;
  v25 = v21;
  [tileCopy didApplyGeometry:&origin withUserData:dataCopy];
}

- (void)_applyGeometry:(PXTileGeometry *)geometry toTile:(id)tile
{
  view = [tile view];
  [view setCenter:{geometry->center.x, geometry->center.y}];
  [view setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), geometry->size.width, geometry->size.height}];
  [view setAlpha:geometry->alpha];
  [view setHidden:geometry->hidden];
  v6 = *&geometry->transform.c;
  v8[0] = *&geometry->transform.a;
  v8[1] = v6;
  v8[2] = *&geometry->transform.tx;
  [view setTransform:v8];
  layer = [view layer];
  [layer setZPosition:geometry->zPosition + -11000000.0];

  if ([MEMORY[0x1E69DD250] _isInAnimationBlockWithAnimationsEnabled])
  {
    [view layoutIfNeeded];
  }
}

- (void)suspendAnimationsForTile:(id)tile
{
  tileCopy = tile;
  suspendedTiles = self->_suspendedTiles;
  v8 = tileCopy;
  if (!suspendedTiles)
  {
    v6 = [MEMORY[0x1E696AB50] set];
    v7 = self->_suspendedTiles;
    self->_suspendedTiles = v6;

    tileCopy = v8;
    suspendedTiles = self->_suspendedTiles;
  }

  [(NSCountedSet *)suspendedTiles addObject:tileCopy];
}

- (void)animateTile:(id)tile toGeometry:(PXTileGeometry *)geometry userData:(id)data withOptions:(id)options completionHandler:(id)handler
{
  v94[1] = *MEMORY[0x1E69E9840];
  tileCopy = tile;
  dataCopy = data;
  optionsCopy = options;
  handlerCopy = handler;
  if ([(NSCountedSet *)self->_suspendedTiles containsObject:tileCopy])
  {
    handlerCopy[2](handlerCopy);
  }

  else
  {
    shouldNotifyTiles = [optionsCopy shouldNotifyTiles];
    v17 = shouldNotifyTiles;
    if (shouldNotifyTiles && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v18 = *&geometry->contentSize.height;
      v93[8] = *&geometry->hidden;
      v93[9] = v18;
      v19 = *&geometry->contentsRect.size.height;
      v93[10] = *&geometry->contentsRect.origin.y;
      v93[11] = v19;
      v20 = *&geometry->transform.c;
      v93[4] = *&geometry->transform.a;
      v93[5] = v20;
      v21 = *&geometry->alpha;
      v93[6] = *&geometry->transform.tx;
      v93[7] = v21;
      size = geometry->frame.size;
      v93[0] = geometry->frame.origin;
      v93[1] = size;
      v23 = geometry->size;
      v93[2] = geometry->center;
      v93[3] = v23;
      [tileCopy willAnimateToGeometry:v93 toUserData:dataCopy withOptions:optionsCopy];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    v24 = *&geometry->contentSize.height;
    v89 = *&geometry->hidden;
    v90 = v24;
    v25 = *&geometry->contentsRect.size.height;
    v91 = *&geometry->contentsRect.origin.y;
    v92 = v25;
    v26 = *&geometry->transform.c;
    v85 = *&geometry->transform.a;
    v86 = v26;
    v27 = *&geometry->alpha;
    v87 = *&geometry->transform.tx;
    v88 = v27;
    v28 = geometry->frame.size;
    origin = geometry->frame.origin;
    v82 = v28;
    v29 = geometry->size;
    center = geometry->center;
    aBlock[2] = __91__PXBasicUIViewTileAnimator_animateTile_toGeometry_userData_withOptions_completionHandler___block_invoke;
    aBlock[3] = &unk_1E773D860;
    aBlock[4] = self;
    v84 = v29;
    v30 = dataCopy;
    v79 = v30;
    v31 = tileCopy;
    v80 = v31;
    v32 = _Block_copy(aBlock);
    v57 = MEMORY[0x1E69E9820];
    v58 = 3221225472;
    v59 = __91__PXBasicUIViewTileAnimator_animateTile_toGeometry_userData_withOptions_completionHandler___block_invoke_2;
    v60 = &unk_1E773D888;
    v77 = v17;
    v33 = v31;
    v61 = v33;
    v34 = *&geometry->contentSize.height;
    v73 = *&geometry->hidden;
    v74 = v34;
    v35 = *&geometry->contentsRect.size.height;
    v75 = *&geometry->contentsRect.origin.y;
    v76 = v35;
    v36 = *&geometry->transform.c;
    v69 = *&geometry->transform.a;
    v70 = v36;
    v37 = *&geometry->alpha;
    v71 = *&geometry->transform.tx;
    v72 = v37;
    v38 = geometry->frame.size;
    v65 = geometry->frame.origin;
    v66 = v38;
    v39 = geometry->size;
    v67 = geometry->center;
    v68 = v39;
    v62 = v30;
    v40 = optionsCopy;
    v63 = v40;
    v41 = handlerCopy;
    v64 = v41;
    v42 = _Block_copy(&v57);
    if (v40)
    {
      if ([v40 style] == 1)
      {
        view = [v33 view];
        v44 = [view snapshotViewAfterScreenUpdates:0];
        layer = [view layer];
        presentationLayer = [layer presentationLayer];
        [presentationLayer frame];
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v54 = v53;

        [v44 setFrame:{v48, v50, v52, v54}];
        superview = [view superview];
        [superview addSubview:v44];

        if (v44)
        {
          v94[0] = v44;
          v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:1];
        }

        else
        {
          v56 = MEMORY[0x1E695E0F0];
        }

        [MEMORY[0x1E69DD250] performSystemAnimation:0 onViews:v56 options:0 animations:0 completion:v42];
        v32[2](v32);
      }

      else
      {
        [objc_opt_class() animateWithOptions:v40 animations:v32 completion:v42];
      }
    }

    else
    {
      v32[2](v32);
      v41[2](v41);
    }
  }
}

uint64_t __91__PXBasicUIViewTileAnimator_animateTile_toGeometry_userData_withOptions_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 200);
  v11[8] = *(a1 + 184);
  v11[9] = v4;
  v5 = *(a1 + 232);
  v11[10] = *(a1 + 216);
  v11[11] = v5;
  v6 = *(a1 + 136);
  v11[4] = *(a1 + 120);
  v11[5] = v6;
  v7 = *(a1 + 168);
  v11[6] = *(a1 + 152);
  v11[7] = v7;
  v8 = *(a1 + 72);
  v11[0] = *(a1 + 56);
  v11[1] = v8;
  v9 = *(a1 + 104);
  v11[2] = *(a1 + 88);
  v11[3] = v9;
  return [v2 _applyGeometry:v11 userData:v1 toTile:v3];
}

uint64_t __91__PXBasicUIViewTileAnimator_animateTile_toGeometry_userData_withOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 256) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 208);
    v12[8] = *(a1 + 192);
    v12[9] = v5;
    v6 = *(a1 + 240);
    v12[10] = *(a1 + 224);
    v12[11] = v6;
    v7 = *(a1 + 144);
    v12[4] = *(a1 + 128);
    v12[5] = v7;
    v8 = *(a1 + 176);
    v12[6] = *(a1 + 160);
    v12[7] = v8;
    v9 = *(a1 + 80);
    v12[0] = *(a1 + 64);
    v12[1] = v9;
    v10 = *(a1 + 112);
    v12[2] = *(a1 + 96);
    v12[3] = v10;
    [v2 didAnimateToGeometry:v12 toUserData:v3 withOptions:v4];
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)prepareTile:(id)tile withGeometry:(PXTileGeometry *)geometry userData:(id)data
{
  tileCopy = tile;
  dataCopy = data;
  v10 = MEMORY[0x1E69DD250];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v11 = *&geometry->contentSize.height;
  v30 = *&geometry->hidden;
  v31 = v11;
  v12 = *&geometry->contentsRect.size.height;
  v32 = *&geometry->contentsRect.origin.y;
  v33 = v12;
  v13 = *&geometry->transform.a;
  v27 = *&geometry->transform.c;
  v14 = *&geometry->alpha;
  v28 = *&geometry->transform.tx;
  v29 = v14;
  size = geometry->frame.size;
  origin = geometry->frame.origin;
  v23 = size;
  v16 = geometry->size;
  center = geometry->center;
  v19[2] = __63__PXBasicUIViewTileAnimator_prepareTile_withGeometry_userData___block_invoke;
  v19[3] = &unk_1E773D860;
  v25 = v16;
  v26 = v13;
  v19[4] = self;
  v20 = dataCopy;
  v21 = tileCopy;
  v17 = tileCopy;
  v18 = dataCopy;
  [v10 performWithoutAnimation:v19];
}

void __63__PXBasicUIViewTileAnimator_prepareTile_withGeometry_userData___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 200);
  v12[8] = *(a1 + 184);
  v12[9] = v5;
  v6 = *(a1 + 232);
  v12[10] = *(a1 + 216);
  v12[11] = v6;
  v7 = *(a1 + 136);
  v12[4] = *(a1 + 120);
  v12[5] = v7;
  v8 = *(a1 + 168);
  v12[6] = *(a1 + 152);
  v12[7] = v8;
  v9 = *(a1 + 72);
  v12[0] = *(a1 + 56);
  v12[1] = v9;
  v10 = *(a1 + 104);
  v12[2] = *(a1 + 88);
  v12[3] = v10;
  [v2 _applyGeometry:v12 userData:v3 toTile:v4];
  v11 = [*(a1 + 48) view];
  [v11 layoutIfNeeded];
}

@end