@interface TNUIState
- (BOOL)hasPreviousVisibleRect;
- (BOOL)hasVisibleRect;
- (BOOL)isEqual:(id)a3;
- (CGPoint)previousScrollPosition;
- (CGPoint)scrollPosition;
- (CGRect)desktopWindowFrame;
- (CGRect)previousVisibleRect;
- (CGRect)visibleRect;
- (CGSize)desktopScreenSize;
- (NSString)description;
- (TNUIState)init;
- (TNUIState)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TNUIStateDelegate)delegate;
- (float)defaultViewScale;
- (float)p_calculateViewScaleForVisibleRect:(CGRect)a3;
- (float)previousViewScale;
- (float)viewScale;
- (float)viewScaleForSheet:(id)a3;
- (id)UIStateForChart:(id)a3;
- (id)archivedUIStateInContext:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)p_fixedUpSelectionPathForRestoration:(id)a3 forcingUnpagination:(BOOL)a4;
- (id)p_uiStateForActiveSheet;
- (id)uiStateForSheet:(id)a3;
- (int64_t)inspectorPaneHiddenState;
- (unint64_t)hash;
- (void)clearPreviousVisibleRect;
- (void)clearVisibleRect;
- (void)enumerateSheetUIStatesWithBlock:(id)a3;
- (void)fixupSelectionPathsForRestorationForcingUnpagination:(BOOL)a3;
- (void)p_enterPaginatedMode;
- (void)p_exitPaginatedMode;
- (void)resetForInitialViewing;
- (void)setInspectorPaneHiddenState:(int64_t)a3;
- (void)setPreviousVisibleRect:(CGRect)a3;
- (void)setPreviousVisibleRect:(CGRect)a3 forSheet:(id)a4;
- (void)setSelectionPath:(id)a3;
- (void)setUIState:(id)a3 forChart:(id)a4;
- (void)setVisibleRect:(CGRect)a3;
- (void)setVisibleRect:(CGRect)a3 forSheet:(id)a4;
@end

@implementation TNUIState

- (TNUIState)init
{
  v13.receiver = self;
  v13.super_class = TNUIState;
  v2 = [(TNUIState *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sheetUIStates = v2->_sheetUIStates;
    v2->_sheetUIStates = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    editModeSheetUIStates = v2->_editModeSheetUIStates;
    v2->_editModeSheetUIStates = v5;

    v2->_inspectorPaneIsVisible = 1;
    v2->_inspectorPaneViewMode = 0;
    v7 = objc_alloc_init(MEMORY[0x277CBEA60]);
    selectedQuickCalcFunctions = v2->_selectedQuickCalcFunctions;
    v2->_selectedQuickCalcFunctions = v7;

    v2->_showCanvasGuides = 1;
    *&v2->_showsComments = 0;
    v9 = *MEMORY[0x277CBF3A0];
    v2->_desktopWindowFrame.size = *(MEMORY[0x277CBF3A0] + 16);
    v2->_desktopScreenSize = *MEMORY[0x277CBF3A8];
    v2->_desktopWindowFrame.origin = v9;
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    chartUIState = v2->_chartUIState;
    v2->_chartUIState = v10;

    v2->_sidebarVisible = 0;
  }

  return v2;
}

- (CGPoint)scrollPosition
{
  v3 = objc_msgSend_p_uiStateForActiveSheet(self, a2, v2);
  objc_msgSend_visibleRect(v3, v4, v5);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)setVisibleRect:(CGRect)a3 forSheet:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = objc_msgSend_uiStateForSheet_(self, a2, a4);
  objc_msgSend_setVisibleRect_(v15, v9, v10, x, y, width, height);
  objc_msgSend_p_calculateViewScaleForVisibleRect_(self, v11, v12, x, y, width, height);
  objc_msgSend_setViewScale_(v15, v13, v14);
}

