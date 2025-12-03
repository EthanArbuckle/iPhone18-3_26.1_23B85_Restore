@interface KNTheme
+ (NSSet)presetKinds;
+ (id)classicThemeNameFromTheme:(id)theme;
+ (id)generateUUID;
+ (id)makeLiveVideoSourceCollectionWithContext:(id)context;
+ (id)nativeThemeNameFromTheme:(id)theme;
+ (id)themeNameForCustomOrUnknownTheme;
+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(unint64_t)alternate;
+ (void)registerPresetSourceClasses;
- (BOOL)containsSlideNode:(id)node;
- (BOOL)containsTemplateSlideWithName:(id)name;
- (BOOL)customTimingCurvesContainsName:(id)name;
- (CGSize)thumbnailSize;
- (KNSlideNode)defaultTemplateSlideNode;
- (KNTheme)initWithContext:(id)context documentStylesheet:(id)stylesheet;
- (TSWPParagraphStyle)defaultPresenterNotesParagraphStyle;
- (double)cornerRadius;
- (id)captionStyles;
- (id)childEnumerator;
- (id)defaultSlideNodeForNewSelectionNearestToIndex:(unint64_t)index;
- (id)formulaReferenceNameForSlideNode:(id)node;
- (id)i_findDefaultTemplateSlideDuringArchiving;
- (id)mappedTemplateSlideForPasteForSlide:(id)slide;
- (id)mappedTemplateSlideForPasteForTemplateSlide:(id)slide;
- (id)mappedTemplateSlideForThemeChangeForTemplateSlide:(id)slide;
- (id)modelPathComponentForChild:(id)child;
- (id)nameForTemplateSlideCopyWithName:(id)name;
- (id)orderedSlideNodesInSelection:(id)selection;
- (id)p_findDefaultTemplateSlideWithoutLoadingSlides;
- (id)p_findFallbackDefaultTemplateSlide;
- (id)p_mappedTemplateSlideForTemplateSlide:(id)slide scoringHeuristic:(id)heuristic;
- (id)p_nameByIncrementingCounterAfterStringToAppend:(id)append forOriginalName:(id)name testForExistingName:(id)existingName;
- (id)slideNamesMatchingPrefix:(id)prefix;
- (id)slideNodeForFormulaReferenceName:(id)name caseSensitive:(BOOL)sensitive;
- (id)templateSlideWithName:(id)name;
- (id)themeCurvesForBuilds:(id)builds slideNodes:(id)nodes;
- (id)undeletableStyles;
- (id)updatedThemeCurveInfoForPastedThemeCurves:(id)curves;
- (int)p_matchScoreForTemplateSlide:(id)slide toTemplateSlide:(id)templateSlide;
- (unint64_t)indexOfSlideNode:(id)node;
- (void)addClassicThemeRecord:(id)record;
- (void)addDefaultPresenterNotesStylesIfAbsent;
- (void)addTemplateSlideNode:(id)node withThumbnails:(id)thumbnails dolcContext:(id)context;
- (void)createDefaultMotionBackgroundStylePresetsIfNeeded;
- (void)insertContainedModel:(id)model atIndex:(unint64_t)index;
- (void)insertTemplateSlideNode:(id)node withThumbnails:(id)thumbnails atIndex:(unint64_t)index dolcContext:(id)context;
- (void)invalidateSlideNameCache;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)moveModel:(id)model toIndex:(unint64_t)index;
- (void)p_cacheSlideNodes;
- (void)p_selectFallbackTemplateSlideAsDefault;
- (void)p_setDefaultTemplateSlideNode:(id)node;
- (void)removeAllClassicThemeRecords;
- (void)removeAllTemplateSlides;
- (void)removeContainedModel:(id)model;
- (void)removeCustomTimingCurveWithName:(id)name;
- (void)removeTemplateSlideNode:(id)node;
- (void)resolveDefaultTemplateSlide;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)selectFallbackTemplateSlideAsDefault;
- (void)setClassicThemeRecords:(id)records;
- (void)setCustomEffectTimingCurves:(id)curves;
- (void)setCustomTimingCurve:(id)curve forName:(id)name;
- (void)setDefaultTemplateSlideNode:(id)node;
- (void)setTemplateSlides:(id)slides;
- (void)setUUID:(id)d;
- (void)takeLiveVideoSourceCollectionFromTheme:(id)theme;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation KNTheme

- (void)setTemplateSlides:(id)slides
{
  slidesCopy = slides;
  if (self->_templateSlides != slidesCopy)
  {
    v8 = slidesCopy;
    objc_msgSend_willModify(self, v6, v7);
    objc_storeStrong(&self->_templateSlides, slides);
    slidesCopy = v8;
  }
}

- (void)setUUID:(id)d
{
  dCopy = d;
  if (self->_UUID != dCopy)
  {
    v8 = dCopy;
    objc_msgSend_willModify(self, v6, v7);
    objc_storeStrong(&self->_UUID, d);
    dCopy = v8;
  }
}

- (KNSlideNode)defaultTemplateSlideNode
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_275D82E64;
  v19 = sub_275D82E74;
  v20 = 0;
  defaultTemplateSlideNodeQueue = self->_defaultTemplateSlideNodeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275D82E7C;
  block[3] = &unk_27A698618;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(defaultTemplateSlideNodeQueue, block);
  v4 = v16[5];
  if (!v4)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[KNTheme defaultTemplateSlideNode]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 128, 0, "invalid nil value for '%{public}s'", "defaultTemplateSlideNode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    v4 = v16[5];
  }

  v12 = v4;
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (void)p_setDefaultTemplateSlideNode:(id)node
{
  if (node)
  {
    objc_storeWeak(&self->_defaultTemplateSlideNode, node);
    self->_defaultTemplateSlideNodeIsOurBestGuess = 0;
  }

  else
  {
    self->_defaultTemplateSlideNodeIsOurBestGuess = 1;
    p_defaultTemplateSlideNode = &self->_defaultTemplateSlideNode;

    objc_storeWeak(p_defaultTemplateSlideNode, 0);
  }
}

- (void)setDefaultTemplateSlideNode:(id)node
{
  nodeCopy = node;
  objc_msgSend_willModify(self, v5, v6);
  defaultTemplateSlideNodeQueue = self->_defaultTemplateSlideNodeQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_275D83104;
  v9[3] = &unk_27A697C10;
  v9[4] = self;
  v10 = nodeCopy;
  v8 = nodeCopy;
  dispatch_barrier_async(defaultTemplateSlideNodeQueue, v9);
}

- (double)cornerRadius
{
  v3 = objc_msgSend_UUID(self, a2, v2);
  isEqualToString = objc_msgSend_isEqualToString_(v3, v4, @"BA9B2754-51C9-4F08-AE5B-20C9754ED937");

  result = 0.0;
  if (isEqualToString)
  {
    return 12.0;
  }

  return result;
}

- (id)captionStyles
{
  v6 = objc_msgSend_documentStylesheet(self, a2, v2);
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNTheme captionStyles]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 744, 0, "invalid nil value for '%{public}s'", "documentStylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_context(self, v4, v5);
  v17 = objc_msgSend_documentRoot(v14, v15, v16);
  v20 = objc_msgSend_documentLocale(v17, v18, v19);

  v22 = objc_msgSend_localizedStringForKey_value_table_(v20, v21, @"Caption Small", &stru_2884D8E20, @"Keynote");
  v24 = objc_msgSend_stylesWithName_(v6, v23, v22);

  return v24;
}

+ (id)generateUUID
{
  v3 = objc_msgSend_UUID(MEMORY[0x277CCAD78], a2, v2);
  v6 = objc_msgSend_UUIDString(v3, v4, v5);

  return v6;
}

+ (id)nativeThemeNameFromTheme:(id)theme
{
  v3 = objc_msgSend_UUID(theme, a2, theme);
  v4 = MEMORY[0x277CCA8D8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_bundleForClass_(v4, v6, v5);
  v9 = objc_msgSend_pathForResource_ofType_(v7, v8, @"NativeThemes", @"plist");

  v11 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x277CBEAC0], v10, v9);
  v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, v3);

  return v13;
}

+ (id)classicThemeNameFromTheme:(id)theme
{
  v3 = objc_msgSend_UUID(theme, a2, theme);
  v4 = MEMORY[0x277CCA8D8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_bundleForClass_(v4, v6, v5);
  v9 = objc_msgSend_pathForResource_ofType_(v7, v8, @"ClassicThemes", @"plist");

  v11 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x277CBEAC0], v10, v9);
  v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, v3);
  v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"ClassicTheme");

  return v15;
}

+ (id)themeNameForCustomOrUnknownTheme
{
  v2 = sub_275DC204C();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, @"Custom Theme", &stru_2884D8E20, @"Keynote");

  return v4;
}

- (KNTheme)initWithContext:(id)context documentStylesheet:(id)stylesheet
{
  contextCopy = context;
  v25.receiver = self;
  v25.super_class = KNTheme;
  v9 = [(KNTheme *)&v25 initWithContext:contextCopy documentStylesheet:stylesheet];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    templateSlides = v9->_templateSlides;
    v9->_templateSlides = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    customEffectTimingCurves = v9->_customEffectTimingCurves;
    v9->_customEffectTimingCurves = v12;

    v14 = dispatch_queue_create("KNTheme.DefaultTemplateSlideNode", MEMORY[0x277D85CD8]);
    defaultTemplateSlideNodeQueue = v9->_defaultTemplateSlideNodeQueue;
    v9->_defaultTemplateSlideNodeQueue = v14;

    v18 = objc_msgSend_generateUUID(KNTheme, v16, v17);
    UUID = v9->_UUID;
    v9->_UUID = v18;

    v20 = objc_opt_class();
    v22 = objc_msgSend_makeLiveVideoSourceCollectionWithContext_(v20, v21, contextCopy);
    liveVideoSourceCollection = v9->_liveVideoSourceCollection;
    v9->_liveVideoSourceCollection = v22;
  }

  objc_msgSend_addDefaultPresenterNotesStylesIfAbsent(v9, v7, v8);

  return v9;
}

