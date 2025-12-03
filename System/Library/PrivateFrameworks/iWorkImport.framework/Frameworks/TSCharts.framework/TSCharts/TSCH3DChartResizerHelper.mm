@interface TSCH3DChartResizerHelper
+ (TSCH3DChartResizerHelper)helperWithInfo:(id)info;
+ (id)vectorForContainingViewport:(void *)viewport;
+ (tvec2<int>)containingViewportForVector:(id)vector;
- (TSCH3DChartResizerHelper)initWithInfo:(id)info;
- (TSCH3DVector)containingViewportVector;
- (id).cxx_construct;
- (id)boundsLayoutForScene:(id)scene mode:(int)mode;
- (id)boundsLayoutResizedForScene:(id)scene bounds:(void *)bounds resizeStartingSize:(void *)size mode:(int)mode returningResultSize:(void *)resultSize;
- (tvec2<float>)chartBodyLayoutOffsetInChartAreaLayoutSpaceUsingConverter:(const void *)converter;
- (tvec2<float>)chartBodySizeByResizingScene:(id)scene toLayoutSize:(void *)size resizeStartingSize:(void *)startingSize returningChartBodyLayoutOffsetInChartAreaLayoutSpace:(void *)space resultLayoutSize:(void *)layoutSize;
- (tvec2<float>)layoutSizeByResizingScene:(id)scene toChartBodyLayoutSize:(void *)size resizeStartingSize:(void *)startingSize returningChartBodyLayoutBoundsInChartAreaLayoutSpace:(void *)space;
- (void)initializeOriginalContainingViewport;
- (void)setLayoutSettings:(id *)settings;
@end

@implementation TSCH3DChartResizerHelper

+ (tvec2<int>)containingViewportForVector:(id)vector
{
  v4 = v3;
  vectorCopy = vector;
  v10 = vectorCopy;
  if (vectorCopy)
  {
    objc_msgSend_value4(vectorCopy, v6, v7, v8, v9);
    v11 = vcvt_s32_f32(v28);
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "+[TSCH3DChartResizerHelper containingViewportForVector:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 1260, 0, "invalid nil value for '%{public}s'", "vector");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    v11 = 0;
  }

  *v4 = v11;

  return v27;
}

+ (id)vectorForContainingViewport:(void *)viewport
{
  *&v3 = *viewport;
  *&v4 = *(viewport + 1);
  return objc_msgSend_x_y_z_w_(TSCH3DVector, a2, 0.0, 0.0, v3, v4);
}

+ (TSCH3DChartResizerHelper)helperWithInfo:(id)info
{
  infoCopy = info;
  v5 = [self alloc];
  v10 = objc_msgSend_initWithInfo_(v5, v6, v7, v8, v9, infoCopy);

  return v10;
}

- (TSCH3DChartResizerHelper)initWithInfo:(id)info
{
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = TSCH3DChartResizerHelper;
  v6 = [(TSCH3DChartResizerHelper *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_chartInfo, info);
    objc_msgSend_initializeOriginalContainingViewport(v7, v8, v9, v10, v11);
    v7->_containingViewport = v7->_originalContainingViewport;
    sub_27635FB94(&v13);
    *&v7->_layoutSettings.forceOmitLegend = v13;
    v7->_layoutSettings.max3DLimitingSeries = v14;
  }

  return v7;
}

- (void)initializeOriginalContainingViewport
{
  if (self->_originalContainingViewport)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartResizerHelper initializeOriginalContainingViewport]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 1288, 0, "_originalContainingViewport is initialized already");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v21 = objc_msgSend_objectValueForProperty_(self->_chartInfo, a2, v2, v3, v4, 1074);
  if (v21)
  {
    v22 = objc_opt_class();
    if (v22)
    {
      objc_msgSend_containingViewportForVector_(v22, v23, v24, v25, v26, v21);
      var0 = v30;
      v28 = v31;
    }

    else
    {
      v28 = 0;
      var0 = 0;
    }

    self->_originalContainingViewport.var0.var0 = var0;
    self->_originalContainingViewport.var1.var0 = v28;
  }

  else
  {
    var0 = self->_originalContainingViewport.var0.var0;
    v28 = self->_originalContainingViewport.var1.var0;
  }

  if (var0 < 1 || v28 <= 0)
  {
    self->_originalContainingViewport = vdup_n_s32(0x320u);
  }
}

- (TSCH3DVector)containingViewportVector
{
  v3 = objc_opt_class();
  objc_msgSend_containingViewport(self, v4, v5, v6, v7);
  v12 = objc_msgSend_vectorForContainingViewport_(v3, v8, v9, v10, v11, v14);

  return v12;
}

