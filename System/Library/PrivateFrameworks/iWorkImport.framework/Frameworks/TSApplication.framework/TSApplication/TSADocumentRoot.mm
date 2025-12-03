@interface TSADocumentRoot
+ (BOOL)writePreviewImagesToPackageDataWriter:(id)writer scalableImage:(id)image group:(id)group queue:(id)queue;
+ (BOOL)writePreviewImagesToPath:(id)path scalableImage:(id)image;
+ (BOOL)writePreviewImagesToPath:(id)path scalableImage:(id)image group:(id)group queue:(id)queue;
+ (CGSize)previewImageSizeForType:(unint64_t)type;
+ (id)_localeForUnlocalizedValues;
+ (id)_localizedStringKeyForValue:(double)value templateName:(id)name tableInfo:(id)info unlocalizedTableName:(id)tableName cellAddress:(TSUCellCoord)address defaultValue:(id *)defaultValue;
+ (id)localizedFontNameForFontName:(id)name withLocale:(id)locale;
+ (id)localizedTemplateStringForKey:(id)key value:(id)value table:(id)table templateBundle:(id)bundle locale:(id)locale;
+ (id)prelocalizedStringForStorage:(id)storage range:(_NSRange)range attachmentHandlingBlock:(id)block;
+ (id)scaledPreviewImageForType:(unint64_t)type scalableImage:(id)image;
+ (id)supportedPreviewImageExtensions;
+ (id)supportedScalablePreviewNames;
+ (unint64_t)previewTypeForCurrentDevice;
+ (void)localizeChartInfo:(id)info withTemplateBundle:(id)bundle andLocale:(id)locale;
+ (void)localizeDropCapsInStorage:(id)storage withLocale:(id)locale;
+ (void)localizeModelObject:(id)object withTemplateBundle:(id)bundle andLocale:(id)locale;
+ (void)localizePropertiesOfIdentifiedStyle:(id)style withMap:(id)map;
+ (void)localizePropertiesOfNamedStyle:(id)style withMap:(id)map;
+ (void)localizePropertiesOfStylesInStylesheet:(id)stylesheet withMap:(id)map;
+ (void)localizeTableInfo:(id)info templateBundle:(id)bundle andLocale:(id)locale;
+ (void)localizeTextStorage:(id)storage withTemplateBundle:(id)bundle andLocale:(id)locale;
+ (void)removeExistingPreviewsForDocumentAtPath:(id)path;
+ (void)replacePropertiesOfStyle:(id)style withMap:(id)map;
+ (void)writePreviewImage:(id)image group:(id)group queue:(id)queue dataConsumerProvider:(id)provider completion:(id)completion;
+ (void)writePreviewImage:(id)image toPath:(id)path withIntermediateDirectories:(BOOL)directories name:(id)name group:(id)group queue:(id)queue completion:(id)completion;
- (BOOL)exportToPath:(id)path exporter:(id)exporter delegate:(id)delegate error:(id *)error;
- (BOOL)hasExpandedTables;
- (BOOL)hasExpandedTablesForGilligan;
- (BOOL)hasICloudConflict;
- (BOOL)isMultiPageForQuickLook;
- (BOOL)objectsNeedToBeMigrated:(id)migrated;
- (BOOL)p_updateDocumentLanguageToCurrentIfNeeded;
- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver;
- (BOOL)writeData:(id)data atDocumentCachePath:(id)path;
- (CGImageSource)newImageSourceForDocumentCachePath:(id)path;
- (NSDictionary)missingFontNamesAndWarningMessages;
- (NSDictionary)packageDataForWrite;
- (NSSet)missingFontWarningMessages;
- (NSString)defaultDraftName;
- (NSString)name;
- (TSADocumentInfo)documentInfo;
- (TSADocumentRoot)initWithContext:(id)context;
- (TSADrawableFactory)drawableFactory;
- (TSKViewState)viewState;
- (id)additionalDocumentPropertiesForWrite;
- (id)allPencilAnnotations;
- (id)buildVersionHistoryTemplateNameForIdentifier:(id)identifier;
- (id)consolidatedDocumentWarningsFromWarnings:(id)warnings;
- (id)createViewStateRootForContinuation:(BOOL)continuation;
- (id)customFormatList;
- (id)dataFromDocumentCachePath:(id)path;
- (id)documentCachePath;
- (id)documentCachePathWithRelativePath:(id)path;
- (id)makeIsolatedStyleMapper;
- (id)makeStyleMapper;
- (id)namedTextStyles;
- (id)newExporterForType:(id)type options:(id)options preferredType:(id *)preferredType;
- (id)p_captureViewStateForImport:(BOOL)import;
- (id)p_parseNumberOutOfBasename:(id)basename hasNumber:(BOOL *)number number:(unint64_t *)a5;
- (id)pencilAnnotationEnumeratorFromRootObject:(id)object;
- (id)previewImage;
- (id)previewImageForSize:(CGSize)size;
- (id)readBuildVersionHistoryFromDiskHasPreUFFVersion:(BOOL)version;
- (id)referencedStylesOfClass:(Class)class;
- (id)shortcutController;
- (id)tableToShowImportedDataNotificationOnOpenFor;
- (id)tsa_delegate;
- (id)uniqueDocumentCachePathForProposedPath:(id)path;
- (id)upgradeState;
- (id)warningsByCombiningSortedWarnings:(id)warnings withWarnings:(id)withWarnings;
- (void)addWarning:(id)warning;
- (void)applyViewState:(id)state;
- (void)backgroundDocumentDidLoad;
- (void)blockForRecalcWithTimeout:(double)timeout;
- (void)captureViewStateIfNeeded;
- (void)commonInit;
- (void)dealloc;
- (void)didSaveWithEncryptionChange;
- (void)documentDidLoad;
- (void)enumeratePencilAnnotationsFromRootObject:(id)object usingBlock:(id)block;
- (void)enumerateStylesheetsUsingBlock:(id)block;
- (void)fontUpdatedForStyleClient:(id)client;
- (void)importerDidFinish:(id)finish;
- (void)initializeForImport;
- (void)insertTextPresetDisplayItemsPreservingGrouping:(id)grouping insertAtBeginningOfGroup:(BOOL)group;
- (void)invalidateViewState;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)pUpgradeHyperlinks;
- (void)p_addCaptionShapeStyles;
- (void)p_cleanupColumnStyles;
- (void)p_registerAllFormulasAfterImport;
- (void)p_removeStyles:(id)styles;
- (void)p_replaceStyle:(id)style andChildrenWithVariationOfStyle:(id)ofStyle;
- (void)p_replaceStyles:(id)styles andChildrenWithVariationOfStyle:(id)style;
- (void)p_updateBuildVersionHistoryWithVersionOfTemplateIdentifier:(id)identifier;
- (void)p_upgradeCustomFormatList;
- (void)p_upgradeDocumentCreationLocale;
- (void)p_upgradeRemainingOutlinedTextStylesWithFileFormatVersion:(unint64_t)version;
- (void)performHyperlinkUpgradesIfNecessaryForVersion:(unint64_t)version;
- (void)performStylesheetUpdatesIfNecessaryForVersion:(unint64_t)version;
- (void)prepareForSavingAsTemplate;
- (void)prepareNewDocumentWithTemplateIdentifier:(id)identifier bundle:(id)bundle documentLocale:(id)locale;
- (void)prepareToGeneratePreview;
- (void)prepareUIStateForInitialViewing:(id)viewing;
- (void)presentDocumentWarnings;
- (void)removeRedundantStyleOverridesAndEnsureReferencedStylesAreInStylesheetWithFileFormatVersion:(unint64_t)version;
- (void)resetViewState;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)sendDocumentOpenedAnalyticsEventWithEventPayload:(id)payload;
- (void)setCalculationEngine:(id)engine;
- (void)setCollaborativeMediaCompatibilityUpgradeDidFail:(BOOL)fail;
- (void)setDocumentCreationLocale:(id)locale;
- (void)setDocumentLanguage:(id)language;
- (void)setNeedsMediaCompatibilityUpgrade:(BOOL)upgrade;
- (void)setTemplateIdentifier:(id)identifier;
- (void)stashUpgradeState:(const void *)state unarchiver:(id)unarchiver;
- (void)updateViewStateWithRoot:(id)root;
- (void)upgradeCellStyles;
- (void)upgradeTextStylesForUnityAfterSingleStylesheetUpgrade;
- (void)upgradeTextStylesForUnityBeforeSingleStylesheetUpgrade;
- (void)upgradeTextStylesForUnityPlusFromFileFormatVersion:(unint64_t)version;
- (void)upgradeTextboxPresets;
- (void)upgradeToFixNonVariationChildStylesWithFileFormatVersion:(unint64_t)version;
- (void)upgradeToSingleStylesheet;
- (void)willClose;
- (void)willUnload;
@end

@implementation TSADocumentRoot

- (void)setDocumentLanguage:(id)language
{
  languageCopy = language;
  v5 = self->_documentLanguage;
  v6 = languageCopy;
  if (v6 | v5)
  {
    v10 = v6;
    isEqual = objc_msgSend_isEqual_(v5, v7, v6, v8);

    if (isEqual)
    {
      v9 = v10;
    }

    else
    {
      objc_msgSend_willModify(self, v12, v13, v14);
      obj = objc_msgSend_copy(v10, v15, v16, v17);

      objc_storeStrong(&self->_documentLanguage, obj);
      v9 = obj;
      if (obj)
      {
        v20 = objc_msgSend_characterDirectionForLanguage_(MEMORY[0x277CBEAF8], v18, obj, v19);
        v9 = obj;
      }

      else
      {
        v20 = 1;
      }

      self->_documentLanguageWritingDirection = v20;
    }
  }

  else
  {
    v9 = 0;
  }
}

- (void)setDocumentCreationLocale:(id)locale
{
  localeCopy = locale;
  objc_msgSend_willModify(self, v5, v6, v7);
  v8 = *MEMORY[0x277D806F8];
  v9 = *(&self->super.super.super.super.super.isa + v8);
  *(&self->super.super.super.super.super.isa + v8) = localeCopy;
}

- (void)setTemplateIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->_templateIdentifier != identifierCopy)
  {
    v11 = identifierCopy;
    objc_msgSend_willModify(self, identifierCopy, v5, v6);
    v10 = objc_msgSend_copy(v11, v7, v8, v9);

    objc_storeStrong(&self->_templateIdentifier, v10);
    identifierCopy = v10;
  }
}

- (void)setNeedsMediaCompatibilityUpgrade:(BOOL)upgrade
{
  if (self->_needsMediaCompatibilityUpgrade != upgrade)
  {
    objc_msgSend_willModify(self, a2, upgrade, v3);
    self->_needsMediaCompatibilityUpgrade = upgrade;
  }
}

- (void)setCollaborativeMediaCompatibilityUpgradeDidFail:(BOOL)fail
{
  if (self->_collaborativeMediaCompatibilityUpgradeDidFail != fail)
  {
    objc_msgSend_willModify(self, a2, fail, v3);
    self->_collaborativeMediaCompatibilityUpgradeDidFail = fail;
  }
}

- (TSADocumentRoot)initWithContext:(id)context
{
  contextCopy = context;
  v34.receiver = self;
  v34.super_class = TSADocumentRoot;
  v5 = [(TSCKDocumentRoot *)&v34 initWithContext:contextCopy];
  v9 = v5;
  if (v5)
  {
    objc_msgSend_p_updateDocumentLanguageToCurrentIfNeeded(v5, v6, v7, v8);
    v10 = objc_alloc(MEMORY[0x277D80C28]);
    v14 = objc_msgSend_context(v9, v11, v12, v13);
    v17 = objc_msgSend_initWithContext_(v10, v15, v14, v16);
    calculationEngine = v9->_calculationEngine;
    v9->_calculationEngine = v17;

    v19 = [TSAFunctionBrowserState alloc];
    v23 = objc_msgSend_context(v9, v20, v21, v22);
    v26 = objc_msgSend_initWithContext_(v19, v24, v23, v25);
    functionBrowserState = v9->_functionBrowserState;
    v9->_functionBrowserState = v26;

    v30 = objc_msgSend_readBuildVersionHistoryFromDiskHasPreUFFVersion_(v9, v28, 0, v29);
    objc_msgSend_setBuildVersionHistory_(v9, v31, v30, v32);

    v9->_documentLocaleWasUpdated = 0;
  }

  return v9;
}

- (void)commonInit
{
  if ((atomic_load_explicit(&qword_280A424D8, memory_order_acquire) & 1) == 0)
  {
    sub_27610C980();
  }

  v3 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v3, qword_280A424D0);
  v5 = objc_opt_class();
  if (InstanceMethod != class_getInstanceMethod(v5, qword_280A424D0))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSADocumentRoot commonInit]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 491, 0, "Subclasses should not override -prepareNewDocumentWithTemplateIdentifier:bundle:documentLocale:! Override -appSpecificPrepareNewDocumentWithTemplateIdentifier:bundle:documentLocale: (in TSADocumentRoot_Protected.h) instead.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v32.receiver = self;
  v32.super_class = TSADocumentRoot;
  [(TSADocumentRoot *)&v32 commonInit];
  v17 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v18 = dispatch_queue_create("TSADocumentCacheDecryptionKey.Access", v17);
  accessQueue = self->_accessQueue;
  self->_accessQueue = v18;

  v23 = objc_msgSend_context(self, v20, v21, v22);
  v27 = objc_msgSend_decryptionKey(v23, v24, v25, v26);
  accessQueue_documentCacheDecryptionKey = self->_accessQueue_documentCacheDecryptionKey;
  self->_accessQueue_documentCacheDecryptionKey = v27;

  v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v30 = dispatch_queue_create("TSADocumentRoot.FetchLatestRevisionQueue", v29);
  fetchLatestRevisionQueue = self->_fetchLatestRevisionQueue;
  self->_fetchLatestRevisionQueue = v30;
}

- (void)prepareNewDocumentWithTemplateIdentifier:(id)identifier bundle:(id)bundle documentLocale:(id)locale
{
  v149 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  bundleCopy = bundle;
  v137 = identifierCopy;
  localeCopy = locale;
  objc_msgSend_p_updateBuildVersionHistoryWithVersionOfTemplateIdentifier_(self, v10, identifierCopy, v11);
  objc_msgSend_willModify(self, v12, v13, v14);
  if (localeCopy)
  {
    v18 = objc_alloc(MEMORY[0x277D81228]);
    v21 = objc_msgSend_initWithLocale_(v18, v19, localeCopy, v20);
    objc_msgSend_setDocumentLocale_(self, v22, v21, v23);
    *(&self->super.super.super.super.super.isa + *MEMORY[0x277D80700]) = 1;
    objc_msgSend_setDocumentCreationLocale_(self, v24, v21, v25);
    v28 = objc_msgSend_objectForKey_(localeCopy, v26, *MEMORY[0x277CBE6C8], v27);
    objc_msgSend_setDocumentLanguage_(self, v29, v28, v30);

    v34 = objc_msgSend_calculationEngine(self, v31, v32, v33);
    objc_msgSend_documentLocaleDidChange(v34, v35, v36, v37);
  }

  else
  {
    objc_msgSend_updateDocumentLocaleToCurrentIfNeeded(self, v15, v16, v17);
    objc_msgSend_p_updateDocumentLanguageToCurrentIfNeeded(self, v38, v39, v40);
    v21 = objc_msgSend_documentLocale(self, v41, v42, v43);
    objc_msgSend_setDocumentCreationLocale_(self, v44, v21, v45);
  }

  v49 = objc_msgSend_calculationEngine(self, v46, v47, v48);
  objc_msgSend_pauseRecalculation(v49, v50, v51, v52);

  v136 = *MEMORY[0x277D80708];
  *(&self->super.super.super.super.super.isa + v136) = 1;
  v53 = objc_opt_new();
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v54 = objc_opt_class();
  v56 = objc_msgSend_modelEnumeratorWithFlags_forObjectsOfClass_(self, v55, 2, v54);
  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, &v143, v148, 16);
  if (v61)
  {
    v62 = *v144;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v144 != v62)
        {
          objc_enumerationMutation(v56);
        }

        v64 = *(*(&v143 + 1) + 8 * i);
        if (objc_msgSend_isAPivotTable(v64, v58, v59, v60))
        {
          objc_msgSend_addObject_(v53, v65, v64, v66);
        }

        v67 = objc_opt_class();
        v71 = objc_msgSend_documentLocale(self, v68, v69, v70);
        objc_msgSend_localizeModelObject_withTemplateBundle_andLocale_(v67, v72, v64, bundleCopy, v71);
      }

      v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v58, &v143, v148, 16);
    }

    while (v61);
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v74 = objc_msgSend_modelEnumeratorWithFlags_forObjectsPassingTest_(self, v73, 2, &unk_28850F530);
  v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, &v139, v147, 16);
  if (v76)
  {
    v77 = *v140;
    do
    {
      for (j = 0; j != v76; ++j)
      {
        if (*v140 != v77)
        {
          objc_enumerationMutation(v74);
        }

        v79 = *(*(&v139 + 1) + 8 * j);
        v80 = objc_opt_class();
        v84 = objc_msgSend_documentLocale(self, v81, v82, v83);
        objc_msgSend_localizeModelObject_withTemplateBundle_andLocale_(v80, v85, v79, bundleCopy, v84);
      }

      v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v86, &v139, v147, 16);
    }

    while (v76);
  }

  v87 = UnsafePointer();
  objc_msgSend_removeRedundantStyleOverridesAndEnsureReferencedStylesAreInStylesheetWithFileFormatVersion_(self, v88, v87, v89);
  v93 = objc_msgSend_calculationEngine(self, v90, v91, v92);
  objc_msgSend_markDateTimeVolatileFunctionsAsDirtyForCurrentDateTime(v93, v94, v95, v96);

  v100 = objc_msgSend_calculationEngine(self, v97, v98, v99);
  objc_msgSend_clearPreviousLocaleIdentifier(v100, v101, v102, v103);

  *(&self->super.super.super.super.super.isa + v136) = 0;
  objc_msgSend_setShouldMeasureNegativelyTrackedTextCorrectly_(self, v104, 1, v105);
  objc_msgSend_setUseOptimizedTextVerticalAlignment_(self, v106, 1, v107);
  objc_msgSend_setShouldAllowLigaturesInMinimallyTrackedText_(self, v108, 1, v109);
  v113 = objc_msgSend_calculationEngine(self, v110, v111, v112);
  objc_msgSend_resumeRecalculation(v113, v114, v115, v116);

  v120 = objc_msgSend_documentLocale(self, v117, v118, v119);
  v124 = objc_msgSend_locale(v120, v121, v122, v123);

  if (v124)
  {
    objc_msgSend_appSpecificPrepareNewDocumentWithTemplateIdentifier_bundle_documentLocale_(self, v125, v137, bundleCopy, v124);
  }

  else
  {
    v127 = MEMORY[0x277D81150];
    v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v125, "[TSADocumentRoot prepareNewDocumentWithTemplateIdentifier:bundle:documentLocale:]", v126);
    v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v129, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v130);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v127, v132, v128, v131, 643, 0, "invalid nil value for '%{public}s'", "finalDocumentLocale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v133, v134, v135);
  }
}

- (void)p_updateBuildVersionHistoryWithVersionOfTemplateIdentifier:(id)identifier
{
  v63[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v10 = objc_msgSend_buildVersionHistoryTemplateNameForIdentifier_(self, v5, identifierCopy, v6);
  if (v10)
  {
    v13 = objc_msgSend_tsa_templatesMetadataURL(MEMORY[0x277CCA8D8], v7, v8, v9);
    if (v13)
    {
      v14 = objc_msgSend_dictionaryWithContentsOfURL_(MEMORY[0x277CBEAC0], v11, v13, v12);
      v17 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v10, v16);

      v20 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"BuildVersion", v19);
      if (!objc_msgSend_length(v20, v21, v22, v23))
      {
        v26 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSADocumentRoot p_updateBuildVersionHistoryWithVersionOfTemplateIdentifier:]", v25);
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v29);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 715, 0, "Template version info is missing for template: %@", v10);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
      }

      v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"Template: %@ (%@)", v25, v10, v20);
      v39 = objc_msgSend_buildVersionHistory(self, v36, v37, v38);

      if (v39)
      {
        v42 = MEMORY[0x277D81150];
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSADocumentRoot p_updateBuildVersionHistoryWithVersionOfTemplateIdentifier:]", v41);
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v45);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v47, v43, v46, 719, 0, "New document created from a template should have no build version history");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50);
      }

      v63[0] = v35;
      v51 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v40, v63, 1);
      objc_msgSend_setBuildVersionHistory_(self, v52, v51, v53);
    }

    else
    {
      v54 = MEMORY[0x277D81150];
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSADocumentRoot p_updateBuildVersionHistoryWithVersionOfTemplateIdentifier:]", v12);
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v57);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v59, v55, v58, 731, 0, "Unable to load template metadata!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62);
    }
  }
}

- (id)buildVersionHistoryTemplateNameForIdentifier:(id)identifier
{
  v4 = objc_msgSend_componentsSeparatedByString_(identifier, a2, @"/", v3);
  v10 = objc_msgSend_count(v4, v5, v6, v7);
  if (v10 >= 3 && (objc_msgSend_objectAtIndexedSubscript_(v4, v8, 0, v9), v11 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v11, v12, @"Application", v13), v11, (isEqualToString & 1) != 0))
  {
    if (v10 == 3)
    {
      v17 = objc_msgSend_objectAtIndexedSubscript_(v4, v15, 1, v16);
    }

    else
    {
      v19 = objc_msgSend_subarrayWithRange_(v4, v15, 1, v10 - 2);
      v17 = objc_msgSend_componentsJoinedByString_(v19, v20, @"/", v21);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)p_updateDocumentLanguageToCurrentIfNeeded
{
  if (*(&self->super.super.super.super.super.isa + *MEMORY[0x277D80700]))
  {
    v4 = 0;
  }

  else
  {
    v6 = objc_msgSend_preferredLanguages(MEMORY[0x277D81228], a2, v2, v3);
    if (objc_msgSend_count(v6, v7, v8, v9))
    {
      v13 = objc_msgSend_objectAtIndex_(v6, v10, 0, v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = objc_msgSend_documentLanguage(self, v10, v11, v12);
    v17 = v13;
    if (v17 | v14)
    {
      isEqual = objc_msgSend_isEqual_(v14, v15, v17, v16);
    }

    else
    {
      isEqual = 1;
    }

    if ((isEqual & 1) == 0)
    {
      objc_msgSend_setDocumentLanguage_(self, v19, v17, v20);
    }

    v4 = objc_msgSend_updateDocumentLocaleToUseLanguageIfNeeded_(self, v19, v17, v20) | isEqual ^ 1;
  }

  return v4 & 1;
}

- (void)p_upgradeDocumentCreationLocale
{
  if (*(&self->super.super.super.super.super.isa + *MEMORY[0x277D806F8]))
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSADocumentRoot p_upgradeDocumentCreationLocale]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 776, 0, "expected nil value for '%{public}s'", "_documentCreationLocale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  }

  v13 = objc_alloc(MEMORY[0x277D81228]);
  v14 = TSUPreferredLocale();
  v18 = objc_msgSend_documentLanguage(self, v15, v16, v17);
  v22 = objc_msgSend_initWithLocale_documentLanguageIdentifier_(v13, v19, v14, v18);

  objc_msgSend_setDocumentCreationLocale_(self, v20, v22, v21);
}

- (void)dealloc
{
  if ((objc_msgSend_recalculationIsPaused(self->_calculationEngine, a2, v2, v3) & 1) == 0)
  {
    if (self->_isClosed)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSADocumentRoot dealloc]", v7);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 1002, 0, "Unbalanced calls to [TSCECalculationEngine pauseRecalculation] and [TSCECalculationEngine resumeRecalculation]");
    }

    else
    {
      if (!self->_didLoadControllers)
      {
LABEL_7:
        objc_msgSend_pauseRecalculation(self->_calculationEngine, v5, v6, v7);
        goto LABEL_8;
      }

      v14 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSADocumentRoot dealloc]", v7);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v17, v9, v12, 1000, 0, "Someone neglected to call -willClose on the document before releasing it.");
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    goto LABEL_7;
  }

LABEL_8:
  v21.receiver = self;
  v21.super_class = TSADocumentRoot;
  [(TSCKDocumentRoot *)&v21 dealloc];
}

