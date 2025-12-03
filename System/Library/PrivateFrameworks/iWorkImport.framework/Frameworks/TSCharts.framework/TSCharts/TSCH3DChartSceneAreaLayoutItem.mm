@interface TSCH3DChartSceneAreaLayoutItem
+ (id)debug_worldBoundsDescriptionForScene:(id)scene;
- (BOOL)p_inwardLayoutCanUseCacheItem:(id)item;
- (BOOL)p_outwardLayoutCanUseCacheItem:(id)item;
- (BOOL)p_validCacheItem:(id)item inward:(BOOL)inward;
- (CGRect)calcDrawingRect;
- (CGRect)chartBodyLayoutRect;
- (CGRect)p_frameForSelectionPath:(id)path sceneObjectClass:(Class)class;
- (CGRect)titleFrame;
- (TSCH3DChartSceneAreaLayoutItem)initWithParent:(id)parent;
- (TSCH3DScene)scene;
- (TSCH3DVector)containingViewportVector;
- (const)projectedBounds;
- (const)projectedBoundsWithScene:(id)scene forcesAccurateBounds:(BOOL)bounds allowsEmptyBodyLayoutBounds:(BOOL)layoutBounds;
- (id).cxx_construct;
- (id)boundsLayout;
- (id)boundsLayout:(CGRect)layout scene:(id)scene forcesAccurateBounds:(BOOL)bounds allowsEmptyBodyLayoutBounds:(BOOL)layoutBounds;
- (id)debug_rotationBounds;
- (id)p_cache;
- (id)p_cacheInwardLayout;
- (id)p_cacheOutwardLayout;
- (id)p_updatedResizerHelperForcingAccurateBounds:(BOOL)bounds;
- (tvec2<int>)containingViewport;
- (tvec2<int>)p_currentModelSize;
- (void)clearAll;
- (void)clearScene;
- (void)invalidateBounds;
- (void)invalidateLabelsBoundsForSceneObjectClass:(Class)class boundsIndex:(int64_t)index;
- (void)layoutInward;
- (void)layoutOutward;
- (void)p_updateBodyLayoutRect;
- (void)p_updateFromCacheItem:(id)item;
- (void)p_updateLayoutSize:(CGSize)size chartBodyLayoutOffsetInChartAreaLayoutSpace:(void *)space;
- (void)p_validate;
- (void)setLayoutOffset:(CGPoint)offset;
- (void)setStabilizedChartBodyLayoutRectUsingConverter:(const void *)converter;
@end

@implementation TSCH3DChartSceneAreaLayoutItem

+ (id)debug_worldBoundsDescriptionForScene:(id)scene
{
  v158 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v134 = objc_msgSend_string(MEMORY[0x277CCAB68], v3, v4, v5, v6);
  objc_msgSend_appendString_(v134, v7, v8, v9, v10, @"\n");
  v131 = objc_msgSend_debugObjects(sceneCopy, v11, v12, v13, v14);
  v19 = objc_msgSend_camera(sceneCopy, v15, v16, v17, v18);
  v24 = v19;
  if (v19)
  {
    objc_msgSend_modelViewNormalizedProjection(v19, v20, v21, v22, v23);
  }

  else
  {
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
  }

  v29 = objc_msgSend_camera(sceneCopy, v25, v26, v27, v28);
  v135 = objc_msgSend_copy(v29, v30, v31, v32, v33);

  *v141 = 1065353216;
  *&v141[4] = 0uLL;
  *&v141[20] = 1065353216;
  v142 = 0uLL;
  *v143 = 1065353216;
  *&v143[4] = 0uLL;
  *&v143[20] = 1065353216;
  objc_msgSend_setTransform_(v135, v34, v35, v36, v37, v141);
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  obj = v131;
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, v39, v40, v41, &v145, v157, 16);
  if (v43)
  {
    v133 = *v146;
    __asm { FMOV            V0.4S, #1.0 }

    v137 = _Q0;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v146 != v133)
        {
          objc_enumerationMutation(obj);
        }

        v52 = *(*(&v145 + 1) + 8 * i);
        v53 = objc_msgSend_clone(sceneCopy, v42, *&_Q0, v44, v45);
        objc_msgSend_setCamera_(v53, v54, v55, v56, v57, v135);
        objc_msgSend_resetObjects(v53, v58, v59, v60, v61);
        objc_msgSend_addObject_(v53, v62, v63, v64, v65, v52);
        v70 = objc_msgSend_pipelineWithScene_(TSCH3DGetBoundsPipeline, v66, v67, v68, v69, v53);
        objc_msgSend_run(v70, v71, v72, v73, v74);
        *v141 = xmmword_2764D5F00;
        *&v141[16] = 0x80000000800000;
        v142 = v149;
        *v143 = v150;
        *&v143[16] = v151;
        v144 = v152;
        v77 = objc_msgSend_bounds(v70, v75, *&v151, *&v152, v76);
        v78 = 0;
        v155 = *v77;
        v156 = *(v77 + 16);
        do
        {
          v79 = 0;
          *__p = v137;
          do
          {
            *(__p + v79) = *((&v155 | (4 * ((v78 >> v79) & 1)) & 0xFFFFFFFFFFFFFFF7 | (8 * ((v78 >> v79) & 1))) + 4 * v79);
            ++v79;
          }

          while (v79 != 3);
          v138 = *__p;
          sub_276166708(v141, &v138, &v140);
          ++v78;
        }

        while (v78 != 8);
        if (!v70)
        {
          v84 = MEMORY[0x277D81150];
          v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, v81, v82, v83, "+[TSCH3DChartSceneAreaLayoutItem debug_worldBoundsDescriptionForScene:]");
          v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, v87, v88, v89, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v91, v92, v93, v94, v85, v90, 164, 0, "invalid nil value for '%{public}s'", "pipeline");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v95, v96, v97, v98);
        }

        v99 = objc_opt_class();
        v104 = objc_msgSend_bounds(v70, v100, v101, v102, v103);
        v112 = sub_276165634(v104, v105, v106, v107, v108, v109, v110, v111);
        v138 = *v141;
        v139 = *&v141[16];
        v113 = MEMORY[0x277CCACA8];
        sub_276166580(&v138, v114, v115, v116, v117, v118, v119, v120);
        if (v154 >= 0)
        {
          objc_msgSend_stringWithUTF8String_(v113, v121, v122, v123, v124, __p);
        }

        else
        {
          objc_msgSend_stringWithUTF8String_(v113, v121, v122, v123, v124, __p[0]);
        }
        v126 = ;
        if (v154 < 0)
        {
          operator delete(__p[0]);
        }

        objc_msgSend_appendFormat_(v134, v125, v127, v128, v129, @"%@: %@ projected %@\n", v99, v112, v126);
      }

      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v42, *&_Q0, v44, v45, &v145, v157, 16);
    }

    while (v43);
  }

  return v134;
}

