@interface KNUIState
- (CGPoint)canvasOffset;
- (CGPoint)desktopMainWindowOrigin;
- (CGSize)desktopMainContentSize;
- (KNSlideCollectionSelection)slideTreeSelection;
- (KNUIState)init;
- (NSString)debugDescription;
- (id)UIStateForChart:(id)a3;
- (id)archivedUIStateInContext:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4 context:(id)a5;
- (void)resetForInitialViewing;
- (void)setSelectionPath:(id)a3;
- (void)setSlideTreeSelection:(id)a3 withDocumentRoot:(id)a4;
- (void)setUIState:(id)a3 forChart:(id)a4;
- (void)updateOutlineStateFromSlideTree:(id)a3;
@end

@implementation KNUIState

- (KNUIState)init
{
  v8.receiver = self;
  v8.super_class = KNUIState;
  result = [(KNUIState *)&v8 init];
  if (result)
  {
    result->_mobileCanvasViewScale = 9.0;
    result->_desktopCanvasViewScale = 1.0;
    result->_showsMobileOutline = 0;
    result->_showSlideGuides = 1;
    *&result->_showsComments = 1;
    __asm { FMOV            V0.2D, #1.0 }

    *&result->_lightTableZoomScale = _Q0;
    *&result->_slideViewFitsContentInWindow = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(KNUIState, a2, a3);
  v7 = objc_msgSend_init(v4, v5, v6);
  objc_storeStrong((v7 + 88), self->_selectionPath);
  *(v7 + 8) = self->_mobileCanvasViewScale;
  *(v7 + 16) = self->_mobileCanvasOffset;
  *(v7 + 32) = self->_desktopCanvasViewScale;
  *(v7 + 40) = self->_desktopCanvasOffset;
  v10 = objc_msgSend_copy(self->_documentUILayout, v8, v9);
  v11 = *(v7 + 96);
  *(v7 + 96) = v10;

  *(v7 + 72) = self->_slideViewFitsContentInWindow;
  *(v7 + 104) = self->_lightTableZoomScale;
  *(v7 + 73) = self->_lightTableHidesSkippedSlides;
  *(v7 + 74) = self->_showsMobileLightTable;
  *(v7 + 112) = self->_mobileLightTableZoomScale;
  *(v7 + 75) = self->_mobileLightTableHidesSkippedSlides;
  *(v7 + 76) = self->_showsMobileOutline;
  *(v7 + 208) = self->_desktopMainWindowOrigin;
  *(v7 + 224) = self->_desktopMainContentSize;
  *(v7 + 120) = self->_desktopElementListViewWidth;
  *(v7 + 128) = self->_desktopActivityStreamViewWidth;
  *(v7 + 136) = self->_desktopNavigatorViewWidth;
  *(v7 + 144) = self->_desktopOutlineViewWidth;
  *(v7 + 152) = self->_desktopPresenterNotesHeight;
  *(v7 + 77) = self->_desktopOutlineViewDefaultFixed;
  v14 = objc_msgSend_mutableCopy(self->_chartUIState, v12, v13);
  v15 = *(v7 + 64);
  *(v7 + 64) = v14;

  v18 = objc_msgSend_copy(self->_collapsedSlideNodes, v16, v17);
  v19 = *(v7 + 168);
  *(v7 + 168) = v18;

  v22 = objc_msgSend_copy(self->_outlineCollapsedSlideNodes, v20, v21);
  v23 = *(v7 + 176);
  *(v7 + 176) = v22;

  v26 = objc_msgSend_copy(self->_outlineHasBodySlideNodes, v24, v25);
  v27 = *(v7 + 184);
  *(v7 + 184) = v26;

  *(v7 + 78) = self->_showSlideGuides;
  *(v7 + 79) = self->_showMasterGuides;
  *(v7 + 80) = self->_showsComments;
  *(v7 + 81) = self->_showsRuler;
  *(v7 + 82) = self->_commentsPrintingToggleEnabled;
  v30 = objc_msgSend_copy(self->_freehandDrawingToolkitUIState, v28, v29);
  v31 = *(v7 + 200);
  *(v7 + 200) = v30;

  v34 = objc_msgSend_copy(self->_elementListExpandedGroups, v32, v33);
  v35 = *(v7 + 192);
  *(v7 + 192) = v34;

  *(v7 + 56) = self->_editingDisabled;
  return v7;
}

- (void)setSelectionPath:(id)a3
{
  v5 = a3;
  selectionPath = self->_selectionPath;
  p_selectionPath = &self->_selectionPath;
  if (selectionPath != v5)
  {
    v8 = v5;
    objc_storeStrong(p_selectionPath, a3);
    v5 = v8;
  }
}

- (KNSlideCollectionSelection)slideTreeSelection
{
  v3 = objc_msgSend_selectionPath(self, a2, v2);
  v4 = objc_opt_class();
  v6 = objc_msgSend_mostSpecificSelectionOfClass_(v3, v5, v4);

  return v6;
}

- (void)setSlideTreeSelection:(id)a3 withDocumentRoot:(id)a4
{
  v28[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v8 = a4;
  if (!v6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNUIState setSlideTreeSelection:withDocumentRoot:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNUIState.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 180, 0, "invalid nil value for '%{public}s'", "slideTreeSelection");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_alloc(MEMORY[0x277D80670]);
  v18 = objc_msgSend_initWithDocumentRoot_(v16, v17, v8);
  v19 = MEMORY[0x277D806C8];
  v28[0] = v18;
  v28[1] = v6;
  v22 = objc_msgSend_emptySelection(KNCanvasSelection, v20, v21);
  v28[2] = v22;
  v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v23, v28, 3);
  v26 = objc_msgSend_selectionPathWithSelectionArray_(v19, v25, v24);

  objc_msgSend_setSelectionPath_(self, v27, v26);
}

- (CGPoint)canvasOffset
{
  x = self->_mobileCanvasOffset.x;
  y = self->_mobileCanvasOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)archivedUIStateInContext:(id)a3
{
  v4 = a3;
  v5 = [KNArchivedUIState alloc];
  v7 = objc_msgSend_initWithUIState_context_(v5, v6, self, v4);

  return v7;
}

- (void)updateOutlineStateFromSlideTree:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = objc_msgSend_slideNodes(v4, v7, v8, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v21, v25, 16);
  if (v13)
  {
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        if (objc_msgSend_isCollapsedInOutlineView(v16, v11, v12))
        {
          objc_msgSend_addObject_(v5, v17, v16);
        }

        if (objc_msgSend_hasBodyInOutlineView(v16, v17, v18))
        {
          objc_msgSend_addObject_(v6, v11, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v21, v25, 16);
    }

    while (v13);
  }

  objc_msgSend_setOutlineCollapsedSlideNodes_(self, v19, v5);
  objc_msgSend_setOutlineHasBodySlideNodes_(self, v20, v6);
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277D811A8];
  v4 = objc_opt_class();
  v6 = objc_msgSend_descriptionWithObject_class_format_(v3, v5, self, v4, @" ");
  v9 = objc_msgSend_slideTreeSelection(self, v7, v8);
  v12 = v9;
  if (v9)
  {
    objc_msgSend_description(v9, v10, v11);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"(%@*)<null>", @"slideTreeSelection");
  }
  v13 = ;

  objc_msgSend_addFieldValue_(v6, v14, v13);
  objc_msgSend_canvasViewScale(self, v15, v16);
  objc_msgSend_addField_format_(v6, v17, @"canvasViewScale", @"%lf", v18);
  objc_msgSend_canvasOffset(self, v19, v20);
  v21 = NSStringFromCGPoint(v95);
  objc_msgSend_addField_value_(v6, v22, @"canvasOffset", v21);

  v25 = objc_msgSend_documentUILayout(self, v23, v24);
  v28 = v25;
  if (v25)
  {
    objc_msgSend_description(v25, v26, v27);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"(%@*)<null>", @"documentUILayout");
  }
  v29 = ;

  objc_msgSend_addFieldValue_(v6, v30, v29);
  if (objc_msgSend_slideViewFitsContentInWindow(self, v31, v32))
  {
    objc_msgSend_addField_value_(v6, v33, @"slideViewFitsContentInWindow", @"YES");
  }

  else
  {
    objc_msgSend_addField_value_(v6, v33, @"slideViewFitsContentInWindow", @"NO");
  }

  objc_msgSend_lightTableZoomScale(self, v34, v35);
  objc_msgSend_addField_format_(v6, v36, @"lightTableZoomScale", @"%lf", v37);
  if (objc_msgSend_lightTableHidesSkippedSlides(self, v38, v39))
  {
    objc_msgSend_addField_value_(v6, v40, @"lightTableHidesSkippedSlides", @"YES");
  }

  else
  {
    objc_msgSend_addField_value_(v6, v40, @"lightTableHidesSkippedSlides", @"NO");
  }

  objc_msgSend_desktopMainWindowOrigin(self, v41, v42);
  v43 = NSStringFromCGPoint(v96);
  objc_msgSend_addField_value_(v6, v44, @"desktopMainWindowOrigin", v43);

  objc_msgSend_desktopMainContentSize(self, v45, v46);
  v47 = NSStringFromCGSize(v97);
  objc_msgSend_addField_value_(v6, v48, @"desktopMainContentSize", v47);

  objc_msgSend_desktopElementListViewWidth(self, v49, v50);
  objc_msgSend_addField_format_(v6, v51, @"desktopElementListViewWidth", @"%lf", v52);
  objc_msgSend_desktopActivityStreamViewWidth(self, v53, v54);
  objc_msgSend_addField_format_(v6, v55, @"desktopActivityStreamViewWidth", @"%lf", v56);
  objc_msgSend_desktopNavigatorViewWidth(self, v57, v58);
  objc_msgSend_addField_format_(v6, v59, @"desktopNavigatorViewWidth", @"%lf", v60);
  objc_msgSend_desktopOutlineViewWidth(self, v61, v62);
  objc_msgSend_addField_format_(v6, v63, @"desktopOutlineViewWidth", @"%lf", v64);
  objc_msgSend_desktopPresenterNotesHeight(self, v65, v66);
  objc_msgSend_addField_format_(v6, v67, @"desktopPresenterNotesHeight", @"%lf", v68);
  if (objc_msgSend_desktopOutlineViewDefaultFixed(self, v69, v70))
  {
    objc_msgSend_addField_value_(v6, v71, @"desktopOutlineViewDefaultFixed", @"YES");
  }

  else
  {
    objc_msgSend_addField_value_(v6, v71, @"desktopOutlineViewDefaultFixed", @"NO");
  }

  if (objc_msgSend_showSlideGuides(self, v72, v73))
  {
    objc_msgSend_addField_value_(v6, v74, @"showSlideGuides", @"YES");
  }

  else
  {
    objc_msgSend_addField_value_(v6, v74, @"showSlideGuides", @"NO");
  }

  if (objc_msgSend_showMasterGuides(self, v75, v76))
  {
    objc_msgSend_addField_value_(v6, v77, @"showMasterGuides", @"YES");
  }

  else
  {
    objc_msgSend_addField_value_(v6, v77, @"showMasterGuides", @"NO");
  }

  if (objc_msgSend_showsComments(self, v78, v79))
  {
    objc_msgSend_addField_value_(v6, v80, @"showsComments", @"YES");
  }

  else
  {
    objc_msgSend_addField_value_(v6, v80, @"showsComments", @"NO");
  }

  if (objc_msgSend_showsRuler(self, v81, v82))
  {
    objc_msgSend_addField_value_(v6, v83, @"showsRuler", @"YES");
  }

  else
  {
    objc_msgSend_addField_value_(v6, v83, @"showsRuler", @"NO");
  }

  if (objc_msgSend_commentsPrintingToggleEnabled(self, v84, v85))
  {
    objc_msgSend_addField_value_(v6, v86, @"commentsPrintingToggleEnabled", @"YES");
  }

  else
  {
    objc_msgSend_addField_value_(v6, v86, @"commentsPrintingToggleEnabled", @"NO");
  }

  if (objc_msgSend_editingDisabled(self, v87, v88))
  {
    objc_msgSend_addField_value_(v6, v89, @"editingDisabled", @"YES");
  }

  else
  {
    objc_msgSend_addField_value_(v6, v89, @"editingDisabled", @"NO");
  }

  v92 = objc_msgSend_descriptionString(v6, v90, v91);

  return v92;
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4 context:(id)a5
{
  v8 = a4;
  v23 = a5;
  v9 = *(a3 + 16);
  if (v9 >= 1)
  {
    v10 = 8;
    do
    {
      v11 = *(*(a3 + 9) + v10);
      chartUIState = self->_chartUIState;
      if (chartUIState)
      {
        v13 = chartUIState;
      }

      else
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v14 = self->_chartUIState;
      self->_chartUIState = v13;

      v15 = objc_alloc(MEMORY[0x277D80038]);
      v17 = objc_msgSend_initWithArchive_(v15, v16, v11);
      v18 = *(v11 + 48);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_275D8FFC0;
      v24[3] = &unk_27A698800;
      v24[4] = self;
      v19 = v17;
      v25 = v19;
      v20 = v8;
      v22 = objc_opt_class();
      if (v18)
      {
        objc_msgSend_readWeakLazyReferenceMessage_class_protocol_completion_(v20, v21, v18, v22, 0, v24);
      }

      else
      {
        objc_msgSend_readWeakLazyReferenceMessage_class_protocol_completion_(v20, v21, MEMORY[0x277D80A18], v22, 0, v24);
      }

      v10 += 8;
      --v9;
    }

    while (v9);
  }
}