- (void)setVisibleRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = objc_msgSend_selectionPath(self, a2, v3);
  v11 = objc_msgSend_sheetSelection(v16, v9, v10);
  v14 = objc_msgSend_sheet(v11, v12, v13);
  objc_msgSend_setVisibleRect_forSheet_(self, v15, v14, x, y, width, height);
}

- (CGRect)visibleRect
{
  v4 = objc_msgSend_p_uiStateForActiveSheet(self, a2, v2);
  objc_msgSend_defaultViewScale(self, v5, v6);
  objc_msgSend_updateForCurrentDeviceIdiomIfNecessaryWithDefaultViewScale_(v4, v7, v8);
  objc_msgSend_visibleRect(v4, v9, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)clearVisibleRect
{
  v5 = objc_msgSend_p_uiStateForActiveSheet(self, a2, v2);
  objc_msgSend_clearVisibleRect(v5, v3, v4);
}

- (CGPoint)previousScrollPosition
{
  v3 = objc_msgSend_p_uiStateForActiveSheet(self, a2, v2);
  objc_msgSend_previousVisibleRect(v3, v4, v5);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)setPreviousVisibleRect:(CGRect)a3 forSheet:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = objc_msgSend_uiStateForSheet_(self, a2, a4);
  objc_msgSend_setPreviousVisibleRect_(v15, v9, v10, x, y, width, height);
  objc_msgSend_p_calculateViewScaleForVisibleRect_(self, v11, v12, x, y, width, height);
  objc_msgSend_setPreviousViewScale_(v15, v13, v14);
}

- (void)setPreviousVisibleRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = objc_msgSend_selectionPath(self, a2, v3);
  v11 = objc_msgSend_sheetSelection(v16, v9, v10);
  v14 = objc_msgSend_sheet(v11, v12, v13);
  objc_msgSend_setPreviousVisibleRect_forSheet_(self, v15, v14, x, y, width, height);
}

- (CGRect)previousVisibleRect
{
  v4 = objc_msgSend_p_uiStateForActiveSheet(self, a2, v2);
  objc_msgSend_defaultViewScale(self, v5, v6);
  objc_msgSend_updateForCurrentDeviceIdiomIfNecessaryWithDefaultViewScale_(v4, v7, v8);
  objc_msgSend_previousVisibleRect(v4, v9, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)clearPreviousVisibleRect
{
  v5 = objc_msgSend_p_uiStateForActiveSheet(self, a2, v2);
  objc_msgSend_clearPreviousVisibleRect(v5, v3, v4);
}

- (float)p_calculateViewScaleForVisibleRect:(CGRect)a3
{
  width = a3.size.width;
  v6 = objc_msgSend_delegate(self, a2, v3, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);

  if (!v6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TNUIState p_calculateViewScaleForVisibleRect:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNUIState.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 233, 0, "invalid nil value for '%{public}s'", "self.delegate");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_delegate(self, v7, v8);
  objc_msgSend_canvasScrollViewSize(v16, v17, v18);
  v20 = v19;

  v23 = objc_msgSend_selectionPath(self, v21, v22);
  v26 = objc_msgSend_sheetSelection(v23, v24, v25);
  isPaginated = objc_msgSend_isPaginated(v26, v27, v28);
  v30 = v20 / width;

  if (isPaginated)
  {
    return v30;
  }

  v32 = objc_opt_class();
  objc_msgSend_maximumViewScale(v32, v33, v34);
  *&v35 = v35;
  v36 = fminf(v30, *&v35);
  v37 = objc_opt_class();
  objc_msgSend_minimumViewScale(v37, v38, v39);
  *&v40 = v40;
  return fmaxf(v36, *&v40);
}

- (float)defaultViewScale
{
  if ((objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, v2) & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TNUIState defaultViewScale]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNUIState.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 247, 0, "Default view scale must be determined on the main thread.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v15 = 1.0;
  if (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v4, v5))
  {
    v16 = objc_msgSend_selectionPath(self, v13, v14);
    v19 = objc_msgSend_sheetSelection(v16, v17, v18);
    isPaginated = objc_msgSend_isPaginated(v19, v20, v21);

    v15 = 0.0;
    if (isPaginated)
    {
      v25 = objc_msgSend_delegate(self, v23, v24);

      if (!v25)
      {
        v28 = MEMORY[0x277D81150];
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TNUIState defaultViewScale]");
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNUIState.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 253, 0, "invalid nil value for '%{public}s'", "self.delegate");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
      }

      v35 = objc_msgSend_delegate(self, v26, v27);

      v15 = 1.0;
      if (v35)
      {
        v38 = objc_msgSend_delegate(self, v36, v37);
        objc_msgSend_printViewDefaultUserViewScale(v38, v39, v40);
        v42 = v41;
        v45 = objc_msgSend_delegate(self, v43, v44);
        objc_msgSend_canvasContentScale(v45, v46, v47);
        v15 = v42 * v48;
      }
    }
  }

  return v15;
}

