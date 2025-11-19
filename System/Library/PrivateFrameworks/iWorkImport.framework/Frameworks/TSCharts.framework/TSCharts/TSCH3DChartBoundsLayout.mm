@interface TSCH3DChartBoundsLayout
- (ResizingSize)resizingSize;
- (TSCH3DChartBoundsLayout)init;
- (TSCH3DChartBoundsLayout)initWithScene:(id)a3 containingViewport:(void *)a4 originalContainingViewport:(void *)a5 layoutSettings:(id *)a6;
- (box<glm::detail::tvec2<float>>)bodyLayoutInPage;
- (box<glm::detail::tvec2<float>>)layoutInPage;
- (const)p_projectedBoundsWithLabelsMode:(int)a3;
- (id).cxx_construct;
- (id)cacheableGetBoundsPipeline;
- (id)debugBounds;
- (tvec2<int>)containingViewport;
- (void)invalidateBounds;
- (void)p_updateLabelWrapBoundsPass;
- (void)resetSceneDelegate;
- (void)setContainingViewport:(tvec2<int>)a3;
@end

@implementation TSCH3DChartBoundsLayout

- (TSCH3DChartBoundsLayout)initWithScene:(id)a3 containingViewport:(void *)a4 originalContainingViewport:(void *)a5 layoutSettings:(id *)a6
{
  v11 = a3;
  v56.receiver = self;
  v56.super_class = TSCH3DChartBoundsLayout;
  v12 = [(TSCH3DChartBoundsLayout *)&v56 init];
  v13 = v12;
  if (v12)
  {
    v12->_mode = 0;
    objc_storeStrong(&v12->_scene, a3);
    v18 = objc_msgSend_clone(v11, v14, v15, v16, v17);
    bounds = v13->_bounds;
    v13->_bounds = v18;

    v24 = objc_msgSend_camera(v11, v20, v21, v22, v23);
    v29 = objc_msgSend_copy(v24, v25, v26, v27, v28);
    objc_msgSend_setCamera_(v13->_bounds, v30, v31, v32, v33, v29);

    v34 = *&a6->var0;
    v13->_layoutSettings.max3DLimitingSeries = a6->var9;
    *&v13->_layoutSettings.forceOmitLegend = v34;
    v35 = v13->_bounds;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = sub_27620035C;
    v54[3] = &unk_27A6B6B58;
    v36 = v13;
    v55 = v36;
    v41 = objc_msgSend_returnRemoved_removeObjectsPassingTest_(v35, v37, v38, v39, v40, 0, v54);
    objc_msgSend_resetSceneDelegate(v36, v42, v43, v44, v45);
    v53 = *a4;
    objc_msgSend_setContainingViewport_(v36, v46, v53, v47, v48, &v53);
    v53 = *a5;
    objc_msgSend_setOriginalContainingViewport_(v36, v49, v53, v50, v51, &v53);
  }

  return v13;
}

- (TSCH3DChartBoundsLayout)init
{
  objc_msgSend_doesNotRecognizeSelector_(self, a2, v2, v3, v4, a2);

  return 0;
}

- (void)resetSceneDelegate
{
  objc_msgSend_resetDelegates(self->_bounds, a2, v2, v3, v4);
  v10 = objc_msgSend_main(self->_bounds, v6, v7, v8, v9);
  v15 = objc_msgSend_chartBoundsLayoutSceneDelegateClass(v10, v11, v12, v13, v14);

  v16 = objc_alloc_init(v15);
  sceneDelegate = self->_sceneDelegate;
  self->_sceneDelegate = v16;

  bounds = self->_bounds;
  v23 = self->_sceneDelegate;

  objc_msgSend_makeDelegatesFromDelegator_(bounds, v18, v19, v20, v21, v23);
}

- (id)cacheableGetBoundsPipeline
{
  objc_opt_class();

  return TSUDynamicCast();
}

- (void)invalidateBounds
{
  v6 = objc_msgSend_cacheableGetBoundsPipeline(self, a2, v2, v3, v4);
  objc_msgSend_invalidateCachedBounds(v6, v7, v8, v9, v10);

  objc_msgSend_resetSceneDelegate(self, v11, v12, v13, v14);
}

- (tvec2<int>)containingViewport
{
  v6 = v2;
  v7 = objc_msgSend_camera(self->_bounds, a2, v3, v4, v5);
  v12 = v7;
  if (v7)
  {
    objc_msgSend_viewport(v7, v8, v9, v10, v11);
    v13 = vsub_s32(v16, v15);
  }

  else
  {
    v13 = 0;
  }

  *v6 = v13;

  return v14;
}

- (void)setContainingViewport:(tvec2<int>)a3
{
  v11 = objc_msgSend_camera(self->_bounds, a2, v3, v4, v5);
  objc_msgSend_setContainingViewportSize_(v11, v7, v8, v9, v10, a3);
}

