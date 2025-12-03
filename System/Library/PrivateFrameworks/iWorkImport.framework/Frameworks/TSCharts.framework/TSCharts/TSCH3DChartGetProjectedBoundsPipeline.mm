@interface TSCH3DChartGetProjectedBoundsPipeline
- (BOOL)run;
- (Class)labelsMeshRendererClassForLabelsRenderer:(id)renderer;
- (box<glm::detail::tvec2<float>>)bodyLayoutInPage;
- (box<glm::detail::tvec2<float>>)containingViewport;
- (box<glm::detail::tvec2<float>>)layoutInPage;
- (box<glm::detail::tvec3<float>>)boundsFromObjectBoundsOfType:(SEL)type;
- (box<glm::detail::tvec3<float>>)getBoundsFromObjectBoundsForScene:(SEL)scene boundsType:(id)type;
- (box<glm::detail::tvec3<float>>)p_extendLabelsBoundsToBounds:(SEL)bounds;
- (id).cxx_construct;
- (id)chartSceneObjectClasses;
- (id)drawingBoundsSceneObjectClasses;
- (id)labelsSceneObjectClasses;
- (id)updatedConstantDepthSceneFromScene:(id)scene;
- (void)calculateBounds;
- (void)calculateBoundsIfNecessary;
- (void)calculateLabelsBounds;
- (void)calculateLabelsBoundsIfNecssary;
- (void)calculateLayoutBoundsSkippingLayoutSceneBounds:(BOOL)bounds;
- (void)calculateLayoutLabelsBounds;
- (void)dealloc;
- (void)updateBounds;
- (void)updateLayoutBounds;
- (void)updateLayoutBoundsIfNecessary;
- (void)updateRenderBounds;
@end

@implementation TSCH3DChartGetProjectedBoundsPipeline

- (void)dealloc
{
  if (self->_originalCamera)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartGetProjectedBoundsPipeline dealloc]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 156, 0, "expected nil value for '%{public}s'", "_originalCamera");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (self->_originalSceneAccessor)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartGetProjectedBoundsPipeline dealloc]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 157, 0, "expected nil value for '%{public}s'", "_originalSceneAccessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  v36.receiver = self;
  v36.super_class = TSCH3DChartGetProjectedBoundsPipeline;
  [(TSCH3DChartGetProjectedBoundsPipeline *)&v36 dealloc];
}

- (box<glm::detail::tvec3<float>>)boundsFromObjectBoundsOfType:(SEL)type
{
  v8 = objc_msgSend_bounds(self, type, v4, v5, v6, *&a4);
  *retstr = v8[1];

  return sub_276166138(retstr, &v8[2]);
}

- (id)updatedConstantDepthSceneFromScene:(id)scene
{
  v6 = objc_msgSend_clone(scene, a2, v3, v4, v5);
  v11 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v7, v8, v9, v10, v6);
  objc_msgSend_updateInfoChartScaleUsingConstantDepth(v11, v12, v13, v14, v15);

  return v6;
}

- (box<glm::detail::tvec3<float>>)getBoundsFromObjectBoundsForScene:(SEL)scene boundsType:(id)type
{
  v5 = *&a5;
  typeCopy = type;
  if (v5 == 1)
  {
    v17 = typeCopy;
    v11 = objc_msgSend_updatedConstantDepthSceneFromScene_(self, typeCopy, v8, v9, v10, typeCopy);

    typeCopy = v11;
  }

  v18 = typeCopy;
  objc_msgSend_getBounds_(self, typeCopy, v8, v9, v10, typeCopy);
  objc_msgSend_boundsFromObjectBoundsOfType_(self, v12, v13, v14, v15, v5);

  return result;
}

- (id)chartSceneObjectClasses
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v3, v4, v5, v8, 2);

  return v6;
}

- (id)labelsSceneObjectClasses
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = objc_opt_class();
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v3, v4, v5, v8, 1);

  return v6;
}

- (id)drawingBoundsSceneObjectClasses
{
  v8[3] = *MEMORY[0x277D85DE8];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v3, v4, v5, v8, 3);

  return v6;
}