- (TSCH3DChartSceneAreaLayoutItem)initWithParent:(id)parent
{
  parentCopy = parent;
  v23.receiver = self;
  v23.super_class = TSCH3DChartSceneAreaLayoutItem;
  v6 = [(TSCHChartLayoutItem *)&v23 initWithParent:parentCopy];
  v7 = v6;
  if (v6)
  {
    if (byte_280A46430 == 1)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromSelector(a2);
      NSLog(&cfstr_PParent.isa, v8, v6, v9, parentCopy);
    }

    v6->_chartBodyLayoutRect.origin = 0u;
    v6->_chartBodyLayoutRect.size = 0u;
    v10 = [TSCH3DChartResizerHelper alloc];
    v15 = objc_msgSend_chartInfo(v7, v11, v12, v13, v14);
    v20 = objc_msgSend_initWithInfo_(v10, v16, v17, v18, v19, v15);
    resizerHelper = v7->_resizerHelper;
    v7->_resizerHelper = v20;
  }

  return v7;
}

- (void)p_validate
{
  if (self->_isInvalidated)
  {
    if (self->_scene)
    {
      v6 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, a2, v2, v3, v4);
      initialInfoChartScale = self->_initialInfoChartScale;
      objc_msgSend_setInfoChartScale_(v6, v7, *&initialInfoChartScale.var0.var0, v8, v9, &initialInfoChartScale);
    }

    v10 = [TSCH3DChartResizerHelper alloc];
    v15 = objc_msgSend_chartInfo(self, v11, v12, v13, v14);
    v20 = objc_msgSend_initWithInfo_(v10, v16, v17, v18, v19, v15);
    resizerHelper = self->_resizerHelper;
    self->_resizerHelper = v20;
  }

  self->_isInvalidated = 0;
}

- (TSCH3DScene)scene
{
  objc_msgSend_p_validate(self, a2, v2, v3, v4);
  scene = self->_scene;
  if (!scene && ((objc_msgSend_chartInfo(self, v6, v7, v8, v9), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_layoutSettings(self, v12, v13, v14, v15), objc_msgSend_styleProvidingSource(self, v16, v17, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend_create3DSceneWithLayoutSettings_styleProvidingSource_(v11, v21, v22, v23, v24, &v54, v20), v25 = objc_claimAutoreleasedReturnValue(), v26 = self->_scene, self->_scene = v25, v26, v20, v11, objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v27, v28, v29, v30, self->_scene), v31 = objc_claimAutoreleasedReturnValue(), (v36 = v31) == 0) ? (v37 = 0) : (objc_msgSend_infoChartScale(v31, v32, v33, v34, v35), v37 = v54), self->_initialInfoChartScale = v37, v36, (scene = self->_scene) == 0) || self->_isInvalidated)
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DChartSceneAreaLayoutItem scene]");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 199, 0, "invalid scene %@ invalidate %lu", self->_scene, self->_isInvalidated);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
    scene = self->_scene;
  }

  return scene;
}

- (void)clearScene
{
  scene = self->_scene;
  self->_scene = 0;
}

- (void)clearAll
{
  if (!self->_isInvariant)
  {
    self->_isInvalidated = 1;
  }

  v2.receiver = self;
  v2.super_class = TSCH3DChartSceneAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v2 clearAll];
}

- (tvec2<int>)containingViewport
{
  v6 = v2;
  v7 = objc_msgSend_p_updatedResizerHelper(self, a2, v3, v4, v5);
  v28 = v7;
  if (v7)
  {
    objc_msgSend_containingViewport(v7, v8, v9, v10, v11);
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DChartSceneAreaLayoutItem containingViewport]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 235, 0, "invalid nil value for '%{public}s'", "resizerHelper");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    *v6 = 0;
  }

  return v27;
}

- (TSCH3DVector)containingViewportVector
{
  v6 = objc_msgSend_p_updatedResizerHelper(self, a2, v2, v3, v4);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DChartSceneAreaLayoutItem containingViewportVector]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 241, 0, "invalid nil value for '%{public}s'", "resizerHelper");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_containingViewportVector(v6, v5, v7, v8, v9);

  return v25;
}

- (id)p_updatedResizerHelperForcingAccurateBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  objc_msgSend_p_validate(self, a2, v3, v4, v5);
  if (!self->_resizerHelper || self->_isInvalidated)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DChartSceneAreaLayoutItem p_updatedResizerHelperForcingAccurateBounds:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 251, 0, "invalidate resizer helper %@ invalidated %lu", self->_resizerHelper, self->_isInvalidated);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v34 = 0uLL;
  v35 = 0;
  objc_msgSend_layoutSettings(self, v8, v9, v10, v11);
  if (boundsCopy)
  {
    BYTE6(v34) = 1;
  }

  v32 = v34;
  v33 = v35;
  objc_msgSend_setLayoutSettings_(self->_resizerHelper, v27, *&v34, v28, v29, &v32);
  v30 = self->_resizerHelper;

  return v30;
}

