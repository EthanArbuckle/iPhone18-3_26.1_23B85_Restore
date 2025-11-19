@interface TSDDefaultPartitioner
- (BOOL)didHint:(id)a3 syncWithNextHint:(id)a4 horizontally:(BOOL)a5;
- (CGRect)totalPartitionFrame;
- (TSDDefaultPartitioner)initWithInfo:(id)a3;
- (TSDLayout)i_layout;
- (id)documentRoot;
- (id)hintForLayout:(id)a3;
- (id)i_repForCanvas:(id)a3;
- (id)layoutForHint:(id)a3 parentLayout:(id)a4;
- (id)nextHintForSize:(CGSize)a3 parentLayout:(id)a4 previousHint:(id)a5 horizontally:(BOOL)a6 outFinished:(BOOL *)a7;
- (id)nextLayoutForSize:(CGSize)a3 parentLayout:(id)a4 previousHint:(id)a5 horizontally:(BOOL)a6 outFinished:(BOOL *)a7;
- (id)p_childRepForRep:(id)a3 toNotifyForInfo:(id)a4;
- (id)p_firstHintForSize:(CGSize)a3;
- (id)p_layoutsForInfo:(id)a3;
- (id)p_nextHintForSize:(CGSize)a3 previousHint:(id)a4 horizontally:(BOOL)a5;
- (id)p_repsForInfo:(id)a3;
- (unint64_t)p_edgesForHintBounds:(CGRect)a3;
- (void)dealloc;
- (void)i_forceLayoutForChangedCanvasPrintingSettingsOfCanvas:(id)a3;
- (void)i_layoutRegistered:(id)a3;
- (void)i_layoutUnregistered:(id)a3;
- (void)i_registerPartialRep:(id)a3;
- (void)i_unregisterPartialRep:(id)a3;
- (void)p_generateLayouts;
- (void)p_generateLayoutsIfNeeded;
- (void)p_teardownLayouts;
- (void)preprocessChanges:(id)a3 forChangeSource:(id)a4;
- (void)processChanges:(id)a3 forChangeSource:(id)a4;
- (void)reset;
@end

@implementation TSDDefaultPartitioner

- (TSDDefaultPartitioner)initWithInfo:(id)a3
{
  v5 = a3;
  v8 = objc_msgSend_documentRoot(v5, v6, v7);
  v19.receiver = self;
  v19.super_class = TSDDefaultPartitioner;
  v9 = [(TSDLayoutChangeObserver *)&v19 initWithDocumentRoot:v8 layoutController:0];

  if (v9)
  {
    objc_storeStrong(&v9->_info, a3);
    objc_msgSend_p_generateLayouts(v9, v10, v11);
    v12 = objc_alloc_init(MEMORY[0x277D812B8]);
    mainRepsByCanvas = v9->_mainRepsByCanvas;
    v9->_mainRepsByCanvas = v12;

    v14 = objc_alloc_init(MEMORY[0x277D812B8]);
    cachedImagesByCanvas = v9->_cachedImagesByCanvas;
    v9->_cachedImagesByCanvas = v14;

    v16 = objc_alloc_init(MEMORY[0x277D812B8]);
    partialRepsByCanvas = v9->_partialRepsByCanvas;
    v9->_partialRepsByCanvas = v16;
  }

  return v9;
}

- (void)dealloc
{
  objc_msgSend_p_teardownLayouts(self, a2, v2);
  v4.receiver = self;
  v4.super_class = TSDDefaultPartitioner;
  [(TSDDefaultPartitioner *)&v4 dealloc];
}

- (id)hintForLayout:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    objc_msgSend_bounds(v5, v6, v7);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v18 = objc_msgSend_p_edgesForHintBounds_(self, v16, v17);
    v19 = [TSDDefaultHint alloc];
    v21 = objc_msgSend_initWithBounds_edges_(v19, v20, v18, v9, v11, v13, v15);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)didHint:(id)a3 syncWithNextHint:(id)a4 horizontally:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  objc_opt_class();
  v9 = TSUDynamicCast();

  objc_opt_class();
  v10 = TSUDynamicCast();

  if (v9)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    objc_msgSend_bounds(v9, v11, v12);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    objc_msgSend_bounds(v10, v15, v16);
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = v18;
    v34 = v20;
    v35 = v22;
    v36 = v24;
    if (v5)
    {
      MaxX = CGRectGetMaxX(*&v33);
      v40.origin.x = v26;
      v40.origin.y = v28;
      v40.size.width = v30;
      v40.size.height = v32;
      MinX = CGRectGetMinX(v40);
    }

    else
    {
      MaxX = CGRectGetMaxY(*&v33);
      v41.origin.x = v26;
      v41.origin.y = v28;
      v41.size.width = v30;
      v41.size.height = v32;
      MinX = CGRectGetMinY(v41);
    }

    v14 = vabdd_f64(MaxX, MinX) < 0.00999999978 || MaxX == MinX;
  }

  return v14;
}

