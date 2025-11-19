@interface TSCH3DSceneObject
+ (id)sceneObject;
- (void)getBounds:(id)a3;
- (void)postGetBounds:(id)a3;
- (void)statePreservedGetSceneObjectElementsBounds:(id)a3;
- (void)statePreservedGetSelectionKnobsPositions:(id)a3;
- (void)statePreservedPostrender:(id)a3;
- (void)statePreservedPrerender:(id)a3;
- (void)statePreservedPrimeRenderCaches:(id)a3;
- (void)statePreservedRayPick:(id)a3;
- (void)statePreservedRender:(id)a3;
@end

@implementation TSCH3DSceneObject

+ (id)sceneObject
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)getBounds:(id)a3
{
  v24 = a3;
  objc_msgSend_render_(self, v5, v6, v7, v8);
  if (byte_280A46430 == 1)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(a2);
    v15 = objc_msgSend_bounds(v24, v11, v12, v13, v14);
    v23 = sub_276165634(v15, v16, v17, v18, v19, v20, v21, v22);
    NSLog(&cfstr_PBounds_0.isa, v9, self, v10, v23);
  }
}

- (void)postGetBounds:(id)a3
{
  v24 = a3;
  objc_msgSend_postrender_(self, v5, v6, v7, v8);
  if (byte_280A46430 == 1)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(a2);
    v15 = objc_msgSend_bounds(v24, v11, v12, v13, v14);
    v23 = sub_276165634(v15, v16, v17, v18, v19, v20, v21, v22);
    NSLog(&cfstr_PBounds_0.isa, v9, self, v10, v23);
  }
}

- (void)statePreservedRayPick:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_processor(v4, v5, v6, v7, v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2761B7F30;
  v15[3] = &unk_27A6B67A0;
  v15[4] = self;
  v10 = v4;
  v16 = v10;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v11, v12, v13, v14, v9, v15);
}

- (void)statePreservedPrimeRenderCaches:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_processor(v4, v5, v6, v7, v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2761B8020;
  v15[3] = &unk_27A6B67A0;
  v15[4] = self;
  v10 = v4;
  v16 = v10;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v11, v12, v13, v14, v9, v15);
}

- (void)statePreservedGetSelectionKnobsPositions:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_processor(v4, v5, v6, v7, v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2761B8110;
  v15[3] = &unk_27A6B67A0;
  v15[4] = self;
  v10 = v4;
  v16 = v10;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v11, v12, v13, v14, v9, v15);
}

- (void)statePreservedGetSceneObjectElementsBounds:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_processor(v4, v5, v6, v7, v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2761B8200;
  v15[3] = &unk_27A6B67A0;
  v15[4] = self;
  v10 = v4;
  v16 = v10;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v11, v12, v13, v14, v9, v15);
}

- (void)statePreservedRender:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_session(v4, v5, v6, v7, v8);
  hasFailed = objc_msgSend_hasFailed(v9, v10, v11, v12, v13);

  if ((hasFailed & 1) == 0)
  {
    v19 = objc_msgSend_processor(v4, v15, v16, v17, v18);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2761B8314;
    v24[3] = &unk_27A6B67A0;
    v24[4] = self;
    v25 = v4;
    objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorStateSession, v20, v21, v22, v23, v19, v24);
  }
}

- (void)statePreservedPrerender:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_session(v4, v5, v6, v7, v8);
  hasFailed = objc_msgSend_hasFailed(v9, v10, v11, v12, v13);

  if ((hasFailed & 1) == 0)
  {
    v19 = objc_msgSend_processor(v4, v15, v16, v17, v18);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2761B8428;
    v24[3] = &unk_27A6B67A0;
    v24[4] = self;
    v25 = v4;
    objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorStateSession, v20, v21, v22, v23, v19, v24);
  }
}

- (void)statePreservedPostrender:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_session(v4, v5, v6, v7, v8);
  hasFailed = objc_msgSend_hasFailed(v9, v10, v11, v12, v13);

  if ((hasFailed & 1) == 0)
  {
    v19 = objc_msgSend_processor(v4, v15, v16, v17, v18);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2761B853C;
    v24[3] = &unk_27A6B67A0;
    v24[4] = self;
    v25 = v4;
    objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorStateSession, v20, v21, v22, v23, v19, v24);
  }
}

@end