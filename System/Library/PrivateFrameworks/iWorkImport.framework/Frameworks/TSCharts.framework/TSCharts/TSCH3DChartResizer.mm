@interface TSCH3DChartResizer
+ (id)resizerWithLayout:(id)layout chartType:(id)type;
+ (tvec2<float>)adjustLabelWrapSize:(void *)size forScene:(id)scene;
- (BOOL)checkImprovement;
- (BOOL)resize1;
- (TSCH3DChartResizer)initWithLayout:(id)layout chartType:(id)type;
- (float)maxDepthRatio;
- (float)perspectiveness;
- (id).cxx_construct;
- (tvec2<BOOL>)canImprove;
- (tvec2<BOOL>)converges;
- (tvec2<float>)resize:(void *)resize startingSize:(void *)size;
- (tvec2<float>)updateResizerFromRequestedSize:(void *)size startingSize:(void *)startingSize;
- (tvec2<int>)containingViewportFromSize:(void *)size;
- (tvec3<float>)adjust:(void *)adjust;
- (tvec3<float>)adjust:(void *)adjust by:(float)by;
- (tvec3<float>)adjustedScale;
- (tvec3<float>)clamp:(void *)clamp;
- (tvec3<float>)clampDepthRatio:(void *)ratio;
- (void)adjustContainingViewport;
- (void)dealloc;
- (void)initializeResizing:(void *)resizing;
- (void)loop;
- (void)readjustContainingViewport;
- (void)setContainingViewport:(void *)viewport;
- (void)setScale:(void *)scale;
- (void)updateResizeData;
- (void)updateSteps;
@end

@implementation TSCH3DChartResizer

+ (tvec2<float>)adjustLabelWrapSize:(void *)size forScene:(id)scene
{
  v6 = v4;
  sceneCopy = scene;
  v11 = objc_msgSend_main(sceneCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_resizer3DClass(v11, v12, v13, v14, v15);

  if (v16)
  {
    objc_msgSend_adjustLabelWrapSize_(v16, v17, v18, v19, v20, size);
  }

  else
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "+[TSCH3DChartResizer adjustLabelWrapSize:forScene:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 817, 0, "invalid nil value for '%{public}s'", "resizerClass");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
    *v6 = 0;
  }

  return v36;
}

+ (id)resizerWithLayout:(id)layout chartType:(id)type
{
  layoutCopy = layout;
  typeCopy = type;
  v8 = [self alloc];
  v13 = objc_msgSend_initWithLayout_chartType_(v8, v9, v10, v11, v12, layoutCopy, typeCopy);

  return v13;
}

- (TSCH3DChartResizer)initWithLayout:(id)layout chartType:(id)type
{
  layoutCopy = layout;
  typeCopy = type;
  v33.receiver = self;
  v33.super_class = TSCH3DChartResizer;
  v9 = [(TSCH3DChartResizer *)&v33 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layout, layout);
    if (layoutCopy)
    {
      objc_msgSend_layoutSettings(layoutCopy, v11, v12, v13, v14);
    }

    else
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DChartResizer initWithLayout:chartType:]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 841, 0, "invalid nil value for '%{public}s'", "boundsLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
      v31 = 0uLL;
      v32 = 0;
    }

    *&v10->_layoutSettings.forceOmitLegend = v31;
    v10->_layoutSettings.max3DLimitingSeries = v32;
    objc_storeStrong(&v10->_chartType, type);
    *&v10->_minStep = 0x3A83126F3B449BA6;
  }

  return v10;
}

- (void)dealloc
{
  if (self->_scene)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartResizer dealloc]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 851, 0, "expected nil value for '%{public}s'", "_scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (self->_accessor)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartResizer dealloc]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 852, 0, "expected nil value for '%{public}s'", "_accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  v36.receiver = self;
  v36.super_class = TSCH3DChartResizer;
  [(TSCH3DChartResizer *)&v36 dealloc];
}

- (float)maxDepthRatio
{
  chartType = self->_chartType;
  if (!chartType)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartResizer maxDepthRatio]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 860, 0, "invalid nil value for '%{public}s'", "_chartType");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    chartType = self->_chartType;
  }

  objc_msgSend_maxDepthRatio(chartType, a2, v2, v3, v4);
  maxDepthRatioType = self->_layoutSettings.maxDepthRatioType;
  if (maxDepthRatioType)
  {
    if (maxDepthRatioType == 1)
    {
      objc_msgSend_sageMaxDepthRatio(self->_chartType, v22, v23, v24, v25);
    }
  }

  else
  {
    objc_msgSend_spiceMaxDepthRatio(self->_chartType, v22, v23, v24, v25);
  }

  return v23;
}

- (tvec2<BOOL>)converges
{
  p_precision = &self->_precision;
  v4 = vsub_f32(self->_current.size, self->_target);
  v5 = vld1_dup_f32(p_precision);
  v6 = vcge_f32(v5, vbsl_s8(vcgez_f32(v4), v4, vneg_f32(v4)));
  *v2 = v6.i8[0] & 1;
  v2[1] = v6.i8[4] & 1;
  return self;
}

- (tvec3<float>)adjust:(void *)adjust by:(float)by
{
  v8 = v4;
  v9 = *adjust;
  *v4 = *adjust;
  *(v4 + 8) = *(adjust + 2);
  index = self->_index;
  *&v9 = *(v4 + 4 * index) * by;
  *(v4 + 4 * index) = LODWORD(v9);
  v11 = objc_msgSend_depthRatioDimension(self->_chartType, a2, v9, v5, v6);
  if (index == v11)
  {
    *(v8 + 8) = *(v8 + 8) * by;
  }

  result.var0 = v11;
  result.var1 = *(&v11 + 4);
  result.var2 = v12;
  return result;
}

