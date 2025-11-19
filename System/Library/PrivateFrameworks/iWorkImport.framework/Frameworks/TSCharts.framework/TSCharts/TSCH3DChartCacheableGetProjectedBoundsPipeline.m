@interface TSCH3DChartCacheableGetProjectedBoundsPipeline
+ (BOOL)includesDepthForUnitScaleForScene:(id)a3;
+ (void)setIncludesDepthForUnitScale:(BOOL)a3 forScene:(id)a4;
- (Class)labelsMeshRendererClassForLabelsRenderer:(id)a3;
- (TSCH3DChartCacheableGetProjectedBoundsPipeline)initWithScene:(id)a3;
- (box<glm::detail::tvec3<float>>)boundsFromObjectBoundsOfType:(SEL)a3;
- (id).cxx_construct;
- (id)updatedConstantDepthSceneFromScene:(id)a3;
- (void)calculateBounds;
- (void)calculateLayoutBounds;
- (void)updateBounds;
- (void)updateLayoutBounds;
- (void)updateRenderBounds;
@end

@implementation TSCH3DChartCacheableGetProjectedBoundsPipeline

+ (void)setIncludesDepthForUnitScale:(BOOL)a3 forScene:(id)a4
{
  v4 = a3;
  v14 = a4;
  v9 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, v6, v7, v8, v4);
  objc_msgSend_setProperties_forType_(v14, v10, v11, v12, v13, v9, @"TSCH3DChartCacheableGetProjectedBoundsPipeline.includesDepthForUnitScale");
}

+ (BOOL)includesDepthForUnitScaleForScene:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v8 = objc_msgSend_propertiesForType_(v3, v4, v5, v6, v7, @"TSCH3DChartCacheableGetProjectedBoundsPipeline.includesDepthForUnitScale");
  v9 = TSUCheckedDynamicCast();
  v14 = objc_msgSend_BOOLValue(v9, v10, v11, v12, v13);

  return v14;
}

- (TSCH3DChartCacheableGetProjectedBoundsPipeline)initWithScene:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = TSCH3DChartCacheableGetProjectedBoundsPipeline;
  v6 = [(TSCH3DGetBoundsPipeline *)&v18 initWithScene:v4];
  if (v6)
  {
    v10 = objc_msgSend_identity(TSCH3DSceneRenderSetup, v5, v7, v8, v9);
    objc_msgSend_setSetup_(v6, v11, v12, v13, v14, v10);

    v15 = objc_alloc_init(TSCH3DGetBoundsProjector);
    projector = v6->_projector;
    v6->_projector = v15;
  }

  return v6;
}

- (box<glm::detail::tvec3<float>>)boundsFromObjectBoundsOfType:(SEL)a3
{
  v7 = *&a4;
  v10 = objc_msgSend_bounds(self, a3, v4, v5, v6);
  v92 = *v10;
  v93 = *(v10 + 16);
  if (!objc_msgSend_useIndividualBounds(self, v11, v93, v12, v13))
  {
    v90 = *(v10 + 48);
    v55 = *(v10 + 64);
    v91 = v55;
    if (*(v10 + 72) != *(v10 + 80))
    {
      v56 = MEMORY[0x277D81150];
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v55, v15, v16, "[TSCH3DChartCacheableGetProjectedBoundsPipeline boundsFromObjectBoundsOfType:]");
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v63, v64, v65, v66, v57, v62, 464, 0, "cannot have individual bounds when flag is false");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
    }

    if ((sub_276155178(v92.i32) & 1) == 0 && (sub_276155178(v90.i32) & 1) == 0)
    {
      v75 = MEMORY[0x277D81150];
      v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, v72, v73, v74, "[TSCH3DChartCacheableGetProjectedBoundsPipeline boundsFromObjectBoundsOfType:]");
      v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, v78, v79, v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v82, v83, v84, v85, v76, v81, 465, 0, "invalid bounds state");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87, v88, v89);
    }

    goto LABEL_19;
  }

  if (*(v10 + 72) == *(v10 + 80))
  {
    v90 = *(v10 + 48);
    v91 = *(v10 + 64);
LABEL_19:
    result = sub_276155178(v90.i32);
    *&retstr->_min.var0.var0 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(result)), 0x1FuLL)), v92, v90);
    *&retstr->_max.var1.var0 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(result), 0x1FuLL)), *&v93, *&v91);
    return result;
  }

  result = sub_276155178(v92.i32);
  if ((result & 1) == 0)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "[TSCH3DChartCacheableGetProjectedBoundsPipeline boundsFromObjectBoundsOfType:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 452, 0, "cannot have bounds when using individual bounds");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  if (!self->_projector)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "[TSCH3DChartCacheableGetProjectedBoundsPipeline boundsFromObjectBoundsOfType:]");
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v44, v45, v46, v47, v38, v43, 453, 0, "invalid nil value for '%{public}s'", "_projector");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
  }

  *&retstr->_min.var0.var0 = xmmword_2764D5F00;
  v52 = 2.84809454e-306;
  *&retstr->_max.var1.var0 = 0x80000000800000;
  for (i = *(v10 + 72); i != *(v10 + 80); i += 24)
  {
    projector = self->_projector;
    if (projector)
    {
      objc_msgSend_projectBounds_type_(projector, v18, v52, v20, v21, i, v7);
    }

    else
    {
      v90 = 0uLL;
      v91 = 0.0;
    }

    result = sub_276166138(retstr, &v90);
  }

  return result;
}

