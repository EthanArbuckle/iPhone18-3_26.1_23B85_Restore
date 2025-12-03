@interface KNDocumentRoot
+ (void)localizeModelObject:(id)object withTemplateBundle:(id)bundle andLocale:(id)locale;
- (BOOL)isMultiPageForQuickLook;
- (BOOL)validateSlideNode:(id)node;
- (BOOL)validateUIState:(id)state;
- (KNDocumentRoot)initWithContext:(id)context;
- (double)stickyCommentScaleMultiplier;
- (id)UIStateForChart:(id)chart;
- (id)childEnumerator;
- (id)createViewStateRootForContinuation:(BOOL)continuation;
- (id)freehandDrawingToolkitUIState;
- (id)knDelegate;
- (id)nameForResolverContainer:(id)container;
- (id)protected_defaultTextPresetOrdering;
- (id)resolverContainerForName:(id)name caseSensitive:(BOOL)sensitive;
- (id)resolverContainerNameForResolver:(id)resolver;
- (id)resolverContainerNamesMatchingPrefix:(id)prefix;
- (id)resolverMatchingName:(id)name contextContainerName:(id)containerName;
- (id)resolverMatchingName:(id)name contextResolver:(id)resolver;
- (id)resolversMatchingPrefix:(id)prefix;
- (id)slideNodeForClearedShow;
- (id)stylesToNotResizeInStylesheet:(id)stylesheet;
- (id)stylesheet;
- (id)theme;
- (id)warningLocationDescriptionForAffectedObjects:(id)objects sortingInfo:(id *)info;
- (int64_t)compareLocationSortingInfo:(id)info toSortingInfo:(id)sortingInfo;
- (unint64_t)writingDirectionForStorage;
- (void)dealloc;
- (void)documentDidLoad;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)p_hyperlinkAndBreadcrumbUpgradeForUnity20SlideNodes:(id)nodes;
- (void)prepareForSavingAsTemplate;
- (void)preprocessForSaveAsTheme;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setDelegate:(id)delegate;
- (void)setDocumentLocale:(id)locale;
- (void)setShow:(id)show;
- (void)setStylesheetForUpgradeToSingleStylesheet:(id)stylesheet;
- (void)setTheme:(id)theme;
- (void)setUIState:(id)state forChart:(id)chart;
- (void)setUiState:(id)state;
- (void)upgradeTextStylesForUnityAfterSingleStylesheetUpgrade;
- (void)willClose;
@end

@implementation KNDocumentRoot

- (KNDocumentRoot)initWithContext:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v31.receiver = self;
  v31.super_class = KNDocumentRoot;
  v6 = [(TSADocumentRoot *)&v31 initWithContext:contextCopy];
  if (v6)
  {
    v7 = objc_msgSend_showWithSize_context_(KNShow, v5, contextCopy, 1024.0, 768.0);
    show = v6->_show;
    v6->_show = v7;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = objc_msgSend_stylesheet(v6, v9, v10, 0);
    v14 = objc_msgSend_styles(v11, v12, v13);

    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v27, v32, 16);
    if (v16)
    {
      v18 = v16;
      v19 = *v28;
      do
      {
        v20 = 0;
        do
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v14);
          }

          objc_msgSend_wasAddedToDocumentWithContext_(*(*(&v27 + 1) + 8 * v20++), v17, contextCopy);
        }

        while (v18 != v20);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v27, v32, 16);
      }

      while (v18);
    }

    objc_msgSend_wasAddedToDocumentWithContext_(v6->_show, v21, contextCopy);
    v24 = objc_msgSend_theme(v6->_show, v22, v23);
    objc_msgSend_wasAddedToDocumentWithContext_(v24, v25, contextCopy);
  }

  return v6;
}

- (void)setShow:(id)show
{
  showCopy = show;
  objc_msgSend_willModify(self, v5, v6);
  show = self->_show;
  self->_show = showCopy;
}

- (double)stickyCommentScaleMultiplier
{
  v3 = objc_msgSend_show(self, a2, v2);
  objc_msgSend_size(v3, v4, v5);
  v7 = v6;

  v9 = (v7 + -1024.0) * 0.0009765625 + 1.0;
  if (v9 <= 0.0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[KNDocumentRoot stickyCommentScaleMultiplier]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 247, 0, "Invalid scaleMultiplier.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  return fmax(v9, 1.0);
}

- (void)documentDidLoad
{
  v32 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = KNDocumentRoot;
  [(TSADocumentRoot *)&v30 documentDidLoad];
  objc_msgSend_addObserver_forKeyPath_options_context_(self, v3, self, @"show.recording", 7, qword_280A3A550);
  *(&self->_isObservingRecording + 1) = 1;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = objc_msgSend_show(self, v4, v5, 0);
  v9 = objc_msgSend_theme(v6, v7, v8);
  v12 = objc_msgSend_templateSlides(v9, v10, v11);

  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v26, v31, 16);
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      v17 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v26 + 1) + 8 * v17);
        objc_opt_class();
        v21 = objc_msgSend_slide(v18, v19, v20);
        v22 = TSUCheckedDynamicCast();
        objc_msgSend_updatePlaceholderText(v22, v23, v24);

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v25, &v26, v31, 16);
    }

    while (v15);
  }
}

