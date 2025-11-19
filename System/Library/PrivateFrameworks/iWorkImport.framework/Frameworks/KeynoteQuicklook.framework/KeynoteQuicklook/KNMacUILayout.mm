@interface KNMacUILayout
+ (id)uiLayoutFromArchive:(const void *)a3 unarchiver:(id)a4 context:(id)a5;
- (BOOL)currentViewModeSupportsActivityStream;
- (BOOL)isEqual:(id)a3;
- (id)archivedUILayoutInContext:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)inspectorPaneHiddenState;
- (unint64_t)hash;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation KNMacUILayout

- (id)archivedUILayoutInContext:(id)a3
{
  v4 = a3;
  v5 = [KNMacArchivedUILayout alloc];
  v7 = objc_msgSend_initWithUILayout_context_(v5, v6, self, v4);

  return v7;
}

+ (id)uiLayoutFromArchive:(const void *)a3 unarchiver:(id)a4 context:(id)a5
{
  v6 = objc_alloc_init(KNMacMutableUILayout);
  v8 = v6;
  v9 = *(a3 + 4);
  if ((v9 & 2) != 0)
  {
    objc_msgSend_setShowingSidebar_(v6, v7, *(a3 + 28));
    v9 = *(a3 + 4);
  }

  if (v9)
  {
    objc_msgSend_setSidebarViewMode_(v8, v7, *(a3 + 6) != 0);
  }

  v10 = *(a3 + 4);
  if ((v10 & 4) != 0)
  {
    objc_msgSend_setShowingPresenterNotes_(v8, v7, *(a3 + 29));
    v10 = *(a3 + 4);
  }

  if ((v10 & 8) != 0)
  {
    objc_msgSend_setShowingLightTable_(v8, v7, *(a3 + 30));
    v10 = *(a3 + 4);
  }

  if ((v10 & 0x400) != 0)
  {
    objc_msgSend_setShowingInspectorPane_(v8, v7, *(a3 + 40));
    v10 = *(a3 + 4);
  }

  if ((v10 & 0x40) != 0)
  {
    objc_msgSend_setInspectorPaneAutoHidden_(v8, v7, *(a3 + 36));
    v10 = *(a3 + 4);
  }

  if ((v10 & 0x20) != 0)
  {
    v11 = *(a3 + 8);
    if (v11 == 2)
    {
      objc_msgSend_setInspectorPaneViewMode_(v8, v7, 2);
    }

    else
    {
      objc_msgSend_setInspectorPaneViewMode_(v8, v7, v11 == 1);
    }
  }

  v12 = *(a3 + 4);
  if ((v12 & 0x10) != 0)
  {
    objc_msgSend_setShowingTemplateSlides_(v8, v7, *(a3 + 31));
    v12 = *(a3 + 4);
  }

  if ((v12 & 0x80) != 0)
  {
    objc_msgSend_setShowingElementList_(v8, v7, *(a3 + 37));
    v12 = *(a3 + 4);
  }

  if ((v12 & 0x100) != 0)
  {
    objc_msgSend_setShowingActivityStream_(v8, v7, *(a3 + 38));
    v12 = *(a3 + 4);
  }

  if ((v12 & 0x200) != 0)
  {
    objc_msgSend_setActivityStreamWasShown_(v8, v7, *(a3 + 39));
  }

  return v8;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  isShowingSidebar = objc_msgSend_isShowingSidebar(self, a2, a3, a4);
  *(a3 + 4) |= 2u;
  *(a3 + 28) = isShowingSidebar;
  v9 = objc_msgSend_sidebarViewMode(self, v7, v8) != 0;
  *(a3 + 4) |= 1u;
  *(a3 + 6) = v9;
  isShowingPresenterNotes = objc_msgSend_isShowingPresenterNotes(self, v10, v11);
  *(a3 + 4) |= 4u;
  *(a3 + 29) = isShowingPresenterNotes;
  isShowingLightTable = objc_msgSend_isShowingLightTable(self, v13, v14);
  *(a3 + 4) |= 8u;
  *(a3 + 30) = isShowingLightTable;
  v18 = objc_msgSend_showingInspectorPane(self, v16, v17);
  *(a3 + 4) |= 0x400u;
  *(a3 + 40) = v18;
  v21 = objc_msgSend_inspectorPaneAutoHidden(self, v19, v20);
  *(a3 + 4) |= 0x40u;
  *(a3 + 36) = v21;
  v24 = objc_msgSend_inspectorPaneViewMode(self, v22, v23);
  if (v24 == 2)
  {
    v27 = 2;
  }

  else
  {
    v27 = v24 == 1;
  }

  *(a3 + 4) |= 0x20u;
  *(a3 + 8) = v27;
  isShowingTemplateSlides = objc_msgSend_isShowingTemplateSlides(self, v25, v26);
  *(a3 + 4) |= 0x10u;
  *(a3 + 31) = isShowingTemplateSlides;
  isShowingElementList = objc_msgSend_isShowingElementList(self, v29, v30);
  *(a3 + 4) |= 0x80u;
  *(a3 + 37) = isShowingElementList;
  isShowingActivityStream = objc_msgSend_isShowingActivityStream(self, v32, v33);
  *(a3 + 4) |= 0x100u;
  *(a3 + 38) = isShowingActivityStream;
  v37 = objc_msgSend_activityStreamWasShown(self, v35, v36);
  *(a3 + 4) |= 0x200u;
  *(a3 + 39) = v37;
}

