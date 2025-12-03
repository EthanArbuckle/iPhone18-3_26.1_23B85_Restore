@interface TSCH3DChartScene
+ (void)addObjectsToSceneWithSceneInfo:(id)info;
- ($6BF1DF173A55784CAE4B3BED4B6FCF3F)layoutSettings;
- (TSCH3DChartScene)initWithSceneInfo:(id)info;
- (void)addAllLabelsToScene;
- (void)addAllObjectsToScene;
- (void)addChartTitlesToScene;
- (void)addLabelsToScene;
- (void)addSeriesObjectsToScene;
- (void)adjustSceneSettings;
@end

@implementation TSCH3DChartScene

+ (void)addObjectsToSceneWithSceneInfo:(id)info
{
  infoCopy = info;
  v4 = [self alloc];
  v9 = objc_msgSend_initWithSceneInfo_(v4, v5, v6, v7, v8, infoCopy);
  objc_msgSend_addAllObjectsToScene(v9, v10, v11, v12, v13);
}

- (TSCH3DChartScene)initWithSceneInfo:(id)info
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = TSCH3DChartScene;
  v6 = [(TSCH3DChartScene *)&v13 init];
  if (v6)
  {
    v10 = objc_msgSend_copy(infoCopy, v5, v7, v8, v9);
    sceneInfo = v6->_sceneInfo;
    v6->_sceneInfo = v10;
  }

  return v6;
}

- ($6BF1DF173A55784CAE4B3BED4B6FCF3F)layoutSettings
{
  result = self->_sceneInfo;
  if (result)
  {
    return objc_msgSend_layoutSettings(result, a3, v3, v4, v5);
  }

  *&retstr->var0 = 0;
  retstr->var8 = 0;
  retstr->var9 = 0;
  return result;
}

- (void)adjustSceneSettings
{
  if ((atomic_load_explicit(&qword_280A46980, memory_order_acquire) & 1) == 0)
  {
    sub_2764A6B84();
  }

  v7 = objc_msgSend_perspective(TSCH3DCamera, a2, v2, v3, v4);
  v12 = objc_msgSend_scene(self, v8, v9, v10, v11);
  v17 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v13, v14, v15, v16, v12);

  v21 = 0;
  if (v17)
  {
    objc_msgSend_stageXYCenter(v17, v18, 0.0, v19, v20);
    v21 = *__p;
  }

  __p[0] = 1065353216;
  *&__p[3] = 0;
  *&__p[1] = 0;
  v95 = 1065353216;
  v96 = 0;
  v97 = 0;
  v22 = vmul_f32(v21, 0);
  v23 = vaddv_f32(v22);
  *&v19 = v23 + 50.0;
  v24 = vrev64_s32(v22);
  v98 = 1065353216;
  v99 = COERCE_DOUBLE(vadd_f32(vadd_f32(v21, v24), 0));
  v100 = v23 + 50.0;
  v101 = (v23 + 0.0) + 1.0;
  objc_msgSend_setTransform_(v7, v18, v99, v19, *&v24, __p);
  v25 = qword_280A46978;
  v30 = objc_msgSend_lens(v7, v26, v27, v28, v29);
  LODWORD(v31) = v25;
  objc_msgSend_setNear_(v30, v32, v31, v33, v34);

  v35 = HIDWORD(qword_280A46978);
  v40 = objc_msgSend_lens(v7, v36, v37, v38, v39);
  LODWORD(v41) = v35;
  objc_msgSend_setFar_(v40, v42, v41, v43, v44);

  v49 = objc_msgSend_scene(self, v45, v46, v47, v48);
  objc_msgSend_setCamera_(v49, v50, v51, v52, v53, v7);

  v58 = objc_msgSend_chartInfo(self, v54, v55, v56, v57);
  v63 = objc_msgSend_clamped3DRotationPropertyObject(v58, v59, v60, v61, v62);

  if (v63)
  {
    objc_msgSend_value3(v63, v64, v65, v66, v67);
  }

  else
  {
    memset(__p, 0, 12);
  }

  sub_2761BC934(v63, __p, &v92);
  *__p = v92;
  __p[2] = v93;
  objc_msgSend_setRotation_(v17, v68, COERCE_DOUBLE(__PAIR64__(HIDWORD(v92), v93)), v69, v70, __p);
  if (byte_280A46430 == 1)
  {
    v71 = objc_opt_class();
    v79 = NSStringFromSelector(a2);
    if (v17)
    {
      objc_msgSend_rotation(v17, v72, v80, v81, v82);
      v83 = *&v90;
    }

    else
    {
      v91 = 0;
      v90 = 0;
      LOBYTE(v83) = 0;
    }

    v84 = MEMORY[0x277CCACA8];
    sub_276152FD4("vec3(%f, %f, %f)", v72, v73, v74, v75, v76, v77, v78, SLOBYTE(v83));
    if (v95 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v84, v85, v86, v87, v88, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v84, v85, v86, v87, v88, *__p);
    }
    v89 = ;
    if (SHIBYTE(v95) < 0)
    {
      operator delete(*__p);
    }

    NSLog(&cfstr_PCreatingScene.isa, v71, self, v79, v89, v90, v91);
  }
}