- (void)willClose
{
  v2.receiver = self;
  v2.super_class = KNDocumentRoot;
  [(TSADocumentRoot *)&v2 willClose];
}

- (void)dealloc
{
  if (*(&self->_isObservingRecording + 1))
  {
    objc_msgSend_removeObserver_forKeyPath_context_(self, a2, self, @"show.recording", qword_280A3A550);
  }

  v3.receiver = self;
  v3.super_class = KNDocumentRoot;
  [(TSADocumentRoot *)&v3 dealloc];
}

- (id)knDelegate
{
  v3 = objc_msgSend_delegate(self, a2, v2);
  v4 = TSUCheckedProtocolCast();

  return v4;
}

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = KNDocumentRoot;
  [(KNDocumentRoot *)&v3 setDelegate:delegate];
}

- (id)childEnumerator
{
  v4 = MEMORY[0x277D81148];
  v5 = objc_msgSend_show(self, a2, v2);
  v8 = objc_msgSend_theme(v5, v6, v7);
  v11 = objc_msgSend_show(self, v9, v10);
  v14 = objc_msgSend_slideTree(v11, v12, v13);
  v17 = objc_msgSend_objectEnumerator(v14, v15, v16);
  v19 = objc_msgSend_aggregateEnumeratorWithObjects_(v4, v18, v8, v17, 0);

  return v19;
}

- (id)theme
{
  v3 = objc_msgSend_show(self, a2, v2);
  v6 = objc_msgSend_theme(v3, v4, v5);

  return v6;
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  objc_opt_class();
  v9 = TSUDynamicCast();

  v7 = objc_msgSend_show(self, v5, v6);
  objc_msgSend_setTheme_(v7, v8, v9);
}

- (id)stylesheet
{
  v3 = objc_msgSend_show(self, a2, v2);
  v6 = objc_msgSend_stylesheet(v3, v4, v5);

  return v6;
}

- (void)setStylesheetForUpgradeToSingleStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  v8 = objc_msgSend_show(self, v5, v6);
  objc_msgSend_setStylesheetForUpgradeToSingleStylesheet_(v8, v7, stylesheetCopy);
}

- (id)protected_defaultTextPresetOrdering
{
  if (qword_280A3BF50 != -1)
  {
    sub_275E59D6C();
  }

  v3 = qword_280A3BF48;

  return v3;
}

- (void)upgradeTextStylesForUnityAfterSingleStylesheetUpgrade
{
  v53 = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = KNDocumentRoot;
  [(TSADocumentRoot *)&v51 upgradeTextStylesForUnityAfterSingleStylesheetUpgrade];
  v4 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v3, 512, 0);
  v7 = objc_msgSend_stylesheet(self, v5, v6);
  v8 = objc_opt_class();
  v10 = objc_msgSend_stylesOfClass_(v7, v9, v8);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_275D58FDC;
  v47[3] = &unk_27A697B48;
  v11 = v7;
  v48 = v11;
  selfCopy = self;
  v12 = v4;
  v50 = v12;
  objc_msgSend_enumerateObjectsUsingBlock_(v10, v13, v47);

  v14 = MEMORY[0x277CBEB98];
  v17 = objc_msgSend_keyEnumerator(v12, v15, v16);
  v20 = objc_msgSend_allObjects(v17, v18, v19);
  v22 = objc_msgSend_setWithArray_(v14, v21, v20);

  if (objc_msgSend_count(v12, v23, v24))
  {
    v27 = objc_msgSend_modelEnumerator(self, v25, v26);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_275D590C0;
    v44[3] = &unk_27A697B98;
    v45 = v22;
    v46 = v12;
    objc_msgSend_enumerateStyleClientsUsingBlock_(v27, v28, v44);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v29 = v12;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v40, v52, 16);
  if (v31)
  {
    v34 = v31;
    v35 = *v41;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(v29);
        }

        v37 = *(*(&v40 + 1) + 8 * i);
        v38 = objc_msgSend_stylesheet(v37, v32, v33, v40);
        objc_msgSend_removeStyle_(v38, v39, v37);
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v40, v52, 16);
    }

    while (v34);
  }
}

- (id)freehandDrawingToolkitUIState
{
  v3 = objc_msgSend_show(self, a2, v2);
  v6 = objc_msgSend_uiState(v3, v4, v5);
  v9 = objc_msgSend_freehandDrawingToolkitUIState(v6, v7, v8);

  return v9;
}

- (id)createViewStateRootForContinuation:(BOOL)continuation
{
  v6 = objc_msgSend_delegate(self, a2, continuation);
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = objc_msgSend_createViewStateRoot(v6, v4, v5);
  }

  else
  {
    v8 = objc_msgSend_show(self, v4, v5);
    v11 = objc_msgSend_uiState(v8, v9, v10);
    v14 = objc_msgSend_context(self, v12, v13);
    v7 = objc_msgSend_archivedUIStateInContext_(v11, v15, v14);
  }

  return v7;
}

- (void)setUiState:(id)state
{
  v9.receiver = self;
  v9.super_class = KNDocumentRoot;
  stateCopy = state;
  [(TSADocumentRoot *)&v9 setUiState:stateCopy];
  v7 = objc_msgSend_show(self, v5, v6, v9.receiver, v9.super_class);
  objc_msgSend_setUiState_(v7, v8, stateCopy);
}

