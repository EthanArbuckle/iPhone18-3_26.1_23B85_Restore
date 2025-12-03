@interface TPFootnoteHeightMeasurer
- (BOOL)canHaveFootnotesFromPreviousTarget:(id)target;
- (BOOL)footnoteContainerFitsForTarget:(id)target;
- (BOOL)footnoteContainerIsOnSamePageAsTarget:(id)target;
- (TPFootnoteHeightMeasurer)initWithFootnoteMarkProvider:(id)provider documentRoot:(id)root pageDelegate:(id)delegate maxFootnoteLineWidth:(double)width maxFootnoteBlockHeight:(double)height vertical:(BOOL)vertical footnoteSpacing:(double)spacing;
- (double)footnoteBlockHeightForTarget:(id)target;
- (id)documentRoot;
- (void)addFootnoteReferenceStorage:(id)storage;
- (void)removeAllFootnoteReferenceStorages;
- (void)removeFootnoteReferenceStorage:(id)storage;
- (void)setContainerLineWidth:(double)width;
- (void)setFootnoteSpacing:(int64_t)spacing;
- (void)tearDown;
@end

@implementation TPFootnoteHeightMeasurer

- (TPFootnoteHeightMeasurer)initWithFootnoteMarkProvider:(id)provider documentRoot:(id)root pageDelegate:(id)delegate maxFootnoteLineWidth:(double)width maxFootnoteBlockHeight:(double)height vertical:(BOOL)vertical footnoteSpacing:(double)spacing
{
  verticalCopy = vertical;
  v111[1] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  rootCopy = root;
  delegateCopy = delegate;
  v110.receiver = self;
  v110.super_class = TPFootnoteHeightMeasurer;
  v20 = [(TPFootnoteHeightMeasurer *)&v110 init];
  if (providerCopy)
  {
    if (delegateCopy)
    {
      goto LABEL_3;
    }

LABEL_7:
    v92 = MEMORY[0x277D81150];
    v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v21, v22, v23, v24, "[TPFootnoteHeightMeasurer initWithFootnoteMarkProvider:documentRoot:pageDelegate:maxFootnoteLineWidth:maxFootnoteBlockHeight:vertical:footnoteSpacing:]");
    v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, v95, v96, v97, v98, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteHeightMeasurer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v92, v100, v101, v102, v103, v104, v93, v99, 45, 0, "invalid nil value for '%{public}s'", "pageDelegate");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v105, v106, v107, v108, v109);
    if (!v20)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v74 = MEMORY[0x277D81150];
  v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v21, v22, v23, v24, "[TPFootnoteHeightMeasurer initWithFootnoteMarkProvider:documentRoot:pageDelegate:maxFootnoteLineWidth:maxFootnoteBlockHeight:vertical:footnoteSpacing:]");
  v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v77, v78, v79, v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteHeightMeasurer.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v82, v83, v84, v85, v86, v75, v81, 44, 0, "invalid nil value for '%{public}s'", "footnoteMarkProvider");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v88, v89, v90, v91);
  if (!delegateCopy)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v20)
  {
LABEL_4:
    v25 = [TPFootnoteContainerLayout alloc];
    v26.n128_f64[0] = width;
    v27.n128_f64[0] = height;
    v28.n128_f64[0] = spacing;
    v31 = objc_msgSend_initWithFootnoteMarkProvider_vertical_lineWidth_maxFootnoteBlockHeight_footnoteSpacing_(v25, v29, v26, v27, v28, v30, providerCopy, verticalCopy);
    footnoteContainerLayout = v20->_footnoteContainerLayout;
    v20->_footnoteContainerLayout = v31;

    objc_storeWeak(&v20->_documentRoot, rootCopy);
    v33 = objc_alloc(MEMORY[0x277D801E0]);
    v34 = objc_opt_class();
    v40 = objc_msgSend_initWithLayoutControllerClass_delegate_(v33, v35, v36, v37, v38, v39, v34, v20);
    canvas = v20->_canvas;
    v20->_canvas = v40;

    v47 = objc_msgSend_layoutController(v20->_canvas, v42, v43, v44, v45, v46);
    v53 = objc_msgSend_rootLayout(v47, v48, v49, v50, v51, v52);
    v111[0] = v20->_footnoteContainerLayout;
    v59 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v54, v55, v56, v57, v58, v111, 1);
    objc_msgSend_setChildren_(v53, v60, v61, v62, v63, v64, v59);

    v65 = objc_alloc(MEMORY[0x277D81218]);
    v71 = objc_msgSend_initWithMaxSize_(v65, v66, v67, v68, v69, v70, 5);
    footnoteLayoutCache = v20->_footnoteLayoutCache;
    v20->_footnoteLayoutCache = v71;

    objc_storeWeak(&v20->_pageDelegate, delegateCopy);
  }