- (float)viewScale
{
  v4 = objc_msgSend_selectionPath(self, a2, v2);
  v7 = objc_msgSend_sheetSelection(v4, v5, v6);
  v10 = objc_msgSend_sheet(v7, v8, v9);
  objc_msgSend_viewScaleForSheet_(self, v11, v10);
  v13 = v12;

  return v13;
}

- (float)viewScaleForSheet:(id)a3
{
  v4 = objc_msgSend_uiStateForSheet_(self, a2, a3);
  objc_msgSend_defaultViewScale(self, v5, v6);
  objc_msgSend_updateForCurrentDeviceIdiomIfNecessaryWithDefaultViewScale_(v4, v7, v8);
  objc_msgSend_viewScale(v4, v9, v10);
  v14 = v13;
  if (v13 <= 0.0)
  {
    objc_msgSend_defaultViewScale(self, v11, v12);
    v14 = v15;
  }

  return v14;
}

- (float)previousViewScale
{
  v4 = objc_msgSend_p_uiStateForActiveSheet(self, a2, v2);
  if (objc_msgSend_hasPreviousVisibleRect(v4, v5, v6))
  {
    v9 = objc_msgSend_archivedDeviceIdiom(v4, v7, v8);
    if (v9 == objc_msgSend_currentDeviceIdiom(TNSheetUIState, v10, v11))
    {
      objc_msgSend_previousViewScale(v4, v12, v13);
    }

    else
    {
      objc_msgSend_previousVisibleRect(v4, v12, v13);
      objc_msgSend_p_calculateViewScaleForVisibleRect_(self, v15, v16);
    }
  }

  else
  {
    objc_msgSend_defaultViewScale(self, v7, v8);
  }

  v17 = v14;

  return v17;
}

- (id)uiStateForSheet:(id)a3
{
  v3 = objc_msgSend_uiStateForSheet_createIfNeeded_(self, a2, a3, 1);

  return v3;
}

- (id)p_uiStateForActiveSheet
{
  v4 = objc_msgSend_selectionPath(self, a2, v2);
  v7 = objc_msgSend_sheetSelection(v4, v5, v6);
  v10 = objc_msgSend_sheet(v7, v8, v9);

  v12 = objc_msgSend_uiStateForSheet_(self, v11, v10);

  return v12;
}

- (id)UIStateForChart:(id)a3
{
  v4 = objc_msgSend_weakReferenceForObject_(MEMORY[0x277D80868], a2, a3);
  v7 = objc_msgSend_chartUIState(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v4);

  return v9;
}

- (void)setUIState:(id)a3 forChart:(id)a4
{
  v20 = a3;
  v6 = a4;
  v10 = objc_msgSend_chartUIState(self, v7, v8);
  if (!v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TNUIState setUIState:forChart:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNUIState.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 406, 0, "invalid nil value for '%{public}s'", "uis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v19 = objc_msgSend_weakReferenceForObject_(MEMORY[0x277D80868], v9, v6);
  if (v20)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v18, v20, v19);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(v10, v18, v19);
  }
}