- (CGSize)thumbnailSize
{
  v2 = 133.0;
  v3 = 100.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)addTemplateSlideNode:(id)node withThumbnails:(id)thumbnails dolcContext:(id)context
{
  contextCopy = context;
  thumbnailsCopy = thumbnails;
  nodeCopy = node;
  v17 = objc_msgSend_templateSlides(self, v11, v12);
  v15 = objc_msgSend_count(v17, v13, v14);
  objc_msgSend_insertTemplateSlideNode_withThumbnails_atIndex_dolcContext_(self, v16, nodeCopy, thumbnailsCopy, v15, contextCopy);
}

- (void)insertTemplateSlideNode:(id)node withThumbnails:(id)thumbnails atIndex:(unint64_t)index dolcContext:(id)context
{
  v85 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  thumbnailsCopy = thumbnails;
  contextCopy = context;
  selfCopy = self;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v10 = self->_templateSlides;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v79, v84, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v80;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v80 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v79 + 1) + 8 * i);
        v19 = objc_msgSend_objectUUID(nodeCopy, v13, v14);
        v22 = objc_msgSend_objectUUID(v18, v20, v21);
        isEqual = objc_msgSend_isEqual_(v19, v23, v22);

        if (isEqual)
        {
          v25 = MEMORY[0x277D81150];
          v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[KNTheme insertTemplateSlideNode:withThumbnails:atIndex:dolcContext:]");
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 853, 0, "Duplicate template slide node is being inserted. An error has occurred in template slide mapping.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v79, v84, 16);
    }

    while (v15);
  }

  objc_opt_class();
  v34 = objc_msgSend_slide(nodeCopy, v32, v33);
  v35 = TSUDynamicCast();

  if (!v35)
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[KNTheme insertTemplateSlideNode:withThumbnails:atIndex:dolcContext:]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v42, v39, v41, 858, 0, "templateSlideNode's slide must be a KNTemplateSlide.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
  }

  objc_msgSend_willModify(self, v36, v37);
  v47 = objc_msgSend_documentRoot(self, v45, v46);
  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(nodeCopy, v48, v47, contextCopy);

  objc_msgSend_willBeAddedToTheme_(v35, v49, self);
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v50 = thumbnailsCopy;
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v75, v83, 16);
  if (v52)
  {
    v54 = v52;
    v55 = *v76;
    do
    {
      for (j = 0; j != v54; ++j)
      {
        if (*v76 != v55)
        {
          objc_enumerationMutation(v50);
        }

        v57 = *(*(&v75 + 1) + 8 * j);
        objc_msgSend_naturalSizeForImageData_(MEMORY[0x277D801D0], v53, v57);
        objc_msgSend_addThumbnail_atSize_(nodeCopy, v58, v57);
      }

      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v53, &v75, v83, 16);
    }

    while (v54);
  }

  v61 = objc_msgSend_mutableCopy(selfCopy->_templateSlides, v59, v60);
  objc_msgSend_insertObject_atIndex_(v61, v62, nodeCopy, index);
  templateSlides = selfCopy->_templateSlides;
  selfCopy->_templateSlides = v61;

  v66 = objc_msgSend_documentRoot(selfCopy, v64, v65);
  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(nodeCopy, v67, v66, contextCopy);

  objc_msgSend_wasAddedToTheme_(v35, v68, selfCopy);
  objc_msgSend_p_cacheSlideNodes(selfCopy, v69, v70);
}

- (BOOL)containsTemplateSlideWithName:(id)name
{
  v3 = objc_msgSend_templateSlideWithName_(self, a2, name);
  v4 = v3 != 0;

  return v4;
}

- (id)templateSlideWithName:(id)name
{
  v34 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_templateSlides;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v29, v33, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v30 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v29 + 1) + 8 * v9);
      objc_opt_class();
      v13 = objc_msgSend_slide(v10, v11, v12);
      v14 = TSUDynamicCast();

      v17 = objc_msgSend_documentRoot(self, v15, v16);
      v20 = objc_msgSend_documentLocale(v17, v18, v19);
      v23 = objc_msgSend_name(v14, v21, v22);
      IsEqual_toString = objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(v20, v24, nameCopy, v23);

      if (IsEqual_toString)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v29, v33, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v14 = 0;
  }

  return v14;
}

- (id)nameForTemplateSlideCopyWithName:(id)name
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_275D83D48;
  v5[3] = &unk_27A698640;
  v5[4] = self;
  v3 = objc_msgSend_tsu_stringByIncrementingCounterAfterDuplicateTitleModifierWithUniquenessTest_(name, a2, v5);

  return v3;
}

- (void)setCustomEffectTimingCurves:(id)curves
{
  curvesCopy = curves;
  objc_msgSend_willModify(self, v5, v6);
  v9 = objc_msgSend_mutableCopy(curvesCopy, v7, v8);

  customEffectTimingCurves = self->_customEffectTimingCurves;
  self->_customEffectTimingCurves = v9;
}

- (void)setCustomTimingCurve:(id)curve forName:(id)name
{
  nameCopy = name;
  curveCopy = curve;
  objc_msgSend_willModify(self, v7, v8);
  objc_msgSend_setObject_forKeyedSubscript_(self->_customEffectTimingCurves, v9, curveCopy, nameCopy);
}

- (BOOL)customTimingCurvesContainsName:(id)name
{
  v3 = objc_msgSend_objectForKeyedSubscript_(self->_customEffectTimingCurves, a2, name);
  v4 = v3 != 0;

  return v4;
}

- (void)removeCustomTimingCurveWithName:(id)name
{
  nameCopy = name;
  objc_msgSend_willModify(self, v4, v5);
  objc_msgSend_removeObjectForKey_(self->_customEffectTimingCurves, v6, nameCopy);
}

- (id)updatedThemeCurveInfoForPastedThemeCurves:(id)curves
{
  v55 = *MEMORY[0x277D85DE8];
  curvesCopy = curves;
  v43 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6);
  v44 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8);
  selfCopy = self;
  v45 = objc_msgSend_customEffectTimingCurves(self, v9, v10);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v11 = curvesCopy;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v48, v54, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v49;
    v41 = v47;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v48 + 1) + 8 * i);
        v19 = objc_msgSend_objectForKeyedSubscript_(v11, v14, v18, v41);
        v21 = objc_msgSend_objectForKeyedSubscript_(v45, v20, v18);
        v24 = v21;
        if (v21)
        {
          v25 = objc_msgSend_bezierPath(v21, v22, v23);
          v28 = objc_msgSend_bezierPath(v19, v26, v27);
          isEqual = objc_msgSend_isEqual_(v25, v29, v28);

          if ((isEqual & 1) == 0)
          {
            v31 = sub_275DC204C();
            v33 = objc_msgSend_localizedStringForKey_value_table_(v31, v32, @" copy", &stru_2884D8E20, @"Keynote");

            v46[0] = MEMORY[0x277D85DD0];
            v46[1] = 3221225472;
            v47[0] = sub_275D84200;
            v47[1] = &unk_27A698640;
            v47[2] = selfCopy;
            v35 = objc_msgSend_p_nameByIncrementingCounterAfterStringToAppend_forOriginalName_testForExistingName_(selfCopy, v34, v33, v18, v46);
            objc_msgSend_setObject_forKeyedSubscript_(v44, v36, v19, v35);
            objc_msgSend_setObject_forKeyedSubscript_(v43, v37, v35, v18);
          }
        }

        else
        {
          objc_msgSend_setObject_forKeyedSubscript_(v44, v22, v19, v18);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v48, v54, 16);
    }

    while (v15);
  }

  v52[0] = @"KNThemeCustomEffectTimingCurveOldToNewNameMapKey";
  v52[1] = @"KNThemeCustomEffectTimingCurveCurvesToAddKey";
  v53[0] = v43;
  v53[1] = v44;
  v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, v53, v52, 2);

  return v39;
}