- (tvec3<float>)adjust:(void *)adjust
{
  v9 = v3;
  v10 = *(&self->_current.delta.var0.var0 + self->_index);
  v11 = v10 < 0.0;
  v12 = v10 <= 0.0;
  v13 = 0.0;
  LODWORD(v4) = -1.0;
  if (v11)
  {
    *&v13 = -1.0;
  }

  if (v12)
  {
    v14 = *&v13;
  }

  else
  {
    v14 = 1.0;
  }

  objc_msgSend_step(self, a2, v13, v4, v5);
  v19 = *&v16;
  if (byte_280A46430 == 1)
  {
    v20 = objc_opt_class();
    v21 = NSStringFromSelector(a2);
    v22 = MEMORY[0x277CCACA8];
    v23 = *adjust;
    sub_276152FD4("vec3(%f, %f, %f)", v24, v25, v26, v27, v28, v29, v30, SLOBYTE(v23));
    if (v93 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v22, v31, v32, v33, v34, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v22, v31, v32, v33, v34, __p[0]);
    }
    v35 = ;
    if (v93 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PPreadjust.isa, v20, self, v21, v35);
  }

  v36 = (v14 * v19) + 1.0;
  *&v16 = v36;
  v37 = objc_msgSend_adjust_by_(self, v15, v16, v17, v18, adjust);
  if (byte_280A46430 == 1)
  {
    v42 = objc_opt_class();
    v43 = NSStringFromSelector(a2);
    v44 = MEMORY[0x277CCACA8];
    v45 = *v9;
    sub_276152FD4("vec3(%f, %f, %f)", v46, v47, v48, v49, v50, v51, v52, SLOBYTE(v45));
    if (v93 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v44, v53, v54, v55, v56, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v44, v53, v54, v55, v56, __p[0]);
    }
    v57 = ;
    if (v93 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PAdjust.isa, v42, self, v43, v57);
  }

  v58 = 0;
  v59 = 0;
  LODWORD(v39) = *v9;
  LODWORD(v40) = *(v9 + 4);
  LOBYTE(__p[0]) = fabsf(*v9) == INFINITY;
  LODWORD(v41) = *(v9 + 8);
  BYTE1(__p[0]) = fabsf(*&v40) == INFINITY;
  BYTE2(__p[0]) = fabsf(*&v41) == INFINITY;
  do
  {
    while ((v59 & 1) != 0)
    {
      ++v58;
      v59 = 1;
      if (v58 == 3)
      {
        goto LABEL_26;
      }
    }

    v59 = *(__p + v58++);
  }

  while (v58 != 3);
  if (v59)
  {
    goto LABEL_26;
  }

  v88 = 0;
  LOBYTE(v89) = 0;
  v91[0] = 0;
  v91[1] = 0;
  v91[2] = 0;
  do
  {
    while ((v89 & 1) != 0)
    {
      ++v88;
      LOBYTE(v89) = 1;
      if (v88 == 3)
      {
        goto LABEL_26;
      }
    }

    v89 = v91[v88++];
  }

  while (v88 != 3);
  if (v89)
  {
LABEL_26:
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "[TSCH3DChartResizer adjust:]");
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    v67 = MEMORY[0x277CCACA8];
    v68 = *v9;
    v90 = *(v9 + 8);
    sub_276152FD4("vec3(%f, %f, %f)", v69, v70, v71, v72, v73, v74, v75, SLOBYTE(v68));
    if (v93 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v67, v76, v77, v78, v79, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v67, v76, v77, v78, v79, __p[0]);
    }
    v81 = ;
    if (v93 < 0)
    {
      operator delete(__p[0]);
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v80, v36, v82, v83, v61, v66, 904, 0, "scale is not finite %@ adjust %f", v81, v36, *&v90);

    v37 = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85, v86, v87);
  }

  result.var2 = v38;
  result.var0 = v37;
  result.var1 = *(&v37 + 4);
  return result;
}

