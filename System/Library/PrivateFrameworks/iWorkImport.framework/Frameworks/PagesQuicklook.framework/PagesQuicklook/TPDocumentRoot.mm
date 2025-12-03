@interface TPDocumentRoot
+ (CGSize)pageSizeFromPaperSize:(CGSize)size pageScale:(double)scale orientation:(int64_t)orientation;
+ (CGSize)previewImageSizeForType:(unint64_t)type;
+ (void)localizeModelObject:(id)object withTemplateBundle:(id)bundle andLocale:(id)locale;
+ (void)localizeTextStorage:(id)storage withTemplateBundle:(id)bundle andLocale:(id)locale;
- (BOOL)cellCommentsAllowedOnInfo:(id)info;
- (BOOL)containsVerticalText;
- (BOOL)documentAllowsPencilAnnotationsOnModel:(id)model;
- (BOOL)documentDisallowsHighlightsOnStorage:(id)storage;
- (BOOL)exportToPath:(id)path exporter:(id)exporter delegate:(id)delegate error:(id *)error;
- (BOOL)freehandDrawingsRequireSpacerShape;
- (BOOL)hasPageBackgroundsForSections;
- (BOOL)hasPencilAnnotations;
- (BOOL)hasTrackedChanges;
- (BOOL)hasViewState;
- (BOOL)isDrawableOnSectionTemplatePage:(id)page;
- (BOOL)isMultiPageForQuickLook;
- (BOOL)isSectionInfo:(id)info;
- (BOOL)isSectionModel:(id)model;
- (BOOL)isSectionTemplateInfo:(id)info;
- (BOOL)isTrackingChanges;
- (BOOL)p_drawableInfoIsOwnedByATPPageTemplate:(id)template;
- (BOOL)p_isUniquePageTemplateName:(id)name;
- (BOOL)prepareAndValidateSidecarViewStateRootWithVersionUUIDMismatch:(id)mismatch sidecarDocumentRevision:(id)revision originalDocumentViewStateRoot:(id)root;
- (BOOL)resolverNameIsUsed:(id)used;
- (BOOL)sectionTemplatePagesAllowDrawable:(id)drawable;
- (BOOL)shouldHyphenate;
- (BOOL)shouldShowChangeKind:(int)kind date:(id)date;
- (BOOL)textIsVerticalInStorage:(id)storage atCharIndex:(unint64_t)index;
- (BOOL)useLigatures;
- (CGRect)pageBoundsWithinMargins;
- (CGSize)pageSize;
- (CGSize)paperSize;
- (CGSize)unrotatedPaperSize;
- (NSArray)nonHiddenSections;
- (NSArray)sections;
- (NSString)blankPageTemplateName;
- (TPDocumentRoot)initWithContext:(id)context;
- (TPSection)firstSection;
- (__CFLocale)hyphenationLocale;
- (double)currentDesiredPencilAnnotationDrawingScale;
- (double)footnoteGap;
- (double)valueForMargin:(int64_t)margin;
- (id)UIStateForChart:(id)chart;
- (id)changeSessionManagerForModel:(id)model;
- (id)childEnumerator;
- (id)citationRecords;
- (id)equationEnvironment;
- (id)freehandDrawingToolkitUIState;
- (id)initUsingDefaultThemeWithContext:(id)context;
- (id)modelEnumeratorWithFlags:(unint64_t)flags forObjectsPassingTest:(id)test;
- (id)modelPathComponentForChild:(id)child;
- (id)pBlankPageTemplate;
- (id)pCreateBlankPageTemplate;
- (id)p_previewImageWithImageSize:(CGSize)size;
- (id)p_realTOCEntryStyleFromFakeTOCEntryStyle:(id)style context:(id)context;
- (id)pageTemplateWithName:(id)name;
- (id)pencilAnnotationUIState;
- (id)previewImageForSize:(CGSize)size;
- (id)resolverContainerForName:(id)name caseSensitive:(BOOL)sensitive;
- (id)resolverContainerNamesMatchingPrefix:(id)prefix;
- (id)resolverMatchingName:(id)name;
- (id)resolverMatchingName:(id)name contextContainerName:(id)containerName;
- (id)resolverMatchingName:(id)name contextResolver:(id)resolver;
- (id)resolversMatchingPrefix:(id)prefix;
- (id)sectionTemplatePageOwningInfo:(id)info;
- (id)sectionTemplatePageOwningModel:(id)model;
- (id)storagesWithChanges;
- (id)thumbnailIdentifierForPageIndex:(unint64_t)index;
- (id)uniquePageTemplateNameWithProposedPageTemplateName:(id)name;
- (id)uuidPathPrefixComponentsForInfo:(id)info;
- (int)indexForObject:(id)object;
- (int)naturalAlignmentAtCharIndex:(unint64_t)index inTextStorage:(id)storage;
- (int)verticalAlignmentForTextStorage:(id)storage;
- (int64_t)contentWritingDirection;
- (int64_t)footnoteKind;
- (int64_t)pageViewState;
- (unint64_t)inheritedSectionIndexForSectionIndex:(unint64_t)index;
- (unint64_t)pageIndexForThumbnailIdentifier:(id)identifier;
- (unint64_t)pageTemplateIndexForModelObject:(id)object;
- (unint64_t)rootIndexForObject:(id)object;
- (unsigned)nextUntitledResolverIndex;
- (void)addRemappedTableName:(id)name;
- (void)appSpecificPrepareNewDocumentWithTemplateIdentifier:(id)identifier bundle:(id)bundle documentLocale:(id)locale;
- (void)clearRemappedTableNames;
- (void)dealloc;
- (void)didAddDrawable:(id)drawable;
- (void)documentDidLoad;
- (void)i_assignBlankPageTemplateToAllSections;
- (void)i_removeAllPageTemplates;
- (void)i_upgradeSectionsForPageTemplates;
- (void)invalidateViewState;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)pCommonInitialization;
- (void)pCreateBodyStorage;
- (void)pCreateDrawablesZOrderBodyStorage:(id)storage addAnchoredDrawables:(BOOL)drawables;
- (void)pCreateFloatingDrawables;
- (void)pCreateFlowInfoContainer;
- (void)pFinishInitialization;
- (void)pUpgradeSection:(id)section documentVersion:(unint64_t)version;
- (void)p_initializeShowInBookmarksListParagraphStylesProperty;
- (void)p_upgradeTOCModelForUnity20;
- (void)p_upgradeTOCStyles;
- (void)saveToArchiver:(id)archiver;
- (void)setBodyStorage:(id)storage dolcContext:(id)context;
- (void)setBottomMargin:(double)bottomMargin;
- (void)setChangeTrackingEnabled:(BOOL)enabled;
- (void)setExportViewModeForCTMarkup:(BOOL)markup deletions:(BOOL)deletions paginatedPageController:(id)controller;
- (void)setFloatingDrawables:(id)drawables;
- (void)setFlowInfoContainer:(id)container;
- (void)setFooterMargin:(double)footerMargin;
- (void)setHeaderMargin:(double)headerMargin;
- (void)setIndex:(int)index forObject:(id)object;
- (void)setLaysOutBodyVertically:(BOOL)vertically;
- (void)setLeftMargin:(double)leftMargin;
- (void)setOrientation:(int64_t)orientation;
- (void)setPageScale:(double)pageScale;
- (void)setPageSize:(CGSize)pageSize;
- (void)setPaperID:(id)d;
- (void)setPrinterID:(id)d;
- (void)setRightMargin:(double)rightMargin;
- (void)setStylesheet:(id)stylesheet andThemeForImport:(id)import;
- (void)setStylesheetForUpgradeToSingleStylesheet:(id)stylesheet;
- (void)setTheme:(id)theme;
- (void)setThemeForTemplateImport:(id)import;
- (void)setTopMargin:(double)topMargin;
- (void)setUIState:(id)state forChart:(id)chart;
- (void)setUsesSingleHeaderFooter:(BOOL)footer;
- (void)setValue:(double)value forMargin:(int64_t)margin;
- (void)updateWritingDirection:(unint64_t)direction;
- (void)upgradeFromOldSectionWithPageSize:(CGSize)size leftMargin:(double)margin rightMargin:(double)rightMargin topMargin:(double)topMargin bottomMargin:(double)bottomMargin headerMargin:(double)headerMargin footerMargin:(double)footerMargin;
- (void)viewDidAppear;
- (void)willClose;
- (void)willRemoveDrawable:(id)drawable;
@end

@implementation TPDocumentRoot

- (void)setUsesSingleHeaderFooter:(BOOL)footer
{
  if (self->_usesSingleHeaderFooter != footer)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_usesSingleHeaderFooter = footer;
  }
}

- (CGSize)pageSize
{
  width = self->_pageSize.width;
  height = self->_pageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setPageSize:(CGSize)pageSize
{
  height = pageSize.height;
  width = pageSize.width;
  p_pageSize = &self->_pageSize;
  pageSize = self->_pageSize;
  if (pageSize.width != width || pageSize.height != height)
  {
    objc_msgSend_willModify(self, a2, pageSize, *&pageSize.height, v3, v4);
    p_pageSize->width = width;
    p_pageSize->height = height;
  }
}

- (void)setPageScale:(double)pageScale
{
  v6 = pageScale;
  pageScale = self->_pageScale;
  if (pageScale != v6)
  {
    objc_msgSend_willModify(self, a2, *&pageScale, v3, v4, v5);
    self->_pageScale = v6;
  }
}

- (void)setPrinterID:(id)d
{
  dCopy = d;
  if (self->_printerID != dCopy)
  {
    v15 = dCopy;
    objc_msgSend_willModify(self, dCopy, v5, v6, v7, v8);
    v14 = objc_msgSend_copy(v15, v9, v10, v11, v12, v13);

    objc_storeStrong(&self->_printerID, v14);
    dCopy = v14;
  }
}

- (void)setPaperID:(id)d
{
  dCopy = d;
  if (self->_paperID != dCopy)
  {
    v15 = dCopy;
    objc_msgSend_willModify(self, dCopy, v5, v6, v7, v8);
    v14 = objc_msgSend_copy(v15, v9, v10, v11, v12, v13);

    objc_storeStrong(&self->_paperID, v14);
    dCopy = v14;
  }
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_orientation = orientation;
  }
}

- (void)setLeftMargin:(double)leftMargin
{
  v6 = leftMargin;
  leftMargin = self->_leftMargin;
  if (leftMargin != v6)
  {
    objc_msgSend_willModify(self, a2, *&leftMargin, v3, v4, v5);
    self->_leftMargin = v6;
  }
}

- (void)setRightMargin:(double)rightMargin
{
  v6 = rightMargin;
  rightMargin = self->_rightMargin;
  if (rightMargin != v6)
  {
    objc_msgSend_willModify(self, a2, *&rightMargin, v3, v4, v5);
    self->_rightMargin = v6;
  }
}

- (void)setTopMargin:(double)topMargin
{
  v6 = topMargin;
  topMargin = self->_topMargin;
  if (topMargin != v6)
  {
    objc_msgSend_willModify(self, a2, *&topMargin, v3, v4, v5);
    self->_topMargin = v6;
  }
}

- (void)setBottomMargin:(double)bottomMargin
{
  v6 = bottomMargin;
  bottomMargin = self->_bottomMargin;
  if (bottomMargin != v6)
  {
    objc_msgSend_willModify(self, a2, *&bottomMargin, v3, v4, v5);
    self->_bottomMargin = v6;
  }
}

- (void)setHeaderMargin:(double)headerMargin
{
  v6 = headerMargin;
  headerMargin = self->_headerMargin;
  if (headerMargin != v6)
  {
    objc_msgSend_willModify(self, a2, *&headerMargin, v3, v4, v5);
    self->_headerMargin = v6;
  }
}

- (void)setFooterMargin:(double)footerMargin
{
  v6 = footerMargin;
  footerMargin = self->_footerMargin;
  if (footerMargin != v6)
  {
    objc_msgSend_willModify(self, a2, *&footerMargin, v3, v4, v5);
    self->_footerMargin = v6;
  }
}

- (void)setLaysOutBodyVertically:(BOOL)vertically
{
  if (self->_laysOutBodyVertically != vertically)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_laysOutBodyVertically = vertically;
  }
}

- (void)setChangeTrackingEnabled:(BOOL)enabled
{
  if (self->_changeTrackingEnabled != enabled)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_changeTrackingEnabled = enabled;
  }
}

- (BOOL)isTrackingChanges
{
  if (self->_changeTrackingEnabled)
  {
    v6 = objc_msgSend_uiState(self, a2, v2, v3, v4, v5);
    v12 = objc_msgSend_changeTrackingPaused(v6, v7, v8, v9, v10, v11) ^ 1;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (id)pageTemplateWithName:(id)name
{
  nameCopy = name;
  pageTemplates = self->_pageTemplates;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_276005D38;
  v20[3] = &unk_27A6A8D18;
  v6 = nameCopy;
  v21 = v6;
  v13 = objc_msgSend_indexOfObjectPassingTest_(pageTemplates, v7, v8, v9, v10, v11, v20);
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = 0;
  }

  else
  {
    v18 = objc_msgSend_objectAtIndexedSubscript_(self->_pageTemplates, v12, v14, v15, v16, v17, v13);
  }

  return v18;
}

- (NSString)blankPageTemplateName
{
  v2 = sub_275FFFC3C();
  v8 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, v4, v5, v6, v7, @"Blank", &stru_288501738, @"Pages");

  return v8;
}

- (id)uniquePageTemplateNameWithProposedPageTemplateName:(id)name
{
  nameCopy = name;
  v5 = 1;
  v6 = nameCopy;
  for (i = objc_msgSend_p_isUniquePageTemplateName_(self, v7, v8, v9, v10, v11, nameCopy); (i & 1) == 0; i = objc_msgSend_p_isUniquePageTemplateName_(self, v26, v27, v28, v29, v30, v25))
  {
    v13 = sub_275FFFC3C();
    v19 = objc_msgSend_localizedStringForKey_value_table_(v13, v14, v15, v16, v17, v18, @"%1$@ %2$lu", &stru_288501738, @"Pages");

    v25 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v20, v21, v22, v23, v24, v19, nameCopy, v5);

    ++v5;
    v6 = v25;
  }

  return v6;
}

- (TPSection)firstSection
{
  bodyStorage = self->_bodyStorage;
  if (bodyStorage)
  {
    objc_msgSend_sectionEnumeratorAtCharIndex_(bodyStorage, a2, v2, v3, v4, v5, 0);
  }

  else
  {
    v7 = 0uLL;
    memset(v10, 0, sizeof(v10));
  }

  v8 = sub_276000688(v10, 0, v7, v3, v4, v5);
  sub_2760005A4(v10);

  return v8;
}

- (NSArray)nonHiddenSections
{
  bodyStorage = self->_bodyStorage;
  v7 = objc_msgSend_range(bodyStorage, a2, v2, v3, v4, v5);
  if (bodyStorage)
  {
    objc_msgSend_sectionEnumeratorForCharRange_(bodyStorage, v8, v9, v10, v11, v12, v7, v8);
  }

  else
  {
    v13 = 0uLL;
    v47 = 0u;
    v48 = 0u;
    *from = 0u;
  }

  v14 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v13, v10, v11, v12);
  do
  {
    v20 = sub_276000688(from, 0, v15, v16, v17, v18);
    if (v20)
    {
      objc_msgSend_addObject_(v14, v19, v21, v22, v23, v24, v20);
    }

    else
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v21, v22, v23, v24, "[TPDocumentRoot nonHiddenSections]");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v33, v34, v35, v36, v37, v26, v32, 479, 0, "invalid nil value for '%{public}s'", "section");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41, v42);
    }

    sub_276000610(from, v45);
    v43 = sub_2760009C4(v45);
    sub_2760005A4(v45);
  }

  while (!v43);
  sub_2760005A4(from);

  return v14;
}

- (NSArray)sections
{
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4, v5);
  v13 = objc_msgSend_bodyStorage(self, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_sectionCount(v13, v14, v15, v16, v17, v18);

  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      v26 = objc_msgSend_bodyStorage(self, v20, v21, v22, v23, v24);
      v32 = objc_msgSend_sectionAtSectionIndex_effectiveRange_(v26, v27, v28, v29, v30, v31, i, 0);

      if (v32)
      {
        objc_msgSend_addObject_(v7, v33, v34, v35, v36, v37, v32);
      }

      else
      {
        v38 = MEMORY[0x277D81150];
        v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, v37, "[TPDocumentRoot sections]");
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v46, v47, v48, v49, v50, v39, v45, 494, 0, "nil section in body storage");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54, v55);
      }
    }
  }

  return v7;
}

- (void)i_removeAllPageTemplates
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_settings(self, a2, v2, v3, v4, v5);
  hasBody = objc_msgSend_hasBody(v7, v8, v9, v10, v11, v12);

  if ((hasBody & 1) == 0)
  {
    v19 = objc_msgSend_pageTemplates(self, v14, v15, v16, v17, v18);
    v25 = objc_msgSend_copy(v19, v20, v21, v22, v23, v24);

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v26 = v25;
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, v28, v29, v30, v31, &v40, v44, 16);
    if (v33)
    {
      v38 = *v41;
      do
      {
        v39 = 0;
        do
        {
          if (*v41 != v38)
          {
            objc_enumerationMutation(v26);
          }

          objc_msgSend_removeObject_forContainerNamed_(self, v32, v34, v35, v36, v37, *(*(&v40 + 1) + 8 * v39++), @"TP.DocumentRoot.PageTemplates", v40);
        }

        while (v33 != v39);
        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v32, v34, v35, v36, v37, &v40, v44, 16);
      }

      while (v33);
    }
  }
}

- (void)i_assignBlankPageTemplateToAllSections
{
  v45 = *MEMORY[0x277D85DE8];
  if (!self->_pageTemplates)
  {
    v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4, v5);
    pageTemplates = self->_pageTemplates;
    self->_pageTemplates = v7;
  }

  v9 = objc_msgSend_pBlankPageTemplate(self, a2, v2, v3, v4, v5);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v14 = objc_msgSend_sections(self, v10, 0, v11, v12, v13, 0);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, v16, v17, v18, v19, &v40, v44, 16);
  if (v21)
  {
    v26 = *v41;
    do
    {
      v27 = 0;
      do
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(v14);
        }

        v28 = objc_msgSend_sectionTemplatePageForType_(*(*(&v40 + 1) + 8 * v27), v20, v22, v23, v24, v25, 0);
        v34 = objc_msgSend_objectUUIDPath(v9, v29, v30, v31, v32, v33);
        objc_msgSend_i_setPageTemplateUUIDPath_(v28, v35, v36, v37, v38, v39, v34);

        ++v27;
      }

      while (v21 != v27);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v20, v22, v23, v24, v25, &v40, v44, 16);
    }

    while (v21);
  }
}

- (void)i_upgradeSectionsForPageTemplates
{
  v53 = *MEMORY[0x277D85DE8];
  if (!self->_pageTemplates)
  {
    v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4, v5);
    pageTemplates = self->_pageTemplates;
    self->_pageTemplates = v7;
  }

  v9 = objc_msgSend_pBlankPageTemplate(self, a2, v2, v3, v4, v5);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = objc_msgSend_sections(self, v10, 0, v11, v12, v13, 0);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, v16, v17, v18, v19, &v48, v52, 16);
  if (v21)
  {
    v26 = *v49;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v49 != v26)
        {
          objc_enumerationMutation(v14);
        }

        v28 = *(*(&v48 + 1) + 8 * i);
        v29 = objc_msgSend_pageTemplate(v28, v20, v22, v23, v24, v25);
        v30 = v29 == 0;

        if (v30)
        {
          if (!v9)
          {
            v9 = objc_msgSend_pCreateBlankPageTemplate(self, v20, v22, v23, v24, v25);
          }

          v31 = objc_msgSend_sectionTemplatePageForType_(v28, v20, v22, v23, v24, v25, 0);
          objc_msgSend_willModifyForUpgrade(v31, v32, v33, v34, v35, v36);
          v42 = objc_msgSend_objectUUIDPath(v9, v37, v38, v39, v40, v41);
          objc_msgSend_i_setPageTemplateUUIDPath_(v31, v43, v44, v45, v46, v47, v42);
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v20, v22, v23, v24, v25, &v48, v52, 16);
    }

    while (v21);
  }
}