- (id)themeCurvesForBuilds:(id)builds slideNodes:(id)nodes
{
  v102 = *MEMORY[0x277D85DE8];
  buildsCopy = builds;
  nodesCopy = nodes;
  selfCopy = self;
  if (!selfCopy)
  {
    v75 = MEMORY[0x277D81150];
    v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[KNTheme themeCurvesForBuilds:slideNodes:]");
    v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v79, v76, v78, 968, 0, "Invalid parameter not satisfying: %{public}s", "currentTheme != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81);
    if (buildsCopy)
    {
      goto LABEL_3;
    }

LABEL_28:
    v68 = 0;
    goto LABEL_29;
  }

  if (!buildsCopy)
  {
    goto LABEL_28;
  }

LABEL_3:
  v85 = nodesCopy;
  v83 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9);
  v13 = objc_msgSend_set(MEMORY[0x277CBEB58], v11, v12);
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v84 = buildsCopy;
  v14 = buildsCopy;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v95, v101, 16);
  if (v16)
  {
    v19 = v16;
    v20 = *v96;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v96 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v22 = objc_msgSend_attributes(*(*(&v95 + 1) + 8 * i), v17, v18);
        v25 = objc_msgSend_attributes(v22, v23, v24);

        v27 = objc_msgSend_objectForKeyedSubscript_(v25, v26, @"KNAnimationAttributesCustomEffectTimingCurveThemeName1");
        objc_msgSend_tsu_addNonNilObject_(v13, v28, v27);

        v30 = objc_msgSend_objectForKeyedSubscript_(v25, v29, @"KNAnimationAttributesCustomEffectTimingCurveThemeName2");
        objc_msgSend_tsu_addNonNilObject_(v13, v31, v30);

        v33 = objc_msgSend_objectForKeyedSubscript_(v25, v32, @"KNAnimationAttributesCustomEffectTimingCurveThemeName3");
        objc_msgSend_tsu_addNonNilObject_(v13, v34, v33);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v95, v101, 16);
    }

    while (v19);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v85;
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v91, v100, 16);
  if (v36)
  {
    v37 = v36;
    v38 = *v92;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v92 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v91 + 1) + 8 * j);
        objc_opt_class();
        v43 = objc_msgSend_slide(v40, v41, v42);
        v46 = objc_msgSend_transition(v43, v44, v45);
        v47 = TSUCheckedDynamicCast();

        v50 = objc_msgSend_attributes(v47, v48, v49);
        v53 = objc_msgSend_attributes(v50, v51, v52);

        v55 = objc_msgSend_objectForKeyedSubscript_(v53, v54, @"KNAnimationAttributesCustomEffectTimingCurveThemeName1");
        objc_msgSend_tsu_addNonNilObject_(v13, v56, v55);

        v58 = objc_msgSend_objectForKeyedSubscript_(v53, v57, @"KNAnimationAttributesCustomEffectTimingCurveThemeName2");
        objc_msgSend_tsu_addNonNilObject_(v13, v59, v58);

        v61 = objc_msgSend_objectForKeyedSubscript_(v53, v60, @"KNAnimationAttributesCustomEffectTimingCurveThemeName3");
        objc_msgSend_tsu_addNonNilObject_(v13, v62, v61);
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v63, &v91, v100, 16);
    }

    while (v37);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v64 = v13;
  v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v87, v99, 16);
  v68 = v83;
  if (v66)
  {
    v69 = v66;
    v70 = *v88;
    do
    {
      for (k = 0; k != v69; ++k)
      {
        if (*v88 != v70)
        {
          objc_enumerationMutation(v64);
        }

        v72 = *(*(&v87 + 1) + 8 * k);
        v74 = objc_msgSend_customTimingCurveWithName_(selfCopy, v67, v72);
        if (v74)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v83, v73, v74, v72);
        }
      }

      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v67, &v87, v99, 16);
    }

    while (v69);
  }

  buildsCopy = v84;
  nodesCopy = v85;
LABEL_29:

  return v68;
}

- (id)p_nameByIncrementingCounterAfterStringToAppend:(id)append forOriginalName:(id)name testForExistingName:(id)existingName
{
  appendCopy = append;
  nameCopy = name;
  existingNameCopy = existingName;
  v10 = nameCopy;
  v44 = v10;
  if (existingNameCopy[2](existingNameCopy, v10))
  {
    v12 = v10;
    do
    {
      v13 = MEMORY[0x277CBEB18];
      v14 = objc_msgSend_componentsSeparatedByString_(v12, v11, appendCopy);
      v16 = objc_msgSend_arrayWithArray_(v13, v15, v14);

      if (objc_msgSend_count(v16, v17, v18) < 2)
      {
        objc_msgSend_addObject_(v16, v19, &stru_2884D8E20);
      }

      else
      {
        v21 = objc_msgSend_lastObject(v16, v19, v20);
        v24 = objc_msgSend_length(v21, v22, v23);

        if (v24)
        {
          v27 = objc_msgSend_lastObject(v16, v25, v26);
          v30 = objc_msgSend_integerValue(v27, v28, v29);

          objc_msgSend_removeLastObject(v16, v31, v32);
          v33 = MEMORY[0x277CCABB8];
          v35 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v34, v30 + 1);
          v37 = objc_msgSend_localizedStringFromNumber_numberStyle_(v33, v36, v35, 1);
        }

        else
        {
          objc_msgSend_removeLastObject(v16, v25, v26);
          v37 = objc_msgSend_localizedStringFromNumber_numberStyle_(MEMORY[0x277CCABB8], v40, &unk_2884F36C0, 1);
        }

        v41 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v38, @" %@", v37);
        objc_msgSend_addObject_(v16, v42, v41);
      }

      v10 = objc_msgSend_componentsJoinedByString_(v16, v39, appendCopy);

      v12 = v10;
    }

    while ((existingNameCopy[2](existingNameCopy, v10) & 1) != 0);
  }

  return v10;
}

- (void)removeTemplateSlideNode:(id)node
{
  nodeCopy = node;
  v7 = objc_msgSend_slide(nodeCopy, v5, v6);
  isTemplateSlide = objc_msgSend_isTemplateSlide(v7, v8, v9);

  if ((isTemplateSlide & 1) == 0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[KNTheme removeTemplateSlideNode:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 1039, 0, "templateSlideNode's slide must be a KNTemplateSlide.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  objc_msgSend_willModify(self, v11, v12);
  v22 = objc_msgSend_documentRoot(self, v20, v21);
  objc_msgSend_willBeRemovedFromDocumentRoot_(nodeCopy, v23, v22);

  objc_opt_class();
  v31 = TSUDynamicCast();
  objc_msgSend_removeObject_(v31, v24, nodeCopy);
  v27 = objc_msgSend_documentRoot(self, v25, v26);
  objc_msgSend_wasRemovedFromDocumentRoot_(nodeCopy, v28, v27);

  objc_msgSend_p_cacheSlideNodes(self, v29, v30);
}

- (void)removeAllTemplateSlides
{
  v42 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, v2);
  v6 = objc_msgSend_templateSlides(self, v4, v5);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v36, v41, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v37;
    do
    {
      v13 = 0;
      do
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v36 + 1) + 8 * v13);
        v15 = objc_msgSend_documentRoot(self, v9, v10);
        objc_msgSend_willBeRemovedFromDocumentRoot_(v14, v16, v15);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v36, v41, 16);
    }

    while (v11);
  }

  v17 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10);
  objc_msgSend_setTemplateSlides_(self, v18, v17);

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v6;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v32, v40, 16);
  if (v21)
  {
    v24 = v21;
    v25 = *v33;
    do
    {
      v26 = 0;
      do
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(v19);
        }

        v27 = *(*(&v32 + 1) + 8 * v26);
        v28 = objc_msgSend_documentRoot(self, v22, v23, v32);
        objc_msgSend_wasRemovedFromDocumentRoot_(v27, v29, v28);

        ++v26;
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v32, v40, 16);
    }

    while (v24);
  }

  objc_msgSend_p_cacheSlideNodes(self, v30, v31);
}

- (id)defaultSlideNodeForNewSelectionNearestToIndex:(unint64_t)index
{
  v4 = objc_msgSend_templateSlides(self, a2, index);
  v9 = objc_msgSend_count(v4, v5, v6);
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNTheme defaultSlideNodeForNewSelectionNearestToIndex:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 1079, 0, "Invalid index passed to the theme.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  if (v9)
  {
    if (v9 <= index)
    {
      objc_msgSend_lastObject(v4, v7, v8);
    }

    else
    {
      objc_msgSend_objectAtIndexedSubscript_(v4, v7, index);
    }
    v17 = ;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)containsSlideNode:(id)node
{
  nodeCopy = node;
  v7 = objc_msgSend_templateSlides(self, v5, v6);
  v9 = objc_msgSend_containsObject_(v7, v8, nodeCopy);

  return v9;
}

- (unint64_t)indexOfSlideNode:(id)node
{
  nodeCopy = node;
  v7 = objc_msgSend_templateSlides(self, v5, v6);
  v9 = objc_msgSend_indexOfObject_(v7, v8, nodeCopy);

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[KNTheme indexOfSlideNode:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 1100, 0, "Slide node does not exist in this theme.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  return v9;
}

- (id)orderedSlideNodesInSelection:(id)selection
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_slideNodes(selection, a2, selection);
  v7 = objc_msgSend_count(v4, v5, v6);
  v9 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v8, v7);
  if (objc_msgSend_count(v4, v10, v11))
  {
    v14 = objc_msgSend_templateSlides(self, v12, v13);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v23, v27, 16);
    if (v16)
    {
      v18 = v16;
      v19 = *v24;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v23 + 1) + 8 * i);
          if (objc_msgSend_containsObject_(v4, v17, v21))
          {
            objc_msgSend_addObject_(v9, v17, v21);
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v23, v27, 16);
      }

      while (v18);
    }
  }

  return v9;
}