- (BOOL)isMultiPageForQuickLook
{
  v3 = objc_msgSend_show(self, a2, v2);
  v6 = objc_msgSend_slideTree(v3, v4, v5);
  v9 = objc_msgSend_visibleSlideNodes(v6, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11) > 1;

  return v12;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (qword_280A3A550 != context)
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = KNDocumentRoot;
    [(KNDocumentRoot *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (id)stylesToNotResizeInStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  v6 = objc_msgSend_allPresenterNotesStyles(stylesheetCopy, v4, v5);
  v9 = objc_msgSend_stickyCommentStyles(stylesheetCopy, v7, v8);

  v11 = objc_msgSend_setByAddingObjectsFromSet_(v6, v10, v9);

  return v11;
}

- (id)slideNodeForClearedShow
{
  v4 = objc_msgSend_show(self, a2, v2);
  v7 = objc_msgSend_theme(v4, v5, v6);
  v10 = objc_msgSend_templateSlides(v7, v8, v9);

  if (!objc_msgSend_count(v10, v11, v12))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[KNDocumentRoot slideNodeForClearedShow]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 1176, 0, "Show has no template slides");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v21 = objc_msgSend_objectAtIndexedSubscript_(v10, v13, 0);
  v24 = objc_msgSend_slide(v21, v22, v23);
  v27 = objc_msgSend_context(self, v25, v26);
  v28 = [KNSlideNode alloc];
  v30 = objc_msgSend_initWithContext_(v28, v29, v27);
  v31 = [KNSlide alloc];
  v33 = objc_msgSend_initWithSlideNode_templateSlide_andShow_(v31, v32, v30, v24, v4);
  objc_msgSend_setSlide_(v30, v34, v33);

  return v30;
}

- (id)resolverContainerNameForResolver:(id)resolver
{
  resolverCopy = resolver;
  objc_opt_class();
  v7 = objc_msgSend_drawableInfo(resolverCopy, v5, v6);

  v8 = TSUDynamicCast();

  v10 = objc_msgSend_parentSlideForInfo_(KNAbstractSlide, v9, v8);
  v13 = objc_msgSend_slideNode(v10, v11, v12);
  v15 = objc_msgSend_nameForResolverContainer_(self, v14, v13);

  return v15;
}

- (id)nameForResolverContainer:(id)container
{
  containerCopy = container;
  objc_opt_class();
  v5 = TSUDynamicCast();

  v8 = objc_msgSend_show(self, v6, v7);
  v11 = objc_msgSend_slide(v5, v9, v10);
  isTemplateSlide = objc_msgSend_isTemplateSlide(v11, v12, v13);

  if (isTemplateSlide)
  {
    objc_msgSend_theme(v8, v15, v16);
  }

  else
  {
    objc_msgSend_slideTree(v8, v15, v16);
  }
  v17 = ;
  v19 = objc_msgSend_formulaReferenceNameForSlideNode_(v17, v18, v5);

  return v19;
}

- (id)resolverContainerForName:(id)name caseSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  nameCopy = name;
  v9 = objc_msgSend_show(self, v7, v8);
  v12 = objc_msgSend_theme(v9, v10, v11);
  v14 = objc_msgSend_slideNodeForFormulaReferenceName_caseSensitive_(v12, v13, nameCopy, sensitiveCopy);

  if (!v14)
  {
    v17 = objc_msgSend_slideTree(v9, v15, v16);
    v14 = objc_msgSend_slideNodeForFormulaReferenceName_caseSensitive_(v17, v18, nameCopy, sensitiveCopy);
  }

  return v14;
}

- (id)resolverContainerNamesMatchingPrefix:(id)prefix
{
  prefixCopy = prefix;
  v7 = objc_msgSend_show(self, v5, v6);
  v10 = objc_msgSend_theme(v7, v8, v9);
  v12 = objc_msgSend_slideNamesMatchingPrefix_(v10, v11, prefixCopy);

  v15 = objc_msgSend_slideTree(v7, v13, v14);
  v17 = objc_msgSend_slideNamesMatchingPrefix_(v15, v16, prefixCopy);

  v19 = objc_msgSend_arrayByAddingObjectsFromArray_(v12, v18, v17);

  return v19;
}

- (id)resolverMatchingName:(id)name contextResolver:(id)resolver
{
  nameCopy = name;
  if (resolver)
  {
    resolver = objc_msgSend_resolverContainerNameForResolver_(self, v6, resolver);
  }

  v8 = objc_msgSend_resolverMatchingName_contextContainerName_(self, v6, nameCopy, resolver);

  return v8;
}

