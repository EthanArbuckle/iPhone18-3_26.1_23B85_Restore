@interface TSCH3DChartBoundsLayoutSceneDelegate
+ (id)sceneDelegate;
- (BOOL)willSubmitLabelForSceneObject:(id)a3 labelRenderInfo:(id)a4;
- (BOOL)willSubmitLabelType:(int)a3 boundsIndex:(int64_t)a4 alignment:(unint64_t)a5 elementIndex:(unint64_t)a6 forSceneObject:(id)a7;
- (BOOL)willSubmitSceneObject:(id)a3 pipeline:(id)a4;
- (TSCH3DChartBoundsLayoutSceneDelegate)init;
- (id)interestedClasses;
- (id)makeDelegateWithSceneObject:(id)a3 scene:(id)a4;
- (void)dealloc;
- (void)didRunForScene:(id)a3 pipeline:(id)a4;
- (void)invalidateLabelsBoundsForSceneObjectClass:(Class)a3 boundsIndex:(int64_t)a4;
- (void)p_addAllActiveLabelsBounds;
- (void)p_extendProjectedBoundsForCachedLabelBounds:(id)a3 offset:(void *)a4;
- (void)setOffset:(void *)a3 labelType:(int)a4 boundsIndex:(int64_t)a5 forSceneObject:(id)a6;
- (void)willRunForScene:(id)a3 pipeline:(id)a4;
@end

@implementation TSCH3DChartBoundsLayoutSceneDelegate

+ (id)sceneDelegate
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (TSCH3DChartBoundsLayoutSceneDelegate)init
{
  v10.receiver = self;
  v10.super_class = TSCH3DChartBoundsLayoutSceneDelegate;
  v2 = [(TSCH3DChartBoundsLayoutSceneDelegate *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(TSCH3DLabelsRendererTransforms);
    transforms = v2->_transforms;
    v2->_transforms = v3;

    v5 = objc_alloc_init(MEMORY[0x277D81278]);
    sceneObjectLabelsBounds = v2->_sceneObjectLabelsBounds;
    v2->_sceneObjectLabelsBounds = v5;

    v7 = objc_alloc_init(MEMORY[0x277D81258]);
    debugCachedSceneObjects = v2->_debugCachedSceneObjects;
    v2->_debugCachedSceneObjects = v7;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_pipeline)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartBoundsLayoutSceneDelegate dealloc]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 278, 0, "expected nil value for '%{public}s'", "_pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (self->_activeBounds)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartBoundsLayoutSceneDelegate dealloc]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 279, 0, "expected nil value for '%{public}s'", "_activeBounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  v36.receiver = self;
  v36.super_class = TSCH3DChartBoundsLayoutSceneDelegate;
  [(TSCH3DChartBoundsLayoutSceneDelegate *)&v36 dealloc];
}

- (id)interestedClasses
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = objc_opt_class();
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v3, v4, v5, v8, 1);

  return v6;
}

- (id)makeDelegateWithSceneObject:(id)a3 scene:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_msgSend_interestedClasses(self, v6, v7, v8, v9);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v10 = v25 = 0u;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, &v24, v28, 16);
  if (v15)
  {
    v16 = *v25;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v10);
        }

        if (objc_opt_isKindOfClass())
        {
          v22 = self;
          goto LABEL_11;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v18, v19, v20, v21, &v24, v28, 16);
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0;
LABEL_11:

  return v22;
}

- (void)invalidateLabelsBoundsForSceneObjectClass:(Class)a3 boundsIndex:(int64_t)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = objc_msgSend_allKeys(self->_sceneObjectLabelsBounds, a2, 0.0, v4, v5, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, v11, v12, &v28, v32, 16);
  if (v13)
  {
    v14 = 0;
    v15 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v8);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v22 = objc_msgSend_objectForKeyedSubscript_(self->_sceneObjectLabelsBounds, v18, v19, v20, v21, v17);
          v27 = objc_msgSend_resetIndex_(v22, v23, v24, v25, v26, a4);

          v14 |= v27;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v18, v19, v20, v21, &v28, v32, 16);
    }

    while (v13);

    if (v14)
    {
      self->_labelsHaveCache = 0;
    }
  }

  else
  {
  }
}