- (id)equationEnvironment
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_equationEnvironment)
  {
    equationEnvironmentData = selfCopy->_equationEnvironmentData;
    if (equationEnvironmentData)
    {
      goto LABEL_8;
    }

    v10 = objc_msgSend_dataForDefaultEnvironment(MEMORY[0x277D7FF68], v3, v4, v5, v6, v7);
    if (v10)
    {
      objc_msgSend_willModify(selfCopy, v9, v11, v12, v13, v14);
      v15 = selfCopy->_equationEnvironmentData;
      selfCopy->_equationEnvironmentData = 0;

      v16 = MEMORY[0x277D80828];
      v22 = objc_msgSend_context(selfCopy, v17, v18, v19, v20, v21);
      v28 = objc_msgSend_dataFromNSData_filename_context_(v16, v23, v24, v25, v26, v27, v10, @"EQKitEnvironment.plist", v22);
      v29 = selfCopy->_equationEnvironmentData;
      selfCopy->_equationEnvironmentData = v28;
    }

    if (!selfCopy->_equationEnvironmentData)
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, v14, "[TPDocumentRoot equationEnvironment]");
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v38, v39, v40, v41, v42, v31, v37, 566, 0, "invalid nil value for '%{public}s'", "_equationEnvironmentData");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46, v47);
    }

    equationEnvironmentData = selfCopy->_equationEnvironmentData;
    if (equationEnvironmentData)
    {
LABEL_8:
      v49 = objc_msgSend_NSData(equationEnvironmentData, v3, v4, v5, v6, v7);
      if (v49)
      {
        v55 = objc_msgSend_environmentFromData_(MEMORY[0x277D7FF68], v48, v50, v51, v52, v53, v49);
        if (v55)
        {
          objc_msgSend_willModify(selfCopy, v54, v56, v57, v58, v59);
          objc_storeStrong(&selfCopy->_equationEnvironment, v55);
        }
      }
    }

    if (!selfCopy->_equationEnvironment)
    {
      if (*MEMORY[0x277D81430] != -1)
      {
        sub_2760383DC();
      }

      v60 = objc_msgSend_defaultEnvironment(MEMORY[0x277D7FF68], v3, v4, v5, v6, v7);
      equationEnvironment = selfCopy->_equationEnvironment;
      selfCopy->_equationEnvironment = v60;
    }
  }

  objc_sync_exit(selfCopy);

  v62 = selfCopy->_equationEnvironment;

  return v62;
}

- (void)documentDidLoad
{
  v8.receiver = self;
  v8.super_class = TPDocumentRoot;
  [(TSADocumentRoot *)&v8 documentDidLoad];
  if (self->_shouldUniquifyTableNames)
  {
    objc_msgSend_p_uniquifyTableNames(self, v3, v4, v5, v6, v7);
    self->_shouldUniquifyTableNames = 0;
  }
}

- (void)dealloc
{
  hyphenationLocale = self->_hyphenationLocale;
  if (hyphenationLocale)
  {
    CFRelease(hyphenationLocale);
  }

  tablesWithUniqueNames = self->_tablesWithUniqueNames;
  self->_tablesWithUniqueNames = 0;

  v5.receiver = self;
  v5.super_class = TPDocumentRoot;
  [(TSADocumentRoot *)&v5 dealloc];
}

- (void)pCreateBodyStorage
{
  v7 = objc_msgSend_theme(self, a2, v2, v3, v4, v5);
  v38 = objc_msgSend_bodyStyle(v7, v8, v9, v10, v11, v12);

  v13 = objc_alloc(MEMORY[0x277D80F28]);
  v19 = objc_msgSend_context(self, v14, v15, v16, v17, v18);
  stylesheet = self->_stylesheet;
  v26 = objc_msgSend_initialListStyle(v38, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v13, v27, v28, v29, v30, v31, v19, &stru_288501738, 0, stylesheet, v38, v26, 0, 0);

  objc_msgSend_setBodyStorage_dolcContext_(self, v33, v34, v35, v36, v37, v32, 0);
}

- (void)pCreateDrawablesZOrderBodyStorage:(id)storage addAnchoredDrawables:(BOOL)drawables
{
  drawablesCopy = drawables;
  storageCopy = storage;
  v6 = [TPDrawablesZOrder alloc];
  v12 = objc_msgSend_context(self, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_initWithContext_(v6, v13, v14, v15, v16, v17, v12);
  drawablesZOrder = self->_drawablesZOrder;
  self->_drawablesZOrder = v18;

  if (storageCopy)
  {
    objc_msgSend_addDrawable_(self->_drawablesZOrder, v20, v21, v22, v23, v24, storageCopy);
    if (drawablesCopy)
    {
      v30 = objc_msgSend_attachmentCount(storageCopy, v25, v26, v27, v28, v29);
      if (v30)
      {
        for (i = 0; i != v30; ++i)
        {
          objc_opt_class();
          v37 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(storageCopy, v32, v33, v34, v35, v36, i, 0);
          v38 = TSUDynamicCast();

          if (v38 && objc_msgSend_isDrawable(v38, v39, v40, v41, v42, v43) && objc_msgSend_isAnchored(v38, v44, v45, v46, v47, v48) && (objc_msgSend_isPartitioned(v38, v49, v50, v51, v52, v53) & 1) == 0)
          {
            v59 = self->_drawablesZOrder;
            v60 = objc_msgSend_drawable(v38, v54, v55, v56, v57, v58);
            objc_msgSend_addDrawable_(v59, v61, v62, v63, v64, v65, v60);
          }
        }
      }
    }
  }
}

- (void)pCreateFloatingDrawables
{
  v3 = [TPFloatingDrawables alloc];
  v9 = objc_msgSend_context(self, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_initWithContext_(v3, v10, v11, v12, v13, v14, v9);
  floatingDrawables = self->_floatingDrawables;
  self->_floatingDrawables = v15;

  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(self->_floatingDrawables, v17, v18, v19, v20, v21, self, 0);
  v27 = self->_floatingDrawables;

  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v27, v22, v23, v24, v25, v26, self, 0);
}

- (void)pCreateFlowInfoContainer
{
  v3 = objc_alloc(MEMORY[0x277D80E38]);
  v9 = objc_msgSend_context(self, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_initWithContext_(v3, v10, v11, v12, v13, v14, v9);
  flowInfoContainer = self->_flowInfoContainer;
  self->_flowInfoContainer = v15;

  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(self->_flowInfoContainer, v17, v18, v19, v20, v21, self, 0);
  v27 = self->_flowInfoContainer;

  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v27, v22, v23, v24, v25, v26, self, 0);
}

- (void)pCommonInitialization
{
  if (!self->_settings)
  {
    v7 = [TPDocumentSettings alloc];
    v13 = objc_msgSend_context(self, v8, v9, v10, v11, v12);
    v19 = objc_msgSend_initWithContext_(v7, v14, v15, v16, v17, v18, v13);
    settings = self->_settings;
    self->_settings = v19;
  }

  stylesheet = self->_stylesheet;
  v22 = objc_msgSend_bodyStorage(self, a2, v2, v3, v4, v5);
  v28 = objc_msgSend_stylesheet(v22, v23, v24, v25, v26, v27);

  if (stylesheet != v28)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, v33, "[TPDocumentRoot pCommonInitialization]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v42, v43, v44, v45, v46, v35, v41, 832, 0, "Document style sheet and body storage style sheet don't match");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50, v51);
  }

  self->_needsInitialization = 0;
}

- (void)pFinishInitialization
{
  if (!self->_stylesheet)
  {
    v7 = objc_alloc(MEMORY[0x277D80AE0]);
    v13 = objc_msgSend_context(self, v8, v9, v10, v11, v12);
    canCullStyles = objc_msgSend_initWithContext_canCullStyles_(v7, v14, v15, v16, v17, v18, v13, 1);
    stylesheet = self->_stylesheet;
    self->_stylesheet = canCullStyles;
  }

  objc_msgSend_pCreateBodyStorage(self, a2, v2, v3, v4, v5);
  v26 = objc_msgSend_bodyStorage(self, v21, v22, v23, v24, v25);
  objc_msgSend_pCreateDrawablesZOrderBodyStorage_addAnchoredDrawables_(self, v27, v28, v29, v30, v31, v26, 0);

  objc_msgSend_pCreateFloatingDrawables(self, v32, v33, v34, v35, v36);
  objc_msgSend_pCreateFlowInfoContainer(self, v37, v38, v39, v40, v41);

  objc_msgSend_pCommonInitialization(self, v42, v43, v44, v45, v46);
}

- (TPDocumentRoot)initWithContext:(id)context
{
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = TPDocumentRoot;
  v5 = [(TSADocumentRoot *)&v23 initWithContext:contextCopy];
  v6 = v5;
  if (v5)
  {
    v5[529] = 1;
    *(v5 + 536) = *MEMORY[0x277D81640];
    *(v5 + 69) = 0x3FF0000000000000;
    objc_storeStrong(v5 + 70, *MEMORY[0x277D81648]);
    objc_storeStrong(&v6->_paperID, *MEMORY[0x277D815E0]);
    v6->_leftMargin = 72.0;
    v6->_rightMargin = 72.0;
    v6->_topMargin = 72.0;
    v6->_bottomMargin = 72.0;
    v6->_headerMargin = 36.0;
    v6->_footerMargin = 36.0;
    v6->_tableNameCounter = 1;
    v6->_shouldUniquifyTableNames = 0;
    tablesWithUniqueNames = v6->_tablesWithUniqueNames;
    v6->_tablesWithUniqueNames = 0;

    v6->_shouldUseAnchoredDrawableWrapSlop = 0;
    v8 = objc_alloc(MEMORY[0x277D80AE0]);
    v14 = objc_msgSend_context(v6, v9, v10, v11, v12, v13);
    canCullStyles = objc_msgSend_initWithContext_canCullStyles_(v8, v15, v16, v17, v18, v19, v14, 1);
    stylesheet = v6->_stylesheet;
    v6->_stylesheet = canCullStyles;
  }

  return v6;
}

- (id)initUsingDefaultThemeWithContext:(id)context
{
  contextCopy = context;
  inited = objc_msgSend_initDocumentObjectWithContext_(self, v5, v6, v7, v8, v9, contextCopy);
  if (inited)
  {
    v16 = objc_msgSend_themeWithContext_alternate_withStylesheet_(TPTheme, v10, v12, v13, v14, v15, contextCopy, 5, inited[61]);
    objc_msgSend_setTheme_(inited, v17, v18, v19, v20, v21, v16);
  }

  return inited;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v10 = objc_msgSend_context(self, v5, v6, v7, v8, v9);
  v11 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v17 = objc_msgSend_messageWithDescriptor_(v11, v12, v13, v14, v15, v16, *off_2812F85B8);

  if (v17[25])
  {
    v18 = v17[25];
  }

  else
  {
    v18 = MEMORY[0x277D80010];
  }

  v219.receiver = self;
  v219.super_class = TPDocumentRoot;
  [(TSADocumentRoot *)&v219 loadFromArchive:*&v18 unarchiver:v11];
  v24 = v17[2].i32[0];
  if ((v24 & 0x4000) != 0)
  {
    v25 = objc_msgSend_readDataReferenceMessage_(v11, v19, v20, v21, v22, v23, *&v17[29]);
    equationEnvironmentData = self->_equationEnvironmentData;
    self->_equationEnvironmentData = v25;

    v24 = v17[2].i32[0];
  }

  if ((v24 & 0x40) != 0)
  {
    v27 = v17[21];
    v218[0] = MEMORY[0x277D85DD0];
    v218[1] = 3221225472;
    v218[2] = sub_2760080C4;
    v218[3] = &unk_27A6A8D40;
    v218[4] = self;
    v28 = v11;
    v29 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v28, v30, v31, v32, v33, v34, *&v27, v29, 0, v218);

    v24 = v17[2].i32[0];
  }

  if ((v24 & 4) != 0)
  {
    v35 = v17[17];
    v217[0] = MEMORY[0x277D85DD0];
    v217[1] = 3221225472;
    v217[2] = sub_2760081CC;
    v217[3] = &unk_27A6A8D68;
    v217[4] = self;
    v36 = v11;
    v37 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v36, v38, v39, v40, v41, v42, *&v35, v37, 0, v217);

    v24 = v17[2].i32[0];
  }

  if ((v24 & 0x10) != 0)
  {
    v43 = v17[19];
    v216[0] = MEMORY[0x277D85DD0];
    v216[1] = 3221225472;
    v216[2] = sub_2760082D4;
    v216[3] = &unk_27A6A8D90;
    v216[4] = self;
    v44 = v11;
    v45 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v44, v46, v47, v48, v49, v50, *&v43, v45, 0, v216);

    v24 = v17[2].i32[0];
  }

  if ((v24 & 0x1000) != 0)
  {
    v51 = v17[27];
    v215[0] = MEMORY[0x277D85DD0];
    v215[1] = 3221225472;
    v215[2] = sub_2760083D0;
    v215[3] = &unk_27A6A8DB8;
    v215[4] = self;
    v52 = v11;
    v53 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v52, v54, v55, v56, v57, v58, *&v51, v53, 0, v215);

    v24 = v17[2].i32[0];
  }

  if ((v24 & 8) != 0)
  {
    v59 = v17[18];
    v214[0] = MEMORY[0x277D85DD0];
    v214[1] = 3221225472;
    v214[2] = sub_2760084D8;
    v214[3] = &unk_27A6A8DE0;
    v214[4] = self;
    v60 = v11;
    v61 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v60, v62, v63, v64, v65, v66, *&v59, v61, 0, v214);

    v24 = v17[2].i32[0];
  }

  if ((v24 & 0x8000) != 0)
  {
    v67 = v17[30];
    v213[0] = MEMORY[0x277D85DD0];
    v213[1] = 3221225472;
    v213[2] = sub_2760085E0;
    v213[3] = &unk_27A6A8E08;
    v213[4] = self;
    v68 = v11;
    v69 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v68, v70, v71, v72, v73, v74, *&v67, v69, 0, v213);
  }

  v211[0] = 0;
  v211[1] = v211;
  v211[2] = 0x3032000000;
  v211[3] = sub_2760086E8;
  v211[4] = sub_2760086F8;
  v212 = 0;
  v75 = v17[2].i32[0];
  if ((v75 & 0x20) != 0)
  {
    v76 = v17[20];
    v210[0] = MEMORY[0x277D85DD0];
    v210[1] = 3221225472;
    v210[2] = sub_276008700;
    v210[3] = &unk_27A6A8E30;
    v210[4] = v211;
    v77 = v11;
    v78 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v77, v79, v80, v81, v82, v83, *&v76, v78, 0, v210);

    v75 = v17[2].i32[0];
  }

  if ((v75 & 0x80) != 0)
  {
    v84 = v17[22];
    v209[0] = MEMORY[0x277D85DD0];
    v209[1] = 3221225472;
    v209[2] = sub_2760087F8;
    v209[3] = &unk_27A6A8E58;
    v209[4] = self;
    v85 = v11;
    v86 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v85, v87, v88, v89, v90, v91, *&v84, v86, 0, v209);
  }

  v208[0] = MEMORY[0x277D85DD0];
  v208[1] = 3221225472;
  v208[2] = sub_2760088F4;
  v208[3] = &unk_27A6A8508;
  v208[4] = self;
  v92 = v11;
  v93 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v92, v94, v95, v96, v97, v98, &v17[3], v93, 0, v208);

  if (v17[2].i8[3])
  {
    self->_usesSingleHeaderFooter = v17[35].i8[4];
  }

  v207[0] = MEMORY[0x277D85DD0];
  v207[1] = 3221225472;
  v207[2] = sub_276008908;
  v207[3] = &unk_27A6A8508;
  v207[4] = self;
  v99 = v92;
  v100 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v99, v101, v102, v103, v104, v105, &v17[6], v100, 0, v207);

  v206[0] = MEMORY[0x277D85DD0];
  v206[1] = 3221225472;
  v206[2] = sub_27600891C;
  v206[3] = &unk_27A6A8508;
  v206[4] = self;
  v106 = v99;
  v107 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v106, v108, v109, v110, v111, v112, &v17[9], v107, 0, v206);

  v118 = v17[2].i32[0];
  if ((v118 & 0x800) != 0)
  {
    v119 = v17[26];
    v205[0] = MEMORY[0x277D85DD0];
    v205[1] = 3221225472;
    v205[2] = sub_276008930;
    v205[3] = &unk_27A6A8E80;
    v205[4] = self;
    v120 = v106;
    v121 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v120, v122, v123, v124, v125, v126, *&v119, v121, 0, v205);

    v118 = v17[2].i32[0];
  }

  if ((v118 & 0x40000000) != 0)
  {
    self->_orientation = v17[37].u32[0];
    if ((v118 & 0x20000) != 0)
    {
LABEL_28:
      v114 = vcvtq_f64_f32(v17[32]);
      self->_pageSize = v114;
      self->_pageScale = 1.0;
      if ((v118 & 0x20000000) != 0)
      {
        self->_pageScale = v17[36].f32[1];
      }

      self->_leftMargin = v17[33].f32[0];
      self->_rightMargin = v17[33].f32[1];
      self->_topMargin = v17[34].f32[0];
      self->_bottomMargin = v17[34].f32[1];
      self->_headerMargin = v17[35].f32[0];
      v114.n128_f64[0] = v17[36].f32[0];
      *&self->_footerMargin = v114.n128_u64[0];
      if (v118)
      {
        goto LABEL_31;
      }

      goto LABEL_34;
    }
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(self, v113, v114, v115, v116, v117);
    v114.n128_u64[0] = *&self->_pageSize.width;
    v115.n128_u64[0] = *&self->_pageSize.height;
    self->_orientation = v114.n128_f64[0] > v115.n128_f64[0];
    v118 = v17[2].i32[0];
    if ((v118 & 0x20000) != 0)
    {
      goto LABEL_28;
    }
  }

  if (v118)
  {
LABEL_31:
    v127 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v113, v114, v115, v116, v117, *&v17[15] & 0xFFFFFFFFFFFFFFFELL);
    v133 = objc_msgSend_copy(v127, v128, v129, v130, v131, v132);
    printerID = self->_printerID;
    self->_printerID = v133;

    goto LABEL_35;
  }

LABEL_34:
  v135 = *MEMORY[0x277D81648];
  v127 = self->_printerID;
  self->_printerID = v135;
LABEL_35:

  if ((v17[2].i8[0] & 2) != 0)
  {
    v141 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v136, v137, v138, v139, v140, *&v17[16] & 0xFFFFFFFFFFFFFFFELL);
    v147 = objc_msgSend_copy(v141, v142, v143, v144, v145, v146);
    paperID = self->_paperID;
    self->_paperID = v147;
  }

  else
  {
    v141 = self->_paperID;
    self->_paperID = &stru_288501738;
  }

  self->_laysOutBodyVertically = v17[35].i8[5];
  v154 = v17[2].i32[0];
  if ((v154 & 0x4000000) != 0)
  {
    v155 = v17[35].i8[6];
  }

  else
  {
    v155 = 0;
  }

  self->_changeTrackingEnabled = v155 & 1;
  if ((v154 & 0x2000) != 0)
  {
    v156 = v17[28];
    v204[0] = MEMORY[0x277D85DD0];
    v204[1] = 3221225472;
    v204[2] = sub_276008A2C;
    v204[3] = &unk_27A6A8EA8;
    v204[4] = self;
    v157 = v106;
    v158 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v157, v159, v160, v161, v162, v163, *&v156, v158, 0, v204);
  }

  if (v17[13].i32[0])
  {
    v164 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v149, v150, v151, v152, v153);
    pageTemplates = self->_pageTemplates;
    self->_pageTemplates = v164;

    v203[0] = MEMORY[0x277D85DD0];
    v203[1] = 3221225472;
    v203[2] = sub_276008A98;
    v203[3] = &unk_27A6A8508;
    v203[4] = self;
    v166 = v106;
    v167 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v166, v168, v169, v170, v171, v172, &v17[12], v167, 0, v203);
  }

  v173 = v17[2].i32[0];
  if (v173 < 0)
  {
    v174 = v17[37].i8[4];
  }

  else
  {
    v174 = 1;
  }

  self->_shouldUseAnchoredDrawableWrapSlop = v174;
  if ((v173 & 0x8000000) != 0)
  {
    v175 = v17[35].i8[7];
  }

  else
  {
    v175 = 0;
  }

  hasPreUFFVersion = objc_msgSend_hasPreUFFVersion(v106, v149, v150, v151, v152, v153);
  v182 = objc_msgSend_preUFFVersion(v106, v177, v178, v179, v180, v181);
  self->_tableNameCounter = 1;
  self->_shouldUniquifyTableNames = 0;
  tablesWithUniqueNames = self->_tablesWithUniqueNames;
  self->_tablesWithUniqueNames = 0;

  v189 = objc_msgSend_fileFormatVersion(v106, v184, v185, v186, v187, v188);
  v196[0] = MEMORY[0x277D85DD0];
  v196[1] = 3221225472;
  v196[2] = sub_276008AB0;
  v196[3] = &unk_27A6A8ED0;
  v196[4] = self;
  v190 = v10;
  v197 = v190;
  v198 = v211;
  v201 = hasPreUFFVersion;
  v199 = v182;
  v200 = v189;
  v202 = v175 & 1;
  objc_msgSend_addFinalizeHandler_(v106, v191, v192, v193, v194, v195, v196);

  _Block_object_dispose(v211, 8);
}