- (id)boundsLayoutForScene:(id)scene mode:(int)mode
{
  v4 = *&mode;
  sceneCopy = scene;
  if (!sceneCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DChartResizerHelper boundsLayoutForScene:mode:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 1305, 0, "invalid nil value for '%{public}s'", "scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_scene(self->_boundsLayout, v6, v8, v9, v10);
  v31 = v26;
  if (v26 != sceneCopy)
  {

LABEL_9:
    v38 = [TSCH3DChartBoundsLayout alloc];
    v43 = objc_msgSend_initWithScene_containingViewport_originalContainingViewport_layoutSettings_(v38, v39, v40, v41, v42, sceneCopy, &self->_containingViewport, &self->_originalContainingViewport, &self->_layoutSettings);
    boundsLayout = self->_boundsLayout;
    self->_boundsLayout = v43;

    if (self->_layoutSettings.enable3DTightBounds)
    {
      v49 = objc_opt_class();
      objc_msgSend_setGetBoundsClass_(self->_boundsLayout, v50, v51, v52, v53, v49);
    }

    else
    {
      v58 = objc_msgSend_main(sceneCopy, v45, v46, v47, v48);
      Bounds3DClass = objc_msgSend_getBounds3DClass(v58, v59, v60, v61, v62);
      objc_msgSend_setGetBoundsClass_(self->_boundsLayout, v64, v65, v66, v67, Bounds3DClass);
    }

    if (!objc_msgSend_getBoundsClass(self->_boundsLayout, v54, v55, v56, v57))
    {
      v68 = MEMORY[0x277D81150];
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "[TSCH3DChartResizerHelper boundsLayoutForScene:mode:]");
      v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v75, v76, v77, v78, v69, v74, 1317, 0, "invalid nil value for '%{public}s'", "_boundsLayout.getBoundsClass");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
    }

    goto LABEL_14;
  }

  v32 = self->_boundsLayout;
  if (v32)
  {
    objc_msgSend_layoutSettings(v32, v27, v28, v29, v30);
  }

  else
  {
    v88 = 0uLL;
    v89 = 0;
  }

  v86 = *&self->_layoutSettings.forceOmitLegend;
  max3DLimitingSeries = self->_layoutSettings.max3DLimitingSeries;
  v33 = sub_27620A520(&v88, &v86);

  if (!v33)
  {
    goto LABEL_9;
  }

LABEL_14:
  objc_msgSend_setMode_(self->_boundsLayout, v34, v35, v36, v37, v4);
  v83 = self->_boundsLayout;
  v84 = v83;

  return v83;
}