- (void)p_extendProjectedBoundsForCachedLabelBounds:(id)a3 offset:(void *)a4
{
  v8 = a3;
  if (!v8)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCH3DChartBoundsLayoutSceneDelegate p_extendProjectedBoundsForCachedLabelBounds:offset:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 317, 0, "Invalid parameter not satisfying: %{public}s", "bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  if (!self->_pipeline)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCH3DChartBoundsLayoutSceneDelegate p_extendProjectedBoundsForCachedLabelBounds:offset:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 318, 0, "invalid nil value for '%{public}s'", "_pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
  }

  if (v8)
  {
    *&v111 = *a4;
    DWORD2(v111) = *(a4 + 2);
    transforms = self->_transforms;
    v43 = objc_msgSend_camera(self->_pipeline, v7, COERCE_DOUBLE(__PAIR64__(DWORD1(v111), DWORD2(v111))), v10, v11);
    v48 = v43;
    if (v43)
    {
      objc_msgSend_viewport(v43, v44, v45, v46, v47);
    }

    else
    {
      v113[0] = 0;
      v113[1] = 0;
    }

    objc_msgSend_normalizedBoundsWithOffset_transforms_viewport_(v8, v44, v45, v46, v47, &v111, transforms, v113);

    if (byte_280A46430 == 1)
    {
      v53 = objc_opt_class();
      v54 = NSStringFromSelector(a2);
      v59 = objc_msgSend_string(v8, v55, v56, v57, v58);
      v60 = MEMORY[0x277CCACA8];
      v61 = *a4;
      sub_276152FD4("vec3(%f, %f, %f)", v62, v63, v64, v65, v66, v67, v68, SLOBYTE(v61));
      if (v114 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v60, v69, v70, v71, v72, v113);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v60, v69, v70, v71, v72, v113[0]);
      }
      v80 = ;
      if (v114 < 0)
      {
        operator delete(v113[0]);
      }

      *&v81 = v112[0];
      *(&v81 + 1) = *(&v112[1] + 4);
      v111 = v81;
      v82 = MEMORY[0x277CCACA8];
      sub_276152EB4(&v111, v73, v74, v75, v76, v77, v78, v79);
      if (v114 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v82, v83, v84, v85, v86, v113);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v82, v83, v84, v85, v86, v113[0]);
      }
      v88 = ;
      if (v114 < 0)
      {
        operator delete(v113[0]);
      }

      v92 = objc_msgSend_camera(self->_pipeline, v87, v89, v90, v91);
      v103 = v92;
      if (v92)
      {
        objc_msgSend_viewport(v92, v93, v100, v101, v102);
      }

      else
      {
        v110[0] = 0;
        v110[1] = 0;
      }

      v104 = MEMORY[0x277CCACA8];
      sub_2761B7678(v110, v93, v94, v95, v96, v97, v98, v99);
      if (v114 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v104, v105, v106, v107, v108, v113);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v104, v105, v106, v107, v108, v113[0]);
      }
      v109 = ;
      if (v114 < 0)
      {
        operator delete(v113[0]);
      }

      NSLog(&cfstr_POffsetBoundsV.isa, v53, self, v54, v59, v80, v88, v109);
    }

    objc_msgSend_extend2DProjectedBounds_(self->_pipeline, v49, v50, v51, v52, v112);
  }
}

- (void)willRunForScene:(id)a3 pipeline:(id)a4
{
  v37 = a3;
  v7 = a4;
  pipeline = self->_pipeline;
  self->_labelsDidOverride = 0;
  if (pipeline)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DChartBoundsLayoutSceneDelegate willRunForScene:pipeline:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 341, 0, "expected nil value for '%{public}s'", "_pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  objc_storeStrong(&self->_pipeline, a4);
  transforms = self->_transforms;
  v32 = objc_msgSend_camera(v7, v28, v29, v30, v31);
  objc_msgSend_resetWithScene_camera_(transforms, v33, v34, v35, v36, v37, v32);
}