- (void)p_upgradeTOCStyles
{
  v345 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_theme(self, a2, v2, v3, v4, v5);
  v324 = *MEMORY[0x277D80B98];
  hasPresetsOfKind = objc_msgSend_hasPresetsOfKind_(v6, v7, v8, v9, v10, v11);

  if (hasPresetsOfKind)
  {
    obj = objc_msgSend_theme(self, v13, v14, v15, v16, v17);
    objc_msgSend_hasPresetsOfKind_(obj, v18, v19, v20, v21, v22, v324);

    return;
  }

  objc_msgSend_willModifyForUpgrade(self, v13, v14, v15, v16, v17);
  v329 = objc_opt_new();
  v23 = objc_alloc(MEMORY[0x277D80F50]);
  v29 = objc_msgSend_context(self, v24, v25, v26, v27, v28);
  v328 = objc_msgSend_initWithContext_(v23, v30, v31, v32, v33, v34, v29);

  v35 = sub_275FFFC3C();
  v41 = objc_msgSend_localizedStringForKey_value_table_(v35, v36, v37, v38, v39, v40, @"Classic TOC", &stru_288501738, @"Pages");
  objc_msgSend_setDisplayName_(v328, v42, v43, v44, v45, v46, v41);

  v327 = objc_alloc_init(MEMORY[0x277D812B8]);
  objc_msgSend_stylesheet(self, v47, v48, v49, v50, v51);
  v340 = 0u;
  v341 = 0u;
  v338 = 0u;
  v330 = v339 = 0u;
  obja = objc_msgSend_styles(v330, v52, 0, v53, v54, v55);
  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v56, v57, v58, v59, v60, &v338, v344, 16);
  if (!v61)
  {
    goto LABEL_26;
  }

  v62 = *v339;
  v326 = *MEMORY[0x277D81000];
  v325 = *MEMORY[0x277D81058];
  do
  {
    for (i = 0; i != v61; ++i)
    {
      if (*v339 != v62)
      {
        objc_enumerationMutation(obja);
      }

      objc_opt_class();
      v64 = TSUDynamicCast();
      v70 = v64;
      if (v64)
      {
        v71 = objc_msgSend_intValueForProperty_(v64, v65, v66, v67, v68, v69, 108);
        v77 = objc_msgSend_valueForProperty_(v70, v72, v73, v74, v75, v76, 109);
        v83 = objc_msgSend_null(MEMORY[0x277CBEB68], v78, v79, v80, v81, v82);
        isEqual = objc_msgSend_isEqual_(v77, v84, v85, v86, v87, v88, v83);

        if (isEqual)
        {
          v95 = v77;
          v77 = 0;
          goto LABEL_22;
        }

        if (v77)
        {
          objc_opt_class();
          v101 = objc_msgSend_cascadedStyleWithIdentifier_(v330, v96, v97, v98, v99, v100, v77);
          v95 = TSUDynamicCast();

          if (v95)
          {
            v108 = objc_msgSend_p_realTOCEntryStyleFromFakeTOCEntryStyle_context_(self, v102, v103, v104, v105, v106, v95, v327);
            if (v71 == 1)
            {
              objc_msgSend_addIndexedStyle_withEntryStyle_(v328, v107, v109, v110, v111, v112, v70, v108);
            }

            v113 = objc_msgSend_styleIdentifier(v95, v107, v109, v110, v111, v112);
            isEqualToString = objc_msgSend_isEqualToString_(v113, v114, v115, v116, v117, v118, v326);

            if (isEqualToString)
            {
              v125 = objc_msgSend_stylesheet(v108, v120, v121, v122, v123, v124);
              objc_msgSend_setIdentifier_ofStyle_(v125, v126, v127, v128, v129, v130, v325, v108);
            }

            v131 = objc_msgSend_rootAncestor(v108, v120, v121, v122, v123, v124);
            if ((objc_msgSend_containsObject_(v329, v132, v133, v134, v135, v136, v131) & 1) == 0)
            {
              objc_msgSend_addObject_(v329, v137, v138, v139, v140, v141, v131);
            }

            v142 = objc_msgSend_bodyStorage(self, v137, v138, v139, v140, v141);
            objc_msgSend_replaceAllOccurrencesOfStyle_withStyle_undoTransaction_(v142, v143, v144, v145, v146, v147, v95, v108, 0);
          }

LABEL_22:
        }

        objc_msgSend_removeValueForProperty_(v70, v90, v91, v92, v93, v94, 109);
        objc_msgSend_removeValueForProperty_(v70, v148, v149, v150, v151, v152, 108);
      }
    }

    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v153, v154, v155, v156, v157, &v338, v344, 16);
  }

  while (v61);
LABEL_26:

  v163 = objc_msgSend_stylesheet(self, v158, v159, v160, v161, v162);
  v164 = *MEMORY[0x277D81058];
  v170 = objc_msgSend_styleWithIdentifier_(v163, v165, v166, v167, v168, v169, *MEMORY[0x277D81058]);
  v171 = v170 == 0;

  if (v171)
  {
    v177 = objc_alloc(MEMORY[0x277D80F40]);
    v183 = objc_msgSend_context(self, v178, v179, v180, v181, v182);
    v184 = sub_275FFFC3C();
    v190 = objc_msgSend_localizedStringForKey_value_table_(v184, v185, v186, v187, v188, v189, @"TOC", &stru_288501738, @"Pages");
    v196 = objc_msgSend_theme(self, v191, v192, v193, v194, v195);
    v202 = objc_msgSend_bodyStyle(v196, v197, v198, v199, v200, v201);
    v208 = objc_msgSend_initWithContext_name_basedOnParagraphStyle_(v177, v203, v204, v205, v206, v207, v183, v190, v202);

    v214 = objc_msgSend_stylesheet(self, v209, v210, v211, v212, v213);
    objc_msgSend_addStyle_withIdentifier_(v214, v215, v216, v217, v218, v219, v208, v164);

    objc_msgSend_insertObject_atIndex_(v329, v220, v221, v222, v223, v224, v208, 0);
  }

  v225 = objc_msgSend_indexedStyles(v328, v172, v173, v174, v175, v176);
  v231 = objc_msgSend_count(v225, v226, v227, v228, v229, v230) == 0;

  if (v231)
  {
    v237 = sub_275FFFC3C();
    v243 = objc_msgSend_localizedStringForKey_value_table_(v237, v238, v239, v240, v241, v242, @"Generic TOC", &stru_288501738, @"Pages");
    objc_msgSend_setDisplayName_(v328, v244, v245, v246, v247, v248, v243);

    v254 = objc_msgSend_stylesheet(self, v249, v250, v251, v252, v253);
    v260 = objc_msgSend_styleWithIdentifier_(v254, v255, v256, v257, v258, v259, v164);

    if (v260)
    {
      v336 = 0u;
      v337 = 0u;
      v334 = 0u;
      v335 = 0u;
      v265 = objc_msgSend_theme(self, v261, 0, v262, v263, v264);
      v271 = objc_msgSend_presetsOfKind_(v265, v266, v267, v268, v269, v270, *MEMORY[0x277D80BB0]);

      v278 = objc_msgSend_countByEnumeratingWithState_objects_count_(v271, v272, v273, v274, v275, v276, &v334, v343, 16);
      if (v278)
      {
        v283 = *v335;
        do
        {
          for (j = 0; j != v278; ++j)
          {
            if (*v335 != v283)
            {
              objc_enumerationMutation(v271);
            }

            v285 = *(*(&v334 + 1) + 8 * j);
            v286 = objc_msgSend_presetIdentifier(v285, v277, v279, v280, v281, v282);
            v292 = objc_msgSend_containsObject_(&unk_28850DCB8, v287, v288, v289, v290, v291, v286);

            if (v292)
            {
              v293 = objc_msgSend_paragraphStyle(v285, v277, v279, v280, v281, v282);
              objc_msgSend_addIndexedStyle_withEntryStyle_(v328, v294, v295, v296, v297, v298, v293, v260);
            }
          }

          v278 = objc_msgSend_countByEnumeratingWithState_objects_count_(v271, v277, v279, v280, v281, v282, &v334, v343, 16);
        }

        while (v278);
      }
    }
  }

  v299 = objc_msgSend_theme(self, v232, v233, v234, v235, v236);
  v342 = v328;
  v305 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v300, v301, v302, v303, v304, &v342, 1);
  objc_msgSend_setPresets_ofKind_(v299, v306, v307, v308, v309, v310, v305, v324);

  v316 = objc_msgSend_theme(self, v311, v312, v313, v314, v315);
  objc_msgSend_setPresets_ofKind_(v316, v317, v318, v319, v320, v321, v329, *MEMORY[0x277D80B90]);

  v322 = objc_opt_new();
  obsoleteTOCStyles = self->_obsoleteTOCStyles;
  self->_obsoleteTOCStyles = v322;
}

- (id)p_realTOCEntryStyleFromFakeTOCEntryStyle:(id)style context:(id)context
{
  styleCopy = style;
  contextCopy = context;
  v14 = objc_msgSend_objectForKeyedSubscript_(contextCopy, v8, v9, v10, v11, v12, styleCopy);
  if (!v14)
  {
    v19 = objc_msgSend_parent(styleCopy, v13, v15, v16, v17, v18);

    if (v19)
    {
      v25 = objc_msgSend_parent(styleCopy, v20, v21, v22, v23, v24);
      v31 = objc_msgSend_p_realTOCEntryStyleFromFakeTOCEntryStyle_context_(self, v26, v27, v28, v29, v30, v25, contextCopy);

      v37 = objc_msgSend_propertyMap(styleCopy, v32, v33, v34, v35, v36);
      v43 = objc_msgSend_properties(MEMORY[0x277D80F40], v38, v39, v40, v41, v42);
      objc_msgSend_filterWithProperties_(v37, v44, v45, v46, v47, v48, v43);

      v54 = objc_msgSend_stylesheet(self, v49, v50, v51, v52, v53);
      v14 = objc_msgSend_variationOfStyle_propertyMap_(v54, v55, v56, v57, v58, v59, v31, v37);
    }

    else
    {
      v60 = objc_msgSend_name(styleCopy, v20, v21, v22, v23, v24);

      if (!v60)
      {
        v66 = MEMORY[0x277D81150];
        v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, v65, "[TPDocumentRoot p_realTOCEntryStyleFromFakeTOCEntryStyle:context:]");
        v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v74, v75, v76, v77, v78, v67, v73, 1420, 0, "invalid nil value for '%{public}s'", "fakeStyle.name");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82, v83);
      }

      v84 = objc_msgSend_name(styleCopy, v61, v62, v63, v64, v65);
      v31 = v84;
      if (!v84 || !objc_msgSend_length(v84, v85, v86, v87, v88, v89))
      {

        v31 = @"TOC Unknown";
      }

      v90 = objc_alloc(MEMORY[0x277D80F40]);
      v96 = objc_msgSend_context(self, v91, v92, v93, v94, v95);
      v14 = objc_msgSend_initWithContext_name_basedOnParagraphStyle_(v90, v97, v98, v99, v100, v101, v96, v31, styleCopy);

      v37 = objc_msgSend_stylesheet(self, v102, v103, v104, v105, v106);
      objc_msgSend_addStyle_(v37, v107, v108, v109, v110, v111, v14);
    }

    objc_msgSend_setObject_forKeyedSubscript_(contextCopy, v112, v113, v114, v115, v116, v14, styleCopy);
  }

  return v14;
}

- (void)p_upgradeTOCModelForUnity20
{
  v203 = *MEMORY[0x277D85DE8];
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v5 = objc_msgSend_stylesheet(self, a2, 0, v2, v3, v4);
  v6 = objc_opt_class();
  v12 = objc_msgSend_stylesOfClass_(v5, v7, v8, v9, v10, v11, v6);

  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, v17, &v195, v202, 16);
  if (v19)
  {
    v24 = *v196;
    do
    {
      v25 = 0;
      do
      {
        if (*v196 != v24)
        {
          objc_enumerationMutation(v12);
        }

        objc_msgSend_addMissingClassProperties(*(*(&v195 + 1) + 8 * v25++), v18, v20, v21, v22, v23);
      }

      while (v19 != v25);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, v20, v21, v22, v23, &v195, v202, 16);
    }

    while (v19);
  }

  v31 = objc_msgSend_set(MEMORY[0x277CBEB58], v26, v27, v28, v29, v30);
  v172 = objc_msgSend_set(MEMORY[0x277CBEB58], v32, v33, v34, v35, v36);
  v42 = objc_msgSend_theme(self, v37, v38, v39, v40, v41);
  v48 = objc_msgSend_presetsOfKind_(v42, v43, v44, v45, v46, v47, *MEMORY[0x277D80B98]);

  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  obj = v48;
  v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v49, v50, v51, v52, v53, &v191, v201, 16);
  if (v55)
  {
    v59 = *v192;
    do
    {
      v60 = 0;
      do
      {
        if (*v192 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v61 = *(*(&v191 + 1) + 8 * v60);
        v187 = 0u;
        v188 = 0u;
        v189 = 0u;
        v190 = 0u;
        v62 = objc_msgSend_indexedStyles(v61, v54, 0, v56, v57, v58);
        v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, v64, v65, v66, v67, &v187, v200, 16);
        if (v69)
        {
          v74 = *v188;
          do
          {
            v75 = 0;
            do
            {
              if (*v188 != v74)
              {
                objc_enumerationMutation(v62);
              }

              v76 = objc_msgSend_entryStyleForParagraphStyle_(v61, v68, v70, v71, v72, v73, *(*(&v187 + 1) + 8 * v75));
              objc_msgSend_addObject_(v31, v77, v78, v79, v80, v81, v76);

              ++v75;
            }

            while (v69 != v75);
            v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v68, v70, v71, v72, v73, &v187, v200, 16);
          }

          while (v69);
        }

        ++v60;
      }

      while (v60 != v55);
      v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v54, v82, v56, v57, v58, &v191, v201, 16);
    }

    while (v55);
  }

  v88 = objc_msgSend_bodyStorage(self, v83, v84, v85, v86, v87);
  v94 = objc_msgSend_range(v88, v89, v90, v91, v92, v93);
  v96 = v95;

  v102 = objc_msgSend_bodyStorage(self, v97, v98, v99, v100, v101);
  v103 = objc_opt_class();
  v184[0] = MEMORY[0x277D85DD0];
  v184[1] = 3221225472;
  v184[2] = sub_27600A8F8;
  v184[3] = &unk_27A6A8EF8;
  v171 = v31;
  v185 = v171;
  v104 = v172;
  v186 = v104;
  objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(v102, v105, v106, v107, v108, v109, v103, v94, v96, v184);

  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v174 = v104;
  v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v174, v110, v111, v112, v113, v114, &v180, v199, 16);
  if (v116)
  {
    v175 = *v181;
    do
    {
      v121 = 0;
      do
      {
        if (*v181 != v175)
        {
          objc_enumerationMutation(v174);
        }

        v122 = objc_msgSend_unsignedIntegerValue(*(*(&v180 + 1) + 8 * v121), v115, v117, v118, v119, v120, v171);
        v128 = objc_msgSend_bodyStorage(self, v123, v124, v125, v126, v127);
        v134 = objc_msgSend_attachmentAtCharIndex_(v128, v129, v130, v131, v132, v133, v122);

        objc_opt_class();
        v135 = TSUDynamicCast();
        v141 = objc_msgSend_tocInfo(v135, v136, v137, v138, v139, v140);
        v147 = objc_msgSend_tocSettings(v141, v142, v143, v144, v145, v146);
        v153 = objc_msgSend_copyUsingDeepCopy(v147, v148, v149, v150, v151, v152);

        v159 = objc_msgSend_indexedStyles(v153, v154, v155, v156, v157, v158);
        v177[0] = MEMORY[0x277D85DD0];
        v177[1] = 3221225472;
        v177[2] = sub_27600AAE8;
        v177[3] = &unk_27A6A8F20;
        v160 = v153;
        v178 = v160;
        selfCopy = self;
        objc_msgSend_enumerateObjectsUsingBlock_(v159, v161, v162, v163, v164, v165, v177);

        objc_msgSend_setTOCSettings_(v141, v166, v167, v168, v169, v170, v160);
        ++v121;
      }

      while (v116 != v121);
      v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v174, v115, v117, v118, v119, v120, &v180, v199, 16);
    }

    while (v116);
  }
}

- (void)p_initializeShowInBookmarksListParagraphStylesProperty
{
  v91 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_theme(self, a2, v2, v3, v4, v5);
  v8 = *MEMORY[0x277D80B98];
  v14 = objc_msgSend_presetsOfKind_(v7, v9, v10, v11, v12, v13, *MEMORY[0x277D80B98]);
  v20 = objc_msgSend_firstObject(v14, v15, v16, v17, v18, v19);

  if (!v20)
  {
    v25 = objc_alloc(MEMORY[0x277D80F50]);
    v31 = objc_msgSend_context(self, v26, v27, v28, v29, v30);
    v20 = objc_msgSend_initWithContext_(v25, v32, v33, v34, v35, v36, v31);

    objc_msgSend_addPreset_ofKind_(v7, v37, v38, v39, v40, v41, v20, v8);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v42 = objc_msgSend_presetsOfKind_(v7, v21, 0, v22, v23, v24, *MEMORY[0x277D80B70]);
  v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, v44, v45, v46, v47, &v85, v90, 16);
  if (v49)
  {
    v54 = *v86;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v86 != v54)
        {
          objc_enumerationMutation(v42);
        }

        v56 = *(*(&v85 + 1) + 8 * i);
        v57 = objc_msgSend_showInTOCForParagraphStyle_(v20, v48, v50, v51, v52, v53, v56);
        objc_msgSend_setIntValue_forProperty_(v56, v58, v59, v60, v61, v62, v57, 121);
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v67 = objc_msgSend_children(v56, v63, 0, v64, v65, v66, 0);
        v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v68, v69, v70, v71, v72, &v81, v89, 16);
        if (v74)
        {
          v79 = *v82;
          do
          {
            for (j = 0; j != v74; ++j)
            {
              if (*v82 != v79)
              {
                objc_enumerationMutation(v67);
              }

              objc_msgSend_removeValueForProperty_(*(*(&v81 + 1) + 8 * j), v73, v75, v76, v77, v78, 121);
            }

            v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v73, v75, v76, v77, v78, &v81, v89, 16);
          }

          while (v74);
        }
      }

      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v48, v50, v51, v52, v53, &v85, v90, 16);
    }

    while (v49);
  }
}

- (void)setStylesheet:(id)stylesheet andThemeForImport:(id)import
{
  stylesheetCopy = stylesheet;
  importCopy = import;
  if (!stylesheetCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, v12, "[TPDocumentRoot setStylesheet:andThemeForImport:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v25, v14, v20, 1670, 0, "invalid nil value for '%{public}s'", "inStylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29, v30);
  }

  if (!importCopy)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, v12, "[TPDocumentRoot setStylesheet:andThemeForImport:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v39, v40, v41, v42, v43, v32, v38, 1671, 0, "invalid nil value for '%{public}s'", "inTheme");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47, v48);
  }

  v49 = objc_msgSend_documentStylesheet(importCopy, v7, v9, v10, v11, v12);

  if (v49 != stylesheetCopy)
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, v54, "[TPDocumentRoot setStylesheet:andThemeForImport:]");
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v63, v64, v65, v66, v67, v56, v62, 1672, 0, "Invalid parameter not satisfying: %{public}s", "inStylesheet == inTheme.documentStylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71, v72);
  }

  objc_msgSend_willModify(self, v50, v51, v52, v53, v54);
  objc_opt_class();
  v73 = TSUDynamicCast();
  objc_storeStrong(&self->_stylesheet, stylesheet);
  theme = self->_theme;
  self->_theme = v73;

  if (self->_needsInitialization)
  {
    objc_msgSend_pFinishInitialization(self, v75, v76, v77, v78, v79);
  }
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  objc_msgSend_willModify(self, v4, v5, v6, v7, v8);
  objc_opt_class();
  v9 = TSUDynamicCast();
  theme = self->_theme;
  self->_theme = v9;

  if (self->_needsInitialization)
  {
    objc_msgSend_pFinishInitialization(self, v11, v12, v13, v14, v15);
  }
}

- (void)setThemeForTemplateImport:(id)import
{
  importCopy = import;
  objc_opt_class();
  v4 = TSUDynamicCast();
  objc_msgSend_setTheme_(self, v5, v6, v7, v8, v9, v4);
}

- (void)setFloatingDrawables:(id)drawables
{
  drawablesCopy = drawables;
  if (self->_floatingDrawables != drawablesCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8, v9);
    v15 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v10, v11, v12, v13, v14);
    v16 = self->_floatingDrawables;
    objc_msgSend_willBeRemovedFromDocumentRoot_(v16, v17, v18, v19, v20, v21, self);
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(drawablesCopy, v22, v23, v24, v25, v26, self, v15);
    objc_storeStrong(&self->_floatingDrawables, drawables);
    objc_msgSend_wasRemovedFromDocumentRoot_(v16, v27, v28, v29, v30, v31, self);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(drawablesCopy, v32, v33, v34, v35, v36, self, v15);
  }
}