- (tvec3<float>)clamp:(void *)clamp
{
  v10 = v3;
  if (byte_280A46430 == 1)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(a2);
    v13 = MEMORY[0x277CCACA8];
    v14 = *clamp;
    sub_276152FD4("vec3(%f, %f, %f)", v15, v16, v17, v18, v19, v20, v21, SLOBYTE(v14));
    if (v138 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v13, v22, v23, v24, v25, &__p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v13, v22, v23, v24, v25, __p);
    }
    v26 = ;
    if (v138 < 0)
    {
      operator delete(__p);
    }

    NSLog(&cfstr_PPreclamp.isa, v11, self, v12, v26);
  }

  objc_msgSend_minScale(self, a2, v4, v5, v6);
  v29 = 0;
  v135[0] = LODWORD(v28);
  v135[1] = LODWORD(v28);
  v135[2] = LODWORD(v28);
  __p = 0;
  v137 = 0;
  do
  {
    v30 = *(&__p + v29);
    *(&v130 + v29) = *(clamp + v29) <= v30;
    ++v29;
  }

  while (v29 != 3);
  v31 = 0;
  LOBYTE(v30) = BYTE2(v130);
  v32 = *(clamp + 2);
  v33 = (*&v28 - v32) * LODWORD(v30);
  v34.i32[0] = LOBYTE(v130) & 1;
  v34.i32[1] = BYTE1(v130) & 1;
  v35 = vdup_lane_s32(*&v28, 0);
  v36 = vadd_f32(*clamp, vmul_f32(vsub_f32(v35, *clamp), vcvt_f32_u32(v34)));
  v37 = v32 + v33;
  v133 = v36;
  v134 = v32 + v33;
  do
  {
    v132[v31] = v133.f32[v31] < *&v135[v31];
    ++v31;
  }

  while (v31 != 3);
  v38 = COERCE_DOUBLE(vdiv_f32(v35, v36));
  v127 = v28;
  v36.f32[0] = *&v28 / v37;
  v130 = v38;
  v131 = *&v28 / v37;
  v39 = objc_msgSend_depthRatioDimension(self->_chartType, v27, v28, *&v36, v38);
  v43 = v39;
  if (v132[v39] == 1)
  {
    v44 = *(&v130 + v39);
    v133.f32[v39] = v44 * v133.f32[v39];
    v37 = v44 * v134;
    v134 = v44 * v134;
    if (byte_280A46430 == 1)
    {
      v45 = objc_opt_class();
      v46 = NSStringFromSelector(a2);
      v47 = MEMORY[0x277CCACA8];
      v123 = v133.f32[0];
      sub_276152FD4("vec3(%f, %f, %f)", v48, v49, v50, v51, v52, v53, v54, SLOBYTE(v123));
      if (v138 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v47, v55, v56, v57, v58, &__p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v47, v55, v56, v57, v58, __p);
      }
      v59 = ;
      if (v138 < 0)
      {
        operator delete(__p);
      }

      NSLog(&cfstr_PClampRatiodim.isa, v45, self, v46, v59);
    }
  }

  v60 = v127;
  if (v132[v43 ^ 1] == 1)
  {
    v133.i32[v43 ^ 1] = v135[v43 ^ 1];
    if (byte_280A46430)
    {
      v61 = objc_opt_class();
      v62 = NSStringFromSelector(a2);
      v63 = MEMORY[0x277CCACA8];
      v37 = v134;
      v124 = v133.f32[0];
      sub_276152FD4("vec3(%f, %f, %f)", v64, v65, v66, v67, v68, v69, v70, SLOBYTE(v124));
      if (v138 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v63, v71, v72, v73, v74, &__p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v63, v71, v72, v73, v74, __p);
      }
      v75 = ;
      if (v138 < 0)
      {
        operator delete(__p);
      }

      NSLog(&cfstr_PClampOtherdim.isa, v61, self, v62, v75);

      v60 = v127;
    }

    else
    {
      v37 = v134;
    }
  }

  if (v37 >= *&v60)
  {
    *&v60 = v37;
  }

  else
  {
    v41 = 3.18618444e-58;
    if (v37 >= 0.00000011921)
    {
      *&v41 = v37;
    }

    v133.f32[v43] = (*&v60 / *&v41) * v133.f32[v43];
    if (byte_280A46430 == 1)
    {
      v76 = objc_opt_class();
      v77 = NSStringFromSelector(a2);
      v78 = MEMORY[0x277CCACA8];
      v125 = v133.f32[0];
      sub_276152FD4("vec3(%f, %f, %f)", v79, v80, v81, v82, v83, v84, v85, SLOBYTE(v125));
      if (v138 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v78, v86, v87, v88, v89, &__p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v78, v86, v87, v88, v89, __p);
      }
      v90 = ;
      if (v138 < 0)
      {
        operator delete(__p);
      }

      NSLog(&cfstr_PClampZ.isa, v76, self, v77, v90);

      v60 = v127;
    }
  }

  v91 = 0;
  v92 = v133;
  *v10 = v133;
  v10[1].i32[0] = LODWORD(v60);
  __p = 0;
  v137 = 0;
  do
  {
    LODWORD(v41) = v10->i32[v91];
    LODWORD(v42) = *(&__p + v91);
    v129[v91++] = *&v41 > *&v42;
  }

  while (v91 != 3);
  v93 = 0;
  v94 = 1;
  do
  {
    while ((v94 & 1) == 0)
    {
      v94 = 0;
      if (++v93 == 3)
      {
        goto LABEL_49;
      }
    }

    v94 = v129[v93++];
  }

  while (v93 != 3);
  if (v94)
  {
    goto LABEL_55;
  }

LABEL_49:
  v128 = *&v60;
  v95 = MEMORY[0x277D81150];
  v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v60, "[TSCH3DChartResizer clamp:]");
  v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, v98, v99, v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
  v102 = MEMORY[0x277CCACA8];
  v126 = v92.f32[0];
  sub_276152FD4("vec3(%f, %f, %f)", v103, v104, v105, v106, v107, v108, v109, SLOBYTE(v126));
  if (v138 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v102, v110, v111, v112, v113, &__p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v102, v110, v111, v112, v113, __p);
  }
  v115 = ;
  if (v138 < 0)
  {
    operator delete(__p);
  }

  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v95, v114, v116, v117, v118, v96, v101, 938, 0, "scale is negative %@", v115, v92.f32[1], v128);

  v39 = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v119, v120, v121, v122);
LABEL_55:
  result.var2 = v40;
  result.var0 = v39;
  result.var1 = *(&v39 + 4);
  return result;
}