- (id)layoutForHint:(id)a3 parentLayout:(id)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();

  if (v6)
  {
    v7 = [TSDPartitionedPartialLayout alloc];
    info = self->_info;
    objc_msgSend_bounds(v6, v9, v10);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v21 = objc_msgSend_documentRoot(self, v19, v20);
    v24 = objc_msgSend_documentLocale(v21, v22, v23);
    isLanguageCharacterDirectionRightToLeft = objc_msgSend_isLanguageCharacterDirectionRightToLeft(v24, v25, v26);
    isLayoutRTL = objc_msgSend_initWithInfo_bounds_partitioner_isLayoutRTL_(v7, v28, info, self, isLanguageCharacterDirectionRightToLeft, v12, v14, v16, v18);

    objc_msgSend_validate(isLayoutRTL, v30, v31);
  }

  else
  {
    isLayoutRTL = 0;
  }

  return isLayoutRTL;
}

- (id)nextHintForSize:(CGSize)a3 parentLayout:(id)a4 previousHint:(id)a5 horizontally:(BOOL)a6 outFinished:(BOOL *)a7
{
  v8 = a6;
  height = a3.height;
  width = a3.width;
  v43 = *MEMORY[0x277D85DE8];
  v12 = a5;
  objc_msgSend_nonInteractiveLayoutIfNeeded(self->_canvas, v13, v14);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = objc_msgSend_layoutController(self->_canvas, v15, v16, 0);
  v20 = objc_msgSend_rootLayout(v17, v18, v19);
  v23 = objc_msgSend_children(v20, v21, v22);

  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v38, v42, 16);
  if (v25)
  {
    v28 = v25;
    v29 = *v39;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(v23);
        }

        objc_msgSend_updateLayoutGeometryInPreparationForPartitioning(*(*(&v38 + 1) + 8 * i), v26, v27);
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v38, v42, 16);
    }

    while (v28);
  }

  if (v12)
  {
    objc_msgSend_p_nextHintForSize_previousHint_horizontally_(self, v31, v12, v8, width, height);
  }

  else
  {
    objc_msgSend_p_firstHintForSize_(self, v31, v32, width, height);
  }
  v33 = ;
  v35 = v33;
  if (a7)
  {
    if (v33)
    {
      isLastPartitionHorizontally = objc_msgSend_isLastPartitionHorizontally_(v33, v34, v8);
    }

    else
    {
      isLastPartitionHorizontally = 1;
    }

    *a7 = isLastPartitionHorizontally;
  }

  return v35;
}

- (id)nextLayoutForSize:(CGSize)a3 parentLayout:(id)a4 previousHint:(id)a5 horizontally:(BOOL)a6 outFinished:(BOOL *)a7
{
  v8 = a6;
  height = a3.height;
  width = a3.width;
  v13 = a4;
  v15 = objc_msgSend_nextHintForSize_parentLayout_previousHint_horizontally_outFinished_(self, v14, v13, a5, v8, a7, width, height);
  v17 = objc_msgSend_layoutForHint_parentLayout_(self, v16, v15, v13);

  return v17;
}

- (void)reset
{
  v24 = *MEMORY[0x277D85DE8];
  objc_msgSend_p_teardownLayouts(self, a2, v2);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = objc_msgSend_allValues(self->_mainRepsByCanvas, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v19, v23, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_performSelector_(*(*(&v19 + 1) + 8 * i), v9, sel_i_willBeRemoved);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v19, v23, 16);
    }

    while (v10);
  }

  objc_msgSend_removeAllObjects(self->_mainRepsByCanvas, v13, v14);
  objc_msgSend_removeAllObjects(self->_cachedImagesByCanvas, v15, v16);
  objc_msgSend_p_generateLayouts(self, v17, v18);
}