- (void)setFlowInfoContainer:(id)container
{
  containerCopy = container;
  if (self->_flowInfoContainer != containerCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8, v9);
    v15 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v10, v11, v12, v13, v14);
    v16 = self->_flowInfoContainer;
    objc_msgSend_willBeRemovedFromDocumentRoot_(v16, v17, v18, v19, v20, v21, self);
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(containerCopy, v22, v23, v24, v25, v26, self, v15);
    objc_storeStrong(&self->_flowInfoContainer, container);
    objc_msgSend_wasRemovedFromDocumentRoot_(v16, v27, v28, v29, v30, v31, self);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(containerCopy, v32, v33, v34, v35, v36, self, v15);
  }
}

- (void)setStylesheetForUpgradeToSingleStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  if (self->_stylesheet != stylesheetCopy)
  {
    objc_msgSend_willModifyForUpgrade(self, v5, v6, v7, v8, v9);
    objc_storeStrong(&self->_stylesheet, stylesheet);
  }
}

- (void)saveToArchiver:(id)archiver
{
  v637 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v3, v4, v5, v6, v7, sub_276013A04, *off_2812F85B8);

  v630[0] = MEMORY[0x277D85DD0];
  v630[1] = 3221225472;
  v630[2] = sub_27600CE88;
  v630[3] = &unk_27A6A84B8;
  v633 = v8;
  v631 = archiverCopy;
  selfCopy = self;
  v614 = v631;
  v615 = v8;
  objc_msgSend_pushScopeForField_message_usingBlock_(v631, v9, v10, v11, v12, v13, 15, v8, v630);
  v628 = 0u;
  v629 = 0u;
  v626 = 0u;
  v627 = 0u;
  obj = objc_msgSend_flowInfos(self->_flowInfoContainer, v14, 0, v15, v16, v17);
  v613 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, v19, v20, v21, v22, &v626, v636, 16);
  if (v613)
  {
    v612 = *v627;
    do
    {
      for (i = 0; i != v613; ++i)
      {
        if (*v627 != v612)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v626 + 1) + 8 * i);
        v622 = 0u;
        v623 = 0u;
        v624 = 0u;
        v625 = 0u;
        v28 = objc_msgSend_textboxes(v27, v23, 0, v24, v25, v26);
        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, v30, v31, v32, v33, &v622, v635, 16);
        if (v35)
        {
          v40 = *v623;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v623 != v40)
              {
                objc_enumerationMutation(v28);
              }

              if (objc_msgSend_pageIndexForDrawable_(self->_floatingDrawables, v34, v36, v37, v38, v39, *(*(&v622 + 1) + 8 * j)) == 0x7FFFFFFFFFFFFFFFLL)
              {
                v42 = MEMORY[0x277D81150];
                v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v36, v37, v38, v39, "[TPDocumentRoot saveToArchiver:]");
                v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v50, v51, v52, v53, v54, v43, v49, 1760, 0, "Archiving linked text box which is not on any page.");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58, v59);
              }
            }

            v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v34, v36, v37, v38, v39, &v622, v635, 16);
          }

          while (v35);
        }
      }

      v613 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, v60, v24, v25, v26, &v626, v636, 16);
    }

    while (v613);
  }

  if (!self->_needsInitialization)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v614, v61, v62, v63, v64, v65, 47, v8);
    theme = self->_theme;
    *(v8 + 16) |= 0x40u;
    v72 = *(v8 + 168);
    if (!v72)
    {
      v73 = *(v8 + 8);
      if (v73)
      {
        v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
      }

      v72 = MEMORY[0x277C92D60](v73);
      *(v8 + 168) = v72;
    }

    objc_msgSend_setStrongReference_message_(v614, v66, v67, v68, v69, v70, theme, v72);
    stylesheet = self->_stylesheet;
    *(v8 + 16) |= 4u;
    v80 = *(v8 + 136);
    if (!v80)
    {
      v81 = *(v8 + 8);
      if (v81)
      {
        v81 = *(v81 & 0xFFFFFFFFFFFFFFFELL);
      }

      v80 = MEMORY[0x277C92D60](v81);
      *(v8 + 136) = v80;
    }

    objc_msgSend_setStrongReference_message_(v614, v74, v75, v76, v77, v78, stylesheet, v80);
    drawablesZOrder = self->_drawablesZOrder;
    *(v8 + 16) |= 0x1000u;
    v88 = *(v8 + 216);
    if (!v88)
    {
      v89 = *(v8 + 8);
      if (v89)
      {
        v89 = *(v89 & 0xFFFFFFFFFFFFFFFELL);
      }

      v88 = MEMORY[0x277C92D60](v89);
      *(v8 + 216) = v88;
    }

    objc_msgSend_setStrongReference_message_(v614, v82, v83, v84, v85, v86, drawablesZOrder, v88);
    floatingDrawables = self->_floatingDrawables;
    *(v8 + 16) |= 8u;
    v96 = *(v8 + 144);
    if (!v96)
    {
      v97 = *(v8 + 8);
      if (v97)
      {
        v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
      }

      v96 = MEMORY[0x277C92D60](v97);
      *(v8 + 144) = v96;
    }

    objc_msgSend_setStrongReference_message_(v614, v90, v91, v92, v93, v94, floatingDrawables, v96);
    flowInfoContainer = self->_flowInfoContainer;
    *(v8 + 16) |= 0x8000u;
    v104 = *(v8 + 240);
    if (!v104)
    {
      v105 = *(v8 + 8);
      if (v105)
      {
        v105 = *(v105 & 0xFFFFFFFFFFFFFFFELL);
      }

      v104 = MEMORY[0x277C92D60](v105);
      *(v8 + 240) = v104;
    }

    objc_msgSend_setStrongReference_message_(v614, v98, v99, v100, v101, v102, flowInfoContainer, v104);
    bodyStorage = self->_bodyStorage;
    *(v8 + 16) |= 0x10u;
    v112 = *(v8 + 152);
    if (!v112)
    {
      v113 = *(v8 + 8);
      if (v113)
      {
        v113 = *(v113 & 0xFFFFFFFFFFFFFFFELL);
      }

      v112 = MEMORY[0x277C92D60](v113);
      *(v8 + 152) = v112;
    }

    objc_msgSend_setStrongReference_message_(v614, v106, v107, v108, v109, v110, bodyStorage, v112);
    settings = self->_settings;
    *(v8 + 16) |= 0x80u;
    v120 = *(v8 + 176);
    if (!v120)
    {
      v121 = *(v8 + 8);
      if (v121)
      {
        v121 = *(v121 & 0xFFFFFFFFFFFFFFFELL);
      }

      v120 = MEMORY[0x277C92D60](v121);
      *(v8 + 176) = v120;
    }

    objc_msgSend_setStrongReference_message_(v614, v114, v115, v116, v117, v118, settings, v120);
    objc_msgSend_setStrongReferenceArray_message_(v614, v122, v123, v124, v125, v126, self->_citationRecords, v8 + 24);
    objc_msgSend_setStrongReferenceArray_message_(v614, v127, v128, v129, v130, v131, self->_obsoleteTOCStyles, v8 + 48);
    objc_msgSend_setStrongReferenceArray_message_(v614, v132, v133, v134, v135, v136, self->_changeSessionHistory, v8 + 72);
    mostRecentChangeSession = self->_mostRecentChangeSession;
    if (mostRecentChangeSession)
    {
      *(v8 + 16) |= 0x800u;
      v138 = *(v8 + 208);
      if (!v138)
      {
        v139 = *(v8 + 8);
        if (v139)
        {
          v139 = *(v139 & 0xFFFFFFFFFFFFFFFELL);
        }

        v138 = MEMORY[0x277C92D60](v139);
        *(v8 + 208) = v138;
      }

      objc_msgSend_setStrongReference_message_(v614, v61, v62, v63, v64, v65, mostRecentChangeSession, v138);
    }
  }

  usesSingleHeaderFooter = self->_usesSingleHeaderFooter;
  if (usesSingleHeaderFooter)
  {
    v141 = 0x1000000;
  }

  else
  {
    v141 = 0;
  }

  *(v8 + 16) = *(v8 + 16) & 0xFEFFFFFF | v141;
  *(v8 + 284) = usesSingleHeaderFooter;
  v62.n128_u64[0] = *&self->_pageSize.width;
  if ((v62.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_60;
  }

  if (v62.n128_f64[0] > 0.0 && (v63.n128_u64[0] = 0x47EFFFFFE0000000, v62.n128_f64[0] > 3.40282347e38))
  {
    v259 = MEMORY[0x277D81150];
    v260 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, v65, "[TPDocumentRoot saveToArchiver:]");
    v266 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v261, v262, v263, v264, v265, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v259, v267, v268, v269, v270, v271, v260, v266, 1793, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v272, v273, v274, v275, v276);
    v277 = 2139095039;
  }

  else
  {
    if (v62.n128_f64[0] >= 0.0 || (v63.n128_u64[0] = 0xC7EFFFFFE0000000, v62.n128_f64[0] >= -3.40282347e38))
    {
LABEL_60:
      v142 = v62.n128_f64[0];
      goto LABEL_61;
    }

    v448 = MEMORY[0x277D81150];
    v449 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, v65, "[TPDocumentRoot saveToArchiver:]");
    v455 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v450, v451, v452, v453, v454, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v448, v456, v457, v458, v459, v460, v449, v455, 1793, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v461, v462, v463, v464, v465);
    v277 = -8388609;
  }

  v142 = *&v277;
LABEL_61:
  *(v8 + 16) |= 0x20000u;
  *(v8 + 256) = v142;
  v62.n128_u64[0] = *&self->_pageSize.height;
  if ((v62.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_66:
    v143 = v62.n128_f64[0];
    goto LABEL_67;
  }

  if (v62.n128_f64[0] > 0.0 && (v63.n128_u64[0] = 0x47EFFFFFE0000000, v62.n128_f64[0] > 3.40282347e38))
  {
    v278 = MEMORY[0x277D81150];
    v279 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, v65, "[TPDocumentRoot saveToArchiver:]");
    v285 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v280, v281, v282, v283, v284, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v278, v286, v287, v288, v289, v290, v279, v285, 1794, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v291, v292, v293, v294, v295);
    v296 = 2139095039;
  }

  else
  {
    if (v62.n128_f64[0] >= 0.0)
    {
      goto LABEL_66;
    }

    v63.n128_u64[0] = 0xC7EFFFFFE0000000;
    if (v62.n128_f64[0] >= -3.40282347e38)
    {
      goto LABEL_66;
    }

    v466 = MEMORY[0x277D81150];
    v467 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, v65, "[TPDocumentRoot saveToArchiver:]");
    v473 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v468, v469, v470, v471, v472, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v466, v474, v475, v476, v477, v478, v467, v473, 1794, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v479, v480, v481, v482, v483);
    v296 = -8388609;
  }

  v143 = *&v296;
LABEL_67:
  *(v8 + 16) |= 0x40000u;
  *(v8 + 260) = v143;
  v62.n128_u64[0] = *&self->_pageScale;
  if ((v62.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_72:
    v62.n128_f32[0] = v62.n128_f64[0];
    goto LABEL_73;
  }

  if (v62.n128_f64[0] > 0.0 && (v63.n128_u64[0] = 0x47EFFFFFE0000000, v62.n128_f64[0] > 3.40282347e38))
  {
    v297 = MEMORY[0x277D81150];
    v298 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, v65, "[TPDocumentRoot saveToArchiver:]");
    v304 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v299, v300, v301, v302, v303, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v297, v305, v306, v307, v308, v309, v298, v304, 1795, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v310, v311, v312, v313, v314);
    v315 = 2139095039;
  }

  else
  {
    if (v62.n128_f64[0] >= 0.0)
    {
      goto LABEL_72;
    }

    v63.n128_u64[0] = 0xC7EFFFFFE0000000;
    if (v62.n128_f64[0] >= -3.40282347e38)
    {
      goto LABEL_72;
    }

    v484 = MEMORY[0x277D81150];
    v485 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, v65, "[TPDocumentRoot saveToArchiver:]");
    v491 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v486, v487, v488, v489, v490, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v484, v492, v493, v494, v495, v496, v485, v491, 1795, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v497, v498, v499, v500, v501);
    v315 = -8388609;
  }

  v62.n128_u32[0] = v315;
LABEL_73:
  *(v8 + 16) |= 0x20000000u;
  *(v8 + 292) = v62.n128_u32[0];
  v144 = objc_msgSend_printerID(self, v61, v62, v63, v64, v65);
  *(v8 + 16) |= 1u;
  v145 = google::protobuf::internal::ArenaStringPtr::Mutable();
  objc_msgSend_tsp_saveToProtobufString_(v144, v146, v147, v148, v149, v150, v145);

  orientation = self->_orientation;
  if (orientation >= 0x100000000)
  {
    v241 = MEMORY[0x277D81150];
    v242 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v151, v152, v153, v154, v155, "[TPDocumentRoot saveToArchiver:]");
    v248 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v243, v244, v245, v246, v247, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v241, v249, v250, v251, v252, v253, v242, v248, 1798, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v254, v255, v256, v257, v258);
    LODWORD(orientation) = -1;
  }

  else if (orientation < 0)
  {
    v316 = MEMORY[0x277D81150];
    v317 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v151, v152, v153, v154, v155, "[TPDocumentRoot saveToArchiver:]");
    v323 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v318, v319, v320, v321, v322, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v316, v324, v325, v326, v327, v328, v317, v323, 1798, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v329, v330, v331, v332, v333);
    LODWORD(orientation) = 0;
  }

  *(v8 + 16) |= 0x40000000u;
  *(v8 + 296) = orientation;
  v157 = objc_msgSend_paperID(self, v151, v152, v153, v154, v155);
  *(v8 + 16) |= 2u;
  v158 = google::protobuf::internal::ArenaStringPtr::Mutable();
  objc_msgSend_tsp_saveToProtobufString_(v157, v159, v160, v161, v162, v163, v158);

  v168.n128_u64[0] = *&self->_leftMargin;
  if ((v168.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_81;
  }

  if (v168.n128_f64[0] > 0.0 && (v165.n128_u64[0] = 0x47EFFFFFE0000000, v168.n128_f64[0] > 3.40282347e38))
  {
    v334 = MEMORY[0x277D81150];
    v335 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v164, v168, v165, v166, v167, "[TPDocumentRoot saveToArchiver:]");
    v341 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v336, v337, v338, v339, v340, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v334, v342, v343, v344, v345, v346, v335, v341, 1802, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v347, v348, v349, v350, v351);
    v352 = 2139095039;
  }

  else
  {
    if (v168.n128_f64[0] >= 0.0 || (v165.n128_u64[0] = 0xC7EFFFFFE0000000, v168.n128_f64[0] >= -3.40282347e38))
    {
LABEL_81:
      v169 = v168.n128_f64[0];
      goto LABEL_82;
    }

    v502 = MEMORY[0x277D81150];
    v503 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v164, v168, v165, v166, v167, "[TPDocumentRoot saveToArchiver:]");
    v509 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v504, v505, v506, v507, v508, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v502, v510, v511, v512, v513, v514, v503, v509, 1802, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v515, v516, v517, v518, v519);
    v352 = -8388609;
  }

  v169 = *&v352;
LABEL_82:
  *(v8 + 16) |= 0x80000u;
  *(v8 + 264) = v169;
  v168.n128_u64[0] = *&self->_rightMargin;
  if ((v168.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_87:
    v170 = v168.n128_f64[0];
    goto LABEL_88;
  }

  if (v168.n128_f64[0] > 0.0 && (v165.n128_u64[0] = 0x47EFFFFFE0000000, v168.n128_f64[0] > 3.40282347e38))
  {
    v353 = MEMORY[0x277D81150];
    v354 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v164, v168, v165, v166, v167, "[TPDocumentRoot saveToArchiver:]");
    v360 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v355, v356, v357, v358, v359, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v353, v361, v362, v363, v364, v365, v354, v360, 1803, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v366, v367, v368, v369, v370);
    v371 = 2139095039;
  }

  else
  {
    if (v168.n128_f64[0] >= 0.0)
    {
      goto LABEL_87;
    }

    v165.n128_u64[0] = 0xC7EFFFFFE0000000;
    if (v168.n128_f64[0] >= -3.40282347e38)
    {
      goto LABEL_87;
    }

    v520 = MEMORY[0x277D81150];
    v521 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v164, v168, v165, v166, v167, "[TPDocumentRoot saveToArchiver:]");
    v527 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v522, v523, v524, v525, v526, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v520, v528, v529, v530, v531, v532, v521, v527, 1803, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v533, v534, v535, v536, v537);
    v371 = -8388609;
  }

  v170 = *&v371;
LABEL_88:
  *(v8 + 16) |= 0x100000u;
  *(v8 + 268) = v170;
  v168.n128_u64[0] = *&self->_topMargin;
  if ((v168.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_93:
    v171 = v168.n128_f64[0];
    goto LABEL_94;
  }

  if (v168.n128_f64[0] > 0.0 && (v165.n128_u64[0] = 0x47EFFFFFE0000000, v168.n128_f64[0] > 3.40282347e38))
  {
    v372 = MEMORY[0x277D81150];
    v373 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v164, v168, v165, v166, v167, "[TPDocumentRoot saveToArchiver:]");
    v379 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v374, v375, v376, v377, v378, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v372, v380, v381, v382, v383, v384, v373, v379, 1804, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v385, v386, v387, v388, v389);
    v390 = 2139095039;
  }

  else
  {
    if (v168.n128_f64[0] >= 0.0)
    {
      goto LABEL_93;
    }

    v165.n128_u64[0] = 0xC7EFFFFFE0000000;
    if (v168.n128_f64[0] >= -3.40282347e38)
    {
      goto LABEL_93;
    }

    v538 = MEMORY[0x277D81150];
    v539 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v164, v168, v165, v166, v167, "[TPDocumentRoot saveToArchiver:]");
    v545 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v540, v541, v542, v543, v544, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v538, v546, v547, v548, v549, v550, v539, v545, 1804, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v551, v552, v553, v554, v555);
    v390 = -8388609;
  }

  v171 = *&v390;
LABEL_94:
  *(v8 + 16) |= 0x200000u;
  *(v8 + 272) = v171;
  v168.n128_u64[0] = *&self->_bottomMargin;
  if ((v168.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_99:
    v172 = v168.n128_f64[0];
    goto LABEL_100;
  }

  if (v168.n128_f64[0] > 0.0 && (v165.n128_u64[0] = 0x47EFFFFFE0000000, v168.n128_f64[0] > 3.40282347e38))
  {
    v391 = MEMORY[0x277D81150];
    v392 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v164, v168, v165, v166, v167, "[TPDocumentRoot saveToArchiver:]");
    v398 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v393, v394, v395, v396, v397, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v391, v399, v400, v401, v402, v403, v392, v398, 1805, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v404, v405, v406, v407, v408);
    v409 = 2139095039;
  }

  else
  {
    if (v168.n128_f64[0] >= 0.0)
    {
      goto LABEL_99;
    }

    v165.n128_u64[0] = 0xC7EFFFFFE0000000;
    if (v168.n128_f64[0] >= -3.40282347e38)
    {
      goto LABEL_99;
    }

    v556 = MEMORY[0x277D81150];
    v557 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v164, v168, v165, v166, v167, "[TPDocumentRoot saveToArchiver:]");
    v563 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v558, v559, v560, v561, v562, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v556, v564, v565, v566, v567, v568, v557, v563, 1805, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v569, v570, v571, v572, v573);
    v409 = -8388609;
  }

  v172 = *&v409;
LABEL_100:
  *(v8 + 16) |= 0x400000u;
  *(v8 + 276) = v172;
  v168.n128_u64[0] = *&self->_headerMargin;
  if ((v168.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_105:
    v173 = v168.n128_f64[0];
    goto LABEL_106;
  }

  if (v168.n128_f64[0] > 0.0 && (v165.n128_u64[0] = 0x47EFFFFFE0000000, v168.n128_f64[0] > 3.40282347e38))
  {
    v410 = MEMORY[0x277D81150];
    v411 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v164, v168, v165, v166, v167, "[TPDocumentRoot saveToArchiver:]");
    v417 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v412, v413, v414, v415, v416, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v410, v418, v419, v420, v421, v422, v411, v417, 1806, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v423, v424, v425, v426, v427);
    v428 = 2139095039;
  }

  else
  {
    if (v168.n128_f64[0] >= 0.0)
    {
      goto LABEL_105;
    }

    v165.n128_u64[0] = 0xC7EFFFFFE0000000;
    if (v168.n128_f64[0] >= -3.40282347e38)
    {
      goto LABEL_105;
    }

    v574 = MEMORY[0x277D81150];
    v575 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v164, v168, v165, v166, v167, "[TPDocumentRoot saveToArchiver:]");
    v581 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v576, v577, v578, v579, v580, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v574, v582, v583, v584, v585, v586, v575, v581, 1806, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v587, v588, v589, v590, v591);
    v428 = -8388609;
  }

  v173 = *&v428;