- (int)p_matchScoreForTemplateSlide:(id)slide toTemplateSlide:(id)templateSlide
{
  v182 = *MEMORY[0x277D85DE8];
  slideCopy = slide;
  templateSlideCopy = templateSlide;
  isTitleVisible = objc_msgSend_isTitleVisible(templateSlideCopy, v8, v9);
  isBodyVisible = objc_msgSend_isBodyVisible(templateSlideCopy, v11, v12);
  v16 = objc_msgSend_documentRoot(self, v14, v15);
  v19 = objc_msgSend_show(v16, v17, v18);
  objc_msgSend_size(v19, v20, v21);
  TSUPointLength();
  v23 = v22;

  v26 = objc_msgSend_name(slideCopy, v24, v25);
  v29 = objc_msgSend_name(templateSlideCopy, v27, v28);
  isEqualToString = objc_msgSend_isEqualToString_(v26, v30, v29);

  if (isEqualToString)
  {
    v34 = 100000;
  }

  else
  {
    v35 = objc_msgSend_name(slideCopy, v32, v33);
    v38 = objc_msgSend_name(templateSlideCopy, v36, v37);
    v40 = objc_msgSend_rangeOfString_options_(v35, v39, v38, 1);
    v42 = v41;

    if (v40 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v45 = objc_msgSend_name(templateSlideCopy, v43, v44);
      v48 = objc_msgSend_name(slideCopy, v46, v47);
      objc_msgSend_rangeOfString_options_(v45, v49, v48, 1);
      v42 = v50;
    }

    v51 = v42;
    v52 = objc_msgSend_name(slideCopy, v43, v44);
    v55 = objc_msgSend_length(v52, v53, v54);

    v58 = objc_msgSend_name(templateSlideCopy, v56, v57);
    v61 = objc_msgSend_length(v58, v59, v60);

    if (v55 <= v61)
    {
      v62 = v61;
    }

    else
    {
      v62 = v55;
    }

    v34 = (v51 / v62 * 1000.0);
  }

  v167 = isTitleVisible;
  v164 = objc_msgSend_isTitleVisible(slideCopy, v32, v33);
  if (isTitleVisible == v164)
  {
    v34 += 10000;
  }

  v65 = objc_msgSend_isBodyVisible(slideCopy, v63, v64);
  v168 = isBodyVisible;
  if (isBodyVisible != v65)
  {
    v68 = v34;
  }

  else
  {
    v68 = v34 + 10000;
  }

  v165 = v68;
  v166 = v65;
  v170 = slideCopy;
  v69 = objc_msgSend_placeholdersForTags(slideCopy, v66, v67);
  v72 = objc_msgSend_placeholdersForTags(templateSlideCopy, v70, v71);
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v75 = objc_msgSend_keyEnumerator(v69, v73, v74);
  v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v76, &v176, v181, 16);
  if (v77)
  {
    v79 = v77;
    v80 = 0;
    v81 = 0;
    v82 = *v177;
    do
    {
      for (i = 0; i != v79; ++i)
      {
        if (*v177 != v82)
        {
          objc_enumerationMutation(v75);
        }

        v84 = objc_msgSend_objectForKey_(v72, v78, *(*(&v176 + 1) + 8 * i));

        if (v84)
        {
          ++v80;
        }

        else
        {
          ++v81;
        }
      }

      v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v78, &v176, v181, 16);
    }

    while (v79);
  }

  else
  {
    v80 = 0;
    v81 = 0;
  }

  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v87 = objc_msgSend_keyEnumerator(v72, v85, v86);
  v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v88, &v172, v180, 16);
  if (v89)
  {
    v91 = v89;
    v92 = *v173;
    do
    {
      for (j = 0; j != v91; ++j)
      {
        if (*v173 != v92)
        {
          objc_enumerationMutation(v87);
        }

        v94 = objc_msgSend_objectForKey_(v69, v90, *(*(&v172 + 1) + 8 * j));

        if (v94)
        {
          ++v80;
        }

        else
        {
          ++v81;
        }
      }

      v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v90, &v172, v180, 16);
    }

    while (v91);
  }

  v95 = v167 & v164;

  if (v80 + 1 + v81)
  {
    v98 = ((v80 + 1) / (v80 + 1 + v81) * 10000.0);
  }

  else
  {
    v98 = 10000;
  }

  v169 = v168 & v166;
  v99 = v98 + v165;
  v100 = objc_msgSend_background(v170, v96, v97);
  v103 = objc_msgSend_fill(v100, v101, v102);
  v106 = objc_msgSend_background(templateSlideCopy, v104, v105);
  v109 = objc_msgSend_fill(v106, v107, v108);
  isEqual = objc_msgSend_isEqual_(v103, v110, v109);

  if (isEqual)
  {
    v112 = v99 + 1000;
  }

  else
  {
    v112 = v99;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_275D856EC;
  aBlock[3] = &unk_27A698660;
  aBlock[4] = v23;
  v115 = _Block_copy(aBlock);
  v116 = 0.0;
  if (v95)
  {
    objc_msgSend_titlePlaceholder(v170, v113, v114);
    v118 = v117 = v112;
    v121 = objc_msgSend_geometry(v118, v119, v120);
    v124 = objc_msgSend_titlePlaceholder(templateSlideCopy, v122, v123);
    v127 = objc_msgSend_geometry(v124, v125, v126);
    v116 = v115[2](v115, v121, v127) + 0.0;

    v112 = v117;
  }

  v128 = v169;
  if (v169)
  {
    objc_msgSend_bodyPlaceholder(v170, v113, v114);
    v130 = v129 = v112;
    v133 = objc_msgSend_geometry(v130, v131, v132);
    v136 = objc_msgSend_bodyPlaceholder(templateSlideCopy, v134, v135);
    v139 = objc_msgSend_geometry(v136, v137, v138);
    v116 = v116 + v115[2](v115, v133, v139);

    v112 = v129;
    v95 = v167 & v164;
  }

  v140 = v112 + (v116 * 100.0);
  if (v95)
  {
    v141 = objc_msgSend_titlePlaceholder(v170, v113, v114);
    v143 = sub_275D85838(v141, v141, v142);
    v146 = objc_msgSend_titlePlaceholder(templateSlideCopy, v144, v145);
    v148 = v143 ^ sub_275D85838(v146, v146, v147);

    v149 = v148 == 0;
    v128 = v169;
    if (v149)
    {
      v140 += 100;
    }
  }

  if (v128)
  {
    v150 = v170;
    v151 = objc_msgSend_bodyPlaceholder(v170, v113, v114);
    v153 = sub_275D85838(v151, v151, v152);
    v156 = objc_msgSend_bodyPlaceholder(templateSlideCopy, v154, v155);
    v158 = v153 ^ sub_275D85838(v156, v156, v157);

    if (!v158)
    {
      v140 += 100;
    }
  }

  else
  {
    v150 = v170;
  }

  isSlideNumberVisible = objc_msgSend_isSlideNumberVisible(v150, v113, v114);
  if (isSlideNumberVisible != objc_msgSend_isSlideNumberVisible(templateSlideCopy, v160, v161))
  {
    v162 = v140;
  }

  else
  {
    v162 = v140 + 10;
  }

  return v162;
}

- (id)p_mappedTemplateSlideForTemplateSlide:(id)slide scoringHeuristic:(id)heuristic
{
  v30 = *MEMORY[0x277D85DE8];
  slideCopy = slide;
  heuristicCopy = heuristic;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = objc_msgSend_templateSlides(self, v7, v8);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v25, v29, 16);
  if (v10)
  {
    v13 = v10;
    v14 = 0;
    v15 = 0;
    v16 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = objc_msgSend_slide(*(*(&v25 + 1) + 8 * i), v11, v12, slideCopy);
        v19 = heuristicCopy[2](heuristicCopy, v18);
        if (v19 > v14)
        {
          v20 = v19;
          v21 = v18;

          v14 = v20;
          v15 = v21;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v25, v29, 16);
    }

    while (v13);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)mappedTemplateSlideForPasteForTemplateSlide:(id)slide
{
  v37 = *MEMORY[0x277D85DE8];
  slideCopy = slide;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  selfCopy = self;
  v7 = objc_msgSend_templateSlides(self, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v32, v36, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        v16 = objc_msgSend_slide(v13, v14, v15);
        v17 = TSUDynamicCast();

        v20 = objc_msgSend_objectUUID(v17, v18, v19);
        v23 = objc_msgSend_objectUUID(slideCopy, v21, v22);
        isEqual = objc_msgSend_isEqual_(v20, v24, v23);

        if (isEqual)
        {

          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v26, &v32, v36, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_275D85C3C;
  v30[3] = &unk_27A698688;
  v30[4] = selfCopy;
  v31 = slideCopy;
  v17 = objc_msgSend_p_mappedTemplateSlideForTemplateSlide_scoringHeuristic_(selfCopy, v27, v31, v30);

LABEL_11:

  return v17;
}

- (id)mappedTemplateSlideForThemeChangeForTemplateSlide:(id)slide
{
  slideCopy = slide;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_275D85D94;
  v19 = &unk_27A698688;
  selfCopy = self;
  v21 = slideCopy;
  v5 = slideCopy;
  v9 = objc_msgSend_p_mappedTemplateSlideForTemplateSlide_scoringHeuristic_(self, v6, v5, &v16);
  if (!v9)
  {
    v10 = objc_msgSend_templateSlides(self, v7, v8, v16, v17, v18, v19, selfCopy, v21);
    v12 = objc_msgSend_objectAtIndexedSubscript_(v10, v11, 0);
    v9 = objc_msgSend_slide(v12, v13, v14);
  }

  return v9;
}

- (id)mappedTemplateSlideForPasteForSlide:(id)slide
{
  v4 = objc_msgSend_templateSlide(slide, a2, slide);
  v6 = objc_msgSend_mappedTemplateSlideForPasteForTemplateSlide_(self, v5, v4);

  return v6;
}

- (void)createDefaultMotionBackgroundStylePresetsIfNeeded
{
  v3 = *MEMORY[0x277D80B60];
  v4 = objc_msgSend_presetsOfKind_(self, a2, *MEMORY[0x277D80B60]);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (!v7)
  {
    v10 = objc_msgSend_documentStylesheet(self, v8, v9);
    v11 = objc_opt_class();
    v13 = objc_msgSend_identifiedStylesOfClass_(v10, v12, v11);

    if (objc_msgSend_count(v13, v14, v15))
    {
      v17 = objc_msgSend_sortedArrayUsingComparator_(v13, v16, &unk_2884D4E90);
      objc_msgSend_setPresets_ofKind_(self, v18, v17, v3);
    }
  }

  v19 = objc_msgSend_presetsOfKind_(self, v8, v3);
  v22 = objc_msgSend_count(v19, v20, v21);

  if (!v22)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_275D85FC0;
    v24[3] = &unk_27A6986D0;
    v24[4] = self;
    objc_msgSend_upgradeStylesWithBlock_(self, v23, v24);
  }
}

+ (void)registerPresetSourceClasses
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___KNTheme;
  objc_msgSendSuper2(&v5, sel_registerPresetSourceClasses);
  v3 = objc_opt_class();
  objc_msgSend_registerPresetSourceClass_(self, v4, v3);
}