- (void)p_updateLabelWrapBoundsPass
{
  v6 = objc_msgSend_p_projectedBoundsWithLabelsMode_(self, a2, v2, v3, v4, 1);
  v20 = xmmword_2764D5ED0;
  sub_2761526F4(&v20, v6, &v21);
  v15 = v21;
  v16 = v6;
  v17 = 1.0;
  v18 = 0;
  v19 = 0;
  sub_2761526F4(&v15, v6 + 14, &v21);
  v7 = *&v21.i64[1];
  v8 = vmul_n_f32(*v21.f32, v17);
  v21.i64[0] = 0;
  *&v21.u32[2] = vsub_f32(vmul_n_f32(*&v21.u32[2], v17), v8);
  if (objc_msgSend_setLabelWrapBounds_forScene_(TSCH3DChartTitleSceneObject, v9, *&v21.i64[1], *&v8, v7, &v21, self->_scene))
  {
    v10 = objc_opt_class();
    objc_msgSend_invalidateLabelsBoundsForSceneObjectClass_boundsIndex_(self, v11, v12, v13, v14, v10, 0x7FFFFFFFFFFFFFFFLL);
  }
}

- (ResizingSize)resizingSize
{
  if ((self->_mode & 0xFFFFFFFB) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, v3, v4, v5, "[TSCH3DChartBoundsLayout resizingSize]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 718, 0, "invalid mode %ld for resizing", self->_mode);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  if (objc_msgSend_isInward(self, a3, v3, v4, v5))
  {
    objc_msgSend_p_updateLabelWrapBoundsPass(self, v23, v24, v25, v26);
    v31 = objc_msgSend_p_projectedBoundsWithLabelsMode_(self, v27, v28, v29, v30, 2);
  }

  else
  {
    v31 = objc_msgSend_p_projectedBoundsWithLabelsMode_(self, v23, v24, v25, v26, 0);
  }

  v36 = v31;
  v56 = xmmword_2764D5ED0;
  if (objc_msgSend_isInward(self, v32, v33, v34, v35))
  {
    v37 = v36 + 2;
  }

  else
  {
    v37 = v36 + 10;
  }

  sub_2761526F4(&v56, v37, &v47);
  v52 = v47;
  v53 = v36;
  v54.i32[0] = 1065353216;
  v54.i8[4] = 0;
  v54.i64[1] = 0;
  sub_2761526F4(&v52, v36 + 14, &v47);
  v38 = vsub_f32(vmul_n_f32(*(&v47 + 8), *v54.i32), vmul_n_f32(*&v47, *v54.i32));
  v56 = xmmword_2764D5ED0;
  sub_2761526F4(&v56, v36 + 10, &v47);
  v52 = v47;
  v53 = v36;
  v54.i32[0] = 1065353216;
  v54.i8[4] = 0;
  v54.i64[1] = 0;
  sub_2761526F4(&v52, v36 + 14, &v47);
  v46 = v54;
  v39 = v47;
  v55 = xmmword_2764D5ED0;
  sub_2761526F4(&v55, v36, &v56);
  v47 = v56;
  v48 = v36;
  v49 = 1065353216;
  v50 = 0;
  v51 = 0;
  sub_2761526F4(&v47, v36 + 14, &v56);
  v41 = v56;
  v42 = v46;
  v43.i64[0] = v39.i64[0];
  v42.i32[1] = v49;
  retstr->var0 = v38;
  v44 = vzip1q_s32(v42, v42);
  v43.i64[1] = v41.i64[0];
  v45 = vmulq_f32(v44, v43);
  v43.i64[0] = v39.i64[1];
  v43.i64[1] = v41.i64[1];
  *&retstr->var1.var0.var0 = vsubq_f32(vmulq_f32(v44, v43), v45);
  return result;
}

- (const)p_projectedBoundsWithLabelsMode:(int)a3
{
  v6 = *&a3;
  if (!self->_getBounds)
  {
    goto LABEL_5;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DChartBoundsLayout p_projectedBoundsWithLabelsMode:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 735, 0, "_getBoundsClass should only be instantiated once %@", self->_getBounds);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  getBounds = self->_getBounds;
  if (!getBounds)
  {
LABEL_5:
    getBoundsClass = self->_getBoundsClass;
    if (!getBoundsClass)
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DChartBoundsLayout p_projectedBoundsWithLabelsMode:]");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 737, 0, "invalid nil value for '%{public}s'", "_getBoundsClass");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
      getBoundsClass = self->_getBoundsClass;
    }

    v40 = [getBoundsClass alloc];
    v45 = objc_msgSend_initWithScene_(v40, v41, v42, v43, v44, self->_bounds);
    v46 = self->_getBounds;
    self->_getBounds = v45;

    getBounds = self->_getBounds;
  }

  v47 = objc_msgSend_scene(getBounds, a2, v3, v4, v5);
  bounds = self->_bounds;

  if (v47 != bounds)
  {
    v53 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "[TSCH3DChartBoundsLayout p_projectedBoundsWithLabelsMode:]");
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    v64 = objc_msgSend_scene(self->_getBounds, v60, v61, v62, v63);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v65, v66, v67, v68, v54, v59, 741, 0, "invalid scene from get bounds %@ %@", v64, self->_bounds);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
  }

  isSage = objc_msgSend_isSage(self, v49, v50, v51, v52);
  v78 = objc_msgSend_cacheableGetBoundsPipeline(self, v74, v75, v76, v77);
  objc_msgSend_setUseIndividualBounds_(v78, v79, v80, v81, v82, isSage);

  objc_msgSend_setEnableScaledDepth_(self->_getBounds, v83, v84, v85, v86, self->_layoutSettings.enable3DScaledDepthBounds);
  v87 = self->_getBounds;
  layoutInPage = self->_layoutInPage;
  objc_msgSend_setLayoutInPage_(v87, v88, *&layoutInPage._min, v89, v90, &layoutInPage);
  v91 = self->_getBounds;
  layoutInPage = self->_bodyLayoutInPage;
  objc_msgSend_setBodyLayoutInPage_(v91, v92, *&layoutInPage._min, v93, v94, &layoutInPage);
  v95 = self->_getBounds;
  objc_msgSend_containingViewport(self, v96, v97, v98, v99);
  layoutInPage._min = 0;
  layoutInPage._max = vcvt_f32_s32(v132);
  objc_msgSend_setContainingViewport_(v95, v100, *&layoutInPage._max, v101, v102, &layoutInPage);
  objc_msgSend_setLabelsMode_(self->_getBounds, v103, v104, v105, v106, v6);
  objc_msgSend_run(self->_getBounds, v107, v108, v109, v110);
  v115 = self->_getBounds;
  if (!v115)
  {
    v116 = MEMORY[0x277D81150];
    v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, v112, v113, v114, "[TSCH3DChartBoundsLayout p_projectedBoundsWithLabelsMode:]");
    v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, v119, v120, v121, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v116, v123, v124, v125, v126, v117, v122, 750, 0, "invalid nil value for '%{public}s'", "_getBounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v127, v128, v129, v130);
    v115 = self->_getBounds;
  }

  return objc_msgSend_spaces(v115, v111, v112, v113, v114);
}