- (BOOL)hasVisibleRect
{
  v3 = objc_msgSend_p_uiStateForActiveSheet(self, a2, v2);
  hasVisibleRect = objc_msgSend_hasVisibleRect(v3, v4, v5);

  return hasVisibleRect;
}

- (BOOL)hasPreviousVisibleRect
{
  v3 = objc_msgSend_p_uiStateForActiveSheet(self, a2, v2);
  hasPreviousVisibleRect = objc_msgSend_hasPreviousVisibleRect(v3, v4, v5);

  return hasPreviousVisibleRect;
}

- (void)setSelectionPath:(id)a3
{
  v32 = a3;
  v6 = objc_msgSend_copy(v32, v4, v5);
  v9 = objc_msgSend_sheetSelection(self->_selectionPath, v7, v8);
  v12 = objc_msgSend_sheetSelection(v32, v10, v11);
  if (objc_msgSend_isPaginated(v9, v13, v14))
  {
    isPaginated = 0;
  }

  else
  {
    isPaginated = objc_msgSend_isPaginated(v12, v15, v16);
  }

  if (objc_msgSend_isPaginated(v9, v15, v16))
  {
    v20 = objc_msgSend_isPaginated(v12, v18, v19) ^ 1;
  }

  else
  {
    v20 = 0;
  }

  v21 = objc_msgSend_selectionPathForUIState(v32, v18, v19);

  v22 = self->_selectionPath;
  v23 = v21;
  v33 = v23;
  if (v23 | v22)
  {
    isEqual = objc_msgSend_isEqual_(v22, v24, v23);
  }

  else
  {
    isEqual = 1;
  }

  if (isPaginated & 1 | ((isEqual & 1) == 0) | v20 & 1)
  {
    objc_storeStrong(&self->_selectionPath, v21);
    if (v9 != v12)
    {
      if (isPaginated)
      {
        objc_msgSend_p_enterPaginatedMode(self, v26, v27);
      }

      if (v20)
      {
        objc_msgSend_p_exitPaginatedMode(self, v26, v27);
      }
    }

    if (v12)
    {
      v28 = objc_msgSend_sheet(v12, v26, v27);
      v30 = objc_msgSend_uiStateForSheet_(self, v29, v28);

      objc_msgSend_setSelectionPath_(v30, v31, v6);
    }
  }
}

- (void)p_enterPaginatedMode
{
  self->_isInPaginatedMode = 1;
  v16 = objc_msgSend_editModeSheetUIStates(self, a2, v2);
  objc_msgSend_removeAllObjects(v16, v4, v5);

  v17 = objc_msgSend_editModeSheetUIStates(self, v6, v7);
  v10 = objc_msgSend_sheetUIStates(self, v8, v9);
  objc_msgSend_addEntriesFromDictionary_(v17, v11, v10);

  v18 = objc_msgSend_sheetUIStates(self, v12, v13);
  objc_msgSend_removeAllObjects(v18, v14, v15);
}

- (void)p_exitPaginatedMode
{
  v4 = objc_msgSend_sheetUIStates(self, a2, v2);
  v7 = objc_msgSend_copy(v4, v5, v6);

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_275F472D8;
  v21[3] = &unk_27A6A35C8;
  v21[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v7, v8, v21);
  v11 = objc_msgSend_sheetUIStates(self, v9, v10);
  v14 = objc_msgSend_editModeSheetUIStates(self, v12, v13);
  objc_msgSend_addEntriesFromDictionary_(v11, v15, v14);

  v18 = objc_msgSend_editModeSheetUIStates(self, v16, v17);
  objc_msgSend_removeAllObjects(v18, v19, v20);

  self->_isInPaginatedMode = 0;
}

