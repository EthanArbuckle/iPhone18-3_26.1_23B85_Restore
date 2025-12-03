@interface TSCH3DSceneObject
+ (id)sceneObject;
- (void)getBounds:(id)bounds;
- (void)postGetBounds:(id)bounds;
- (void)statePreservedGetSceneObjectElementsBounds:(id)bounds;
- (void)statePreservedGetSelectionKnobsPositions:(id)positions;
- (void)statePreservedPostrender:(id)postrender;
- (void)statePreservedPrerender:(id)prerender;
- (void)statePreservedPrimeRenderCaches:(id)caches;
- (void)statePreservedRayPick:(id)pick;
- (void)statePreservedRender:(id)render;
@end

@implementation TSCH3DSceneObject

+ (id)sceneObject
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)getBounds:(id)bounds
{
  boundsCopy = bounds;
  objc_msgSend_render_(self, v5, v6, v7, v8);
  if (byte_280A46430 == 1)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(a2);
    v15 = objc_msgSend_bounds(boundsCopy, v11, v12, v13, v14);
    v23 = sub_276165634(v15, v16, v17, v18, v19, v20, v21, v22);
    NSLog(&cfstr_PBounds_0.isa, v9, self, v10, v23);
  }
}

- (void)postGetBounds:(id)bounds
{
  boundsCopy = bounds;
  objc_msgSend_postrender_(self, v5, v6, v7, v8);
  if (byte_280A46430 == 1)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(a2);
    v15 = objc_msgSend_bounds(boundsCopy, v11, v12, v13, v14);
    v23 = sub_276165634(v15, v16, v17, v18, v19, v20, v21, v22);
    NSLog(&cfstr_PBounds_0.isa, v9, self, v10, v23);
  }
}

- (void)statePreservedRayPick:(id)pick
{
  pickCopy = pick;
  v9 = objc_msgSend_processor(pickCopy, v5, v6, v7, v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2761B7F30;
  v15[3] = &unk_27A6B67A0;
  v15[4] = self;
  v10 = pickCopy;
  v16 = v10;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v11, v12, v13, v14, v9, v15);
}

- (void)statePreservedPrimeRenderCaches:(id)caches
{
  cachesCopy = caches;
  v9 = objc_msgSend_processor(cachesCopy, v5, v6, v7, v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2761B8020;
  v15[3] = &unk_27A6B67A0;
  v15[4] = self;
  v10 = cachesCopy;
  v16 = v10;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v11, v12, v13, v14, v9, v15);
}

- (void)statePreservedGetSelectionKnobsPositions:(id)positions
{
  positionsCopy = positions;
  v9 = objc_msgSend_processor(positionsCopy, v5, v6, v7, v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2761B8110;
  v15[3] = &unk_27A6B67A0;
  v15[4] = self;
  v10 = positionsCopy;
  v16 = v10;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v11, v12, v13, v14, v9, v15);
}

- (void)statePreservedGetSceneObjectElementsBounds:(id)bounds
{
  boundsCopy = bounds;
  v9 = objc_msgSend_processor(boundsCopy, v5, v6, v7, v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2761B8200;
  v15[3] = &unk_27A6B67A0;
  v15[4] = self;
  v10 = boundsCopy;
  v16 = v10;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v11, v12, v13, v14, v9, v15);
}

- (void)statePreservedRender:(id)render
{
  renderCopy = render;
  v9 = objc_msgSend_session(renderCopy, v5, v6, v7, v8);
  hasFailed = objc_msgSend_hasFailed(v9, v10, v11, v12, v13);

  if ((hasFailed & 1) == 0)
  {
    v19 = objc_msgSend_processor(renderCopy, v15, v16, v17, v18);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2761B8314;
    v24[3] = &unk_27A6B67A0;
    v24[4] = self;
    v25 = renderCopy;
    objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorStateSession, v20, v21, v22, v23, v19, v24);
  }
}

- (void)statePreservedPrerender:(id)prerender
{
  prerenderCopy = prerender;
  v9 = objc_msgSend_session(prerenderCopy, v5, v6, v7, v8);
  hasFailed = objc_msgSend_hasFailed(v9, v10, v11, v12, v13);

  if ((hasFailed & 1) == 0)
  {
    v19 = objc_msgSend_processor(prerenderCopy, v15, v16, v17, v18);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2761B8428;
    v24[3] = &unk_27A6B67A0;
    v24[4] = self;
    v25 = prerenderCopy;
    objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorStateSession, v20, v21, v22, v23, v19, v24);
  }
}

- (void)statePreservedPostrender:(id)postrender
{
  postrenderCopy = postrender;
  v9 = objc_msgSend_session(postrenderCopy, v5, v6, v7, v8);
  hasFailed = objc_msgSend_hasFailed(v9, v10, v11, v12, v13);

  if ((hasFailed & 1) == 0)
  {
    v19 = objc_msgSend_processor(postrenderCopy, v15, v16, v17, v18);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2761B853C;
    v24[3] = &unk_27A6B67A0;
    v24[4] = self;
    v25 = postrenderCopy;
    objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorStateSession, v20, v21, v22, v23, v19, v24);
  }
}

@end