- (CGRect)totalPartitionFrame
{
  v3 = objc_msgSend_i_layout(self, a2, v2);
  objc_msgSend_frameForPartitioning(v3, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)documentRoot
{
  v3 = objc_msgSend_context(self->_info, a2, v2);
  v6 = objc_msgSend_tsck_documentRoot(v3, v4, v5);

  return v6;
}

- (TSDLayout)i_layout
{
  objc_msgSend_p_generateLayoutsIfNeeded(self, a2, v2);
  v6 = objc_msgSend_layoutController(self->_canvas, v4, v5);
  v8 = objc_msgSend_layoutForInfo_(v6, v7, self->_info);

  return v8;
}

- (id)i_repForCanvas:(id)a3
{
  v4 = a3;
  objc_msgSend_i_forceLayoutForChangedCanvasPrintingSettingsOfCanvas_(self, v5, v4);
  v9 = objc_msgSend_objectForKey_(self->_mainRepsByCanvas, v6, v4);
  if (!v9)
  {
    v10 = objc_msgSend_i_layout(self, v7, v8);
    v13 = objc_alloc(objc_msgSend_repClassOverride(v10, v11, v12));
    v9 = objc_msgSend_initWithLayout_canvas_(v13, v14, v10, v4);
    objc_msgSend_setObject_forUncopiedKey_(self->_mainRepsByCanvas, v15, v9, v4);
  }

  objc_msgSend_updateChildrenFromLayout(v9, v7, v8);
  objc_msgSend_recursivelyPerformSelector_(v9, v16, sel_updateFromLayout);

  return v9;
}

- (void)i_registerPartialRep:(id)a3
{
  v4 = a3;
  v15 = objc_msgSend_canvas(v4, v5, v6);
  v9 = objc_msgSend_objectForKey_(self->_partialRepsByCanvas, v7, v15);
  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    objc_msgSend_setObject_forUncopiedKey_(self->_partialRepsByCanvas, v10, v9, v15);
  }

  objc_msgSend_addObject_(v9, v8, v4);
  v13 = objc_msgSend_canvas(v4, v11, v12);

  objc_msgSend_i_forceLayoutForChangedCanvasPrintingSettingsOfCanvas_(self, v14, v13);
}

- (void)i_unregisterPartialRep:(id)a3
{
  v34 = a3;
  v6 = objc_msgSend_canvas(v34, v4, v5);
  v8 = objc_msgSend_objectForKey_(self->_partialRepsByCanvas, v7, v6);
  if ((objc_msgSend_containsObject_(v8, v9, v34) & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSDDefaultPartitioner i_unregisterPartialRep:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDefaultPartitioner.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 327, 0, "Unregistering unregistered rep %@", v34);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  objc_msgSend_removeObject_(v8, v10, v34);
  v20 = objc_msgSend_canvas(v34, v18, v19);
  objc_msgSend_i_forceLayoutForChangedCanvasPrintingSettingsOfCanvas_(self, v21, v20);

  if (!objc_msgSend_count(v8, v22, v23))
  {
    objc_msgSend_removeObjectForKey_(self->_partialRepsByCanvas, v24, v6);
    v26 = objc_msgSend_objectForKey_(self->_mainRepsByCanvas, v25, v6);
    objc_msgSend_recursivelyPerformSelector_(v26, v27, sel_i_willBeRemoved);
    objc_msgSend_removeObjectForKey_(self->_mainRepsByCanvas, v28, v6);
    objc_msgSend_removeObjectForKey_(self->_cachedImagesByCanvas, v29, v6);
    if (!objc_msgSend_count(self->_mainRepsByCanvas, v30, v31))
    {
      objc_msgSend_p_teardownLayouts(self, v32, v33);
    }
  }
}

- (void)i_forceLayoutForChangedCanvasPrintingSettingsOfCanvas:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_msgSend_p_generateLayoutsIfNeeded(self, v5, v6);
  v7 = [TSDDefaultPartitionerPrintingSettings alloc];
  v10 = objc_msgSend_initWithCanvas_(v7, v8, v4);
  lastPrintingSettings = self->_lastPrintingSettings;
  if (!lastPrintingSettings || (objc_msgSend_isEqual_(lastPrintingSettings, v9, v10) & 1) == 0)
  {
    objc_storeStrong(&self->_lastPrintingSettings, v10);
    v14 = objc_msgSend_layoutController(self->_canvas, v12, v13);
    objc_msgSend_i_enumerateLayoutsUsingBlock_(v14, v15, &unk_288574EC8);

    v18 = objc_msgSend_layoutController(self->_canvas, v16, v17);
    objc_msgSend_validateLayouts(v18, v19, v20);

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v23 = objc_msgSend_layoutController(self->_canvas, v21, v22, 0);
    v26 = objc_msgSend_rootLayout(v23, v24, v25);
    v29 = objc_msgSend_children(v26, v27, v28);

    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v37, v41, 16);
    if (v31)
    {
      v34 = v31;
      v35 = *v38;
      do
      {
        v36 = 0;
        do
        {
          if (*v38 != v35)
          {
            objc_enumerationMutation(v29);
          }

          objc_msgSend_updateLayoutGeometryInPreparationForPartitioning(*(*(&v37 + 1) + 8 * v36++), v32, v33);
        }

        while (v34 != v36);
        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v37, v41, 16);
      }

      while (v34);
    }
  }
}