- (id)boundsLayout:(CGRect)layout scene:(id)scene forcesAccurateBounds:(BOOL)bounds allowsEmptyBodyLayoutBounds:(BOOL)layoutBounds
{
  boundsCopy = bounds;
  height = layout.size.height;
  width = layout.size.width;
  y = layout.origin.y;
  x = layout.origin.x;
  sceneCopy = scene;
  p_chartBodyLayoutRect = &self->_chartBodyLayoutRect;
  MinX = CGRectGetMinX(self->_chartBodyLayoutRect);
  MinY = CGRectGetMinY(self->_chartBodyLayoutRect);
  MaxX = CGRectGetMaxX(self->_chartBodyLayoutRect);
  MaxY = CGRectGetMaxY(self->_chartBodyLayoutRect);
  *&v19 = MinX;
  *&v20 = MinY;
  *&v21 = MaxX;
  *&MaxY = MaxY;
  v90.i64[0] = __PAIR64__(LODWORD(v20), LODWORD(v19));
  v90.i64[1] = __PAIR64__(LODWORD(MaxY), v21);
  objc_msgSend_setLabelWrapBounds_forScene_(TSCH3DChartTitleSceneObject, v22, MaxY, v19, v20, &v90, sceneCopy);
  v27 = objc_msgSend_p_updatedResizerHelperForcingAccurateBounds_(self, v23, v24, v25, v26, boundsCopy);
  v32 = objc_msgSend_boundsLayoutForScene_mode_(v27, v28, v29, v30, v31, sceneCopy, 0);
  v94.origin.x = x;
  v94.origin.y = y;
  v94.size.width = width;
  v94.size.height = height;
  v33 = CGRectGetMinX(v94);
  v95.origin.x = x;
  v95.origin.y = y;
  v95.size.width = width;
  v95.size.height = height;
  v34 = CGRectGetMinY(v95);
  v96.origin.x = x;
  v96.origin.y = y;
  v96.size.width = width;
  v96.size.height = height;
  v35 = CGRectGetMaxX(v96);
  v97.origin.x = x;
  v97.origin.y = y;
  v97.size.width = width;
  v97.size.height = height;
  v36 = CGRectGetMaxY(v97);
  *&v37 = v33;
  *&v38 = v34;
  *&v39 = v35;
  v85.i64[0] = __PAIR64__(LODWORD(v38), LODWORD(v37));
  *&v36 = v36;
  v85.i64[1] = __PAIR64__(LODWORD(v36), v39);
  objc_msgSend_setLayoutInPage_(v32, v40, v36, v37, v38, &v85);
  v41 = CGRectGetMinX(*p_chartBodyLayoutRect);
  v42 = CGRectGetMinY(*p_chartBodyLayoutRect);
  v43 = CGRectGetMaxX(*p_chartBodyLayoutRect);
  v44 = CGRectGetMaxY(*p_chartBodyLayoutRect);
  *&v45 = v41;
  *&v46 = v42;
  *&v47 = v43;
  v85.i64[0] = __PAIR64__(LODWORD(v46), LODWORD(v45));
  *&v44 = v44;
  v85.i64[1] = __PAIR64__(LODWORD(v44), v47);
  objc_msgSend_setBodyLayoutInPage_(v32, v48, v44, v45, v46, &v85);
  v53 = objc_msgSend_projectedBounds(v32, v49, v50, v51, v52);
  v55 = v53 + 10;
  LODWORD(v56) = v53[10].i32[0];
  LODWORD(v57) = v53[10].i32[1];
  LODWORD(v58) = v53[11].i32[0];
  LODWORD(v59) = v53[11].i32[1];
  if (*&v58 < *&v56 || *&v59 < *&v57)
  {
    if (!layoutBounds)
    {
      v61 = MEMORY[0x277D81150];
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v56, v57, v58, "[TSCH3DChartSceneAreaLayoutItem boundsLayout:scene:forcesAccurateBounds:allowsEmptyBodyLayoutBounds:]", v59);
      v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
      v75 = sub_2762032CC(v53, v68, v69, v70, v71, v72, v73, v74);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v76, v77, v78, v79, v62, v67, 277, 0, "convert does not have valid body layout bounds %@", v75);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81, v82, v83);
    }
  }

  else
  {
    v91 = xmmword_2764D5ED0;
    sub_2761526F4(&v91, v55, &v92);
    v85 = v92;
    v86 = v53;
    v87 = 1.0;
    v88 = 0;
    v89 = 0;
    sub_2761526F4(&v85, v53 + 14, &v92);
    v60 = vsub_f32(vmul_n_f32(*&v92.u32[2], v87), vmul_n_f32(*v92.f32, v87));
    v57 = *v90.i64;
    LODWORD(v59) = v90.i32[2];
    v58 = COERCE_DOUBLE(__PAIR64__(v92.u32[3], v90.u32[1]));
    LODWORD(v54) = v90.i32[3];
    if (v90.f32[2] < v90.f32[0] || v90.f32[3] < v90.f32[1])
    {
      v57 = 0.0;
      v90.i64[0] = 0;
    }

    *&v90.u32[2] = vadd_f32(v60, *&v57);
  }

  v85 = v90;
  objc_msgSend_setBodyLayoutInPage_(v32, v55, *v90.i64, v57, v58, &v85, v59, v54);

  return v32;
}

- (id)boundsLayout
{
  objc_msgSend_layoutRect(self, a2, v2, v3, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = objc_msgSend_scene(self, v14, v6, v8, v10);
  v17 = objc_msgSend_boundsLayout_scene_forcesAccurateBounds_allowsEmptyBodyLayoutBounds_(self, v16, v7, v9, v11, v15, 0, 0, v13);

  return v17;
}

- (const)projectedBounds
{
  v5 = objc_msgSend_boundsLayout(self, a2, v2, v3, v4);
  v10 = objc_msgSend_projectedBounds(v5, v6, v7, v8, v9);

  return v10;
}

- (const)projectedBoundsWithScene:(id)scene forcesAccurateBounds:(BOOL)bounds allowsEmptyBodyLayoutBounds:(BOOL)layoutBounds
{
  layoutBoundsCopy = layoutBounds;
  boundsCopy = bounds;
  sceneCopy = scene;
  objc_msgSend_layoutRect(self, v9, v10, v11, v12);
  v17 = objc_msgSend_boundsLayout_scene_forcesAccurateBounds_allowsEmptyBodyLayoutBounds_(self, v13, v14, v15, v16, sceneCopy, boundsCopy, layoutBoundsCopy);
  v22 = objc_msgSend_projectedBounds(v17, v18, v19, v20, v21);

  return v22;
}

- (void)invalidateBounds
{
  v9 = objc_msgSend_p_updatedResizerHelper(self, a2, v2, v3, v4);
  objc_msgSend_invalidateBounds(v9, v5, v6, v7, v8);
}

- (void)invalidateLabelsBoundsForSceneObjectClass:(Class)class boundsIndex:(int64_t)index
{
  v13 = objc_msgSend_p_updatedResizerHelper(self, a2, v4, v5, v6);
  objc_msgSend_invalidateLabelsBoundsForSceneObjectClass_boundsIndex_(v13, v9, v10, v11, v12, class, index);
}

- (id)debug_rotationBounds
{
  v6 = objc_msgSend_projectedBounds(self, a2, v2, v3, v4);
  v69 = xmmword_2764D5ED0;
  sub_2761526F4(&v69, v6 + 2, &v70);
  *__p = v70;
  v65 = v6;
  v66 = 1065353216;
  v67 = 0;
  v68 = 0;
  sub_2761526F4(__p, v6 + 14, &v70);
  v7 = v70.f32[2] - v70.f32[0];
  v69 = xmmword_2764D5ED0;
  sub_2761526F4(&v69, v6 + 2, &v70);
  *__p = v70;
  v65 = v6;
  v66 = 1065353216;
  v67 = 0;
  v68 = 0;
  v11 = sub_27620E300(v6, __p, &v70, *v70.i64, v8, v9, v10);
  sub_27615294C(&v70, &v6[8], &v69, v11, v12, v13, v14);
  v15 = *(&v69 + 1);
  v16 = v69;
  v17 = MEMORY[0x277CCACA8];
  v62 = v7;
  sub_276152FD4("vec2(%f, %f)", v18, v19, v20, v21, v22, v23, v24, SLOBYTE(v62));
  if (SHIBYTE(v65) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v17, v25, v26, v27, v28, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v17, v25, v26, v27, v28, __p[0]);
  }
  v36 = ;
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
  }

  v37 = MEMORY[0x277CCACA8];
  v63 = (*&v15 - *&v16);
  sub_276152FD4("vec2(%f, %f)", v29, v30, v31, v32, v33, v34, v35, SLOBYTE(v63));
  if (SHIBYTE(v65) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v37, v38, v39, v40, v41, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v37, v38, v39, v40, v41, __p[0]);
  }
  v49 = ;
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
  }

  v50 = sub_2762032CC(v6, v42, v43, v44, v45, v46, v47, v48);
  v55 = objc_msgSend_scene(self, v51, v52, v53, v54);
  v60 = objc_msgSend_stringWithFormat_(v17, v56, v57, v58, v59, @"cv %@ page %@\nspaces %@\nscene %@", v36, v49, v50, v55);

  return v60;
}