- (void)calculateLayoutBoundsSkippingLayoutSceneBounds:(BOOL)bounds
{
  v8 = objc_msgSend_clone(self->super.super._scene, a2, v3, v4, v5);
  v108 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v9, v10, v11, v12, v8);
  *&__p._min.var0.var0 = 0;
  __p._min.var2.var0 = 0.0;
  objc_msgSend_setRotation_(v108, v13, v14, v15, v16, &__p);
  v21 = objc_msgSend_drawingBoundsSceneObjectClasses(self, v17, v18, v19, v20);
  v26 = objc_msgSend_extractObjectsNotOfClasses_(v8, v22, v23, v24, v25, v21);

  v31 = objc_msgSend_labelsSceneObjectClasses(self, v27, v28, v29, v30);
  v36 = objc_msgSend_extractObjectsOfClasses_(v26, v32, v33, v34, v35, v31);

  v41 = objc_msgSend_chartSceneObjectClasses(self, v37, v38, v39, v40);
  v46 = objc_msgSend_extractObjectsOfClasses_(v26, v42, v43, v44, v45, v41);

  v51 = objc_msgSend_clone(v46, v47, v48, v49, v50);
  v56 = objc_msgSend_p_depthBoundsTypes(self, v52, v53, v54, v55);
  objc_msgSend_getBoundsFromObjectBoundsForScene_boundsType_(self, v57, v58, v59, v60, v51, v56);
  *&self->_constantDepthBodyLayoutBounds._min.var0.var0 = *&__p._min.var0.var0;
  v61 = *&__p._max.var1.var0;
  *&self->_constantDepthBodyLayoutBounds._max.var1.var0 = *&__p._max.var1.var0;
  objc_msgSend_resetBounds(self, v62, v61, v63, v64);
  objc_msgSend_getBoundsFromObjectBoundsForScene_boundsType_(self, v65, v66, v67, v68, v46, 0);
  self->_bodyLayoutBounds = __p;
  *&self->_layoutBounds._min.var0.var0 = xmmword_2764D5F00;
  v72 = 2.84809454e-306;
  *&self->_layoutBounds._max.var1.var0 = 0x80000000800000;
  if (!bounds)
  {
    objc_msgSend_getBoundsFromObjectBoundsForScene_boundsType_(self, v69, 2.84809454e-306, v70, v71, v26, 0);
    *&self->_layoutBounds._min.var0.var0 = *&__p._min.var0.var0;
    v72 = *&__p._max.var1.var0;
    *&self->_layoutBounds._max.var1.var0 = *&__p._max.var1.var0;
  }

  objc_msgSend_getBoundsFromObjectBoundsForScene_boundsType_(self, v69, v72, v70, v71, v8, 0);
  *&self->_shadowsLayoutBounds._min.var0.var0 = *&__p._min.var0.var0;
  v76 = *&__p._max.var1.var0;
  *&self->_shadowsLayoutBounds._max.var1.var0 = *&__p._max.var1.var0;
  if (byte_280A46430 == 1)
  {
    v77 = objc_opt_class();
    v78 = NSStringFromSelector(a2);
    NSLog(&cfstr_PLayoutScene.isa, v77, self, v78, v26);

    if (byte_280A46430)
    {
      v105 = objc_opt_class();
      aSelectora = NSStringFromSelector(a2);
      v79 = MEMORY[0x277CCACA8];
      sub_276166580(&self->_bodyLayoutBounds._min.var0.var0, v80, v81, v82, v83, v84, v85, v86);
      if (__p._max.var2.var2 >= 0.0)
      {
        objc_msgSend_stringWithUTF8String_(v79, v87, v88, v89, v90, &__p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v79, v87, v88, v89, v90, *&__p._min.var0.var0);
      }
      v98 = ;
      if (SHIBYTE(__p._max.var2.var2) < 0)
      {
        operator delete(*&__p._min.var0.var0);
      }

      v99 = MEMORY[0x277CCACA8];
      sub_276166580(&self->_shadowsLayoutBounds._min.var0.var0, v91, v92, v93, v94, v95, v96, v97);
      if (__p._max.var2.var2 >= 0.0)
      {
        objc_msgSend_stringWithUTF8String_(v99, v100, v101, v102, v103, &__p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v99, v100, v101, v102, v103, *&__p._min.var0.var0);
      }
      v104 = ;
      if (SHIBYTE(__p._max.var2.var2) < 0)
      {
        operator delete(*&__p._min.var0.var0);
      }

      NSLog(&cfstr_PBodyShadows.isa, v105, self, aSelectora, v98, v104);
    }
  }

  objc_msgSend_resetBounds(self, v73, v76, v74, v75);
}