LABEL_106:
  *(v8 + 16) |= 0x800000u;
  *(v8 + 280) = v173;
  v168.n128_u64[0] = *&self->_footerMargin;
  if ((v168.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_111:
    v168.n128_f32[0] = v168.n128_f64[0];
    goto LABEL_112;
  }

  if (v168.n128_f64[0] > 0.0 && (v165.n128_u64[0] = 0x47EFFFFFE0000000, v168.n128_f64[0] > 3.40282347e38))
  {
    v429 = MEMORY[0x277D81150];
    v430 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v164, v168, v165, v166, v167, "[TPDocumentRoot saveToArchiver:]");
    v436 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v431, v432, v433, v434, v435, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v429, v437, v438, v439, v440, v441, v430, v436, 1807, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v442, v443, v444, v445, v446);
    v447 = 2139095039;
  }

  else
  {
    if (v168.n128_f64[0] >= 0.0)
    {
      goto LABEL_111;
    }

    v165.n128_u64[0] = 0xC7EFFFFFE0000000;
    if (v168.n128_f64[0] >= -3.40282347e38)
    {
      goto LABEL_111;
    }

    v592 = MEMORY[0x277D81150];
    v593 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v164, v168, v165, v166, v167, "[TPDocumentRoot saveToArchiver:]");
    v599 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v594, v595, v596, v597, v598, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v592, v600, v601, v602, v603, v604, v593, v599, 1807, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v605, v606, v607, v608, v609);
    v447 = -8388609;
  }

  v168.n128_u32[0] = v447;
LABEL_112:
  v174 = v8;
  v175 = *(v8 + 16);
  *(v8 + 288) = v168.n128_u32[0];
  *(v8 + 285) = self->_laysOutBodyVertically;
  changeTrackingEnabled = self->_changeTrackingEnabled;
  v177 = v175 | 0x16000000;
  *(v8 + 16) = v177;
  *(v8 + 286) = changeTrackingEnabled;
  if (self->_equationEnvironmentData)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v614, v164, v168, v165, v166, v167, 45);
    equationEnvironmentData = self->_equationEnvironmentData;
    *(v8 + 16) |= 0x4000u;
    v184 = *(v8 + 232);
    if (!v184)
    {
      v185 = *(v8 + 8);
      if (v185)
      {
        v185 = *(v185 & 0xFFFFFFFFFFFFFFFELL);
      }

      v184 = MEMORY[0x277C92D00](v185);
      *(v8 + 232) = v184;
    }

    objc_msgSend_setDataReference_message_(v614, v178, v179, v180, v181, v182, equationEnvironmentData, v184);
    v174 = v8;
    v177 = *(v8 + 16);
  }

  *(v174 + 16) = v177 | 0x8000000;
  *(v174 + 287) = 1;
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v614, v164, v168, v165, v166, v167, 46);
  if (objc_msgSend_count(self->_pageTemplates, v186, v187, v188, v189, v190))
  {
    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v614, v191, v192, v193, v194, v195, *MEMORY[0x277D80988], *MEMORY[0x277D80990], @"TPPageTemplates");
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v614, v196, v197, v198, v199, v200, 48, v8);
    v620 = 0u;
    v621 = 0u;
    v618 = 0u;
    v619 = 0u;
    v201 = self->_pageTemplates;
    v208 = objc_msgSend_countByEnumeratingWithState_objects_count_(v201, v202, v203, v204, v205, v206, &v618, v634, 16);
    if (!v208)
    {
      goto LABEL_133;
    }

    v213 = *v619;
    while (1)
    {
      for (k = 0; k != v208; ++k)
      {
        if (*v619 != v213)
        {
          objc_enumerationMutation(v201);
        }

        v215 = *(*(&v618 + 1) + 8 * k);
        v216 = v615;
        v217 = *(v615 + 112);
        if (!v217)
        {
          goto LABEL_129;
        }

        v218 = *(v615 + 104);
        v219 = *v217;
        if (v218 < *v217)
        {
          *(v615 + 104) = v218 + 1;
          objc_msgSend_setStrongReference_message_(v614, v207, v209, v210, v211, v212, v215, *&v217[2 * v218 + 2]);
          continue;
        }

        if (v219 == *(v615 + 108))
        {
LABEL_129:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v615 + 96));
          v216 = v615;
          v217 = *(v615 + 112);
          v219 = *v217;
        }

        *v217 = v219 + 1;
        v220 = MEMORY[0x277C92D60](*(v216 + 96));
        v221 = *(v615 + 104);
        v222 = *(v615 + 112) + 8 * v221;
        *(v615 + 104) = v221 + 1;
        *(v222 + 8) = v220;
        objc_msgSend_setStrongReference_message_(v614, v223, v224, v225, v226, v227, v215, v220);
      }

      v208 = objc_msgSend_countByEnumeratingWithState_objects_count_(v201, v207, v209, v210, v211, v212, &v618, v634, 16);
      if (!v208)
      {
LABEL_133:

        break;
      }
    }
  }

  v229 = objc_msgSend_bodyStorage(self, v191, v192, v193, v194, v195);
  if (v229)
  {
    v234 = objc_msgSend_laysOutBodyVertically(self, v228, v230, v231, v232, v233);

    if (v234)
    {
      objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v614, v235, v236, v237, v238, v239, *MEMORY[0x277D809A8], *MEMORY[0x277D809A8], @"TSWPVerticalText");
    }
  }

  shouldUseAnchoredDrawableWrapSlop = self->_shouldUseAnchoredDrawableWrapSlop;
  *(v615 + 16) |= 0x80000000;
  *(v615 + 300) = shouldUseAnchoredDrawableWrapSlop;
}

- (void)setBodyStorage:(id)storage dolcContext:(id)context
{
  storageCopy = storage;
  contextCopy = context;
  bodyStorage = self->_bodyStorage;
  if (bodyStorage == storageCopy)
  {
    goto LABEL_19;
  }

  v9 = bodyStorage;
  objc_msgSend_willBeRemovedFromDocumentRoot_(v9, v10, v11, v12, v13, v14, self);
  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(storageCopy, v15, v16, v17, v18, v19, self, contextCopy);
  v26 = objc_msgSend_drawablesZOrder(self, v20, v21, v22, v23, v24);
  if (storageCopy && v9)
  {
    objc_msgSend_zOrderOfDrawable_(v26, v25, v27, v28, v29, v30, v9);
  }

  else if (!v9)
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_7;
  }

  v31 = objc_msgSend_zOrderOfDrawable_(v26, v25, v27, v28, v29, v30, v9);
  objc_msgSend_removeDrawable_(v26, v32, v33, v34, v35, v36, v9);
LABEL_7:
  objc_storeStrong(&self->_bodyStorage, storage);
  if (self->_bodyStorage)
  {
    if (v31 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = 0;
    }

    objc_msgSend_insertDrawable_atZOrder_(v26, v37, v38, v39, v40, v41);
  }

  objc_msgSend_wasRemovedFromDocumentRoot_(v9, v37, v38, v39, v40, v41, self);
  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(storageCopy, v42, v43, v44, v45, v46, self, contextCopy);
  v52 = self->_bodyStorage;
  if (v52)
  {
    v53 = objc_msgSend_attachmentCount(v52, v47, v48, v49, v50, v51);
    if (v53)
    {
      v54 = 0;
      v55 = v31 + 1;
      do
      {
        objc_opt_class();
        v61 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(self->_bodyStorage, v56, v57, v58, v59, v60, v54, 0);
        v62 = TSUDynamicCast();

        if (v62 && objc_msgSend_isAnchored(v62, v63, v64, v65, v66, v67))
        {
          v73 = objc_msgSend_drawable(v62, v68, v69, v70, v71, v72);
          objc_msgSend_moveDrawable_toZOrder_(v26, v74, v75, v76, v77, v78, v73, v55);

          ++v55;
        }

        ++v54;
      }

      while (v53 != v54);
    }
  }

LABEL_19:
}

- (BOOL)containsVerticalText
{
  if (objc_msgSend_laysOutBodyVertically(self, a2, v2, v3, v4, v5))
  {
    return 1;
  }

  v8.receiver = self;
  v8.super_class = TPDocumentRoot;
  return [(TSWPDocumentRoot *)&v8 containsVerticalText];
}

- (id)citationRecords
{
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2, v3, v4, v5);
  v12 = objc_msgSend_allObjects(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (int64_t)contentWritingDirection
{
  if (objc_msgSend_writingDirection(self, a2, v2, v3, v4, v5) == 1)
  {
    return 0;
  }

  if (objc_msgSend_writingDirection(self, v7, v8, v9, v10, v11) == 2)
  {
    return 1;
  }

  return -1;
}

- (BOOL)freehandDrawingsRequireSpacerShape
{
  v6 = objc_msgSend_settings(self, a2, v2, v3, v4, v5);
  hasBody = objc_msgSend_hasBody(v6, v7, v8, v9, v10, v11);

  return hasBody;
}

- (void)appSpecificPrepareNewDocumentWithTemplateIdentifier:(id)identifier bundle:(id)bundle documentLocale:(id)locale
{
  bundleCopy = bundle;
  localeCopy = locale;
  v79.receiver = self;
  v79.super_class = TPDocumentRoot;
  [(TSADocumentRoot *)&v79 appSpecificPrepareNewDocumentWithTemplateIdentifier:identifier bundle:bundleCopy documentLocale:localeCopy];
  self->_newDocument = 1;
  self->_shouldUseAnchoredDrawableWrapSlop = 0;
  v16 = objc_msgSend_bundleIdentifier(bundleCopy, v10, v11, v12, v13, v14);
  if (!v16)
  {
    v21 = objc_msgSend_bundlePath(bundleCopy, v15, v17, v18, v19, v20);
    v16 = objc_msgSend_lastPathComponent(v21, v22, v23, v24, v25, v26);
  }

  objc_storeStrong(&self->_printerID, *MEMORY[0x277D81648]);
  TSURoundedSize();
  v32 = v28.n128_f64[0] == *MEMORY[0x277D81640] && v29.n128_f64[0] == *(MEMORY[0x277D81640] + 8);
  if (v32 || (v28.n128_f64[0] == *MEMORY[0x277D81638] ? (v33 = v29.n128_f64[0] == *(MEMORY[0x277D81638] + 8)) : (v33 = 0), v33))
  {
    v37 = MEMORY[0x277D815E0];
  }

  else
  {
    v34 = v28.n128_f64[0] == *MEMORY[0x277D81620] && v29.n128_f64[0] == *(MEMORY[0x277D81620] + 8);
    if (v34 || (v28.n128_f64[0] == *MEMORY[0x277D81618] ? (v35 = v29.n128_f64[0] == *(MEMORY[0x277D81618] + 8)) : (v35 = 0), v35))
    {
      v37 = MEMORY[0x277D815D0];
    }

    else
    {
      v31.n128_u64[0] = *(MEMORY[0x277D81630] + 8);
      v36 = v28.n128_f64[0] == *MEMORY[0x277D81630] && v29.n128_f64[0] == v31.n128_f64[0];
      if (v36 || v28.n128_f64[0] == *MEMORY[0x277D81628] && v29.n128_f64[0] == *(MEMORY[0x277D81628] + 8))
      {
        v37 = MEMORY[0x277D815D8];
      }

      else if (v28.n128_f64[0] == *MEMORY[0x277D81600] && v29.n128_f64[0] == *(MEMORY[0x277D81600] + 8) || v28.n128_f64[0] == *MEMORY[0x277D815F8] && v29.n128_f64[0] == *(MEMORY[0x277D815F8] + 8))
      {
        v37 = MEMORY[0x277D815C0];
      }

      else if (v28.n128_f64[0] == *MEMORY[0x277D81610] && v29.n128_f64[0] == *(MEMORY[0x277D81610] + 8) || v28.n128_f64[0] == *MEMORY[0x277D81608] && v29.n128_f64[0] == *(MEMORY[0x277D81608] + 8))
      {
        v37 = MEMORY[0x277D815C8];
      }

      else
      {
        if (v28.n128_f64[0] != *MEMORY[0x277D815F0] || v29.n128_f64[0] != *(MEMORY[0x277D815F0] + 8))
        {
          if (v28.n128_f64[0] != *MEMORY[0x277D815E8] || (v28.n128_u64[0] = *(MEMORY[0x277D815E8] + 8), v29.n128_f64[0] != v28.n128_f64[0]))
          {
            v30.n128_u64[0] = *MEMORY[0x277D815E8];
            v39 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v27, v28, v29, v30, v31);
            v77 = objc_msgSend_UUIDString(v39, v72, v73, v74, v75, v76);
            paperID = self->_paperID;
            self->_paperID = v77;

            goto LABEL_28;
          }
        }

        v37 = MEMORY[0x277D815B8];
      }
    }
  }

  v38 = *v37;
  v39 = self->_paperID;
  self->_paperID = v38;
LABEL_28:

  v45 = objc_msgSend_settings(self, v40, v41, v42, v43, v44);
  objc_msgSend_setHyphenationLanguage_(v45, v46, v47, v48, v49, v50, &stru_288501738);

  v56 = objc_msgSend_flowInfoContainer(self, v51, v52, v53, v54, v55);
  objc_msgSend_setNextUserInterfaceIdentifier_(v56, v57, v58, v59, v60, v61, 0);

  objc_msgSend_upgradeParagraphStylesForTOCNavigator(self, v62, v63, v64, v65, v66);
  objc_msgSend_resetForNewDocumentFromTemplate_locale_(self->_settings, v67, v68, v69, v70, v71, v16, localeCopy);
}

- (void)updateWritingDirection:(unint64_t)direction
{
  v10.receiver = self;
  v10.super_class = TPDocumentRoot;
  [(TSADocumentRoot *)&v10 updateWritingDirection:?];
  objc_msgSend_setDocumentIsRTL_(self->_settings, v5, v6, v7, v8, v9, direction == 2);
}

- (id)thumbnailIdentifierForPageIndex:(unint64_t)index
{
  if (index >= 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend_isAlternativePageIndex_documentRoot_(TPPageInfo, a2, v3, v4, v5, v6, index, self) & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "[TPDocumentRoot thumbnailIdentifierForPageIndex:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 2101, 0, "");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
  }

  v26 = MEMORY[0x277CCABB0];

  return objc_msgSend_numberWithUnsignedInteger_(v26, a2, v3, v4, v5, v6, index);
}

- (unint64_t)pageIndexForThumbnailIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (!v5)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, v9, "[TPDocumentRoot pageIndexForThumbnailIdentifier:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v18, v19, v20, v21, v22, v11, v17, 2107, 0, "invalid nil value for '%{public}s'", "number");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26, v27);
  }

  v28 = objc_msgSend_unsignedIntegerValue(v5, v4, v6, v7, v8, v9);

  return v28;
}

+ (CGSize)pageSizeFromPaperSize:(CGSize)size pageScale:(double)scale orientation:(int64_t)orientation
{
  TSUMultiplySizeScalar();
  v8 = (v6 < v7) ^ (orientation == 1);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (!v8)
  {
    v7 = v6;
  }

  v10 = v9;
  result.height = v7;
  result.width = v10;
  return result;
}

- (CGSize)paperSize
{
  objc_msgSend_pageSize(self, a2, v2, v3, v4, v5);
  objc_msgSend_pageScale(self, v7, v8, v9, v10, v11);

  TSUMultiplySizeScalar();
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)unrotatedPaperSize
{
  objc_msgSend_paperSize(self, a2, v2, v3, v4, v5);
  v8 = v7.n128_f64[0];
  v10 = v9.n128_f64[0];
  v14 = objc_msgSend_orientation(self, v11, v7, v9, v12, v13);
  if (v14 == 1)
  {
    v15 = v10;
  }

  else
  {
    v15 = v8;
  }

  if (v14 == 1)
  {
    v16 = v8;
  }

  else
  {
    v16 = v10;
  }

  result.height = v16;
  result.width = v15;
  return result;
}

- (BOOL)exportToPath:(id)path exporter:(id)exporter delegate:(id)delegate error:(id *)error
{
  v11.receiver = self;
  v11.super_class = TPDocumentRoot;
  exporterCopy = exporter;
  LOBYTE(error) = [(TSADocumentRoot *)&v11 exportToPath:path exporter:exporterCopy delegate:delegate error:error];

  return error;
}

+ (CGSize)previewImageSizeForType:(unint64_t)type
{
  v3 = 225.0;
  v4 = 174.0;
  if (type > 2)
  {
    switch(type)
    {
      case 3uLL:
        v3 = 116.0;
        v4 = 90.0;
        goto LABEL_15;
      case 4uLL:
        goto LABEL_15;
      case 5uLL:
        v3 = 54.0;
        v5 = 0x4045000000000000;
        goto LABEL_10;
    }

LABEL_12:
    v3 = 512.0;
    v4 = 396.0;
    goto LABEL_15;
  }

  if (!type)
  {
    goto LABEL_15;
  }

  if (type == 1)
  {
    v3 = 90.0;
    v4 = 70.0;
    goto LABEL_15;
  }

  if (type != 2)
  {
    goto LABEL_12;
  }

  v3 = 114.0;
  v5 = 0x4056000000000000;
LABEL_10:
  v4 = *&v5;
LABEL_15:
  result.height = v3;
  result.width = v4;
  return result;
}

- (id)previewImageForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v17 = 0;
  v18 = &v17;
  *&size.width = 0x3032000000;
  v19 = 0x3032000000;
  v20 = sub_2760086E8;
  v21 = sub_2760086F8;
  v22 = 0;
  v8 = objc_msgSend_accessController(self, a2, size, *&size.height, v3, v4);
  v16[0] = MEMORY[0x277D85DD0];
  v9.n128_u64[0] = 3221225472;
  v16[1] = 3221225472;
  v16[2] = sub_27600DC7C;
  v16[3] = &unk_27A6A8F48;
  v16[4] = self;
  v16[5] = &v17;
  *&v16[6] = width;
  *&v16[7] = height;
  objc_msgSend_performRead_(v8, v10, v9, v11, v12, v13, v16);

  v14 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v14;
}

- (id)p_previewImageWithImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v144[1] = *MEMORY[0x277D85DE8];
  if (self->_isTornDown && (v8 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, size, *&size.height, v3, v4, "[TPDocumentRoot p_previewImageWithImageSize:]"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 2283, 0, "Trying to generate a preview image after document root has been torn down"), v15, v9, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24, v25), self->_isTornDown))
  {
    v26 = 0;
  }

  else
  {
    v27 = objc_msgSend_paginatedPageControllerForDelegate_(TPPaginatedPageController, a2, size, *&size.height, v3, v4, self);
    objc_msgSend_paginateThroughPageIndex_(v27, v28, v29, v30, v31, v32, 2);
    v33 = [TPThumbnailImager alloc];
    v39 = objc_msgSend_initWithDocumentRoot_(v33, v34, v35, v36, v37, v38, self);
    v45 = objc_msgSend_whiteColor(MEMORY[0x277D81180], v40, v41, v42, v43, v44);
    objc_msgSend_setBackgroundColor_(v39, v46, v47, v48, v49, v50, v45);

    objc_msgSend_pageRectForPageIndex_allowAfterPaginationPoint_(v27, v51, v52, v53, v54, v55, 0, 0);
    v57 = v56;
    v59 = v58;
    if (v60 / v61 >= width / height)
    {
      TSURound();
      if (v63 >= height)
      {
        v63 = height;
      }

      if (v63 >= 1.0)
      {
        height = v63;
      }

      else
      {
        height = 1.0;
      }
    }

    else
    {
      TSURound();
      if (v62 >= width)
      {
        v62 = width;
      }

      if (v62 >= 1.0)
      {
        width = v62;
      }

      else
      {
        width = 1.0;
      }
    }

    TSUMultiplySizeScalar();
    v65 = v64;
    v67 = v66;
    v68.n128_f64[0] = width;
    v69.n128_f64[0] = height;
    objc_msgSend_setScaledImageSize_(v39, v70, v68, v69, v71, v72);
    v73.n128_f64[0] = floor(v67);
    v74.n128_f64[0] = floor(v65);
    v75.n128_u64[0] = v57;
    v76.n128_u64[0] = v59;
    objc_msgSend_setUnscaledClipRect_(v39, v77, v75, v76, v74, v73);
    objc_msgSend_setDistortedToMatch_(v39, v78, v79, v80, v81, v82, 1);
    objc_msgSend_setImageMustHaveEvenDimensions_(v39, v83, v84, v85, v86, v87, 1);
    if (objc_msgSend_pageCount(v27, v88, v89, v90, v91, v92))
    {
      if (objc_msgSend_pageCount(v27, v93, v94, v95, v96, v97) == 1)
      {
        v103 = objc_msgSend_pageInfoForPageIndex_(v27, v98, v99, v100, v101, v102, 0);
        v144[0] = v103;
        v109 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v104, v105, v106, v107, v108, v144, 1);
        objc_msgSend_setInfos_(v39, v110, v111, v112, v113, v114, v109);
      }

      else
      {
        v103 = objc_msgSend_pageInfoForPageIndex_(v27, v98, v99, v100, v101, v102, 0);
        v109 = objc_msgSend_pageInfoForPageIndex_(v27, v115, v116, v117, v118, v119, 1, v103);
        v143[1] = v109;
        v125 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v120, v121, v122, v123, v124, v143, 2);
        objc_msgSend_setInfos_(v39, v126, v127, v128, v129, v130, v125);
      }

      v136 = objc_msgSend_newImage(v39, v131, v132, v133, v134, v135);
      v26 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v137, v138, v139, v140, v141, v136);
      CGImageRelease(v136);
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