- (tvec3<float>)clampDepthRatio:(void *)ratio
{
  v9 = v3;
  if (byte_280A46430 == 1)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromSelector(a2);
    v12 = MEMORY[0x277CCACA8];
    v13 = *ratio;
    sub_276152FD4("vec3(%f, %f, %f)", v14, v15, v16, v17, v18, v19, v20, SLOBYTE(v13));
    if (v52 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v12, v21, v22, v23, v24, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v12, v21, v22, v23, v24, __p[0]);
    }
    v25 = ;
    if (v52 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PPreclampzx.isa, v10, self, v11, v25);
  }

  v26 = *ratio;
  *v9 = *ratio;
  v27 = *(ratio + 2);
  *(v9 + 8) = v27;
  objc_msgSend_maxDepthRatio(self, a2, v26, v4, v5);
  v29 = *&v28;
  v33 = objc_msgSend_depthRatioDimension(self->_chartType, v30, v28, v31, v32);
  if ((v27 / *(v9 + 4 * v33)) > v29)
  {
    *(v9 + 4 * v33) = v27 / v29;
  }

  if (byte_280A46430 == 1)
  {
    v35 = objc_opt_class();
    v36 = NSStringFromSelector(a2);
    v37 = MEMORY[0x277CCACA8];
    v38 = *v9;
    sub_276152FD4("vec3(%f, %f, %f)", v39, v40, v41, v42, v43, v44, v45, SLOBYTE(v38));
    if (v52 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v37, v46, v47, v48, v49, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v37, v46, v47, v48, v49, __p[0]);
    }
    v50 = ;
    if (v52 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PClampzx.isa, v35, self, v36, v50);
  }

  result.var0 = v33;
  result.var1 = *(&v33 + 4);
  result.var2 = v34;
  return result;
}

- (tvec3<float>)adjustedScale
{
  v7 = v2;
  scale = self->_current.scale;
  objc_msgSend_adjust_(self, a2, COERCE_DOUBLE(__PAIR64__(LODWORD(scale.var1.var0), LODWORD(scale.var2.var0))), v3, v4, &scale);
  objc_msgSend_clamp_(self, v8, v9, v10, v11, v52);
  v16 = objc_msgSend_clampDepthRatio_(self, v12, v13, v14, v15, v51);
  *v7 = v48;
  *(v7 + 4) = v49;
  *(v7 + 8) = v50;
  if (byte_280A46430 == 1)
  {
    v18 = objc_opt_class();
    v19 = NSStringFromSelector(a2);
    v20 = MEMORY[0x277CCACA8];
    var0 = self->_current.scale.var0.var0;
    sub_276152FD4("vec3(%f, %f, %f)", v22, v23, v24, v25, v26, v27, v28, SLOBYTE(var0));
    if (v55 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v20, v29, v30, v31, v32, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v20, v29, v30, v31, v32, __p[0]);
    }
    v40 = ;
    if (v55 < 0)
    {
      operator delete(__p[0]);
    }

    v41 = MEMORY[0x277CCACA8];
    v47 = v48;
    sub_276152FD4("vec3(%f, %f, %f)", v33, v34, v35, v36, v37, v38, v39, SLOBYTE(v47));
    if (v55 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v41, v42, v43, v44, v45, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v41, v42, v43, v44, v45, __p[0]);
    }
    v46 = ;
    if (v55 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PAdjustingScal.isa, v18, self, v19, v40, v46);
  }

  result.var0 = v16;
  result.var1 = *(&v16 + 4);
  result.var2 = v17;
  return result;
}

- (void)updateSteps
{
  p_delta = &self->_current.delta;
  index = self->_index;
  LODWORD(v2) = *(&self->_current.delta.var0.var0 + index);
  v6 = &self->_previous.delta;
  LODWORD(v3) = *(&self->_previous.delta.var0.var0 + index);
  v7 = vabdd_f64(*&v2, *&v3);
  if (*&v2 != *&v3 && v7 >= self->_precision)
  {
    objc_msgSend_step(self, a2, v2, v7, v3);
    v14 = self->_index;
    v15 = *(&p_delta->var0.var0 + v14);
    *&v13 = vabds_f32(v15, *(&v6->var0.var0 + v14));
    *&v12 = fabsf(v15);
    *&v11 = *&v12 * (*&v11 / *&v13);

    objc_msgSend_setStep_(self, v10, v11, v12, v13);
  }
}