- (void)p_generateLayouts
{
  v59[1] = *MEMORY[0x277D85DE8];
  if (self->_canvas)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDDefaultPartitioner p_generateLayouts]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDefaultPartitioner.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 369, 0, "Can not generate layouts when they’re already present.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v10 = objc_alloc_init(TSDCanvas);
  canvas = self->_canvas;
  self->_canvas = v10;

  objc_msgSend_setDelegate_(self->_canvas, v12, self);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = self->_info;
    v16 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v15, v14);
    v19 = objc_msgSend_connectedFrom(v14, v17, v18);

    if (v19)
    {
      v22 = objc_msgSend_connectedFrom(v14, v20, v21);
      objc_msgSend_addObject_(v16, v23, v22);
    }

    v24 = objc_msgSend_connectedTo(v14, v20, v21);

    if (v24)
    {
      v27 = objc_msgSend_connectedTo(v14, v25, v26);
      objc_msgSend_addObject_(v16, v28, v27);
    }
  }

  else
  {
    v59[0] = self->_info;
    v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v59, 1);
  }

  v31 = objc_msgSend_layoutController(self->_canvas, v29, v30);
  objc_msgSend_setInfos_(v31, v32, v16);

  v35 = objc_msgSend_layoutController(self->_canvas, v33, v34);
  objc_msgSend_validateLayouts(v35, v36, v37);

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v40 = objc_msgSend_layoutController(self->_canvas, v38, v39, 0);
  v43 = objc_msgSend_rootLayout(v40, v41, v42);
  v46 = objc_msgSend_children(v43, v44, v45);

  v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v54, v58, 16);
  if (v48)
  {
    v51 = v48;
    v52 = *v55;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v55 != v52)
        {
          objc_enumerationMutation(v46);
        }

        objc_msgSend_updateLayoutGeometryInPreparationForPartitioning(*(*(&v54 + 1) + 8 * i), v49, v50);
      }

      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v49, &v54, v58, 16);
    }

    while (v51);
  }
}

- (void)p_generateLayoutsIfNeeded
{
  if (!self->_canvas)
  {
    objc_msgSend_p_generateLayouts(self, a2, v2);
  }
}

- (void)p_teardownLayouts
{
  objc_msgSend_teardown(self->_canvas, a2, v2);
  canvas = self->_canvas;
  self->_canvas = 0;
}

- (id)p_firstHintForSize:(CGSize)a3
{
  objc_msgSend_totalPartitionFrame(self, a2, v3);
  TSURectWithSize();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v15 = objc_msgSend_p_edgesForHintBounds_(self, v13, v14);
  v16 = [TSDDefaultHint alloc];
  v18 = objc_msgSend_initWithBounds_edges_(v16, v17, v15, v6, v8, v10, v12);

  return v18;
}