- (id)changeSessionManagerForModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, v10, "[TPDocumentRoot changeSessionManagerForModel:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v19, v20, v21, v22, v23, v12, v18, 2367, 0, "invalid nil value for '%{public}s'", "storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27, v28);
  }

  if (objc_msgSend_supportsChangeTracking(v6, v5, v7, v8, v9, v10))
  {
    if (objc_msgSend_wpKind(v6, v29, v30, v31, v32, v33))
    {
      hasBody = 1;
    }

    else
    {
      v35 = objc_msgSend_settings(self, v29, v30, v31, v32, v33);
      hasBody = objc_msgSend_hasBody(v35, v36, v37, v38, v39, v40);
    }
  }

  else
  {
    hasBody = 0;
  }

  v41 = objc_msgSend_documentRoot(v6, v29, v30, v31, v32, v33);
  v42 = (v41 == self) & hasBody;

  if (v42 == 1)
  {
    v48 = objc_msgSend_parentInfo(v6, v43, v44, v45, v46, v47);
    v49 = TSUProtocolCast();

    if (v49 && (objc_msgSend_preventsChangeTracking(v49, v50, v51, v52, v53, v54, &unk_288525798) & 1) != 0)
    {
      selfCopy = 0;
    }

    else
    {
      selfCopy = self;
      objc_opt_class();
      v57 = TSUDynamicCast();
      if (v57)
      {
        if ((objc_msgSend_isSectionInfo_(selfCopy, v56, v58, v59, v60, v61, v57) & 1) != 0 || (objc_opt_class(), TSDNearestParentInfoOfClassFromInfo(), v62 = objc_claimAutoreleasedReturnValue(), v62, v62))
        {

          selfCopy = 0;
        }
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)modelEnumeratorWithFlags:(unint64_t)flags forObjectsPassingTest:(id)test
{
  testCopy = test;
  if (flags)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, v11, "[TPDocumentRoot modelEnumeratorWithFlags:forObjectsPassingTest:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v20, v21, v22, v23, v24, v13, v19, 2391, 0, "User search should start with the TSKFindReplaceDelegate");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28, v29);
  }

  v30 = objc_msgSend_settings(self, v6, v8, v9, v10, v11);
  v36 = (flags >> 1) & 1 | objc_msgSend_hasBody(v30, v31, v32, v33, v34, v35);

  if (v36)
  {
    v86.receiver = self;
    v86.super_class = TPDocumentRoot;
    v38 = [(TPDocumentRoot *)&v86 modelEnumeratorWithFlags:flags forObjectsPassingTest:testCopy];
    if (!v38)
    {
      v43 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v39, v40, v41, v42, "[TPDocumentRoot modelEnumeratorWithFlags:forObjectsPassingTest:]");
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v51, v52, v53, v54, v55, v44, v50, 2410, 0, "invalid nil value for '%{public}s'", "modelEnumerator");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59, v60);
      v38 = 0;
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_27600E66C;
    aBlock[3] = &unk_27A6A8F70;
    aBlock[4] = self;
    aBlock[5] = testCopy;
    v61 = _Block_copy(aBlock);
    v87.receiver = self;
    v87.super_class = TPDocumentRoot;
    v38 = [(TPDocumentRoot *)&v87 modelEnumeratorWithFlags:flags forObjectsPassingTest:v61];
    if (!v38)
    {
      v67 = MEMORY[0x277D81150];
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, v66, "[TPDocumentRoot modelEnumeratorWithFlags:forObjectsPassingTest:]");
      v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v75, v76, v77, v78, v79, v68, v74, 2407, 0, "invalid nil value for '%{public}s'", "modelEnumerator");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81, v82, v83, v84);
    }
  }

  return v38;
}

- (id)childEnumerator
{
  v7 = MEMORY[0x277D81148];
  v8 = objc_msgSend_bodyStorage(self, a2, v2, v3, v4, v5);
  v14 = objc_msgSend_aggregateEnumeratorWithObjects_(v7, v9, v10, v11, v12, v13, v8, 0);

  v20 = objc_msgSend_theme(self, v15, v16, v17, v18, v19);
  objc_msgSend_addObject_(v14, v21, v22, v23, v24, v25, v20);

  v31 = objc_msgSend_floatingDrawables(self, v26, v27, v28, v29, v30);
  v37 = objc_msgSend_drawableEnumerator(v31, v32, v33, v34, v35, v36);

  if (v37)
  {
    objc_msgSend_addObject_(v14, v38, v39, v40, v41, v42, v37);
  }

  v48 = objc_msgSend_flowInfoContainer(self, v43, v44, v45, v46, v47);
  v54 = objc_msgSend_flowInfos(v48, v49, v50, v51, v52, v53);
  v60 = objc_msgSend_objectEnumerator(v54, v55, v56, v57, v58, v59);

  if (v60)
  {
    objc_msgSend_addObject_(v14, v61, v62, v63, v64, v65, v60);
  }

  v71 = objc_msgSend_pageTemplates(self, v66, v67, v68, v69, v70);
  v77 = objc_msgSend_objectEnumerator(v71, v72, v73, v74, v75, v76);

  if (v77)
  {
    objc_msgSend_addObject_(v14, v78, v79, v80, v81, v82, v77);
  }

  return v14;
}

- (id)modelPathComponentForChild:(id)child
{
  childCopy = child;
  v10 = objc_msgSend_bodyStorage(self, v5, v6, v7, v8, v9);

  if (v10 == childCopy)
  {
    v22 = @"body-storage";
  }

  else
  {
    v16 = objc_msgSend_theme(self, v11, v12, v13, v14, v15);

    if (v16 == childCopy)
    {
      v22 = @"theme";
    }

    else
    {
      v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, v18, v19, v20, v21, @"drawable-%p", childCopy);
    }
  }

  return v22;
}

- (void)invalidateViewState
{
  v2.receiver = self;
  v2.super_class = TPDocumentRoot;
  [(TSADocumentRoot *)&v2 invalidateViewState];
}

- (BOOL)hasViewState
{
  objc_opt_class();
  v8 = objc_msgSend_viewState(self, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_viewStateRoot(v8, v9, v10, v11, v12, v13);
  v15 = TSUDynamicCast();

  if (v15)
  {
    v21 = objc_msgSend_uiState(v15, v16, v17, v18, v19, v20);
    objc_msgSend_visibleRect(v21, v22, v23, v24, v25, v26);
    IsEmpty = CGRectIsEmpty(v35);
    v33 = objc_msgSend_viewScaleModeiOS(v21, v28, v29, v30, v31, v32) != 0 || !IsEmpty;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (void)viewDidAppear
{
  objc_msgSend_readViewState(self, a2, v2, v3, v4, v5);
  self->_newDocument = 0;
  self->_viewDidAppear = 1;
}

- (void)willClose
{
  v8.receiver = self;
  v8.super_class = TPDocumentRoot;
  [(TSADocumentRoot *)&v8 willClose];
  objc_msgSend_tearDown(self, v3, v4, v5, v6, v7);
}

- (CGRect)pageBoundsWithinMargins
{
  leftMargin = self->_leftMargin;
  topMargin = self->_topMargin;
  v4 = self->_pageSize.width - (leftMargin + self->_rightMargin);
  v5 = self->_pageSize.height - (topMargin + self->_bottomMargin);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = topMargin;
  result.origin.x = leftMargin;
  return result;
}

- (BOOL)hasPageBackgroundsForSections
{
  v7 = objc_msgSend_bodyStorage(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_sectionCount(v7, v8, v9, v10, v11, v12);

  if (v13)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      v21 = objc_msgSend_bodyStorage(self, v14, v15, v16, v17, v18);
      v27 = objc_msgSend_sectionAtSectionIndex_effectiveRange_(v21, v22, v23, v24, v25, v26, v19, 0);

      if (!v27)
      {
        v33 = MEMORY[0x277D81150];
        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, v32, "[TPDocumentRoot hasPageBackgroundsForSections]");
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v41, v42, v43, v44, v45, v34, v40, 2666, 0, "invalid nil value for '%{public}s'", "section");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49, v50);
      }

      v51 = objc_msgSend_backgroundFill(v27, v28, v29, v30, v31, v32);

      if (v51)
      {
        break;
      }

      v20 = ++v19 < v13;
    }

    while (v13 != v19);
  }

  else
  {
    return 0;
  }

  return v20;
}

- (double)valueForMargin:(int64_t)margin
{
  result = 0.0;
  if (margin <= 5)
  {
    return *(&self->super.super.super.super.super.super.isa + *off_27A6A90D0[margin]);
  }

  return result;
}

- (void)setValue:(double)value forMargin:(int64_t)margin
{
  if (margin > 2)
  {
    switch(margin)
    {
      case 3:
        (MEMORY[0x2821F9670])(self, sel_setBottomMargin_, *&value);
        break;
      case 4:
        (MEMORY[0x2821F9670])(self, sel_setHeaderMargin_, *&value);
        break;
      case 5:
        (MEMORY[0x2821F9670])(self, sel_setFooterMargin_, *&value);
        break;
    }
  }

  else if (margin)
  {
    if (margin == 1)
    {
      (MEMORY[0x2821F9670])(self, sel_setRightMargin_, *&value);
    }

    else if (margin == 2)
    {
      (MEMORY[0x2821F9670])(self, sel_setTopMargin_, *&value);
    }
  }

  else
  {
    (MEMORY[0x2821F9670])(self, sel_setLeftMargin_, *&value);
  }
}

- (unint64_t)pageTemplateIndexForModelObject:(id)object
{
  v37 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = objc_msgSend_pageTemplates(self, v4, 0, v6, v7, v8, 0);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, v14, &v32, v36, 16);
    if (v16)
    {
      v21 = *v33;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v9);
          }

          v23 = *(*(&v32 + 1) + 8 * i);
          if (objc_msgSend_containsModelObject_(v23, v15, v17, v18, v19, v20, objectCopy))
          {
            v25 = objc_msgSend_pageTemplates(self, v15, v17, v18, v19, v20);
            v24 = objc_msgSend_indexOfObject_(v25, v26, v27, v28, v29, v30, v23);

            goto LABEL_12;
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, v17, v18, v19, v20, &v32, v36, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v24 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_12:
  }

  else
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v24;
}

- (BOOL)isSectionModel:(id)model
{
  modelCopy = model;
  if (modelCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    v12 = v6;
    if (!v6 || (v13 = objc_msgSend_wpKind(v6, v7, v8, v9, v10, v11), v5 = v13, v13 >= 3))
    {
      v14 = objc_msgSend_sectionTemplatePageOwningModel_(self, v7, v8, v9, v10, v11, modelCopy);
      v5 = v14 != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSectionInfo:(id)info
{
  infoCopy = info;
  if (infoCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    v12 = v6;
    if (!v6 || (v13 = objc_msgSend_wpKind(v6, v7, v8, v9, v10, v11), v5 = v13, v13 >= 3))
    {
      v14 = objc_msgSend_sectionTemplatePageOwningInfo_(self, v7, v8, v9, v10, v11, infoCopy);
      v5 = v14 != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sectionTemplatePageOwningModel:(id)model
{
  v30 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (modelCopy)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = objc_msgSend_nonHiddenSections(self, v4, 0, v6, v7, v8, 0);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, v14, &v25, v29, 16);
    if (v16)
    {
      v21 = *v26;
LABEL_4:
      v22 = 0;
      while (1)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v9);
        }

        v23 = objc_msgSend_sectionTemplatePageOwningModel_(*(*(&v25 + 1) + 8 * v22), v15, v17, v18, v19, v20, modelCopy);
        if (v23)
        {
          break;
        }

        if (v16 == ++v22)
        {
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, v17, v18, v19, v20, &v25, v29, 16);
          if (v16)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)sectionTemplatePageOwningInfo:(id)info
{
  v30 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (infoCopy)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = objc_msgSend_nonHiddenSections(self, v4, 0, v6, v7, v8, 0);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, v14, &v25, v29, 16);
    if (v16)
    {
      v21 = *v26;
LABEL_4:
      v22 = 0;
      while (1)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v9);
        }

        v23 = objc_msgSend_sectionTemplatePageOwningInfo_(*(*(&v25 + 1) + 8 * v22), v15, v17, v18, v19, v20, infoCopy);
        if (v23)
        {
          break;
        }

        if (v16 == ++v22)
        {
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, v17, v18, v19, v20, &v25, v29, 16);
          if (v16)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)isSectionTemplateInfo:(id)info
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = TPDocumentRoot;
  if ([(TSWPDocumentRoot *)&v13 isSectionTemplateInfo:infoCopy])
  {
    v10 = 1;
  }

  else
  {
    v11 = objc_msgSend_sectionTemplatePageOwningInfo_(self, v5, v6, v7, v8, v9, infoCopy);
    v10 = v11 != 0;
  }

  return v10;
}

- (BOOL)isDrawableOnSectionTemplatePage:(id)page
{
  v7 = objc_msgSend_sectionTemplatePageOwningInfo_(self, a2, v3, v4, v5, v6, page);
  v8 = v7 != 0;

  return v8;
}

- (BOOL)cellCommentsAllowedOnInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if ((objc_msgSend_p_drawableInfoIsOwnedByATPPageTemplate_(self, v6, v7, v8, v9, v10, v5) & 1) != 0 || (v19.receiver = self, v19.super_class = TPDocumentRoot, ![(TSWPDocumentRoot *)&v19 cellCommentsAllowedOnInfo:infoCopy]))
  {
    v17 = 0;
  }

  else
  {
    v16 = objc_msgSend_sectionTemplatePageOwningInfo_(self, v11, v12, v13, v14, v15, infoCopy);
    v17 = v16 == 0;
  }

  return v17;
}

- (BOOL)p_drawableInfoIsOwnedByATPPageTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  v4 = TSDNearestParentInfoOfClassFromInfo();
  v5 = v4 != 0;

  return v5;
}

- (BOOL)sectionTemplatePagesAllowDrawable:(id)drawable
{
  drawableCopy = drawable;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v10 = v4;
  if (v4)
  {
    isLinked = objc_msgSend_isLinked(v4, v5, v6, v7, v8, v9);
  }

  else
  {
    isLinked = 0;
  }

  objc_opt_class();
  v12 = TSUDynamicCast();
  if (objc_msgSend_isAnchoredToText(drawableCopy, v13, v14, v15, v16, v17))
  {
    v23 = objc_msgSend_exteriorTextWrap(drawableCopy, v18, v19, v20, v21, v22);
    isHTMLWrap = objc_msgSend_isHTMLWrap(v23, v24, v25, v26, v27, v28);
  }

  else
  {
    isHTMLWrap = 0;
  }

  objc_opt_class();
  v30 = TSUDynamicCast();
  objc_opt_class();
  v31 = TSUDynamicCast();
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v32 = objc_alloc(MEMORY[0x277D80660]);
  v38 = objc_msgSend_initWithRootModelObject_filter_(v32, v33, v34, v35, v36, v37, drawableCopy, 0);
  v57 = MEMORY[0x277D85DD0];
  v58 = 3221225472;
  v59 = sub_27600F87C;
  v60 = &unk_27A6A8F98;
  v39 = drawableCopy;
  v61 = v39;
  v62 = &v63;
  objc_msgSend_enumerateUsingBlock_(v38, v40, v41, v42, v43, v44, &v57);
  v50 = 0;
  if (((isLinked | isHTMLWrap) & 1) == 0 && !v12 && !v30 && !v31)
  {
    if (objc_msgSend_isLocked(v39, v45, v46, v47, v48, v49, v57, v58, v59, v60) & 1) != 0 || (objc_msgSend_isInlineWithText(v39, v51, v52, v53, v54, v55))
    {
      v50 = 0;
    }

    else
    {
      v50 = *(v64 + 24) ^ 1;
    }
  }

  _Block_object_dispose(&v63, 8);
  return v50 & 1;
}