- (void)setInspectorPaneHiddenState:(int64_t)a3
{
  if (a3 <= 2)
  {
    v5 = 1u >> (a3 & 7);
    objc_msgSend_setInspectorPaneIsAutoHidden_(self, a2, (4u >> (a3 & 7)) & 1);

    MEMORY[0x2821F9670](self, sel_setInspectorPaneIsVisible_, v5);
  }
}

- (int64_t)inspectorPaneHiddenState
{
  if (objc_msgSend_inspectorPaneIsAutoHidden(self, a2, v2))
  {
    return 2;
  }

  else
  {
    return objc_msgSend_inspectorPaneIsVisible(self, v4, v5) ^ 1;
  }
}

- (id)archivedUIStateInContext:(id)a3
{
  v4 = a3;
  v5 = [TNArchivedUIState alloc];
  v7 = objc_msgSend_initWithUIState_context_(v5, v6, self, v4);

  return v7;
}

- (NSString)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_selectionPath(self, a2, v2);
  v8 = objc_msgSend_sheetUIStates(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v4, v9, @"\n\nselectionPath = %@\nSheet UI States = %@\n\n", v5, v8);

  return v10;
}

- (TNUIState)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v27.receiver = self;
  v27.super_class = TNUIState;
  v7 = [(TNUIState *)&v27 init];
  v8 = v7;
  if (v7)
  {
    chartUIState = v7->_chartUIState;
    v10 = chartUIState ? chartUIState : objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = v8->_chartUIState;
    v8->_chartUIState = v10;

    v12 = *(a3 + 30);
    if (v12 >= 1)
    {
      v13 = 8;
      do
      {
        v14 = *(*(a3 + 16) + v13);
        v15 = objc_alloc(MEMORY[0x277D80038]);
        v17 = objc_msgSend_initWithArchive_(v15, v16, v14);
        v18 = *(v14 + 48);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = sub_275F47938;
        v24[3] = &unk_27A6A35F0;
        v25 = v8;
        v19 = v17;
        v26 = v19;
        v20 = v6;
        v22 = objc_opt_class();
        if (v18)
        {
          objc_msgSend_readWeakLazyReferenceMessage_class_protocol_completion_(v20, v21, v18, v22, 0, v24);
        }

        else
        {
          objc_msgSend_readWeakLazyReferenceMessage_class_protocol_completion_(v20, v21, MEMORY[0x277D80A18], v22, 0, v24);
        }

        v13 += 8;
        --v12;
      }

      while (v12);
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TNUIState);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_storeWeak(&v4->_delegate, WeakRetained);

  v8 = objc_msgSend_selectionPath(self, v6, v7);
  v11 = objc_msgSend_copy(v8, v9, v10);
  selectionPath = v4->_selectionPath;
  v4->_selectionPath = v11;

  v15 = objc_msgSend_sheetUIStates(self, v13, v14);
  v18 = objc_msgSend_mutableCopy(v15, v16, v17);
  sheetUIStates = v4->_sheetUIStates;
  v4->_sheetUIStates = v18;

  v22 = objc_msgSend_editModeSheetUIStates(self, v20, v21);
  v25 = objc_msgSend_mutableCopy(v22, v23, v24);
  editModeSheetUIStates = v4->_editModeSheetUIStates;
  v4->_editModeSheetUIStates = v25;

  v4->_documentMode = objc_msgSend_documentMode(self, v27, v28);
  v31 = objc_msgSend_chartUIState(self, v29, v30);
  v34 = objc_msgSend_mutableCopy(v31, v32, v33);
  chartUIState = v4->_chartUIState;
  v4->_chartUIState = v34;

  v4->_inspectorPaneIsVisible = objc_msgSend_inspectorPaneIsVisible(self, v36, v37);
  v4->_inspectorPaneIsAutoHidden = objc_msgSend_inspectorPaneIsAutoHidden(self, v38, v39);
  v4->_inspectorPaneViewMode = objc_msgSend_inspectorPaneViewMode(self, v40, v41);
  v44 = objc_msgSend_selectedQuickCalcFunctions(self, v42, v43);
  v47 = objc_msgSend_copy(v44, v45, v46);
  selectedQuickCalcFunctions = v4->_selectedQuickCalcFunctions;
  v4->_selectedQuickCalcFunctions = v47;

  v4->_removedAllQuickCalcFunctions = objc_msgSend_removedAllQuickCalcFunctions(self, v49, v50);
  v4->_showCanvasGuides = objc_msgSend_showCanvasGuides(self, v51, v52);
  v4->_showsComments = objc_msgSend_showsComments(self, v53, v54);
  v4->_showsRulers = objc_msgSend_showsRulers(self, v55, v56);
  v59 = objc_msgSend_copy(self->_freehandDrawingToolkitUIState, v57, v58);
  freehandDrawingToolkitUIState = v4->_freehandDrawingToolkitUIState;
  v4->_freehandDrawingToolkitUIState = v59;

  objc_msgSend_desktopWindowFrame(self, v61, v62);
  v4->_desktopWindowFrame.origin.x = v63;
  v4->_desktopWindowFrame.origin.y = v64;
  v4->_desktopWindowFrame.size.width = v65;
  v4->_desktopWindowFrame.size.height = v66;
  objc_msgSend_desktopScreenSize(self, v67, v68);
  v4->_desktopScreenSize.width = v69;
  v4->_desktopScreenSize.height = v70;
  v4->_editingDisabled = self->_editingDisabled;
  v4->_sidebarVisible = self->_sidebarVisible;
  v4->_sidebarWidth = self->_sidebarWidth;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  objc_opt_class();
  v10 = TSUDynamicCast();
  if (!v10)
  {
    LOBYTE(isEqual) = 0;
    goto LABEL_28;
  }

  v13 = objc_msgSend_selectionPath(self, v8, v9);
  if (v13 || (objc_msgSend_selectionPath(v10, v11, v12), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = objc_msgSend_selectionPath(self, v11, v12);
    v4 = objc_msgSend_selectionPath(v10, v14, v15);
    if (!objc_msgSend_isEqual_(v3, v16, v4))
    {
      LOBYTE(isEqual) = 0;
LABEL_24:

      goto LABEL_25;
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  v121 = v3;
  objc_msgSend_sheetUIStates(self, v11, v12);
  v119 = v123 = v17;
  v21 = objc_msgSend_sheetUIStates(v10, v19, v20);
  v22 = v119;
  v25 = v21;
  if (v22 | v25 && (v26 = objc_msgSend_isEqual_(v22, v23, v25), v25, v22, !v26))
  {

    LOBYTE(isEqual) = 0;
    if (v123)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v122 = v5;
    v120 = objc_msgSend_editModeSheetUIStates(self, v23, v24);
    v29 = objc_msgSend_editModeSheetUIStates(v10, v27, v28);
    v30 = v120;
    v33 = v29;
    if (!(v30 | v33) || (isEqual = objc_msgSend_isEqual_(v30, v31, v33), v33, v30, isEqual))
    {
      v34 = objc_msgSend_documentMode(self, v31, v32);
      if (v34 == objc_msgSend_documentMode(v10, v35, v36) && (IsVisible = objc_msgSend_inspectorPaneIsVisible(self, v37, v38), IsVisible == objc_msgSend_inspectorPaneIsVisible(v10, v40, v41)) && (IsAutoHidden = objc_msgSend_inspectorPaneIsAutoHidden(self, v42, v43), IsAutoHidden == objc_msgSend_inspectorPaneIsAutoHidden(v10, v45, v46)) && (v49 = objc_msgSend_inspectorPaneViewMode(self, v47, v48), v49 == objc_msgSend_inspectorPaneViewMode(v10, v50, v51)) && (v54 = objc_msgSend_removedAllQuickCalcFunctions(self, v52, v53), v54 == objc_msgSend_removedAllQuickCalcFunctions(v10, v55, v56)))
      {
        v118 = objc_msgSend_selectedQuickCalcFunctions(self, v57, v58);
        v117 = objc_msgSend_selectedQuickCalcFunctions(v10, v60, v61);
        if (objc_msgSend_isEqual_(v118, v62, v117) && (v65 = objc_msgSend_showCanvasGuides(self, v63, v64), v65 == objc_msgSend_showCanvasGuides(v10, v66, v67)) && (objc_msgSend_desktopWindowFrame(self, v68, v69), v71 = v70, v73 = v72, v75 = v74, v77 = v76, objc_msgSend_desktopWindowFrame(v10, v78, v79), v125.origin.x = v80, v125.origin.y = v81, v125.size.width = v82, v125.size.height = v83, v124.origin.x = v71, v124.origin.y = v73, v124.size.width = v75, v124.size.height = v77, CGRectEqualToRect(v124, v125)))
        {
          objc_msgSend_desktopScreenSize(self, v84, v85);
          v87 = v86;
          v89 = v88;
          objc_msgSend_desktopScreenSize(v10, v90, v91);
          LOBYTE(isEqual) = 0;
          if (v87 == v95 && v89 == v94)
          {
            v116 = objc_msgSend_chartUIState(self, v92, v93);
            v115 = objc_msgSend_chartUIState(v10, v96, v97);
            if (sub_275F4705C(v116, v115) && (v100 = objc_msgSend_editingDisabled(self, v98, v99), v100 == objc_msgSend_editingDisabled(v10, v101, v102)) && (v105 = objc_msgSend_sidebarVisible(self, v103, v104), v105 == objc_msgSend_sidebarVisible(v10, v106, v107)))
            {
              objc_msgSend_sidebarWidth(v10, v108, v109);
              v111 = v110;
              objc_msgSend_sidebarWidth(self, v112, v113);
              LOBYTE(isEqual) = vabdd_f64(v111, v114) < 0.00999999978 || v111 == v114;
            }

            else
            {
              LOBYTE(isEqual) = 0;
            }
          }
        }

        else
        {
          LOBYTE(isEqual) = 0;
        }
      }

      else
      {
        LOBYTE(isEqual) = 0;
      }
    }

    if (v123)
    {
      v5 = v122;
LABEL_23:
      v3 = v121;
      goto LABEL_24;
    }

    v5 = v122;
  }

LABEL_25:
  if (!v13)
  {
  }

LABEL_28:
  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_selectionPath(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_documentMode(self, v8, v9);

  v13 = objc_msgSend_sheetUIStates(self, v11, v12);
  v16 = objc_msgSend_count(v13, v14, v15);
  v17 = v10 + v7;

  if (v16)
  {
    v20 = objc_msgSend_sheetUIStates(self, v18, v19);
    v17 += objc_msgSend_hash(v20, v21, v22);
  }

  v23 = objc_msgSend_editModeSheetUIStates(self, v18, v19);
  v26 = objc_msgSend_count(v23, v24, v25);

  if (v26)
  {
    v29 = objc_msgSend_editModeSheetUIStates(self, v27, v28);
    v17 += objc_msgSend_hash(v29, v30, v31);
  }

  IsVisible = objc_msgSend_inspectorPaneIsVisible(self, v27, v28);
  v35 = 64;
  if (!IsVisible)
  {
    v35 = 0;
  }

  v36 = v35 | v17 | (objc_msgSend_inspectorPaneViewMode(self, v33, v34) << 7);
  if (objc_msgSend_inspectorPaneIsAutoHidden(self, v37, v38))
  {
    v41 = 512;
  }

  else
  {
    v41 = 0;
  }

  v42 = objc_msgSend_editingDisabled(self, v39, v40);
  v45 = 1024;
  if (!v42)
  {
    v45 = 0;
  }

  v46 = v41 | v45;
  v47 = objc_msgSend_sidebarVisible(self, v43, v44);
  v48 = 2048;
  if (!v47)
  {
    v48 = 0;
  }

  return v36 | v46 | v48;
}

- (void)enumerateSheetUIStatesWithBlock:(id)a3
{
  v4 = a3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_275F482E8;
  v15[3] = &unk_27A6A3618;
  v5 = v4;
  v16 = v5;
  v6 = MEMORY[0x277C91D00](v15);
  v9 = objc_msgSend_sheetUIStates(self, v7, v8);
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v10, v6);

  v13 = objc_msgSend_editModeSheetUIStates(self, v11, v12);
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v13, v14, v6);
}

- (void)fixupSelectionPathsForRestorationForcingUnpagination:(BOOL)a3
{
  v3 = a3;
  v31 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_selectionPath(self, a2, a3);
  v7 = objc_msgSend_p_fixedUpSelectionPathForRestoration_forcingUnpagination_(self, v6, v5, v3);
  objc_msgSend_setSelectionPath_(self, v8, v7);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = objc_msgSend_sheetUIStates(self, v9, v10, 0);
  v14 = objc_msgSend_allValues(v11, v12, v13);

  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v26, v30, 16);
  if (v18)
  {
    v19 = *v27;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v26 + 1) + 8 * i);
        v22 = objc_msgSend_selectionPath(v21, v16, v17);
        v24 = objc_msgSend_p_fixedUpSelectionPathForRestoration_forcingUnpagination_(self, v23, v22, v3);
        objc_msgSend_setSelectionPath_(v21, v25, v24);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v26, v30, 16);
    }

    while (v18);
  }
}