- (CGRect)calcDrawingRect
{
  v6.receiver = self;
  v6.super_class = TSCH3DChartSceneAreaLayoutItem;
  [(TSCHChartAbstractAreaLayoutItem *)&v6 calcDrawingRect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)titleFrame
{
  v6 = objc_msgSend_chartTitleType(TSCHSelectionPathType, a2, v2, v3, v4);
  v11 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v7, v8, v9, v10, v6, 0);
  v12 = objc_opt_class();
  objc_msgSend_p_frameForSelectionPath_sceneObjectClass_(self, v13, v14, v15, v16, v11, v12);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)p_frameForSelectionPath:(id)path sceneObjectClass:(Class)class
{
  pathCopy = path;
  v11 = objc_msgSend_scene(self, v7, v8, v9, v10);
  v16 = objc_msgSend_clone(v11, v12, v13, v14, v15);

  v21 = objc_msgSend_chartInfo(self, v17, v18, v19, v20);
  v26 = objc_msgSend_chartType(v21, v22, v23, v24, v25);

  v31 = objc_msgSend_stageClass(v26, v27, v28, v29, v30);
  if (objc_msgSend_supportsValueAxisLabelAlignmentCaching(v31, v32, v33, v34, v35))
  {
    objc_msgSend_cacheValueAxisLabelAlignmentForScene_(TSCH3DChartAxisLabelsSceneObject, v36, v37, v38, v39, v16);
  }

  v40 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v36, v37, v38, v39, v16);
  objc_msgSend_setLabelsShadowIgnored_(v40, v41, v42, v43, v44, 1);
  v49 = objc_msgSend_camera(v16, v45, v46, v47, v48);
  objc_msgSend_containingViewport(self, v50, v51, v52, v53);
  objc_msgSend_setContainingViewportSize_(v49, v54, v55, v56, v57, v109);
  objc_msgSend_removeObjectsNotOfClass_(v16, v58, v59, v60, v61, class);
  objc_msgSend_setSelectionPath_selectionMode_forScene_(class, v62, v63, v64, v65, pathCopy, 1, v16);
  v70 = objc_msgSend_pipelineWithScene_(TSCH3DGetBoundsPipeline, v66, v67, v68, v69, v16);
  objc_msgSend_run(v70, v71, v72, v73, v74);
  v79 = objc_msgSend_bounds(v70, v75, v76, v77, v78);
  v80 = *(v79 + 16);
  v109[0] = *v79;
  v109[1] = v80;
  v81 = *(v79 + 48);
  v109[2] = *(v79 + 32);
  v110 = v81;
  v111 = *(v79 + 64);
  v113 = 0;
  v114 = 0;
  __p = 0;
  sub_27618FB60(&__p, *(v79 + 72), *(v79 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(v79 + 80) - *(v79 + 72)) >> 3));
  *v108 = v110;
  *&v108[16] = v111;
  if (sub_276155178(v108))
  {
    v86 = *MEMORY[0x277CBF398];
    v87 = *(MEMORY[0x277CBF398] + 8);
    v88 = *(MEMORY[0x277CBF398] + 16);
    v89 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    v90 = objc_msgSend_projectedBounds(self, v82, v83, v84, v85);
    *&v91 = *v108;
    *(&v91 + 1) = *&v108[12];
    v100 = v91;
    v101 = v90;
    v102 = 1065353216;
    v103 = 0;
    v104 = 0;
    *&v92 = sub_276152C5C(&v100, v90 + 10, &v115).u64[0];
    sub_27615294C(&v115, &v90[12], &v105, v92, v93, v94, v95);
    v86 = *v105.i32;
    v87 = *&v105.i32[1];
    v88 = (v106 - *v105.i32);
    v89 = (v107 - *&v105.i32[1]);
  }

  if (__p)
  {
    v113 = __p;
    operator delete(__p);
  }

  v96 = v86;
  v97 = v87;
  v98 = v88;
  v99 = v89;
  result.size.height = v99;
  result.size.width = v98;
  result.origin.y = v97;
  result.origin.x = v96;
  return result;
}

- (void)p_updateBodyLayoutRect
{
  objc_msgSend_layoutOffset(self, a2, v2, v3, v4);
  v7.f64[1] = v6;
  self->_chartBodyLayoutRect.origin = vcvtq_f64_f32(vadd_f32(self->_chartBodyLayoutOffsetInChartAreaLayoutSpace, vcvt_f32_f64(v7)));
}

- (void)p_updateLayoutSize:(CGSize)size chartBodyLayoutOffsetInChartAreaLayoutSpace:(void *)space
{
  self->_chartBodyLayoutOffsetInChartAreaLayoutSpace.var0.var0 = *space;
  LODWORD(v4) = *(space + 1);
  self->_chartBodyLayoutOffsetInChartAreaLayoutSpace.var1.var0 = *&v4;
  objc_msgSend_setLayoutSize_(self, a2, size.width, size.height, v4);

  objc_msgSend_p_updateBodyLayoutRect(self, v6, v7, v8, v9);
}