- (BOOL)currentViewModeSupportsActivityStream
{
  if (objc_msgSend_sidebarViewMode(self, a2, v2) == 1)
  {
    return 0;
  }

  else
  {
    return objc_msgSend_isShowingLightTable(self, v4, v5) ^ 1;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    isShowingSidebar = objc_msgSend_isShowingSidebar(self, v6, v7);
    if (isShowingSidebar == objc_msgSend_isShowingSidebar(v5, v9, v10) && (isShowingNavigatorViewInSidebar = objc_msgSend_p_isShowingNavigatorViewInSidebar(self, v11, v12), isShowingNavigatorViewInSidebar == objc_msgSend_p_isShowingNavigatorViewInSidebar(v5, v14, v15)) && (isShowingPresenterNotes = objc_msgSend_isShowingPresenterNotes(self, v16, v17), isShowingPresenterNotes == objc_msgSend_isShowingPresenterNotes(v5, v19, v20)) && (isShowingLightTable = objc_msgSend_isShowingLightTable(self, v21, v22), isShowingLightTable == objc_msgSend_isShowingLightTable(v5, v24, v25)) && (v28 = objc_msgSend_inspectorPaneHiddenState(self, v26, v27), v28 == objc_msgSend_inspectorPaneHiddenState(v5, v29, v30)) && (v33 = objc_msgSend_inspectorPaneViewMode(self, v31, v32), v33 == objc_msgSend_inspectorPaneViewMode(v5, v34, v35)) && (isShowingTemplateSlides = objc_msgSend_isShowingTemplateSlides(self, v36, v37), isShowingTemplateSlides == objc_msgSend_isShowingTemplateSlides(v5, v39, v40)) && (isShowingElementList = objc_msgSend_isShowingElementList(self, v41, v42), isShowingElementList == objc_msgSend_isShowingElementList(v5, v44, v45)) && (isShowingActivityStream = objc_msgSend_isShowingActivityStream(self, v46, v47), isShowingActivityStream == objc_msgSend_isShowingActivityStream(v5, v49, v50)))
    {
      v55 = objc_msgSend_activityStreamWasShown(self, v51, v52);
      v53 = v55 ^ objc_msgSend_activityStreamWasShown(v5, v56, v57) ^ 1;
    }

    else
    {
      LOBYTE(v53) = 0;
    }
  }

  else
  {
    LOBYTE(v53) = 0;
  }

  return v53;
}

