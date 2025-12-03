@interface TSCH3DChartGridlinesSceneObject
+ (id)partWithAxes:(id)axes;
- (BOOL)p_shouldRenderInFrontForPipeline:(id)pipeline;
- (TSCH3DChartGridlinesSceneObject)init;
- (id)effects;
- (tmat4x4<float>)p_gridlineTransformForPipeline:(SEL)pipeline;
- (void)p_render:(id)p_render;
- (void)postrender:(id)postrender;
- (void)render:(id)render;
@end

@implementation TSCH3DChartGridlinesSceneObject

- (TSCH3DChartGridlinesSceneObject)init
{
  v6.receiver = self;
  v6.super_class = TSCH3DChartGridlinesSceneObject;
  v2 = [(TSCH3DChartGridlinesSceneObject *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TSCH3DPrefilteredLineRenderer);
    renderer = v2->_renderer;
    v2->_renderer = v3;
  }

  return v2;
}

+ (id)partWithAxes:(id)axes
{
  v55 = *MEMORY[0x277D85DE8];
  axesCopy = axes;
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v3, v4, v5, v6);
  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9, v10, v11);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v13 = axesCopy;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v15, v16, v17, &v50, v54, 16);
  if (v19)
  {
    v23 = *v51;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v51 != v23)
        {
          objc_enumerationMutation(v13);
        }

        v25 = objc_msgSend_enumeratorWithAxis_(TSCH3DAxisGridEnumerator, v18, v20, v21, v22, *(*(&v50 + 1) + 8 * i));
        objc_msgSend_addObject_(v12, v26, v27, v28, v29, v25);
        v34 = objc_msgSend_resourceWithAxisEnumerator_(TSCH3DGridlineResource, v30, v31, v32, v33, v25);
        objc_msgSend_setUpdate_(v34, v35, v36, v37, v38, 2);
        objc_msgSend_addObject_(v7, v39, v40, v41, v42, v34);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v18, v20, v21, v22, &v50, v54, 16);
    }

    while (v19);
  }

  v47 = objc_msgSend_scenePartWithEnumerator_properties_(TSCH3DScenePart, v43, v44, v45, v46, v12, v7);

  return v47;
}

- (id)effects
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_effect(TSCH3DNoLightingVertexShaderEffect, a2, v2, v3, v4);
  v17[0] = v5;
  v10 = objc_msgSend_effect(TSCH3DColorShaderEffect, v6, v7, v8, v9);
  v17[1] = v10;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v12, v13, v14, v17, 2);

  return v15;
}

- (tmat4x4<float>)p_gridlineTransformForPipeline:(SEL)pipeline
{
  v8 = objc_msgSend_scene(a4, pipeline, v4, v5, v6);
  v13 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v9, v10, v11, v12, v8);

  if (v13)
  {
    objc_msgSend_unitTransform(v13, v14, v15, v16, v17);
    objc_msgSend_gridlinesOffset(v13, v18, v19, v20, v21);
    v27.i64[0] = __PAIR64__(v32[5], v32[0]);
    v26.i64[0] = __PAIR64__(v32[1], v32[4]);
    v23 = v33;
    v22 = v34;
    v24.i64[0] = v30;
    v25 = v31;
    v26.i32[2] = v32[6];
    v26.i32[3] = *(v32 | 0xC);
    v27.i64[1] = __PAIR64__(v32[7], v32[2]);
  }

  else
  {
    v24.i64[0] = 0;
    v22 = 0uLL;
    v25 = 0.0;
    v26 = 0uLL;
    v27 = 0uLL;
    v23 = 0uLL;
  }

  v28.i64[0] = v24.i64[0];
  v28.i64[1] = v24.i64[0];
  retstr->value[0] = vtrn2q_s32(vrev64q_s32(v27), v26);
  retstr->value[1] = vtrn2q_s32(vrev64q_s32(v26), v27);
  v24.i64[1] = v24.i64[0];
  retstr->value[2] = v23;
  retstr->value[3] = vaddq_f32(v22, vaddq_f32(vaddq_f32(vmulq_f32(v26, vrev64q_s32(v28)), vmulq_f32(v27, v24)), vmulq_n_f32(v23, v25)));

  return result;
}

- (BOOL)p_shouldRenderInFrontForPipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  v10 = objc_msgSend_processor(pipelineCopy, v5, v6, v7, v8);
  if (!v10)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCH3DChartGridlinesSceneObject p_shouldRenderInFrontForPipeline:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGridlinesSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 88, 0, "invalid nil value for '%{public}s'", "processor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v45 = 0;
  v44 = 0;
  v43 = 1065353216;
  v46 = 1065353216;
  v47 = 0;
  v48 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 1065353216;
  v52 = 1065353216;
  objc_msgSend_copyTransformInto_(v10, v9, v11, v12, v13, &v43);
  objc_msgSend_p_gridlineTransformForPipeline_(self, v29, v30, v31, v32, pipelineCopy);
  sub_2761558A0(&v43, v42, &v35);
  v33 = ((((v38 * 0.0) + (v35.f32[2] * 0.0)) + v41) + (((((v37 * 0.0) + (v35.f32[1] * 0.0)) + v40) * 0.0) + ((((v36 * 0.0) + (v35.f32[0] * 0.0)) + v39) * 0.0))) < 0.0;

  return v33;
}

- (void)p_render:(id)p_render
{
  p_renderCopy = p_render;
  v9 = objc_msgSend_processor(p_renderCopy, v5, v6, v7, v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2761BE8EC;
  v15[3] = &unk_27A6B67A0;
  v15[4] = self;
  v10 = p_renderCopy;
  v16 = v10;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v11, v12, v13, v14, v9, v15);
}

- (void)render:(id)render
{
  renderCopy = render;
  if ((objc_msgSend_p_shouldRenderInFrontForPipeline_(self, v4, v5, v6, v7) & 1) == 0)
  {
    objc_msgSend_p_render_(self, v8, v9, v10, v11, renderCopy);
  }
}

- (void)postrender:(id)postrender
{
  postrenderCopy = postrender;
  if (objc_msgSend_p_shouldRenderInFrontForPipeline_(self, v4, v5, v6, v7))
  {
    objc_msgSend_p_render_(self, v8, v9, v10, v11, postrenderCopy);
  }
}

@end