- (id)p_fixedUpSelectionPathForRestoration:(id)a3 forcingUnpagination:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v8 = objc_msgSend_sharedTableConfiguration(MEMORY[0x277D80D00], v6, v7);
  v11 = objc_msgSend_controlCellUIAlwaysVisible(v8, v9, v10);

  if (v11)
  {
    objc_msgSend_selectionPathByFixingUpControlCellSelection(v5, v12, v13);
    v5 = v14 = v5;
  }

  else
  {
    v14 = objc_msgSend_controlCellSelection(v5, v12, v13);
    if (v14)
    {
      v16 = objc_msgSend_selectionPathPoppingOffSelection_(v5, v15, v14);

      v5 = v16;
    }
  }

  if (v4)
  {
    v19 = objc_msgSend_sheetSelection(v5, v17, v18);
    if (objc_msgSend_isPaginated(v19, v20, v21))
    {
      v24 = objc_msgSend_sheet(v19, v22, v23);
      v26 = objc_msgSend_selectionForSheet_paginated_(TNSheetSelection, v25, v24, 0);

      v28 = objc_msgSend_selectionPathReplacingMostSpecificLocationOfSelection_withSelection_(v5, v27, v19, v26);

      v5 = v28;
    }
  }

  return v5;
}

- (void)resetForInitialViewing
{
  objc_msgSend_defaultViewScale(self, a2, v2);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_275F48800;
  v10[3] = &unk_27A6A3638;
  v11 = v4;
  objc_msgSend_enumerateSheetUIStatesWithBlock_(self, v5, v10);
  v8 = objc_msgSend_chartUIState(self, v6, v7);
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v8, v9, &unk_2884F6440);
}

- (TNUIStateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)desktopWindowFrame
{
  x = self->_desktopWindowFrame.origin.x;
  y = self->_desktopWindowFrame.origin.y;
  width = self->_desktopWindowFrame.size.width;
  height = self->_desktopWindowFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)desktopScreenSize
{
  width = self->_desktopScreenSize.width;
  height = self->_desktopScreenSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end