- (id)boundsLayoutResizedForScene:(id)scene bounds:(void *)bounds resizeStartingSize:(void *)size mode:(int)mode returningResultSize:(void *)resultSize
{
  v8 = *&mode;
  sceneCopy = scene;
  v170 = sceneCopy;
  if ((v8 & 2) != 0)
  {
    objc_msgSend_setLabelWrapBounds_forScene_(TSCH3DChartTitleSceneObject, v12, v14, v15, v16, bounds, sceneCopy);
  }

  v17 = objc_msgSend_boundsLayoutForScene_mode_(self, v12, v14, v15, v16, sceneCopy, v8);
  *__p = *bounds;
  objc_msgSend_setLayoutInPage_(v17, v18, *__p, v19, v20, __p);
  *__p = *bounds;
  objc_msgSend_setBodyLayoutInPage_(v17, v21, *__p, v22, v23, __p);
  v169 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v24, v25, v26, v27, sceneCopy);
  if (byte_280A46430 == 1)
  {
    v32 = objc_msgSend_projectedBounds(v17, v28, v29, v30, v31);
    v47 = sub_2762032CC(v32, v33, v34, v35, v36, v37, v38, v39);
    if (v169)
    {
      objc_msgSend_infoChartScale(v169, v40, v48, v49, v50);
      v51 = v172;
      v52 = *&v173;
      v53 = *(&v173 + 1);
    }

    else
    {
      v172 = 0.0;
      v173 = 0;
      v53 = 0.0;
      v52 = 0.0;
      LOBYTE(v51) = 0;
    }

    v54 = MEMORY[0x277CCACA8];
    v164 = v52;
    v166 = v53;
    sub_276152FD4("vec4(%f, %f, %f, %f)", v40, v41, v42, v43, v44, v45, v46, SLOBYTE(v51));
    if (v175 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v54, v55, v56, v57, v58, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v54, v55, v56, v57, v58, __p[0]);
    }
    v59 = ;
    sceneCopy = v170;
    if (v175 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PreResizeScale.isa, v47, v59, *&v164, *&v166);
  }

  v60 = objc_msgSend_main(sceneCopy, v28, v29, v30, v31);
  v65 = objc_msgSend_resizer3DClass(v60, v61, v62, v63, v64);

  if (!v65)
  {
    v70 = MEMORY[0x277D81150];
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, v67, v68, v69, "[TSCH3DChartResizerHelper boundsLayoutResizedForScene:bounds:resizeStartingSize:mode:returningResultSize:]");
    v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, v73, v74, v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v77, v78, v79, v80, v71, v76, 1341, 0, "invalid nil value for '%{public}s'", "resizerClass");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
  }

  objc_opt_class();
  v89 = objc_msgSend_chartType(self->_chartInfo, v85, v86, v87, v88);
  v90 = TSUDynamicCast();
  v95 = objc_msgSend_resizerWithLayout_chartType_(v65, v91, v92, v93, v94, v17, v90);

  v98 = *bounds;
  v99 = vsub_f32(*(bounds + 8), *bounds);
  __p[0] = v99;
  if (v95)
  {
    v100 = v169;
    v101 = v170;
    objc_msgSend_resize_startingSize_(v95, v96, *&v99, v98, v97, __p, size);
    if (!resultSize)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v171 = 0;
  v100 = v169;
  v101 = v170;
  if (resultSize)
  {
LABEL_17:
    v99 = v171;
    *resultSize = v171;
  }

LABEL_18:
  if (byte_280A46430 != 1)
  {
    goto LABEL_35;
  }

  v102 = objc_opt_class();
  v103 = NSStringFromSelector(a2);
  v104 = MEMORY[0x277CCACA8];
  sub_276152FD4("ivec2(%d, %d)", v105, v106, v107, v108, v109, v110, v111, self->_containingViewport.var0.var0);
  if (v175 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v104, v112, v113, v114, v115, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v104, v112, v113, v114, v115, __p[0]);
  }
  v123 = ;
  if (v175 < 0)
  {
    operator delete(__p[0]);
    if (v17)
    {
      goto LABEL_24;
    }

LABEL_28:
    v127 = 0;
    v172 = 0.0;
    goto LABEL_29;
  }

  if (!v17)
  {
    goto LABEL_28;
  }

LABEL_24:
  objc_msgSend_containingViewport(v17, v116, v124, v125, v126);
  v127 = LOBYTE(v172);
LABEL_29:
  v128 = MEMORY[0x277CCACA8];
  sub_276152FD4("ivec2(%d, %d)", v116, v117, v118, v119, v120, v121, v122, v127);
  if (v175 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v128, v129, v130, v131, v132, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v128, v129, v130, v131, v132, __p[0]);
  }
  v133 = ;
  v101 = v170;
  if (v175 < 0)
  {
    operator delete(__p[0]);
  }

  NSLog(&cfstr_PUpdatingCvFro.isa, v102, self, v103, v123, v133);

  v100 = v169;
LABEL_35:
  if (v17)
  {
    objc_msgSend_containingViewport(v17, v96, *&v99, v98, v97);
    v134 = __p[0];
  }

  else
  {
    v134 = 0;
  }

  self->_containingViewport = v134;
  if (byte_280A46430 == 1)
  {
    v135 = objc_msgSend_projectedBounds(v17, v96, *&v134, v98, v97);
    v150 = sub_2762032CC(v135, v136, v137, v138, v139, v140, v141, v142);
    if (v100)
    {
      objc_msgSend_infoChartScale(v100, v143, v151, v152, v153);
      v154 = v172;
      v155 = *&v173;
      v156 = *(&v173 + 1);
    }

    else
    {
      v156 = 0.0;
      v155 = 0.0;
      LOBYTE(v154) = 0;
    }

    v157 = MEMORY[0x277CCACA8];
    v165 = v155;
    v167 = v156;
    sub_276152FD4("vec4(%f, %f, %f, %f)", v143, v144, v145, v146, v147, v148, v149, SLOBYTE(v154));
    if (v175 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v157, v158, v159, v160, v161, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v157, v158, v159, v160, v161, __p[0]);
    }
    v162 = ;
    v101 = v170;
    if (v175 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PostResizeScal.isa, v150, v162, *&v165, *&v167);
  }

  return v17;
}