- (id)updatedConstantDepthSceneFromScene:(id)a3
{
  v6 = objc_msgSend_clone(a3, a2, v3, v4, v5);
  v11 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v7, v8, v9, v10, v6);
  v16 = v11;
  if (v11)
  {
    objc_msgSend_infoChartScale(v11, v12, v13, v14, v15);
    v17 = v20;
    LODWORD(v18) = HIDWORD(v21);
  }

  else
  {
    v20 = 0.0;
    v21 = 0;
    v17 = 0.0;
    v18 = 0.0;
  }

  v22 = v17;
  v23 = 1065353216;
  v24 = LODWORD(v18);
  objc_msgSend_setInfoChartScale_(v16, v12, v18, v17, v15, &v22, *&v20, v21);

  return v6;
}

- (void)calculateLayoutBounds
{
  objc_msgSend_calculateLayoutBoundsSkippingLayoutSceneBounds_(self, a2, v2, v3, v4, 0);
  self->_shadowsLayout3DBounds = self->super._shadowsLayoutBounds;
  self->_layout3DBounds = self->super._layoutBounds;
  self->_bodyLayout3DBounds = self->super._bodyLayoutBounds;
  self->_constantDepthBodyLayout3DBounds = self->super._constantDepthBodyLayoutBounds;
}

- (void)updateLayoutBounds
{
  objc_msgSend_resetTransformsForLayoutBounds(self->_projector, a2, v2, v3, v4);
  if (!self->_layoutBoundsValid)
  {
    v19.receiver = self;
    v19.super_class = TSCH3DChartCacheableGetProjectedBoundsPipeline;
    [(TSCH3DChartGetProjectedBoundsPipeline *)&v19 updateLayoutBounds];
    self->_layoutBoundsValid = 1;
  }

  *&self->super._layoutBounds._min.var0.var0 = xmmword_2764D5F00;
  *&self->super._layoutBounds._max.var1.var0 = 0x80000000800000;
  projector = self->_projector;
  v10 = objc_msgSend_p_depthBoundsTypes(self, v6, 2.84809454e-306, v7, v8);
  if (projector)
  {
    objc_msgSend_projectBounds_type_(projector, v11, v12, v13, v14, &self->_constantDepthBodyLayout3DBounds, v10);
    v15 = v17;
    v16 = v18;
  }

  else
  {
    v16 = 0;
    v15 = 0uLL;
  }

  *&self->super._constantDepthBodyLayoutBounds._min.var0.var0 = v15;
  *&self->super._constantDepthBodyLayoutBounds._max.var1.var0 = v16;
}

- (void)calculateBounds
{
  projector = self->_projector;
  if (projector)
  {
    p_bodyLayout3DBounds = &self->_bodyLayout3DBounds;
    objc_msgSend_projectBounds_type_(projector, a2, v2, v3, v4, &self->_bodyLayout3DBounds, 0);
LABEL_5:
    v29 = *__p;
    v30 = v124;
    goto LABEL_6;
  }

  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartCacheableGetProjectedBoundsPipeline calculateBounds]");
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 517, 0, "invalid nil value for '%{public}s'", "_projector");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  v28 = self->_projector;
  p_bodyLayout3DBounds = &self->_bodyLayout3DBounds;
  if (v28)
  {
    objc_msgSend_projectBounds_type_(v28, v9, v25, v26, v27, p_bodyLayout3DBounds, 0);
    goto LABEL_5;
  }

  v30 = 0.0;
  v29 = 0uLL;