- (void)resetForInitialViewing
{
  self->_mobileCanvasViewScale = 9.0;
  self->_mobileCanvasOffset = *MEMORY[0x277CBF348];
  self->_showsMobileLightTable = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *&self->_lightTableZoomScale = _Q0;
  self->_showsMobileOutline = 0;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(self->_chartUIState, a2, &unk_2884D4F50);

  objc_msgSend_setSelectionPath_(self, v8, 0);
}

- (CGPoint)desktopMainWindowOrigin
{
  x = self->_desktopMainWindowOrigin.x;
  y = self->_desktopMainWindowOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)desktopMainContentSize
{
  width = self->_desktopMainContentSize.width;
  height = self->_desktopMainContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)UIStateForChart:(id)a3
{
  v4 = objc_msgSend_weakReferenceForObject_(MEMORY[0x277D80868], a2, a3);
  v6 = objc_msgSend_objectForKey_(self->_chartUIState, v5, v4);

  return v6;
}

- (void)setUIState:(id)a3 forChart:(id)a4
{
  v12 = a3;
  v7 = objc_msgSend_weakReferenceForObject_(MEMORY[0x277D80868], v6, a4);
  chartUIState = self->_chartUIState;
  if (v12)
  {
    if (chartUIState)
    {
      v9 = chartUIState;
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v10 = self->_chartUIState;
    self->_chartUIState = v9;

    objc_msgSend_setObject_forKey_(self->_chartUIState, v11, v12, v7);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(chartUIState, 0, v7);
  }
}

@end