@interface PXBasicUIViewTileAnimator
+ (void)animateWithOptions:(id)a3 animations:(id)a4 completion:(id)a5;
- (void)_applyGeometry:(PXTileGeometry *)a3 toTile:(id)a4;
- (void)_applyGeometry:(PXTileGeometry *)a3 userData:(id)a4 toTile:(id)a5;
- (void)animateTile:(id)a3 toGeometry:(PXTileGeometry *)a4 userData:(id)a5 withOptions:(id)a6 completionHandler:(id)a7;
- (void)prepareTile:(id)a3 withGeometry:(PXTileGeometry *)a4 userData:(id)a5;
- (void)suspendAnimationsForTile:(id)a3;
@end

@implementation PXBasicUIViewTileAnimator

+ (void)animateWithOptions:(id)a3 animations:(id)a4 completion:(id)a5
{
  v14 = a3;
  v7 = a4;
  v8 = a5;
  if (v14)
  {
    v9 = [v14 style];
    v10 = MEMORY[0x1E69DD250];
    if (v9 == 2)
    {
      [v14 delay];
      [v10 _animateUsingDefaultDampedSpringWithDelay:2 initialSpringVelocity:v7 options:v8 animations:? completion:?];
    }

    else if (v9 == 3)
    {
      [v14 duration];
      [v10 px_animateUsingDefaultDampedEaseInEaseOutWithDuration:v7 animations:v8 completion:?];
    }

    else
    {
      [v14 duration];
      v12 = v11;
      [v14 delay];
      [v10 animateWithDuration:2 delay:v7 options:v8 animations:v12 completion:v13];
    }
  }

  else
  {
    v7[2](v7);
    if (v8)
    {
      v8[2](v8, 1);
    }
  }
}

- (void)_applyGeometry:(PXTileGeometry *)a3 userData:(id)a4 toTile:(id)a5
{
  v8 = *&a3->contentSize.height;
  v30 = *&a3->hidden;
  v31 = v8;
  v9 = *&a3->contentsRect.size.height;
  v32 = *&a3->contentsRect.origin.y;
  v33 = v9;
  v10 = *&a3->transform.c;
  v26 = *&a3->transform.a;
  v27 = v10;
  v11 = *&a3->alpha;
  v28 = *&a3->transform.tx;
  v29 = v11;
  size = a3->frame.size;
  origin = a3->frame.origin;
  v23 = size;
  v13 = a3->size;
  center = a3->center;
  v25 = v13;
  v14 = a5;
  v15 = a4;
  [(PXBasicUIViewTileAnimator *)self _applyGeometry:&origin toTile:v14];
  v16 = *&a3->contentSize.height;
  v30 = *&a3->hidden;
  v31 = v16;
  v17 = *&a3->contentsRect.size.height;
  v32 = *&a3->contentsRect.origin.y;
  v33 = v17;
  v18 = *&a3->transform.c;
  v26 = *&a3->transform.a;
  v27 = v18;
  v19 = *&a3->alpha;
  v28 = *&a3->transform.tx;
  v29 = v19;
  v20 = a3->frame.size;
  origin = a3->frame.origin;
  v23 = v20;
  v21 = a3->size;
  center = a3->center;
  v25 = v21;
  [v14 didApplyGeometry:&origin withUserData:v15];
}

- (void)_applyGeometry:(PXTileGeometry *)a3 toTile:(id)a4
{
  v5 = [a4 view];
  [v5 setCenter:{a3->center.x, a3->center.y}];
  [v5 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3->size.width, a3->size.height}];
  [v5 setAlpha:a3->alpha];
  [v5 setHidden:a3->hidden];
  v6 = *&a3->transform.c;
  v8[0] = *&a3->transform.a;
  v8[1] = v6;
  v8[2] = *&a3->transform.tx;
  [v5 setTransform:v8];
  v7 = [v5 layer];
  [v7 setZPosition:a3->zPosition + -11000000.0];

  if ([MEMORY[0x1E69DD250] _isInAnimationBlockWithAnimationsEnabled])
  {
    [v5 layoutIfNeeded];
  }
}

- (void)suspendAnimationsForTile:(id)a3
{
  v4 = a3;
  suspendedTiles = self->_suspendedTiles;
  v8 = v4;
  if (!suspendedTiles)
  {
    v6 = [MEMORY[0x1E696AB50] set];
    v7 = self->_suspendedTiles;
    self->_suspendedTiles = v6;

    v4 = v8;
    suspendedTiles = self->_suspendedTiles;
  }

  [(NSCountedSet *)suspendedTiles addObject:v4];
}