- (BOOL)checkImprovement
{
  v4 = *(&self->_current.chartOnlySize.var0.var0 + self->_index);
  v5 = objc_opt_class();
  objc_msgSend_minimumSize(v5, v6, v7, v8, v9);
  v12 = (self + 4 * self->_index);
  v13 = v12[30];
  v14 = v12[17];
  if (fabsf(v13) >= fabsf(v14) || (v13 <= 0.0 ? (v15 = v4 < *&v11) : (v15 = 0), !v15 ? (v16 = 0) : (v16 = 1), vabds_f32(v13, v14) < 0.5 || (v16 & 1) != 0))
  {
    *&v11 = v12[32] * 0.5;
    if ((v12[19] * 0.5) < *&v11)
    {
      *&v11 = v12[19] * 0.5;
    }

    if (self->_minStep >= *&v11)
    {
      *&v11 = self->_minStep;
    }

    v50 = *&self->_previous.scale.var2.var0;
    *&self->_current.size.var0.var0 = *&self->_previous.size.var0.var0;
    *&self->_current.scale.var2.var0 = v50;
    v51 = *&self->_previous.steps.var1.var0;
    *&self->_current.steps.var1.var0 = v51;
    *&v51 = self->_previous.chartOnlySize.var1.var0;
    LODWORD(self->_current.chartOnlySize.var1.var0) = v51;
    objc_msgSend_setStep_(self, v10, v11, *&v51, *&v50);
    accessor = self->_accessor;
    __p = *&self->_current.scale.var0.var0;
    var0 = self->_current.scale.var2.var0;
    objc_msgSend_setInfoChartScaleVec3_(accessor, v53, COERCE_DOUBLE(__PAIR64__(HIDWORD(__p), LODWORD(var0))), v54, v55, &__p);
    if (byte_280A46430 != 1)
    {
      return 0;
    }

    v56 = objc_opt_class();
    v18 = NSStringFromSelector(a2);
    NSLog(&cfstr_PFailedToResiz.isa, v56, self, v18, self->_index);
    v49 = 0;
  }

  else
  {
    if (byte_280A46430 != 1)
    {
      return 1;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(a2);
    index = self->_index;
    v27 = sub_276202B30(&self->_previous.size, v20, v21, v22, v23, v24, v25, v26);
    v35 = sub_276202B30(&self->_current.size, v28, v29, v30, v31, v32, v33, v34);
    v36 = MEMORY[0x277CCACA8];
    v58 = self->_target.var0.var0;
    sub_276152FD4("vec2(%f, %f)", v37, v38, v39, v40, v41, v42, v43, SLOBYTE(v58));
    if (v61 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v36, v44, v45, v46, v47, &__p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v36, v44, v45, v46, v47, __p);
    }
    v48 = ;
    if (v61 < 0)
    {
      operator delete(__p);
    }

    NSLog(&cfstr_PIndexLuChange.isa, v17, self, v18, index, v27, v35, v48);

    v49 = 1;
  }

  return v49;
}

- (void)updateResizeData
{
  layout = self->_layout;
  if (layout)
  {
    objc_msgSend_resizingSize(layout, a2, v2, v3, v4);
    v8 = v54;
  }

  else
  {
    v55 = 0uLL;
    v8 = 0;
  }

  accessor = self->_accessor;
  if (accessor)
  {
    objc_msgSend_infoChartScaleVec3(accessor, a2, v2, v3, v4);
    v10 = __p;
    v11 = v57;
  }

  else
  {
    v10 = 0;
    v11 = 0.0;
  }

  self->_current.size = v8;
  *&self->_current.scale.var0.var0 = v10;
  self->_current.scale.var2.var0 = v11;
  self->_current.delta = vsub_f32(self->_target, v8);
  *&self->_current.unrotatedSize.var0.var0 = v55;
  if (byte_280A46430 == 1)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(a2);
    v14 = MEMORY[0x277CCACA8];
    var0 = self->_target.var0.var0;
    sub_276152FD4("vec2(%f, %f)", v15, v16, v17, v18, v19, v20, v21, SLOBYTE(var0));
    if (v58 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v14, v22, v23, v24, v25, &__p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v14, v22, v23, v24, v25, __p);
    }
    v27 = ;
    if (v58 < 0)
    {
      operator delete(__p);
    }

    objc_msgSend_containingViewportFromCurrentSize(self, v26, v28, v29, v30);
    v31 = MEMORY[0x277CCACA8];
    sub_276152FD4("ivec2(%d, %d)", v32, v33, v34, v35, v36, v37, v38, v53);
    if (v58 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v31, v39, v40, v41, v42, &__p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v31, v39, v40, v41, v42, __p);
    }
    v50 = ;
    if (v58 < 0)
    {
      operator delete(__p);
    }

    v51 = sub_276202B30(&self->_current.size, v43, v44, v45, v46, v47, v48, v49);
    NSLog(&cfstr_PRequestCvCurr.isa, v12, self, v13, v27, v50, v51);
  }
}

- (tvec2<BOOL>)canImprove
{
  v6 = v2;
  minStep = self->_minStep;
  var0 = self->_current.steps.var0.var0;
  v9 = self->_current.steps.var1.var0;
  v10 = objc_msgSend_converges(self, a2, v3, v4, v5);
  v11 = v14 ^ 1;
  if (var0 > minStep)
  {
    ++v11;
  }

  v12 = v15 ^ 1;
  v13 = v11 & 3;
  if (v9 > minStep)
  {
    ++v12;
  }

  *v6 = v13 == 2;
  v6[1] = v12 == 2;
  return v10;
}

- (void)setScale:(void *)scale
{
  accessor = self->_accessor;
  v11 = *scale;
  v12 = *(scale + 2);
  objc_msgSend_setInfoChartScaleVec3_(accessor, a2, COERCE_DOUBLE(__PAIR64__(HIDWORD(v11), v12)), v3, v4, &v11);
  objc_msgSend_updateResizeData(self, v7, v8, v9, v10);
}