LABEL_5:

  return v20;
}

- (void)tearDown
{
  v7 = objc_msgSend_layoutController(self->_canvas, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_rootLayout(v7, v8, v9, v10, v11, v12);
  objc_msgSend_setChildren_(v13, v14, v15, v16, v17, v18, MEMORY[0x277CBEBF8]);

  canvas = self->_canvas;

  objc_msgSend_teardown(canvas, v19, v20, v21, v22, v23);
}

- (void)addFootnoteReferenceStorage:(id)storage
{
  v77 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  if (!storageCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, v9, "[TPFootnoteHeightMeasurer addFootnoteReferenceStorage:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteHeightMeasurer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v18, v19, v20, v21, v22, v11, v17, 85, 0, "invalid nil value for '%{public}s'", "storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26, v27);
  }

  v28 = objc_msgSend_objectForKey_(self->_footnoteLayoutCache, v4, v6, v7, v8, v9, storageCopy);
  if (v28)
  {
    v34 = v28;
    objc_msgSend_addFootnoteLayout_(self->_footnoteContainerLayout, v29, v30, v31, v32, v33, v28);
    v35 = objc_alloc_init(MEMORY[0x277CBEB58]);
    objc_msgSend_recursivelyAddLayoutAndChildrenToSet_(v34, v36, v37, v38, v39, v40, v35);
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v41 = v35;
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, v43, v44, v45, v46, &v72, v76, 16);
    if (v47)
    {
      v53 = v47;
      v54 = *v73;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v73 != v54)
          {
            objc_enumerationMutation(v41);
          }

          objc_msgSend_invalidateChildren(*(*(&v72 + 1) + 8 * i), v48, v49, v50, v51, v52);
        }

        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v48, v49, v50, v51, v52, &v72, v76, 16);
      }

      while (v53);
    }
  }

  else
  {
    v56 = objc_alloc(objc_msgSend_layoutClass(storageCopy, v29, v30, v31, v32, v33));
    v34 = objc_msgSend_initWithInfo_(v56, v57, v58, v59, v60, v61, storageCopy);
    objc_msgSend_setObject_forKey_(self->_footnoteLayoutCache, v62, v63, v64, v65, v66, v34, storageCopy);
    objc_msgSend_addFootnoteLayout_(self->_footnoteContainerLayout, v67, v68, v69, v70, v71, v34);
  }
}

- (void)removeFootnoteReferenceStorage:(id)storage
{
  storageCopy = storage;
  v32 = storageCopy;
  if (!storageCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, v5, v6, v7, v8, "[TPFootnoteHeightMeasurer removeFootnoteReferenceStorage:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteHeightMeasurer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v17, v18, v19, v20, v21, v10, v16, 111, 0, "invalid nil value for '%{public}s'", "storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25, v26);
    storageCopy = 0;
  }

  objc_msgSend_removeObjectForKey_(self->_footnoteLayoutCache, storageCopy, v5, v6, v7, v8, storageCopy);
  objc_msgSend_removeFootnoteLayoutWithInfo_(self->_footnoteContainerLayout, v27, v28, v29, v30, v31, v32);
}

- (void)removeAllFootnoteReferenceStorages
{
  objc_msgSend_isEmpty(self->_footnoteContainerLayout, a2, v2, v3, v4, v5);
  footnoteContainerLayout = self->_footnoteContainerLayout;

  objc_msgSend_removeAllFootnoteLayouts(footnoteContainerLayout, v7, v8, v9, v10, v11);
}

- (BOOL)canHaveFootnotesFromPreviousTarget:(id)target
{
  targetCopy = target;
  WeakRetained = objc_loadWeakRetained(&self->_pageDelegate);
  HaveFootnotesFromPreviousTarget = objc_msgSend_canHaveFootnotesFromPreviousTarget_(WeakRetained, v6, v7, v8, v9, v10, targetCopy);

  return HaveFootnotesFromPreviousTarget;
}