- (unint64_t)inheritedSectionIndexForSectionIndex:(unint64_t)index
{
  for (i = objc_msgSend_bodyStorage(self, a2, v3, v4, v5, v6);
  {
    objc_opt_class();
    v14 = objc_msgSend_sectionAtSectionIndex_effectiveRange_(i, v9, v10, v11, v12, v13, index, 0);
    v15 = TSUCheckedDynamicCast();
    v21 = objc_msgSend_inheritPreviousHeaderFooter(v15, v16, v17, v18, v19, v20);

    if (!v21)
    {
      break;
    }
  }

  return index;
}

- (id)freehandDrawingToolkitUIState
{
  v6 = objc_msgSend_uiState(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_freehandDrawingToolkitUIState(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (id)pencilAnnotationUIState
{
  v6 = objc_msgSend_uiState(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_pencilAnnotationUIState(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (BOOL)documentDisallowsHighlightsOnStorage:(id)storage
{
  storageCopy = storage;
  if (objc_msgSend_pageTemplateIndexForModelObject_(self, v5, v6, v7, v8, v9, storageCopy) == 0x7FFFFFFFFFFFFFFFLL)
  {
    isSectionModel = objc_msgSend_isSectionModel_(self, v10, v11, v12, v13, v14, storageCopy);
  }

  else
  {
    isSectionModel = 1;
  }

  return isSectionModel;
}

- (BOOL)shouldHyphenate
{
  v6 = objc_msgSend_settings(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_autoHyphenation(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (__CFLocale)hyphenationLocale
{
  result = self->_hyphenationLocale;
  if (!result)
  {
    v8 = objc_msgSend_settings(self, a2, v2, v3, v4, v5);
    v14 = objc_msgSend_hyphenationLanguage(v8, v9, v10, v11, v12, v13);

    if (objc_msgSend_length(v14, v15, v16, v17, v18, v19))
    {
      self->_hyphenationLocale = CFLocaleCreate(*MEMORY[0x277CBECE8], v14);
    }

    else
    {
      v25 = objc_msgSend_documentLocale(self, v20, v21, v22, v23, v24);
      self->_hyphenationLocale = objc_msgSend_cfLocale(v25, v26, v27, v28, v29, v30);

      hyphenationLocale = self->_hyphenationLocale;
      if (hyphenationLocale)
      {
        CFRetain(hyphenationLocale);
      }
    }

    return self->_hyphenationLocale;
  }

  return result;
}

- (BOOL)useLigatures
{
  v6 = objc_msgSend_settings(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_useLigatures(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (int)naturalAlignmentAtCharIndex:(unint64_t)index inTextStorage:(id)storage
{
  storageCopy = storage;
  if (objc_msgSend_wpKind(storageCopy, v7, v8, v9, v10, v11) == 1 && (objc_msgSend_sectionTemplatePageOwningInfo_(self, v12, v13, v14, v15, v16, storageCopy), v17 = objc_claimAutoreleasedReturnValue(), (v23 = v17) != 0))
  {
    if ((objc_msgSend_usesSingleHeaderFooter(v17, v18, v19, v20, v21, v22) & 1) == 0)
    {
      v54 = objc_msgSend_headerFragmentIndexForStorage_(v23, v24, v25, v26, v27, v28, storageCopy);
      v60 = v54;
      if (v54)
      {
        if (v54 == 1)
        {
          v31 = 2;
        }

        else
        {
          if (v54 != 2)
          {
            v62 = MEMORY[0x277D81150];
            v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v56, v57, v58, v59, "[TPDocumentRoot naturalAlignmentAtCharIndex:inTextStorage:]");
            v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v70, v71, v72, v73, v74, v63, v69, 3169, 0, "unexpected header fragment index %lld", v60);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76, v77, v78, v79);
            v29 = v23;
            goto LABEL_7;
          }

          v31 = 1;
        }
      }

      else
      {
        v31 = 0;
      }

      v29 = v23;
      goto LABEL_15;
    }

    v29 = v23;
  }

  else
  {
    v29 = 0;
  }

  v80.receiver = self;
  v80.super_class = TPDocumentRoot;
  v31 = [(TSWPDocumentRoot *)&v80 naturalAlignmentAtCharIndex:index inTextStorage:storageCopy];
  if (v31 == 4)
  {
LABEL_7:
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v32, v33, v34, v35, "[TPDocumentRoot naturalAlignmentAtCharIndex:inTextStorage:]");
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v44, v45, v46, v47, v48, v37, v43, 3179, 0, "failed to determine natural alignment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52, v53);
    v31 = 4;
  }

LABEL_15:

  return v31;
}

- (int)verticalAlignmentForTextStorage:(id)storage
{
  storageCopy = storage;
  if (objc_msgSend_wpKind(storageCopy, v5, v6, v7, v8, v9) != 1 || (objc_msgSend_sectionTemplatePageOwningInfo_(self, v10, v11, v12, v13, v14, storageCopy), v15 = objc_claimAutoreleasedReturnValue(), (v16 = v15) == 0))
  {
    if (objc_msgSend_wpKind(storageCopy, v10, v11, v12, v13, v14) != 2)
    {
      v44.receiver = self;
      v44.super_class = TPDocumentRoot;
      v42 = [(TSWPDocumentRoot *)&v44 verticalAlignmentForTextStorage:storageCopy];
      v16 = 0;
      goto LABEL_11;
    }

    v16 = 0;
    goto LABEL_9;
  }

  v17 = objc_msgSend_headerFooterTypeForStorage_(v15, v10, v11, v12, v13, v14, storageCopy);
  v23 = v17;
  if (v17)
  {
    if (v17 != 1)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, v22, "[TPDocumentRoot verticalAlignmentForTextStorage:]");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v32, v33, v34, v35, v36, v25, v31, 3199, 0, "unexpected header/footer type %lld", v23);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40, v41);
      goto LABEL_6;
    }

LABEL_9:
    v42 = 2;
    goto LABEL_11;
  }

LABEL_6:
  v42 = 0;
LABEL_11:

  return v42;
}

- (BOOL)isMultiPageForQuickLook
{
  v6 = objc_msgSend_paginatedPageControllerForDelegate_(TPPaginatedPageController, a2, v2, v3, v4, v5, self);
  v12 = objc_msgSend_pageCount(v6, v7, v8, v9, v10, v11) > 1;

  return v12;
}

- (BOOL)textIsVerticalInStorage:(id)storage atCharIndex:(unint64_t)index
{
  storageCopy = storage;
  v12 = objc_msgSend_bodyStorage(self, v7, v8, v9, v10, v11);

  if (v12 == storageCopy)
  {
    v18 = objc_msgSend_laysOutBodyVertically(self, v13, v14, v15, v16, v17);
  }

  else
  {
    v21.receiver = self;
    v21.super_class = TPDocumentRoot;
    v18 = [(TSWPDocumentRoot *)&v21 textIsVerticalInStorage:storageCopy atCharIndex:index];
  }

  v19 = v18;

  return v19;
}

- (id)uuidPathPrefixComponentsForInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_wpKind(infoCopy, v5, v6, v7, v8, v9))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_wpKind(infoCopy, v10, v11, v12, v13, v14) == 2)
    {
      v15 = MEMORY[0x277CBEA60];
      v16 = objc_msgSend_bodyStorage(self, v10, v11, v12, v13, v14);
      v22 = objc_msgSend_objectUUID(v16, v17, v18, v19, v20, v21);
      v28 = objc_msgSend_arrayWithObject_(v15, v23, v24, v25, v26, v27, v22);
LABEL_23:

      goto LABEL_24;
    }

    v16 = objc_msgSend_sectionTemplatePageOwningInfo_(self, v10, v11, v12, v13, v14, infoCopy);
    if (v16)
    {
      objc_opt_class();
      v34 = (objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_headerFooterTypeForStorage_(v16, v29, v30, v31, v32, v33, infoCopy) != -1;
      v22 = TSDTopmostInfoFromInfo();
      v57 = objc_msgSend_parentInfo(v22, v52, v53, v54, v55, v56);

      if (v57)
      {
        v63 = objc_msgSend_parentInfo(v22, v58, v59, v60, v61, v62);

        v22 = v63;
      }

      v64 = v22 == infoCopy || v34;
      if (v64 == 1)
      {
        v65 = objc_msgSend_section(v16, v58, v59, v60, v61, v62);
        v71 = objc_msgSend_objectUUIDPath(v65, v66, v67, v68, v69, v70);
        v28 = objc_msgSend_uuids(v71, v72, v73, v74, v75, v76);

LABEL_21:
        goto LABEL_23;
      }
    }

    else
    {
      v22 = TSDTopmostInfoFromInfo();
      if (v22 == infoCopy && objc_msgSend_isFloatingAboveText(infoCopy, v35, v36, v37, v38, v39))
      {
        v45 = objc_msgSend_parentInfo(infoCopy, v40, v41, v42, v43, v44);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v28 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v78 = MEMORY[0x277CBEA60];
        v22 = objc_msgSend_bodyStorage(self, v47, v48, v49, v50, v51);
        v65 = objc_msgSend_objectUUID(v22, v79, v80, v81, v82, v83);
        v28 = objc_msgSend_arrayWithObject_(v78, v84, v85, v86, v87, v88, v65);
        goto LABEL_21;
      }
    }

    v28 = 0;
    goto LABEL_23;
  }

  v28 = 0;
LABEL_25:

  return v28;
}

+ (void)localizeTextStorage:(id)storage withTemplateBundle:(id)bundle andLocale:(id)locale
{
  v305 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  bundleCopy = bundle;
  selfCopy = self;
  localeCopy = locale;
  v288 = storageCopy;
  objc_msgSend_localizeDropCapsInStorage_withLocale_(self, v9, v10, v11, v12, v13, storageCopy);
  v274 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = objc_msgSend_range(storageCopy, v14, v15, v16, v17, v18);
  objc_msgSend_smartFieldsWithAttributeKind_intersectingRange_passingTest_(storageCopy, v20, v21, v22, v23, v24, 6, v19, v20, &unk_2885012B8);
  v299 = 0u;
  v300 = 0u;
  v297 = 0u;
  obj = v298 = 0u;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, v26, v27, v28, v29, &v297, v304, 16);
  if (v31)
  {
    v36 = *v298;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v298 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v297 + 1) + 8 * i);
        if (objc_msgSend_updatePlan(v38, v30, v32, v33, v34, v35))
        {
          v44 = objc_msgSend_range(v38, v39, v40, v41, v42, v43);
          v50 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v288, v45, v46, v47, v48, v49, v44, 0);
          v56 = objc_msgSend_locale(localeCopy, v51, v52, v53, v54, v55);
          objc_msgSend_resetLocaleTo_(v38, v57, v58, v59, v60, v61, v56);

          if (v50)
          {
            v67 = objc_msgSend_range(v38, v62, v63, v64, v65, v66);
            objc_msgSend_setCharacterStyle_range_undoTransaction_(v288, v68, v69, v70, v71, v72, v50, v67, v68, 0);
          }
        }

        if (objc_msgSend_usesDesignOnlyFeatures(v38, v39, v40, v41, v42, v43))
        {
          v73 = objc_alloc(MEMORY[0x277D80ED8]);
          v79 = objc_msgSend_context(v288, v74, v75, v76, v77, v78);
          v85 = objc_msgSend_initWithContext_(v73, v80, v81, v82, v83, v84, v79);

          v91 = objc_msgSend_range(v38, v86, v87, v88, v89, v90);
          objc_msgSend_addSmartField_toRange_dolcContext_undoTransaction_(v288, v92, v93, v94, v95, v96, v85, v91, v92, 0, 0);
        }
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, v32, v33, v34, v35, &v297, v304, 16);
    }

    while (v31);
  }

  v102 = objc_msgSend_range(v288, v97, v98, v99, v100, v101);
  v104 = v103;
  v295[0] = MEMORY[0x277D85DD0];
  v295[1] = 3221225472;
  v295[2] = sub_276010D24;
  v295[3] = &unk_27A6A8FC0;
  v105 = v274;
  v296 = v105;
  objc_msgSend_enumerateSmartFieldsWithAttributeKind_inRange_usingBlock_(v288, v106, v107, v108, v109, v110, 6, v102, v104, v295);
  v293 = 0u;
  v294 = 0u;
  v291 = 0u;
  v292 = 0u;
  v275 = objc_msgSend_reverseObjectEnumerator(v105, v111, 0, v112, v113, v114);
  v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v275, v115, v116, v117, v118, v119, &v291, v303, 16);
  v273 = v105;
  if (v120)
  {
    v278 = *v292;
    v277 = *MEMORY[0x277D80008];
    do
    {
      v281 = v120;
      for (j = 0; j != v281; ++j)
      {
        if (*v292 != v278)
        {
          objc_enumerationMutation(v275);
        }

        v127 = *(*(&v291 + 1) + 8 * j);
        v284 = objc_msgSend_objectAtIndexedSubscript_(v127, v121, v122, v123, v124, v125, 0);
        v133 = objc_msgSend_objectAtIndexedSubscript_(v127, v128, v129, v130, v131, v132, 1);
        v139 = objc_msgSend_rangeValue(v133, v134, v135, v136, v137, v138);
        v141 = v140;

        v287 = objc_msgSend_substringWithRange_(v288, v142, v143, v144, v145, v146, v139, v141);
        v285 = objc_msgSend_tswp_lineBreakingCharacterSet(MEMORY[0x277CCA900], v147, v148, v149, v150, v151);
        v152 = TSWPColumnBreakingCharacterSet();
        v286 = objc_msgSend_tsu_stringByReplacingInstancesOfCharactersInSet_withString_(v287, v153, v154, v155, v156, v157, v152, @" ");

        v283 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(selfCopy, v158, v159, v160, v161, v162, v286, v286, v277, bundleCopy, localeCopy);
        if ((objc_msgSend_isEqualToString_(v283, v163, v164, v165, v166, v167, v287) & 1) == 0)
        {
          objc_msgSend_removeSmartField_fromRange_undoTransaction_(v288, v168, v169, v170, v171, v172, v284, v139, v141, 0);
          v178 = objc_msgSend_componentsSeparatedByCharactersInSet_(v287, v173, v174, v175, v176, v177, v285);
          v184 = objc_msgSend_count(v178, v179, v180, v181, v182, v183);
          v190 = objc_msgSend_componentsSeparatedByCharactersInSet_(v283, v185, v186, v187, v188, v189, v285);
          if (v184 == objc_msgSend_count(v190, v191, v192, v193, v194, v195))
          {
            if (v184)
            {
              v201 = 0;
              v202 = v139;
              do
              {
                v203 = objc_msgSend_objectAtIndexedSubscript_(v178, v196, v197, v198, v199, v200, v201);
                v209 = objc_msgSend_length(v203, v204, v205, v206, v207, v208);
                v215 = objc_msgSend_objectAtIndexedSubscript_(v190, v210, v211, v212, v213, v214, v201);
                v221 = objc_msgSend_replaceCharactersInRange_withString_notifyObservers_undoTransaction_(v288, v216, v217, v218, v219, v220, v202, v209, v215, 0, 0);
                v223 = v222;

                v224 = v221 + v223;
                v202 = v221 + v223 + 1;
                ++v201;
              }

              while (v184 != v201);
              v141 = (v224 - v139);
            }
          }

          else
          {
            v139 = objc_msgSend_replaceCharactersInRange_withString_notifyObservers_undoTransaction_(v288, v196, v197, v198, v199, v200, v139, v141, v283, 0, 0);
            v141 = v196;
          }

          if (!objc_msgSend_wpKind(v288, v196, v197, v198, v199, v200))
          {
            v230 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v225, v226, v227, v228, v229);
            v236 = objc_msgSend_documentRoot(v288, v231, v232, v233, v234, v235);
            v301 = @"resetMetricsCache";
            v302 = MEMORY[0x277CBEC38];
            v242 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v237, v238, v239, v240, v241, &v302, &v301, 1);
            objc_msgSend_postNotificationName_object_userInfo_(v230, v243, v244, v245, v246, v247, @"TPHasBodyChanged", v236, v242);
          }

          objc_msgSend_addSmartField_toRange_dolcContext_undoTransaction_(v288, v225, v226, v227, v228, v229, v284, v139, v141, 0, 0);
        }
      }

      v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v275, v121, v122, v123, v124, v125, &v291, v303, 16);
    }

    while (v120);
  }

  v253 = objc_msgSend_range(v288, v248, v249, v250, v251, v252);
  v255 = v254;
  v289[0] = MEMORY[0x277D85DD0];
  v289[1] = 3221225472;
  v289[2] = sub_276010E64;
  v289[3] = &unk_27A6A8FE8;
  v256 = localeCopy;
  v290 = v256;
  objc_msgSend_enumerateAttachmentsInTextRange_usingBlock_(v288, v257, v258, v259, v260, v261, v253, v255, v289);
  v267 = objc_msgSend_range(v288, v262, v263, v264, v265, v266);
  objc_msgSend_setLanguage_forCharRange_undoTransaction_(v288, v268, v269, v270, v271, v272, 0, v267, v268, 0);
}

+ (void)localizeModelObject:(id)object withTemplateBundle:(id)bundle andLocale:(id)locale
{
  v263 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  selfCopy = self;
  bundleCopy = bundle;
  v258.receiver = self;
  v258.super_class = &OBJC_METACLASS___TPDocumentRoot;
  v226 = objectCopy;
  localeCopy = locale;
  objc_msgSendSuper2(&v258, sel_localizeModelObject_withTemplateBundle_andLocale_, objectCopy, bundleCopy);
  objc_opt_class();
  v230 = TSUDynamicCast();
  if (v230)
  {
    v228 = objc_msgSend_name(v230, v9, v10, v11, v12, v13);
    v238 = *MEMORY[0x277D80008];
    v20 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(self, v14, v15, v16, v17, v18, v228, v228);
    obj = v20;
    if (v20)
    {
      objc_msgSend_setName_(v230, v19, v21, v22, v23, v24, v20);
    }

    v25 = objc_msgSend_placeholderDrawables(v230, v19, v21, v22, v23, v24);
    v31 = objc_msgSend_copy(v25, v26, v27, v28, v29, v30);

    v256 = 0u;
    v257 = 0u;
    v254 = 0u;
    v255 = 0u;
    v32 = v31;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, v34, v35, v36, v37, &v254, v262, 16);
    if (v39)
    {
      v44 = *v255;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v255 != v44)
          {
            objc_enumerationMutation(v32);
          }

          v46 = *(*(&v254 + 1) + 8 * i);
          if (objc_msgSend_isUserDefinedTag_(TPPageTemplate, v38, v40, v41, v42, v43, v46))
          {
            v47 = objc_msgSend_objectForKeyedSubscript_(v32, v38, v40, v41, v42, v43, v46);
            v54 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(selfCopy, v48, v49, v50, v51, v52, v46, v46, v238, bundleCopy, localeCopy);
            if (v54)
            {
              objc_msgSend_applyTag_toPlaceholder_(v230, v53, v55, v56, v57, v58, v54, v47);
            }

            else
            {
              v59 = MEMORY[0x277D81150];
              v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v55, v56, v57, v58, "+[TPDocumentRoot localizeModelObject:withTemplateBundle:andLocale:]");
              v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v67, v68, v69, v70, v71, v60, v66, 3445, 0, "Failed to find localized tag for %{public}@", v46);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74, v75, v76);
            }
          }
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v38, v40, v41, v42, v43, &v254, v262, 16);
      }

      while (v39);
    }
  }

  objc_opt_class();
  v77 = TSUDynamicCast();
  if (v77)
  {
    v229 = v77;
    objc_msgSend_floatingDrawables(v77, v78, v79, v80, v81, v82);
    v252 = 0u;
    v253 = 0u;
    v250 = 0u;
    v239 = v251 = 0u;
    obja = objc_msgSend_allDrawables(v239, v83, 0, v84, v85, v86);
    v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v87, v88, v89, v90, v91, &v250, v261, 16);
    if (v93)
    {
      v98 = *v251;
      v99 = *MEMORY[0x277D80008];
      do
      {
        for (j = 0; j != v93; ++j)
        {
          if (*v251 != v98)
          {
            objc_enumerationMutation(obja);
          }

          v101 = *(*(&v250 + 1) + 8 * j);
          v102 = objc_msgSend_tagForDrawable_(v239, v92, v94, v95, v96, v97, v101);
          if (objc_msgSend_isUserDefinedTag_(TPPageTemplate, v103, v104, v105, v106, v107, v102))
          {
            if (objc_msgSend_containsString_(v102, v108, v109, v110, v111, v112, @"_LOCALIZABLE_Tag"))
            {
              v118 = v102;
            }

            else
            {
              v118 = objc_msgSend_stringByAppendingString_(v102, v113, v114, v115, v116, v117, @"_LOCALIZABLE_Tag");
            }

            v124 = v118;
            v126 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(selfCopy, v119, v120, v121, v122, v123, v118, v102, v99, bundleCopy, localeCopy);
            if (v126)
            {
              objc_msgSend_applyTag_toDrawable_(v239, v125, v127, v128, v129, v130, v126, v101);
            }

            else
            {
              v131 = MEMORY[0x277D81150];
              v132 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v125, v127, v128, v129, v130, "+[TPDocumentRoot localizeModelObject:withTemplateBundle:andLocale:]");
              v138 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v133, v134, v135, v136, v137, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v131, v139, v140, v141, v142, v143, v132, v138, 3464, 0, "Failed to find localized tag for %{public}@", v102);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v144, v145, v146, v147, v148);
            }
          }
        }

        v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v92, v94, v95, v96, v97, &v250, v261, 16);
      }

      while (v93);
    }

    v154 = objc_msgSend_templateIdentifier(v229, v149, v150, v151, v152, v153);
    objc_msgSend_rangeOfString_(v154, v155, v156, v157, v158, v159, @"_RTL");
    v161 = v160;

    isLanguageCharacterDirectionRightToLeft = objc_msgSend_isLanguageCharacterDirectionRightToLeft(localeCopy, v162, v163, v164, v165, v166);
    if (v161)
    {
      v172 = 0;
    }

    else
    {
      v172 = isLanguageCharacterDirectionRightToLeft;
    }

    if (v172 == 1)
    {
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      v227 = objc_msgSend_sections(v229, v168, 0, v169, v170, v171);
      v178 = objc_msgSend_countByEnumeratingWithState_objects_count_(v227, v173, v174, v175, v176, v177, &v246, v260, 16);
      if (!v178)
      {
        goto LABEL_55;
      }

      objb = *v247;
      while (1)
      {
        v235 = v178;
        for (k = 0; k != v235; ++k)
        {
          if (*v247 != objb)
          {
            objc_enumerationMutation(v227);
          }

          v185 = *(*(&v246 + 1) + 8 * k);
          v186 = objc_msgSend_settings(v229, v179, v180, v181, v182, v183);
          if (objc_msgSend_hasFacingPages(v186, v187, v188, v189, v190, v191))
          {
            v197 = objc_msgSend_sectionTemplateEvenOddPagesDifferent(v185, v192, v193, v194, v195, v196);

            if (v197)
            {
              v203 = objc_msgSend_sectionTemplatePageForType_(v185, v198, v199, v200, v201, v202, 2);
              v209 = objc_msgSend_sectionTemplatePageForType_(v185, v204, v205, v206, v207, v208, 1);
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 3221225472;
              aBlock[2] = sub_2760117C8;
              aBlock[3] = &unk_27A6A9010;
              aBlock[4] = v203;
              aBlock[5] = v209;
              v210 = _Block_copy(aBlock);
              v210[2](v210, 0);
              v210[2](v210, 1);

              goto LABEL_53;
            }
          }

          else
          {
          }

          v243 = 0u;
          v244 = 0u;
          v241 = 0u;
          v242 = 0u;
          v203 = objc_msgSend_sectionTemplatePages(v185, v198, 0, v200, v201, v202);
          v216 = objc_msgSend_countByEnumeratingWithState_objects_count_(v203, v211, v212, v213, v214, v215, &v241, v259, 16);
          if (v216)
          {
            v217 = *v242;
            do
            {
              for (m = 0; m != v216; ++m)
              {
                if (*v242 != v217)
                {
                  objc_enumerationMutation(v203);
                }

                v219 = *(*(&v241 + 1) + 8 * m);
                v240[0] = MEMORY[0x277D85DD0];
                v240[1] = 3221225472;
                v240[2] = sub_2760118A8;
                v240[3] = &unk_27A6A9038;
                v240[4] = v219;
                v220 = _Block_copy(v240);
                v220[2](v220, 0);
                v220[2](v220, 1);
              }

              v216 = objc_msgSend_countByEnumeratingWithState_objects_count_(v203, v221, v222, v223, v224, v225, &v241, v259, 16);
            }

            while (v216);
          }

LABEL_53:
        }

        v178 = objc_msgSend_countByEnumeratingWithState_objects_count_(v227, v179, v180, v181, v182, v183, &v246, v260, 16);
        if (!v178)
        {
LABEL_55:

          break;
        }
      }
    }

    v77 = v229;
  }
}