- (id)resolverMatchingName:(id)name contextContainerName:(id)containerName
{
  v43 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  containerNameCopy = containerName;
  if (!containerNameCopy || (objc_msgSend_resolverContainerForName_caseSensitive_(self, v7, containerNameCopy, 1), (v10 = objc_claimAutoreleasedReturnValue()) == 0) || (v11 = v10, objc_msgSend_resolverMatchingName_(v10, v7, nameCopy), v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
  {
    v13 = objc_msgSend_show(self, v7, v8);
    v16 = objc_msgSend_theme(v13, v14, v15);
    v19 = objc_msgSend_templateSlides(v16, v17, v18);

    v22 = objc_msgSend_slideTree(v13, v20, v21);
    v25 = objc_msgSend_slideNodes(v22, v23, v24);
    v27 = objc_msgSend_arrayByAddingObjectsFromArray_(v19, v26, v25);

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v28 = v27;
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v38, v42, 16);
    if (v30)
    {
      v32 = v30;
      v12 = 0;
      v33 = *v39;
      while (2)
      {
        v34 = 0;
        v35 = v12;
        do
        {
          if (*v39 != v33)
          {
            objc_enumerationMutation(v28);
          }

          v36 = objc_msgSend_resolverMatchingName_(*(*(&v38 + 1) + 8 * v34), v31, nameCopy, v38);
          v12 = v36;
          if (v35)
          {

            goto LABEL_14;
          }

          ++v34;
          v35 = v36;
        }

        while (v32 != v34);
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v38, v42, 16);
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_14:
      v12 = 0;
    }
  }

  return v12;
}

- (id)resolversMatchingPrefix:(id)prefix
{
  v40 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
  v10 = objc_msgSend_show(self, v8, v9);
  v13 = objc_msgSend_theme(v10, v11, v12);
  v16 = objc_msgSend_templateSlides(v13, v14, v15);

  v19 = objc_msgSend_slideTree(v10, v17, v18);
  v22 = objc_msgSend_slideNodes(v19, v20, v21);
  v24 = objc_msgSend_arrayByAddingObjectsFromArray_(v16, v23, v22);

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v25 = v24;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v35, v39, 16);
  if (v27)
  {
    v29 = v27;
    v30 = *v36;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(v25);
        }

        v33 = objc_msgSend_resolversMatchingPrefix_(*(*(&v35 + 1) + 8 * i), v28, prefixCopy, v35);
        if (v33)
        {
          objc_msgSend_addObjectsFromArray_(v7, v32, v33);
        }
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v35, v39, 16);
    }

    while (v29);
  }

  return v7;
}

+ (void)localizeModelObject:(id)object withTemplateBundle:(id)bundle andLocale:(id)locale
{
  v159 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  selfCopy = self;
  bundleCopy = bundle;
  v155.receiver = self;
  v155.super_class = &OBJC_METACLASS___KNDocumentRoot;
  localeCopy = locale;
  objc_msgSendSuper2(&v155, sel_localizeModelObject_withTemplateBundle_andLocale_, objectCopy, bundleCopy);
  objc_opt_class();
  v9 = TSUDynamicCast();
  v12 = v9;
  v125 = v9;
  v126 = objectCopy;
  if (v9)
  {
    v13 = objc_msgSend_show(v9, v10, v11);
    objc_msgSend_setLocalizeDocument_(v13, v14, 1);
    objc_opt_class();
    v17 = objc_msgSend_theme(v12, v15, v16);
    v18 = TSUDynamicCast();

    if (v18)
    {
      v131 = v13;
      v133 = v18;
      v21 = objc_msgSend_templateSlides(v18, v19, v20);
      v151 = 0u;
      v152 = 0u;
      v153 = 0u;
      v154 = 0u;
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v151, v158, 16);
      if (v23)
      {
        v26 = v23;
        v27 = *v152;
        v28 = *MEMORY[0x277D80008];
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v152 != v27)
            {
              objc_enumerationMutation(v21);
            }

            v30 = *(*(&v151 + 1) + 8 * i);
            objc_opt_class();
            v33 = objc_msgSend_slide(v30, v31, v32);
            v34 = TSUDynamicCast();

            v37 = objc_msgSend_name(v34, v35, v36);
            v40 = objc_msgSend_name(v34, v38, v39);
            v42 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(selfCopy, v41, v37, v40, v28, bundleCopy, localeCopy);
            objc_msgSend_setName_(v34, v43, v42);

            objc_msgSend_updatePlaceholderText(v34, v44, v45);
          }

          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v46, &v151, v158, 16);
        }

        while (v26);
      }

      v47 = objc_msgSend_liveVideoSourceCollection(v133, v24, v25);
      v49 = objc_msgSend_localizedDefaultSourceNameForLocale_(KNLiveVideoSourceCollection, v48, localeCopy);
      v129 = v47;
      v52 = objc_msgSend_defaultSource(v47, v50, v51);
      objc_msgSend_setName_(v52, v53, v49);

      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v55 = objc_msgSend_presetsOfKind_(v133, v54, *MEMORY[0x277D80B60]);
      v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v147, v157, 16);
      if (v57)
      {
        v60 = v57;
        v61 = *v148;
        v62 = *MEMORY[0x277D80008];
        do
        {
          for (j = 0; j != v60; ++j)
          {
            if (*v148 != v61)
            {
              objc_enumerationMutation(v55);
            }

            v64 = *(*(&v147 + 1) + 8 * j);
            v65 = objc_msgSend_name(v64, v58, v59);

            if (v65)
            {
              v66 = objc_msgSend_name(v64, v58, v59);
              v69 = objc_msgSend_name(v64, v67, v68);
              v71 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(selfCopy, v70, v66, v69, v62, bundleCopy, localeCopy);
              objc_msgSend_setName_(v64, v72, v71);
            }
          }

          v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v58, &v147, v157, 16);
        }

        while (v60);
      }

      v12 = v125;
      objectCopy = v126;
      v13 = v131;
      v18 = v133;
    }
  }

  objc_opt_class();
  v134 = TSUDynamicCast();
  if (v134)
  {
    v75 = objc_msgSend_placeholdersForTags(v134, v73, v74);
    v127 = objc_msgSend_mutableCopy(v75, v76, v77);

    v132 = objc_opt_new();
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v80 = objc_msgSend_childInfos(v134, v78, v79);
    v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v81, &v143, v156, 16);
    if (v82)
    {
      v84 = v82;
      v85 = *v144;
      v86 = *MEMORY[0x277D80008];
      do
      {
        v87 = 0;
        v130 = v84;
        do
        {
          if (*v144 != v85)
          {
            objc_enumerationMutation(v80);
          }

          v88 = *(*(&v143 + 1) + 8 * v87);
          v90 = objc_msgSend_tagForInfo_(v134, v83, v88);
          if (v90)
          {
            v92 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(selfCopy, v89, v90, v90, v86, bundleCopy, localeCopy);
            if (v92)
            {
              v93 = objc_msgSend_objectForKeyedSubscript_(v132, v91, v92);

              if (v93)
              {
                v128 = MEMORY[0x277D81150];
                v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, "+[KNDocumentRoot localizeModelObject:withTemplateBundle:andLocale:]");
                v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m");
                objc_msgSend_objectForKeyedSubscript_(v132, v98, v92);
                v99 = v85;
                v101 = v100 = v80;
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v128, v102, v95, v97, 1522, 0, "multiple tags with the same localization: %{public}@, %{public}@", v90, v101);

                v80 = v100;
                v85 = v99;

                v84 = v130;
                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104);
              }

              else
              {
                objc_msgSend_removeObjectForKey_(v127, v94, v90);
                objc_msgSend_setObject_forKeyedSubscript_(v127, v112, v88, v92);
                objc_msgSend_setObject_forKeyedSubscript_(v132, v113, v90, v92);
              }
            }

            else
            {
              v105 = MEMORY[0x277D81150];
              v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "+[KNDocumentRoot localizeModelObject:withTemplateBundle:andLocale:]");
              v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v105, v109, v106, v108, 1519, 0, "no localized string for tag %{public}@", v90);

              v84 = v130;
              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v110, v111);
            }
          }

          ++v87;
        }

        while (v84 != v87);
        v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v83, &v143, v156, 16);
      }

      while (v84);
    }

    v116 = objc_msgSend_instructionalTextForInfos(v134, v114, v115);
    v119 = objc_msgSend_copy(v116, v117, v118);

    v138[0] = MEMORY[0x277D85DD0];
    v138[1] = 3221225472;
    v138[2] = sub_275D5A540;
    v138[3] = &unk_27A697BC0;
    v142 = selfCopy;
    v139 = bundleCopy;
    v140 = localeCopy;
    v141 = v134;
    objc_msgSend_tsu_enumerateKeysAndObjectsUsingBlock_(v119, v120, v138);
    v123 = objc_msgSend_copy(v127, v121, v122);
    objc_msgSend_setPlaceholdersForTags_(v134, v124, v123);

    v12 = v125;
    objectCopy = v126;
  }
}