- (void)p_updateFromCacheItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCH3DChartSceneAreaLayoutItem p_updateFromCacheItem:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 380, 0, "invalid nil value for '%{public}s'", "areaLayoutCacheItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  objc_msgSend_chartBodyLayoutSize(itemCopy, v4, v6, v7, v8);
  v25 = v24;
  v27 = v26;
  if ((objc_msgSend_forcedValid(itemCopy, v28, v24, v26, v29) & 1) == 0 && TSUNearlyEqualSizes())
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "[TSCH3DChartSceneAreaLayoutItem p_updateFromCacheItem:]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    v45 = objc_msgSend_forcedValid(itemCopy, v41, v42, v43, v44);
    v123.width = v25;
    v123.height = v27;
    v46 = NSStringFromCGSize(v123);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v47, v48, v49, v50, v35, v40, 385, 0, "invalid cache item forced %ld chartBodyLayoutSize %@", v45, v46);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
  }

  if ((TSUNearlyEqualSizes() & 1) == 0)
  {
    self->_chartBodyLayoutRect.size.width = v25;
    self->_chartBodyLayoutRect.size.height = v27;
  }

  v59 = objc_msgSend_scene(self, v55, v56, v57, v58);
  v64 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v60, v61, v62, v63, v59);

  if (itemCopy)
  {
    objc_msgSend_infoChartScale(itemCopy, v65, v66, v67, v68);
    v69 = v118;
  }

  else
  {
    v69 = 0uLL;
  }

  v121 = v69;
  objc_msgSend_setInfoChartScale_(v64, v65, *&v69, v67, v68, &v121);
  objc_msgSend_layoutSize(itemCopy, v70, v71, v72, v73);
  v78 = v75;
  v79 = v76;
  if (itemCopy)
  {
    objc_msgSend_chartBodyLayoutOffsetInChartAreaLayoutSpace(itemCopy, v74, v75, v76, v77);
  }

  else
  {
    *&v121 = 0;
  }

  objc_msgSend_p_updateLayoutSize_chartBodyLayoutOffsetInChartAreaLayoutSpace_(self, v74, v78, v79, v77, &v121);
  if ((objc_msgSend_forcedValid(itemCopy, v80, v81, v82, v83) & 1) == 0)
  {
    objc_msgSend_layoutSettings(self, v84, v85, v86, v87);
    if (itemCopy)
    {
      objc_msgSend_layoutSettings(itemCopy, v88, v89, v90, v91);
    }

    else
    {
      v114 = 0uLL;
      v115 = 0;
    }

    LOBYTE(v116) = 0;
    LOBYTE(v114) = 0;
    v121 = v116;
    v122 = v117;
    v119 = v114;
    v120 = v115;
    if (!sub_27635FBE4(&v121, &v119))
    {
      v92 = MEMORY[0x277D81150];
      v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, v85, v86, v87, "[TSCH3DChartSceneAreaLayoutItem p_updateFromCacheItem:]");
      v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, v95, v96, v97, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v92, v99, v100, v101, v102, v93, v98, 396, 0, "using cache item with different layout settings");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104, v105, v106);
    }
  }

  v108 = objc_msgSend_p_updatedResizerHelper(self, v84, v85, v86, v87);
  if (itemCopy)
  {
    objc_msgSend_containingViewport(itemCopy, v107, v109, v110, v111);
    v112 = v113;
  }

  else
  {
    v112 = 0.0;
  }

  *&v121 = v112;
  objc_msgSend_setContainingViewport_(v108, v107, v112, v110, v111, &v121);
}

- (id)p_cache
{
  v5 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_sceneAreaLayoutItemCache(v5, v6, v7, v8, v9);

  if (!v10)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DChartSceneAreaLayoutItem p_cache]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 402, 0, "invalid nil value for '%{public}s'", "cache");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  return v10;
}

- (tvec2<int>)p_currentModelSize
{
  v6 = v2;
  v7 = objc_msgSend_chartInfo(self, a2, v3, v4, v5);
  v22 = objc_msgSend_model(v7, v8, v9, v10, v11);

  LODWORD(v7) = objc_msgSend_numberOfGroupsInAllSeries(v22, v12, v13, v14, v15);
  v20 = objc_msgSend_numberOfSeries(v22, v16, v17, v18, v19);
  *v6 = v7;
  v6[1] = v20;

  return v21;
}

- (BOOL)p_validCacheItem:(id)item inward:(BOOL)inward
{
  inwardCopy = inward;
  itemCopy = item;
  if (objc_msgSend_forcedValid(itemCopy, v7, v8, v9, v10))
  {
    goto LABEL_2;
  }

  if (itemCopy)
  {
    objc_msgSend_modelSize(itemCopy, v11, v12, v13, v14);
  }

  else
  {
    *&v47 = 0;
  }

  objc_msgSend_p_currentModelSize(self, v11, v12, v13, v14);
  v15 = 0;
  if (v47 == v45)
  {
    if (itemCopy)
    {
      objc_msgSend_layoutSettings(itemCopy, v17, v18, v19, v20);
    }

    else
    {
      v43 = 0uLL;
      v44 = 0;
    }

    objc_msgSend_layoutSettings(self, v17, v18, v19, v20);
    LOBYTE(v43) = 0;
    LOBYTE(v41) = 0;
    v47 = v43;
    v48 = v44;
    v45 = v41;
    v46 = v42;
    if (!sub_27635FBE4(&v47, &v45))
    {
      v15 = 0;
      goto LABEL_3;
    }

    if (inwardCopy)
    {
      objc_msgSend_requestLayoutSize(itemCopy, v21, v22, v23, v24);
      objc_msgSend_layoutSize(self, v25, v26, v27, v28);
      if ((TSUNearlyEqualSizes() & 1) == 0)
      {
        objc_msgSend_layoutSize(itemCopy, v29, v30, v31, v32);
        objc_msgSend_layoutSize(self, v33, v34, v35, v36);
LABEL_18:
        v15 = TSUNearlyEqualSizes();
        goto LABEL_3;
      }
    }

    else
    {
      objc_msgSend_requestChartBodyLayoutSize(itemCopy, v21, v22, v23, v24);
      if ((TSUNearlyEqualSizes() & 1) == 0)
      {
        objc_msgSend_chartBodyLayoutSize(itemCopy, v37, v38, v39, v40);
        goto LABEL_18;
      }
    }

LABEL_2:
    v15 = 1;
  }

LABEL_3:

  return v15;
}