- (void)animateTile:(id)a3 toGeometry:(PXTileGeometry *)a4 userData:(id)a5 withOptions:(id)a6 completionHandler:(id)a7
{
  v94[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([(NSCountedSet *)self->_suspendedTiles containsObject:v12])
  {
    v15[2](v15);
  }

  else
  {
    v16 = [v14 shouldNotifyTiles];
    v17 = v16;
    if (v16 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v18 = *&a4->contentSize.height;
      v93[8] = *&a4->hidden;
      v93[9] = v18;
      v19 = *&a4->contentsRect.size.height;
      v93[10] = *&a4->contentsRect.origin.y;
      v93[11] = v19;
      v20 = *&a4->transform.c;
      v93[4] = *&a4->transform.a;
      v93[5] = v20;
      v21 = *&a4->alpha;
      v93[6] = *&a4->transform.tx;
      v93[7] = v21;
      size = a4->frame.size;
      v93[0] = a4->frame.origin;
      v93[1] = size;
      v23 = a4->size;
      v93[2] = a4->center;
      v93[3] = v23;
      [v12 willAnimateToGeometry:v93 toUserData:v13 withOptions:v14];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    v24 = *&a4->contentSize.height;
    v89 = *&a4->hidden;
    v90 = v24;
    v25 = *&a4->contentsRect.size.height;
    v91 = *&a4->contentsRect.origin.y;
    v92 = v25;
    v26 = *&a4->transform.c;
    v85 = *&a4->transform.a;
    v86 = v26;
    v27 = *&a4->alpha;
    v87 = *&a4->transform.tx;
    v88 = v27;
    v28 = a4->frame.size;
    origin = a4->frame.origin;
    v82 = v28;
    v29 = a4->size;
    center = a4->center;
    aBlock[2] = __91__PXBasicUIViewTileAnimator_animateTile_toGeometry_userData_withOptions_completionHandler___block_invoke;
    aBlock[3] = &unk_1E773D860;
    aBlock[4] = self;
    v84 = v29;
    v30 = v13;
    v79 = v30;
    v31 = v12;
    v80 = v31;
    v32 = _Block_copy(aBlock);
    v57 = MEMORY[0x1E69E9820];
    v58 = 3221225472;
    v59 = __91__PXBasicUIViewTileAnimator_animateTile_toGeometry_userData_withOptions_completionHandler___block_invoke_2;
    v60 = &unk_1E773D888;
    v77 = v17;
    v33 = v31;
    v61 = v33;
    v34 = *&a4->contentSize.height;
    v73 = *&a4->hidden;
    v74 = v34;
    v35 = *&a4->contentsRect.size.height;
    v75 = *&a4->contentsRect.origin.y;
    v76 = v35;
    v36 = *&a4->transform.c;
    v69 = *&a4->transform.a;
    v70 = v36;
    v37 = *&a4->alpha;
    v71 = *&a4->transform.tx;
    v72 = v37;
    v38 = a4->frame.size;
    v65 = a4->frame.origin;
    v66 = v38;
    v39 = a4->size;
    v67 = a4->center;
    v68 = v39;
    v62 = v30;
    v40 = v14;
    v63 = v40;
    v41 = v15;
    v64 = v41;
    v42 = _Block_copy(&v57);
    if (v40)
    {
      if ([v40 style] == 1)
      {
        v43 = [v33 view];
        v44 = [v43 snapshotViewAfterScreenUpdates:0];
        v45 = [v43 layer];
        v46 = [v45 presentationLayer];
        [v46 frame];
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v54 = v53;

        [v44 setFrame:{v48, v50, v52, v54}];
        v55 = [v43 superview];
        [v55 addSubview:v44];

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

- (void)prepareTile:(id)a3 withGeometry:(PXTileGeometry *)a4 userData:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x1E69DD250];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v11 = *&a4->contentSize.height;
  v30 = *&a4->hidden;
  v31 = v11;
  v12 = *&a4->contentsRect.size.height;
  v32 = *&a4->contentsRect.origin.y;
  v33 = v12;
  v13 = *&a4->transform.a;
  v27 = *&a4->transform.c;
  v14 = *&a4->alpha;
  v28 = *&a4->transform.tx;
  v29 = v14;
  size = a4->frame.size;
  origin = a4->frame.origin;
  v23 = size;
  v16 = a4->size;
  center = a4->center;
  v19[2] = __63__PXBasicUIViewTileAnimator_prepareTile_withGeometry_userData___block_invoke;
  v19[3] = &unk_1E773D860;
  v25 = v16;
  v26 = v13;
  v19[4] = self;
  v20 = v9;
  v21 = v8;
  v17 = v8;
  v18 = v9;
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