- (void)setDocumentLocale:(id)locale
{
  v18.receiver = self;
  v18.super_class = KNDocumentRoot;
  [(KNDocumentRoot *)&v18 setDocumentLocale:locale];
  v6 = objc_msgSend_show(self, v4, v5);
  v9 = objc_msgSend_slideTree(v6, v7, v8);
  objc_msgSend_invalidateSlideNameCache(v9, v10, v11);

  objc_opt_class();
  v14 = objc_msgSend_theme(self, v12, v13);
  v15 = TSUCheckedStaticCast();
  objc_msgSend_invalidateSlideNameCache(v15, v16, v17);
}

- (id)UIStateForChart:(id)chart
{
  chartCopy = chart;
  v7 = objc_msgSend_show(self, v5, v6);
  v10 = objc_msgSend_uiState(v7, v8, v9);
  v12 = objc_msgSend_UIStateForChart_(v10, v11, chartCopy);

  return v12;
}

- (void)setUIState:(id)state forChart:(id)chart
{
  chartCopy = chart;
  stateCopy = state;
  v10 = objc_msgSend_show(self, v8, v9);
  v13 = objc_msgSend_uiState(v10, v11, v12);
  objc_msgSend_setUIState_forChart_(v13, v14, stateCopy, chartCopy);

  MEMORY[0x2821F9670](self, sel_invalidateViewState, v15);
}