- (void)p_addAllActiveLabelsBounds
{
  v69 = *MEMORY[0x277D85DE8];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = objc_msgSend_allKeys(self->_sceneObjectLabelsBounds, a2, 0.0, v2, v3);
  v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, v6, v7, v8, &v64, v68, 16);
  if (v59)
  {
    v58 = *v65;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v65 != v58)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v60 = TSUCheckedDynamicCast();
        v13 = objc_msgSend_objectForKeyedSubscript_(self->_sceneObjectLabelsBounds, v9, v10, v11, v12);
        v19 = objc_msgSend_activeIndices(v13, v14, v15, v16, v17);
        if (!v19)
        {
          v23 = MEMORY[0x277D81150];
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v20, v21, v22, "[TSCH3DChartBoundsLayoutSceneDelegate p_addAllActiveLabelsBounds]");
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 352, 0, "invalid nil value for '%{public}s'", "indices");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
        }

        for (j = objc_msgSend_firstIndex(v19, v18, v20, v21, v22); j != 0x7FFFFFFFFFFFFFFFLL; j = objc_msgSend_indexGreaterThanIndex_(v19, v49, v50, v51, v52, j))
        {
          v43 = objc_msgSend_arrayAtIndex_(v13, v38, v40, v41, v42, j);
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = sub_2761FEAD4;
          v62[3] = &unk_27A6B6B08;
          v62[4] = self;
          v44 = v43;
          v63 = v44;
          objc_msgSend_enumerateLabelBoundsUsingBlock_(v44, v45, v46, v47, v48, v62);
        }
      }

      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, v54, v55, v56, &v64, v68, 16);
    }

    while (v59);
  }
}

- (void)didRunForScene:(id)a3 pipeline:(id)a4
{
  v30 = a4;
  activeBounds = self->_activeBounds;
  self->_activeBounds = 0;

  if (self->_labelsDidOverride)
  {
    objc_msgSend_p_addAllActiveLabelsBounds(self, v6, v7, v8, v9);
    self->_labelsHaveCache = 1;
  }

  pipeline = self->_pipeline;
  if (pipeline != v30)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DChartBoundsLayoutSceneDelegate didRunForScene:pipeline:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 375, 0, "pipeline mismatch %@ %@", self->_pipeline, v30);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    pipeline = self->_pipeline;
  }

  self->_pipeline = 0;

  objc_msgSend_resetWithScene_camera_(self->_transforms, v26, v27, v28, v29, 0, 0);
}

- (BOOL)willSubmitSceneObject:(id)a3 pipeline:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DChartBoundsLayoutSceneDelegate willSubmitSceneObject:pipeline:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 389, 0, "non-label class passed through %@", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  if (self->_labelsHaveCache && (objc_msgSend_containsObject_(self->_debugCachedSceneObjects, v6, v7, v8, v9, v5) & 1) == 0)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DChartBoundsLayoutSceneDelegate willSubmitSceneObject:pipeline:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 392, 0, "%@ labels not cached in previous runs, layout item probably needs to be invalidated", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
  }

  v40 = objc_msgSend_objectForKeyedSubscript_(self->_sceneObjectLabelsBounds, v6, v7, v8, v9, v5);

  if (!v40)
  {
    sceneObjectLabelsBounds = self->_sceneObjectLabelsBounds;
    v46 = objc_alloc_init(TSCH3DActiveLabelsTypeBounds);
    objc_msgSend_setObject_forUncopiedKey_(sceneObjectLabelsBounds, v47, v48, v49, v50, v46, v5);
  }

  v51 = objc_msgSend_objectForKeyedSubscript_(self->_sceneObjectLabelsBounds, v41, v42, v43, v44, v5);
  activeBounds = self->_activeBounds;
  self->_activeBounds = v51;

  labelsHaveCache = self->_labelsHaveCache;
  if (!labelsHaveCache)
  {
    objc_msgSend_addObject_(self->_debugCachedSceneObjects, v53, v54, v55, v56, v5);
    labelsHaveCache = self->_labelsHaveCache;
  }

  self->_labelsDidOverride = self->_labelsDidOverride || labelsHaveCache;

  return labelsHaveCache;
}