- (id)tsa_delegate
{
  v4 = objc_msgSend_delegate(self, a2, v2, v3);
  v5 = TSUProtocolCast();

  return v5;
}

- (TSADocumentInfo)documentInfo
{
  v4 = objc_msgSend_tsa_delegate(self, a2, v2, v3);
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_msgSend_documentInfo(v4, v5, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)makeStyleMapper
{
  v3 = [TSAStyleMapper alloc];
  v7 = objc_msgSend_stylesheet(self, v4, v5, v6);
  v10 = objc_msgSend_initWithTargetStylesheet_(v3, v8, v7, v9);

  return v10;
}

- (id)makeIsolatedStyleMapper
{
  v4 = objc_msgSend_stylesheet(self, a2, v2, v3);
  v7 = objc_msgSend_tsp_deepCopyWithOptions_(v4, v5, 0, v6);

  v8 = [TSAStyleMapper alloc];
  v13 = objc_msgSend_initWithTargetStylesheet_(v8, v9, v7, v10);
  if (!v13)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSADocumentRoot makeIsolatedStyleMapper]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 1051, 0, "invalid nil value for '%{public}s'", "styleMapper");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  return v13;
}

- (BOOL)objectsNeedToBeMigrated:(id)migrated
{
  migratedCopy = migrated;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = objc_alloc(MEMORY[0x277D80660]);
  v9 = objc_msgSend_objectEnumerator(migratedCopy, v6, v7, v8);
  v11 = objc_msgSend_initWithEnumerator_flags_filter_(v5, v10, v9, 4, 0);

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_27609823C;
  v15[3] = &unk_27A6AF710;
  v15[4] = self;
  v15[5] = &v16;
  objc_msgSend_enumerateReferencedStylesUsingBlock_(v11, v12, v15, v13);
  LOBYTE(self) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return self;
}

- (void)backgroundDocumentDidLoad
{
  v16.receiver = self;
  v16.super_class = TSADocumentRoot;
  [(TSCKDocumentRoot *)&v16 backgroundDocumentDidLoad];
  calculationEngine = self->_calculationEngine;
  v7 = objc_msgSend_accessController(self, v4, v5, v6);
  objc_msgSend_setAccessController_(calculationEngine, v8, v7, v9);

  objc_msgSend_documentDidLoad(self->_calculationEngine, v10, v11, v12);
  self->_didPauseRecalculationForBackgroundDocument = 1;
  objc_msgSend_pauseRecalculation(self, v13, v14, v15);
}

- (void)documentDidLoad
{
  self->_didLoadControllers = 1;
  v40.receiver = self;
  v40.super_class = TSADocumentRoot;
  [(TSWPDocumentRoot *)&v40 documentDidLoad];
  calculationEngine = self->_calculationEngine;
  v7 = objc_msgSend_accessController(self, v4, v5, v6);
  objc_msgSend_setAccessController_(calculationEngine, v8, v7, v9);

  if (self->_didPauseRecalculationForBackgroundDocument)
  {
    self->_didPauseRecalculationForBackgroundDocument = 0;
    objc_msgSend_resumeRecalculation(self, v10, v11, v12);
  }

  objc_msgSend_documentDidLoad(self->_shortcutController, v10, v11, v12);
  objc_msgSend_documentDidLoad(self->_calculationEngine, v13, v14, v15);
  objc_msgSend_documentLocaleDidChange(self->_calculationEngine, v16, v17, v18);
  objc_msgSend_ensureAllTablesAreRegisteredInDocumentRoot_(MEMORY[0x277D80D40], v19, self, v20);
  v24 = objc_msgSend_theme(self, v21, v22, v23);
  objc_msgSend_enablePresetValidation(v24, v25, v26, v27);

  v31 = objc_msgSend_customFormatList(self, v28, v29, v30);
  objc_msgSend_setImporting_(v31, v32, 0, v33);

  v37 = objc_msgSend_customFormatList(self, v34, v35, v36);
  objc_msgSend_setUpgrading_(v37, v38, 0, v39);

  __C();
}

- (void)sendDocumentOpenedAnalyticsEventWithEventPayload:(id)payload
{
  payloadCopy = payload;
  v4 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSADocumentRoot sendDocumentOpenedAnalyticsEventWithEventPayload:]", v6);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v9);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v13, v7, v10, 1313, 0, "Abstract method not overridden by %{public}@", v12);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  v17 = MEMORY[0x277CBEAD8];
  v18 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v23 = objc_msgSend_stringWithFormat_(v18, v21, @"Abstract method not overridden by %@: %s", v22, v20, "[TSADocumentRoot sendDocumentOpenedAnalyticsEventWithEventPayload:]");
  v25 = objc_msgSend_exceptionWithName_reason_userInfo_(v17, v24, *MEMORY[0x277CBE658], v23, 0);
  v26 = v25;

  objc_exception_throw(v25);
}

- (id)upgradeState
{
  upgradeState = self->_upgradeState;
  if (!upgradeState)
  {
    v4 = objc_opt_new();
    v5 = self->_upgradeState;
    self->_upgradeState = v4;

    upgradeState = self->_upgradeState;
  }

  return upgradeState;
}

- (void)stashUpgradeState:(const void *)state unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v12 = objc_msgSend_upgradeState(self, v6, v7, v8);
  v13 = *(state + 8);
  if (v13)
  {
    objc_msgSend_willModifyForUpgrade(self, v9, v10, v11);
    v14 = objc_alloc(MEMORY[0x277CBEB18]);
    v17 = objc_msgSend_initWithCapacity_(v14, v15, v13, v16);
    v18 = 0;
    do
    {
      v19 = objc_alloc(MEMORY[0x277D80F80]);
      v21 = objc_msgSend_initWithArchive_unarchiver_(v19, v20, *(*(state + 5) + 8 * v18 + 8), unarchiverCopy);
      objc_msgSend_addObject_(v17, v22, v21, v23);

      ++v18;
    }

    while (v13 != v18);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v24, v17, @"TSAUpgradeInfoTextPresetNames");
  }
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  hasPreUFFVersion = objc_msgSend_hasPreUFFVersion(unarchiverCopy, v7, v8, v9);
  objc_msgSend_setHasPreUFFVersion_(self, v11, hasPreUFFVersion, v12);
  if (*(archive + 8))
  {
    v13 = *(archive + 8);
  }

  else
  {
    v13 = MEMORY[0x277D80720];
  }

  v96.receiver = self;
  v96.super_class = TSADocumentRoot;
  [(TSCKDocumentRoot *)&v96 loadFromArchive:v13 unarchiver:unarchiverCopy];
  objc_msgSend_stashUpgradeState_unarchiver_(self, v14, archive, unarchiverCopy);
  self->_documentLocaleWasUpdated = 0;
  objc_msgSend_setDocumentLanguage_(self, v15, 0, v16);
  if ((*(archive + 16) & 1) != 0 && (objc_msgSend_hasFloatingLocale(self, v17, v18, v19) & 1) == 0)
  {
    documentLanguage = self->_documentLanguage;
    self->_documentLanguage = 0;

    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    v24 = objc_msgSend_tsp_initWithProtobufString_(v21, v22, *(archive + 6) & 0xFFFFFFFFFFFFFFFELL, v23);
    objc_msgSend_setDocumentLanguage_(self, v25, v24, v26);
    objc_msgSend_updateDocumentLocaleToUseLanguageIfNeeded_(self, v27, v24, v28);
  }

  if (!objc_msgSend_length(self->_documentLanguage, v17, v18, v19))
  {
    objc_msgSend_p_updateDocumentLanguageToCurrentIfNeeded(self, v29, v30, v31);
  }

  if (!*(&self->super.super.super.super.super.isa + *MEMORY[0x277D806F8]))
  {
    objc_msgSend_p_upgradeDocumentCreationLocale(self, v29, v30, v31);
  }

  v32 = *(archive + 4);
  if ((v32 & 0x200) != 0)
  {
    v33 = *(archive + 15);
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = sub_276098DD4;
    v95[3] = &unk_27A6AF738;
    v95[4] = self;
    v34 = unarchiverCopy;
    v35 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v34, v36, v33, v35, 0, v95);

    v32 = *(archive + 4);
  }

  if ((v32 & 0x40) != 0)
  {
    v37 = *(archive + 12);
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = sub_276098DE8;
    v94[3] = &unk_27A6AF760;
    v94[4] = self;
    v38 = unarchiverCopy;
    v39 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v38, v40, v37, v39, 0, v94);

    v32 = *(archive + 4);
  }

  if ((v32 & 8) != 0)
  {
    v41 = *(archive + 9);
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = sub_276098E60;
    v93[3] = &unk_27A6AF788;
    v93[4] = self;
    v42 = unarchiverCopy;
    v43 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v42, v44, v41, v43, 0, v93);

    v32 = *(archive + 4);
  }

  if ((v32 & 0x80) != 0)
  {
    v45 = *(archive + 13);
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = sub_276098ED8;
    v92[3] = &unk_27A6AF7B0;
    v92[4] = self;
    v46 = unarchiverCopy;
    v47 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v46, v48, v45, v47, 0, v92);

    v32 = *(archive + 4);
  }

  if ((v32 & 0x20) != 0)
  {
    v62 = *(archive + 11);
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = sub_276098EE4;
    v91[3] = &unk_27A6AF7D8;
    v91[4] = self;
    v63 = unarchiverCopy;
    v64 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v63, v65, v62, v64, 0, v91);
  }

  else
  {
    v49 = [TSAFunctionBrowserState alloc];
    v53 = objc_msgSend_context(self, v50, v51, v52);
    v56 = objc_msgSend_initWithContext_(v49, v54, v53, v55);

    objc_msgSend_setFunctionBrowserState_(self, v57, v56, v58);
  }

  v66 = *(archive + 4);
  if ((v66 & 0x10) != 0)
  {
    v67 = *(archive + 10);
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = sub_276098EF0;
    v90[3] = &unk_27A6AF800;
    v90[4] = self;
    v68 = unarchiverCopy;
    v69 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v68, v70, v67, v69, 0, v90);

    v66 = *(archive + 4);
  }

  if ((v66 & 2) != 0)
  {
    v71 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v59, *(archive + 7) & 0xFFFFFFFFFFFFFFFELL, v61);
    v75 = objc_msgSend_copy(v71, v72, v73, v74);
    templateIdentifier = self->_templateIdentifier;
    self->_templateIdentifier = v75;
  }

  self->_needsMediaCompatibilityUpgrade = *(archive + 136);
  v80 = objc_msgSend_fileFormatVersion(unarchiverCopy, v59, v60, v61);
  if (v80 < *MEMORY[0x277D80988])
  {
    self->_needsMediaCompatibilityUpgrade = 1;
  }

  self->_collaborativeMediaCompatibilityUpgradeDidFail = *(archive + 137);
  if ((*(archive + 17) & 0x20) != 0)
  {
    self->_canUseHEVC = *(archive + 138);
  }

  v81 = objc_msgSend_hasPreUFFVersion(unarchiverCopy, v77, v78, v79);
  v85 = objc_msgSend_preUFFVersion(unarchiverCopy, v82, v83, v84);
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = sub_276098F74;
  v88[3] = &unk_27A6AF8A0;
  v88[4] = self;
  v88[5] = v80;
  v89 = v81;
  v88[6] = v85;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v86, v88, v87);
}

- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver
{
  v4.receiver = self;
  v4.super_class = TSADocumentRoot;
  return [(TSWPDocumentRoot *)&v4 validatedLoadFromUnarchiver:unarchiver];
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v54 = MEMORY[0x277D85DD0];
  v55 = 3221225472;
  v56 = sub_27609A170;
  v57 = &unk_27A6AF6C8;
  archiveCopy = archive;
  v7 = archiverCopy;
  v58 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, archive, &v54);
  self->_documentLocaleWasUpdated = 0;
  documentLanguage = self->_documentLanguage;
  if (documentLanguage)
  {
    v13 = objc_msgSend_UTF8String(documentLanguage, v9, v10, v11, v54, v55, v56, v57);
    *(archive + 4) |= 1u;
    sub_276093EA0(__p, v13);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v62 < 0)
    {
      operator delete(__p[0]);
    }
  }

  calculationEngine = self->_calculationEngine;
  if (!calculationEngine)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSADocumentRoot saveToArchive:archiver:]", v11);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 2022, 0, "document is trying to be saved before we have a calc engine. creating a new empty calc engine to keep Numbers from crashing.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
    calculationEngine = self->_calculationEngine;
    if (!calculationEngine)
    {
      v24 = objc_alloc(MEMORY[0x277D80C28]);
      v28 = objc_msgSend_context(self, v25, v26, v27);
      v31 = objc_msgSend_initWithContext_(v24, v29, v28, v30);
      v32 = self->_calculationEngine;
      self->_calculationEngine = v31;

      calculationEngine = self->_calculationEngine;
    }
  }

  *(archive + 4) |= 8u;
  v33 = *(archive + 9);
  if (!v33)
  {
    v34 = *(archive + 1);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = MEMORY[0x277C951B0](v34);
    *(archive + 9) = v33;
  }

  objc_msgSend_setStrongReference_message_(v7, v9, calculationEngine, v33, v54, v55, v56, v57);
  if (objc_msgSend_hasShortcuts(self->_shortcutController, v35, v36, v37))
  {
    shortcutController = self->_shortcutController;
    *(archive + 4) |= 0x80u;
    v42 = *(archive + 13);
    if (!v42)
    {
      v43 = *(archive + 1);
      if (v43)
      {
        v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
      }

      v42 = MEMORY[0x277C951B0](v43);
      *(archive + 13) = v42;
    }

    objc_msgSend_setStrongReference_message_(v7, v38, shortcutController, v42);
  }

  tablesCustomFormatList = self->_tablesCustomFormatList;
  if (tablesCustomFormatList)
  {
    *(archive + 4) |= 0x200u;
    v45 = *(archive + 15);
    if (!v45)
    {
      v46 = *(archive + 1);
      if (v46)
      {
        v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
      }

      v45 = MEMORY[0x277C951B0](v46);
      *(archive + 15) = v45;
    }

    objc_msgSend_setStrongReference_message_(v7, v38, tablesCustomFormatList, v45);
  }

  functionBrowserState = self->_functionBrowserState;
  if (functionBrowserState)
  {
    *(archive + 4) |= 0x20u;
    v48 = *(archive + 11);
    if (!v48)
    {
      v49 = *(archive + 1);
      if (v49)
      {
        v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
      }

      v48 = MEMORY[0x277C951B0](v49);
      *(archive + 11) = v48;
    }

    objc_msgSend_setStrongReference_message_(v7, v38, functionBrowserState, v48);
  }

  templateIdentifier = self->_templateIdentifier;
  if (templateIdentifier)
  {
    v51 = objc_msgSend_tsp_protobufString(templateIdentifier, v38, v39, v40);
    *(archive + 4) |= 2u;
    sub_276093EA0(__p, v51);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v62 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v52 = *(archive + 4);
  *(archive + 136) = self->_needsMediaCompatibilityUpgrade;
  *(archive + 137) = self->_collaborativeMediaCompatibilityUpgradeDidFail;
  canUseHEVC = self->_canUseHEVC;
  *(archive + 4) = v52 | 0x3800;
  *(archive + 138) = canUseHEVC;
}

- (NSDictionary)packageDataForWrite
{
  v38[1] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_buildVersionHistory(self, a2, v2, v3);
  v6 = sub_27609A430(v5);
  objc_msgSend_setBuildVersionHistory_(self, v7, v6, v8);

  v12 = objc_msgSend_buildVersionHistory(self, v9, v10, v11);

  if (!v12)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSADocumentRoot packageDataForWrite]", v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 2078, 0, "invalid nil value for '%{public}s'", "self.buildVersionHistory");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  if (self->_buildVersionHistory)
  {
    v25 = MEMORY[0x277CCAC58];
    v26 = objc_msgSend_buildVersionHistory(self, v13, v14, v15);
    v28 = objc_msgSend_dataWithPropertyList_format_options_error_(v25, v27, v26, 100, 0, 0);

    v29 = objc_opt_class();
    v33 = objc_msgSend_buildVersionHistoryPath(v29, v30, v31, v32);
    v37 = v33;
    v38[0] = v28;
    v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v34, v38, &v37, 1);
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)additionalDocumentPropertiesForWrite
{
  v34[2] = *MEMORY[0x277D85DE8];
  v33[0] = @"isMultiPage";
  v5 = MEMORY[0x277CCABB0];
  isMultiPageForQuickLook = objc_msgSend_isMultiPageForQuickLook(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithBool_(v5, v7, isMultiPageForQuickLook, v8);
  v33[1] = @"hasExternalReferenceOrMissingOrUnmaterializedRemoteData";
  v34[0] = v9;
  v10 = MEMORY[0x277CCABB0];
  v14 = objc_msgSend_context(self, v11, v12, v13);
  hasExternalReferenceOrMissingOrUnmaterializedRemoteData = objc_msgSend_hasExternalReferenceOrMissingOrUnmaterializedRemoteData(v14, v15, v16, v17);
  v21 = objc_msgSend_numberWithBool_(v10, v19, hasExternalReferenceOrMissingOrUnmaterializedRemoteData, v20);
  v34[1] = v21;
  v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v34, v33, 2);
  v27 = objc_msgSend_mutableCopy(v23, v24, v25, v26);

  v32.receiver = self;
  v32.super_class = TSADocumentRoot;
  additionalDocumentPropertiesForWrite = [(TSADocumentRoot *)&v32 additionalDocumentPropertiesForWrite];
  if (additionalDocumentPropertiesForWrite)
  {
    objc_msgSend_addEntriesFromDictionary_(v27, v28, additionalDocumentPropertiesForWrite, v29);
  }

  return v27;
}

- (void)willUnload
{
  objc_msgSend_pauseRecalculation(self->_calculationEngine, a2, v2, v3);
  v14 = objc_msgSend_remoteDataStore(self->_calculationEngine, v5, v6, v7);
  if (v14 && objc_msgSend_registeredWithCoordinator(v14, v8, v9, v10))
  {
    objc_msgSend_unregisterWithCoordinator(v14, v11, v12, v13);
  }
}

- (void)willClose
{
  v15.receiver = self;
  v15.super_class = TSADocumentRoot;
  [(TSWPDocumentRoot *)&v15 willClose];
  self->_isClosed = 1;
  objc_msgSend_willUnload(self, v3, v4, v5);
  objc_msgSend_documentWillUnload(self->_shortcutController, v6, v7, v8);
  objc_msgSend_fulfillPasteboardPromises(self, v9, v10, v11);
  __C();
  objc_msgSend_willClose(self->_calculationEngine, v12, v13, v14);
}

- (void)setCalculationEngine:(id)engine
{
  engineCopy = engine;
  calculationEngine = self->_calculationEngine;
  if (calculationEngine && (objc_msgSend_recalculationIsPaused(calculationEngine, v4, v5, v6) & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSADocumentRoot setCalculationEngine:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 2210, 0, "shouldn't throw away a calc engine while it may be recalculating");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = self->_calculationEngine;
  self->_calculationEngine = engineCopy;
}

- (void)initializeForImport
{
  objc_msgSend_willModify(self, a2, v2, v3);
  if (!self->_calculationEngine)
  {
    v5 = objc_alloc(MEMORY[0x277D80C28]);
    v13 = objc_msgSend_context(self, v6, v7, v8);
    v11 = objc_msgSend_initWithContext_(v5, v9, v13, v10);
    calculationEngine = self->_calculationEngine;
    self->_calculationEngine = v11;
  }
}

- (id)shortcutController
{
  shortcutController = self->_shortcutController;
  if (!shortcutController)
  {
    v4 = [TSAShortcutController alloc];
    v7 = objc_msgSend_initWithDocumentRoot_(v4, v5, self, v6);
    v8 = self->_shortcutController;
    self->_shortcutController = v7;

    shortcutController = self->_shortcutController;
  }

  return shortcutController;
}

- (id)customFormatList
{
  if (!self->_deprecatedTablesCustomFormatList && !self->_tablesCustomFormatList)
  {
    objc_msgSend_willModifyForUpgrade(self, a2, v2, v3);
    v5 = objc_alloc(MEMORY[0x277D80648]);
    v9 = objc_msgSend_context(self, v6, v7, v8);
    v12 = objc_msgSend_initWithContext_(v5, v10, v9, v11);
    tablesCustomFormatList = self->_tablesCustomFormatList;
    self->_tablesCustomFormatList = v12;
  }

  v14 = self->_tablesCustomFormatList;

  return v14;
}

- (void)p_upgradeCustomFormatList
{
  v37 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModifyForUpgrade(self, a2, v2, v3);
  if (self->_tablesCustomFormatList)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSADocumentRoot p_upgradeCustomFormatList]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 2344, 0, "expected nil value for '%{public}s'", "_tablesCustomFormatList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = objc_msgSend_upgradedCustomFormatList_(MEMORY[0x277D80D10], v5, self->_deprecatedTablesCustomFormatList, v6);
  tablesCustomFormatList = self->_tablesCustomFormatList;
  self->_tablesCustomFormatList = v16;

  deprecatedTablesCustomFormatList = self->_deprecatedTablesCustomFormatList;
  self->_deprecatedTablesCustomFormatList = 0;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = objc_msgSend_modelEnumeratorForObjectsConformingToProtocol_(self, v19, &unk_28854A4A0, v20);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v32, v36, 16);
  if (v23)
  {
    v24 = *v33;
    do
    {
      v25 = 0;
      do
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v32 + 1) + 8 * v25);
        v27 = objc_autoreleasePoolPush();
        objc_msgSend_upgradeFormatsForCustomFormatListU2_0(v26, v28, v29, v30);
        objc_autoreleasePoolPop(v27);
        ++v25;
      }

      while (v23 != v25);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v31, &v32, v36, 16);
    }

    while (v23);
  }
}