- (id)warningLocationDescriptionForAffectedObjects:(id)objects sortingInfo:(id *)info
{
  v179 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v158 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7);
  v159 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9);
  v162 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11);
  v14 = objc_msgSend_show(self, v12, v13);
  v17 = objc_msgSend_slideTree(v14, v15, v16);

  v157 = v17;
  v160 = objc_msgSend_visibleSlideNodes(v17, v18, v19);
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  obj = objectsCopy;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v172, v178, 16);
  if (!v21)
  {
    v161 = 0;
    goto LABEL_21;
  }

  v22 = v21;
  v161 = 0;
  v23 = *v173;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v173 != v23)
      {
        objc_enumerationMutation(obj);
      }

      objc_opt_class();
      v25 = TSUDynamicCast();
      if (v25)
      {
        v28 = v25;
      }

      else
      {
        objc_opt_class();
        v153 = &unk_2884F6E18;
        v35 = TSUClassAndProtocolCast();
        if (!v35)
        {
          continue;
        }

        v36 = v35;
        v28 = objc_msgSend_parentSlideForInfo_(KNAbstractSlide, v26, v35, &unk_2884F6E18);

        if (!v28)
        {
          continue;
        }
      }

      if (objc_msgSend_isTemplateSlide(v28, v26, v27, v153))
      {
        objc_msgSend_addObject_(v162, v29, v28);
      }

      else
      {
        v31 = objc_msgSend_slideNode(v28, v29, v30);
        v33 = objc_msgSend_containsObject_(v160, v32, v31);

        if (v33)
        {
          objc_msgSend_addObject_(v159, v34, v28);
        }

        else
        {
          ++v161;
        }
      }
    }

    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v172, v178, 16);
  }

  while (v22);
LABEL_21:

  v39 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v37, v38);
  v42 = 0x277D81000;
  *(&v154 + 1) = objc_msgSend_count(v159, v40, v41);
  v45 = v157;
  v156 = v39;
  if (*(&v154 + 1) | v161)
  {
    v46 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v43, v44);
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v47 = v159;
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v168, v177, 16);
    if (v49)
    {
      v52 = v49;
      v53 = *v169;
      do
      {
        for (j = 0; j != v52; ++j)
        {
          if (*v169 != v53)
          {
            objc_enumerationMutation(v47);
          }

          v55 = objc_msgSend_slideNode(*(*(&v168 + 1) + 8 * j), v50, v51, v153);
          v57 = objc_msgSend_slideNumberForSlideNode_(v157, v56, v55);

          if (v57 != 0x7FFFFFFFFFFFFFFFLL)
          {
            objc_msgSend_addIndex_(v46, v50, v57);
          }
        }

        v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v50, &v168, v177, 16);
      }

      while (v52);
    }

    if (objc_msgSend_count(v46, v58, v59))
    {
      v60 = MEMORY[0x277CCACA8];
      v61 = sub_275DC204C();
      v63 = objc_msgSend_localizedStringForKey_value_table_(v61, v62, @"Slide(s)", &stru_2884D8E20, @"Keynote");
      v66 = objc_msgSend_count(v46, v64, v65);
      v68 = objc_msgSend_localizedStringWithFormat_(v60, v67, v63, v66);

      v69 = sub_275DC204C();
      v71 = objc_msgSend_localizedStringForKey_value_table_(v69, v70, @"%@ %@", &stru_2884D8E20, @"Keynote");

      v72 = MEMORY[0x277CCACA8];
      v74 = objc_msgSend_displayStringForIndexSet_(MEMORY[0x277D81230], v73, v46);
      v76 = objc_msgSend_stringWithFormat_(v72, v75, v71, v68, v74);

      objc_msgSend_addObject_(v158, v77, v76);
      objc_msgSend_setObject_forKeyedSubscript_(v156, v78, &unk_2884F3660, @"type");
      v79 = MEMORY[0x277CCABB0];
      Index = objc_msgSend_firstIndex(v46, v80, v81);
      v84 = objc_msgSend_numberWithUnsignedInteger_(v79, v83, Index);
      objc_msgSend_setObject_forKeyedSubscript_(v156, v85, v84, @"orderNumber");
    }

    v39 = v156;
    v42 = 0x277D81000;
  }

  *&v154 = objc_msgSend_count(v162, v43, v44, v153);
  if (v154)
  {
    v88 = objc_msgSend_set(MEMORY[0x277CBEB58], v86, v87);
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    v89 = v162;
    v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v90, &v164, v176, 16);
    if (v91)
    {
      v94 = v91;
      v95 = *v165;
      do
      {
        for (k = 0; k != v94; ++k)
        {
          if (*v165 != v95)
          {
            objc_enumerationMutation(v89);
          }

          v97 = *(*(&v164 + 1) + 8 * k);
          v98 = objc_msgSend_name(v97, v92, v93);
          objc_msgSend_addObject_(v88, v99, v98);

          v102 = objc_msgSend_show(self, v100, v101);
          v105 = objc_msgSend_theme(v102, v103, v104);
          v108 = objc_msgSend_templateSlides(v105, v106, v107);
          v111 = objc_msgSend_slideNode(v97, v109, v110);
          objc_msgSend_indexOfObject_(v108, v112, v111);
        }

        v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v92, &v164, v176, 16);
      }

      while (v94);
    }

    v115 = objc_msgSend_allObjects(v88, v113, v114);
    v117 = objc_msgSend_sortedArrayUsingSelector_(v115, v116, sel_localizedCaseInsensitiveCompare_);

    v118 = MEMORY[0x277CCACA8];
    v119 = sub_275DC204C();
    v121 = objc_msgSend_localizedStringForKey_value_table_(v119, v120, @"Slide Layout(s)", &stru_2884D8E20, @"Keynote");
    v124 = objc_msgSend_count(v117, v122, v123);
    v126 = objc_msgSend_localizedStringWithFormat_(v118, v125, v121, v124);

    v127 = sub_275DC204C();
    v129 = objc_msgSend_localizedStringForKey_value_table_(v127, v128, @"%@: %@", &stru_2884D8E20, @"Keynote");

    v42 = 0x277D81000uLL;
    v131 = objc_msgSend_displayStringForStrings_(MEMORY[0x277D81230], v130, v117);
    v133 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v132, v129, v126, v131);
    objc_msgSend_addObject_(v158, v134, v133);
    v39 = v156;
    objc_msgSend_setObject_forKeyedSubscript_(v156, v135, &unk_2884F3678, @"type");
    objc_msgSend_setObject_forKeyedSubscript_(v156, v136, v131, @"name");

    v45 = v157;
  }

  if (v161)
  {
    v137 = MEMORY[0x277CCACA8];
    v138 = sub_275DC204C();
    v140 = objc_msgSend_localizedStringForKey_value_table_(v138, v139, @"%lu skipped slide(s).", &stru_2884D8E20, @"Keynote");
    v142 = objc_msgSend_localizedStringWithFormat_(v137, v141, v140, v161);

    objc_msgSend_addObject_(v158, v143, v142);
    if (!*(&v154 + 1))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v39, v144, &unk_2884F3690, @"type");
    }
  }

  if (info && objc_msgSend_count(v39, v86, v87))
  {
    v145 = v39;
    *info = v39;
  }

  v146 = *(v42 + 560);
  if (!v161 || v154 == 0)
  {
    v151 = objc_msgSend_displayStringForStrings_itemSeparator_(*(v42 + 560), v86, v158, @", ");
  }

  else
  {
    v147 = sub_275DC204C();
    v149 = objc_msgSend_localizedStringForKey_value_table_(v147, v148, @" and ", &stru_2884D8E20, @"Keynote");
    v151 = objc_msgSend_displayStringForStrings_itemSeparator_lastItemSeparator_(v146, v150, v158, @", ", v149);
  }

  return v151;
}