- (void)setOffset:(void *)a3 labelType:(int)a4 boundsIndex:(int64_t)a5 forSceneObject:(id)a6
{
  v11 = a6;
  if (byte_280A46430 == 1)
  {
    v15 = objc_opt_class();
    v16 = NSStringFromSelector(a2);
    v17 = MEMORY[0x277CCACA8];
    v18 = *a3;
    sub_276152FD4("vec3(%f, %f, %f)", v19, v20, v21, v22, v23, v24, v25, SLOBYTE(v18));
    if (v42 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v17, v26, v27, v28, v29, &__p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v17, v26, v27, v28, v29, __p);
    }
    v30 = ;
    if (v42 < 0)
    {
      operator delete(__p);
    }

    NSLog(&cfstr_POffsetBoundsi.isa, v15, self, v16, v30, a5, v11);
  }

  v31 = objc_msgSend_objectForKeyedSubscript_(self->_sceneObjectLabelsBounds, v10, v12, v13, v14, v11);
  v36 = objc_msgSend_arrayAtIndex_(v31, v32, v33, v34, v35, a5);
  __p = *a3;
  v41 = *(a3 + 2);
  objc_msgSend_setOffset_(v36, v37, COERCE_DOUBLE(__PAIR64__(HIDWORD(__p), v41)), v38, v39, &__p);
}

- (BOOL)willSubmitLabelType:(int)a3 boundsIndex:(int64_t)a4 alignment:(unint64_t)a5 elementIndex:(unint64_t)a6 forSceneObject:(id)a7
{
  v10 = a7;
  activeBounds = self->_activeBounds;
  if (!activeBounds)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCH3DChartBoundsLayoutSceneDelegate willSubmitLabelType:boundsIndex:alignment:elementIndex:forSceneObject:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 432, 0, "invalid nil value for '%{public}s'", "_activeBounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    activeBounds = self->_activeBounds;
  }

  active = objc_msgSend_setActiveType_(activeBounds, v9, v11, v12, v13, a4);

  return active ^ 1;
}