- (TSKViewState)viewState
{
  viewStateReference = self->_viewStateReference;
  v7 = 0;
  v4 = objc_msgSend_objectAndReturnError_(viewStateReference, a2, &v7, v2);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v7 == 0;
  }

  if (!v5 && *MEMORY[0x277D81408] != -1)
  {
    sub_27610C9D0();
  }

  return v4;
}

- (void)captureViewStateIfNeeded
{
  if ((objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, v2, v3) & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSADocumentRoot captureViewStateIfNeeded]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 2371, 0, "This operation must only be performed on the main thread.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = 1;
  atomic_compare_exchange_strong(&self->_needsToCaptureViewState + 1, &v17, 0);
  if (v17 == 1)
  {
    v18 = objc_msgSend_captureViewState(self, v5, v6, v7);
  }
}

- (id)p_captureViewStateForImport:(BOOL)import
{
  v9 = objc_msgSend_createViewStateRootForContinuation_(self, a2, import, v3);
  if (v9)
  {
    if (!import && self->_didLoadControllers && (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v6, v7, v8) & 1) == 0)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSADocumentRoot p_captureViewStateForImport:]", v8);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v13);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 2408, 0, "This operation must only be performed on the main thread.");

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v16, v17, v18);
    }

    objc_msgSend_p_updateViewStateWithRoot_(self, v6, v9, v8);
    v22 = objc_msgSend_viewState(self, v19, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)applyViewState:(id)state
{
  if (self->_didLoadControllers && (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, state, v3) & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSADocumentRoot applyViewState:]", v5);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 2421, 0, "This operation must only be performed on the main thread.");

    v15 = MEMORY[0x277D81150];

    objc_msgSend_logFullBacktrace(v15, v12, v13, v14);
  }
}

- (void)updateViewStateWithRoot:(id)root
{
  rootCopy = root;
  if (self->_didLoadControllers && (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v4, v5, v6) & 1) == 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSADocumentRoot updateViewStateWithRoot:]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 2438, 0, "This operation must only be performed on the main thread.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v13, v14, v15);
  }

  objc_msgSend_p_updateViewStateWithRoot_(self, v4, rootCopy, v6);
}

- (id)createViewStateRootForContinuation:(BOOL)continuation
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSADocumentRoot createViewStateRootForContinuation:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v7);
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v5, v8, 2477, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSADocumentRoot createViewStateRootForContinuation:]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v22, *MEMORY[0x277CBE658], v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (void)invalidateViewState
{
  atomic_store(1u, &self->_needsToCaptureViewState + 1);
  v7 = objc_msgSend_tsa_delegate(self, a2, v2, v3);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_invalidateRestorableState(v7, v4, v5, v6);
  }
}

- (void)resetViewState
{
  if (self->_viewStateReference)
  {
    objc_msgSend_willModify(self, a2, v2, v3);
    viewStateReference = self->_viewStateReference;
    self->_viewStateReference = 0;
  }
}

- (void)prepareUIStateForInitialViewing:(id)viewing
{
  viewingCopy = viewing;
  if (objc_msgSend_editingDisabled(viewingCopy, v3, v4, v5))
  {
    objc_msgSend_resetForInitialViewing(viewingCopy, v6, v7, v8);
  }
}

- (void)blockForRecalcWithTimeout:(double)timeout
{
  if (timeout <= 0.0)
  {
    v6 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSADocumentRoot blockForRecalcWithTimeout:]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v24, v9, 2569, 0, "Invalid timeout for blockForRecalcWithTimeout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  v25 = self->_calculationEngine;
  IsPaused = objc_msgSend_recalculationIsPaused(v25, v14, v15, v16);
  if (IsPaused)
  {
    objc_msgSend_resumeRecalculation(v25, v17, v18, v19);
  }

  objc_msgSend_blockUntilRecalcIsCompleteWithTimeout_(v25, v17, v18, v19, timeout);
  if (IsPaused)
  {
    objc_msgSend_pauseRecalculationSometimeSoon(v25, v21, v22, v23);
  }
}

+ (id)supportedScalablePreviewNames
{
  if (qword_280A424B0 != -1)
  {
    sub_27610C9F8();
  }

  v3 = qword_280A424B8;

  return v3;
}

+ (id)supportedPreviewImageExtensions
{
  if (qword_280A424C0 != -1)
  {
    sub_27610CA0C();
  }

  v3 = qword_280A424C8;

  return v3;
}

+ (id)scaledPreviewImageForType:(unint64_t)type scalableImage:(id)image
{
  imageCopy = image;
  objc_msgSend_previewImageMaxSizeForType_(self, v7, type, v8);
  objc_msgSend_size(imageCopy, v9, v10, v11);
  v15 = objc_msgSend_CGImage(imageCopy, v12, v13, v14);
  TSUScaleSizeWithinSize();
  TSURoundedSize();
  if (v19 < 1.0)
  {
    v19 = 1.0;
  }

  if (v18 < 1.0)
  {
    v18 = 1.0;
  }

  v20 = objc_msgSend_scaleImage_toSize_scale_(TSAPreviewImageUtility, v16, v15, v17, v18, v19);

  return v20;
}

+ (BOOL)writePreviewImagesToPath:(id)path scalableImage:(id)image
{
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  imageCopy = image;
  pathCopy = path;
  v10 = dispatch_queue_create("TSADocumentRoot.Preview", v7);

  LOBYTE(self) = objc_msgSend_writePreviewImagesToPath_scalableImage_group_queue_(self, v11, pathCopy, imageCopy, 0, v10);
  return self;
}

+ (void)removeExistingPreviewsForDocumentAtPath:(id)path
{
  v50[3] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v50[0] = @"preview";
  v50[1] = @"preview-web";
  v50[2] = @"preview-micro";
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v50, 3);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  obj = v45 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v44, v49, 16);
  if (v6)
  {
    v38 = *v45;
    do
    {
      v39 = v6;
      for (i = 0; i != v39; ++i)
      {
        if (*v45 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v12 = objc_msgSend_supportedPreviewImageExtensions(TSADocumentRoot, v7, v8, v9);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v40, v48, 16);
        if (v16)
        {
          v17 = *v41;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v41 != v17)
              {
                objc_enumerationMutation(v12);
              }

              v19 = *(*(&v40 + 1) + 8 * j);
              v20 = objc_msgSend_stringByAppendingPathComponent_(pathCopy, v14, v11, v15);
              v23 = objc_msgSend_tsu_tolerantStringByAppendingPathExtension_(v20, v21, v19, v22);

              v27 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v24, v25, v26);
              objc_msgSend_removeItemAtPath_error_(v27, v28, v23, 0);
            }

            v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v40, v48, 16);
          }

          while (v16);
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v44, v49, 16);
    }

    while (v6);
  }

  v31 = objc_msgSend_stringByAppendingPathComponent_(pathCopy, v29, @"Previews", v30);
  v35 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v32, v33, v34);
  objc_msgSend_removeItemAtPath_error_(v35, v36, v31, 0);
}

+ (BOOL)writePreviewImagesToPath:(id)path scalableImage:(id)image group:(id)group queue:(id)queue
{
  pathCopy = path;
  imageCopy = image;
  groupCopy = group;
  queueCopy = queue;
  v17 = 0;
  if (pathCopy && imageCopy)
  {
    v18 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v13, v14, v15);
    if (objc_msgSend_fileExistsAtPath_(v18, v19, pathCopy, v20))
    {
      v21 = objc_opt_class();
      objc_msgSend_removeExistingPreviewsForDocumentAtPath_(v21, v22, pathCopy, v23);
      v24 = objc_alloc(MEMORY[0x277D80848]);
      v27 = objc_msgSend_tsu_fileURLWithPath_(MEMORY[0x277CBEBC0], v25, pathCopy, v26);
      v30 = objc_msgSend_initWithURL_(v24, v28, v27, v29);

      v17 = objc_msgSend_writePreviewImagesToPackageDataWriter_scalableImage_group_queue_(self, v31, v30, imageCopy, groupCopy, queueCopy);
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

+ (BOOL)writePreviewImagesToPackageDataWriter:(id)writer scalableImage:(id)image group:(id)group queue:(id)queue
{
  writerCopy = writer;
  imageCopy = image;
  groupCopy = group;
  queueCopy = queue;
  v14 = 0;
  if (writerCopy && imageCopy)
  {
    context = objc_autoreleasePoolPush();
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 1;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_27609C108;
    v33[3] = &unk_27A6AF8C8;
    v33[4] = &v34;
    v15 = MEMORY[0x277C95D60](v33);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_27609C12C;
    v31[3] = &unk_27A6AF8F0;
    v16 = writerCopy;
    v32 = v16;
    objc_msgSend_writePreviewImage_group_queue_dataConsumerProvider_completion_(self, v17, imageCopy, groupCopy, queueCopy, v31, v15);
    v19 = objc_msgSend_scaledPreviewImageForType_scalableImage_(self, v18, 5, imageCopy);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_27609C190;
    v29[3] = &unk_27A6AF8F0;
    v20 = v16;
    v30 = v20;
    objc_msgSend_writePreviewImage_group_queue_dataConsumerProvider_completion_(self, v21, v19, groupCopy, queueCopy, v29, v15);
    v23 = objc_msgSend_scaledPreviewImageForType_scalableImage_(self, v22, 4, imageCopy);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_27609C1F4;
    v27[3] = &unk_27A6AF8F0;
    v28 = v20;
    objc_msgSend_writePreviewImage_group_queue_dataConsumerProvider_completion_(self, v24, v23, groupCopy, queueCopy, v27, v15);
    if (queueCopy)
    {
      dispatch_barrier_sync(queueCopy, &unk_28850F5B0);
    }

    v14 = *(v35 + 24);

    _Block_object_dispose(&v34, 8);
    objc_autoreleasePoolPop(context);
  }

  return v14 & 1;
}

+ (void)writePreviewImage:(id)image toPath:(id)path withIntermediateDirectories:(BOOL)directories name:(id)name group:(id)group queue:(id)queue completion:(id)completion
{
  pathCopy = path;
  nameCopy = name;
  completionCopy = completion;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_27609C444;
  v30[4] = sub_27609C454;
  v31 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_27609C45C;
  v25[3] = &unk_27A6AF918;
  directoriesCopy = directories;
  v27 = nameCopy;
  v28 = v30;
  v26 = pathCopy;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_27609C5A8;
  v22[3] = &unk_27A6AF940;
  v23 = completionCopy;
  v24 = v30;
  v18 = completionCopy;
  v19 = nameCopy;
  v20 = pathCopy;
  objc_msgSend_writePreviewImage_group_queue_dataConsumerProvider_completion_(self, v21, image, group, queue, v25, v22);

  _Block_object_dispose(v30, 8);
}

+ (void)writePreviewImage:(id)image group:(id)group queue:(id)queue dataConsumerProvider:(id)provider completion:(id)completion
{
  imageCopy = image;
  groupCopy = group;
  queueCopy = queue;
  providerCopy = provider;
  completionCopy = completion;
  if (providerCopy)
  {
    v19 = objc_msgSend_CGImage(imageCopy, v15, v16, v17);
    CGImageRetain(v19);
    v23 = objc_msgSend_copy(completionCopy, v20, v21, v22);

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_27609C8AC;
    v35[3] = &unk_27A6AF968;
    v36 = providerCopy;
    v38 = v19;
    completionCopy = v23;
    v37 = completionCopy;
    v24 = MEMORY[0x277C95D60](v35);
    v25 = v24;
    if (queueCopy)
    {
      if (groupCopy)
      {
        dispatch_group_async(groupCopy, queueCopy, v24);
      }

      else
      {
        dispatch_async(queueCopy, v24);
      }
    }

    else
    {
      v24[2](v24);
    }
  }

  else
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "+[TSADocumentRoot writePreviewImage:group:queue:dataConsumerProvider:completion:]", v17);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 2730, 0, "Data consumer provider should be defined.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

+ (CGSize)previewImageSizeForType:(unint64_t)type
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSADocumentRoot previewImageSizeForType:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v7);
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v5, v8, 2793, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "+[TSADocumentRoot previewImageSizeForType:]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v22, *MEMORY[0x277CBE658], v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

+ (unint64_t)previewTypeForCurrentDevice
{
  if (objc_msgSend_tsk_isPadOrVisionUI(MEMORY[0x277D75418], a2, v2, v3))
  {
    return 0;
  }

  v8 = objc_msgSend_tsk_screenClass(MEMORY[0x277D759A0], v4, v5, v6);
  if ((v8 - 3) < 3)
  {
    return 3;
  }

  if ((v8 - 1) >= 2)
  {
    if (v8)
    {
      return 0;
    }

    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "+[TSADocumentRoot previewTypeForCurrentDevice]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 2818, 0, "Unsupported device. Defaulting to TSAPreviewTypeIPhoneSmall");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    return 1;
  }

  else if (objc_msgSend_tsk_phoneUI568HOrSmaller(MEMORY[0x277D759A0], v9, v10, v11))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)previewImage
{
  v3 = objc_opt_class();
  objc_msgSend_previewImageSizeForType_(v3, v4, 6, v5);
  TSUMultiplySizeScalar();

  return MEMORY[0x2821F9670](self, sel_previewImageForSize_, v6, v7);
}

- (id)previewImageForSize:(CGSize)size
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSADocumentRoot previewImageForSize:]", v3, size.width, size.height);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v7);
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v5, v8, 2836, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSADocumentRoot previewImageForSize:]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v22, *MEMORY[0x277CBE658], v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (void)prepareToGeneratePreview
{
  v5 = objc_msgSend_accessController(self, a2, v2, v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_27609CF1C;
  v8[3] = &unk_27A6AF850;
  v8[4] = self;
  objc_msgSend_performRead_(v5, v6, v8, v7);
}

- (NSSet)missingFontWarningMessages
{
  v4 = objc_msgSend_missingFontNamesAndWarningMessages(self, a2, v2, v3);
  v8 = objc_msgSend_allValues(v4, v5, v6, v7);

  if (objc_msgSend_count(v8, v9, v10, v11))
  {
    v14 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v12, v8, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSDictionary)missingFontNamesAndWarningMessages
{
  v42 = *MEMORY[0x277D85DE8];
  v36 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = objc_msgSend_unavailableDocumentFonts(self, v5, v6, v7);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v37, v41, 16);
  if (v12)
  {
    v13 = *v38;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        if ((objc_msgSend_hasPrefix_(v15, v10, @".", v11) & 1) == 0)
        {
          v17 = objc_msgSend_sharedInstance(MEMORY[0x277D80E10], v10, v16, v11);
          isMasqueradingFontName = objc_msgSend_isMasqueradingFontName_(v17, v18, v15, v19);

          if ((isMasqueradingFontName & 1) == 0)
          {
            v22 = MEMORY[0x277CCACA8];
            v23 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v10, v21, v11);
            v25 = objc_msgSend_localizedStringForKey_value_table_(v23, v24, @"The font %@ is missing. Your text might look different.", &stru_288512028, @"TSApplication");
            v28 = objc_msgSend_stringWithFormat_(v22, v26, v25, v27, v15);
            objc_msgSend_setObject_forKeyedSubscript_(v36, v29, v28, v15);
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v37, v41, 16);
    }

    while (v12);
  }

  if (objc_msgSend_count(v36, v30, v31, v32))
  {
    v33 = v36;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  return v33;
}

- (id)consolidatedDocumentWarningsFromWarnings:(id)warnings
{
  v99 = *MEMORY[0x277D85DE8];
  warningsCopy = warnings;
  v78 = objc_msgSend_valueForKeyPath_(warningsCopy, v3, @"@distinctUnionOfObjects.message", v4);
  v8 = objc_msgSend_count(v78, v5, v6, v7);
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v83 = objc_msgSend_initWithCapacity_(v9, v10, v8, v11);
  v12 = objc_alloc(MEMORY[0x277D81308]);
  v80 = objc_msgSend_initWithCapacity_(v12, v13, v8, v14);
  v85 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v15, warningsCopy, v16);
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = v78;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v93, v98, 16);
  if (v20)
  {
    v84 = *v94;
    do
    {
      v21 = 0;
      do
      {
        if (*v94 != v84)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v93 + 1) + 8 * v21);
        v92[0] = MEMORY[0x277D85DD0];
        v92[1] = 3221225472;
        v92[2] = sub_27609D7D0;
        v92[3] = &unk_27A6AF990;
        v92[4] = v22;
        v23 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v18, v92, v19);
        v26 = objc_msgSend_filteredSetUsingPredicate_(v85, v24, v23, v25);
        v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v28 = v26;
        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v88, v97, 16);
        if (v33)
        {
          v34 = *v89;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v89 != v34)
              {
                objc_enumerationMutation(v28);
              }

              v36 = objc_msgSend_affectedObjects(*(*(&v88 + 1) + 8 * i), v30, v31, v32);
              objc_msgSend_unionSet_(v27, v37, v36, v38);
            }

            v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v88, v97, 16);
          }

          while (v33);
        }

        v42 = objc_msgSend_anyObject(v28, v39, v40, v41);
        v43 = MEMORY[0x277D81368];
        v47 = objc_msgSend_kind(v42, v44, v45, v46);
        v51 = objc_msgSend_message(v42, v48, v49, v50);
        v53 = objc_msgSend_warningWithKind_message_(v43, v52, v47, v51);

        if (!objc_msgSend_count(v27, v54, v55, v56))
        {
          goto LABEL_16;
        }

        if (objc_msgSend_isFontWarning(v53, v57, v58, v59) & 1) != 0 || objc_msgSend_count(v27, v60, v61, v62) == 1 && (objc_msgSend_anyObject(v27, v60, v64, v65), v66 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v66, (isKindOfClass))
        {
          objc_msgSend_setAffectedObjects_(v53, v60, v27, v62);
LABEL_16:
          v63 = 0;
          objc_msgSend_addObject_(v83, v57, v53, v59);
          goto LABEL_17;
        }

        v87 = 0;
        v68 = objc_msgSend_warningLocationDescriptionForAffectedObjects_sortingInfo_(self, v60, v27, &v87);
        v63 = v87;
        objc_msgSend_setDetailMessage_(v53, v69, v68, v70);

        if (!v63)
        {
          goto LABEL_16;
        }

        objc_msgSend_setObject_forUncopiedKey_(v80, v57, v63, v53);
LABEL_17:

        ++v21;
      }

      while (v21 != v20);
      v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v93, v98, 16);
      v20 = v71;
    }

    while (v71);
  }

  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = sub_27609D824;
  v86[3] = &unk_27A6AF9B8;
  v86[4] = self;
  v74 = objc_msgSend_keysSortedByValueUsingComparator_(v80, v72, v86, v73);
  v76 = objc_msgSend_warningsByCombiningSortedWarnings_withWarnings_(self, v75, v74, v83);

  return v76;
}

- (id)warningsByCombiningSortedWarnings:(id)warnings withWarnings:(id)withWarnings
{
  warningsCopy = warnings;
  withWarningsCopy = withWarnings;
  v9 = withWarningsCopy;
  v10 = withWarningsCopy;
  if (warningsCopy && (v10 = warningsCopy, withWarningsCopy))
  {
    v11 = objc_msgSend_arrayByAddingObjectsFromArray_(warningsCopy, v7, withWarningsCopy, v8);
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;

  return v12;
}

- (id)tableToShowImportedDataNotificationOnOpenFor
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_27609C444;
  v20 = sub_27609C454;
  v21 = 0;
  v3 = objc_opt_class();
  if (objc_msgSend_shouldShowImportedDataNotificationsOnOpen(v3, v4, v5, v6))
  {
    v7 = objc_opt_class();
    v10 = objc_msgSend_modelEnumeratorForObjectsOfClass_(self, v8, v7, v9);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_27609DA30;
    v15[3] = &unk_27A6AF9E0;
    v15[4] = &v16;
    objc_msgSend_enumerateUsingBlock_(v10, v11, v15, v12);
  }

  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v13;
}

- (void)fontUpdatedForStyleClient:(id)client
{
  clientCopy = client;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_clearCachesForDocumentRoot_(MEMORY[0x277D80060], v4, self, v5);
  }
}

- (void)p_registerAllFormulasAfterImport
{
  v5 = objc_msgSend_accessController(self, a2, v2, v3);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_27609DCF0;
  v28[3] = &unk_27A6AF850;
  v28[4] = self;
  v9 = MEMORY[0x277C95D60](v28);
  if (v5)
  {
    v10 = objc_msgSend_accessController(self, v6, v7, v8);
    objc_msgSend_performWrite_blockPrimaryThread_(v10, v11, v9, 0);
  }

  else
  {
    v12 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], v6, v7, v8);
    v16 = objc_msgSend_designModeEnabled(v12, v13, v14, v15);

    if ((v16 & 1) == 0)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSADocumentRoot p_registerAllFormulasAfterImport]", v18);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 3044, 0, "access controller should only be nil while importing templates");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    }

    v9[2](v9);
  }
}

- (void)importerDidFinish:(id)finish
{
  objc_msgSend_p_registerAllFormulasAfterImport(self, a2, finish, v3);
  v29 = objc_msgSend_calculationEngine(self, v5, v6, v7);
  objc_msgSend_markDateTimeVolatileFunctionsAsDirtyForCurrentDateTime(v29, v8, v9, v10);
  v14 = objc_msgSend_previousLocaleIdentifier(self->_calculationEngine, v11, v12, v13);
  v18 = objc_msgSend_documentLocale(self, v15, v16, v17);
  v22 = objc_msgSend_localeIdentifier(v18, v19, v20, v21);
  isEqualToString = objc_msgSend_isEqualToString_(v14, v23, v22, v24);

  if ((isEqualToString & 1) == 0)
  {
    objc_msgSend_markLocaleVolatileFunctionsAsDirty(v29, v26, v27, v28);
  }
}