+ (NSSet)presetKinds
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___KNTheme;
  v2 = objc_msgSendSuper2(&v13, sel_presetKinds);
  v3 = MEMORY[0x277CBEB98];
  v4 = *MEMORY[0x277D80B88];
  v14[0] = *MEMORY[0x277D80B70];
  v14[1] = v4;
  v5 = *MEMORY[0x277D80B60];
  v14[2] = *MEMORY[0x277D80BB8];
  v14[3] = v5;
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, v14, 4);
  v9 = objc_msgSend_setWithArray_(v3, v8, v7);
  v11 = objc_msgSend_setByAddingObjectsFromSet_(v2, v10, v9);

  return v11;
}

+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(unint64_t)alternate
{
  v174 = *MEMORY[0x277D85DE8];
  kindCopy = kind;
  themeCopy = theme;
  v10 = *MEMORY[0x277D80B70];
  if (!objc_msgSend_isEqual_(kindCopy, v11, *MEMORY[0x277D80B70]))
  {
    v25 = *MEMORY[0x277D80BB8];
    if (objc_msgSend_isEqual_(kindCopy, v12, *MEMORY[0x277D80BB8]))
    {
      v27 = objc_alloc(MEMORY[0x277CBEB18]);
      v29 = objc_msgSend_initWithCapacity_(v27, v28, 1);
      v30 = TSWPShapeStyleIdentifierString();
      v31 = objc_alloc(MEMORY[0x277D80F18]);
      v34 = objc_msgSend_context(themeCopy, v32, v33);
      v36 = objc_msgSend_initWithContext_(v31, v35, v34);

      v39 = objc_msgSend_emptyStroke(MEMORY[0x277D803C0], v37, v38);
      objc_msgSend_setValue_forProperty_(v36, v40, v39, 517);

      objc_msgSend_setIntValue_forProperty_(v36, v41, 0, 149);
      v43 = objc_msgSend_paragraphStyleWithContentTag_(themeCopy, v42, @"Caption");
      objc_msgSend_setDefaultParagraphStyle_(v36, v44, v43);

      v47 = objc_msgSend_documentStylesheet(themeCopy, v45, v46);
      objc_msgSend_addStyle_withIdentifier_(v47, v48, v36, v30);

      objc_msgSend_addObject_(v29, v49, v36);
      v50 = objc_alloc(MEMORY[0x277CBEA60]);
      v52 = objc_msgSend_initWithArray_(v50, v51, v29);
      objc_msgSend_setPresets_ofKind_(themeCopy, v53, v52, v25);

      goto LABEL_27;
    }

    v54 = *MEMORY[0x277D80B88];
    if (objc_msgSend_isEqual_(kindCopy, v26, *MEMORY[0x277D80B88]))
    {
      objc_msgSend_bootstrapPresetsOfKind_inTheme_alternate_(MEMORY[0x277D80EE0], v55, kindCopy, themeCopy, alternate);
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v57 = objc_msgSend_presetsOfKind_(themeCopy, v56, v54);
      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v163, v167, 16);
      if (v59)
      {
        v61 = v59;
        v62 = *v164;
        do
        {
          v63 = 0;
          do
          {
            if (*v164 != v62)
            {
              objc_enumerationMutation(v57);
            }

            v64 = *(*(&v163 + 1) + 8 * v63);
            v65 = objc_msgSend_paragraphStyleWithContentTag_(themeCopy, v60, @"Label");
            objc_msgSend_setDefaultParagraphStyle_(v64, v66, v65);

            objc_msgSend_setIntValue_forProperty_(v64, v67, 1, 149);
            ++v63;
          }

          while (v61 != v63);
          v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v60, &v163, v167, 16);
        }

        while (v61);
      }

      v69 = objc_msgSend_presetOfKind_index_(themeCopy, v68, v54, 0);
      v72 = objc_msgSend_null(MEMORY[0x277CBEB68], v70, v71);
      objc_msgSend_setValue_forProperty_(v69, v73, v72, 520);
    }

    else
    {
      if (!objc_msgSend_isEqual_(kindCopy, v55, *MEMORY[0x277D80B60]))
      {
        v162.receiver = self;
        v162.super_class = &OBJC_METACLASS___KNTheme;
        v144 = objc_msgSendSuper2(&v162, sel_presetKinds);
        v146 = objc_msgSend_containsObject_(v144, v145, kindCopy);

        if (v146)
        {
          v161.receiver = self;
          v161.super_class = &OBJC_METACLASS___KNTheme;
          objc_msgSendSuper2(&v161, sel_bootstrapPresetsOfKind_inTheme_alternate_, kindCopy, themeCopy, alternate);
        }

        else
        {
          v148 = MEMORY[0x277D81150];
          v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, "+[KNTheme bootstrapPresetsOfKind:inTheme:alternate:]");
          v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v150, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v148, v152, v149, v151, 2164, 0, "Requested bootstrapping of unsupported preset kind %@", kindCopy);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v153, v154);
        }

        goto LABEL_27;
      }

      objc_opt_class();
      v69 = TSUCheckedDynamicCast();
      objc_msgSend_createDefaultMotionBackgroundStylePresetsIfNeeded(v69, v142, v143);
    }

    goto LABEL_27;
  }

  v14 = objc_msgSend_context(themeCopy, v12, v13);
  v172 = 0u;
  v173 = 0u;
  v171 = 0u;
  *(&v172 + 4) = 0x100000001;
  v17 = objc_msgSend_whiteColor(MEMORY[0x277D81180], v15, v16);
  v20 = objc_msgSend_blackColor(MEMORY[0x277D81180], v18, v19);
  v155 = v20;
  v156 = v17;
  if (alternate > 6)
  {
    v168 = v17;
    v22 = &v168;
    goto LABEL_5;
  }

  if (((1 << alternate) & 0x2B) != 0)
  {
    v170 = v17;
    v22 = &v170;
LABEL_5:
    v23 = v17;
    v17 = v20;
    v24 = @"GillSans";
    goto LABEL_18;
  }

  v169 = v20;
  v22 = &v169;
  v23 = v20;
  v24 = @"LucidaGrande";
LABEL_18:
  v159 = v24;
  v157 = kindCopy;
  v22[1] = v23;
  v22[2] = v23;
  v22[3] = v23;
  v22[4] = v23;
  v22[5] = v23;
  v22[6] = v23;
  v22[7] = v23;
  v22[8] = v23;
  v22[9] = v17;
  v22[10] = v17;
  v22[11] = v23;
  v74 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v22, 12);
  if (objc_msgSend_count(&unk_2884F3D90, v75, v76) != 12 || objc_msgSend_count(v74, v77, v78) != 12)
  {
    v79 = MEMORY[0x277D81150];
    v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "+[KNTheme bootstrapPresetsOfKind:inTheme:alternate:]");
    v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v79, v83, v80, v82, 2101, 0, "Preset settings are missing a value in one or more preset value arrays");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85);
  }

  v86 = 0;
  v158 = *MEMORY[0x277D80B58];
  do
  {
    v87 = objc_alloc(MEMORY[0x277D80EC8]);
    v89 = objc_msgSend_objectAtIndexedSubscript_(&unk_2884F3DA8, v88, v86);
    v92 = objc_msgSend_defaultPropertyMap(MEMORY[0x277D80EC8], v90, v91);
    isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v87, v93, v14, v89, v92, 0);

    objc_msgSend_setValue_forProperty_(isVariation, v95, v159, 16);
    LODWORD(v96) = dword_275E70FE8[v86];
    objc_msgSend_setFloatValue_forProperty_(isVariation, v97, 17, v96);
    v98 = MEMORY[0x277D801F8];
    v100 = objc_msgSend_objectAtIndexedSubscript_(v74, v99, v86);
    v102 = objc_msgSend_colorWithColor_(v98, v101, v100);
    objc_msgSend_setValue_forProperty_(isVariation, v103, v102, 48);

    objc_msgSend_setIntValue_forProperty_(isVariation, v104, dword_275E71018[v86], 86);
    v106 = objc_msgSend_presetOfKind_index_(themeCopy, v105, v158, *(&v171 + v86));
    objc_msgSend_setInitialListStyle_(isVariation, v107, v106);

    v110 = objc_msgSend_name(isVariation, v108, v109);
    v160 = String();

    v113 = objc_msgSend_documentStylesheet(themeCopy, v111, v112);
    v114 = TSWPTextPackageStringForPreset();
    objc_msgSend_presetStyleDescriptor(MEMORY[0x277D80EC8], v115, v116);
    v118 = v117 = v14;
    String();
    v119 = themeCopy;
    v120 = v74;
    v122 = v121 = v10;
    objc_msgSend_addStyle_withIdentifier_(v113, v123, isVariation, v122);

    v10 = v121;
    v74 = v120;
    themeCopy = v119;

    v14 = v117;
    objc_msgSend_addPreset_ofKind_(v119, v124, isVariation, v10);

    ++v86;
  }

  while (v86 != 12);
  v126 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80EC8], v125, v117);
  v128 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80EA0], v127, v117);
  objc_msgSend_setInitialListStyle_(v126, v129, v128);

  v132 = objc_msgSend_documentStylesheet(themeCopy, v130, v131);
  v135 = objc_msgSend_initialListStyle(v126, v133, v134);
  objc_msgSend_addStyle_(v132, v136, v135);

  objc_msgSend_setName_(v126, v137, @"Slide Number");
  v140 = objc_msgSend_documentStylesheet(themeCopy, v138, v139);
  objc_msgSend_addStyle_(v140, v141, v126);

  kindCopy = v157;