LABEL_6:
  *&self->super._chartBounds._min.var0.var0 = v29;
  *&self->super._chartBounds._max.var1.var0 = v30;
  v31 = self->_projector;
  v32 = 0.0;
  v33 = 0uLL;
  v34 = 0uLL;
  v35 = 0.0;
  if (v31)
  {
    objc_msgSend_projectBounds_type_(v31, v9, 0.0, 0.0, 0.0, &self->_layout3DBounds, 0);
    v33 = 0uLL;
    v34 = *__p;
    v35 = v124;
  }

  *&self->super._orientBounds._min.var0.var0 = v34;
  *&self->super._orientBounds._max.var1.var0 = v35;
  v36 = self->_projector;
  if (v36)
  {
    objc_msgSend_projectBounds_type_(v36, v9, *&v34, v35, 0.0, &self->_shadowsLayout3DBounds, 0);
    v33 = *__p;
    v32 = v124;
  }

  *&self->super._drawingBounds._min.var0.var0 = v33;
  *&self->super._drawingBounds._max.var1.var0 = v32;
  if (byte_280A46430 == 1)
  {
    v37 = objc_opt_class();
    v38 = a2;
    v122 = NSStringFromSelector(a2);
    v39 = MEMORY[0x277CCACA8];
    sub_276166580(&p_bodyLayout3DBounds->_min.var0.var0, v40, v41, v42, v43, v44, v45, v46);
    if (v124 >= 0.0)
    {
      objc_msgSend_stringWithUTF8String_(v39, v47, v48, v49, v50, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v39, v47, v48, v49, v50, __p[0]);
    }
    v58 = ;
    if (SHIBYTE(v124) < 0)
    {
      operator delete(__p[0]);
    }

    v59 = MEMORY[0x277CCACA8];
    sub_276166580(&self->super._chartBounds._min.var0.var0, v51, v52, v53, v54, v55, v56, v57);
    if (v124 >= 0.0)
    {
      objc_msgSend_stringWithUTF8String_(v59, v60, v61, v62, v63, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v59, v60, v61, v62, v63, __p[0]);
    }
    v64 = ;
    v65 = v38;
    if (SHIBYTE(v124) < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PBodyLayoutCha.isa, v37, self, v122, v58, v64);

    if (byte_280A46430)
    {
      v66 = objc_opt_class();
      v67 = NSStringFromSelector(v38);
      v68 = MEMORY[0x277CCACA8];
      sub_276166580(&self->_layout3DBounds._min.var0.var0, v69, v70, v71, v72, v73, v74, v75);
      if (v124 >= 0.0)
      {
        objc_msgSend_stringWithUTF8String_(v68, v76, v77, v78, v79, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v68, v76, v77, v78, v79, __p[0]);
      }
      v87 = ;
      if (SHIBYTE(v124) < 0)
      {
        operator delete(__p[0]);
      }

      v88 = MEMORY[0x277CCACA8];
      sub_276166580(&self->super._orientBounds._min.var0.var0, v80, v81, v82, v83, v84, v85, v86);
      if (v124 >= 0.0)
      {
        objc_msgSend_stringWithUTF8String_(v88, v89, v90, v91, v92, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v88, v89, v90, v91, v92, __p[0]);
      }
      v93 = ;
      if (SHIBYTE(v124) < 0)
      {
        operator delete(__p[0]);
      }

      NSLog(&cfstr_POrientLayoutC.isa, v66, self, v67, v87, v93);

      if (byte_280A46430)
      {
        v94 = objc_opt_class();
        v95 = NSStringFromSelector(v65);
        v96 = MEMORY[0x277CCACA8];
        sub_276166580(&self->_shadowsLayout3DBounds._min.var0.var0, v97, v98, v99, v100, v101, v102, v103);
        if (v124 >= 0.0)
        {
          objc_msgSend_stringWithUTF8String_(v96, v104, v105, v106, v107, __p);
        }

        else
        {
          objc_msgSend_stringWithUTF8String_(v96, v104, v105, v106, v107, __p[0]);
        }
        v115 = ;
        if (SHIBYTE(v124) < 0)
        {
          operator delete(__p[0]);
        }

        v116 = MEMORY[0x277CCACA8];
        sub_276166580(&self->super._drawingBounds._min.var0.var0, v108, v109, v110, v111, v112, v113, v114);
        if (v124 >= 0.0)
        {
          objc_msgSend_stringWithUTF8String_(v116, v117, v118, v119, v120, __p);
        }

        else
        {
          objc_msgSend_stringWithUTF8String_(v116, v117, v118, v119, v120, __p[0]);
        }
        v121 = ;
        if (SHIBYTE(v124) < 0)
        {
          operator delete(__p[0]);
        }

        NSLog(&cfstr_PDrawingLayout.isa, v94, self, v95, v115, v121);
      }
    }
  }
}