- (id)newExporterForType:(id)type options:(id)options preferredType:(id *)preferredType
{
  typeCopy = type;
  optionsCopy = options;
  v13 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], v10, v11, v12);
  v17 = objc_msgSend_compatibilityDelegate(v13, v14, v15, v16);
  v19 = objc_msgSend_exporterClassForType_options_(v17, v18, typeCopy, optionsCopy);

  if (!v19)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSADocumentRoot newExporterForType:options:preferredType:]", v22);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 3071, 0, "Can't find exporter class for type %@", typeCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
  }

  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = sub_27609C444;
  v79 = sub_27609C454;
  v80 = 0;
  v32 = objc_msgSend_documentRoot(self, v20, v21, v22);
  v36 = objc_msgSend_accessController(v32, v33, v34, v35);
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = sub_27609E5C4;
  v74[3] = &unk_27A6AFA30;
  v74[5] = &v75;
  v74[6] = v19;
  v74[4] = self;
  objc_msgSend_performRead_(v36, v37, v74, v38);

  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_setOptions_(v76[5], v39, optionsCopy, v40);
  }

  v41 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v39, *MEMORY[0x277D807C0], v40);
  isEqual = objc_msgSend_isEqual_(v41, v42, MEMORY[0x277CBEC38], v43);

  if (isEqual)
  {
    v47 = TSUProtocolCast();
    if (v47)
    {
      v48 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v45, *MEMORY[0x277D80798], v46, &unk_28854A568);
      v51 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v49, *MEMORY[0x277D80790], v50);
      objc_msgSend_setPassphrase_hint_(v47, v52, v48, v51);
    }

    else
    {
      v53 = MEMORY[0x277D81150];
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSADocumentRoot newExporterForType:options:preferredType:]", v46, &unk_28854A568);
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v56);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v58, v54, v57, 3089, 0, "Attempting to set a passphrase and hint on an exporter that doesn't conform to TSKEncryptedDocumentExporter");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v65 = objc_msgSend_documentSpecificTypeUTI(v76[5], v62, v63, v64);
    v66 = v65;
    if (v65)
    {
      v67 = v65;
    }

    else
    {
      v67 = typeCopy;
    }

    v68 = v67;
  }

  else
  {
    v68 = typeCopy;
  }

  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_setTypeUTI_(v76[5], v69, v68, v70);
  }

  if (preferredType)
  {
    v71 = v68;
    *preferredType = v68;
  }

  v72 = v76[5];

  _Block_object_dispose(&v75, 8);
  return v72;
}

- (BOOL)exportToPath:(id)path exporter:(id)exporter delegate:(id)delegate error:(id *)error
{
  pathCopy = path;
  exporterCopy = exporter;
  delegateCopy = delegate;
  objc_msgSend_pauseRecalculation(self, v13, v14, v15);
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_27609C444;
  v43 = sub_27609C454;
  v44 = 0;
  if (!exporterCopy)
  {
    v23 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  warnings = self->_warnings;
  self->_warnings = 0;

  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_willExportDocumentRoot_(exporterCopy, v17, self, v19);
  }

  v20 = objc_msgSend_accessController(self, v17, v18, v19);
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = sub_27609E8A8;
  v32 = &unk_27A6AFA58;
  selfCopy = self;
  v34 = pathCopy;
  v37 = &v45;
  v35 = exporterCopy;
  v36 = delegateCopy;
  v38 = &v39;
  objc_msgSend_performRead_(v20, v21, &v29, v22);

  v23 = *(v46 + 24);
  if (error)
  {
LABEL_7:
    if ((v23 & 1) == 0)
    {
      *error = v40[5];
    }
  }

LABEL_9:
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_didExportDocumentRoot_(exporterCopy, v24, self, v26);
  }

  objc_msgSend_resumeRecalculation(self, v24, v25, v26, v29, v30, v31, v32, selfCopy);
  v27 = *(v46 + 24);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  return v27;
}

- (void)addWarning:(id)warning
{
  warningCopy = warning;
  warnings = self->_warnings;
  v9 = warningCopy;
  if (!warnings)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v8 = self->_warnings;
    self->_warnings = v7;

    warnings = self->_warnings;
    warningCopy = v9;
  }

  objc_msgSend_addObject_(warnings, warningCopy, warningCopy, v5);
}

- (void)prepareForSavingAsTemplate
{
  if ((objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, v2, v3) & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSADocumentRoot prepareForSavingAsTemplate]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 3190, 0, "This operation must only be performed on the main thread.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v14, v15, v16);
  }

  objc_msgSend_willModify(self, v5, v6, v7);
  viewStateReference = self->_viewStateReference;
  self->_viewStateReference = 0;
}

- (void)insertTextPresetDisplayItemsPreservingGrouping:(id)grouping insertAtBeginningOfGroup:(BOOL)group
{
  groupCopy = group;
  v89 = *MEMORY[0x277D85DE8];
  groupingCopy = grouping;
  objc_msgSend_willModify(self, v6, v7, v8);
  v12 = objc_msgSend_theme(self, v9, v10, v11);
  v71 = *MEMORY[0x277D80B70];
  v15 = objc_msgSend_presetsOfKind_(v12, v13, *MEMORY[0x277D80B70], v14);
  v19 = objc_msgSend_count(v15, v16, v17, v18);

  if (v19)
  {
    v23 = objc_msgSend_theme(self, v20, v21, v22);
    v26 = objc_msgSend_presetsOfKind_(v23, v24, v71, v25);
    v30 = objc_msgSend_mutableCopy(v26, v27, v28, v29);

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = groupingCopy;
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v84, v88, 16);
    if (v35)
    {
      v36 = *v85;
      if (groupCopy)
      {
        v37 = 0;
      }

      else
      {
        v37 = 2;
      }

      v73 = !groupCopy;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v85 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v84 + 1) + 8 * i);
          v83 = 0;
          v82 = 0;
          v40 = objc_msgSend_name(v39, v32, v33, v34);
          v42 = objc_msgSend_p_parseNumberOutOfBasename_hasNumber_number_(self, v41, v40, &v83, &v82);

          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = sub_27609F13C;
          v78[3] = &unk_27A6AFA80;
          v78[4] = self;
          v43 = v42;
          v81 = v83;
          v79 = v43;
          v80 = v82;
          v45 = objc_msgSend_indexOfObjectWithOptions_passingTest_(v30, v44, v37, v78);
          if (v45 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v49 = objc_msgSend_protected_defaultTextPresetOrdering(self, v46, v47, v48);
            v55 = objc_msgSend_indexOfObject_(v49, v50, v43, v51);
            if (v55 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v56 = objc_msgSend_count(v30, v52, v53, v54);
            }

            else
            {
              v75[0] = MEMORY[0x277D85DD0];
              v75[1] = 3221225472;
              v75[2] = sub_27609F218;
              v75[3] = &unk_27A6AFAA8;
              v75[4] = self;
              v76 = v49;
              v77 = v55;
              v58 = objc_msgSend_indexOfObjectWithOptions_passingTest_(v30, v57, 2, v75);
              if (v58 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v56 = 0;
              }

              else
              {
                v56 = v58 + 1;
              }
            }

            objc_msgSend_insertObject_atIndex_(v30, v59, v39, v56);
          }

          else
          {
            objc_msgSend_insertObject_atIndex_(v30, v46, v39, v45 + v73);
          }
        }

        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v84, v88, 16);
      }

      while (v35);
    }

    v63 = objc_msgSend_theme(self, v60, v61, v62);
    objc_msgSend_setPresets_ofKind_(v63, v64, v30, v71);
  }

  else
  {
    v65 = objc_msgSend_copy(groupingCopy, v20, v21, v22);
    v69 = objc_msgSend_theme(self, v66, v67, v68);
    objc_msgSend_setPresets_ofKind_(v69, v70, v65, v71);
  }
}

- (id)p_parseNumberOutOfBasename:(id)basename hasNumber:(BOOL *)number number:(unint64_t *)a5
{
  basenameCopy = basename;
  *number = 0;
  v9 = objc_msgSend_rangeOfString_options_(basenameCopy, v8, @" ", 4);
  v12 = v9;
  if (v9 && v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = objc_msgSend_substringFromIndex_(basenameCopy, v10, &v10[v9], v11);
    v17 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v14, v15, v16);
    v23 = objc_msgSend_length(v13, v18, v19, v20);
    if (v23)
    {
      v24 = 0;
      while (1)
      {
        v25 = objc_msgSend_characterAtIndex_(v13, v21, v24, v22);
        if ((objc_msgSend_characterIsMember_(v17, v26, v25, v27) & 1) == 0)
        {
          break;
        }

        if (v23 == ++v24)
        {
          *number = 1;
          *a5 = objc_msgSend_intValue(v13, v21, v28, v22);
          v31 = objc_msgSend_substringToIndex_(basenameCopy, v29, v12, v30);

          goto LABEL_10;
        }
      }
    }

    *number = 0;
  }

  v31 = basenameCopy;
LABEL_10:

  return v31;
}

- (void)pUpgradeHyperlinks
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = objc_opt_class();
  v6 = objc_msgSend_modelEnumeratorForObjectsOfClass_(self, v4, v3, v5, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v13, v17, 16);
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_pUpgradeHyperlinksInStorage_(self, v8, *(*(&v13 + 1) + 8 * v12++), v9);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v13, v17, 16);
    }

    while (v10);
  }
}

- (void)performStylesheetUpdatesIfNecessaryForVersion:(unint64_t)version
{
  objc_msgSend_performHyperlinkUpgradesIfNecessaryForVersion_(self, a2, version, v3);

  MEMORY[0x2821F9670](self, sel_p_addCaptionShapeStyles, v5, v6);
}

- (void)performHyperlinkUpgradesIfNecessaryForVersion:(unint64_t)version
{
  if (*MEMORY[0x277D808A0] > version)
  {
    (MEMORY[0x2821F9670])(self, sel_pUpgradeHyperlinks, version);
  }
}

- (void)p_removeStyles:(id)styles
{
  v66 = *MEMORY[0x277D85DE8];
  stylesCopy = styles;
  v9 = objc_msgSend_setWithSet_(MEMORY[0x277D81268], v4, stylesCopy, v5);
  while (1)
  {
    v10 = objc_msgSend_set(MEMORY[0x277D81268], v6, v7, v8);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v11 = v9;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v60, v65, 16);
    if (v16)
    {
      v17 = *v61;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v61 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v19 = *(*(&v60 + 1) + 8 * i);
          v20 = objc_msgSend_children(v19, v13, v14, v15);
          v24 = v20;
          if (!v20 || !objc_msgSend_count(v20, v21, v22, v23))
          {
            objc_msgSend_addObject_(v10, v21, v19, v23);
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v60, v65, 16);
      }

      while (v16);
    }

    if (!objc_msgSend_count(v10, v25, v26, v27))
    {
      break;
    }

    objc_msgSend_minusSet_(v11, v28, v10, v29);
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v30 = v10;
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v56, v64, 16);
    if (v35)
    {
      v36 = *v57;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v57 != v36)
          {
            objc_enumerationMutation(v30);
          }

          v38 = *(*(&v56 + 1) + 8 * j);
          v39 = objc_msgSend_stylesheet(v38, v32, v33, v34);
          objc_msgSend_removeStyle_(v39, v40, v38, v41);
        }

        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v56, v64, 16);
      }

      while (v35);
    }
  }

  if (objc_msgSend_count(v11, v42, v43, v44))
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSADocumentRoot p_removeStyles:]", v46);
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v50);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v52, v48, v51, 3407, 0, "Could not remove all requested styles.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55);
  }
}

- (void)p_replaceStyles:(id)styles andChildrenWithVariationOfStyle:(id)style
{
  v65 = *MEMORY[0x277D85DE8];
  stylesCopy = styles;
  styleCopy = style;
  v9 = objc_msgSend_set(MEMORY[0x277D81268], v6, v7, v8);
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = stylesCopy;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v60, v64, 16);
  if (v11)
  {
    v12 = *v61;
    do
    {
      v13 = 0;
      do
      {
        if (*v61 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v60 + 1) + 8 * v13);
        v15 = objc_opt_class();
        if (v15 != objc_opt_class())
        {
          v18 = MEMORY[0x277D81150];
          v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSADocumentRoot p_replaceStyles:andChildrenWithVariationOfStyle:]", v17);
          v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v21);
          v23 = TSUObjectReferenceDescription();
          v24 = TSUObjectReferenceDescription();
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v19, v22, 3421, 0, "Replaceable root style %@ is a different class than new parent %@", v23, v24);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
        }

        objc_msgSend_addObject_(v9, v16, v14, v17);
        v34 = objc_msgSend_children(v14, v29, v30, v31);
        if (v34)
        {
          objc_msgSend_unionSet_(v9, v32, v34, v33);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v60, v64, 16);
    }

    while (v11);
  }

  v39 = objc_msgSend_set(MEMORY[0x277D81268], v36, v37, v38);
  v42 = objc_msgSend_modelEnumeratorWithFlags_(self, v40, 2, v41);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = sub_27609FCC4;
  v55[3] = &unk_27A6AFAF8;
  v43 = v9;
  v56 = v43;
  selfCopy = self;
  v44 = styleCopy;
  v58 = v44;
  v45 = v39;
  v59 = v45;
  objc_msgSend_enumerateStyleClientsUsingBlock_(v42, v46, v55, v47);

  objc_msgSend_minusSet_(v43, v48, v45, v49);
  objc_msgSend_p_removeStyles_(self, v50, v43, v51);
}

- (void)p_replaceStyle:(id)style andChildrenWithVariationOfStyle:(id)ofStyle
{
  ofStyleCopy = ofStyle;
  v8 = objc_msgSend_setWithObject_(MEMORY[0x277D81310], v6, style, v7);
  objc_msgSend_p_replaceStyles_andChildrenWithVariationOfStyle_(self, v9, v8, ofStyleCopy);
}

- (void)enumerateStylesheetsUsingBlock:(id)block
{
  blockCopy = block;
  v25 = 0;
  v8 = objc_msgSend_stylesheet(self, v5, v6, v7);
  blockCopy[2](blockCopy, v8, &v25);

  if ((v25 & 1) == 0)
  {
    v12 = objc_msgSend_theme(self, v9, v10, v11);
    v16 = objc_msgSend_legacyStylesheet(v12, v13, v14, v15);

    if (v16)
    {
      v20 = objc_msgSend_theme(self, v17, v18, v19);
      v24 = objc_msgSend_legacyStylesheet(v20, v21, v22, v23);
      blockCopy[2](blockCopy, v24, &v25);
    }
  }
}

- (void)p_cleanupColumnStyles
{
  v5 = objc_msgSend_theme(self, a2, v2, v3);
  v42 = objc_msgSend_defaultColumnStyle(v5, v6, v7, v8);

  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10, v11);
  v16 = objc_msgSend_stylesheet(self, v13, v14, v15);
  v17 = objc_opt_class();
  v20 = objc_msgSend_stylesOfClass_(v16, v18, v17, v19);
  objc_msgSend_addObjectsFromArray_(v12, v21, v20, v22);

  v26 = objc_msgSend_theme(self, v23, v24, v25);
  v30 = objc_msgSend_legacyStylesheet(v26, v27, v28, v29);
  v31 = objc_opt_class();
  v34 = objc_msgSend_stylesOfClass_(v30, v32, v31, v33);
  objc_msgSend_addObjectsFromArray_(v12, v35, v34, v36);

  v37 = objc_alloc(MEMORY[0x277D81310]);
  v40 = objc_msgSend_initWithArray_(v37, v38, v12, v39);
  objc_msgSend_p_replaceStyles_andChildrenWithVariationOfStyle_(self, v41, v40, v42);
}

- (void)upgradeTextStylesForUnityBeforeSingleStylesheetUpgrade
{
  objc_msgSend_hasPreUFFVersion(self, a2, v2, v3);
  v63 = objc_msgSend_theme(self, v5, v6, v7);
  v11 = objc_msgSend_legacyStylesheet(v63, v8, v9, v10);
  objc_msgSend_isLocked(v11, v12, v13, v14);

  v64 = objc_msgSend_theme(self, v15, v16, v17);
  v21 = objc_msgSend_legacyStylesheet(v64, v18, v19, v20);
  objc_msgSend_setIsLocked_(v21, v22, 0, v23);

  v65 = objc_msgSend_theme(self, v24, v25, v26);
  v30 = objc_msgSend_legacyStylesheet(v65, v27, v28, v29);
  v34 = objc_msgSend_defaultParagraphStyle(v30, v31, v32, v33);

  v38 = objc_msgSend_theme(self, v35, v36, v37);
  v42 = objc_msgSend_legacyStylesheet(v38, v39, v40, v41);
  v66 = objc_msgSend_defaultParagraphStyle(v42, v43, v44, v45);

  if (!v66)
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[TSADocumentRoot upgradeTextStylesForUnityBeforeSingleStylesheetUpgrade]", v48);
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v52);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v54, v50, v53, 3524, 0, "invalid nil value for '%{public}s'", "themeDefaultParagraphStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57);
  }

  v58 = objc_msgSend_stylesheet(self, v46, v47, v48);
  v62 = objc_msgSend_defaultParagraphStyle(v58, v59, v60, v61);

  if (v62 && v62 != v66)
  {
    objc_msgSend_p_replaceStyle_andChildrenWithVariationOfStyle_(self, v66, v62, v66);
  }
}

- (void)upgradeTextStylesForUnityAfterSingleStylesheetUpgrade
{
  v333[2] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_theme(self, a2, v2, v3);
  v282 = objc_msgSend_defaultParagraphStyle(v4, v5, v6, v7);

  v11 = objc_msgSend_stylesheet(self, v8, v9, v10);
  v14 = objc_msgSend_cascadedStyleWithIdentifier_(v11, v12, *MEMORY[0x277D81020], v13);

  v273 = v14;
  if (v14)
  {
    objc_msgSend_p_replaceStyle_andChildrenWithVariationOfStyle_(self, v15, v14, v282);
  }

  v16 = *MEMORY[0x277D81048];
  v17 = *MEMORY[0x277D81008];
  v332[0] = *MEMORY[0x277D81010];
  v332[1] = v17;
  v18 = *MEMORY[0x277D81040];
  v333[0] = v16;
  v333[1] = v18;
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v333, v332, 2);
  v327[0] = MEMORY[0x277D85DD0];
  v327[1] = 3221225472;
  v327[2] = sub_2760A1578;
  v327[3] = &unk_27A6AFB20;
  v327[4] = self;
  v274 = v19;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v19, v20, v327, v21);
  v25 = objc_msgSend_stylesheet(self, v22, v23, v24);
  v28 = objc_msgSend_cascadedStyleWithIdentifier_(v25, v26, *MEMORY[0x277D81038], v27);

  if (!v28)
  {
    v32 = objc_msgSend_theme(self, v29, v30, v31);
    v28 = objc_msgSend_defaultCharacterStyle(v32, v33, v34, v35);
  }

  v284 = v28;
  isNamed = objc_msgSend_isNamed(v28, v29, v30, v31);
  selfCopy2 = self;
  if ((isNamed & 1) == 0)
  {
    v41 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v37, v38, v39);
    v43 = objc_msgSend_localizedStringForKey_value_table_(v41, v42, @"None Character Style", @"None", @"TSApplication");
    objc_msgSend_setName_(v28, v44, v43, v45);

    selfCopy2 = self;
  }

  v46 = objc_msgSend_theme(selfCopy2, v37, v38, v39);
  v47 = *MEMORY[0x277D80B00];
  v50 = objc_msgSend_presetsOfKind_(v46, v48, *MEMORY[0x277D80B00], v49);
  v53 = objc_msgSend_containsObject_(v50, v51, v284, v52);

  if ((v53 & 1) == 0)
  {
    v57 = objc_msgSend_theme(self, v54, v55, v56);
    objc_msgSend_insertPreset_ofKind_atIndex_(v57, v58, v284, v47, 0);
  }

  v59 = objc_msgSend_stylesheet(self, v54, v55, v56);
  v279 = objc_msgSend_cascadedStyleWithIdentifier_(v59, v60, @"character-style-default", v61);

  v64 = v279;
  if (v279)
  {
    objc_msgSend_p_replaceStyle_andChildrenWithVariationOfStyle_(self, v62, v279, v284);
  }

  v65 = objc_msgSend_stylesheet(self, v62, v64, v63);
  v68 = objc_msgSend_cascadedStyleWithIdentifier_(v65, v66, v16, v67);

  if (!v68)
  {
    v72 = objc_msgSend_theme(self, v69, v70, v71);
    v76 = objc_msgSend_hyperlinkStyle(v72, v73, v74, v75);

    v68 = v76;
  }

  v283 = v68;
  v77 = objc_msgSend_isNamed(v68, v69, v70, v71);
  selfCopy4 = self;
  if ((v77 & 1) == 0)
  {
    v82 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v78, v79, v80);
    v84 = objc_msgSend_localizedStringForKey_value_table_(v82, v83, @"Link", &stru_288512028, @"TSApplication");
    objc_msgSend_setName_(v283, v85, v84, v86);

    selfCopy4 = self;
  }

  v87 = objc_msgSend_theme(selfCopy4, v78, v79, v80);
  v90 = objc_msgSend_presetsOfKind_(v87, v88, v47, v89);
  v93 = objc_msgSend_containsObject_(v90, v91, v283, v92);

  if ((v93 & 1) == 0)
  {
    v97 = objc_msgSend_theme(self, v94, v95, v96);
    objc_msgSend_insertPreset_ofKind_atIndex_(v97, v98, v283, v47, 1);
  }

  v99 = objc_msgSend_set(MEMORY[0x277D81268], v94, v95, v96);
  v324[0] = MEMORY[0x277D85DD0];
  v324[1] = 3221225472;
  v324[2] = sub_2760A18D0;
  v324[3] = &unk_27A6AFB90;
  v326 = &unk_28850F610;
  v100 = v99;
  v325 = v100;
  v272 = v100;
  objc_msgSend_enumerateStylesheetsUsingBlock_(self, v101, v324, v102);
  v278 = objc_msgSend_copy(v100, v103, v104, v105);
  if (objc_msgSend_count(v278, v106, v107, v108))
  {
    objc_msgSend_p_replaceStyles_andChildrenWithVariationOfStyle_(self, v109, v278, v284);
  }

  v112 = objc_msgSend_theme(self, v109, v110, v111);
  v276 = objc_msgSend_defaultListStyle(v112, v113, v114, v115);

  v119 = objc_msgSend_set(MEMORY[0x277D81268], v116, v117, v118);
  v322[0] = MEMORY[0x277D85DD0];
  v322[1] = 3221225472;
  v322[2] = sub_2760A1A50;
  v322[3] = &unk_27A6AFBB8;
  v280 = v276;
  v323 = v280;
  v120 = MEMORY[0x277C95D60](v322);
  v319[0] = MEMORY[0x277D85DD0];
  v319[1] = 3221225472;
  v319[2] = sub_2760A1AE0;
  v319[3] = &unk_27A6AFB90;
  v275 = v120;
  v321 = v275;
  v121 = v119;
  v320 = v121;
  selfCopy6 = self;
  v281 = v121;
  objc_msgSend_enumerateStylesheetsUsingBlock_(self, v123, v319, v124);
  if (objc_msgSend_count(v121, v125, v126, v127))
  {
    v130 = objc_msgSend_modelEnumeratorWithFlags_(self, v128, 2, v129);
    v316[0] = MEMORY[0x277D85DD0];
    v316[1] = 3221225472;
    v316[2] = sub_2760A1C60;
    v316[3] = &unk_27A6AFC30;
    v131 = v281;
    v317 = v131;
    v318 = v280;
    objc_msgSend_enumerateStyleClientsUsingBlock_(v130, v132, v316, v133);

    v314 = 0u;
    v315 = 0u;
    v312 = 0u;
    v313 = 0u;
    v134 = v131;
    v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(v134, v135, &v312, v331, 16);
    if (v139)
    {
      v140 = *v313;
      do
      {
        for (i = 0; i != v139; ++i)
        {
          if (*v313 != v140)
          {
            objc_enumerationMutation(v134);
          }

          v142 = *(*(&v312 + 1) + 8 * i);
          v143 = objc_msgSend_stylesheet(v142, v136, v137, v138);
          objc_msgSend_removeStyle_(v143, v144, v142, v145);
        }

        v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(v134, v136, &v312, v331, 16);
      }

      while (v139);
    }

    selfCopy6 = self;
  }

  v311[0] = MEMORY[0x277D85DD0];
  v311[1] = 3221225472;
  v311[2] = sub_2760A1DD0;
  v311[3] = &unk_27A6AFC80;
  v311[4] = selfCopy6;
  objc_msgSend_enumerateStylesheetsUsingBlock_(selfCopy6, v128, v311, v129);
  v309[0] = 0;
  v309[1] = v309;
  v309[2] = 0x2020000000;
  v310 = 0;
  v308[0] = MEMORY[0x277D85DD0];
  v308[1] = 3221225472;
  v308[2] = sub_2760A2230;
  v308[3] = &unk_27A6AFCD0;
  v308[4] = v309;
  objc_msgSend_enumerateStylesheetsUsingBlock_(selfCopy6, v146, v308, v147);
  v151 = objc_msgSend_theme(selfCopy6, v148, v149, v150);
  v271 = *MEMORY[0x277D80BB0];
  hasPresetsOfKind = objc_msgSend_hasPresetsOfKind_(v151, v152, *MEMORY[0x277D80BB0], v153);

  if (hasPresetsOfKind)
  {
    v158 = objc_msgSend_theme(self, v155, v156, v157);
    obj = objc_msgSend_presetsOfKind_(v158, v159, v271, v160);

    v164 = objc_msgSend_theme(self, v161, v162, v163);
    v270 = *MEMORY[0x277D80B48];
    v167 = objc_msgSend_hasPresetsOfKind_(v164, v165, *MEMORY[0x277D80B48], v166);

    if (v167)
    {
      v171 = objc_msgSend_theme(self, v168, v169, v170);
      v174 = objc_msgSend_presetsOfKind_(v171, v172, v270, v173);
      v177 = objc_msgSend_arrayByAddingObjectsFromArray_(obj, v175, v174, v176);

      obj = v177;
    }

    v288 = objc_alloc_init(MEMORY[0x277D812B8]);
    v306 = 0u;
    v307 = 0u;
    v304 = 0u;
    v305 = 0u;
    obja = obj;
    v182 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v178, &v304, v330, 16);
    if (v182)
    {
      v183 = *v305;
      do
      {
        for (j = 0; j != v182; ++j)
        {
          if (*v305 != v183)
          {
            objc_enumerationMutation(obja);
          }

          v185 = *(*(&v304 + 1) + 8 * j);
          v186 = objc_msgSend_listStyle(v185, v179, v180, v181);
          v190 = objc_msgSend_paragraphStyle(v185, v187, v188, v189);
          objc_msgSend_setObject_forUncopiedKey_(v288, v191, v186, v190);
        }

        v182 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v179, &v304, v330, 16);
      }

      while (v182);
    }

    v298[0] = MEMORY[0x277D85DD0];
    v298[1] = 3221225472;
    v298[2] = sub_2760A239C;
    v298[3] = &unk_27A6AFD48;
    v269 = v288;
    v299 = v269;
    v300 = v281;
    v301 = v280;
    selfCopy7 = self;
    v303 = v282;
    objc_msgSend_enumerateStylesheetsUsingBlock_(self, v192, v298, v193);
    v277 = objc_msgSend_upgradeState(self, v194, v195, v196);
    v289 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v197, v198, v199);
    v296 = 0u;
    v297 = 0u;
    v294 = 0u;
    v295 = 0u;
    v202 = objc_msgSend_objectForKeyedSubscript_(v277, v200, @"TSAUpgradeInfoTextPresetNames", v201);
    v207 = objc_msgSend_countByEnumeratingWithState_objects_count_(v202, v203, &v294, v329, 16);
    if (v207)
    {
      v208 = *v295;
      do
      {
        for (k = 0; k != v207; ++k)
        {
          if (*v295 != v208)
          {
            objc_enumerationMutation(v202);
          }

          v210 = *(*(&v294 + 1) + 8 * k);
          v211 = objc_msgSend_displayName(v210, v204, v205, v206, v269);
          objc_msgSend_setObject_forKey_(v289, v212, v210, v211);
        }

        v207 = objc_msgSend_countByEnumeratingWithState_objects_count_(v202, v204, &v294, v329, 16);
      }

      while (v207);
    }

    v213 = MEMORY[0x277CBEB98];
    v217 = objc_msgSend_allValues(v289, v214, v215, v216);
    v220 = objc_msgSend_setWithArray_(v213, v218, v217, v219);

    v292 = 0u;
    v293 = 0u;
    v290 = 0u;
    v291 = 0u;
    v223 = objc_msgSend_objectForKeyedSubscript_(v277, v221, @"TSAUpgradeInfoTextPresetNames", v222);
    v227 = objc_msgSend_countByEnumeratingWithState_objects_count_(v223, v224, &v290, v328, 16);
    if (v227)
    {
      v228 = *v291;
      v229 = *MEMORY[0x277D80B70];
      do
      {
        for (m = 0; m != v227; ++m)
        {
          if (*v291 != v228)
          {
            objc_enumerationMutation(v223);
          }

          v231 = *(*(&v290 + 1) + 8 * m);
          if (objc_msgSend_containsObject_(v220, v225, v231, v226, v269))
          {
            v233 = objc_msgSend_preset(v231, v225, v232, v226);
            v237 = objc_msgSend_paragraphStyle(v233, v234, v235, v236);
            v241 = objc_msgSend_displayName(v231, v238, v239, v240);
            objc_msgSend_setName_(v237, v242, v241, v243);

            v247 = objc_msgSend_theme(self, v244, v245, v246);
            v251 = objc_msgSend_preset(v231, v248, v249, v250);
            v255 = objc_msgSend_paragraphStyle(v251, v252, v253, v254);
            objc_msgSend_addPreset_ofKind_(v247, v256, v255, v229);
          }
        }

        v227 = objc_msgSend_countByEnumeratingWithState_objects_count_(v223, v225, &v290, v328, 16);
      }

      while (v227);
    }

    objc_msgSend_removeObjectForKey_(v277, v257, @"TSAUpgradeInfoTextPresetNames", v258);
    v262 = objc_msgSend_theme(self, v259, v260, v261);
    objc_msgSend_setPresets_ofKind_(v262, v263, 0, v271);

    v267 = objc_msgSend_theme(self, v264, v265, v266);
    objc_msgSend_setPresets_ofKind_(v267, v268, 0, v270);
  }

  _Block_object_dispose(v309, 8);
}