- (BOOL)willSubmitLabelForSceneObject:(id)a3 labelRenderInfo:(id)a4
{
  v132 = a3;
  v7 = a4;
  pipeline = self->_pipeline;
  v13 = objc_msgSend_pipeline(v7, v9, v10, v11, v12);

  if (pipeline != v13)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCH3DChartBoundsLayoutSceneDelegate willSubmitLabelForSceneObject:labelRenderInfo:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    v25 = self->_pipeline;
    v30 = objc_msgSend_pipeline(v7, v26, v27, v28, v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v31, v32, v33, v34, v19, v24, 439, 0, "pipeline mismatch %@ %@", v25, v30);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  v39 = objc_msgSend_labelsRenderer(v132, v14, v15, v16, v17);
  v44 = v39;
  if (v39)
  {
    objc_msgSend_renderInfo(v39, v40, v41, v42, v43);
  }

  else
  {
    memset(v138, 0, sizeof(v138));
  }

  v49 = objc_msgSend_alignment(v7, v45, v46, v47, v48);
  *&v139 = vmul_f32(*&v138[0], 0xBF000000BF000000);
  sub_276205CDC(v138, v49, &v139, &v137);
  v131 = *(v138 + 1);
  v50 = self->_pipeline;
  objc_msgSend_renderScale(v50, v51, *(v138 + 1), v52, v53);
  v130 = sub_2761FF750(v54, self, a2, v50);
  v56.i32[0] = HIDWORD(v131);
  if (*&v131 < 0.0 || *(&v131 + 1) < 0.0)
  {
    *v58.f32 = v137;
    *&v58.u32[2] = v137;
  }

  else
  {
    *v57.f32 = v137;
    *&v57.u32[2] = v137;
    v56.i64[0] = 0;
    *&v56.i64[1] = v131;
    v58 = vaddq_f32(v56, v57);
  }

  v136 = v58;
  objc_msgSend_rotation(v7, v55, *v58.i64, *v56.i64, v131);
  if (*&v60 != 0.0)
  {
    objc_msgSend_rotation(v7, v59, *&v60, v61, v62);
    v64 = v63 * 3.14159265 / 180.0;
    v67 = __sincosf_stret(v64);
    cosval = v67.__cosval;
    LODWORD(v65) = *&v67;
    v60 = xmmword_2764D5EE0;
    v139 = xmmword_2764D5EE0;
    LODWORD(v62) = DWORD1(v136);
    LODWORD(v61) = v136;
    LODWORD(v68) = DWORD2(v136);
    if (*(&v136 + 2) >= *&v136 && *(&v136 + 3) >= *(&v136 + 1))
    {
      v69 = 0;
      do
      {
        sub_2761FF824(&v136, v69, &v135, *&v60, v61, v62, v68);
        v133.f32[0] = (*(&v135 + 1) * -v65) + (cosval * *&v135);
        v133.f32[1] = (cosval * *(&v135 + 1)) + (v65 * *&v135);
        *&v60 = sub_276152BD8(&v139, &v133);
        ++v69;
      }

      while (v69 != 4);
      v60 = v139;
    }

    v136 = v60;
  }

  if (v7)
  {
    objc_msgSend_offset2D(v7, v59, *&v60, v61, v62);
    v70 = v139;
    objc_msgSend_position(v7, v71, v72, v73, v74);
  }

  else
  {
    v134 = 0;
    v133 = 0;
    v70 = 0;
  }

  v139 = v136;
  v135 = COERCE_DOUBLE(vmul_n_f32(v70, v130));
  v75 = objc_msgSend_renderString(v7, v59, v135, *&v136, v62);
  v80 = objc_msgSend_boundsWithPosition_labelBox_offset2D_string_(TSCH3DCachedLabelBounds, v76, v77, v78, v79, &v133, &v139, &v135, v75);

  activeBounds = self->_activeBounds;
  if (!activeBounds)
  {
    v86 = MEMORY[0x277D81150];
    v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, v82, v83, v84, "[TSCH3DChartBoundsLayoutSceneDelegate willSubmitLabelForSceneObject:labelRenderInfo:]");
    v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, v89, v90, v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v86, v93, v94, v95, v96, v87, v92, 458, 0, "invalid nil value for '%{public}s'", "_activeBounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v97, v98, v99, v100);
    activeBounds = self->_activeBounds;
  }

  objc_msgSend_addBounds_(activeBounds, v81, v82, v83, v84, v80);
  if (v7)
  {
    objc_msgSend_offset(v7, v101, v102, v103, v104);
  }

  else
  {
    DWORD2(v139) = 0;
    *&v139 = 0;
  }

  objc_msgSend_p_extendProjectedBoundsForCachedLabelBounds_offset_(self, v101, v102, v103, v104, v80, &v139);
  if (byte_280A46430 == 1)
  {
    v105 = objc_opt_class();
    v106 = NSStringFromSelector(a2);
    v118 = objc_msgSend_renderString(v7, v107, v108, v109, v110);
    if (v7)
    {
      objc_msgSend_position(v7, v111, v119, v120, v121);
      v122 = v133.f32[0];
    }

    else
    {
      v134 = 0;
      v133 = 0;
      LOBYTE(v122) = 0;
    }

    v123 = MEMORY[0x277CCACA8];
    sub_276152FD4("vec3(%f, %f, %f)", v111, v112, v113, v114, v115, v116, v117, SLOBYTE(v122));
    if (v140 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v123, v124, v125, v126, v127, &v139);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v123, v124, v125, v126, v127, v139);
    }
    v128 = ;
    if (v140 < 0)
    {
      operator delete(v139);
    }

    NSLog(&cfstr_PPosition.isa, v105, self, v106, v118, v128);
  }

  self->_labelsDidOverride = 1;

  return 1;
}

@end