LABEL_27:
}

- (id)undeletableStyles
{
  v5 = objc_msgSend_defaultPresenterNotesParagraphStyle(self, a2, v2);
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNTheme undeletableStyles]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 2172, 0, "invalid nil value for '%{public}s'", "presenterNotesStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v18.receiver = self;
  v18.super_class = KNTheme;
  undeletableStyles = [(KNTheme *)&v18 undeletableStyles];
  v15 = undeletableStyles;
  if (v5)
  {
    if (undeletableStyles)
    {
      v16 = objc_msgSend_setByAddingObject_(undeletableStyles, v14, v5);

      v15 = v16;
    }

    else
    {
      v15 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v14, v5);
    }
  }

  return v15;
}

- (TSWPParagraphStyle)defaultPresenterNotesParagraphStyle
{
  v5 = objc_msgSend_documentStylesheet(self, a2, v2);

  if (!v5)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNTheme defaultPresenterNotesParagraphStyle]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m");
    v12 = NSStringFromSelector(a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v11, 2184, 0, "self.documentStylesheet must not be nil. Is %@ called before the end of -upgradeToSingleStylesheet?", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_documentStylesheet(self, v6, v7);
  v19 = objc_msgSend_defaultPresenterNotesParagraphStyle(v16, v17, v18);

  return v19;
}

- (void)addDefaultPresenterNotesStylesIfAbsent
{
  v5 = objc_msgSend_documentStylesheet(self, a2, v2);

  if (!v5)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNTheme addDefaultPresenterNotesStylesIfAbsent]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m");
    v12 = NSStringFromSelector(a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v11, 2190, 0, "self.documentStylesheet must not be nil. Is %@ called before the end of -upgradeToSingleStylesheet?", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v18 = objc_msgSend_documentStylesheet(self, v6, v7);
  objc_msgSend_addDefaultPresenterNotesStylesIfAbsent(v18, v16, v17);
}

- (void)addClassicThemeRecord:(id)record
{
  recordCopy = record;
  objc_msgSend_willModify(self, v4, v5);
  classicThemeRecords = self->_classicThemeRecords;
  if (!classicThemeRecords)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = self->_classicThemeRecords;
    self->_classicThemeRecords = v8;

    classicThemeRecords = self->_classicThemeRecords;
  }

  objc_msgSend_addObject_(classicThemeRecords, v6, recordCopy);
}

- (void)setClassicThemeRecords:(id)records
{
  recordsCopy = records;
  objc_msgSend_willModify(self, v5, v6);
  v9 = objc_msgSend_copy(recordsCopy, v7, v8);

  classicThemeRecords = self->_classicThemeRecords;
  self->_classicThemeRecords = v9;
}

- (void)removeAllClassicThemeRecords
{
  objc_msgSend_willModify(self, a2, v2);
  classicThemeRecords = self->_classicThemeRecords;
  self->_classicThemeRecords = 0;
}

- (id)p_findFallbackDefaultTemplateSlide
{
  v4 = objc_msgSend_templateSlides(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7 <= 0)
  {
    sub_275E5B2D8();
  }

  v10 = objc_msgSend_templateSlides(self, v8, v9);
  v12 = objc_msgSend_objectAtIndex_(v10, v11, v7 != 1);

  return v12;
}

- (void)p_selectFallbackTemplateSlideAsDefault
{
  v5 = objc_msgSend_p_findFallbackDefaultTemplateSlide(self, a2, v2);
  objc_msgSend_p_setDefaultTemplateSlideNode_(self, v4, v5);
}

- (void)selectFallbackTemplateSlideAsDefault
{
  objc_msgSend_willModify(self, a2, v2);
  defaultTemplateSlideNodeQueue = self->_defaultTemplateSlideNodeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275D8A9A0;
  block[3] = &unk_27A697B20;
  block[4] = self;
  dispatch_barrier_async(defaultTemplateSlideNodeQueue, block);
}

- (id)i_findDefaultTemplateSlideDuringArchiving
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_275D82E64;
  v10 = sub_275D82E74;
  v11 = 0;
  defaultTemplateSlideNodeQueue = self->_defaultTemplateSlideNodeQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_275D8AAA0;
  v5[3] = &unk_27A698618;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(defaultTemplateSlideNodeQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)p_findDefaultTemplateSlideWithoutLoadingSlides
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_templateSlides(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (!v7)
  {
    sub_275E5B37C();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = objc_msgSend_templateSlides(self, v8, v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v37, v41, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v38;
LABEL_4:
    v17 = 0;
    while (1)
    {
      if (*v38 != v16)
      {
        objc_enumerationMutation(v10);
      }

      v18 = *(*(&v37 + 1) + 8 * v17);
      v19 = objc_msgSend_slideIfLoaded(v18, v13, v14);
      v22 = v19;
      if (v19 && objc_msgSend_isBodyVisible(v19, v20, v21))
      {
        v25 = objc_msgSend_bodyPlaceholder(v22, v23, v24);
        v28 = objc_msgSend_textStorage(v25, v26, v27);
        v30 = objc_msgSend_listStyleAtCharIndex_effectiveRange_(v28, v29, 0, 0);

        if (objc_msgSend_firstLabelType(v30, v31, v32))
        {
          v35 = v18;

          if (v35)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      if (v15 == ++v17)
      {
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v37, v41, 16);
        if (v15)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

LABEL_15:
  v35 = objc_msgSend_p_findFallbackDefaultTemplateSlide(self, v33, v34);
LABEL_16:

  return v35;
}

- (void)resolveDefaultTemplateSlide
{
  objc_msgSend_willModify(self, a2, v2);
  defaultTemplateSlideNodeQueue = self->_defaultTemplateSlideNodeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275D8AD40;
  block[3] = &unk_27A697B20;
  block[4] = self;
  dispatch_barrier_async(defaultTemplateSlideNodeQueue, block);
}

- (id)formulaReferenceNameForSlideNode:(id)node
{
  nodeCopy = node;
  if (!self->_formulaReferenceNamesForSlideNodesCache)
  {
    objc_msgSend_p_cacheSlideNodes(self, v4, v5);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = objc_msgSend_objectForKey_(self->_formulaReferenceNamesForSlideNodesCache, v8, nodeCopy);
  objc_sync_exit(selfCopy);

  return v9;
}

- (id)slideNodeForFormulaReferenceName:(id)name caseSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  v34 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!self->_slideNodesForFormulaReferenceNamesCache)
  {
    objc_msgSend_p_cacheSlideNodes(self, v6, v7);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (sensitiveCopy)
  {
    v11 = objc_msgSend_objectForKey_(self->_slideNodesForFormulaReferenceNamesCache, v10, nameCopy);
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = self->_slideNodesForFormulaReferenceNamesCache;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v29, v33, 16);
    if (v16)
    {
      v27 = 168;
      selfCopy2 = self;
      v17 = *v30;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          v20 = objc_msgSend_documentRoot(selfCopy, v14, v15, v27, selfCopy2, v29);
          v23 = objc_msgSend_documentLocale(v20, v21, v22);
          IsEqual_toString = objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(v23, v24, v19, nameCopy);

          if (IsEqual_toString)
          {
            v11 = objc_msgSend_objectForKey_(*(&selfCopy2->super.super.super.super.isa + v27), v14, v19);
            goto LABEL_15;
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v29, v33, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_15:
  }

  objc_sync_exit(selfCopy);

  return v11;
}

- (id)slideNamesMatchingPrefix:(id)prefix
{
  v33 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  if (!self->_slideNodesForFormulaReferenceNamesCache)
  {
    objc_msgSend_p_cacheSlideNodes(self, v4, v5);
  }

  v27 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5);
  obj = self;
  objc_sync_enter(obj);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = self->_slideNodesForFormulaReferenceNamesCache;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v28, v32, 16);
  if (v11)
  {
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if (objc_msgSend_length(prefixCopy, v9, v10, obj))
        {
          v16 = objc_msgSend_documentRoot(obj, v9, v15);
          v19 = objc_msgSend_documentLocale(v16, v17, v18);
          v22 = objc_msgSend_locale(v19, v20, v21);
          hasCaseInsensitivePrefix_withLocale = objc_msgSend_tst_hasCaseInsensitivePrefix_withLocale_(v14, v23, prefixCopy, v22);

          if (!hasCaseInsensitivePrefix_withLocale)
          {
            continue;
          }
        }

        objc_msgSend_addObject_(v27, v9, v14);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v28, v32, 16);
    }

    while (v11);
  }

  objc_sync_exit(obj);

  return v27;
}

- (void)invalidateSlideNameCache
{
  obj = self;
  objc_sync_enter(obj);
  slideNodesForFormulaReferenceNamesCache = obj->_slideNodesForFormulaReferenceNamesCache;
  obj->_slideNodesForFormulaReferenceNamesCache = 0;

  formulaReferenceNamesForSlideNodesCache = obj->_formulaReferenceNamesForSlideNodesCache;
  obj->_formulaReferenceNamesForSlideNodesCache = 0;

  objc_sync_exit(obj);
}

- (void)p_cacheSlideNodes
{
  v79 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_isa = &selfCopy->super.super.super.super.isa;
  if (!selfCopy->_slideNodesForFormulaReferenceNamesCache)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    slideNodesForFormulaReferenceNamesCache = selfCopy->_slideNodesForFormulaReferenceNamesCache;
    selfCopy->_slideNodesForFormulaReferenceNamesCache = v5;
  }

  if (!selfCopy->_formulaReferenceNamesForSlideNodesCache)
  {
    v7 = objc_alloc_init(MEMORY[0x277D812B8]);
    formulaReferenceNamesForSlideNodesCache = selfCopy->_formulaReferenceNamesForSlideNodesCache;
    selfCopy->_formulaReferenceNamesForSlideNodesCache = v7;
  }

  objc_msgSend_removeAllObjects(selfCopy->_slideNodesForFormulaReferenceNamesCache, v3, v4);
  objc_msgSend_removeAllObjects(selfCopy->_formulaReferenceNamesForSlideNodesCache, v9, v10);
  v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
  objc_msgSend_setNumberStyle_(v11, v12, 1);
  v68 = v11;
  v13 = sub_275DC204C();
  v67 = objc_msgSend_localizedStringForKey_value_table_(v13, v14, @"%@ (%@)", &stru_2884D8E20, @"Keynote");

  v66 = objc_msgSend_templateSlides(p_isa, v15, v16);
  v19 = objc_msgSend_documentRoot(p_isa, v17, v18);
  v22 = objc_msgSend_documentLocale(v19, v20, v21);
  v70 = objc_msgSend_locale(v22, v23, v24);

  v25 = MEMORY[0x277CBEB38];
  v28 = objc_msgSend_count(v66, v26, v27);
  v73 = objc_msgSend_dictionaryWithCapacity_(v25, v29, v28);
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v32 = objc_msgSend_templateSlides(p_isa, v30, v31);
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v74, v78, 16);
  if (v34)
  {
    v72 = *v75;
    obj = v32;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v75 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v74 + 1) + 8 * i);
        objc_opt_class();
        v39 = objc_msgSend_slide(v36, v37, v38);
        v40 = TSUDynamicCast();

        if (v40)
        {
          v43 = objc_msgSend_name(v40, v41, v42);
          v45 = objc_msgSend_uppercaseStringWithLocale_(v43, v44, v70);
          v48 = objc_msgSend_objectForKeyedSubscript_(v73, v46, v45);
          if (v48)
          {
            v49 = objc_msgSend_stringFromNumber_(v68, v47, v48);
            v50 = MEMORY[0x277CCACA8];
            v53 = objc_msgSend_name(v40, v51, v52);
            v55 = objc_msgSend_stringWithFormat_(v50, v54, v67, v53, v49);

            v56 = MEMORY[0x277CCABB0];
            v59 = objc_msgSend_unsignedIntegerValue(v48, v57, v58);
            v61 = objc_msgSend_numberWithUnsignedInteger_(v56, v60, v59 + 1);

            objc_msgSend_setObject_forKeyedSubscript_(v73, v62, v61, v45);
            v43 = v55;
            if (!v36)
            {
              goto LABEL_17;
            }
          }

          else
          {
            objc_msgSend_setObject_forKeyedSubscript_(v73, v47, &unk_2884F36D8, v45);
            v61 = 0;
            if (!v36)
            {
LABEL_17:

              goto LABEL_18;
            }
          }

          if (v43)
          {
            objc_msgSend_setObject_forKey_(p_isa[21], v63, v36, v43);
            objc_msgSend_setObject_forUncopiedKey_(p_isa[22], v64, v43, v36);
          }

          goto LABEL_17;
        }