- (void)upgradeTextStylesForUnityPlusFromFileFormatVersion:(unint64_t)version
{
  if (version >= 0x1000100000001)
  {
    if (version != 0x1000100000001)
    {
      if (version > 0x2000300000002)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v6 = objc_msgSend_theme(self, a2, version, v3);
    v10 = objc_msgSend_defaultParagraphStyle(v6, v7, v8, v9);

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_2760A2A90;
    v25[3] = &unk_27A6AFC80;
    v26 = v10;
    v11 = v10;
    objc_msgSend_enumerateStylesheetsUsingBlock_(self, v12, v25, v13);
  }

  v14 = objc_msgSend_tsa_sharedPropertiesProvider(TSABaseApplicationDelegate, a2, version, v3);
  fixed = objc_msgSend_fixWPKindsForTOCObjects(v14, v15, v16, v17);

  if (fixed)
  {
    v19 = objc_opt_class();
    v22 = objc_msgSend_modelEnumeratorForObjectsOfClass_(self, v20, v19, v21);
    objc_msgSend_enumerateUsingBlock_(v22, v23, &unk_28850F630, v24);
  }

LABEL_7:
  objc_msgSend_enumerateStylesheetsUsingBlock_(self, a2, &unk_28850F650, v3);
LABEL_8:
  if (*MEMORY[0x277D80968] > version)
  {
    objc_msgSend_p_cleanupColumnStyles(self, a2, version, v3);
  }
}

- (void)upgradeTextboxPresets
{
  v112 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_theme(self, a2, v2, v3);
  v6 = *MEMORY[0x277D80BB8];
  v9 = objc_msgSend_presetsOfKind_(v5, v7, *MEMORY[0x277D80BB8], v8);

  v85 = v9;
  if (objc_msgSend_count(v9, v10, v11, v12) >= 2)
  {
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v13 = v9;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v104, v111, 16);
    v16 = v15;
    if (v15)
    {
      v17 = *v105;
LABEL_4:
      v18 = 0;
      while (1)
      {
        if (*v105 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v104 + 1) + 8 * v18);
        v15 = sub_2760A3500(v15, v19);
        if (v15)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, &v104, v111, 16);
          v16 = v15;
          if (v15)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v84 = v19;

      if (v84)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:
    }

    v84 = objc_msgSend_objectAtIndexedSubscript_(v13, v21, 0, v22);
LABEL_13:
    v83 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v23 = objc_opt_class();
    v26 = objc_msgSend_modelEnumeratorForObjectsOfClass_(self, v24, v23, v25);
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = sub_2760A3620;
    v98[3] = &unk_27A6AFE18;
    v27 = v84;
    v99 = v27;
    v28 = v13;
    v103 = &unk_28850F690;
    v100 = v28;
    selfCopy = self;
    v29 = v83;
    v102 = v29;
    objc_msgSend_enumerateUsingBlock_(v26, v30, v98, v31);

    if (objc_msgSend_count(v29, v32, v33, v34))
    {
      v38 = objc_msgSend_theme(self, v35, v36, v37);
      v39 = *MEMORY[0x277D80B88];
      v42 = objc_msgSend_presetsOfKind_(v38, v40, *MEMORY[0x277D80B88], v41);
      v46 = objc_msgSend_mutableCopy(v42, v43, v44, v45);

      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = sub_2760A3754;
      v94[3] = &unk_27A6AFE40;
      v95 = v29;
      selfCopy2 = self;
      v47 = v46;
      v97 = v47;
      objc_msgSend_enumerateObjectsUsingBlock_(v28, v48, v94, v49);
      v53 = objc_msgSend_theme(self, v50, v51, v52);
      objc_msgSend_setPresets_ofKind_(v53, v54, v47, v39);
    }

    v55 = objc_msgSend_theme(self, v35, v36, v37);
    v110 = v27;
    v57 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v56, &v110, 1);
    objc_msgSend_setPresets_ofKind_(v55, v58, v57, v6);

    v59 = objc_alloc(MEMORY[0x277CBEB58]);
    v62 = objc_msgSend_initWithArray_(v59, v60, v28, v61);
    objc_msgSend_removeObject_(v62, v63, v27, v64);
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v65 = v29;
    v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v66, &v90, v109, 16);
    if (v69)
    {
      v70 = *v91;
      do
      {
        for (i = 0; i != v69; ++i)
        {
          if (*v91 != v70)
          {
            objc_enumerationMutation(v65);
          }

          objc_msgSend_removeObject_(v62, v67, *(*(&v90 + 1) + 8 * i), v68);
        }

        v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v67, &v90, v109, 16);
      }

      while (v69);
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v72 = v62;
    v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v73, &v86, v108, 16);
    if (v77)
    {
      v78 = *v87;
      do
      {
        for (j = 0; j != v77; ++j)
        {
          if (*v87 != v78)
          {
            objc_enumerationMutation(v72);
          }

          v80 = *(*(&v86 + 1) + 8 * j);
          v81 = objc_msgSend_stylesheet(self, v74, v75, v76);
          objc_msgSend_setIdentifier_ofStyle_(v81, v82, 0, v80);
        }

        v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v74, &v86, v108, 16);
      }

      while (v77);
    }
  }
}

- (void)upgradeCellStyles
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2, v3);
  v9 = objc_msgSend_stylesheet(self, v6, v7, v8);
  v10 = objc_opt_class();
  v13 = objc_msgSend_stylesOfClass_(v9, v11, v10, v12);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_2760A3B04;
  v33[3] = &unk_27A6AFE68;
  v14 = v5;
  v34 = v14;
  objc_msgSend_enumerateObjectsUsingBlock_(v13, v15, v33, v16);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = v14;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v29, v35, 16);
  if (v22)
  {
    v23 = *v30;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v17);
        }

        v25 = *(*(&v29 + 1) + 8 * i);
        v26 = objc_msgSend_stylesheet(v25, v19, v20, v21, v29);
        objc_msgSend_removeStyle_(v26, v27, v25, v28);
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v29, v35, 16);
    }

    while (v22);
  }
}

- (void)upgradeToSingleStylesheet
{
  v64 = objc_msgSend_stylesheet(self, a2, v2, v3);
  v11 = objc_msgSend_parent(v64, v5, v6, v7);
  if (v11)
  {
    v12 = objc_msgSend_stylesheet(self, v8, v9, v10);
    v16 = objc_msgSend_parent(v12, v13, v14, v15);
    v20 = objc_msgSend_theme(self, v17, v18, v19);
    v24 = objc_msgSend_legacyStylesheet(v20, v21, v22, v23);

    if (v16 == v24)
    {
      v28 = objc_msgSend_theme(self, v25, v26, v27);
      v32 = objc_msgSend_legacyStylesheet(v28, v29, v30, v31);
      objc_msgSend_setIsLocked_(v32, v33, 0, v34);

      v38 = objc_msgSend_stylesheet(self, v35, v36, v37);
      v42 = objc_msgSend_theme(self, v39, v40, v41);
      v46 = objc_msgSend_legacyStylesheet(v42, v43, v44, v45);

      objc_msgSend_moveAllStylesToStylesheet_stripIdentifiers_(v38, v47, v46, 0);
      v50 = objc_msgSend_modelEnumeratorWithFlags_(self, v48, 2, v49);
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = sub_2760A3E44;
      v65[3] = &unk_27A6AFE90;
      v51 = v46;
      v66 = v51;
      objc_msgSend_enumerateUsingBlock_(v50, v52, v65, v53);

      objc_msgSend_setParent_(v38, v54, 0, v55);
      objc_msgSend_setStylesheetForUpgradeToSingleStylesheet_(self, v56, v51, v57);
      v61 = objc_msgSend_theme(self, v58, v59, v60);
      objc_msgSend_setLegacyStylesheet_(v61, v62, 0, v63);
    }
  }

  else
  {
  }
}

- (void)removeRedundantStyleOverridesAndEnsureReferencedStylesAreInStylesheetWithFileFormatVersion:(unint64_t)version
{
  v154 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_stylesheet(self, a2, version, v3);
  v8 = objc_msgSend_parent(v4, v5, v6, v7);

  if (v8)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSADocumentRoot removeRedundantStyleOverridesAndEnsureReferencedStylesAreInStylesheetWithFileFormatVersion:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 4107, 0, "Invalid parameter not satisfying: %{public}s", "self.stylesheet.parent == nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v96 = objc_msgSend_set(MEMORY[0x277D81268], v9, v10, v11);
  v149 = 0;
  v150 = &v149;
  v151 = 0x2020000000;
  v152 = 1;
  v143 = 0;
  v144 = &v143;
  v145 = 0x3032000000;
  v146 = sub_27609C444;
  v147 = sub_27609C454;
  v148 = objc_msgSend_stylesheet(self, v21, v22, v23);
  v141[0] = 0;
  v141[1] = v141;
  v141[2] = 0x3032000000;
  v141[3] = sub_27609C444;
  v141[4] = sub_27609C454;
  v142 = 0;
  v136 = 0;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v140 = 0;
  v131 = 0;
  v132 = &v131;
  v133 = 0x3042000000;
  v134 = sub_2760A4760;
  v135 = sub_2760A476C;
  v125 = 0;
  v126 = &v125;
  v127 = 0x3032000000;
  v128 = sub_2760A4774;
  v129 = sub_2760A47A0;
  v130 = 0;
  v117[0] = MEMORY[0x277D85DD0];
  v117[1] = 3221225472;
  v117[2] = sub_2760A47A8;
  v117[3] = &unk_27A6AFF00;
  versionCopy = version;
  v119 = &v137;
  v117[4] = self;
  v24 = v96;
  v118 = v24;
  v120 = &v131;
  v121 = &v143;
  v122 = &v149;
  v123 = v141;
  v25 = MEMORY[0x277C95D60](v117);
  v26 = v126[5];
  v126[5] = v25;

  objc_storeWeak(v132 + 5, v25);
  v113[0] = MEMORY[0x277D85DD0];
  v113[1] = 3221225472;
  v113[2] = sub_2760A52C0;
  v113[3] = &unk_27A6AFF50;
  v115 = &v125;
  v100 = v24;
  v114 = v100;
  v116 = &v149;
  v99 = MEMORY[0x277C95D60](v113);
  v107 = 0;
  v108 = &v107;
  v109 = 0x3042000000;
  v110 = sub_2760A4760;
  v111 = sub_2760A476C;
  v112 = 0;
  v106[0] = MEMORY[0x277D85DD0];
  v106[1] = 3221225472;
  v106[2] = sub_2760A5460;
  v106[3] = &unk_27A6AFFA0;
  v106[4] = &v107;
  v106[5] = &v125;
  v106[6] = &v143;
  v27 = MEMORY[0x277C95D60](v106);
  objc_storeWeak(v108 + 5, v27);
  v31 = v150 + 3;
  if (*(v150 + 24) == 1)
  {
    do
    {
      *v31 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v32 = objc_msgSend_styles(v144[5], v28, v29, v30);
      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v102, v153, 16);
      if (!v37)
      {
        goto LABEL_23;
      }

      v38 = *v103;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v103 != v38)
          {
            objc_enumerationMutation(v32);
          }

          v40 = *(*(&v102 + 1) + 8 * i);
          v41 = objc_msgSend_parent(v40, v34, v35, v36);
          v42 = v41 == 0;

          if (!v42)
          {
            v46 = objc_msgSend_overridePropertyMap(v40, v43, v44, v45);
            if (objc_msgSend_isVariation(v40, v47, v48, v49))
            {
              v53 = objc_msgSend_name(v40, v50, v51, v52);
              v54 = v53 == 0;

              if (!v54)
              {
                objc_msgSend_willModifyForUpgrade(v40, v55, v56, v57);
                objc_msgSend_setName_(v40, v58, 0, v59);
              }
            }

            v60 = (*(v126[5] + 16))();
            v61 = v60 == v40;

            if (!v61)
            {

              continue;
            }

            v65 = objc_msgSend_count(v46, v62, v63, v64);
            v69 = objc_msgSend_parent(v40, v66, v67, v68);
            v73 = objc_msgSend_propertyMap(v69, v70, v71, v72);
            objc_msgSend_minusPropertyMap_(v46, v74, v73, v75);

            v81 = objc_msgSend_count(v46, v76, v77, v78);
            if (v81 < v65)
            {
              objc_msgSend_setOverridePropertyMap_(v40, v79, v46, v80);
              *(v150 + 24) = 1;
            }

            if (!v81)
            {
              objc_msgSend_addObject_(v100, v79, v40, v80);
            }
          }

          (v27)[2](v27, v40);
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v102, v153, 16);
      }

      while (v37);
LABEL_23:

      if (objc_msgSend_count(v100, v82, v83, v84))
      {
        v85 = objc_msgSend_styles(v144[5], v28, v29, v30);
        objc_msgSend_enumerateObjectsUsingBlock_(v85, v86, v99, v87);
      }

      v31 = v150 + 3;
    }

    while ((v150[3] & 1) != 0);
  }

  if (objc_msgSend_count(v100, v28, v29, v30))
  {
    v90 = objc_msgSend_modelEnumeratorWithFlags_(self, v88, 2, v89);
    objc_msgSend_enumerateStyleClientsUsingBlock_(v90, v91, v99, v92);
  }

  if (*(v138 + 24) == 1)
  {
    v93 = objc_msgSend_modelEnumeratorWithFlags_(self, v88, 2, v89);
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = sub_2760A5694;
    v101[3] = &unk_27A6AFFC0;
    v101[4] = version;
    objc_msgSend_enumerateModelAndReferencedStylesUsingBlock_(v93, v94, v101, v95);
  }

  _Block_object_dispose(&v107, 8);
  objc_destroyWeak(&v112);

  _Block_object_dispose(&v125, 8);
  _Block_object_dispose(&v131, 8);
  objc_destroyWeak(&v136);
  _Block_object_dispose(&v137, 8);
  _Block_object_dispose(v141, 8);

  _Block_object_dispose(&v143, 8);
  _Block_object_dispose(&v149, 8);
}

- (void)upgradeToFixNonVariationChildStylesWithFileFormatVersion:(unint64_t)version
{
  v42 = *MEMORY[0x277D85DE8];
  v36 = objc_msgSend_stylesheet(self, a2, version, v3);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = objc_msgSend_styles(v36, v5, v6, v7);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v37, v41, 16);
  if (v13)
  {
    v14 = *v38;
    v15 = *MEMORY[0x277D80970];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v17 = *(*(&v37 + 1) + 8 * i);
        v18 = objc_msgSend_parent(v17, v10, v11, v12);
        if (v18)
        {
          isVariation = objc_msgSend_isVariation(v17, v10, v11, v12);

          if ((isVariation & 1) == 0)
          {
            if (v15 < version)
            {
              v20 = MEMORY[0x277D81150];
              v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSADocumentRoot upgradeToFixNonVariationChildStylesWithFileFormatVersion:]", v12);
              v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v23);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 4399, 0, "found a non-variation style with a non-nil parent in a document with version %llx, but we eliminated such styles in version %llx", version, v15);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
            }

            objc_msgSend_willModifyForUpgrade(v17, v10, v11, v12);
            v33 = objc_msgSend_propertyMap(v17, v29, v30, v31);
            if (v33)
            {
              objc_msgSend_setParent_ofStyle_(v36, v32, 0, v17);
              objc_msgSend_setOverridePropertyMap_(v17, v34, v33, v35);
            }
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v37, v41, 16);
    }

    while (v13);
  }
}