- (void)updateRenderBounds
{
  objc_msgSend_resetTransformsForRenderBounds(self->_projector, a2, v2, v3, v4);
  v6.receiver = self;
  v6.super_class = TSCH3DChartCacheableGetProjectedBoundsPipeline;
  [(TSCH3DChartGetProjectedBoundsPipeline *)&v6 updateRenderBounds];
}

- (void)updateBounds
{
  if (!self->super._originalCamera)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartCacheableGetProjectedBoundsPipeline updateBounds]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 541, 0, "invalid nil value for '%{public}s'", "_originalCamera");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  originalSceneAccessor = self->super._originalSceneAccessor;
  if (!originalSceneAccessor)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartCacheableGetProjectedBoundsPipeline updateBounds]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 542, 0, "invalid nil value for '%{public}s'", "_originalSceneAccessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
    originalSceneAccessor = self->super._originalSceneAccessor;
  }

  objc_msgSend_setCamera_accessor_(self->_projector, a2, v2, v3, v4, self->super._originalCamera, originalSceneAccessor);
  v41 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v37, v38, v39, v40, self->super.super.super._scene);
  v46 = v41;
  if (v41)
  {
    objc_msgSend_infoChartScale(v41, v42, v43, v44, v45);
    v47 = v85;
  }

  else
  {
    v85 = 0uLL;
    v47 = 0uLL;
  }

  v86 = v47;
  objc_msgSend_setOriginalInfoChartScale_(v46, v42, *&v47, v44, v45, &v86);
  if (v46)
  {
    objc_msgSend_rotation(v46, v48, v49, v50, v51);
    v52 = v83;
    LODWORD(v53) = v84;
  }

  else
  {
    v84 = 0;
    v83 = 0.0;
    v52 = 0.0;
    v53 = 0.0;
  }

  *&v86 = v52;
  DWORD2(v86) = LODWORD(v53);
  objc_msgSend_setOriginalRotation_(v46, v48, v52, v53, v51, &v86);
  v54 = objc_opt_class();
  if (objc_msgSend_includesDepthForUnitScaleForScene_(v54, v55, v56, v57, v58, self->super.super.super._scene))
  {
    if (v46)
    {
      objc_msgSend_infoChartScale(v46, v59, v60, v61, v62);
      LODWORD(v63) = DWORD2(v86);
    }

    else
    {
      v86 = 0uLL;
      v63 = 0.0;
    }

    __asm { FMOV            V1.2S, #1.0 }

    v81 = _D1;
    v82 = LODWORD(v63);
    objc_msgSend_setInfoChartScaleVec3_(v46, v59, v63, _D1, v62, &v81);
    v74 = self->super._originalSceneAccessor;
    if (v74)
    {
      objc_msgSend_infoChartScaleVec3(self->super._originalSceneAccessor, v70, v71, v72, v73);
      v75 = v81;
    }

    else
    {
      v82 = 0;
      v81 = 0.0;
      v75 = 0.0;
    }

    *&v86 = v75;
    DWORD2(v86) = 1065353216;
    objc_msgSend_setInfoChartScaleVec3_(v74, v70, v75, v72, v73, &v86);
  }

  else
  {
    __asm { FMOV            V0.2S, #1.0 }

    *&v86 = _D0;
    DWORD2(v86) = 1065353216;
    objc_msgSend_setInfoChartScaleVec3_(v46, v59, _D0, v61, v62, &v86);
  }

  v80.receiver = self;
  v80.super_class = TSCH3DChartCacheableGetProjectedBoundsPipeline;
  [(TSCH3DChartGetProjectedBoundsPipeline *)&v80 updateBounds];
  objc_msgSend_reset(self->_projector, v76, v77, v78, v79);
}

- (id).cxx_construct
{
  *(self + 516) = xmmword_2764D5F00;
  *(self + 532) = 0x80000000800000;
  *(self + 540) = xmmword_2764D5F00;
  *(self + 556) = 0x80000000800000;
  *(self + 564) = xmmword_2764D5F00;
  *(self + 580) = 0x80000000800000;
  *(self + 588) = xmmword_2764D5F00;
  *(self + 604) = 0x80000000800000;
  return self;
}

- (Class)labelsMeshRendererClassForLabelsRenderer:(id)a3
{
  objc_msgSend_useIndividualBounds(self, a2, v3, v4, v5, a3);
  v6 = objc_opt_class();

  return v6;
}

@end