- (unint64_t)hash
{
  isShowingSidebar = objc_msgSend_isShowingSidebar(self, a2, v2);
  isShowingNavigatorViewInSidebar = objc_msgSend_p_isShowingNavigatorViewInSidebar(self, v5, v6);
  v10 = 2;
  if (!isShowingNavigatorViewInSidebar)
  {
    v10 = 0;
  }

  v11 = v10 | isShowingSidebar;
  if (objc_msgSend_isShowingPresenterNotes(self, v8, v9))
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  isShowingLightTable = objc_msgSend_isShowingLightTable(self, v12, v13);
  v18 = 16;
  if (!isShowingLightTable)
  {
    v18 = 0;
  }

  v19 = v11 | v14 | v18 | (32 * objc_msgSend_inspectorPaneHiddenState(self, v16, v17));
  v22 = v19 | (objc_msgSend_inspectorPaneViewMode(self, v20, v21) << 7);
  if (objc_msgSend_isShowingTemplateSlides(self, v23, v24))
  {
    v27 = 512;
  }

  else
  {
    v27 = 0;
  }

  isShowingElementList = objc_msgSend_isShowingElementList(self, v25, v26);
  v31 = 1024;
  if (!isShowingElementList)
  {
    v31 = 0;
  }

  v32 = v27 | v31;
  isShowingActivityStream = objc_msgSend_isShowingActivityStream(self, v29, v30);
  v36 = 2048;
  if (!isShowingActivityStream)
  {
    v36 = 0;
  }

  v37 = v32 | v36;
  v38 = objc_msgSend_activityStreamWasShown(self, v34, v35);
  v39 = 4096;
  if (!v38)
  {
    v39 = 0;
  }

  return v22 | v37 | v39;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(KNMacUILayout, a2, a3);
  result = objc_msgSend_init(v4, v5, v6);
  *(result + 10) = self->_showingSidebar;
  *(result + 11) = self->_showingNavigatorViewInSidebar;
  *(result + 12) = self->_showingPresenterNotes;
  *(result + 13) = self->_showingLightTable;
  *(result + 8) = self->_showingInspectorPane;
  *(result + 9) = self->_inspectorPaneAutoHidden;
  *(result + 3) = self->_inspectorPaneViewMode;
  *(result + 14) = self->_showingTemplateSlides;
  *(result + 15) = self->_showingElementList;
  *(result + 16) = self->_showingActivityStream;
  *(result + 17) = self->_activityStreamWasShown;
  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(KNMacMutableUILayout, a2, a3);
  v7 = objc_msgSend_init(v4, v5, v6);
  isShowingSidebar = objc_msgSend_isShowingSidebar(self, v8, v9);
  objc_msgSend_setShowingSidebar_(v7, v11, isShowingSidebar);
  v14 = objc_msgSend_sidebarViewMode(self, v12, v13);
  objc_msgSend_setSidebarViewMode_(v7, v15, v14);
  isShowingPresenterNotes = objc_msgSend_isShowingPresenterNotes(self, v16, v17);
  objc_msgSend_setShowingPresenterNotes_(v7, v19, isShowingPresenterNotes);
  isShowingLightTable = objc_msgSend_isShowingLightTable(self, v20, v21);
  objc_msgSend_setShowingLightTable_(v7, v23, isShowingLightTable);
  v26 = objc_msgSend_inspectorPaneHiddenState(self, v24, v25);
  objc_msgSend_setInspectorPaneHiddenState_(v7, v27, v26);
  v30 = objc_msgSend_inspectorPaneViewMode(self, v28, v29);
  objc_msgSend_setInspectorPaneViewMode_(v7, v31, v30);
  isShowingTemplateSlides = objc_msgSend_isShowingTemplateSlides(self, v32, v33);
  objc_msgSend_setShowingTemplateSlides_(v7, v35, isShowingTemplateSlides);
  isShowingElementList = objc_msgSend_isShowingElementList(self, v36, v37);
  objc_msgSend_setShowingElementList_(v7, v39, isShowingElementList);
  isShowingActivityStream = objc_msgSend_isShowingActivityStream(self, v40, v41);
  objc_msgSend_setShowingActivityStream_(v7, v43, isShowingActivityStream);
  v46 = objc_msgSend_activityStreamWasShown(self, v44, v45);
  objc_msgSend_setActivityStreamWasShown_(v7, v47, v46);
  return v7;
}

- (int64_t)inspectorPaneHiddenState
{
  if (self->_inspectorPaneAutoHidden)
  {
    return 2;
  }

  else
  {
    return !self->_showingInspectorPane;
  }
}

@end