- (void)p_addCaptionShapeStyles
{
  v121 = objc_msgSend_stylesheet(self, a2, v2, v3);
  v8 = objc_msgSend_theme(self, v5, v6, v7);
  v11 = objc_msgSend_presetsOfKind_(v8, v9, *MEMORY[0x277D80AF8], v10);

  objc_opt_class();
  v15 = objc_msgSend_firstObject(v11, v12, v13, v14);
  v120 = TSUCheckedDynamicCast();

  objc_opt_class();
  v19 = objc_msgSend_lastObject(v11, v16, v17, v18);
  v20 = TSUCheckedDynamicCast();

  v21 = MEMORY[0x277D80AB8];
  v25 = objc_msgSend_emptyStroke(MEMORY[0x277D803C0], v22, v23, v24);
  v28 = objc_msgSend_defaultValueForProperty_(MEMORY[0x277D803B8], v26, 516, v27);
  v32 = objc_msgSend_defaultDisabledShadow(MEMORY[0x277D803A8], v29, v30, v31);
  v36 = objc_msgSend_null(MEMORY[0x277CBEB68], v33, v34, v35);
  v40 = objc_msgSend_paddingWithTopInset_leftInset_bottomInset_rightInset_(MEMORY[0x277D80EB0], v37, v38, v39, 4.0, 4.0, 4.0, 4.0);
  v43 = objc_msgSend_propertyMapWithPropertiesAndValues_(v21, v41, 517, v42, v25, 516, v28, 518, 0x3FF0000000000000, 520, v32, 519, v36, 146, v40, 0);

  v44 = objc_opt_class();
  v48 = sub_2760ACCE8(v44, v45, v46, v47);
  v51 = objc_msgSend_styleWithIdentifier_(v121, v49, v48, v50);
  isVariation = TSUCheckedDynamicCast();

  if (isVariation)
  {
    v56 = objc_msgSend_defaultParagraphStyle(isVariation, v53, v54, v55);

    if (v56 != v120)
    {
      v59 = MEMORY[0x277D81150];
      v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "[TSADocumentRoot p_addCaptionShapeStyles]", v58);
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v62);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v64, v60, v63, 4449, 0, "Title textbox style %@ is not using the object title text preset %@ as its default paragraph style.", isVariation, v120);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67);
    }
  }

  else
  {
    v68 = objc_alloc(MEMORY[0x277D80F18]);
    v72 = objc_msgSend_context(self, v69, v70, v71);
    isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v68, v73, v72, 0, v43, 0);

    v76 = objc_msgSend_setDefaultParagraphStyle_(isVariation, v74, v120, v75);
    v80 = sub_2760ACCE8(v76, v77, v78, v79);
    objc_msgSend_addStyle_withIdentifier_(v121, v81, isVariation, v80);
  }

  v82 = objc_opt_class();
  v86 = sub_2760ACD70(v82, v83, v84, v85);
  v89 = objc_msgSend_styleWithIdentifier_(v121, v87, v86, v88);
  v90 = TSUCheckedDynamicCast();

  if (v90)
  {
    v94 = objc_msgSend_defaultParagraphStyle(v90, v91, v92, v93);

    if (v94 != v20)
    {
      v97 = MEMORY[0x277D81150];
      v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, "[TSADocumentRoot p_addCaptionShapeStyles]", v96);
      v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v100);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v97, v102, v98, v101, 4462, 0, "Title textbox style %@ is not using the object title text preset %@ as its default paragraph style.", v90, v20);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104, v105);
    }
  }

  else
  {
    v106 = objc_alloc(MEMORY[0x277D80F18]);
    v110 = objc_msgSend_context(self, v107, v108, v109);
    v90 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v106, v111, v110, 0, v43, 0);

    v114 = objc_msgSend_setDefaultParagraphStyle_(v90, v112, v20, v113);
    v118 = sub_2760ACD70(v114, v115, v116, v117);
    objc_msgSend_addStyle_withIdentifier_(v121, v119, v90, v118);
  }
}

- (void)p_upgradeRemainingOutlinedTextStylesWithFileFormatVersion:(unint64_t)version
{
  v56 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277D80FD8] > version)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v4 = objc_opt_class();
    v6 = objc_msgSend_modelEnumeratorWithFlags_forObjectsOfClass_(self, v5, 2, v4);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v50, v55, 16);
    if (v11)
    {
      v12 = *v51;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v51 != v12)
          {
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v50 + 1) + 8 * i);
          v15 = objc_msgSend_stylesheet(v14, v8, v9, v10);
          v19 = objc_msgSend_range(v14, v16, v17, v18);
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = sub_2760A6340;
          v49[3] = &unk_27A6B0010;
          v49[4] = v14;
          v49[5] = v15;
          objc_msgSend_enumerateWithAttributeKind_inRange_usingBlock_(v14, v20, 3, v19, v20, v49);
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v50, v55, 16);
      }

      while (v11);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v24 = objc_msgSend_stylesheet(self, v21, v22, v23, 0);
    v28 = objc_msgSend_styles(v24, v25, v26, v27);

    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v45, v54, 16);
    if (v30)
    {
      v31 = *v46;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v46 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v45 + 1) + 8 * j);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          objc_opt_class();
          v35 = objc_opt_isKindOfClass();
          v37 = v35;
          if ((isKindOfClass | v35))
          {
            v40 = objc_autoreleasePoolPush();
            if (v37)
            {
              objc_msgSend_upgradeOutlinesToStrokesForcingUpgradeForUnderspecifiedCharacterStyles_overridingCharacterStrokes_(v33, v38, 1, 0);
            }

            if (objc_msgSend_overridesProperty_(v33, v38, 32, v39))
            {
              objc_msgSend_removeValueForProperty_(v33, v41, 32, v42);
            }

            if (objc_msgSend_overridesProperty_(v33, v41, 33, v42))
            {
              objc_msgSend_removeValueForProperty_(v33, v43, 33, v44);
            }

            objc_autoreleasePoolPop(v40);
          }
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v36, &v45, v54, 16);
      }

      while (v30);
    }
  }
}

- (id)referencedStylesOfClass:(Class)class
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, class, v3);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = objc_opt_class();
  v10 = objc_msgSend_modelEnumeratorForObjectsOfClass_(self, v8, v7, v9);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v52, v57, 16);
  if (v14)
  {
    v15 = *v53;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v53 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = objc_msgSend_referencedStylesOfClass_(*(*(&v52 + 1) + 8 * i), v12, class, v13);
        objc_msgSend_unionSet_(v6, v18, v17, v19);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v52, v57, 16);
    }

    while (v14);
  }

  if (objc_opt_class() == class)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v23 = objc_msgSend_theme(self, v20, v21, v22);
    obj = objc_msgSend_presetsOfKind_(v23, v24, *MEMORY[0x277D80B88], v25);

    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v48, v56, 16);
    if (v30)
    {
      v31 = 0;
      v32 = *v49;
      do
      {
        v33 = 0;
        v34 = v31;
        do
        {
          if (*v49 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v31 = objc_msgSend_defaultParagraphStyle(*(*(&v48 + 1) + 8 * v33), v27, v28, v29);

          if (v31)
          {
            objc_msgSend_addObject_(v6, v35, v31, v36);
          }

          else
          {
            v37 = MEMORY[0x277D81150];
            v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSADocumentRoot referencedStylesOfClass:]", v36);
            v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v40);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v42, v38, v41, 4611, 0, "invalid nil value for '%{public}s'", "paragraphStyle");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45);
          }

          ++v33;
          v34 = v31;
        }

        while (v30 != v33);
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v48, v56, 16);
      }

      while (v30);
    }
  }

  return v6;
}

- (id)documentCachePath
{
  v57[1] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_tsa_delegate(self, a2, v2, v3);
  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend_documentCachePath(v5, v6, v7, v8), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v13 = objc_msgSend_objectAtIndex_(v10, v11, 0, v12);
    v16 = objc_msgSend_stringByAppendingPathComponent_(v13, v14, @"DocumentCaches", v15);

    v20 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v17, v18, v19);
    if ((objc_msgSend_fileExistsAtPath_(v20, v21, v16, v22) & 1) == 0)
    {
      v56 = *MEMORY[0x277CCA110];
      v57[0] = MEMORY[0x277CBEC38];
      v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v57, &v56, 1);
      v55 = 0;
      v28 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v20, v27, v16, 1, v26, &v55);
      v31 = v55;
      if ((v28 & 1) == 0)
      {
        v32 = MEMORY[0x277D81150];
        v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSADocumentRoot documentCachePath]", v30);
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v34);
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v41 = objc_msgSend_domain(v31, v38, v39, v40);
        v45 = objc_msgSend_code(v31, v42, v43, v44);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v46, v54, v35, 4640, 0, "Could not create document cache directory: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v37, v41, v45, v31);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49);
      }
    }

    v50 = objc_msgSend_name(self, v23, v24, v25);
    v9 = objc_msgSend_stringByAppendingPathComponent_(v16, v51, v50, v52);
  }

  return v9;
}

- (id)documentCachePathWithRelativePath:(id)path
{
  pathCopy = path;
  v8 = objc_msgSend_documentCachePath(self, v5, v6, v7);
  v11 = objc_msgSend_stringByAppendingPathComponent_(v8, v9, pathCopy, v10);

  return v11;
}

- (id)dataFromDocumentCachePath:(id)path
{
  pathCopy = path;
  v8 = objc_msgSend_documentCachePath(self, v5, v6, v7);
  v11 = objc_msgSend_stringByAppendingPathComponent_(v8, v9, pathCopy, v10);

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_27609C444;
  v29 = sub_27609C454;
  v30 = 0;
  v15 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v12, v13, v14);
  v18 = objc_msgSend_fileExistsAtPath_(v15, v16, v11, v17);

  if (v18)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2760A72B8;
    block[3] = &unk_27A6B0038;
    block[4] = self;
    v24 = &v25;
    v23 = v11;
    dispatch_sync(accessQueue, block);
  }

  v20 = v26[5];
  _Block_object_dispose(&v25, 8);

  return v20;
}

- (void)didSaveWithEncryptionChange
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2760A7414;
  block[3] = &unk_27A6AF850;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

- (BOOL)writeData:(id)data atDocumentCachePath:(id)path
{
  dataCopy = data;
  pathCopy = path;
  v11 = objc_msgSend_documentCachePath(self, v8, v9, v10);
  v14 = objc_msgSend_stringByAppendingPathComponent_(v11, v12, pathCopy, v13);

  v18 = objc_msgSend_stringByDeletingLastPathComponent(v14, v15, v16, v17);
  if (objc_msgSend_length(pathCopy, v19, v20, v21) && objc_msgSend_length(v14, v22, v23, v24))
  {
    v82 = 0;
    v83 = &v82;
    v84 = 0x2020000000;
    v85 = 0;
    if (dataCopy)
    {
      v76 = 0;
      v77 = &v76;
      v78 = 0x3032000000;
      v79 = sub_27609C444;
      v80 = sub_27609C454;
      v81 = 0;
      v28 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v25, v26, v27);
      v29 = (v77 + 5);
      obj = v77[5];
      v31 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v28, v30, v18, 1, 0, &obj);
      objc_storeStrong(v29, obj);
      *(v83 + 24) = v31;

      if ((v83[3] & 1) == 0)
      {
        v34 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSADocumentRoot writeData:atDocumentCachePath:]", v33);
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v37);
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        v44 = objc_msgSend_domain(v77[5], v41, v42, v43);
        v48 = objc_msgSend_code(v77[5], v45, v46, v47);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v49, v35, v38, 4701, 0, "Unable to create cache directory: %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v18, v40, v44, v48, v77[5]);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52);
      }

      accessQueue = self->_accessQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2760A7958;
      block[3] = &unk_27A6B0060;
      block[4] = self;
      v73 = &v82;
      v71 = dataCopy;
      v72 = v14;
      v74 = &v76;
      dispatch_sync(accessQueue, block);
      if ((v83[3] & 1) == 0)
      {
        v56 = MEMORY[0x277D81150];
        v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "[TSADocumentRoot writeData:atDocumentCachePath:]", v55);
        v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v59);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v61, v57, v60, 4714, 0, "Failed to write cache file");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64);
      }

      _Block_object_dispose(&v76, 8);
    }

    else if (pathCopy)
    {
      v66 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v25, v26, v27);
      v68 = objc_msgSend_removeItemAtPath_error_(v66, v67, v14, 0);
      *(v83 + 24) = v68;
    }

    v65 = *(v83 + 24);
    _Block_object_dispose(&v82, 8);
  }

  else
  {
    v65 = 0;
  }

  return v65 & 1;
}

- (CGImageSource)newImageSourceForDocumentCachePath:(id)path
{
  v39[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v8 = objc_msgSend_documentCachePath(self, v5, v6, v7);
  v11 = objc_msgSend_stringByAppendingPathComponent_(v8, v9, pathCopy, v10);

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  if (v11)
  {
    v15 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v12, v13, v14);
    v18 = objc_msgSend_fileExistsAtPath_(v15, v16, v11, v17);

    if (v18)
    {
      v21 = objc_msgSend_tsu_fileURLWithPath_(MEMORY[0x277CBEBC0], v19, v11, v20);
      v38 = *MEMORY[0x277CD3618];
      v39[0] = MEMORY[0x277CBEC38];
      v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v39, &v38, 1);
      accessQueue = self->_accessQueue;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = sub_2760A7DC4;
      v29[3] = &unk_27A6B0088;
      v29[4] = self;
      v30 = v11;
      v31 = v21;
      v32 = v23;
      v33 = &v34;
      v25 = v23;
      v26 = v21;
      dispatch_sync(accessQueue, v29);
    }
  }

  v27 = v35[3];
  _Block_object_dispose(&v34, 8);

  return v27;
}

- (id)uniqueDocumentCachePathForProposedPath:(id)path
{
  pathCopy = path;
  v8 = objc_msgSend_stringByDeletingLastPathComponent(pathCopy, v5, v6, v7);
  v12 = objc_msgSend_lastPathComponent(pathCopy, v9, v10, v11);
  v16 = objc_msgSend_documentCachePath(self, v13, v14, v15);
  v19 = objc_msgSend_stringByAppendingPathComponent_(v16, v17, v8, v18);
  v22 = objc_msgSend_tsu_stringByUniquingPathInsideDirectory_(v12, v20, v19, v21);

  v25 = objc_msgSend_stringByAppendingPathComponent_(v8, v23, v22, v24);

  return v25;
}

- (id)allPencilAnnotations
{
  v5 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2, v3);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2760A80B8;
  v10[3] = &unk_27A6B00B0;
  v6 = v5;
  v11 = v6;
  objc_msgSend_enumeratePencilAnnotationsUsingBlock_(self, v7, v10, v8);

  return v6;
}

- (id)pencilAnnotationEnumeratorFromRootObject:(id)object
{
  objectCopy = object;
  v4 = objc_alloc(MEMORY[0x277D80660]);
  v6 = objc_msgSend_initWithRootModelObject_flags_filter_(v4, v5, objectCopy, 0, &unk_28850F6D0);

  return v6;
}

- (void)enumeratePencilAnnotationsFromRootObject:(id)object usingBlock:(id)block
{
  objectCopy = object;
  blockCopy = block;
  if (blockCopy)
  {
    v10 = objc_msgSend_pencilAnnotationEnumeratorFromRootObject_(self, v7, objectCopy, v8);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2760A8270;
    v13[3] = &unk_27A6B0100;
    v13[4] = self;
    v14 = blockCopy;
    objc_msgSend_enumerateUsingBlock_(v10, v11, v13, v12);
  }
}

- (NSString)name
{
  v4 = objc_msgSend_tsa_delegate(self, a2, v2, v3);
  v8 = objc_msgSend_name(v4, v5, v6, v7);

  return v8;
}

- (NSString)defaultDraftName
{
  v5 = objc_msgSend_tsa_delegate(self, a2, v2, v3);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_defaultDraftName(v5, v6, v7, v8);
  }

  else
  {
    objc_msgSend_name(self, v6, v7, v8);
  }
  v9 = ;

  return v9;
}

- (id)readBuildVersionHistoryFromDiskHasPreUFFVersion:(BOOL)version
{
  versionCopy = version;
  v5 = objc_msgSend_context(self, a2, version, v3);
  v6 = objc_opt_class();
  if (versionCopy)
  {
    objc_msgSend_buildVersionHistoryPathPreUFF(v6, v7, v8, v9);
  }

  else
  {
    objc_msgSend_buildVersionHistoryPath(v6, v7, v8, v9);
  }
  v10 = ;
  v13 = objc_msgSend_dataWithContentsOfPackagePath_(v5, v11, v10, v12);

  if (v13)
  {
    v15 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v14, v13, 0, 0, 0);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (TSADrawableFactory)drawableFactory
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSADocumentRoot drawableFactory]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 4991, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v20 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v19, v17, "[TSADocumentRoot drawableFactory]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, *MEMORY[0x277CBE658], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (BOOL)hasExpandedTables
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_sharedTableConfiguration(MEMORY[0x277D80D00], a2, v2, v3);
  if (objc_msgSend_supportsExpandedTables(v5, v6, v7, v8))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = objc_opt_class();
    v12 = objc_msgSend_modelEnumeratorForObjectsOfClass_(self, v10, v9, v11, 0);
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v21, v25, 16);
    if (v17)
    {
      v18 = *v22;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v12);
          }

          if (objc_msgSend_tableSizeClass(*(*(&v21 + 1) + 8 * i), v14, v15, v16) > 1)
          {
            LOBYTE(v17) = 1;
            goto LABEL_13;
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v21, v25, 16);
        if (v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (BOOL)hasExpandedTablesForGilligan
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_sharedTableConfiguration(MEMORY[0x277D80D00], a2, v2, v3);
  if (objc_msgSend_supportsExpandedTables(v5, v6, v7, v8))
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = objc_opt_class();
    v12 = objc_msgSend_modelEnumeratorForObjectsOfClass_(self, v10, v9, v11, 0);
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v29, v33, 16);
    if (v17)
    {
      v18 = *v30;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          if (objc_msgSend_tableSizeClass(v20, v14, v15, v16) > 1 || objc_msgSend_isAPivotTable(v20, v21, v22, v23) && (objc_msgSend_pivotSizeClass(v20, v14, v15, v16) > 1 || objc_msgSend_pivotDataModelSizeClass(v20, v24, v25, v26) > 1))
          {
            v27 = 1;
            goto LABEL_17;
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v29, v33, 16);
        v27 = 0;
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v27 = 0;
    }

LABEL_17:
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)presentDocumentWarnings
{
  v16 = objc_msgSend_tsa_delegate(self, a2, v2, v3);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_presentDocumentWarnings(v16, v4, v5, v6);
  }

  else if (v16)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSADocumentRoot presentDocumentWarnings]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 5189, 0, "Unexpected call to presentDocumentWarnings");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }
}

- (BOOL)hasICloudConflict
{
  v4 = objc_msgSend_delegate(self, a2, v2, v3);
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_msgSend_fileURL(v4, v5, v6, v7);
    v17 = 0;
    ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v8, v9, &v17, *MEMORY[0x277CBE958], 0);
    v11 = v17;

    if (ResourceValue_forKey_error)
    {
      v15 = objc_msgSend_BOOLValue(v11, v12, v13, v14);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isMultiPageForQuickLook
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSADocumentRoot isMultiPageForQuickLook]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot.mm", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 5266, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v20 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v19, v17, "[TSADocumentRoot isMultiPageForQuickLook]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, *MEMORY[0x277CBE658], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (id)namedTextStyles
{
  v20[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v20[2] = objc_opt_class();
  v20[3] = objc_opt_class();
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v20, 4);
  v8 = objc_msgSend_setWithArray_(v3, v6, v5, v7);

  v12 = objc_msgSend_stylesheet(self, v9, v10, v11);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2760C38F8;
  v18[3] = &unk_27A6B07B0;
  v13 = v8;
  v19 = v13;
  v16 = objc_msgSend_stylesPassingTest_(v12, v14, v18, v15);

  return v16;
}

+ (id)_localeForUnlocalizedValues
{
  if (qword_280A42548 != -1)
  {
    sub_27610CCC0();
  }

  v3 = qword_280A42540;

  return v3;
}

+ (id)_localizedStringKeyForValue:(double)value templateName:(id)name tableInfo:(id)info unlocalizedTableName:(id)tableName cellAddress:(TSUCellCoord)address defaultValue:(id *)defaultValue
{
  nameCopy = name;
  tableNameCopy = tableName;
  v18 = objc_msgSend_baseTableModel(info, v15, v16, v17);
  v22 = objc_msgSend_sheetName(v18, v19, v20, v21);

  v26 = objc_msgSend__localeForUnlocalizedValues(self, v23, v24, v25);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2760C3C40;
  block[3] = &unk_27A6AF850;
  v29 = v26;
  v39 = v29;
  if (qword_280A42558 != -1)
  {
    dispatch_once(&qword_280A42558, block);
  }

  v30 = objc_msgSend_stringFromDouble_locale_(qword_280A42550, v27, v29, v28, value);
  v31 = v30;
  if (defaultValue)
  {
    v32 = v30;
    *defaultValue = v31;
  }

  v33 = NSStringFromTSUCellCoord();
  v36 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v34, @"%@%@_%@_%@_%@_%@", v35, @"_LOCALIZABLE_VALUE_", nameCopy, v22, tableNameCopy, v33, v31);

  return v36;
}

+ (id)localizedTemplateStringForKey:(id)key value:(id)value table:(id)table templateBundle:(id)bundle locale:(id)locale
{
  v7 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, key, value, table, bundle);

  return v7;
}