- (BOOL)footnoteContainerIsOnSamePageAsTarget:(id)target
{
  targetCopy = target;
  WeakRetained = objc_loadWeakRetained(&self->_pageDelegate);
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_pageDelegate);
    isFootnoteContainerOnSamePageAsTarget = objc_msgSend_isFootnoteContainerOnSamePageAsTarget_(v6, v7, v8, v9, v10, v11, targetCopy);
  }

  else
  {
    isFootnoteContainerOnSamePageAsTarget = 1;
  }

  return isFootnoteContainerOnSamePageAsTarget;
}

- (BOOL)footnoteContainerFitsForTarget:(id)target
{
  targetCopy = target;
  footnoteContainerLayout = self->_footnoteContainerLayout;
  if (footnoteContainerLayout && (objc_msgSend_isEmpty(footnoteContainerLayout, v4, v6, v7, v8, v9) & 1) == 0)
  {
    v17 = objc_msgSend_layoutController(self->_canvas, v11, v12, v13, v14, v15);
    objc_msgSend_validateLayoutWithDependencies_(v17, v18, v19, v20, v21, v22, self->_footnoteContainerLayout);

    objc_msgSend_blockHeight(self->_footnoteContainerLayout, v23, v24, v25, v26, v27);
    v29 = v28.n128_f64[0];
    objc_msgSend_maxBlockHeight(self->_footnoteContainerLayout, v30, v28, v31, v32, v33);
    v16 = v29 <= v34;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)setContainerLineWidth:(double)width
{
  objc_msgSend_setLineWidth_(self->_footnoteContainerLayout, a2, *&width, v3, v4, v5);

  MEMORY[0x2821F9670](self, sel_p_clearFootnoteLayoutCache, v7, v8, v9, v10);
}

- (void)setFootnoteSpacing:(int64_t)spacing
{
  objc_msgSend_setFootnoteSpacing_(self->_footnoteContainerLayout, a2, v3, v4, v5, v6, spacing);

  MEMORY[0x2821F9670](self, sel_p_clearFootnoteLayoutCache, v8, v9, v10, v11);
}

- (id)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

  return WeakRetained;
}

- (double)footnoteBlockHeightForTarget:(id)target
{
  targetCopy = target;
  footnoteContainerLayout = self->_footnoteContainerLayout;
  v11 = 0.0;
  if (footnoteContainerLayout)
  {
    if ((objc_msgSend_isEmpty(footnoteContainerLayout, v4, v6, v7, v8, v9) & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_pageDelegate);
      isFootnoteContainerOnSamePageAsTarget = objc_msgSend_isFootnoteContainerOnSamePageAsTarget_(WeakRetained, v13, v14, v15, v16, v17, targetCopy);

      if (isFootnoteContainerOnSamePageAsTarget)
      {
        v19 = objc_msgSend_layoutController(self->_canvas, v4, v6, v7, v8, v9);
        objc_msgSend_validateLayoutWithDependencies_(v19, v20, v21, v22, v23, v24, self->_footnoteContainerLayout);

        objc_msgSend_blockHeight(self->_footnoteContainerLayout, v25, v26, v27, v28, v29);
        v11 = v6.n128_f64[0];
      }
    }
  }

  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v30 = 0x7FEFFFFFFFFFFFFFLL;
    v6.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
    if (v11 > 0.0 && v11 > 1.79769313e308)
    {
      v34 = "Out-of-bounds type assignment was clamped to max";
LABEL_17:
      v11 = *&v30;
      v35 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, v9, "[TPFootnoteHeightMeasurer footnoteBlockHeightForTarget:]");
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteHeightMeasurer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v43, v44, v45, v46, v47, v36, v42, 139, 0, v34);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51, v52);
      goto LABEL_15;
    }

    v30 = 0xFFEFFFFFFFFFFFFFLL;
    v6.n128_u64[0] = 0xFFEFFFFFFFFFFFFFLL;
    if (v11 < 0.0 && v11 < -1.79769313e308)
    {
      v34 = "Out-of-bounds type assignment was clamped to min";
      goto LABEL_17;
    }
  }

LABEL_15:

  return v11;
}

@end