LABEL_18:
      }

      v32 = obj;
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v65, &v74, v78, 16);
    }

    while (v34);
  }

  objc_sync_exit(p_isa);
}

+ (id)makeLiveVideoSourceCollectionWithContext:(id)context
{
  contextCopy = context;
  v4 = [KNLiveVideoSourceCollection alloc];
  v6 = objc_msgSend_initWithContext_(v4, v5, contextCopy);

  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = objc_msgSend_initWithUUIDString_(v7, v8, @"C64A17F1-CE2B-421E-801B-5ABD7AF2D0AC");
  objc_msgSend_setObjectUUID_(v6, v10, v9);

  return v6;
}

- (void)takeLiveVideoSourceCollectionFromTheme:(id)theme
{
  themeCopy = theme;
  objc_msgSend_willModify(self, v5, v6);
  v9 = objc_msgSend_liveVideoSourceCollection(themeCopy, v7, v8);

  liveVideoSourceCollection = self->_liveVideoSourceCollection;
  self->_liveVideoSourceCollection = v9;
}

- (id)childEnumerator
{
  v4 = MEMORY[0x277D81148];
  v5 = objc_msgSend_templateSlides(self, a2, v2);
  v8 = objc_msgSend_objectEnumerator(v5, v6, v7);
  v13.receiver = self;
  v13.super_class = KNTheme;
  childEnumerator = [(KNTheme *)&v13 childEnumerator];
  v11 = objc_msgSend_aggregateEnumeratorWithObjects_(v4, v10, v8, childEnumerator, 0);

  return v11;
}

- (id)modelPathComponentForChild:(id)child
{
  childCopy = child;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = objc_msgSend_templateSlides(self, v5, v6);
    v11 = objc_msgSend_indexOfObject_(v9, v10, v7);
    v13 = objc_msgSend_stringWithFormat_(v8, v12, @"templateSlide-%tu", v11);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = KNTheme;
    v13 = [(KNTheme *)&v15 modelPathComponentForChild:childCopy];
  }

  return v13;
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = KNTheme;
  [(KNTheme *)&v21 willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = objc_msgSend_templateSlides(self, v8, v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v17, v22, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(*(*(&v17 + 1) + 8 * v16++), v13, rootCopy, contextCopy);
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v17, v22, 16);
    }

    while (v14);
  }
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = KNTheme;
  [(KNTheme *)&v21 wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = objc_msgSend_templateSlides(self, v8, v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v17, v22, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(*(&v17 + 1) + 8 * v16++), v13, rootCopy, contextCopy);
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v17, v22, 16);
    }

    while (v14);
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  v20 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = objc_msgSend_templateSlides(self, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v15, v19, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_willBeRemovedFromDocumentRoot_(*(*(&v15 + 1) + 8 * v13++), v10, rootCopy);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v15, v19, 16);
    }

    while (v11);
  }

  v14.receiver = self;
  v14.super_class = KNTheme;
  [(KNTheme *)&v14 willBeRemovedFromDocumentRoot:rootCopy];
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  v20 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = objc_msgSend_templateSlides(self, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v15, v19, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_wasRemovedFromDocumentRoot_(*(*(&v15 + 1) + 8 * v13++), v10, rootCopy);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v15, v19, 16);
    }

    while (v11);
  }

  v14.receiver = self;
  v14.super_class = KNTheme;
  [(KNTheme *)&v14 wasRemovedFromDocumentRoot:rootCopy];
}

- (void)insertContainedModel:(id)model atIndex:(unint64_t)index
{
  modelCopy = model;
  objc_opt_class();
  v17 = TSUCheckedDynamicCast();

  v9 = objc_msgSend_thumbnails(v17, v7, v8);
  v12 = objc_msgSend_allValues(v9, v10, v11);
  v15 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v13, v14);
  objc_msgSend_insertTemplateSlideNode_withThumbnails_atIndex_dolcContext_(self, v16, v17, v12, index, v15);
}

- (void)removeContainedModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  v6 = TSUCheckedDynamicCast();

  objc_msgSend_removeTemplateSlideNode_(self, v5, v6);
}