+ (void)localizeModelObject:(id)object withTemplateBundle:(id)bundle andLocale:(id)locale
{
  v416 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  bundleCopy = bundle;
  localeCopy = locale;
  v360 = objectCopy;
  if (!objectCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[TSADocumentRoot(Localization) localizeModelObject:withTemplateBundle:andLocale:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot_Localization.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 557, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  if (!bundleCopy)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[TSADocumentRoot(Localization) localizeModelObject:withTemplateBundle:andLocale:]", v10);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot_Localization.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 558, 0, "invalid nil value for '%{public}s'", "templateBundle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  if (!localeCopy)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[TSADocumentRoot(Localization) localizeModelObject:withTemplateBundle:andLocale:]", v10);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot_Localization.mm", v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 559, 0, "invalid nil value for '%{public}s'", "docLocale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
  }

  v38 = objc_msgSend_localeIdentifier(localeCopy, v8, v9, v10);
  LanguageCharacterDirection = CFLocaleGetLanguageCharacterDirection(v38);

  v42 = objc_msgSend_locale(localeCopy, v39, v40, v41);
  v44 = objc_msgSend_localizedStringForKey_value_table_locale_(bundleCopy, v43, @"ApplyGlobalLocalizations", @"ApplyGlobalLocalizations", @"LocalizableFontSubstitutions", v42);

  v355 = v44;
  isEqualToString = objc_msgSend_isEqualToString_(v44, v45, @"DoNotApplyGlobalLocalizations", v46);
  objc_opt_class();
  v370 = TSUDynamicCast();
  objc_opt_class();
  v359 = TSUDynamicCast();
  objc_opt_class();
  v358 = TSUDynamicCast();
  objc_opt_class();
  v357 = TSUDynamicCast();
  objc_opt_class();
  v356 = TSUDynamicCast();
  if (v370)
  {
    v378 = objc_msgSend_stylesheet(v370, v47, v48, v49);
    v407 = 0u;
    v408 = 0u;
    v405 = 0u;
    v406 = 0u;
    v53 = objc_msgSend_theme(v370, v50, v51, v52);
    v363 = *MEMORY[0x277D80B58];
    v56 = objc_msgSend_presetsOfKind_(v53, v54, *MEMORY[0x277D80B58], v55);

    obj = v56;
    v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, &v405, v415, 16);
    if (v58)
    {
      v366 = *v406;
      do
      {
        v368 = v58;
        for (i = 0; i != v368; i = i + 1)
        {
          if (*v406 != v366)
          {
            objc_enumerationMutation(obj);
          }

          v62 = *(*(&v405 + 1) + 8 * i);
          v371 = objc_msgSend_valueForProperty_(v62, v59, 184, v60);
          v63 = objc_alloc(MEMORY[0x277CBEB18]);
          v69 = objc_msgSend_initWithArray_(v63, v64, v371, v65);
          if (v69)
          {
            v70 = 0;
            v71 = 0;
            while (v70 < objc_msgSend_count(v69, v66, v67, v68))
            {
              v74 = objc_msgSend_objectAtIndex_(v69, v72, v70, v73);
              v78 = objc_msgSend_intValue(v74, v75, v76, v77);

              if (v78 <= 0x40)
              {
                v79 = v78;
                v80 = TSWPStringFromTSWPListNumberType();
                v82 = v80;
                if (isEqualToString)
                {
                  v83 = v80;
                }

                else
                {
                  v83 = objc_msgSend_localizedStringForKey_value_table_(localeCopy, v81, v80, v80, @"TSATemplateStyleNames");
                }

                v85 = v83;
                v86 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(self, v84, v82, v83, @"TSATemplateLocalizableStyleNames", bundleCopy, localeCopy);
                v87 = TSWPGetListNumberTypeForString();
                if (v87 <= 0x40 && v87 != v79)
                {
                  v90 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v88, v87, v89);
                  objc_msgSend_replaceObjectAtIndex_withObject_(v69, v91, v70, v90);

                  v71 = 1;
                }
              }

              ++v70;
            }

            if (v71)
            {
              objc_msgSend_setValue_forProperty_(v62, v72, v69, 184);
            }
          }
        }

        v56 = obj;
        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v59, &v405, v415, 16);
      }

      while (v58);
    }

    v95 = objc_msgSend_preferredLanguages(MEMORY[0x277D81228], v92, v93, v94);
    obja = objc_msgSend_mutableCopy(v95, v96, v97, v98);

    v102 = objc_msgSend_languageCode(localeCopy, v99, v100, v101);
    v105 = objc_msgSend_containsObject_(obja, v103, v102, v104);

    if ((v105 & 1) == 0)
    {
      v109 = objc_msgSend_languageCode(localeCopy, v106, v107, v108);
      objc_msgSend_addObject_(obja, v110, v109, v111);
    }

    v112 = MEMORY[0x277D80EA0];
    v113 = objc_msgSend_theme(v370, v106, v107, v108);
    v115 = objc_msgSend_languageSpecificStylesForLanguages_theme_stylesheet_(v112, v114, obja, v113, v378);

    v403 = 0u;
    v404 = 0u;
    v401 = 0u;
    v402 = 0u;
    v369 = v115;
    v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(v369, v116, &v401, v414, 16);
    if (v117)
    {
      v372 = *v402;
      do
      {
        for (j = 0; j != v117; ++j)
        {
          if (*v402 != v372)
          {
            objc_enumerationMutation(v369);
          }

          v119 = *(*(&v401 + 1) + 8 * j);
          v120 = objc_alloc(MEMORY[0x277D80EA0]);
          v124 = objc_msgSend_context(v370, v121, v122, v123);
          v128 = objc_msgSend_name(v119, v125, v126, v127);
          v132 = objc_msgSend_propertyMap(v119, v129, v130, v131);
          isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v120, v133, v124, v128, v132, 0);

          v138 = objc_msgSend_numberTypeName(isVariation, v135, v136, v137);
          v139 = String();

          v140 = 0;
          v141 = 0;
          do
          {
            v142 = TSWPTextPackageStringForPreset();
            v146 = objc_msgSend_presetStyleDescriptor(MEMORY[0x277D80EA0], v143, v144, v145);
            v147 = String();

            v150 = objc_msgSend_styleWithIdentifier_(v378, v148, v147, v149);
            LODWORD(v142) = v150 == 0;

            ++v141;
            v140 = v147;
          }

          while (!v142);
          v154 = MEMORY[0x277CCAD78];
          v155 = objc_msgSend_objectUUID(v370, v151, v152, v153);
          v157 = objc_msgSend_tsu_UUIDWithNamespaceUUID_name_(v154, v156, v155, v147);
          objc_msgSend_setObjectUUID_(isVariation, v158, v157, v159);

          objc_msgSend_addStyle_withIdentifier_(v378, v160, isVariation, v147);
          v164 = objc_msgSend_theme(v370, v161, v162, v163);
          objc_msgSend_addPreset_ofKind_(v164, v165, isVariation, v363);
        }

        v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(v369, v166, &v401, v414, 16);
      }

      while (v117);
    }

    MainBundle = CFBundleGetMainBundle();
    v353 = objc_msgSend_URLForResource_withExtension_subdirectory_inBundle_(localeCopy, v168, @"TSALocalizedStyleProperties", @"plist", 0, MainBundle);
    v354 = objc_msgSend_path(v353, v169, v170, v171);
    if (v354)
    {
      v175 = objc_alloc(MEMORY[0x277CBEAC0]);
      v178 = objc_msgSend_initWithContentsOfFile_(v175, v176, v354, v177);
      v181 = objc_msgSend_objectForKeyedSubscript_(v178, v179, @"all-templates", v180);
      v184 = objc_msgSend_objectForKeyedSubscript_(v178, v182, @"template-specific", v183);
      v188 = objc_msgSend_bundlePath(bundleCopy, v185, v186, v187);
      v192 = objc_msgSend_pathComponents(v188, v189, v190, v191);
      v196 = objc_msgSend_lastObject(v192, v193, v194, v195);
      v199 = objc_msgSend_objectForKeyedSubscript_(v184, v197, v196, v198);

      if (objc_msgSend_count(v181, v200, v201, v202))
      {
        objc_msgSend_localizePropertiesOfStylesInStylesheet_withMap_(self, v203, v378, v181);
      }

      if (objc_msgSend_count(v199, v203, v204, v205))
      {
        objc_msgSend_localizePropertiesOfStylesInStylesheet_withMap_(self, v206, v378, v199);
      }
    }

    v207 = objc_msgSend_languageCode(localeCopy, v172, v173, v174);
    v210 = objc_msgSend_isEqualToString_(v207, v208, *MEMORY[0x277D81460], v209);

    if (v210)
    {
      objc_msgSend_enumerateStylesUsingBlock_(v378, v211, &unk_28850F930, v212);
    }

    v213 = objc_opt_class();
    v364 = objc_msgSend_namedStylesOfClass_(v378, v214, v213, v215);
    v373 = objc_msgSend_decimalSeparator(localeCopy, v216, v217, v218);
    if (objc_msgSend_length(v373, v219, v220, v221))
    {
      v399 = 0u;
      v400 = 0u;
      v397 = 0u;
      v398 = 0u;
      v225 = v364;
      v229 = objc_msgSend_countByEnumeratingWithState_objects_count_(v225, v226, &v397, v413, 16);
      if (v229)
      {
        v230 = *v398;
        do
        {
          for (k = 0; k != v229; ++k)
          {
            if (*v398 != v230)
            {
              objc_enumerationMutation(v225);
            }

            v232 = *(*(&v397 + 1) + 8 * k);
            if (objc_msgSend_definesProperty_(v232, v227, 96, v228))
            {
              objc_msgSend_setValue_forProperty_(v232, v227, v373, 96);
            }
          }

          v229 = objc_msgSend_countByEnumeratingWithState_objects_count_(v225, v227, &v397, v413, 16);
        }

        while (v229);
      }
    }

    v395 = 0u;
    v396 = 0u;
    v393 = 0u;
    v394 = 0u;
    v233 = objc_msgSend_namedTextStyles(v370, v222, v223, v224);
    v238 = objc_msgSend_countByEnumeratingWithState_objects_count_(v233, v234, &v393, v412, 16);
    if (v238)
    {
      v239 = *v394;
      do
      {
        for (m = 0; m != v238; ++m)
        {
          if (*v394 != v239)
          {
            objc_enumerationMutation(v233);
          }

          v241 = *(*(&v393 + 1) + 8 * m);
          v242 = objc_msgSend_name(v241, v235, v236, v237);
          v244 = v242;
          if (isEqualToString)
          {
            v245 = v242;
          }

          else
          {
            v245 = objc_msgSend_localizedStringForKey_value_table_(localeCopy, v243, v242, v242, @"TSATemplateStyleNames");
          }

          v247 = v245;
          v248 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(self, v246, v244, v245, @"TSATemplateLocalizableStyleNames", bundleCopy, localeCopy);
          if ((objc_msgSend_isEqualToString_(v244, v249, v248, v250) & 1) == 0)
          {
            objc_msgSend_setName_(v241, v251, v248, v252);
          }
        }

        v238 = objc_msgSend_countByEnumeratingWithState_objects_count_(v233, v235, &v393, v412, 16);
      }

      while (v238);
    }

    if ((isEqualToString & 1) == 0)
    {
      v391 = 0u;
      v392 = 0u;
      v389 = 0u;
      v390 = 0u;
      v253 = objc_opt_class();
      v256 = objc_msgSend_stylesOfClass_(v378, v254, v253, v255);
      v260 = objc_msgSend_countByEnumeratingWithState_objects_count_(v256, v257, &v389, v411, 16);
      if (v260)
      {
        v261 = *v390;
        do
        {
          for (n = 0; n != v260; ++n)
          {
            if (*v390 != v261)
            {
              objc_enumerationMutation(v256);
            }

            objc_msgSend_localizeForBidi_(*(*(&v389 + 1) + 8 * n), v258, LanguageCharacterDirection == kCFLocaleLanguageDirectionRightToLeft, v259);
          }

          v260 = objc_msgSend_countByEnumeratingWithState_objects_count_(v256, v258, &v389, v411, 16);
        }

        while (v260);
      }

      v387 = 0u;
      v388 = 0u;
      v385 = 0u;
      v386 = 0u;
      v263 = objc_opt_class();
      v266 = objc_msgSend_stylesOfClass_(v378, v264, v263, v265);
      v270 = objc_msgSend_countByEnumeratingWithState_objects_count_(v266, v267, &v385, v410, 16);
      if (v270)
      {
        v271 = *v386;
        do
        {
          for (ii = 0; ii != v270; ++ii)
          {
            if (*v386 != v271)
            {
              objc_enumerationMutation(v266);
            }

            objc_msgSend_localizeForBidi_(*(*(&v385 + 1) + 8 * ii), v268, LanguageCharacterDirection == kCFLocaleLanguageDirectionRightToLeft, v269);
          }

          v270 = objc_msgSend_countByEnumeratingWithState_objects_count_(v266, v268, &v385, v410, 16);
        }

        while (v270);
      }
    }

    v367 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v273 = objc_opt_class();
    v276 = objc_msgSend_stylesOfClass_(v378, v274, v273, v275);
    objc_msgSend_addObjectsFromArray_(v367, v277, v276, v278);

    v279 = objc_opt_class();
    v282 = objc_msgSend_stylesOfClass_(v378, v280, v279, v281);
    objc_msgSend_addObjectsFromArray_(v367, v283, v282, v284);

    v285 = objc_opt_class();
    v288 = objc_msgSend_stylesOfClass_(v378, v286, v285, v287);
    objc_msgSend_addObjectsFromArray_(v367, v289, v288, v290);

    v291 = objc_opt_class();
    v294 = objc_msgSend_stylesOfClass_(v378, v292, v291, v293);
    objc_msgSend_addObjectsFromArray_(v367, v295, v294, v296);

    v297 = objc_opt_class();
    v300 = objc_msgSend_stylesOfClass_(v378, v298, v297, v299);
    objc_msgSend_addObjectsFromArray_(v367, v301, v300, v302);

    v383 = 0u;
    v384 = 0u;
    v381 = 0u;
    v382 = 0u;
    v303 = v367;
    v307 = objc_msgSend_countByEnumeratingWithState_objects_count_(v303, v304, &v381, v409, 16);
    if (v307)
    {
      v308 = *v382;
      do
      {
        for (jj = 0; jj != v307; ++jj)
        {
          if (*v382 != v308)
          {
            objc_enumerationMutation(v303);
          }

          v310 = *(*(&v381 + 1) + 8 * jj);
          if (objc_msgSend_overridesProperty_(v310, v305, 16, v306))
          {
            v313 = objc_msgSend_valueForProperty_(v310, v311, 16, v312);
            v315 = v313;
            if (isEqualToString)
            {
              v316 = v313;
            }

            else
            {
              v316 = objc_msgSend_localizedFontNameForFontName_withLocale_(self, v314, v313, localeCopy);
            }

            v320 = v316;
            v321 = objc_msgSend_locale(localeCopy, v317, v318, v319);
            v323 = objc_msgSend_localizedStringForKey_value_table_locale_(bundleCopy, v322, v315, v320, @"LocalizableFontSubstitutions", v321);

            objc_msgSend_setValue_forProperty_(v310, v324, v323, 16);
          }

          if (objc_msgSend_overridesProperty_(v310, v311, 797, v312))
          {
            v325 = objc_msgSend_valueForProperty_(v310, v305, 797, v306);
            v327 = v325;
            if (isEqualToString)
            {
              v328 = v325;
            }

            else
            {
              v328 = objc_msgSend_localizedFontNameForFontName_withLocale_(self, v326, v325, localeCopy);
            }

            v332 = v328;
            v333 = objc_msgSend_locale(localeCopy, v329, v330, v331);
            v335 = objc_msgSend_localizedStringForKey_value_table_locale_(bundleCopy, v334, v327, v332, @"LocalizableFontSubstitutions", v333);

            objc_msgSend_setValue_forProperty_(v310, v336, v335, 797);
          }
        }

        v307 = objc_msgSend_countByEnumeratingWithState_objects_count_(v303, v305, &v381, v409, 16);
      }

      while (v307);
    }
  }

  else if (v359)
  {
    if (!((LanguageCharacterDirection != kCFLocaleLanguageDirectionRightToLeft) | isEqualToString & 1))
    {
      v337 = objc_msgSend_range(v359, v47, v48, v49);
      objc_msgSend_setParagraphWritingDirection_forCharRange_undoTransaction_(v359, v338, 1, v337, v338, 0);
    }

    if (objc_msgSend_length(v359, v47, v48, v49))
    {
      objc_msgSend_localizeTextStorage_withTemplateBundle_andLocale_(self, v339, v359, bundleCopy, localeCopy);
    }
  }

  else if (v358)
  {
    objc_msgSend_localizeChartInfo_withTemplateBundle_andLocale_(self, v47, v358, bundleCopy, localeCopy);
  }

  else if (v357)
  {
    if (!((LanguageCharacterDirection != kCFLocaleLanguageDirectionRightToLeft) | isEqualToString & 1))
    {
      objc_msgSend_setContentWritingDirection_(v357, v47, 1, v49);
      if ((objc_msgSend_doesTopMostContainerSupportRTLOrigin(self, v340, v341, v342) & 1) == 0)
      {
        v379[0] = MEMORY[0x277D85DD0];
        v379[1] = 3221225472;
        v379[2] = sub_2760C5348;
        v379[3] = &unk_27A6B07F8;
        v380 = v357;
        objc_msgSend_performBlockWithTemporaryLayout_(v380, v343, v379, v344);
      }
    }

    objc_msgSend_localizeTableInfo_templateBundle_andLocale_(self, v47, v357, bundleCopy, localeCopy);
  }

  else if (v356)
  {
    v345 = objc_msgSend_accessibilityDescription(v356, v47, 0, v49);
    if (objc_msgSend_length(v345, v346, v347, v348))
    {
      v350 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(self, v349, v345, v345, @"TSATemplateLocalizable", bundleCopy, localeCopy);
      objc_msgSend_setAccessibilityDescription_(v356, v351, v350, v352);
    }
  }
}

+ (void)localizePropertiesOfStylesInStylesheet:(id)stylesheet withMap:(id)map
{
  v81[9] = *MEMORY[0x277D85DE8];
  stylesheetCopy = stylesheet;
  mapCopy = map;
  v80[0] = @"paragraph-style";
  v81[0] = objc_opt_class();
  v80[1] = @"character-style";
  v81[1] = objc_opt_class();
  v80[2] = @"list-style";
  v81[2] = objc_opt_class();
  v80[3] = @"drop-cap-style";
  v81[3] = objc_opt_class();
  v80[4] = @"toc-style";
  v81[4] = objc_opt_class();
  v80[5] = @"shape-style";
  v81[5] = objc_opt_class();
  v80[6] = @"media-style";
  v81[6] = objc_opt_class();
  v80[7] = @"table-style";
  v81[7] = objc_opt_class();
  v80[8] = @"chart-style";
  v81[8] = objc_opt_class();
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v81, v80, 9);
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  obj = v73 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v72, v79, 16);
  if (v8)
  {
    v54 = *v73;
    do
    {
      v56 = v8;
      for (i = 0; i != v56; ++i)
      {
        if (*v73 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v72 + 1) + 8 * i);
        v59 = objc_msgSend_objectForKeyedSubscript_(mapCopy, v9, v12, v10, v54);
        if (v59)
        {
          v15 = objc_msgSend_objectForKeyedSubscript_(obj, v13, v12, v14);
          v18 = objc_msgSend_objectForKeyedSubscript_(v59, v16, @"all-styles", v17);
          v21 = objc_msgSend_objectForKeyedSubscript_(v59, v19, @"identified-styles", v20);
          v24 = objc_msgSend_objectForKeyedSubscript_(v59, v22, @"named-styles", v23);
          if (objc_msgSend_count(v18, v25, v26, v27))
          {
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v31 = objc_msgSend_stylesOfClass_(stylesheetCopy, v28, v15, v30);
            v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v68, v78, 16);
            if (v34)
            {
              v35 = *v69;
              do
              {
                for (j = 0; j != v34; ++j)
                {
                  if (*v69 != v35)
                  {
                    objc_enumerationMutation(v31);
                  }

                  objc_msgSend_localizePropertiesOfStyle_withMap_(self, v33, *(*(&v68 + 1) + 8 * j), v18);
                }

                v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v33, &v68, v78, 16);
              }

              while (v34);
            }
          }

          if (objc_msgSend_count(v21, v28, v29, v30))
          {
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v40 = objc_msgSend_identifiedStylesOfClass_(stylesheetCopy, v37, v15, v39);
            v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v64, v77, 16);
            if (v43)
            {
              v44 = *v65;
              do
              {
                for (k = 0; k != v43; ++k)
                {
                  if (*v65 != v44)
                  {
                    objc_enumerationMutation(v40);
                  }

                  objc_msgSend_localizePropertiesOfIdentifiedStyle_withMap_(self, v42, *(*(&v64 + 1) + 8 * k), v21);
                }

                v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v42, &v64, v77, 16);
              }

              while (v43);
            }
          }

          if (objc_msgSend_count(v24, v37, v38, v39))
          {
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v48 = objc_msgSend_namedStylesOfClass_(stylesheetCopy, v46, v15, v47);
            v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v60, v76, 16);
            if (v51)
            {
              v52 = *v61;
              do
              {
                for (m = 0; m != v51; ++m)
                {
                  if (*v61 != v52)
                  {
                    objc_enumerationMutation(v48);
                  }

                  objc_msgSend_localizePropertiesOfNamedStyle_withMap_(self, v50, *(*(&v60 + 1) + 8 * m), v24);
                }

                v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v50, &v60, v76, 16);
              }

              while (v51);
            }
          }
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v72, v79, 16);
    }

    while (v8);
  }
}

+ (void)localizePropertiesOfIdentifiedStyle:(id)style withMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  v12 = objc_msgSend_styleIdentifier(styleCopy, v7, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_objectForKeyedSubscript_(mapCopy, v10, v12, v11);
    if (objc_msgSend_count(v13, v14, v15, v16))
    {
      objc_msgSend_replacePropertiesOfStyle_withMap_(self, v17, styleCopy, v13);
    }
  }

  else
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[TSADocumentRoot(Localization) localizePropertiesOfIdentifiedStyle:withMap:]", v11);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot_Localization.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 811, 0, "invalid nil value for '%{public}s'", "styleIdentifier");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }
}

+ (void)localizePropertiesOfNamedStyle:(id)style withMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  v12 = objc_msgSend_name(styleCopy, v7, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_objectForKeyedSubscript_(mapCopy, v10, v12, v11);
    if (objc_msgSend_count(v13, v14, v15, v16))
    {
      objc_msgSend_replacePropertiesOfStyle_withMap_(self, v17, styleCopy, v13);
    }
  }

  else
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[TSADocumentRoot(Localization) localizePropertiesOfNamedStyle:withMap:]", v11);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot_Localization.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 822, 0, "invalid nil value for '%{public}s'", "styleName");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }
}

+ (void)replacePropertiesOfStyle:(id)style withMap:(id)map
{
  v221 = *MEMORY[0x277D85DE8];
  styleCopy = style;
  mapCopy = map;
  v7 = objc_msgSend_objectForKeyedSubscript_(mapCopy, v5, @"replacements", v6);
  v10 = v7;
  if (v7)
  {
    v195 = v7;
  }

  else
  {
    v195 = objc_msgSend_objectForKeyedSubscript_(mapCopy, v8, @"values", v9);
  }

  v11 = objc_opt_class();
  v202 = objc_msgSend_properties(v11, v12, v13, v14);
  if (objc_msgSend_count(v195, v15, v16, v17))
  {
    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    obj = v195;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v211, v220, 16);
    if (!v19)
    {
      goto LABEL_94;
    }

    v201 = *v212;
    while (1)
    {
      v203 = v19;
      for (i = 0; i != v203; ++i)
      {
        if (*v212 != v201)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v211 + 1) + 8 * i);
        v22 = String();
        if ((objc_msgSend_containsProperty_(v202, v23, v22, v24) & 1) == 0)
        {
          v40 = MEMORY[0x277D81150];
          v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "+[TSADocumentRoot(Localization) replacePropertiesOfStyle:withMap:]", v26);
          v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot_Localization.mm", v43);
          v45 = objc_opt_class();
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v46, v41, v44, 839, 0, "Bad property '%@' for '%@'", v21, v45);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49);
          continue;
        }

        v27 = String();
        objc_opt_class();
        v30 = objc_msgSend_objectForKeyedSubscript_(obj, v28, v21, v29);
        v206 = TSUDynamicCast();

        if (!v206)
        {
          v39 = 0;
          v36 = objc_msgSend_objectForKeyedSubscript_(obj, v31, v21, v32);
          goto LABEL_16;
        }

        v35 = objc_msgSend_objectForKeyedSubscript_(v206, v31, @"base-value", v32);
        if (v35)
        {
          v36 = objc_msgSend_objectForKeyedSubscript_(v206, v33, @"localized-value", v34);
          v39 = v35;
LABEL_16:
          v51 = v36;
          goto LABEL_18;
        }

        v51 = v206;
        v39 = 0;