- (BOOL)resize1
{
  CanImprove = objc_msgSend_currentCanImprove(self, a2, v2, v3, v4);
  if (CanImprove)
  {
    if (byte_280A46430 == 1)
    {
      v12 = objc_opt_class();
      v13 = NSStringFromSelector(a2);
      v18 = objc_msgSend_debugBounds(self->_layout, v14, v15, v16, v17);
      v23 = objc_msgSend_projectedBounds(self->_layout, v19, v20, v21, v22);
      v31 = sub_2762032CC(v23, v24, v25, v26, v27, v28, v29, v30);
      NSLog(&cfstr_PPreSetScale.isa, v12, self, v13, v18, v31);
    }

    objc_msgSend_adjustedScale(self, v8, v9, v10, v11);
    objc_msgSend_setScale_(self, v32, v33, v34, v35, v66);
    if (byte_280A46430 == 1)
    {
      v40 = objc_opt_class();
      v41 = NSStringFromSelector(a2);
      v46 = objc_msgSend_debugBounds(self->_layout, v42, v43, v44, v45);
      v51 = objc_msgSend_projectedBounds(self->_layout, v47, v48, v49, v50);
      v59 = sub_2762032CC(v51, v52, v53, v54, v55, v56, v57, v58);
      NSLog(&cfstr_PPostSetScale.isa, v40, self, v41, v46, v59);
    }

    objc_msgSend_updateSteps(self, v36, v37, v38, v39);
    LOBYTE(CanImprove) = objc_msgSend_checkImprovement(self, v60, v61, v62, v63);
    v64 = *&self->_current.scale.var2.var0;
    *&self->_previous.size.var0.var0 = *&self->_current.size.var0.var0;
    *&self->_previous.scale.var2.var0 = v64;
    *&self->_previous.steps.var1.var0 = *&self->_current.steps.var1.var0;
    self->_previous.chartOnlySize.var1.var0 = self->_current.chartOnlySize.var1.var0;
  }

  return CanImprove;
}

- (void)loop
{
  v86 = 257;
  v11 = 0;
  if ((objc_msgSend_allConverges(self, a2, v2, v3, v4) & 1) == 0)
  {
    do
    {
      objc_msgSend_canImprove(self, v7, v8, v9, v10);
      if ((__p[0] & 1) == 0 && (BYTE1(__p[0]) & 1) == 0)
      {
        break;
      }

      self->_index = 0;
      do
      {
        v16 = objc_msgSend_resize1(self, v12, v13, v14, v15);
        index = self->_index;
        *(&v86 + index++) = v16;
        self->_index = index;
      }

      while (index < 2);
      ++v11;
    }

    while (!objc_msgSend_allConverges(self, v12, v13, v14, v15));
  }

  if (byte_280A46430 == 1)
  {
    v18 = objc_opt_class();
    v84 = NSStringFromSelector(a2);
    v23 = objc_msgSend_allConverges(self, v19, v20, v21, v22);
    v24 = MEMORY[0x277CCACA8];
    var0 = self->_current.size.var0.var0;
    sub_276152FD4("vec2(%f, %f)", v25, v26, v27, v28, v29, v30, v31, SLOBYTE(var0));
    if (v88 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v24, v32, v33, v34, v35, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v24, v32, v33, v34, v35, __p[0]);
    }
    v83 = ;
    if (v88 < 0)
    {
      operator delete(__p[0]);
    }

    v43 = MEMORY[0x277CCACA8];
    v82 = self->_target.var0.var0;
    sub_276152FD4("vec2(%f, %f)", v36, v37, v38, v39, v40, v41, v42, SLOBYTE(v82));
    if (v88 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v43, v44, v45, v46, v47, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v43, v44, v45, v46, v47, __p[0]);
    }
    v55 = ;
    if (v88 < 0)
    {
      operator delete(__p[0]);
    }

    v56 = MEMORY[0x277CCACA8];
    if (v86)
    {
      v57 = "true";
    }

    else
    {
      v57 = "false";
    }

    sub_276152FD4("bvec2(%s, %s)", v48, v49, v50, v51, v52, v53, v54, v57);
    if (v88 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v56, v58, v59, v60, v61, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v56, v58, v59, v60, v61, __p[0]);
    }
    v63 = ;
    if (v88 < 0)
    {
      operator delete(__p[0]);
    }

    objc_msgSend_canImprove(self, v62, v64, v65, v66);
    v74 = MEMORY[0x277CCACA8];
    if (v85)
    {
      v75 = "true";
    }

    else
    {
      v75 = "false";
    }

    sub_276152FD4("bvec2(%s, %s)", v67, v68, v69, v70, v71, v72, v73, v75);
    if (v88 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v74, v76, v77, v78, v79, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v74, v76, v77, v78, v79, __p[0]);
    }
    v80 = ;
    if (v88 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PTotalLuRunsCo.isa, v18, self, v84, v11, v23, v83, v55, v63, v80);
  }
}

- (float)perspectiveness
{
  v2 = objc_opt_class();

  objc_msgSend_perspectiveness(v2, v3, v4, v5, v6);
  return result;
}

- (tvec2<int>)containingViewportFromSize:(void *)size
{
  v8 = v3;
  v9 = objc_msgSend_perspectiveness(self, a2, v4, v5, v6);
  v11 = *size;
  if (*size <= *(size + 1))
  {
    v11 = *(size + 1);
  }

  v12 = vcvtps_s32_f32(v10 * v11);
  *v8 = v12;
  v8[1] = v12;
  return v9;
}

- (void)setContainingViewport:(void *)viewport
{
  if (byte_280A46430 == 1)
  {
    v8 = objc_opt_class();
    v16 = NSStringFromSelector(a2);
    layout = self->_layout;
    if (layout)
    {
      objc_msgSend_containingViewport(layout, v9, v17, v18, v19);
      v21 = v41;
    }

    else
    {
      v21 = 0;
    }

    v22 = MEMORY[0x277CCACA8];
    sub_276152FD4("ivec2(%d, %d)", v9, v10, v11, v12, v13, v14, v15, v21);
    if (v43 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v22, v23, v24, v25, v26, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v22, v23, v24, v25, v26, __p[0]);
    }
    v34 = ;
    if (v43 < 0)
    {
      operator delete(__p[0]);
    }

    v35 = MEMORY[0x277CCACA8];
    sub_276152FD4("ivec2(%d, %d)", v27, v28, v29, v30, v31, v32, v33, *viewport);
    if (v43 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v35, v36, v37, v38, v39, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v35, v36, v37, v38, v39, __p[0]);
    }
    v40 = ;
    if (v43 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PCvChangedFrom.isa, v8, self, v16, v34, v40);
  }

  objc_msgSend_setContainingViewport_(self->_layout, a2, *viewport, v3, v4, __p);
}