- (void)calculateLayoutLabelsBounds
{
  v6 = objc_msgSend_clone(self->super.super._scene, a2, v2, v3, v4);
  v11 = objc_msgSend_labelsSceneObjectClasses(self, v7, v8, v9, v10);
  v16 = objc_msgSend_extractObjectsOfClasses_(v6, v12, v13, v14, v15, v11);

  v21 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v17, v18, v19, v20, v16);
  *&v39 = 0;
  DWORD2(v39) = 0;
  objc_msgSend_setRotation_(v21, v22, v23, v24, v25, &v39);
  if (v21)
  {
    objc_msgSend_originalInfoChartScale(v21, v26, v27, v28, v29);
    v30 = v41;
  }

  else
  {
    v41 = 0uLL;
    v30 = 0uLL;
  }

  v39 = v30;
  objc_msgSend_setInfoChartScale_(v21, v26, *&v30, v28, v29, &v39);
  objc_msgSend_getBoundsFromObjectBoundsForScene_boundsType_(self, v31, v32, v33, v34, v16, 0);
  *&self->_labelsLayoutBounds._min.var0.var0 = v39;
  v35 = v40;
  *&self->_labelsLayoutBounds._max.var1.var0 = v40;
  objc_msgSend_resetBounds(self, v36, v35, v37, v38);
}

- (void)updateLayoutBounds
{
  if (byte_280A46430 == 1)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromSelector(a2);
    NSLog(&cfstr_PBeginLayoutBo.isa, v7, self, v8);
  }

  v9 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, a2, v2, v3, v4, self->super.super._scene);
  objc_msgSend_setLayoutConfigurationEnabled_(v9, v10, v11, v12, v13, 1);
  objc_msgSend_calculateLayoutBounds(self, v14, v15, v16, v17);
  objc_msgSend_setLayoutConfigurationEnabled_(v9, v18, v19, v20, v21, 0);
  if (byte_280A46430 == 1)
  {
    v22 = objc_opt_class();
    v23 = NSStringFromSelector(a2);
    v24 = MEMORY[0x277CCACA8];
    sub_276166580(&self->_layoutBounds._min.var0.var0, v25, v26, v27, v28, v29, v30, v31);
    if (v38 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v24, v32, v33, v34, v35, &__p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v24, v32, v33, v34, v35, __p);
    }
    v36 = ;
    if (v38 < 0)
    {
      operator delete(__p);
    }

    NSLog(&cfstr_PEndLayoutBoun.isa, v22, self, v23, v36);
  }
}

- (void)calculateLabelsBounds
{
  if (objc_msgSend_p_excludesLabels(self, a2, v2, v3, v4))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartGetProjectedBoundsPipeline calculateLabelsBounds]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 286, 0, "should not calculate labels bounds when excluded");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_clone(self->super.super._scene, v7, v8, v9, v10);
  v31 = objc_msgSend_labelsSceneObjectClasses(self, v27, v28, v29, v30);
  v36 = objc_msgSend_extractObjectsOfClasses_(v26, v32, v33, v34, v35, v31);

  v41 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v37, v38, v39, v40, v36);
  v46 = v41;
  if (v41)
  {
    objc_msgSend_originalInfoChartScale(v41, v42, v43, v44, v45);
    v47 = v73;
  }

  else
  {
    v73 = 0uLL;
    v47 = 0uLL;
  }

  *__p = v47;
  objc_msgSend_setInfoChartScale_(v46, v42, *&v47, v44, v45, __p);
  if (byte_280A46430 == 1)
  {
    v52 = objc_opt_class();
    v53 = NSStringFromSelector(a2);
    NSLog(&cfstr_PBeginLabelsBo.isa, v52, self, v53);
  }

  objc_msgSend_getBoundsFromObjectBoundsForScene_boundsType_(self, v48, v49, v50, v51, v36, 0);
  *&self->_labelsBounds._min.var0.var0 = *__p;
  v57 = v75;
  *&self->_labelsBounds._max.var1.var0 = v75;
  if (byte_280A46430 == 1)
  {
    v58 = objc_opt_class();
    v59 = NSStringFromSelector(a2);
    v60 = MEMORY[0x277CCACA8];
    sub_276166580(&self->_labelsBounds._min.var0.var0, v61, v62, v63, v64, v65, v66, v67);
    if (v75 >= 0.0)
    {
      objc_msgSend_stringWithUTF8String_(v60, v68, v69, v70, v71, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v60, v68, v69, v70, v71, __p[0]);
    }
    v72 = ;
    if (SHIBYTE(v75) < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PEndLabelsBoun.isa, v58, self, v59, v72, v73);
  }

  objc_msgSend_resetBounds(self, v54, v57, v55, v56);
}