- (int64_t)compareLocationSortingInfo:(id)info toSortingInfo:(id)sortingInfo
{
  infoCopy = info;
  sortingInfoCopy = sortingInfo;
  if (!infoCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNDocumentRoot compareLocationSortingInfo:toSortingInfo:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1694, 0, "invalid nil value for '%{public}s'", "info1");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  objc_opt_class();
  v16 = TSUDynamicCast();
  if (v16)
  {
    if (sortingInfoCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[KNDocumentRoot compareLocationSortingInfo:toSortingInfo:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 1696, 0, "Unexpected class of info1:%@", infoCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
    if (sortingInfoCopy)
    {
      goto LABEL_5;
    }
  }

  v39 = MEMORY[0x277D81150];
  v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[KNDocumentRoot compareLocationSortingInfo:toSortingInfo:]");
  v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v43, v40, v42, 1698, 0, "invalid nil value for '%{public}s'", "info2");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
LABEL_5:
  objc_opt_class();
  v18 = TSUDynamicCast();
  if (!v18)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[KNDocumentRoot compareLocationSortingInfo:toSortingInfo:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 1700, 0, "Unexpected class of info1:%@", infoCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_275D5B3E8;
  aBlock[3] = &unk_27A697BE8;
  v47 = v16;
  v48 = v18;
  v26 = v18;
  v27 = v16;
  v28 = _Block_copy(aBlock);
  v29 = v28[2](v28, @"type");
  if (!v29)
  {
    v29 = v28[2](v28, @"orderNumber");
    if (!v29)
    {
      v29 = v28[2](v28, @"name");
    }
  }

  v30 = v29;

  return v30;
}

- (void)preprocessForSaveAsTheme
{
  objc_msgSend_willModify(self, a2, v2);
  objc_opt_class();
  v6 = objc_msgSend_theme(self, v4, v5);
  v11 = TSUDynamicCast();

  v9 = objc_msgSend_generateUUID(KNTheme, v7, v8);
  objc_msgSend_setUUID_(v11, v10, v9);
}

- (void)prepareForSavingAsTemplate
{
  v49.receiver = self;
  v49.super_class = KNDocumentRoot;
  [(TSADocumentRoot *)&v49 prepareForSavingAsTemplate];
  v5 = objc_msgSend_show(self, v3, v4);
  v8 = objc_msgSend_slideTree(v5, v6, v7);
  v11 = objc_msgSend_theme(v5, v9, v10);
  v14 = objc_msgSend_templateSlides(v11, v12, v13);
  v16 = objc_msgSend_objectAtIndexedSubscript_(v14, v15, 0);

  v19 = objc_msgSend_slide(v16, v17, v18);
  v20 = [KNSlideNode alloc];
  v23 = objc_msgSend_context(v5, v21, v22);
  v25 = objc_msgSend_initWithContext_(v20, v24, v23);

  v27 = objc_msgSend_blankSlideWithSlideNode_templateSlide_andShow_(KNSlide, v26, v25, v19, v5);
  objc_msgSend_setSlide_(v25, v28, v27);

  v31 = objc_msgSend_accessController(self, v29, v30);

  if (!v31)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[KNDocumentRoot prepareForSavingAsTemplate]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNDocumentRoot.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 1761, 0, "invalid nil value for '%{public}s'", "self.accessController");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
  }

  v41 = objc_msgSend_accessController(self, v32, v33);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_275D5B8D0;
  v46[3] = &unk_27A697C10;
  v47 = v8;
  v48 = v25;
  v42 = v25;
  v43 = v8;
  objc_msgSend_performWrite_(v41, v44, v46);

  objc_msgSend_setTemplateIdentifier_(self, v45, 0);
}