- (BOOL)p_inwardLayoutCanUseCacheItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DChartSceneAreaLayoutItem p_inwardLayoutCanUseCacheItem:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 434, 0, "invalid nil value for '%{public}s'", "areaLayoutCacheItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  valid = objc_msgSend_p_validCacheItem_inward_(self, v5, v7, v8, v9, itemCopy, 1);
  if (valid)
  {
    objc_msgSend_p_updateFromCacheItem_(self, v25, v27, v28, v29, itemCopy);
    if (byte_280A46430 == 1)
    {
      v30 = objc_opt_class();
      v31 = NSStringFromSelector(a2);
      objc_msgSend_layoutSize(itemCopy, v32, v33, v34, v35);
      v36 = NSStringFromCGSize(v53);
      NSLog(&cfstr_PCacheHit.isa, v30, self, v31, v36);
LABEL_8:
    }
  }

  else if (byte_280A46430 == 1)
  {
    v37 = objc_opt_class();
    v31 = NSStringFromSelector(a2);
    objc_msgSend_layoutSize(itemCopy, v38, v39, v40, v41);
    v36 = NSStringFromCGSize(v54);
    objc_msgSend_requestLayoutSize(itemCopy, v42, v43, v44, v45);
    v46 = NSStringFromCGSize(v55);
    objc_msgSend_layoutSize(self, v47, v48, v49, v50);
    v51 = NSStringFromCGSize(v56);
    NSLog(&cfstr_PCacheMiss.isa, v37, self, v31, v36, v46, v51);

    goto LABEL_8;
  }

  return valid;
}

- (id)p_cacheInwardLayout
{
  v6 = objc_msgSend_scene(self, a2, v2, v3, v4);
  v11 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v7, v8, v9, v10, v6);

  objc_msgSend_layoutSize(self, v12, v13, v14, v15);
  v97 = v16;
  v98 = v17;
  v107 = 0;
  v106 = 0;
  if (objc_msgSend_isInResize(self, v18, 0.0, v17, v19))
  {
    objc_msgSend_startingSize(self, v20, v21, v22, v23);
    *&v21 = v21;
    *&v24 = v24;
    v105 = __PAIR64__(LODWORD(v24), LODWORD(v21));
    _ZF = *&v24 == 0.0;
    v22 = 0.0;
    _ZF = _ZF && *&v21 == 0.0;
    if (_ZF)
    {
      v26 = 0;
    }

    else
    {
      v26 = &v105;
    }
  }

  else
  {
    v26 = 0;
    v105 = 0;
  }

  v28 = objc_msgSend_p_updatedResizerHelper(self, v20, v21, v22, v23);
  if (!v28)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v29, v30, v31, "[TSCH3DChartSceneAreaLayoutItem p_cacheInwardLayout]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 479, 0, "invalid nil value for '%{public}s'", "resizerHelper");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
  }

  v48 = objc_msgSend_scene(self, v27, v29, v30, v31);
  v50.f64[0] = v97;
  v50.f64[1] = v98;
  v51 = vcvt_f32_f64(v50);
  *&v99 = v51;
  if (v28)
  {
    objc_msgSend_chartBodySizeByResizingScene_toLayoutSize_resizeStartingSize_returningChartBodyLayoutOffsetInChartAreaLayoutSpace_resultLayoutSize_(v28, v47, v97, v98, v49, v48, &v99, v26, &v107, &v106);
  }

  else
  {
    *&v104 = 0.0;
  }

  v103 = xmmword_2764D5EE0;
  v56 = objc_msgSend_scene(self, v52, 1.40444743e306, v53, v54);
  if (v28)
  {
    objc_msgSend_layoutSizeByResizingScene_toChartBodyLayoutSize_resizeStartingSize_returningChartBodyLayoutBoundsInChartAreaLayoutSpace_(v28, v55, v57, v58, v59, v56, &v104, v26, &v103);
    v60 = v99;
  }

  else
  {
    *&v99 = 0;
    v60 = 0;
  }

  v106 = v60;

  if (objc_msgSend_p_needsRefinementForInwardLayout(self, v61, v62, v63, v64))
  {
    v67 = 20;
    __asm { FMOV            V9.2S, #-1.0 }

    v72 = vdup_n_s32(0x3A83126Fu);
    do
    {
      v73 = vdiv_f32(v51, v106);
      v74 = vadd_f32(v73, _D9);
      v66 = vcgez_f32(v74);
      v75 = vcge_f32(v72, vbsl_s8(v66, v74, vneg_f32(v74)));
      if (v75.i32[0] & v75.i32[1])
      {
        break;
      }

      v76 = *&v104;
      v104 = vmul_f32(v73, v104);
      v78 = objc_msgSend_scene(self, v65, *&v104, v76, *&v66);
      if (v28)
      {
        objc_msgSend_layoutSizeByResizingScene_toChartBodyLayoutSize_resizeStartingSize_returningChartBodyLayoutBoundsInChartAreaLayoutSpace_(v28, v77, v79, v80, v81, v78, &v104, v26, &v103);
        v82 = v99;
      }

      else
      {
        *&v99 = 0;
        v82 = 0;
      }

      v106 = v82;

      --v67;
    }

    while (v67);
  }

  self->_chartBodyLayoutRect.size = vcvtq_f64_f32(vsub_f32(*(&v103 + 8), *&v103));
  objc_msgSend_p_updateLayoutSize_chartBodyLayoutOffsetInChartAreaLayoutSpace_(self, v65, v106.f32[0], v106.f32[1], *&v66, &v103);
  if (v11)
  {
    objc_msgSend_infoChartScale(v11, v83, v84, v85, v86);
    if (v28)
    {
LABEL_26:
      objc_msgSend_containingViewport(v28, v83, v84, v85, v86);
      goto LABEL_29;
    }
  }

  else
  {
    v102 = 0uLL;
    if (v28)
    {
      goto LABEL_26;
    }
  }

  v101 = 0;
LABEL_29:
  v87 = v106;
  width = self->_chartBodyLayoutRect.size.width;
  height = self->_chartBodyLayoutRect.size.height;
  v90 = v104;
  objc_msgSend_p_currentModelSize(self, v83, v84, v85, v86);
  objc_msgSend_layoutSettings(self, v91, v92, v93, v94);
  v95 = sub_27620CDA4(&v102, &v101, &v103, &v100, &v99, v87.f32[0], v87.f32[1], v97, v98, width, height, v90.f32[0], v90.f32[1]);

  return v95;
}