- (void)calculateBounds
{
  v7 = objc_msgSend_clone(self->super.super._scene, a2, v2, v3, v4);
  v12 = objc_msgSend_labelsSceneObjectClasses(self, v8, v9, v10, v11);
  v106 = objc_msgSend_extractObjectsNotOfClasses_(v7, v13, v14, v15, v16, v12);

  v21 = objc_msgSend_drawingBoundsSceneObjectClasses(self, v17, v18, v19, v20);
  v26 = objc_msgSend_extractObjectsNotOfClasses_(v106, v22, v23, v24, v25, v21);

  v31 = objc_msgSend_chartSceneObjectClasses(self, v27, v28, v29, v30);
  v36 = objc_msgSend_extractObjectsOfClasses_(v26, v32, v33, v34, v35, v31);

  if (byte_280A46430 == 1)
  {
    v41 = objc_opt_class();
    v42 = NSStringFromSelector(a2);
    NSLog(&cfstr_PBeginChartBou.isa, v41, self, v42);
  }

  objc_msgSend_getBoundsFromObjectBoundsForScene_boundsType_(self, v37, v38, v39, v40, v36, 0);
  *&self->_chartBounds._min.var0.var0 = *__p;
  v46 = v108;
  *&self->_chartBounds._max.var1.var0 = v108;
  if (byte_280A46430 == 1)
  {
    v47 = objc_opt_class();
    v48 = NSStringFromSelector(a2);
    v49 = v36;
    v50 = MEMORY[0x277CCACA8];
    sub_276166580(&self->_chartBounds._min.var0.var0, v51, v52, v53, v54, v55, v56, v57);
    if (v108 >= 0.0)
    {
      objc_msgSend_stringWithUTF8String_(v50, v58, v59, v60, v61, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v50, v58, v59, v60, v61, __p[0]);
    }
    v62 = ;
    v36 = v49;
    if (SHIBYTE(v108) < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PEndChartBound.isa, v47, self, v48, v62);

    if (byte_280A46430)
    {
      v63 = objc_opt_class();
      v64 = NSStringFromSelector(a2);
      NSLog(&cfstr_PBeginOrientBo.isa, v63, self, v64);
    }
  }

  objc_msgSend_getBoundsFromObjectBoundsForScene_boundsType_(self, v43, v46, v44, v45, v26, 0);
  *&self->_orientBounds._min.var0.var0 = *__p;
  v68 = v108;
  *&self->_orientBounds._max.var1.var0 = v108;
  if (byte_280A46430 == 1)
  {
    v69 = objc_opt_class();
    v70 = NSStringFromSelector(a2);
    v71 = v36;
    v72 = MEMORY[0x277CCACA8];
    sub_276166580(&self->_orientBounds._min.var0.var0, v73, v74, v75, v76, v77, v78, v79);
    if (v108 >= 0.0)
    {
      objc_msgSend_stringWithUTF8String_(v72, v80, v81, v82, v83, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v72, v80, v81, v82, v83, __p[0]);
    }
    v84 = ;
    v36 = v71;
    if (SHIBYTE(v108) < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PEndOrientBoun.isa, v69, self, v70, v84);

    if (byte_280A46430)
    {
      v85 = objc_opt_class();
      v86 = NSStringFromSelector(a2);
      NSLog(&cfstr_PBeginDrawingB.isa, v85, self, v86);
    }
  }

  objc_msgSend_getBoundsFromObjectBoundsForScene_boundsType_(self, v65, v68, v66, v67, v106, 0);
  *&self->_drawingBounds._min.var0.var0 = *__p;
  v90 = v108;
  *&self->_drawingBounds._max.var1.var0 = v108;
  if (byte_280A46430 == 1)
  {
    v91 = objc_opt_class();
    v92 = NSStringFromSelector(a2);
    v93 = MEMORY[0x277CCACA8];
    sub_276166580(&self->_drawingBounds._min.var0.var0, v94, v95, v96, v97, v98, v99, v100);
    if (v108 >= 0.0)
    {
      objc_msgSend_stringWithUTF8String_(v93, v101, v102, v103, v104, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v93, v101, v102, v103, v104, __p[0]);
    }
    v105 = ;
    if (SHIBYTE(v108) < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PEndDrawingBou.isa, v91, self, v92, v105);
  }

  objc_msgSend_resetBounds(self, v87, v90, v88, v89);
}