- (tvec2<float>)chartBodyLayoutOffsetInChartAreaLayoutSpaceUsingConverter:(const void *)converter
{
  v5 = v3;
  v21 = xmmword_2764D5ED0;
  sub_2761526F4(&v21, (*converter + 16), &v22);
  v6 = *converter;
  v7 = *(converter + 2);
  v8 = *(converter + 12);
  v16 = v22;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = *(converter + 2);
  sub_2761526F4(&v16, v6 + 14, &v22);
  v9 = v18 * v22.f32[0];
  v10 = v18 * v22.f32[3];
  v21 = xmmword_2764D5ED0;
  sub_2761526F4(&v21, (*converter + 80), &v22);
  v11 = *converter;
  v12 = *(converter + 2);
  v13 = *(converter + 12);
  v16 = v22;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = *(converter + 2);
  sub_2761526F4(&v16, v11 + 14, &v22);
  v15 = v10 - (v18 * v22.f32[3]);
  *v5 = (v18 * v22.f32[0]) - v9;
  v5[1] = v15;
  return v14;
}

- (tvec2<float>)chartBodySizeByResizingScene:(id)scene toLayoutSize:(void *)size resizeStartingSize:(void *)startingSize returningChartBodyLayoutOffsetInChartAreaLayoutSpace:(void *)space resultLayoutSize:(void *)layoutSize
{
  v13 = v7;
  sceneCopy = scene;
  v29.i64[0] = 0;
  v29.i64[1] = *size;
  v18 = objc_msgSend_boundsLayoutResizedForScene_bounds_resizeStartingSize_mode_returningResultSize_(self, v15, *&v29.i64[1], v16, v17, sceneCopy, &v29, startingSize, 1, layoutSize);
  v24 = objc_msgSend_projectedBounds(v18, v19, v20, v21, v22);
  v34 = v24;
  v35 = 1.0;
  v36 = 0;
  v37 = 0;
  if (space)
  {
    objc_msgSend_chartBodyLayoutOffsetInChartAreaLayoutSpaceUsingConverter_(self, v23, v25, v26, v27, &v34);
    *space = v29.i64[0];
    v24 = v34;
  }

  v38 = xmmword_2764D5ED0;
  sub_2761526F4(&v38, v24 + 10, &v39);
  v29 = v39;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  v33 = v37;
  sub_2761526F4(&v29, v34 + 14, &v39);
  *v13 = vsub_f32(vmul_n_f32(*&v39.u32[2], v31), vmul_n_f32(*v39.f32, v31));

  return v28;
}

- (tvec2<float>)layoutSizeByResizingScene:(id)scene toChartBodyLayoutSize:(void *)size resizeStartingSize:(void *)startingSize returningChartBodyLayoutBoundsInChartAreaLayoutSpace:(void *)space
{
  v11 = v6;
  sceneCopy = scene;
  v39 = 0;
  v13 = *size;
  v30.i64[0] = 0;
  *&v30.i64[1] = v13;
  v16 = objc_msgSend_boundsLayoutResizedForScene_bounds_resizeStartingSize_mode_returningResultSize_(self, v14, 0.0, v13, v15, sceneCopy, &v30, startingSize, 2, &v39);
  v22 = objc_msgSend_projectedBounds(v16, v17, v18, v19, v20);
  v35 = v22;
  v36 = 1.0;
  v37 = 0;
  v38 = 0;
  if (space)
  {
    objc_msgSend_chartBodyLayoutOffsetInChartAreaLayoutSpaceUsingConverter_(self, v21, v23, v24, v25, &v35);
    if (*&v39 < 0.0 || *(&v39 + 1) < 0.0)
    {
      v26.i64[0] = v30.i64[0];
      v26.i64[1] = v30.i64[0];
    }

    else
    {
      v27.i64[0] = v30.i64[0];
      v27.i64[1] = v30.i64[0];
      v28.i64[0] = 0;
      v28.i64[1] = v39;
      v26 = vaddq_f32(v28, v27);
    }

    *space = v26;
    v22 = v35;
  }

  v40 = xmmword_2764D5ED0;
  sub_2761526F4(&v40, v22 + 2, &v41);
  v30 = v41;
  v31 = v35;
  v32 = v36;
  v33 = v37;
  v34 = v38;
  sub_2761526F4(&v30, v35 + 14, &v41);
  *v11 = vsub_f32(vmul_n_f32(*&v41.u32[2], v32), vmul_n_f32(*v41.f32, v32));

  return v29;
}

- (void)setLayoutSettings:(id *)settings
{
  v3 = *&settings->var0;
  self->_layoutSettings.max3DLimitingSeries = settings->var9;
  *&self->_layoutSettings.forceOmitLegend = v3;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end