- (void)addChartTitlesToScene
{
  v39 = objc_msgSend_scene(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chartInfo(self, v6, v7, v8, v9);
  v15 = objc_msgSend_styleProvidingSource(self, v11, v12, v13, v14);
  v20 = objc_msgSend_partWithChartInfo_styleProvidingSource_(TSCH3DChartMainTitleSceneObject, v16, v17, v18, v19, v10, v15);
  v21 = objc_opt_class();
  objc_msgSend_setPart_forType_(v39, v22, v23, v24, v25, v20, v21);

  v40 = objc_msgSend_scene(self, v26, v27, v28, v29);
  v34 = objc_msgSend_sceneObject(TSCH3DChartMainTitleSceneObject, v30, v31, v32, v33);
  objc_msgSend_addObject_(v40, v35, v36, v37, v38, v34);
}

- (void)addLabelsToScene
{
  v28 = objc_msgSend_scene(self, a2, v2, v3, v4);
  v10 = objc_msgSend_sceneObject(TSCH3DChartValueLabelsSceneObject, v6, v7, v8, v9);
  objc_msgSend_addObject_(v28, v11, v12, v13, v14, v10);

  v29 = objc_msgSend_scene(self, v15, v16, v17, v18);
  v23 = objc_msgSend_sceneObject(TSCH3DChartSeriesNameLabelsSceneObject, v19, v20, v21, v22);
  objc_msgSend_addObject_(v29, v24, v25, v26, v27, v23);
}

- (void)addAllLabelsToScene
{
  objc_msgSend_addLabelsToScene(self, a2, v2, v3, v4);

  MEMORY[0x2821F9670](self, sel_addChartTitlesToScene, v6, v7, v8);
}

- (void)addSeriesObjectsToScene
{
  v6 = objc_msgSend_seriesType(self, a2, v2, v3, v4);
  v11 = objc_msgSend_sceneObjectClass(v6, v7, v8, v9, v10);

  if (v11)
  {
    v16 = objc_msgSend_chartInfo(self, v12, v13, v14, v15);
    v21 = objc_msgSend_model(v16, v17, v18, v19, v20);
    v26 = objc_msgSend_chartType(self, v22, v23, v24, v25);
    v31 = objc_msgSend_seriesType(self, v27, v28, v29, v30);
    v36 = objc_msgSend_enumeratorWithModel_chartType_seriesType_(TSCH3DChartModelEnumerator, v32, v33, v34, v35, v21, v26, v31);

    v41 = objc_msgSend_scene(self, v37, v38, v39, v40);
    objc_msgSend_layoutSettings(self, v42, v43, v44, v45);
    v50 = objc_msgSend_partWithEnumerator_layoutSettings_(v11, v46, v47, v48, v49, v36, v92);
    v55 = objc_msgSend_seriesType(self, v51, v52, v53, v54);
    objc_msgSend_setPart_forType_(v41, v56, v57, v58, v59, v50, v55);

    v64 = objc_msgSend_sceneObject(v11, v60, v61, v62, v63);
    objc_msgSend_setMain_(v41, v65, v66, v67, v68, v64);

    v73 = objc_msgSend_main(v41, v69, v70, v71, v72);
    v78 = objc_msgSend_objectWithMain_(TSCH3DChartStageSceneObject, v74, v75, v76, v77, v73);
    objc_msgSend_addObject_(v41, v79, v80, v81, v82, v78);

    v87 = objc_msgSend_sceneObject(TSCH3DChartSelectedElementHighlightSceneObject, v83, v84, v85, v86);
    objc_msgSend_addObject_(v41, v88, v89, v90, v91, v87);
  }
}

- (void)addAllObjectsToScene
{
  objc_msgSend_adjustSceneSettings(self, a2, v2, v3, v4);
  objc_msgSend_addObjectsToScene(self, v6, v7, v8, v9);
  objc_msgSend_addAllLabelsToScene(self, v10, v11, v12, v13);

  MEMORY[0x2821F9670](self, sel_addSeriesObjectsToScene, v14, v15, v16);
}

@end