- (void)calculateLabelsBoundsIfNecssary
{
  if (objc_msgSend_p_excludesLabels(self, a2, v2, v3, v4))
  {
    *&self->_labelsBounds._min.var0.var0 = xmmword_2764D5F00;
    *&self->_labelsBounds._max.var1.var0 = 0x80000000800000;
  }

  else
  {

    MEMORY[0x2821F9670](self, sel_calculateLabelsBounds, v6, v7, v8);
  }
}

- (void)calculateBoundsIfNecessary
{
  if ((objc_msgSend_p_updatesLabelsOnly(self, a2, v2, v3, v4) & 1) == 0)
  {

    MEMORY[0x2821F9670](self, sel_calculateBounds, v6, v7, v8);
  }
}

- (void)updateRenderBounds
{
  objc_msgSend_calculateLabelsBoundsIfNecssary(self, a2, v2, v3, v4);

  MEMORY[0x2821F9670](self, sel_calculateBoundsIfNecessary, v6, v7, v8);
}

- (void)updateLayoutBoundsIfNecessary
{
  if ((objc_msgSend_p_updatesLabelsOnly(self, a2, v2, v3, v4) & 1) == 0)
  {

    MEMORY[0x2821F9670](self, sel_updateLayoutBounds, v6, v7, v8);
  }
}

- (box<glm::detail::tvec3<float>>)p_extendLabelsBoundsToBounds:(SEL)bounds
{
  result = objc_msgSend_p_excludesLabels(self, bounds, v4, v5, v6);
  if ((result & 1) == 0)
  {
    v11 = *a4;
    v12 = *(a4 + 2);
    result = sub_276166138(&v11, &self->_labelsBounds);
    a4 = result;
  }

  *&retstr->_min.var0.var0 = *a4;
  *&retstr->_max.var1.var0 = *(a4 + 2);
  return result;
}

- (void)updateBounds
{
  p_layoutInPage = &self->_layoutInPage;
  *&v2 = self->_layoutInPage._min.var0.var0;
  *&v3 = self->_layoutInPage._min.var1.var0;
  *&v4 = self->_layoutInPage._max.var0.var0;
  *&v5 = self->_layoutInPage._max.var1.var0;
  if (*&v4 < *&v2 || *&v5 < *&v3)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartGetProjectedBoundsPipeline updateBounds]", v5);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 361, 0, "layoutInPage not initialized");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  *&v2 = self->_bodyLayoutInPage._min.var0.var0;
  *&v3 = self->_bodyLayoutInPage._min.var1.var0;
  *&v4 = self->_bodyLayoutInPage._max.var0.var0;
  *&v5 = self->_bodyLayoutInPage._max.var1.var0;
  if (*&v4 < *&v2 || *&v5 < *&v3)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartGetProjectedBoundsPipeline updateBounds]", v5);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 362, 0, "bodyLayoutInPage not initialized");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
  }

  *&v3 = self->_containingViewport._min.var0.var0;
  *&v2 = self->_containingViewport._min.var1.var0;
  *&v4 = self->_containingViewport._max.var0.var0;
  *&v5 = self->_containingViewport._max.var1.var0;
  if (*&v4 < *&v3 || *&v5 < *&v2)
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartGetProjectedBoundsPipeline updateBounds]", v5);
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v48, v49, v50, v41, v46, 363, 0, "containingViewport not initialized");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
  }

  objc_msgSend_updateLayoutBoundsIfNecessary(self, a2, v2, v3, v4);
  objc_msgSend_updateRenderBounds(self, v55, v56, v57, v58);
  v73 = *&self->_chartBounds._min.var0.var0;
  v72 = *&self->_chartBounds._max.var0.var0;
  objc_msgSend_p_extendLabelsBoundsToBounds_(self, v59, v72, v60, v61, &self->_orientBounds);
  objc_msgSend_p_extendLabelsBoundsToBounds_(self, v62, v77, v76, v63, &self->_drawingBounds);
  v65._min = v73;
  v64._min = v74;
  v66._min = *&self->_layoutBounds._min.var0.var0;
  v67._min = *&self->_constantDepthBodyLayoutBounds._min.var0.var0;
  *&v65._max = v72;
  *&v68._min = v76;
  *&v68._max = v77;
  v64._max = v75;
  v66._max = *&self->_layoutBounds._max.var0.var0;
  v69 = *p_layoutInPage;
  v67._max = *&self->_constantDepthBodyLayoutBounds._max.var0.var0;
  bodyLayoutInPage = self->_bodyLayoutInPage;
  containingViewport = self->_containingViewport;
  self->_spaces._chart = v65;
  self->_spaces._orient = v68;
  self->_spaces._drawing = v64;
  self->_spaces._layout = v66;
  self->_spaces._layoutInPage = v69;
  self->_spaces._bodyLayout = v67;
  self->_spaces._bodyLayoutInPage = bodyLayoutInPage;
  self->_spaces._containingViewport = containingViewport;
}

