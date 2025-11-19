@interface PXWidgetCompositionUIViewElementTileAnimator
- (void)animateTile:(id)a3 toGeometry:(PXTileGeometry *)a4 userData:(id)a5 withOptions:(id)a6 completionHandler:(id)a7;
- (void)prepareTile:(id)a3 withGeometry:(PXTileGeometry *)a4 userData:(id)a5;
@end

@implementation PXWidgetCompositionUIViewElementTileAnimator

- (void)animateTile:(id)a3 toGeometry:(PXTileGeometry *)a4 userData:(id)a5 withOptions:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = *&a4->contentSize.height;
  v45 = *&a4->hidden;
  v46 = v14;
  v15 = *&a4->contentsRect.size.height;
  v47 = *&a4->contentsRect.origin.y;
  v48 = v15;
  v16 = *&a4->transform.c;
  v41 = *&a4->transform.a;
  v42 = v16;
  v17 = *&a4->alpha;
  v43 = *&a4->transform.tx;
  v44 = v17;
  size = a4->frame.size;
  origin = a4->frame.origin;
  v38 = size;
  v19 = a4->size;
  center = a4->center;
  v40 = v19;
  v20 = a6;
  v21 = a5;
  v22 = [v12 _willAnimateTileToGeometry:&origin withOptions:v20];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __110__PXWidgetCompositionUIViewElementTileAnimator_animateTile_toGeometry_userData_withOptions_completionHandler___block_invoke;
  v33[3] = &unk_1E774A0E0;
  v34 = v12;
  v35 = v22;
  v36 = v13;
  v32.receiver = self;
  v32.super_class = PXWidgetCompositionUIViewElementTileAnimator;
  v23 = *&a4->contentSize.height;
  v45 = *&a4->hidden;
  v46 = v23;
  v24 = *&a4->contentsRect.size.height;
  v47 = *&a4->contentsRect.origin.y;
  v48 = v24;
  v25 = *&a4->transform.c;
  v41 = *&a4->transform.a;
  v42 = v25;
  v26 = *&a4->alpha;
  v43 = *&a4->transform.tx;
  v44 = v26;
  v27 = a4->frame.size;
  origin = a4->frame.origin;
  v38 = v27;
  v28 = a4->size;
  center = a4->center;
  v40 = v28;
  v29 = v13;
  v30 = v22;
  v31 = v12;
  [(PXBasicUIViewTileAnimator *)&v32 animateTile:v31 toGeometry:&origin userData:v21 withOptions:v20 completionHandler:v33];

  [v31 _didAnimateTileWithContext:v30];
}

uint64_t __110__PXWidgetCompositionUIViewElementTileAnimator_animateTile_toGeometry_userData_withOptions_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _didCompleteTileAnimationWithContext:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)prepareTile:(id)a3 withGeometry:(PXTileGeometry *)a4 userData:(id)a5
{
  v8 = *&a4->contentSize.height;
  v32 = *&a4->hidden;
  v33 = v8;
  v9 = *&a4->contentsRect.size.height;
  v34 = *&a4->contentsRect.origin.y;
  v35 = v9;
  v10 = *&a4->transform.c;
  v28 = *&a4->transform.a;
  v29 = v10;
  v11 = *&a4->alpha;
  v30 = *&a4->transform.tx;
  v31 = v11;
  size = a4->frame.size;
  origin = a4->frame.origin;
  v25 = size;
  v13 = a4->size;
  center = a4->center;
  v27 = v13;
  v14 = a5;
  v15 = a3;
  v16 = [v15 _willAnimateTileToGeometry:&origin withOptions:0];
  v23.receiver = self;
  v23.super_class = PXWidgetCompositionUIViewElementTileAnimator;
  v17 = *&a4->contentSize.height;
  v32 = *&a4->hidden;
  v33 = v17;
  v18 = *&a4->contentsRect.size.height;
  v34 = *&a4->contentsRect.origin.y;
  v35 = v18;
  v19 = *&a4->transform.c;
  v28 = *&a4->transform.a;
  v29 = v19;
  v20 = *&a4->alpha;
  v30 = *&a4->transform.tx;
  v31 = v20;
  v21 = a4->frame.size;
  origin = a4->frame.origin;
  v25 = v21;
  v22 = a4->size;
  center = a4->center;
  v27 = v22;
  [(PXBasicUIViewTileAnimator *)&v23 prepareTile:v15 withGeometry:&origin userData:v14];

  [v15 _didAnimateTileWithContext:v16];
  [v15 _didCompleteTileAnimationWithContext:v16];
}

@end