- (BOOL)validateUIState:(id)state
{
  stateCopy = state;
  v7 = objc_msgSend_slideTreeSelection(stateCopy, v5, v6);
  v10 = objc_msgSend_slideNodes(v7, v8, v9);
  v13 = objc_msgSend_slideNodeToEdit(v7, v11, v12);
  v14 = MEMORY[0x277CBEB98];
  v17 = objc_msgSend_show(self, v15, v16);
  v20 = objc_msgSend_slideTree(v17, v18, v19);
  v23 = objc_msgSend_slideNodes(v20, v21, v22);
  v25 = objc_msgSend_setWithArray_(v14, v24, v23);

  if (objc_msgSend_isSubsetOfSet_(v10, v26, v25))
  {
    v29 = objc_msgSend_containsObject_(v10, v27, v13);
  }

  else
  {
    v29 = 0;
  }

  v30 = objc_msgSend_collapsedSlideNodes(stateCopy, v27, v28);
  v33 = objc_msgSend_count(v30, v31, v32);
  isSubsetOfSet = (v33 == 0) & v29;
  if (v33 && v29)
  {
    isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v30, v34, v25);
  }

  v37 = objc_msgSend_outlineCollapsedSlideNodes(stateCopy, v34, v35);
  v40 = objc_msgSend_count(v37, v38, v39);
  v43 = (v40 == 0) & isSubsetOfSet;
  if (v40 && isSubsetOfSet)
  {
    v43 = objc_msgSend_isSubsetOfSet_(v37, v41, v25);
  }

  v44 = objc_msgSend_outlineHasBodySlideNodes(stateCopy, v41, v42);
  v47 = objc_msgSend_count(v44, v45, v46);
  v49 = (v47 == 0) & v43;
  if (v47 && v43)
  {
    v49 = objc_msgSend_isSubsetOfSet_(v44, v48, v25);
  }

  return v49;
}

- (unint64_t)writingDirectionForStorage
{
  if (TSWPPrimaryInputMethodIsRTL())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)validateSlideNode:(id)node
{
  nodeCopy = node;
  v7 = objc_msgSend_slide(nodeCopy, v5, v6);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_5;
  }

  v10 = objc_msgSend_show(self, v8, v9);
  v13 = objc_msgSend_slideTree(v10, v11, v12);
  v15 = objc_msgSend_containsSlideNode_(v13, v14, nodeCopy);

  if ((v15 & 1) == 0)
  {
LABEL_5:
    v19 = objc_msgSend_theme(self, v16, v17);
    v22 = objc_msgSend_templateSlides(v19, v20, v21);
    v18 = objc_msgSend_containsObject_(v22, v23, nodeCopy);

    goto LABEL_6;
  }

  v18 = 1;
LABEL_6:

  return v18;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 4))
  {
    v7 = *(archive + 4);
  }

  else
  {
    v7 = MEMORY[0x277D80010];
  }

  v18.receiver = self;
  v18.super_class = KNDocumentRoot;
  [(TSADocumentRoot *)&v18 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(archive + 3);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_275D5BE3C;
  v17[3] = &unk_27A697C38;
  v17[4] = self;
  v9 = unarchiverCopy;
  v11 = objc_opt_class();
  if (v8)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v9, v10, v8, v11, 0, v17);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v9, v10, MEMORY[0x277D80A18], v11, 0, v17);
  }

  if ((*(archive + 16) & 4) != 0)
  {
    v12 = *(archive + 5);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_275D5BE48;
    v16[3] = &unk_27A697C60;
    v16[4] = self;
    v13 = v9;
    v14 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v13, v15, v12, v14, 0, v16);
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_275D5BFD8;
  v15[3] = &unk_27A697C88;
  archiveCopy = archive;
  v7 = archiverCopy;
  v16 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 3, archive, v15);
  v12 = objc_msgSend_show(self, v9, v10);
  *(archive + 4) |= 1u;
  v13 = *(archive + 3);
  if (!v13)
  {
    v14 = *(archive + 1);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x277C8F050](v14);
    *(archive + 3) = v13;
  }

  objc_msgSend_setStrongReference_message_(v7, v11, v12, v13);
}

- (void)p_hyperlinkAndBreadcrumbUpgradeForUnity20SlideNodes:(id)nodes
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  nodesCopy = nodes;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(nodesCopy, v4, &v10, v14, 16);
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(nodesCopy);
        }

        objc_msgSend_willModifyForUpgrade(*(*(&v10 + 1) + 8 * v9++), v5, v6, v10);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(nodesCopy, v5, &v10, v14, 16);
    }

    while (v7);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812EA908[58]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
  v10 = objc_msgSend_preUFFVersion(unarchiverCopy, v8, v9);
  v13 = objc_msgSend_fileFormatVersion(unarchiverCopy, v11, v12);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_275D5C284;
  v15[3] = &unk_27A697D50;
  v15[4] = self;
  v15[5] = v10;
  v15[6] = v13;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v14, v15);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275D5DE54, off_2812EA908[58]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

@end