- (void)upgradeFromOldSectionWithPageSize:(CGSize)size leftMargin:(double)margin rightMargin:(double)rightMargin topMargin:(double)topMargin bottomMargin:(double)bottomMargin headerMargin:(double)headerMargin footerMargin:(double)footerMargin
{
  height = size.height;
  width = size.width;
  objc_msgSend_willModifyForUpgrade(self, a2, size, *&size.height, *&margin, *&rightMargin);
  self->_pageSize.width = width;
  self->_pageSize.height = height;
  self->_pageScale = 1.0;
  self->_leftMargin = margin;
  self->_rightMargin = rightMargin;
  self->_topMargin = topMargin;
  self->_bottomMargin = bottomMargin;
  self->_headerMargin = headerMargin;
  self->_footerMargin = footerMargin;
}

- (void)setExportViewModeForCTMarkup:(BOOL)markup deletions:(BOOL)deletions paginatedPageController:(id)controller
{
  deletionsCopy = deletions;
  markupCopy = markup;
  controllerCopy = controller;
  v13 = objc_msgSend_documentRoot(self, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_uiState(v13, v14, v15, v16, v17, v18);
  if (objc_msgSend_showsCTMarkup(v19, v20, v21, v22, v23, v24) == markupCopy)
  {
    v35 = objc_msgSend_documentRoot(self, v25, v26, v27, v28, v29);
    v41 = objc_msgSend_uiState(v35, v36, v37, v38, v39, v40);
    v47 = objc_msgSend_showsCTDeletions(v41, v42, v43, v44, v45, v46);

    if (v47 == deletionsCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v48 = objc_msgSend_documentRoot(self, v30, v31, v32, v33, v34);
  v54 = objc_msgSend_uiState(v48, v49, v50, v51, v52, v53);
  objc_msgSend_setShowsCTMarkup_(v54, v55, v56, v57, v58, v59, markupCopy);

  v65 = objc_msgSend_uiState(v48, v60, v61, v62, v63, v64);
  objc_msgSend_setShowsCTDeletions_(v65, v66, v67, v68, v69, v70, deletionsCopy);

  objc_msgSend_changeTrackingVisibilityDidChange(controllerCopy, v71, v72, v73, v74, v75);
LABEL_5:
}

- (BOOL)shouldShowChangeKind:(int)kind date:(id)date
{
  result = objc_msgSend_shouldShowChangeTrackingMarkup(self, a2, v4, v5, v6, v7, *&kind, date);
  if (kind != 2)
  {
    return 1;
  }

  return result;
}

- (void)didAddDrawable:(id)drawable
{
  drawableCopy = drawable;
  v9 = objc_msgSend_owningAttachment(drawableCopy, v4, v5, v6, v7, v8);
  v15 = v9;
  if (!v9 || objc_msgSend_isDrawable(v9, v10, v11, v12, v13, v14) && objc_msgSend_isAnchored(v15, v16, v17, v18, v19, v20) && (objc_msgSend_isPartitioned(v15, v21, v22, v23, v24, v25) & 1) == 0)
  {
    v26 = objc_msgSend_drawablesZOrder(self, v10, v11, v12, v13, v14);
    objc_msgSend_addDrawable_(v26, v27, v28, v29, v30, v31, drawableCopy);
  }
}

- (void)willRemoveDrawable:(id)drawable
{
  drawableCopy = drawable;
  v9 = objc_msgSend_owningAttachment(drawableCopy, v4, v5, v6, v7, v8);
  v15 = v9;
  if (!v9 || objc_msgSend_isDrawable(v9, v10, v11, v12, v13, v14) && objc_msgSend_isAnchored(v15, v16, v17, v18, v19, v20) && (objc_msgSend_isPartitioned(v15, v21, v22, v23, v24, v25) & 1) == 0)
  {
    v26 = objc_msgSend_drawablesZOrder(self, v10, v11, v12, v13, v14);
    objc_msgSend_removeDrawable_(v26, v27, v28, v29, v30, v31, drawableCopy);
  }
}

- (void)setIndex:(int)index forObject:(id)object
{
  LODWORD(v4) = index;
  objectCopy = object;
  if (v4 != -1)
  {
    v103 = objectCopy;
    v8 = TSUProtocolCast();
    if (!v8)
    {
LABEL_15:

      objectCopy = v103;
      goto LABEL_16;
    }

    v13 = objc_msgSend_indexForObject_(self, v7, v9, v10, v11, v12, v8, &unk_2885108A0);
    LODWORD(v19) = v13;
    if (v13 == -1)
    {
      v44 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "[TPDocumentRoot setIndex:forObject:]");
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v52, v53, v54, v55, v56, v45, v51, 3780, 0, "Object does not currently have a z-index.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59, v60, v61);
      goto LABEL_15;
    }

    if (v13 >= v4)
    {
      v4 = v4;
    }

    else
    {
      v4 = (v4 + 1);
    }

    if ((v4 & 0x80000000) != 0 || v13 < 0)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "[TPDocumentRoot setIndex:forObject:]");
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v28, v29, v30, v31, v32, v21, v27, 3785, 0, "Index must not be negative");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36, v37);
    }

    v39 = objc_msgSend_drawablesZOrder(self, v14, v15, v16, v17, v18);
    if ((v19 & 0x80000000) != 0)
    {
      v62 = MEMORY[0x277D81150];
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v40, v41, v42, v43, "[TPDocumentRoot setIndex:forObject:]");
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v70, v71, v72, v73, v74, v63, v69, 3786, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76, v77, v78, v79);
      v19 = 0;
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v19 = v19;
      if ((v4 & 0x80000000) == 0)
      {
LABEL_12:
        objc_msgSend_moveDrawableAtZOrder_toZOrder_(v39, v38, v40, v41, v42, v43, v19, v4);
LABEL_13:

        goto LABEL_15;
      }
    }

    v80 = MEMORY[0x277D81150];
    v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v40, v41, v42, v43, "[TPDocumentRoot setIndex:forObject:]");
    v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, v83, v84, v85, v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v88, v89, v90, v91, v92, v81, v87, 3786, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v93, v94, v95, v96, v97);
    objc_msgSend_moveDrawableAtZOrder_toZOrder_(v39, v98, v99, v100, v101, v102, v19, 0);
    goto LABEL_13;
  }

LABEL_16:
}

- (int)indexForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v11 = v5;
  if (v5)
  {
    v12 = objc_msgSend_drawable(v5, v6, v7, v8, v9, v10);

    objectCopy = v12;
  }

  v14 = TSUProtocolCast();
  if (v14)
  {
    v19 = objc_msgSend_drawablesZOrder(self, v13, v15, v16, v17, v18, &unk_2885108A0);
    v25 = objc_msgSend_zOrderOfDrawable_(v19, v20, v21, v22, v23, v24, v14);
  }

  else
  {
    v25 = -1;
  }

  return v25;
}

- (unint64_t)rootIndexForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (!v6 || (objc_msgSend_floatingDrawables(self, v5, v7, v8, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend_pageIndexForDrawable_(v11, v12, v13, v14, v15, v16, v6), v11, v17 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, v10, "[TPDocumentRoot rootIndexForObject:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v26, v27, v28, v29, v30, v19, v25, 3818, 0, "Drawable isn't on a page.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34, v35);
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v17;
}

- (id)resolverContainerForName:(id)name caseSensitive:(BOOL)sensitive
{
  if (objc_msgSend_length(name, a2, v4, v5, v6, v7))
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)resolverContainerNamesMatchingPrefix:(id)prefix
{
  if (objc_msgSend_length(prefix, a2, v3, v4, v5, v6))
  {
    return 0;
  }

  else
  {
    return &unk_28850DCD0;
  }
}

- (id)resolverMatchingName:(id)name contextResolver:(id)resolver
{
  nameCopy = name;
  resolverCopy = resolver;
  tablesWithUniqueNames = self->_tablesWithUniqueNames;
  if (tablesWithUniqueNames)
  {
    v14 = objc_msgSend_objectForKey_(tablesWithUniqueNames, v7, v9, v10, v11, v12, nameCopy);
  }

  else
  {
    v15 = objc_msgSend_calculationEngine(self, v7, v9, v10, v11, v12);
    v21 = objc_msgSend_tablesByName(v15, v16, v17, v18, v19, v20);
    v14 = objc_msgSend_resolverMatchingName_(v21, v22, v23, v24, v25, v26, nameCopy);
  }

  return v14;
}

- (id)resolverMatchingName:(id)name contextContainerName:(id)containerName
{
  v8 = objc_msgSend_resolverMatchingName_contextResolver_(self, a2, v4, v5, v6, v7, name, 0);

  return v8;
}

- (id)resolversMatchingPrefix:(id)prefix
{
  prefixCopy = prefix;
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8, v9);
  if (!self->_tablesWithUniqueNames)
  {
    v27 = objc_msgSend_calculationEngine(self, v10, v12, v13, v14, v15);
    v40 = objc_msgSend_tablesByName(v27, v35, v36, v37, v38, v39);
    v29 = objc_msgSend_resolversMatchingPrefix_(v40, v41, v42, v43, v44, v45, prefixCopy);

    goto LABEL_5;
  }

  if (objc_msgSend_length(prefixCopy, v10, v12, v13, v14, v15))
  {
    v21 = objc_msgSend_documentLocale(self, v16, v17, v18, v19, v20);
    v27 = objc_msgSend_locale(v21, v22, v23, v24, v25, v26);

    tablesWithUniqueNames = self->_tablesWithUniqueNames;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_27601269C;
    v49[3] = &unk_27A6A9060;
    v50 = prefixCopy;
    v51 = v27;
    v29 = v11;
    v52 = v29;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(tablesWithUniqueNames, v30, v31, v32, v33, v34, v49);

LABEL_5:
    v46 = v29;
    v11 = v46;
    goto LABEL_7;
  }

  v46 = objc_msgSend_allValues(self->_tablesWithUniqueNames, v16, v17, v18, v19, v20);
LABEL_7:
  v47 = v46;

  return v47;
}

- (id)resolverMatchingName:(id)name
{
  v7 = objc_msgSend_resolverMatchingName_contextResolver_(self, a2, v3, v4, v5, v6, name, 0);

  return v7;
}

- (BOOL)resolverNameIsUsed:(id)used
{
  usedCopy = used;
  tablesWithUniqueNames = self->_tablesWithUniqueNames;
  if (tablesWithUniqueNames)
  {
    v11 = objc_msgSend_objectForKey_(tablesWithUniqueNames, v4, v6, v7, v8, v9, usedCopy);
    IsUsed = v11 != 0;
  }

  else
  {
    v11 = objc_msgSend_calculationEngine(self, v4, v6, v7, v8, v9);
    v18 = objc_msgSend_tablesByName(v11, v13, v14, v15, v16, v17);
    IsUsed = objc_msgSend_resolverNameIsUsed_(v18, v19, v20, v21, v22, v23, usedCopy);
  }

  return IsUsed;
}

- (unsigned)nextUntitledResolverIndex
{
  tableNameCounter = self->_tableNameCounter;
  self->_tableNameCounter = tableNameCounter + 1;
  return tableNameCounter;
}

- (void)addRemappedTableName:(id)name
{
  nameCopy = name;
  remappedTableNames = self->_remappedTableNames;
  v12 = nameCopy;
  if (!remappedTableNames)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v11 = self->_remappedTableNames;
    self->_remappedTableNames = v10;

    remappedTableNames = self->_remappedTableNames;
    nameCopy = v12;
  }

  objc_msgSend_addObject_(remappedTableNames, nameCopy, v5, v6, v7, v8, nameCopy);
}

- (void)clearRemappedTableNames
{
  remappedTableNames = self->_remappedTableNames;
  self->_remappedTableNames = 0;
}

- (id)UIStateForChart:(id)chart
{
  chartCopy = chart;
  v10 = objc_msgSend_uiState(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_UIStateForChart_(v10, v11, v12, v13, v14, v15, chartCopy);

  return v16;
}

- (void)setUIState:(id)state forChart:(id)chart
{
  stateCopy = state;
  chartCopy = chart;
  if (objc_msgSend_suppressViewStateCapture(self, v7, v8, v9, v10, v11))
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, v16, "[TPDocumentRoot setUIState:forChart:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v25, v26, v27, v28, v29, v18, v24, 3946, 0, "View state capture should not be suppressed.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33, v34);
  }

  v35 = objc_msgSend_uiState(self, v12, v13, v14, v15, v16);
  objc_msgSend_setUIState_forChart_(v35, v36, v37, v38, v39, v40, stateCopy, chartCopy);

  objc_msgSend_invalidateViewState(self, v41, v42, v43, v44, v45);
}

- (BOOL)prepareAndValidateSidecarViewStateRootWithVersionUUIDMismatch:(id)mismatch sidecarDocumentRevision:(id)revision originalDocumentViewStateRoot:(id)root
{
  mismatchCopy = mismatch;
  objc_opt_class();
  TSUDynamicCast();

  return 0;
}

- (int64_t)pageViewState
{
  v6 = objc_msgSend_uiState(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_pageViewState(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (id)pCreateBlankPageTemplate
{
  v7 = objc_msgSend_pBlankPageTemplate(self, a2, v2, v3, v4, v5);
  if (!v7)
  {
    v8 = [TPPageTemplate alloc];
    v14 = objc_msgSend_context(self, v9, v10, v11, v12, v13);
    v20 = objc_msgSend_blankPageTemplateName(self, v15, v16, v17, v18, v19);
    v7 = objc_msgSend_initWithContext_name_placeholderDrawables_placeholderTagsInZOrder_sectionTemplateDrawables_(v8, v21, v22, v23, v24, v25, v14, v20, MEMORY[0x277CBEC10], MEMORY[0x277CBEBF8], 0);

    v26 = objc_alloc(MEMORY[0x277CCAD78]);
    v32 = objc_msgSend_initWithUUIDString_(v26, v27, v28, v29, v30, v31, @"6EC83440-F231-4439-8E15-2D32D699FA7F");
    objc_msgSend_setObjectUUID_(v7, v33, v34, v35, v36, v37, v32);

    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v7, v38, v39, v40, v41, v42, self, 0);
    pageTemplates = self->_pageTemplates;
    if (!pageTemplates)
    {
      v49 = objc_msgSend_array(MEMORY[0x277CBEB18], v43, v44, v45, v46, v47);
      v50 = self->_pageTemplates;
      self->_pageTemplates = v49;

      pageTemplates = self->_pageTemplates;
    }

    objc_msgSend_addObject_(pageTemplates, v43, v44, v45, v46, v47, v7);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v7, v51, v52, v53, v54, v55, self, 0);
  }

  v56 = v7;

  return v56;
}

- (id)pBlankPageTemplate
{
  v37 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = self->_pageTemplates;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, v4, v5, v6, v7, &v32, v36, 16);
  if (v9)
  {
    v14 = *v33;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v2);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v17 = objc_msgSend_objectUUID(v16, v8, v10, v11, v12, v13, v32);
        v23 = objc_msgSend_UUIDString(v17, v18, v19, v20, v21, v22);
        isEqualToString = objc_msgSend_isEqualToString_(v23, v24, v25, v26, v27, v28, @"6EC83440-F231-4439-8E15-2D32D699FA7F");

        if (isEqualToString)
        {
          v30 = v16;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v8, v10, v11, v12, v13, &v32, v36, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v30 = 0;
LABEL_11:

  return v30;
}

- (void)pUpgradeSection:(id)section documentVersion:(unint64_t)version
{
  sectionCopy = section;
  if (*MEMORY[0x277D810D8] <= version)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, v11, "[TPDocumentRoot pUpgradeSection:documentVersion:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v20, v21, v22, v23, v24, v13, v19, 4293, 0, "didn't expect to have a document section in this version of document");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28, v29);
  }

  if (objc_msgSend_sectionCount(self->_bodyStorage, v6, v8, v9, v10, v11) != 1)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, v34, "[TPDocumentRoot pUpgradeSection:documentVersion:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v43, v44, v45, v46, v47, v36, v42, 4294, 0, "unexpected section count when upgrading document section");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51, v52);
  }

  objc_msgSend_willModifyForUpgrade(self, v30, v31, v32, v33, v34);
  v58 = objc_msgSend_stylesheet(self, v53, v54, v55, v56, v57);
  v59 = objc_alloc(MEMORY[0x277D80660]);
  v65 = objc_msgSend_initWithRootModelObject_filter_(v59, v60, v61, v62, v63, v64, sectionCopy, 0);
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = sub_2760130E0;
  v77[3] = &unk_27A6A9088;
  v66 = v58;
  v78 = v66;
  objc_msgSend_enumerateUsingBlock_(v65, v67, v68, v69, v70, v71, v77);
  objc_msgSend_nonUndoableAppendSection_charIndex_(self->_bodyStorage, v72, v73, v74, v75, v76, sectionCopy, 0);
}

- (BOOL)p_isUniquePageTemplateName:(id)name
{
  v37 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = objc_msgSend_pageTemplates(self, v5, 0, v6, v7, v8, 0);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, v14, &v32, v36, 16);
  if (v16)
  {
    v21 = *v33;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v9);
        }

        v23 = objc_msgSend_name(*(*(&v32 + 1) + 8 * i), v15, v17, v18, v19, v20);
        isEqualToString = objc_msgSend_isEqualToString_(v23, v24, v25, v26, v27, v28, nameCopy);

        if (isEqualToString)
        {
          v30 = 0;
          goto LABEL_11;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, v17, v18, v19, v20, &v32, v36, 16);
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v30 = 1;
LABEL_11:

  return v30;
}

- (BOOL)documentAllowsPencilAnnotationsOnModel:(id)model
{
  modelCopy = model;
  v19.receiver = self;
  v19.super_class = TPDocumentRoot;
  if ([(TPDocumentRoot *)&v19 documentAllowsPencilAnnotationsOnModel:modelCopy]&& (objc_msgSend_sectionTemplatePageOwningModel_(self, v5, v6, v7, v8, v9, modelCopy), v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    objc_opt_class();
    v13 = TSUDynamicCast();
    v11 = objc_msgSend_p_drawableInfoIsOwnedByATPPageTemplate_(self, v14, v15, v16, v17, v18, v13) ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)hasPencilAnnotations
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v2.n128_u64[0] = 3221225472;
  v8[1] = 3221225472;
  v8[2] = sub_276013454;
  v8[3] = &unk_27A6A90B0;
  v8[4] = &v9;
  objc_msgSend_enumeratePencilAnnotationsUsingBlock_(self, a2, v2, v3, v4, v5, v8);
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (double)currentDesiredPencilAnnotationDrawingScale
{
  v32 = 0;
  v33 = &v32;
  v3.n128_u64[0] = *MEMORY[0x277D80808];
  v34 = 0x2020000000;
  v35 = v3.n128_u64[0];
  v31[0] = MEMORY[0x277D85DD0];
  v2.n128_u64[0] = 3221225472;
  v31[1] = 3221225472;
  v31[2] = sub_2760135D4;
  v31[3] = &unk_27A6A90B0;
  v31[4] = &v32;
  objc_msgSend_enumeratePencilAnnotationsUsingBlock_(self, a2, v2, v3, v4, v5, v31);
  v11 = v33[3];
  if (v11 <= 0.0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, v10, "[TPDocumentRoot currentDesiredPencilAnnotationDrawingScale]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v20, v21, v22, v23, v24, v13, v19, 4817, 0, "should have a valid pencil annotation scale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28, v29);
    v11 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  return v11;
}

- (BOOL)hasTrackedChanges
{
  v6 = objc_msgSend_storagesWithChanges(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_count(v6, v7, v8, v9, v10, v11) != 0;

  return v12;
}

- (id)storagesWithChanges
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4, v5);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = objc_opt_class();
  v14 = objc_msgSend_modelEnumeratorForObjectsOfClass_(self, v9, v10, v11, v12, v13, v8, 0);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, v16, v17, v18, v19, &v31, v35, 16);
  if (v20)
  {
    v26 = v20;
    v27 = *v32;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(v14);
        }

        v29 = *(*(&v31 + 1) + 8 * i);
        if (objc_msgSend_hasTrackedChanges(v29, v21, v22, v23, v24, v25))
        {
          objc_msgSend_addObject_(v7, v21, v22, v23, v24, v25, v29);
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v21, v22, v23, v24, v25, &v31, v35, 16);
    }

    while (v26);
  }

  return v7;
}

- (int64_t)footnoteKind
{
  v6 = objc_msgSend_settings(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_footnoteKind(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (double)footnoteGap
{
  v6 = objc_msgSend_settings(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_footnoteGap(v6, v7, v8, v9, v10, v11);

  return v12;
}

@end