- (id)debugBounds
{
  v100 = *MEMORY[0x277D85DE8];
  v94 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, v2, v3, v4);
  objc_msgSend_appendString_(v94, v5, v6, v7, v8, @"\n");
  v13 = objc_msgSend_scene(self, v9, v10, v11, v12);
  v18 = objc_msgSend_debugObjects(v13, v14, v15, v16, v17);

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = v18;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, v20, v21, v22, &v95, v99, 16);
  if (v24)
  {
    v28 = *v96;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v96 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v95 + 1) + 8 * i);
        v31 = objc_msgSend_scene(self, v23, v25, v26, v27);
        v36 = objc_msgSend_clone(v31, v32, v33, v34, v35);

        objc_msgSend_resetObjects(v36, v37, v38, v39, v40);
        objc_msgSend_addObject_(v36, v41, v42, v43, v44, v30);
        v49 = objc_msgSend_pipelineWithScene_(TSCH3DGetBoundsPipeline, v45, v46, v47, v48, v36);
        objc_msgSend_run(v49, v50, v51, v52, v53);
        if (!v49)
        {
          v58 = MEMORY[0x277D81150];
          v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, "[TSCH3DChartBoundsLayout debugBounds]");
          v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v65, v66, v67, v68, v59, v64, 773, 0, "invalid nil value for '%{public}s'", "pipeline");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
        }

        v73 = objc_opt_class();
        v78 = objc_msgSend_bounds(v49, v74, v75, v76, v77);
        v86 = sub_276165634(v78, v79, v80, v81, v82, v83, v84, v85);
        objc_msgSend_appendFormat_(v94, v87, v88, v89, v90, @"%@: %@\n", v73, v86);
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, v25, v26, v27, &v95, v99, 16);
    }

    while (v24);
  }

  return v94;
}

- (box<glm::detail::tvec2<float>>)layoutInPage
{
  *v2 = self->_layoutInPage;
  result._max = a2;
  result._min = self;
  return result;
}

- (box<glm::detail::tvec2<float>>)bodyLayoutInPage
{
  *v2 = self->_bodyLayoutInPage;
  result._max = a2;
  result._min = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 3) = xmmword_2764D5EE0;
  *(self + 4) = xmmword_2764D5EE0;
  *(self + 10) = 0;
  return self;
}

@end