- (void)moveModel:(id)model toIndex:(unint64_t)index
{
  modelCopy = model;
  objc_opt_class();
  v26 = TSUCheckedDynamicCast();

  v9 = objc_msgSend_slide(v26, v7, v8);
  LOBYTE(modelCopy) = objc_msgSend_isTemplateSlide(v9, v10, v11);

  if ((modelCopy & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[KNTheme moveModel:toIndex:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 2755, 0, "templateNode's slide must be a KNTemplateSlide.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  objc_msgSend_willModify(self, v12, v13);
  objc_opt_class();
  v21 = TSUDynamicCast();
  objc_msgSend_removeObject_(v21, v22, v26);
  objc_msgSend_insertObject_atIndex_(v21, v23, v26, index);
  objc_msgSend_p_cacheSlideNodes(self, v24, v25);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 16))
  {
    v7 = *(archive + 16);
  }

  else
  {
    v7 = MEMORY[0x277D80BD8];
  }

  v72.receiver = self;
  v72.super_class = KNTheme;
  [(TSATheme *)&v72 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = sub_275D8C8F0;
  v71[3] = &unk_27A697A10;
  v71[4] = self;
  v8 = unarchiverCopy;
  v9 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v8, v10, archive + 24, v9, 0, v71);

  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x3032000000;
  v69[3] = sub_275D8C8FC;
  v69[4] = sub_275D8C90C;
  v70 = 0;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x3032000000;
  v67[3] = sub_275D8C8FC;
  v67[4] = sub_275D8C90C;
  v68 = 0;
  v11 = *(archive + 4);
  if ((v11 & 4) != 0)
  {
    v12 = *(archive + 17);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = sub_275D8C914;
    v66[3] = &unk_27A6985C8;
    v66[4] = v67;
    v13 = v8;
    v14 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v13, v15, v12, v14, 0, v66);

    v11 = *(archive + 4);
  }

  if ((v11 & 8) != 0)
  {
    v16 = *(archive + 18);
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = sub_275D8C924;
    v65[3] = &unk_27A6985C8;
    v65[4] = v69;
    v17 = v8;
    v18 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v17, v19, v16, v18, 0, v65);

    v11 = *(archive + 4);
  }

  if ((v11 & 0x20) != 0)
  {
    self->_defaultTemplateSlideNodeIsOurBestGuess = *(archive + 160);
  }

  if (v11)
  {
    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    v22 = objc_msgSend_tsp_initWithProtobufString_(v20, v21, *(archive + 15) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setUUID_(self, v23, v22);
  }

  if (*(archive + 14) >= 1)
  {
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = sub_275D8C934;
    v64[3] = &unk_27A697A10;
    v64[4] = self;
    v24 = v8;
    v25 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v24, v26, archive + 48, v25, 0, v64);
  }

  v59 = v8;
  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
  customEffectTimingCurves = self->_customEffectTimingCurves;
  self->_customEffectTimingCurves = v27;

  v31 = *(archive + 20);
  if (v31 >= 1)
  {
    v32 = 8;
    v33 = MEMORY[0x277D804C8];
    do
    {
      v34 = *(*(archive + 11) + v32);
      v35 = objc_alloc(MEMORY[0x277D801C8]);
      if (*(v34 + 32))
      {
        v37 = objc_msgSend_initWithArchive_(v35, v36, *(v34 + 32));
      }

      else
      {
        v37 = objc_msgSend_initWithArchive_(v35, v36, v33);
      }

      v38 = v37;
      v39 = objc_alloc(MEMORY[0x277CCACA8]);
      v41 = objc_msgSend_tsp_initWithProtobufString_(v39, v40, *(v34 + 24) & 0xFFFFFFFFFFFFFFFELL);
      objc_msgSend_setObject_forKeyedSubscript_(self->_customEffectTimingCurves, v42, v38, v41);

      v32 += 8;
      --v31;
    }

    while (v31);
  }

  if ((*(archive + 16) & 0x10) != 0)
  {
    v53 = *(archive + 19);
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = sub_275D8C94C;
    v63[3] = &unk_27A6986F8;
    v63[4] = self;
    v43 = v59;
    v54 = v59;
    v55 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v54, v56, v53, v55, 0, v63);
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(self, v29, v30);
    v43 = v59;
    v44 = objc_opt_class();
    v47 = objc_msgSend_context(self, v45, v46);
    v49 = objc_msgSend_makeLiveVideoSourceCollectionWithContext_(v44, v48, v47);
    liveVideoSourceCollection = self->_liveVideoSourceCollection;
    self->_liveVideoSourceCollection = v49;
  }

  if (*(archive + 26) >= 1)
  {
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = sub_275D8CA10;
    v62[3] = &unk_27A697A10;
    v62[4] = self;
    sub_275D8C964(v43, archive + 96, &unk_288501358, v62);
  }

  hasPreUFFVersion = objc_msgSend_hasPreUFFVersion(v43, v51, v52);
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = sub_275D8CA28;
  v60[3] = &unk_27A698740;
  v61 = hasPreUFFVersion;
  v60[4] = self;
  v60[5] = v69;
  v60[6] = v67;
  objc_msgSend_addFinalizeHandler_(v43, v58, v60);
  _Block_object_dispose(v67, 8);

  _Block_object_dispose(v69, 8);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v5 = dispatch_queue_create("KNTheme.DefaultTemplateSlideNode", MEMORY[0x277D85CD8]);
  defaultTemplateSlideNodeQueue = self->_defaultTemplateSlideNodeQueue;
  self->_defaultTemplateSlideNodeQueue = v5;

  v7 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(v7, v8, off_2812EA908[52]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v10, v9, v7);
  if (objc_msgSend_hasPreUFFVersion(v7, v11, v12))
  {
    v15 = objc_msgSend_preUFFVersion(v7, v13, v14);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_275D8CC98;
    v17[3] = &unk_27A698480;
    v17[4] = self;
    v17[5] = v15;
    objc_msgSend_addFinalizeHandler_(v7, v16, v17);
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v91 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = sub_275D8D3DC;
  v84[3] = &unk_27A697C88;
  archiveCopy = archive;
  v85 = archiverCopy;
  selfCopy = self;
  v79 = v85;
  objc_msgSend_pushScopeForField_message_usingBlock_(v85, v7, 1, archive, v84);
  v10 = objc_msgSend_templateSlides(self, v8, v9);
  objc_msgSend_setStrongReferenceArray_message_(v79, v11, v10, archive + 24);

  WeakRetained = objc_loadWeakRetained(&self->_defaultTemplateSlideNode);
  if (WeakRetained)
  {
    *(archive + 4) |= 8u;
    v14 = *(archive + 18);
    if (!v14)
    {
      v15 = *(archive + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C8F050](v15);
      *(archive + 18) = v14;
    }

    objc_msgSend_setWeakReference_message_(v79, v12, WeakRetained, v14);
    *(archive + 4) |= 4u;
    v17 = *(archive + 17);
    if (!v17)
    {
      v18 = *(archive + 1);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = MEMORY[0x277C8F050](v18);
      *(archive + 17) = v17;
    }

    objc_msgSend_setStrongReference_message_(v79, v16, WeakRetained, v17);
  }

  else
  {
    v22 = objc_msgSend_i_findDefaultTemplateSlideDuringArchiving(self, v12, v13);
    if (!v22)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[KNTheme(PersistenceAdditions) saveToArchive:archiver:]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNThemePersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 205, 0, "invalid nil value for '%{public}s'", "defaultTemplateSlideNode");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    }

    *(archive + 4) |= 4u;
    v30 = *(archive + 17);
    if (!v30)
    {
      v31 = *(archive + 1);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x277C8F050](v31);
      *(archive + 17) = v30;
    }

    WeakRetained = v22;
    objc_msgSend_setStrongReference_message_(v79, v21, v22, v30);
  }

  defaultTemplateSlideNodeIsOurBestGuess = self->_defaultTemplateSlideNodeIsOurBestGuess;
  *(archive + 4) |= 0x20u;
  *(archive + 160) = defaultTemplateSlideNodeIsOurBestGuess;
  v33 = objc_msgSend_UUID(self, v19, v20);
  v36 = objc_msgSend_length(v33, v34, v35) == 0;

  if (!v36)
  {
    v39 = objc_msgSend_UUID(self, v37, v38);
    v40 = v39;
    v43 = objc_msgSend_UTF8String(v39, v41, v42);
    *(archive + 4) |= 1u;
    sub_275D55B98(__p, v43);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v89 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v44 = objc_msgSend_classicThemeRecords(self, v37, v38);
  v45 = v44 == 0;

  if (!v45)
  {
    v48 = objc_msgSend_classicThemeRecords(self, v46, v47);
    objc_msgSend_setStrongReferenceArray_message_(v79, v49, v48, archive + 48);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v50 = self->_customEffectTimingCurves;
  v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v80, v90, 16);
  if (v53)
  {
    v54 = *v81;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v81 != v54)
        {
          objc_enumerationMutation(v50);
        }

        v56 = *(*(&v80 + 1) + 8 * i);
        v58 = objc_msgSend_objectForKeyedSubscript_(self->_customEffectTimingCurves, v52, v56);
        v59 = *(archive + 11);
        if (!v59)
        {
          goto LABEL_34;
        }

        v60 = *(archive + 20);
        v61 = *v59;
        if (v60 < *v59)
        {
          *(archive + 20) = v60 + 1;
          v62 = *&v59[2 * v60 + 2];
          goto LABEL_36;
        }

        if (v61 == *(archive + 21))
        {
LABEL_34:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 72));
          v59 = *(archive + 11);
          v61 = *v59;
        }

        *v59 = v61 + 1;
        v62 = sub_275E204F4(*(archive + 9));
        v63 = *(archive + 20);
        v64 = *(archive + 11) + 8 * v63;
        *(archive + 20) = v63 + 1;
        *(v64 + 8) = v62;
LABEL_36:
        *(v62 + 16) |= 2u;
        v65 = *(v62 + 32);
        if (!v65)
        {
          v66 = *(v62 + 8);
          if (v66)
          {
            v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
          }

          v65 = MEMORY[0x277C8EFB0](v66);
          *(v62 + 32) = v65;
        }

        objc_msgSend_saveToArchive_(v58, v57, v65);
        v67 = v56;
        v70 = objc_msgSend_UTF8String(v56, v68, v69);
        *(v62 + 16) |= 1u;
        sub_275D55B98(__p, v70);
        google::protobuf::internal::ArenaStringPtr::Set();
        if (v89 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v52, &v80, v90, 16);
    }

    while (v53);
  }

  if (self->_liveVideoSourceCollection)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v79, v71, 9, archive);
    liveVideoSourceCollection = self->_liveVideoSourceCollection;
    *(archive + 4) |= 0x10u;
    v74 = *(archive + 19);
    if (!v74)
    {
      v75 = *(archive + 1);
      if (v75)
      {
        v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
      }

      v74 = MEMORY[0x277C8F050](v75);
      *(archive + 19) = v74;
    }

    objc_msgSend_setStrongReference_message_(v79, v72, liveVideoSourceCollection, v74);
  }

  v77 = objc_msgSend_presetsOfKind_(self, v71, *MEMORY[0x277D80B60]);
  if (v77)
  {
    objc_msgSend_setStrongReferenceArray_message_(v79, v76, v77, archive + 96);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275D8D520, off_2812EA908[52]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

@end