LABEL_18:
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v108 = MEMORY[0x277D81150];
              v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, "+[TSADocumentRoot(Localization) replacePropertiesOfStyle:withMap:]", v107);
              v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot_Localization.mm", v111);
              v113 = objc_opt_class();
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v108, v114, v109, v112, 958, 0, "Expected a number, got %@", v113);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v115, v116, v117);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (!v39 || (objc_msgSend_floatValue(v39, v118, v119, v120), v122 = v121, objc_msgSend_floatValueForProperty_(styleCopy, v123, v22, v124), v122 == v125) || vabdd_f64(v122, v125) < 0.00999999978)
              {
                objc_msgSend_floatValue(v51, v118, v119, v120);
                objc_msgSend_setFloatValue_forProperty_(styleCopy, v126, v22, v127);
              }
            }

            goto LABEL_78;
          }

          if (v27 == 3)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v74 = MEMORY[0x277D81150];
              v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "+[TSADocumentRoot(Localization) replacePropertiesOfStyle:withMap:]", v73);
              v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot_Localization.mm", v77);
              v79 = objc_opt_class();
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v80, v75, v78, 948, 0, "Expected a number, got %@", v79);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (!v39 || (objc_msgSend_doubleValue(v39, v84, v85, v86), v88 = v87, objc_msgSend_doubleValueForProperty_(styleCopy, v89, v22, v90), v88 == v91) || vabdd_f64(v88, v91) < 0.00999999978)
              {
                objc_msgSend_doubleValue(v51, v84, v85, v86);
                *&v92 = v92;
                objc_msgSend_setDoubleValue_forProperty_(styleCopy, v93, v22, v94, *&v92);
              }
            }

            goto LABEL_78;
          }
        }

        else
        {
          if (!v27)
          {
            v197 = objc_msgSend_objectForProperty_(styleCopy, v37, v22, v38);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (!v39 || objc_msgSend_isEqual_(v197, v104, v39, v105))
              {
                objc_msgSend_setValue_forProperty_(styleCopy, v104, v51, v22);
              }

              goto LABEL_77;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v196 = v51;
              if (v22 != 85)
              {
                if (v22 == 256)
                {
                  objc_opt_class();
                  v198 = TSUCheckedDynamicCast();
                  if (v198)
                  {
                    v132 = objc_alloc(MEMORY[0x277D80DF8]);
                    v135 = objc_msgSend_initWithLocalizationDictionary_(v132, v133, v198, v134);
                  }

                  else
                  {
                    v135 = 0;
                  }

                  v169 = objc_msgSend_valueForProperty_(styleCopy, v130, 256, v131);
                  if (!v135 || objc_msgSend_isEqual_(v135, v166, v169, v168))
                  {
                    v170 = objc_msgSend_mutableCopy(v169, v166, v167, v168);
                    objc_msgSend_setValuesWithLocalizationDictionary_(v170, v171, v196, v172);
                    if (v170)
                    {
                      objc_msgSend_setValue_forProperty_(styleCopy, v173, v170, 256);
                    }
                  }

                  goto LABEL_73;
                }

                v157 = MEMORY[0x277D81150];
                v158 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, "+[TSADocumentRoot(Localization) replacePropertiesOfStyle:withMap:]", v129);
                v161 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v159, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot_Localization.mm", v160);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v157, v162, v158, v161, 871, 0, "Unsupported dictionary entry for %@", v21);

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v163, v164, v165);
LABEL_76:

LABEL_77:
                goto LABEL_78;
              }

              objc_opt_class();
              v198 = TSUCheckedDynamicCast();
              if (v198)
              {
                v148 = objc_alloc(MEMORY[0x277D80E80]);
                v135 = objc_msgSend_initWithLocalizationDictionary_(v148, v149, v198, v150);
                if (v135)
                {
                  v153 = objc_msgSend_valueForProperty_(styleCopy, v151, 85, v152);
                  isEqual = objc_msgSend_isEqual_(v135, v154, v153, v155);

                  if (!isEqual)
                  {
                    goto LABEL_74;
                  }
                }
              }

              else
              {
                v135 = 0;
              }

              v174 = objc_alloc(MEMORY[0x277D80E80]);
              v169 = objc_msgSend_initWithLocalizationDictionary_(v174, v175, v196, v176);
              if (v169)
              {
                objc_msgSend_setValue_forProperty_(styleCopy, v177, v169, 85);
              }

LABEL_73:

LABEL_74:
LABEL_75:

              goto LABEL_76;
            }

            objc_opt_class();
            v196 = TSUDynamicCast();
            if (v196)
            {
              if ((v22 - 176) <= 0xA && v22 != 179)
              {
                objc_opt_class();
                v199 = TSUCheckedDynamicCast();
                objc_msgSend_setLocalizedArray_forProperty_(v199, v138, v196, v22);

                goto LABEL_76;
              }

              if (v22 == 16)
              {
                v209 = 0u;
                v210 = 0u;
                v207 = 0u;
                v208 = 0u;
                v198 = v196;
                v179 = objc_msgSend_countByEnumeratingWithState_objects_count_(v198, v178, &v207, v219, 16);
                if (v179)
                {
                  v180 = *v208;
                  do
                  {
                    for (j = 0; j != v179; ++j)
                    {
                      if (*v208 != v180)
                      {
                        objc_enumerationMutation(v198);
                      }

                      objc_opt_class();
                      v182 = TSUCheckedDynamicCast();
                      if (v182)
                      {
                        v217 = @"replacements";
                        v183 = String();
                        v215 = v183;
                        v216 = v182;
                        v185 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v184, &v216, &v215, 1);
                        v218 = v185;
                        v187 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v186, &v218, &v217, 1);

                        objc_msgSend_replacePropertiesOfStyle_withMap_(self, v188, styleCopy, v187);
                      }
                    }

                    v179 = objc_msgSend_countByEnumeratingWithState_objects_count_(v198, v189, &v207, v219, 16);
                  }

                  while (v179);
                }

                v196 = v198;
                goto LABEL_75;
              }

              v190 = MEMORY[0x277D81150];
              v140 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v136, "+[TSADocumentRoot(Localization) replacePropertiesOfStyle:withMap:]", v137);
              v143 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v191, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot_Localization.mm", v192);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v190, v193, v140, v143, 901, 0, "Unsupported array entry for %@", v21);
            }

            else
            {
              v139 = MEMORY[0x277D81150];
              v140 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v136, "+[TSADocumentRoot(Localization) replacePropertiesOfStyle:withMap:]", v137);
              v143 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v141, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot_Localization.mm", v142);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v139, v144, v140, v143, 933, 0, "Unsupported entry for object type for %@", v21);
            }

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v145, v146, v147);
            goto LABEL_76;
          }

          if (v27 == 1)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v54 = MEMORY[0x277D81150];
              v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "+[TSADocumentRoot(Localization) replacePropertiesOfStyle:withMap:]", v53);
              v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot_Localization.mm", v57);
              v59 = objc_opt_class();
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v60, v55, v58, 938, 0, "Expected a number, got %@", v59);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (!v39 || (v67 = objc_msgSend_intValue(v39, v64, v65, v66), v67 == objc_msgSend_intValueForProperty_(styleCopy, v68, v22, v69)))
              {
                v70 = objc_msgSend_intValue(v51, v64, v65, v66);
                objc_msgSend_setIntValue_forProperty_(styleCopy, v71, v70, v22);
              }
            }

            goto LABEL_78;
          }
        }

        v95 = MEMORY[0x277D81150];
        v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "+[TSADocumentRoot(Localization) replacePropertiesOfStyle:withMap:]", v38);
        v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot_Localization.mm", v98);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v95, v100, v96, v99, 859, 0, "Bad value type: %u", v27);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v101, v102, v103);
LABEL_78:
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, &v211, v220, 16);
      if (!v19)
      {
LABEL_94:

        break;
      }
    }
  }
}

+ (void)localizeTableInfo:(id)info templateBundle:(id)bundle andLocale:(id)locale
{
  v150 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  bundleCopy = bundle;
  localeCopy = locale;
  if ((objc_msgSend_isAPivotTable(infoCopy, v11, v12, v13) & 1) == 0)
  {
    v122 = bundleCopy;
    v17 = objc_msgSend_bundlePath(bundleCopy, v14, v15, v16);
    v21 = objc_msgSend_lastPathComponent(v17, v18, v19, v20);

    v124 = v21;
    v125 = objc_msgSend_tableName(infoCopy, v22, v23, v24);
    v28 = objc_msgSend_tableName(infoCopy, v25, v26, v27);
    v32 = objc_msgSend_tableName(infoCopy, v29, v30, v31);
    v34 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(self, v33, v28, v32, @"TSATemplateLocalizable", bundleCopy, localeCopy);
    objc_msgSend_setTableName_(infoCopy, v35, v34, v36);

    if ((objc_msgSend_isEqualToString_(v21, v37, @"Blank", v38) & 1) != 0 || objc_msgSend_isEqualToString_(v21, v39, @"20_Blank_Black", v40))
    {
      objc_msgSend_setStyleApplyClearsAll_(infoCopy, v39, 0, v40);
    }

    else
    {
      objc_msgSend_setStyleApplyClearsAll_(infoCopy, v39, 1, v40);
    }

    v41 = objc_alloc(MEMORY[0x277D80CD8]);
    v45 = objc_msgSend_context(infoCopy, v42, v43, v44);
    v123 = objc_msgSend_initWithContext_uidBased_(v41, v46, v45, 1);

    v118 = objc_msgSend_currencyCode(localeCopy, v47, v48, v49);
    LOWORD(v41) = TSUCurrencyCodeIndexForCode();
    v143[0] = MEMORY[0x277D85DD0];
    v143[1] = 3221225472;
    v143[2] = sub_2760C724C;
    v143[3] = &unk_27A6B0820;
    v148 = v41;
    v50 = v118;
    v144 = v50;
    selfCopy = self;
    v51 = bundleCopy;
    v145 = v51;
    v52 = localeCopy;
    v146 = v52;
    v53 = MEMORY[0x277C95D60](v143);
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = sub_2760C7578;
    v132[3] = &unk_27A6B0898;
    v121 = v53;
    v140 = v121;
    selfCopy2 = self;
    v119 = v124;
    v133 = v119;
    v54 = infoCopy;
    v134 = v54;
    v120 = v125;
    v135 = v120;
    v136 = v51;
    v137 = v52;
    v142 = v41;
    v55 = v50;
    v138 = v55;
    v56 = v123;
    v139 = v56;
    objc_msgSend_iterateCellsWithFlags_searchFlags_usingBlock_(v54, v57, 10, 4227072, v132, v118);
    v58 = MEMORY[0x277CBEBF8];
    if (objc_msgSend_count(v56, v59, v60, v61))
    {
      objc_msgSend_setCellsWithCellMap_ignoreFormulas_skipDirtyingNonFormulaCells_(v54, v62, v56, 0, 0);
      v67 = objc_msgSend_changeDescriptorsForTable_(v56, v65, v54, v66);
      v58 = objc_msgSend_first(v67, v68, v69, v70);
    }

    if (objc_msgSend_isCategorized(v54, v62, v63, v64))
    {
      v74 = objc_alloc(MEMORY[0x277D80CD8]);
      v78 = objc_msgSend_context(v54, v75, v76, v77);
      v80 = objc_msgSend_initWithContext_uidBased_(v74, v79, v78, 1);

      if (objc_msgSend_count(v80, v81, v82, v83))
      {
        objc_msgSend_applyCellMap_outPrunedCellMap_outInverseCellMap_options_stylesContainer_(v54, v84, v80, 0, 0, 0, 0);
        v89 = objc_msgSend_changeDescriptorsForTable_(v56, v87, v54, v88);
        v93 = objc_msgSend_first(v89, v90, v91, v92);
        v96 = objc_msgSend_arrayByAddingObjectsFromArray_(v58, v94, v93, v95);

        v58 = v96;
      }

      v97 = objc_msgSend_categoryOrder(v54, v84, v85, v86);
      objc_msgSend_setRowOrderUsingViewOrder(v97, v98, v99, v100);
      if (__p)
      {
        v131 = __p;
        operator delete(__p);
      }
    }

    if (objc_msgSend_count(v58, v71, v72, v73))
    {
      v104 = objc_msgSend_layoutEngine(v54, v101, v102, v103);
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v105 = v58;
      v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v106, &v126, v149, 16);
      if (v109)
      {
        v110 = *v127;
        do
        {
          for (i = 0; i != v109; ++i)
          {
            if (*v127 != v110)
            {
              objc_enumerationMutation(v105);
            }

            objc_msgSend_addChangeDescriptor_(v104, v107, *(*(&v126 + 1) + 8 * i), v108);
          }

          v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v107, &v126, v149, 16);
        }

        while (v109);
      }

      objc_msgSend_validate(v104, v112, v113, v114);
      objc_msgSend_clearRenderingCaches(v104, v115, v116, v117);
    }

    bundleCopy = v122;
  }
}

+ (void)localizeDropCapsInStorage:(id)storage withLocale:(id)locale
{
  storageCopy = storage;
  localeCopy = locale;
  v9 = objc_msgSend_localeIdentifier(localeCopy, v6, v7, v8);
  if (objc_msgSend_hasPrefix_(v9, v10, @"ar", v11) && objc_msgSend_supportsDropCaps(storageCopy, v12, v13, v14) && objc_msgSend_dropCapStyleCount(storageCopy, v15, v16, v17))
  {
    for (i = 0; i < objc_msgSend_paragraphCount(storageCopy, v18, v19, v20); ++i)
    {
      v24 = objc_msgSend_dropCapStyleAtParIndex_(storageCopy, v22, i, v23);

      if (v24)
      {
        objc_msgSend_setDropCapStyle_atParIndex_undoTransaction_(storageCopy, v18, 0, i, 0);
      }
    }
  }
}

+ (id)prelocalizedStringForStorage:(id)storage range:(_NSRange)range attachmentHandlingBlock:(id)block
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  blockCopy = block;
  v45 = location;
  v11 = objc_msgSend_substringWithRange_(storageCopy, v10, location, length);
  v44 = objc_msgSend_mutableCopy(v11, v12, v13, v14);

  v16 = location;
  v17 = length + location;
  if (location < length + location)
  {
    v18 = 1;
    do
    {
      v19 = objc_msgSend_attachmentIndexRangeForTextRange_(storageCopy, v15, v16, v17 - v16);
      if (!v20)
      {
        break;
      }

      v24 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(storageCopy, v20, v19, &v45);
      if (!v24)
      {
        v25 = MEMORY[0x277D81150];
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "+[TSADocumentRoot(Localization) prelocalizedStringForStorage:range:attachmentHandlingBlock:]", v23);
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot_Localization.mm", v28);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 1281, 0, "invalid nil value for '%{public}s'", "attachment");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
      }

      if (objc_msgSend_isDrawable(v24, v21, v22, v23) && (objc_msgSend_isAnchored(v24, v34, v35, v36) & 1) == 0)
      {
        v39 = objc_msgSend_identifierForAttachmentNumber_(self, v37, v18, v38);
        objc_msgSend_replaceCharactersInRange_withString_(v44, v40, v45 - location, 1, v39);
        if (blockCopy)
        {
          location = blockCopy[2](blockCopy, location, length, storageCopy, v45, v39);
          length = v41;
        }

        ++v18;
      }

      ++v45;

      v16 = v45;
      v17 = length + location;
    }

    while (v45 < length + location);
  }

  return v44;
}

+ (void)localizeTextStorage:(id)storage withTemplateBundle:(id)bundle andLocale:(id)locale
{
  v93 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  bundleCopy = bundle;
  localeCopy = locale;
  v70 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%C", v10, 65532);
  objc_msgSend_localizeDropCapsInStorage_withLocale_(self, v11, storageCopy, localeCopy);
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  objc_msgSend_rangesForLocalization(storageCopy, v12, v13, v14);
  obj = v75 = self;
  v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v87, v92, 16);
  if (v76)
  {
    v74 = *v88;
    do
    {
      for (i = 0; i != v76; ++i)
      {
        if (*v88 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v19 = objc_msgSend_rangeValue(*(*(&v87 + 1) + 8 * i), v16, v17, v18);
        v20 = v16;
        if (v16)
        {
          v21 = v19;
          objc_msgSend_attachmentIndexRangeForTextRange_(storageCopy, v16, v19, v16);
          v23 = v22;
          if (v22)
          {
            v24 = objc_opt_new();
            v84[0] = MEMORY[0x277D85DD0];
            v84[1] = 3221225472;
            v84[2] = sub_2760C8A88;
            v84[3] = &unk_27A6B08C0;
            v85 = storageCopy;
            v86 = v24;
            v25 = v24;
            v27 = objc_msgSend_prelocalizedStringForStorage_range_attachmentHandlingBlock_(v75, v26, v85, v21, v20, v84);
            v78 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v27, v28, v70, &stru_288512028);

            v20 = objc_msgSend_length(v78, v29, v30, v31);
          }

          else
          {
            v78 = objc_msgSend_substringWithRange_(storageCopy, 0, v21, v20);
            v25 = 0;
          }

          v77 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(v75, v32, v78, v78, @"TSATemplateLocalizable", bundleCopy, localeCopy);
          objc_msgSend_replaceCharactersInRange_withString_notifyObservers_undoTransaction_(storageCopy, v33, v21, v20);
          if (v23)
          {
            v82 = 0u;
            v83 = 0u;
            v80 = 0u;
            v81 = 0u;
            v37 = objc_msgSend_allKeys(v25, v34, v35, v36);
            v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v80, v91, 16);
            if (v42)
            {
              v43 = *v81;
              do
              {
                for (j = 0; j != v42; ++j)
                {
                  if (*v81 != v43)
                  {
                    objc_enumerationMutation(v37);
                  }

                  v45 = *(*(&v80 + 1) + 8 * j);
                  v46 = objc_msgSend_string(storageCopy, v39, v40, v41);
                  v49 = objc_msgSend_rangeOfString_(v46, v47, v45, v48);
                  v51 = v50;

                  if ((v49 + v51) >= 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v56 = MEMORY[0x277D81150];
                    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "+[TSADocumentRoot(Localization) localizeTextStorage:withTemplateBundle:andLocale:]", v53);
                    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot_Localization.mm", v59);
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v61, v57, v60, 1339, 0, "Failed to find attachment identifier after localization");

                    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64);
                  }

                  else
                  {
                    v54 = objc_msgSend_objectForKeyedSubscript_(v25, v52, v45, v53);
                    objc_msgSend_insertAttachmentOrFootnote_range_(storageCopy, v55, v54, v49, v51);
                  }
                }

                v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v39, &v80, v91, 16);
              }

              while (v42);
            }
          }
        }
      }

      v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v87, v92, 16);
    }

    while (v76);
  }

  v68 = objc_msgSend_range(storageCopy, v65, v66, v67);
  objc_msgSend_setLanguage_forCharRange_undoTransaction_(storageCopy, v69, 0, v68, v69, 0);
}

+ (void)localizeChartInfo:(id)info withTemplateBundle:(id)bundle andLocale:(id)locale
{
  v104 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  bundleCopy = bundle;
  localeCopy = locale;
  v91 = infoCopy;
  v95 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9, v10);
  v94 = objc_msgSend_chart(infoCopy, v11, v12, v13);
  v92 = objc_msgSend_objectValueForProperty_(v94, v14, 1124, v15);
  v93 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(self, v16, v92, v92, @"TSATemplateLocalizable", bundleCopy, localeCopy);
  if ((sub_2760C90D8(v92, v93) & 1) == 0)
  {
    v20 = MEMORY[0x277CBEAC0];
    v21 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v17, 1124, v19);
    v23 = objc_msgSend_dictionaryWithObject_forKey_(v20, v22, v93, v21);

    v24 = objc_alloc(MEMORY[0x277D80050]);
    v26 = objc_msgSend_initWithStyleOwner_mutations_(v24, v25, v94, v23);
    objc_msgSend_addObject_(v95, v27, v26, v28);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v29 = objc_msgSend_model(v94, v17, v18, v19);
  v33 = objc_msgSend_axisList(v29, v30, v31, v32);

  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v99, v103, 16);
  if (v37)
  {
    v38 = *v100;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v100 != v38)
        {
          objc_enumerationMutation(v33);
        }

        v40 = *(*(&v99 + 1) + 8 * i);
        v42 = objc_msgSend_objectValueForProperty_(v40, v35, 1062, v36);
        if (v42)
        {
          v43 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(self, v41, v42, v42, @"TSATemplateLocalizable", bundleCopy, localeCopy);
          if ((sub_2760C90D8(v43, v42) & 1) == 0)
          {
            v46 = MEMORY[0x277CBEAC0];
            v47 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v44, 1062, v45);
            v49 = objc_msgSend_dictionaryWithObject_forKey_(v46, v48, v43, v47);

            v50 = objc_alloc(MEMORY[0x277D80050]);
            v52 = objc_msgSend_initWithStyleOwner_mutations_(v50, v51, v40, v49);
            objc_msgSend_addObject_(v95, v53, v52, v54);
          }
        }
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v35, &v99, v103, 16);
    }

    while (v37);
  }

  v58 = objc_msgSend_model(v94, v55, v56, v57);
  v62 = objc_msgSend_grid(v58, v59, v60, v61);

  v69 = objc_msgSend_numberOfRows(v62, v63, v64, v65);
  if (v69)
  {
    v70 = 0;
    v71 = 1;
    do
    {
      v72 = objc_msgSend_nameForRow_(v62, v66, v70, v68);
      v74 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(self, v73, v72, v72, @"TSATemplateLocalizable", bundleCopy, localeCopy);
      objc_msgSend_setNameForRow_toName_(v62, v75, v70, v74);

      v70 = v71;
      v76 = v69 > v71++;
    }

    while (v76);
  }

  v80 = objc_msgSend_numberOfColumns(v62, v66, v67, v68);
  if (v80)
  {
    v81 = 0;
    v82 = 1;
    do
    {
      v83 = objc_msgSend_nameForColumn_(v62, v77, v81, v79);
      v85 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(self, v84, v83, v83, @"TSATemplateLocalizable", bundleCopy, localeCopy);
      objc_msgSend_setNameForColumn_toName_(v62, v86, v81, v85);

      v81 = v82;
      v76 = v80 > v82++;
    }

    while (v76);
  }

  v87 = objc_msgSend_model(v94, v77, v78, v79);
  objc_msgSend_invalidateModel(v87, v88, v89, v90);
}

+ (id)localizedFontNameForFontName:(id)name withLocale:(id)locale
{
  nameCopy = name;
  localeCopy = locale;
  if (!objc_msgSend_length(nameCopy, v7, v8, v9))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[TSADocumentRoot(Localization) localizedFontNameForFontName:withLocale:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot_Localization.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 1403, 0, "Invalid font name");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  if (!localeCopy)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[TSADocumentRoot(Localization) localizedFontNameForFontName:withLocale:]", v11);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSADocumentRoot_Localization.mm", v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 1404, 0, "Invalid locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
  }

  v30 = objc_msgSend_localizedStringForKey_value_table_(localeCopy, v10, nameCopy, nameCopy, @"TSATemplateFontNames");

  return v30;
}

@end