- (id)p_nextHintForSize:(CGSize)a3 previousHint:(id)a4 horizontally:(BOOL)a5
{
  v5 = a5;
  height = a3.height;
  width = a3.width;
  v9 = a4;
  objc_opt_class();
  v10 = TSUDynamicCast();

  if (!v10)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSDDefaultPartitioner p_nextHintForSize:previousHint:horizontally:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDefaultPartitioner.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 440, 0, "invalid nil value for '%{public}s'", "previousDefaultHint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  objc_msgSend_totalPartitionFrame(self, v11, v12);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  if (objc_msgSend_isLastPartitionHorizontally_(v10, v28, v5))
  {
    v31 = 0;
  }

  else
  {
    v56 = width;
    v57 = height;
    objc_msgSend_bounds(v10, v29, v30);
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = v21;
    v41 = v23;
    v42 = v25;
    v43 = v27;
    if (v5)
    {
      v44 = CGRectGetWidth(*&v40);
      v59.origin.x = v33;
      v59.origin.y = v35;
      v59.size.width = v37;
      v59.size.height = v39;
      v45 = fmin(v44 - CGRectGetMaxX(v59), v56);
      v60.origin.x = v33;
      v60.origin.y = v35;
      v60.size.width = v37;
      v60.size.height = v39;
      MaxX = CGRectGetMaxX(v60);
      v61.origin.x = v33;
      v61.origin.y = v35;
      v61.size.width = v37;
      v61.size.height = v39;
      MinY = CGRectGetMinY(v61);
      v62.origin.x = v33;
      v62.origin.y = v35;
      v62.size.width = v37;
      v62.size.height = v39;
      v50 = CGRectGetHeight(v62);
    }

    else
    {
      v51 = CGRectGetHeight(*&v40);
      v63.origin.x = v33;
      v63.origin.y = v35;
      v63.size.width = v37;
      v63.size.height = v39;
      v50 = fmin(v51 - CGRectGetMaxY(v63), v57);
      v64.origin.x = v33;
      v64.origin.y = v35;
      v64.size.width = v37;
      v64.size.height = v39;
      MaxX = CGRectGetMinX(v64);
      v65.origin.x = v33;
      v65.origin.y = v35;
      v65.size.width = v37;
      v65.size.height = v39;
      MinY = CGRectGetMaxY(v65);
      v66.origin.x = v33;
      v66.origin.y = v35;
      v66.size.width = v37;
      v66.size.height = v39;
      v45 = CGRectGetWidth(v66);
    }

    v52 = objc_msgSend_p_edgesForHintBounds_(self, v48, v49, MaxX, MinY, v45, v50);
    v53 = [TSDDefaultHint alloc];
    v31 = objc_msgSend_initWithBounds_edges_(v53, v54, v52, MaxX, MinY, v45, v50);
  }

  return v31;
}

- (unint64_t)p_edgesForHintBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v34 = a3.origin.y;
  v7 = a3.origin.x;
  objc_msgSend_totalPartitionFrame(self, a2, v3);
  TSURectWithSize();
  v9 = v8;
  v35 = v10;
  v36 = v8;
  v12 = v11;
  v13 = v10;
  v31 = v14;
  v32 = height;
  v37.origin.x = v7;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v15 = height;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = v9;
  v38.origin.y = v12;
  v38.size.width = v13;
  v38.size.height = v31;
  v17 = CGRectGetMinX(v38);
  if (vabdd_f64(MinX, v17) < 0.00999999978 || MinX == v17)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  v39.origin.x = x;
  v39.origin.y = v34;
  v39.size.width = width;
  v39.size.height = v15;
  MaxX = CGRectGetMaxX(v39);
  v40.origin.x = v36;
  v40.origin.y = v12;
  v40.size.width = v35;
  v40.size.height = v31;
  v21 = CGRectGetMaxX(v40);
  if (vabdd_f64(MaxX, v21) < 0.00999999978 || MaxX == v21)
  {
    v19 |= 8uLL;
  }

  v41.origin.x = x;
  v41.origin.y = v34;
  v41.size.width = width;
  v41.size.height = v32;
  MinY = CGRectGetMinY(v41);
  v42.origin.x = v36;
  v42.origin.y = v12;
  v42.size.width = v35;
  v42.size.height = v31;
  v24 = CGRectGetMinY(v42);
  v25 = vabdd_f64(MinY, v24) < 0.00999999978 || MinY == v24;
  v26 = v19 | v25;
  v43.origin.x = x;
  v43.origin.y = v34;
  v43.size.width = width;
  v43.size.height = v32;
  MaxY = CGRectGetMaxY(v43);
  v44.origin.x = v36;
  v44.origin.y = v12;
  v44.size.width = v35;
  v44.size.height = v31;
  v28 = CGRectGetMaxY(v44);
  if (vabdd_f64(MaxY, v28) < 0.00999999978 || MaxY == v28)
  {
    return v26 | 4;
  }

  else
  {
    return v26;
  }
}

- (id)p_layoutsForInfo:(id)a3
{
  canvas = self->_canvas;
  v4 = a3;
  v7 = objc_msgSend_layoutController(canvas, v5, v6);
  v9 = objc_msgSend_layoutsForInfo_(v7, v8, v4);

  return v9;
}