- (void)initializeResizing:(void *)resizing
{
  self->_target.var0.var0 = *resizing;
  LODWORD(v3) = *(resizing + 1);
  self->_target.var1.var0 = *&v3;
  objc_msgSend_seedResizeCondition(self, a2, v3, v4, v5);
  objc_msgSend_resetInfoChartScale(self->_accessor, v7, v8, v9, v10);
  objc_msgSend_resetContainingViewport(self->_layout, v11, v12, v13, v14);
  objc_msgSend_updateResizeData(self, v15, v16, v17, v18);
  v19 = *&self->_current.scale.var2.var0;
  *&self->_previous.size.var0.var0 = *&self->_current.size.var0.var0;
  *&self->_previous.scale.var2.var0 = v19;
  *&self->_previous.steps.var1.var0 = *&self->_current.steps.var1.var0;
  self->_previous.chartOnlySize.var1.var0 = self->_current.chartOnlySize.var1.var0;
}

- (void)adjustContainingViewport
{
  objc_msgSend_containingViewportFromCurrentSize(self, a2, v2, v3, v4);
  layout = self->_layout;
  if (layout)
  {
    objc_msgSend_containingViewport(layout, v6, v7, v8, v9);
  }

  else
  {
    v24 = 0;
  }

  v11 = objc_msgSend_depthRatioDimension(self->_chartType, v6, v7, v8, v9);
  if (v25[v11] != v25[v11 - 2])
  {
    v16 = v11;
    objc_msgSend_setContainingViewport_(self, v12, v13, v14, v15, v25);
    v17 = v25[v16 - 2] / v25[v16];
    *&v18 = v17 * self->_current.scale.var2.var0;
    v19 = *&self->_current.scale.var0.var0;
    v22 = COERCE_DOUBLE(vmul_n_f32(*&v19, v17));
    v23 = LODWORD(v18);
    objc_msgSend_setScale_(self, v20, v22, v18, v19, &v22);
  }

  v21 = *&self->_current.scale.var2.var0;
  *&self->_previous.size.var0.var0 = *&self->_current.size.var0.var0;
  *&self->_previous.scale.var2.var0 = v21;
  *&self->_previous.steps.var1.var0 = *&self->_current.steps.var1.var0;
  self->_previous.chartOnlySize.var1.var0 = self->_current.chartOnlySize.var1.var0;
}

- (void)readjustContainingViewport
{
  objc_msgSend_seedResizeCondition(self, a2, v2, v3, v4);
  objc_msgSend_adjustContainingViewport(self, v6, v7, v8, v9);

  MEMORY[0x2821F9670](self, sel_loop, v10, v11, v12);
}

- (tvec2<float>)updateResizerFromRequestedSize:(void *)size startingSize:(void *)startingSize
{
  v6 = v4;
  v7 = objc_opt_class();
  v12 = objc_msgSend_minimumSize(v7, v8, v9, v10, v11);
  v14 = vdup_lane_s32(v13, 0);
  *v6 = vbsl_s8(vcgt_f32(*size, v14), *size, v14);
  return v12;
}

- (tvec2<float>)resize:(void *)resize startingSize:(void *)size
{
  v11 = v4;
  objc_msgSend_updateResizerFromRequestedSize_startingSize_(self, a2, v5, v6, v7, resize, size);
  if (byte_280A46430 == 1)
  {
    v16 = objc_opt_class();
    v17 = NSStringFromSelector(a2);
    v18 = MEMORY[0x277CCACA8];
    v179 = *resize;
    sub_276152FD4("vec2(%f, %f)", v19, v20, v21, v22, v23, v24, v25, SLOBYTE(v179));
    if (v187 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v18, v26, v27, v28, v29, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v18, v26, v27, v28, v29, __p[0]);
    }
    v37 = ;
    if (v187 < 0)
    {
      operator delete(__p[0]);
    }

    v38 = MEMORY[0x277CCACA8];
    v180 = *v11;
    sub_276152FD4("vec2(%f, %f)", v30, v31, v32, v33, v34, v35, v36, SLOBYTE(v180));
    if (v187 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v38, v39, v40, v41, v42, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v38, v39, v40, v41, v42, __p[0]);
    }
    v43 = ;
    if (v187 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PBeginResizing.isa, v16, self, v17, v37, v43);
  }

  v44 = objc_msgSend_scene(self->_layout, v12, v13, v14, v15);
  self->_scene = v44;

  v49 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v45, v46, v47, v48, self->_scene);
  objc_storeStrong(&self->_accessor, v49);
  objc_msgSend_initializeResizing_(self, v50, v51, v52, v53, v11);
  layout = self->_layout;
  if (layout)
  {
    objc_msgSend_containingViewport(layout, v54, v55, v56, v57);
  }

  else
  {
    v185 = 0;
  }

  objc_msgSend_readjustContainingViewport(self, v54, v55, v56, v57);
  var0 = self->_current.scale.var0.var0;
  v60 = *&self->_current.scale.var1.var0;
  objc_msgSend_readjustContainingViewport(self, v61, v62, v63, v64);
  v76 = objc_msgSend_depthRatioDimension(self->_chartType, v65, v66, v67, v68);
  v78 = 0;
  v79 = self->_current.scale.var0.var0 - var0;
  if (v79 < 0.0)
  {
    v79 = -v79;
  }

  v77.i32[0] = LODWORD(self->_precision);
  v80 = v79 <= *v77.i32;
  v81 = vsub_f32(*&self->_current.scale.var1.var0, v60);
  v82 = vcgez_f32(v81);
  v83 = vdup_lane_s32(v77, 0);
  v84 = COERCE_DOUBLE(vcge_f32(v83, vbsl_s8(v82, v81, vneg_f32(v81))));
  LOBYTE(__p[0]) = v80;
  BYTE1(__p[0]) = LOBYTE(v84) & 1;
  BYTE2(__p[0]) = BYTE4(v84) & 1;
  v85 = 1;
  do
  {
    while ((v85 & 1) == 0)
    {
      v85 = 0;
      if (++v78 == 3)
      {
        goto LABEL_25;
      }
    }

    v85 = *(__p + v78++);
  }

  while (v78 != 3);
  if (v85)
  {
LABEL_31:
    v97 = 0;
    goto LABEL_36;
  }