- (void)layoutInward
{
  v30.receiver = self;
  v30.super_class = TSCH3DChartSceneAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v30 layoutInward];
  if (byte_280A46430 == 1)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(a2);
    objc_msgSend_layoutRect(self, v10, v11, v12, v13);
    v14 = NSStringFromCGRect(v31);
    v15 = NSStringFromCGRect(self->_chartBodyLayoutRect);
    NSLog(&cfstr_PBeginLayoutBo_0.isa, v8, self, v9, v14, v15);
  }

  v16 = objc_msgSend_p_cache(self, v4, v5, v6, v7);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_27620D08C;
  v29[3] = &unk_27A6B66F0;
  v29[4] = self;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_27620D098;
  v28[3] = &unk_27A6B6B80;
  v28[4] = self;
  objc_msgSend_accessWithCacheItemBlock_calculateBlock_(v16, v17, COERCE_DOUBLE(3221225472), v18, v19, v29, v28);
  if (byte_280A46430 == 1)
  {
    v20 = objc_opt_class();
    v21 = NSStringFromSelector(a2);
    objc_msgSend_layoutRect(self, v22, v23, v24, v25);
    v26 = NSStringFromCGRect(v32);
    v27 = NSStringFromCGRect(self->_chartBodyLayoutRect);
    NSLog(&cfstr_PEndLayoutBody.isa, v20, self, v21, v26, v27);
  }
}

- (BOOL)p_outwardLayoutCanUseCacheItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DChartSceneAreaLayoutItem p_outwardLayoutCanUseCacheItem:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 545, 0, "invalid nil value for '%{public}s'", "areaLayoutCacheItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  valid = objc_msgSend_p_validCacheItem_inward_(self, v5, v7, v8, v9, itemCopy, 0);
  if (valid)
  {
    objc_msgSend_p_updateFromCacheItem_(self, v25, v27, v28, v29, itemCopy);
    MinX = CGRectGetMinX(self->_chartBodyLayoutRect);
    MinY = CGRectGetMinY(self->_chartBodyLayoutRect);
    MaxX = CGRectGetMaxX(self->_chartBodyLayoutRect);
    MaxY = CGRectGetMaxY(self->_chartBodyLayoutRect);
    *&v34 = MinX;
    *&v35 = MinY;
    v36 = MaxX;
    v63 = __PAIR64__(LODWORD(v35), LODWORD(v34));
    *&MaxY = MaxY;
    v64 = v36;
    v65 = LODWORD(MaxY);
    v38 = objc_msgSend_scene(self, v37, MaxY, v34, v35);
    objc_msgSend_setLabelWrapBounds_forScene_(TSCH3DChartTitleSceneObject, v39, v40, v41, v42, &v63, v38);

    if (byte_280A46430 == 1)
    {
      v43 = objc_opt_class();
      v44 = NSStringFromSelector(a2);
      objc_msgSend_chartBodyLayoutSize(itemCopy, v45, v46, v47, v48);
      v49 = NSStringFromCGSize(v66);
      NSLog(&cfstr_PCacheHit.isa, v43, self, v44, v49);

LABEL_8:
    }
  }

  else if (byte_280A46430 == 1)
  {
    v50 = objc_opt_class();
    v44 = NSStringFromSelector(a2);
    objc_msgSend_chartBodyLayoutSize(itemCopy, v51, v52, v53, v54);
    v55 = NSStringFromCGSize(v67);
    objc_msgSend_requestChartBodyLayoutSize(itemCopy, v56, v57, v58, v59);
    v60 = NSStringFromCGSize(v68);
    v61 = NSStringFromCGSize(self->_chartBodyLayoutRect.size);
    NSLog(&cfstr_PCacheMiss.isa, v50, self, v44, v55, v60, v61);

    goto LABEL_8;
  }

  return valid;
}

- (id)p_cacheOutwardLayout
{
  v6 = objc_msgSend_scene(self, a2, v2, v3, v4);
  v11 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v7, v8, v9, v10, v6);

  size = self->_chartBodyLayoutRect.size;
  v89 = xmmword_2764D5EE0;
  if (objc_msgSend_isInResize(self, v12, 1.40444743e306, v13, v14))
  {
    objc_msgSend_startingSize(self, v15, v16, v17, v18);
    *&v16 = v16;
    *&v19 = v19;
    v88 = __PAIR64__(LODWORD(v19), LODWORD(v16));
    v20 = *&v19 == 0.0;
    v17 = 0.0;
    v20 = v20 && *&v16 == 0.0;
    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = &v88;
    }
  }

  else
  {
    v21 = 0;
    v88 = 0;
  }

  v22 = objc_msgSend_scene(self, v15, v16, v17, v18);
  v27 = objc_msgSend_p_updatedResizerHelper(self, v23, v24, v25, v26);
  v32 = v27;
  if (v27)
  {
    if (!self->_isInvariant)
    {
      *&v86 = vcvt_f32_f64(size);
      objc_msgSend_layoutSizeByResizingScene_toChartBodyLayoutSize_resizeStartingSize_returningChartBodyLayoutBoundsInChartAreaLayoutSpace_(v27, v28, *&v86, v30, v31, v22, &v86, v21, &v89);
      v33 = v82;
LABEL_16:
      v59 = *(&v89 + 8);
      v60 = v89;
      goto LABEL_23;
    }
  }

  else
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "[TSCH3DChartSceneAreaLayoutItem p_cacheOutwardLayout]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v42, v43, v44, v35, v40, 573, 0, "invalid nil value for '%{public}s'", "resizerHelper");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
    if (!self->_isInvariant)
    {
      v33 = 0;
      goto LABEL_16;
    }
  }

  *&v86 = objc_msgSend_projectedBounds(self, v28, v29, v30, v31);
  DWORD2(v86) = 1065353216;
  BYTE12(v86) = 0;
  v87 = 0;
  v90 = xmmword_2764D5ED0;
  sub_2761526F4(&v90, (v86 + 16), &v91);
  v82 = v91;
  v83 = v86;
  LODWORD(v84) = 1065353216;
  BYTE4(v84) = 0;
  v85 = 0;
  sub_2761526F4(&v82, (v86 + 112), &v91);
  v79 = *&v84;
  v49 = v91;
  v53 = objc_msgSend_p_updatedResizerHelper(self, v50, v84, v51, v52);
  v58 = v53;
  if (v53)
  {
    objc_msgSend_chartBodyLayoutOffsetInChartAreaLayoutSpaceUsingConverter_(v53, v54, v55, v56, v57, &v86);
  }

  else
  {
    *&v82 = 0;
  }

  v61 = vmul_n_f32(*&v49, v79);
  v62 = vmul_n_f32(*(&v49 + 8), v79);

  v63 = vcvt_f32_f64(size);
  if (v63.f32[0] < 0.0 || v63.f32[1] < 0.0)
  {
    v59 = v82;
    v60 = v82;
  }

  else
  {
    v60 = vadd_f32(*&v82, 0);
    v59 = vadd_f32(*&v82, v63);
  }

  v33 = vsub_f32(v62, v61);
  *&v64 = v60;
  *(&v64 + 1) = v59;
  v89 = v64;