- (BOOL)run
{
  if (self->_originalCamera)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartGetProjectedBoundsPipeline run]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 380, 0, "expected nil value for '%{public}s'", "_originalCamera");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (self->_originalSceneAccessor)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartGetProjectedBoundsPipeline run]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 381, 0, "expected nil value for '%{public}s'", "_originalSceneAccessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  v36 = self->super.super._scene;
  v41 = objc_msgSend_camera(v36, v37, v38, v39, v40);
  self->_originalCamera = v41;

  v46 = objc_msgSend_clone(v36, v42, v43, v44, v45);
  scene = self->super.super._scene;
  self->super.super._scene = v46;

  v52 = objc_msgSend_clone(v36, v48, v49, v50, v51);
  v57 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v53, v54, v55, v56, v52);

  objc_storeStrong(&self->_originalSceneAccessor, v57);
  objc_msgSend_updateBounds(self, v58, v59, v60, v61);
  v62 = self->super.super._scene;
  self->super.super._scene = v36;

  self->_originalCamera = 0;
  originalSceneAccessor = self->_originalSceneAccessor;
  self->_originalSceneAccessor = 0;

  return 1;
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

- (box<glm::detail::tvec2<float>>)containingViewport
{
  *v2 = self->_containingViewport;
  result._max = a2;
  result._min = self;
  return result;
}

- (id).cxx_construct
{
  self->_layoutInPage = xmmword_2764D5EE0;
  self->_bodyLayoutInPage = xmmword_2764D5EE0;
  self->_containingViewport = xmmword_2764D5EE0;
  sub_27620A250(&self->_spaces._chart._min);
  *&self->_shadowsLayoutBounds._min.var0.var0 = xmmword_2764D5F00;
  *&self->_shadowsLayoutBounds._max.var1.var0 = 0x80000000800000;
  *&self->_layoutBounds._min.var0.var0 = xmmword_2764D5F00;
  *&self->_layoutBounds._max.var1.var0 = 0x80000000800000;
  *&self->_constantDepthBodyLayoutBounds._min.var0.var0 = xmmword_2764D5F00;
  *&self->_constantDepthBodyLayoutBounds._max.var1.var0 = 0x80000000800000;
  *&self->_bodyLayoutBounds._min.var0.var0 = xmmword_2764D5F00;
  *&self->_bodyLayoutBounds._max.var1.var0 = 0x80000000800000;
  *&self->_labelsLayoutBounds._min.var0.var0 = xmmword_2764D5F00;
  *&self->_labelsLayoutBounds._max.var1.var0 = 0x80000000800000;
  *&self->_chartBounds._min.var0.var0 = xmmword_2764D5F00;
  *&self->_chartBounds._max.var1.var0 = 0x80000000800000;
  *&self->_orientBounds._min.var0.var0 = xmmword_2764D5F00;
  *&self->_orientBounds._max.var1.var0 = 0x80000000800000;
  *&self->_drawingBounds._min.var0.var0 = xmmword_2764D5F00;
  *&self->_drawingBounds._max.var1.var0 = 0x80000000800000;
  *&self->_labelsBounds._min.var0.var0 = xmmword_2764D5F00;
  *&self->_labelsBounds._max.var1.var0 = 0x80000000800000;
  return self;
}

- (Class)labelsMeshRendererClassForLabelsRenderer:(id)renderer
{
  v3 = objc_opt_class();

  return v3;
}

@end