@interface TSCH3DChartAddBoundsSceneObjectMode
+ (id)mode;
- (BOOL)hasObjectBoundsForScene:(id)scene pipeline:(id)pipeline returningObjectBounds:(void *)bounds;
- (id)elementsSceneFromScene:(id)scene;
@end

@implementation TSCH3DChartAddBoundsSceneObjectMode

+ (id)mode
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (id)elementsSceneFromScene:(id)scene
{
  v6 = objc_msgSend_clone(scene, a2, v3, v4, v5);
  objc_msgSend_resetDelegates(v6, v7, v8, v9, v10);
  objc_msgSend_resetObjects(v6, v11, v12, v13, v14);
  v19 = objc_msgSend_main(v6, v15, v16, v17, v18);
  objc_msgSend_addObject_(v6, v20, v21, v22, v23, v19);

  return v6;
}

- (BOOL)hasObjectBoundsForScene:(id)scene pipeline:(id)pipeline returningObjectBounds:(void *)bounds
{
  sceneCopy = scene;
  pipelineCopy = pipeline;
  v56 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v9, v10, v11, v12, sceneCopy);
  v17 = objc_msgSend_pipelineWithScene_(TSCH3DGetBoundsPipeline, v13, v14, v15, v16, sceneCopy);
  v22 = objc_msgSend_setup(pipelineCopy, v18, v19, v20, v21);
  objc_msgSend_setSetup_(v17, v23, v24, v25, v26, v22);

  v31 = objc_msgSend_processor(v17, v27, v28, v29, v30);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = sub_2761BF5CC;
  v59[3] = &unk_27A6B6558;
  v32 = v56;
  v60 = v32;
  v33 = sceneCopy;
  v61 = v33;
  v34 = v17;
  v62 = v34;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v35, v36, v37, v38, v31, v59);

  v43 = objc_msgSend_bounds(v34, v39, v40, v41, v42);
  if (byte_280A46430 == 1)
  {
    v44 = objc_opt_class();
    v45 = NSStringFromSelector(a2);
    v53 = sub_276165634(v43, v46, v47, v48, v49, v50, v51, v52);
    NSLog(&cfstr_PObjectBounds.isa, v44, self, v45, v53);
  }

  if (bounds)
  {
    *bounds = *v43;
    *(bounds + 1) = *(v43 + 4);
    *(bounds + 2) = *(v43 + 8);
    *(bounds + 3) = *(v43 + 12);
    *(bounds + 4) = *(v43 + 16);
    *(bounds + 5) = *(v43 + 20);
    *(bounds + 6) = *(v43 + 24);
    *(bounds + 7) = *(v43 + 28);
    *(bounds + 8) = *(v43 + 32);
    *(bounds + 9) = *(v43 + 36);
    *(bounds + 10) = *(v43 + 40);
    *(bounds + 11) = *(v43 + 44);
    *(bounds + 12) = *(v43 + 48);
    *(bounds + 13) = *(v43 + 52);
    *(bounds + 14) = *(v43 + 56);
    *(bounds + 15) = *(v43 + 60);
    *(bounds + 16) = *(v43 + 64);
    *(bounds + 17) = *(v43 + 68);
    if (v43 != bounds)
    {
      sub_2761C12D0(bounds + 9, *(v43 + 72), *(v43 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(v43 + 80) - *(v43 + 72)) >> 3));
    }
  }

  v54 = sub_276155178(v43);

  return v54 ^ 1;
}

@end