- (id)p_repsForInfo:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_set(MEMORY[0x277CBEB58], v5, v6);
  v9 = objc_msgSend_p_layoutsForInfo_(self, v8, v4);
  v11 = v9;
  if (v9)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
    if (v12)
    {
      v14 = v12;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v18 = objc_msgSend_repForLayout_(self->_canvas, v13, *(*(&v20 + 1) + 8 * i));
          if (v18)
          {
            objc_msgSend_addObject_(v7, v17, v18);
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v20, v24, 16);
      }

      while (v14);
    }
  }

  return v7;
}

- (id)p_childRepForRep:(id)a3 toNotifyForInfo:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_info(v6, v8, v9);

  if (v10 == v7)
  {
    v21 = v6;
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = objc_msgSend_childReps(v6, v11, v12, 0);
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v23, v27, 16);
    if (v15)
    {
      v17 = v15;
      v18 = *v24;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = objc_msgSend_p_childRepForRep_toNotifyForInfo_(self, v16, *(*(&v23 + 1) + 8 * i), v7);
          if (v20)
          {
            v21 = v20;
            goto LABEL_12;
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v23, v27, 16);
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v21 = 0;
LABEL_12:
  }

  return v21;
}

- (void)i_layoutRegistered:(id)a3
{
  v4 = a3;
  v14 = objc_msgSend_documentRoot(self, v5, v6);
  v9 = objc_msgSend_changeNotifier(v14, v7, v8);
  v12 = objc_msgSend_info(v4, v10, v11);

  objc_msgSend_addObserver_forChangeSource_(v9, v13, self, v12);
}

- (void)i_layoutUnregistered:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_documentRoot(self, v5, v6);
  v10 = objc_msgSend_changeNotifier(v7, v8, v9);
  v13 = objc_msgSend_info(v4, v11, v12);
  objc_msgSend_removeObserver_forChangeSource_(v10, v14, self, v13);

  v17 = objc_msgSend_set(MEMORY[0x277CBEB58], v15, v16);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v20 = objc_msgSend_allValues(self->_mainRepsByCanvas, v18, v19);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v51, v56, 16);
  if (v22)
  {
    v25 = v22;
    v26 = *v52;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v52 != v26)
        {
          objc_enumerationMutation(v20);
        }

        v28 = *(*(&v51 + 1) + 8 * i);
        v29 = objc_msgSend_layout(v28, v23, v24);

        if (v29 == v4)
        {
          objc_msgSend_addObject_(v17, v23, v28);
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v51, v56, 16);
    }

    while (v25);
  }

  v46 = v4;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = v17;
  v32 = objc_msgSend_allObjects(v17, v30, v31);
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v47, v55, 16);
  if (v34)
  {
    v37 = v34;
    v38 = *v48;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v48 != v38)
        {
          objc_enumerationMutation(v32);
        }

        v40 = *(*(&v47 + 1) + 8 * j);
        v41 = objc_msgSend_canvas(v40, v35, v36);
        objc_msgSend_recursivelyPerformSelector_(v40, v42, sel_i_willBeRemoved);
        objc_msgSend_removeObjectForKey_(self->_mainRepsByCanvas, v43, v41);
        objc_msgSend_removeObjectForKey_(self->_cachedImagesByCanvas, v44, v41);
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v47, v55, 16);
    }

    while (v37);
  }
}

- (void)preprocessChanges:(id)a3 forChangeSource:(id)a4
{
  v9 = a3;
  v6 = TSUProtocolCast();
  if (v6)
  {
    v7 = objc_msgSend_p_layoutsForInfo_(self, v5, v6, &unk_2885A16B8);
    objc_msgSend_makeObjectsPerformSelector_withObject_(v7, v8, sel_processChanges_, v9);
  }
}

- (void)processChanges:(id)a3 forChangeSource:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v8 = TSUProtocolCast();
  if (v8)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = objc_msgSend_objectEnumerator(self->_mainRepsByCanvas, v6, v7, &unk_2885A16B8);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v18, v22, 16);
    if (v11)
    {
      v13 = v11;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = objc_msgSend_p_childRepForRep_toNotifyForInfo_(self, v12, *(*(&v18 + 1) + 8 * i), v8);
          objc_msgSend_performSelector_withObject_(v16, v17, sel_processChanges_, v5);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v18, v22, 16);
      }

      while (v13);
    }
  }
}

@end