LABEL_23:
  self->_chartBodyLayoutRect.size = vcvtq_f64_f32(vsub_f32(v59, v60));
  v65 = vcvtq_f64_f32(v33);
  v66 = v65.f64[1];
  v80 = v65.f64[0];
  objc_msgSend_p_updateLayoutSize_chartBodyLayoutOffsetInChartAreaLayoutSpace_(self, v28, v65.f64[0], v65.f64[1], *&v60, &v89);
  if (v11)
  {
    objc_msgSend_infoChartScale(v11, v67, v68, v69, v70);
    if (v32)
    {
LABEL_25:
      objc_msgSend_containingViewport(v32, v67, v68, v69, v70);
      goto LABEL_28;
    }
  }

  else
  {
    v86 = 0uLL;
    if (v32)
    {
      goto LABEL_25;
    }
  }

  *&v91 = 0;
LABEL_28:
  width = self->_chartBodyLayoutRect.size.width;
  height = self->_chartBodyLayoutRect.size.height;
  objc_msgSend_p_currentModelSize(self, v67, v68, v69, v70);
  objc_msgSend_layoutSettings(self, v73, v74, v75, v76);
  v77 = sub_27620CDA4(&v86, &v91, &v89, &v90, &v82, v80, v66, v80, v66, width, height, size.width, size.height);

  return v77;
}

- (void)layoutOutward
{
  if (byte_280A46430 == 1)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromSelector(a2);
    objc_msgSend_layoutRect(self, v6, v7, v8, v9);
    v10 = NSStringFromCGRect(v31);
    v11 = NSStringFromCGRect(self->_chartBodyLayoutRect);
    NSLog(&cfstr_PBeginLayoutBo_0.isa, v4, self, v5, v10, v11);
  }

  v30.receiver = self;
  v30.super_class = TSCH3DChartSceneAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v30 layoutOutward];
  v16 = objc_msgSend_p_cache(self, v12, v13, v14, v15);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_27620DA50;
  v29[3] = &unk_27A6B66F0;
  v29[4] = self;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_27620DA5C;
  v28[3] = &unk_27A6B6B80;
  v28[4] = self;
  objc_msgSend_accessWithCacheItemBlock_calculateBlock_(v16, v17, COERCE_DOUBLE(3221225472), v18, v19, v29, v28);
  if (byte_280A46430 == 1)
  {
    v20 = objc_opt_class();
    v21 = NSStringFromSelector(a2);
    objc_msgSend_layoutRect(self, v22, v23, v24, v25);
    v26 = NSStringFromCGRect(v32);
    v27 = NSStringFromCGRect(self->_chartBodyLayoutRect);
    NSLog(&cfstr_PEndLayoutBody.isa, v20, self, v21, v26, v27);
  }
}

- (void)setStabilizedChartBodyLayoutRectUsingConverter:(const void *)converter
{
  v50 = xmmword_2764D5ED0;
  sub_2761526F4(&v50, (*converter + 80), &v51);
  v5 = *converter;
  v6 = *(converter + 2);
  v7 = *(converter + 12);
  v43 = v51;
  v44 = v5;
  v45 = v6;
  v46 = v7;
  v47 = *(converter + 2);
  *&v8 = sub_276152C5C(&v43, v5 + 10, &v51).u64[0];
  sub_27615294C(&v51, &v5[12], &v48, v8, v9, v10, v11);
  v16 = objc_msgSend_p_updatedResizerHelper(self, v12, v13, v14, v15);
  v21 = v16;
  if (v16)
  {
    objc_msgSend_chartBodyLayoutOffsetInChartAreaLayoutSpaceUsingConverter_(v16, v17, v18, v19, v20, converter);
  }

  else
  {
    v42 = 0;
  }

  v22 = vsub_f32(v49, v48);
  if (v22.f32[0] < 0.0 || v22.f32[1] < 0.0)
  {
    v23.i64[0] = v42;
    v23.i64[1] = v42;
  }

  else
  {
    v24.i64[0] = v42;
    v24.i64[1] = v42;
    v25.i64[0] = 0;
    *&v25.u32[2] = v22;
    v23 = vaddq_f32(v25, v24);
  }

  v41 = v23;
  v50 = xmmword_2764D5ED0;
  sub_2761526F4(&v50, (*converter + 16), &v51);
  v26 = *converter;
  v27 = *(converter + 2);
  v28 = *(converter + 12);
  v43 = v51;
  v44 = v26;
  v45 = v27;
  v46 = v28;
  v47 = *(converter + 2);
  *&v29 = sub_276152C5C(&v43, v26 + 10, &v51).u64[0];
  sub_27615294C(&v51, &v26[12], &v50, v29, v30, v31, v32);
  v33 = vcvtq_f64_f32(vsub_f32(*(&v50 + 8), *&v50));
  objc_msgSend_p_updateLayoutSize_chartBodyLayoutOffsetInChartAreaLayoutSpace_(self, v34, v33.f64[0], v33.f64[1], v35, &v41);
  v36 = v48;
  v37 = vcvtq_f64_f32(v48);
  v38 = vcvtq_f64_f32(vsub_f32(v49, v48));
  self->_chartBodyLayoutRect.origin = v37;
  self->_chartBodyLayoutRect.size = v38;
  v39 = vcvtq_f64_f32(vsub_f32(v36, self->_chartBodyLayoutOffsetInChartAreaLayoutSpace));
  objc_msgSend_setLayoutOffset_(self, v40, v39.f64[0], v39.f64[1], v37.x);
}

- (void)setLayoutOffset:(CGPoint)offset
{
  v8.receiver = self;
  v8.super_class = TSCH3DChartSceneAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v8 setLayoutOffset:offset.x, offset.y];
  objc_msgSend_p_updateBodyLayoutRect(self, v4, v5, v6, v7);
}

- (CGRect)chartBodyLayoutRect
{
  x = self->_chartBodyLayoutRect.origin.x;
  y = self->_chartBodyLayoutRect.origin.y;
  width = self->_chartBodyLayoutRect.size.width;
  height = self->_chartBodyLayoutRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id).cxx_construct
{
  *(self + 24) = 0;
  *(self + 204) = 0;
  *(self + 212) = 0;
  return self;
}

@end