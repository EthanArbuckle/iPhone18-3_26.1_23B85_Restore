@interface PXWidgetCompositionUIViewElementTileAnimator
- (void)animateTile:(id)tile toGeometry:(PXTileGeometry *)geometry userData:(id)data withOptions:(id)options completionHandler:(id)handler;
- (void)prepareTile:(id)tile withGeometry:(PXTileGeometry *)geometry userData:(id)data;
@end

@implementation PXWidgetCompositionUIViewElementTileAnimator

- (void)animateTile:(id)tile toGeometry:(PXTileGeometry *)geometry userData:(id)data withOptions:(id)options completionHandler:(id)handler
{
  tileCopy = tile;
  handlerCopy = handler;
  v14 = *&geometry->contentSize.height;
  v45 = *&geometry->hidden;
  v46 = v14;
  v15 = *&geometry->contentsRect.size.height;
  v47 = *&geometry->contentsRect.origin.y;
  v48 = v15;
  v16 = *&geometry->transform.c;
  v41 = *&geometry->transform.a;
  v42 = v16;
  v17 = *&geometry->alpha;
  v43 = *&geometry->transform.tx;
  v44 = v17;
  size = geometry->frame.size;
  origin = geometry->frame.origin;
  v38 = size;
  v19 = geometry->size;
  center = geometry->center;
  v40 = v19;
  optionsCopy = options;
  dataCopy = data;
  v22 = [tileCopy _willAnimateTileToGeometry:&origin withOptions:optionsCopy];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __110__PXWidgetCompositionUIViewElementTileAnimator_animateTile_toGeometry_userData_withOptions_completionHandler___block_invoke;
  v33[3] = &unk_1E774A0E0;
  v34 = tileCopy;
  v35 = v22;
  v36 = handlerCopy;
  v32.receiver = self;
  v32.super_class = PXWidgetCompositionUIViewElementTileAnimator;
  v23 = *&geometry->contentSize.height;
  v45 = *&geometry->hidden;
  v46 = v23;
  v24 = *&geometry->contentsRect.size.height;
  v47 = *&geometry->contentsRect.origin.y;
  v48 = v24;
  v25 = *&geometry->transform.c;
  v41 = *&geometry->transform.a;
  v42 = v25;
  v26 = *&geometry->alpha;
  v43 = *&geometry->transform.tx;
  v44 = v26;
  v27 = geometry->frame.size;
  origin = geometry->frame.origin;
  v38 = v27;
  v28 = geometry->size;
  center = geometry->center;
  v40 = v28;
  v29 = handlerCopy;
  v30 = v22;
  v31 = tileCopy;
  [(PXBasicUIViewTileAnimator *)&v32 animateTile:v31 toGeometry:&origin userData:dataCopy withOptions:optionsCopy completionHandler:v33];

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

- (void)prepareTile:(id)tile withGeometry:(PXTileGeometry *)geometry userData:(id)data
{
  v8 = *&geometry->contentSize.height;
  v32 = *&geometry->hidden;
  v33 = v8;
  v9 = *&geometry->contentsRect.size.height;
  v34 = *&geometry->contentsRect.origin.y;
  v35 = v9;
  v10 = *&geometry->transform.c;
  v28 = *&geometry->transform.a;
  v29 = v10;
  v11 = *&geometry->alpha;
  v30 = *&geometry->transform.tx;
  v31 = v11;
  size = geometry->frame.size;
  origin = geometry->frame.origin;
  v25 = size;
  v13 = geometry->size;
  center = geometry->center;
  v27 = v13;
  dataCopy = data;
  tileCopy = tile;
  v16 = [tileCopy _willAnimateTileToGeometry:&origin withOptions:0];
  v23.receiver = self;
  v23.super_class = PXWidgetCompositionUIViewElementTileAnimator;
  v17 = *&geometry->contentSize.height;
  v32 = *&geometry->hidden;
  v33 = v17;
  v18 = *&geometry->contentsRect.size.height;
  v34 = *&geometry->contentsRect.origin.y;
  v35 = v18;
  v19 = *&geometry->transform.c;
  v28 = *&geometry->transform.a;
  v29 = v19;
  v20 = *&geometry->alpha;
  v30 = *&geometry->transform.tx;
  v31 = v20;
  v21 = geometry->frame.size;
  origin = geometry->frame.origin;
  v25 = v21;
  v22 = geometry->size;
  center = geometry->center;
  v27 = v22;
  [(PXBasicUIViewTileAnimator *)&v23 prepareTile:tileCopy withGeometry:&origin userData:dataCopy];

  [tileCopy _didAnimateTileWithContext:v16];
  [tileCopy _didCompleteTileAnimationWithContext:v16];
}

@end