LABEL_25:
  objc_msgSend_containingViewportFromCurrentSize(self, v69, v84, *&v83, *&v82);
  v90 = *(__p + v76);
  v91 = self->_layout;
  if (v91)
  {
    objc_msgSend_containingViewport(v91, v86, v87, v88, v89);
  }

  else
  {
    v184 = 0;
  }

  v92 = *(&v184 + v76);
  objc_msgSend_containingViewportThreshold(self, v86, v87, v88, v89);
  v96 = v90 - v92;
  if (v90 - v92 < 0)
  {
    v96 = v92 - v90;
  }

  *&v94 = v96;
  if (*&v93 > v96)
  {
    goto LABEL_31;
  }

  v98 = self->_layout;
  if (v98)
  {
    objc_msgSend_containingViewport(v98, v69, v93, v94, v95);
    v97 = __p[0];
  }

  else
  {
    v97 = 0;
  }

  objc_msgSend_readjustContainingViewport(self, v69, v93, v94, v95);
LABEL_36:
  if (byte_280A46430 == 1)
  {
    v99 = MEMORY[0x277CCACA8];
    sub_276152FD4("ivec2(%d, %d)", v69, v70, v71, v72, v73, v74, v75, v185);
    if (v187 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v99, v100, v101, v102, v103, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v99, v100, v101, v102, v103, __p[0]);
    }
    v111 = ;
    if (v187 < 0)
    {
      operator delete(__p[0]);
    }

    v112 = MEMORY[0x277CCACA8];
    sub_276152FD4("ivec2(%d, %d)", v104, v105, v106, v107, v108, v109, v110, v97);
    if (v187 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v112, v113, v114, v115, v116, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v112, v113, v114, v115, v116, __p[0]);
    }
    v124 = ;
    if (v187 < 0)
    {
      operator delete(__p[0]);
    }

    v128 = self->_layout;
    if (v128)
    {
      objc_msgSend_containingViewport(v128, v117, v125, v126, v127);
      v129 = v184;
    }

    else
    {
      v129 = 0;
      v184 = 0;
    }

    v130 = MEMORY[0x277CCACA8];
    sub_276152FD4("ivec2(%d, %d)", v117, v118, v119, v120, v121, v122, v123, v129);
    if (v187 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v130, v131, v132, v133, v134, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v130, v131, v132, v133, v134, __p[0]);
    }
    v135 = ;
    if (v187 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_OlderOldCurren.isa, v111, v124, v135);

    if (byte_280A46430)
    {
      v136 = objc_opt_class();
      v137 = NSStringFromSelector(a2);
      v138 = MEMORY[0x277CCACA8];
      v181 = self->_current.size.var0.var0;
      sub_276152FD4("vec2(%f, %f)", v139, v140, v141, v142, v143, v144, v145, SLOBYTE(v181));
      if (v187 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v138, v146, v147, v148, v149, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v138, v146, v147, v148, v149, __p[0]);
      }
      v157 = ;
      if (v187 < 0)
      {
        operator delete(__p[0]);
      }

      v158 = MEMORY[0x277CCACA8];
      v182 = *resize;
      sub_276152FD4("vec2(%f, %f)", v150, v151, v152, v153, v154, v155, v156, SLOBYTE(v182));
      if (v187 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v158, v159, v160, v161, v162, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v158, v159, v160, v161, v162, __p[0]);
      }
      v170 = ;
      if (v187 < 0)
      {
        operator delete(__p[0]);
      }

      v171 = MEMORY[0x277CCACA8];
      v183 = *v11;
      sub_276152FD4("vec2(%f, %f)", v163, v164, v165, v166, v167, v168, v169, SLOBYTE(v183));
      if (v187 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v171, v172, v173, v174, v175, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v171, v172, v173, v174, v175, __p[0]);
      }
      v176 = ;
      if (v187 < 0)
      {
        operator delete(__p[0]);
      }

      NSLog(&cfstr_PEndResizingRe.isa, v136, self, v137, v157, v170, v176);
    }
  }

  accessor = self->_accessor;
  self->_accessor = 0;

  self->_scene = 0;
  return v178;
}

- (id).cxx_construct
{
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 3) = 0u;
  return self;
}

@end