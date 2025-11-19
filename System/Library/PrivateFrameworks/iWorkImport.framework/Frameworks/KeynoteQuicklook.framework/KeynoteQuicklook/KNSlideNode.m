@interface KNSlideNode
+ (id)UUIDStringSetForSlideNodes:(id)a3;
+ (id)parentSlideNodeForInfo:(id)a3;
+ (id)slideNodeForSelectionPath:(id)a3;
+ (id)slideNodeUUIDForObsoleteUniqueIDString:(id)a3 inSlideNodes:(id)a4;
- (BOOL)hasChildren;
- (BOOL)hasExplicitBuilds;
- (BOOL)hasSlideSpecificHyperlinkToNode:(id)a3;
- (BOOL)isSlideNumberVisible;
- (BOOL)resolverNameIsUsed:(id)a3;
- (KNAbstractSlide)slide;
- (KNLiveVideoSourceUsage)liveVideoSourceUsage;
- (KNSlideNode)initWithContext:(id)a3;
- (KNSlideNode)next;
- (KNSlideNode)nextSkippingCollapsed;
- (KNSlideNode)nextSkippingHidden;
- (KNSlideNode)previous;
- (KNSlideNode)previousSkippingCollapsed;
- (KNSlideNode)previousSkippingHidden;
- (KNSlideTree)slideTree;
- (NSArray)children;
- (NSString)uniqueIdentifier;
- (id)childEnumerator;
- (id)descendantsOmittingSkippedSlideNodes:(BOOL)a3 omittingCollapsedSlideNodes:(BOOL)a4;
- (id)objectUUIDPath;
- (id)p_getSlideSpecificMappingForStorage:(id)a3 forSlideNode:(id)a4;
- (id)p_mappingFromString:(id)a3;
- (id)p_slideNodeWithUUIDString:(id)a3 inSlideNodes:(id)a4;
- (id)paragraphIndexesOfTopLevelBullets;
- (id)resolverMatchingName:(id)a3;
- (id)resolversMatchingPrefix:(id)a3;
- (int64_t)bodyParagraphCount;
- (unint64_t)buildEventCount;
- (unint64_t)numberOfLinksToSlideNodeInStorage:(id)a3 forSlideNodeUUIDString:(id)a4;
- (unint64_t)p_buildEventCount;
- (unint64_t)safeBuildEventCount;
- (unsigned)nextUntitledResolverIndex;
- (void)addHyperlinkFieldMap:(id)a3 forStorage:(id)a4;
- (void)addHyperlinkForInfo:(id)a3 toSlideNode:(id)a4;
- (void)addHyperlinkForStorage:(id)a3 toSlideNode:(id)a4;
- (void)addOldModelDescendantsToSlideTree:(id)a3;
- (void)addRemappedTableName:(id)a3;
- (void)addThumbnail:(id)a3 atSize:(CGSize)a4;
- (void)cleanOutInvalidSlideSpecificInfoEntries;
- (void)clearRemappedTableNames;
- (void)clearSlideSpecificLinkMap;
- (void)invalidateBuildEventCountCaches;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_addHyperlinkForObjectReferencedByMapping:(id)a3 toSlideNode:(id)a4;
- (void)p_addOldModelDescendantsToSlideTree:(id)a3 atDepth:(unint64_t)a4;
- (void)p_commonInit;
- (void)p_removeHyperlinkForObjectReferencedByMapping:(id)a3 toSlideNode:(id)a4;
- (void)p_updateHasExplicitBuilds;
- (void)purgeU15ModelIfNeeded;
- (void)removeAllThumbnails;
- (void)removeHyperlinkFieldMap:(id)a3 forStorage:(id)a4;
- (void)removeHyperlinkForInfo:(id)a3 toSlideNode:(id)a4;
- (void)removeHyperlinkForStorage:(id)a3 toSlideNode:(id)a4;
- (void)removeInvalidSlideSpecificHyperlinksForStorage:(id)a3 withSlideNodeUUIDStrings:(id)a4;
- (void)removeInvalidSlideSpecificHyperlinksWithSlideNodeUUIDStrings:(id)a3;
- (void)removeSlideSpecificMappingsFromDrawablesInGroup:(id)a3;
- (void)removeThumbnailAtSize:(CGSize)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setClassicUniqueID:(id)a3;
- (void)setDepth:(unint64_t)a3;
- (void)setDigestsForDatasThatNeedDownloadForThumbnail:(id)a3;
- (void)setHasNote:(BOOL)a3;
- (void)setHasTransition:(BOOL)a3;
- (void)setIsSlideNumberVisible:(BOOL)a3;
- (void)setPreviousIdentifier:(id)a3;
- (void)setSkipped:(BOOL)a3;
- (void)setSlide:(id)a3;
- (void)setThumbnailsAreDirty:(BOOL)a3;
- (void)uniquifyTableNamesForUpgradeOrImport;
- (void)updateBackgroundIsNoFillOrColorFillWithAlpha;
- (void)updateLiveVideoSourceUsage;
- (void)updateTemplateSlideUUID;
- (void)upgradeSlideSpecificHyperlinksForSlideNodes:(id)a3;
- (void)upgradeSlideSpecificStorageHyperlinksForStorage:(id)a3 withSlideNodes:(id)a4;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation KNSlideNode

- (void)setThumbnailsAreDirty:(BOOL)a3
{
  if (self->_thumbnailsAreDirty != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_thumbnailsAreDirty = a3;
  }
}

- (void)setHasTransition:(BOOL)a3
{
  if (self->_hasTransition != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_hasTransition = a3;
  }
}

- (void)setHasNote:(BOOL)a3
{
  if (self->_hasNote != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_hasNote = a3;
  }
}

- (void)setIsSlideNumberVisible:(BOOL)a3
{
  if (self->_slideNumberVisible != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_slideNumberVisible = a3;
  }
}

- (void)setDepth:(unint64_t)a3
{
  if (self->_depth != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_depth = a3;
  }
}

- (void)setClassicUniqueID:(id)a3
{
  v5 = a3;
  if (self->_classicUniqueID != v5)
  {
    v8 = v5;
    objc_msgSend_willModify(self, v6, v7);
    objc_storeStrong(&self->_classicUniqueID, a3);
    v5 = v8;
  }
}

+ (id)parentSlideNodeForInfo:(id)a3
{
  v3 = objc_msgSend_parentSlideForInfo_(KNAbstractSlide, a2, a3);
  v6 = objc_msgSend_slideNode(v3, v4, v5);

  return v6;
}

+ (id)slideNodeForSelectionPath:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v6 = objc_msgSend_mostSpecificSelectionOfClass_(v3, v5, v4);

  v9 = objc_msgSend_slideNodeToEdit(v6, v7, v8);

  return v9;
}

- (KNSlideNode)initWithContext:(id)a3
{
  v12.receiver = self;
  v12.super_class = KNSlideNode;
  v3 = [(KNSlideNode *)&v12 initWithContext:a3];
  v6 = v3;
  if (v3)
  {
    objc_msgSend_p_commonInit(v3, v4, v5);
    v7 = [KNLiveVideoSourceUsage alloc];
    v9 = objc_msgSend_initWithLiveVideoInfos_(v7, v8, MEMORY[0x277CBEBF8]);
    liveVideoSourceUsage = v6->_liveVideoSourceUsage;
    v6->_liveVideoSourceUsage = v9;
  }

  return v6;
}

- (NSString)uniqueIdentifier
{
  v5 = objc_msgSend_objectUUID(self, a2, v2);
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[KNSlideNode uniqueIdentifier]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 171, 0, "invalid nil value for '%{public}s'", "uuid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_UUIDString(v5, v3, v4);

  return v13;
}

- (void)setPreviousIdentifier:(id)a3
{
  if (self->_previousIdentifier != a3)
  {
    v4 = a3;
    objc_msgSend_willModify(self, v5, v6);
    v9 = objc_msgSend_copy(v4, v7, v8);

    previousIdentifier = self->_previousIdentifier;
    self->_previousIdentifier = v9;
  }
}

- (KNSlideNode)next
{
  WeakRetained = objc_loadWeakRetained(&self->_slideTree);
  v5 = objc_msgSend_slideNodeAfterSlideNode_omitSkippedSlideNodes_omitCollapsedSlideNodes_(WeakRetained, v4, self, 0, 0);

  return v5;
}

- (KNSlideNode)previous
{
  WeakRetained = objc_loadWeakRetained(&self->_slideTree);
  v5 = objc_msgSend_slideNodeBeforeSlideNode_omitSkippedSlideNodes_omitCollapsedSlideNodes_(WeakRetained, v4, self, 0, 0);

  return v5;
}

- (KNSlideNode)nextSkippingCollapsed
{
  WeakRetained = objc_loadWeakRetained(&self->_slideTree);
  v5 = objc_msgSend_slideNodeAfterSlideNode_omitSkippedSlideNodes_omitCollapsedSlideNodes_(WeakRetained, v4, self, 0, 1);

  return v5;
}

- (KNSlideNode)previousSkippingCollapsed
{
  WeakRetained = objc_loadWeakRetained(&self->_slideTree);
  v5 = objc_msgSend_slideNodeBeforeSlideNode_omitSkippedSlideNodes_omitCollapsedSlideNodes_(WeakRetained, v4, self, 0, 1);

  return v5;
}

- (KNSlideNode)nextSkippingHidden
{
  WeakRetained = objc_loadWeakRetained(&self->_slideTree);
  v5 = objc_msgSend_slideNodeAfterSlideNode_omitSkippedSlideNodes_omitCollapsedSlideNodes_(WeakRetained, v4, self, 1, 0);

  return v5;
}

- (KNSlideNode)previousSkippingHidden
{
  WeakRetained = objc_loadWeakRetained(&self->_slideTree);
  v5 = objc_msgSend_slideNodeBeforeSlideNode_omitSkippedSlideNodes_omitCollapsedSlideNodes_(WeakRetained, v4, self, 1, 0);

  return v5;
}

- (BOOL)hasChildren
{
  v6 = objc_msgSend_next(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_depth(self, v4, v5);
    v10 = v7 < objc_msgSend_depth(v6, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSArray)children
{
  WeakRetained = objc_loadWeakRetained(&self->_slideTree);
  v5 = objc_msgSend_childrenOfSlideNode_(WeakRetained, v4, self);

  return v5;
}

- (void)updateTemplateSlideUUID
{
  if (self->_slideReference)
  {
    v4 = objc_msgSend_slide(self, a2, v2);
    objc_opt_class();
    v5 = TSUDynamicCast();
    v8 = v5;
    if (v5)
    {
      objc_msgSend_templateSlide(v5, v6, v7);
    }

    else
    {
      objc_opt_class();
      TSUDynamicCast();
    }
    v20 = ;
    v12 = objc_msgSend_objectUUID(v20, v9, v10);
    templateSlideUUID = self->_templateSlideUUID;
    if (v12 | templateSlideUUID && (objc_msgSend_isEqual_(templateSlideUUID, v11, v12) & 1) == 0)
    {
      objc_msgSend_willModify(self, v14, v15);
      v18 = objc_msgSend_copy(v12, v16, v17);
      v19 = self->_templateSlideUUID;
      self->_templateSlideUUID = v18;
    }
  }
}

- (void)updateBackgroundIsNoFillOrColorFillWithAlpha
{
  if (self->_slideReference)
  {
    v4 = objc_msgSend_slide(self, a2, v2);
    IsNoFillOrColorFillWithAlpha = objc_msgSend_backgroundIsNoFillOrColorFillWithAlpha(v4, v5, v6);

    if (self->_backgroundIsNoFillOrColorFillWithAlpha != IsNoFillOrColorFillWithAlpha)
    {
      objc_msgSend_willModify(self, v8, v9);
      self->_backgroundIsNoFillOrColorFillWithAlpha = IsNoFillOrColorFillWithAlpha;
    }
  }
}

- (BOOL)hasExplicitBuilds
{
  if (!self->_hasExplicitBuildsIsUpToDate)
  {
    objc_msgSend_p_updateHasExplicitBuilds(self, a2, v2);
  }

  return self->_hasExplicitBuilds;
}

- (void)p_updateHasExplicitBuilds
{
  objc_msgSend_willModify(self, a2, v2);
  if (self->_buildEventCountIsUpToDate && (objc_msgSend_hasBuildEvents(self, v4, v5) & 1) == 0)
  {
    self->_hasExplicitBuilds = 0;
  }

  else
  {
    v6 = objc_msgSend_slide(self, v4, v5);
    self->_hasExplicitBuilds = objc_msgSend_buildChunkCount(v6, v7, v8) != 0;
  }

  self->_hasExplicitBuildsIsUpToDate = 1;
}

- (unint64_t)buildEventCount
{
  if (!self->_buildEventCountIsUpToDate)
  {
    v4 = objc_msgSend_p_buildEventCount(self, a2, v2);
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNSlideNode buildEventCount]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 303, 0, "Build event count was not properly updated.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    }

    else
    {
      v14 = v4;
      objc_msgSend_willModify(self, v5, v6);
      self->_buildEventCount = v14;
      self->_buildEventCountIsUpToDate = 1;
    }
  }

  return self->_buildEventCount;
}

- (unint64_t)safeBuildEventCount
{
  result = objc_msgSend_p_buildEventCount(self, a2, v2);
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return result;
}

- (void)invalidateBuildEventCountCaches
{
  objc_msgSend_willModify(self, a2, v2);
  self->_buildEventCountIsUpToDate = 0;
  self->_hasExplicitBuildsIsUpToDate = 0;
}

- (unint64_t)p_buildEventCount
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_slide(self, a2, v2);
  v6 = objc_msgSend_builds(v3, v4, v5);
  objc_msgSend_buildChunks(v3, v7, v8);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v9 = v63 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v60, v65, 16);
  if (!v11)
  {
    v20 = 1;
    goto LABEL_15;
  }

  v14 = v11;
  v15 = *v61;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v61 != v15)
      {
        objc_enumerationMutation(v9);
      }

      v18 = objc_msgSend_build(*(*(&v60 + 1) + 8 * i), v12, v13);
      if (!v18)
      {
        v21 = MEMORY[0x277D81150];
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[KNSlideNode p_buildEventCount]");
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 343, 0, "Chunk has a nil build. Make sure begin/endUpdatingBuildsAndChunks is being used properly.");
LABEL_14:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
        v20 = 0;
        goto LABEL_15;
      }

      if ((objc_msgSend_containsObject_(v6, v17, v18) & 1) == 0)
      {
        v26 = MEMORY[0x277D81150];
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[KNSlideNode p_buildEventCount]");
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v28, v22, v24, 349, 0, "Chunk has a build which is not currently on the slide. Make sure begin/endUpdatingBuildsAndChunks is being used properly.");
        goto LABEL_14;
      }
    }

    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v60, v65, 16);
    v20 = 1;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_15:

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v31 = v6;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v56, v64, 16);
  if (v33)
  {
    v36 = v33;
    v37 = *v57;
    while (2)
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v57 != v37)
        {
          objc_enumerationMutation(v31);
        }

        if (!objc_msgSend_chunkCount(*(*(&v56 + 1) + 8 * j), v34, v35, v56))
        {
          v48 = MEMORY[0x277D81150];
          v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[KNSlideNode p_buildEventCount]");
          v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v52, v49, v51, 358, 0, "Build has no chunks on the slide. Make sure begin/endUpdatingBuildsAndChunks is being used properly.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
          v47 = 0x7FFFFFFFFFFFFFFFLL;
          v44 = v31;
          goto LABEL_26;
        }
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v56, v64, 16);
      if (v36)
      {
        continue;
      }

      break;
    }
  }

  if (v20)
  {
    v39 = [KNAnimatedSlideModel alloc];
    v42 = objc_msgSend_infosToDisplay(v3, v40, v41);
    v44 = objc_msgSend_initWithBuildChunks_infos_session_animatedSlideView_(v39, v43, v9, v42, 0, 0);

    v47 = objc_msgSend_buildEventCount(v44, v45, v46);
LABEL_26:
  }

  else
  {
    v47 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v47;
}

- (int64_t)bodyParagraphCount
{
  v4 = objc_msgSend_slide(self, a2, v2);
  v7 = objc_msgSend_bodyPlaceholder(v4, v5, v6);
  v10 = objc_msgSend_textStorage(v7, v8, v9);

  if (objc_msgSend_length(v10, v11, v12))
  {
    hasBodyInOutlineView = objc_msgSend_paragraphCount(v10, v13, v14);
  }

  else
  {
    hasBodyInOutlineView = objc_msgSend_hasBodyInOutlineView(self, v13, v14);
  }

  return hasBodyInOutlineView;
}

- (void)uniquifyTableNamesForUpgradeOrImport
{
  v37 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = objc_alloc(MEMORY[0x277D80660]);
  v6 = objc_msgSend_slide(self, v4, v5);
  v8 = objc_msgSend_initWithRootModelObject_filter_(v3, v7, v6, 0);

  v11 = objc_msgSend_nextObject(v8, v9, v10);
  if (v11)
  {
    v12 = v11;
    v13 = 0x277D80000uLL;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

LABEL_14:
      v36 = objc_msgSend_nextObject(v8, v14, v15);

      v12 = v36;
      if (!v36)
      {
        goto LABEL_15;
      }
    }

    objc_opt_class();
    v16 = TSUDynamicCast();
    v19 = objc_msgSend_tableName(v16, v17, v18);
    if (objc_msgSend_isEqualToString_(v19, v20, @"Unnamed"))
    {
      isEqualToString = 1;
      if (!v19)
      {
        goto LABEL_10;
      }
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(v19, v21, @"Unnamed Table");
      if (!v19)
      {
        goto LABEL_10;
      }
    }

    if (!((objc_msgSend_length(v19, v21, v22) == 0) | isEqualToString & 1) && !objc_msgSend_containsObject_(v37, v21, v19))
    {
      v26 = v19;
LABEL_13:
      objc_msgSend_addObject_(v37, v21, v26);

      goto LABEL_14;
    }

LABEL_10:
    objc_msgSend_chooseUniqueNameInContainer_forPaste_needsNewName_avoidNames_(v16, v21, self, 0, isEqualToString, v37);
    v26 = objc_msgSend_tableName(v16, v24, v25);

    if (objc_msgSend_containsObject_(v37, v27, v26))
    {
      v28 = MEMORY[0x277D81150];
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[KNSlideNode uniquifyTableNamesForUpgradeOrImport]");
      v30 = v29 = v13;
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v30, v32, 407, 0, "fresh table name is already in use");

      v13 = v29;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    }

    goto LABEL_13;
  }

LABEL_15:
}

- (KNLiveVideoSourceUsage)liveVideoSourceUsage
{
  liveVideoSourceUsage = self->_liveVideoSourceUsage;
  if (liveVideoSourceUsage)
  {
    v3 = liveVideoSourceUsage;
  }

  else
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNSlideNode liveVideoSourceUsage]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 418, 0, "Attempting to access liveVideoSourceUsage before it has been initialized or unarchived.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    v11 = [KNLiveVideoSourceUsage alloc];
    v3 = objc_msgSend_initWithLiveVideoInfos_(v11, v12, MEMORY[0x277CBEBF8]);
  }

  return v3;
}

- (void)updateLiveVideoSourceUsage
{
  v36 = *MEMORY[0x277D85DE8];
  if (self->_slideReference)
  {
    v4 = objc_msgSend_slide(self, a2, v2);
    objc_opt_class();
    v5 = TSUDynamicCast();
    v8 = v5;
    if (v5)
    {
      objc_msgSend_nonPlaceholderObjects(v5, v6, v7);
    }

    else
    {
      objc_msgSend_ownedChildInfos(v4, v6, v7);
    }
    v9 = ;
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    v13 = objc_msgSend_count(v9, v11, v12);
    v15 = objc_msgSend_initWithCapacity_(v10, v14, v13);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v16 = v9;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v31, v35, 16);
    if (v18)
    {
      v19 = v18;
      v20 = *v32;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v16);
          }

          objc_opt_class();
          v23 = TSUDynamicCast();
          if (v23)
          {
            objc_msgSend_addObject_(v15, v22, v23, v31);
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v24, &v31, v35, 16);
      }

      while (v19);
    }

    v25 = [KNLiveVideoSourceUsage alloc];
    v27 = objc_msgSend_initWithLiveVideoInfos_(v25, v26, v15);
    if ((objc_msgSend_isEqual_(v27, v28, self->_liveVideoSourceUsage) & 1) == 0)
    {
      objc_msgSend_willModify(self, v29, v30);
      objc_storeStrong(&self->_liveVideoSourceUsage, v27);
    }
  }
}

+ (id)UUIDStringSetForSlideNodes:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CBEB58];
  v7 = objc_msgSend_count(v3, v5, v6);
  v9 = objc_msgSend_setWithCapacity_(v4, v8, v7);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v3;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v24, v28, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = objc_msgSend_objectUUID(*(*(&v24 + 1) + 8 * i), v13, v14, v24);
        v21 = objc_msgSend_UUIDString(v18, v19, v20);
        objc_msgSend_addObject_(v9, v22, v21);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v24, v28, 16);
    }

    while (v15);
  }

  return v9;
}

- (BOOL)hasSlideSpecificHyperlinkToNode:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_msgSend_objectForKeyedSubscript_(self->_slideSpecificHyperlinkMap, v5, v4);
  v48 = 0;
  v49 = &v48;
  v8 = v50 = 0x2020000000;
  v51 = v8 != 0;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    objc_msgSend_slide(self, v6, v7);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v33 = v45 = 0u;
    v12 = objc_msgSend_childInfos(v33, v10, v11);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v44, v53, 16);
    if (v14)
    {
      v35 = *v45;
      obj = v12;
      do
      {
        v15 = 0;
        v36 = v14;
        do
        {
          if (*v45 != v35)
          {
            objc_enumerationMutation(obj);
          }

          objc_opt_class();
          v16 = TSUDynamicCast();
          v19 = v16;
          if (v16)
          {
            v20 = objc_msgSend_allRichTextStorages(v16, v17, v18);
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v21 = v20;
            v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v40, v52, 16);
            if (v25)
            {
              v26 = *v41;
LABEL_11:
              v27 = 0;
              while (1)
              {
                if (*v41 != v26)
                {
                  objc_enumerationMutation(v21);
                }

                v28 = *(*(&v40 + 1) + 8 * v27);
                v29 = objc_msgSend_length(v28, v23, v24);
                v37[0] = MEMORY[0x277D85DD0];
                v37[1] = 3221225472;
                v37[2] = sub_275D73780;
                v37[3] = &unk_27A698280;
                v38 = v4;
                v39 = &v48;
                objc_msgSend_enumerateSmartFieldsWithAttributeKind_inRange_usingBlock_(v28, v30, 6, 0, v29, v37);
                LOBYTE(v28) = *(v49 + 24);

                if (v28)
                {
                  break;
                }

                if (v25 == ++v27)
                {
                  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v40, v52, 16);
                  if (v25)
                  {
                    goto LABEL_11;
                  }

                  break;
                }
              }
            }
          }

          ++v15;
        }

        while (v15 != v36);
        v12 = obj;
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v44, v53, 16);
      }

      while (v14);
    }

    v9 = *(v49 + 24);
    v8 = 0;
  }

  _Block_object_dispose(&v48, 8);

  return v9 & 1;
}

- (void)p_addHyperlinkForObjectReferencedByMapping:(id)a3 toSlideNode:(id)a4
{
  v13 = a4;
  slideSpecificHyperlinkMap = self->_slideSpecificHyperlinkMap;
  v7 = a3;
  v9 = objc_msgSend_objectForKeyedSubscript_(slideSpecificHyperlinkMap, v8, v13);
  if (v9)
  {
    v11 = v9;
    objc_msgSend_addObject_(v9, v10, v7);
  }

  else
  {
    v11 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB58], v10, v7);

    objc_msgSend_setObject_forKeyedSubscript_(self->_slideSpecificHyperlinkMap, v12, v11, v13);
  }
}

- (void)addHyperlinkForInfo:(id)a3 toSlideNode:(id)a4
{
  v6 = a4;
  v10 = objc_msgSend_objectUUID(a3, v7, v8);
  objc_msgSend_p_addHyperlinkForObjectReferencedByMapping_toSlideNode_(self, v9, v10, v6);
}

- (void)addHyperlinkForStorage:(id)a3 toSlideNode:(id)a4
{
  v14 = a3;
  v6 = a4;
  v11 = objc_msgSend_tst_tableInfo(v14, v7, v8);
  if (!v11)
  {
    v12 = objc_msgSend_objectUUID(v14, v9, v10);
    objc_msgSend_p_addHyperlinkForObjectReferencedByMapping_toSlideNode_(self, v13, v12, v6);
  }
}

- (void)addHyperlinkFieldMap:(id)a3 forStorage:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v21 = v6;
    v9 = objc_msgSend_url(a3, v7, v8);
    v12 = objc_msgSend_absoluteString(v9, v10, v11);
    v14 = v12;
    if (v9 && !objc_msgSend_rangeOfString_(v12, v13, @"?slideid="))
    {
      v17 = objc_msgSend_length(@"?slideid=", v15, v16);
      v19 = objc_msgSend_substringFromIndex_(v14, v18, v17);
      objc_msgSend_addHyperlinkForStorage_toSlideNode_(self, v20, v21, v19);
    }

    v6 = v21;
  }
}

- (void)p_removeHyperlinkForObjectReferencedByMapping:(id)a3 toSlideNode:(id)a4
{
  v15 = a3;
  v6 = a4;
  v8 = objc_msgSend_objectForKey_(self->_slideSpecificHyperlinkMap, v7, v6);
  v10 = v8;
  if (v8 && objc_msgSend_containsObject_(v8, v9, v15))
  {
    if (objc_msgSend_count(v10, v11, v12) == 1)
    {

      objc_msgSend_removeObjectForKey_(self->_slideSpecificHyperlinkMap, v14, v6);
      v10 = 0;
    }

    else
    {
      objc_msgSend_removeObject_(v10, v13, v15);
    }
  }
}

- (void)cleanOutInvalidSlideSpecificInfoEntries
{
  v62 = *MEMORY[0x277D85DE8];
  objc_msgSend_allKeys(self->_slideSpecificHyperlinkMap, a2, v2);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v59 = 0u;
  v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v56, v61, 16);
  if (v45)
  {
    v44 = *v57;
    do
    {
      v5 = 0;
      do
      {
        if (*v57 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v47 = v5;
        v46 = *(*(&v56 + 1) + 8 * v5);
        v6 = objc_msgSend_objectForKeyedSubscript_(self->_slideSpecificHyperlinkMap, v4, v46);
        v48 = objc_msgSend_set(MEMORY[0x277CBEB58], v7, v8);
        v11 = objc_msgSend_slide(self, v9, v10);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v49 = v6;
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v12, &v52, v60, 16);
        if (v13)
        {
          v14 = v13;
          v51 = *v53;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v53 != v51)
              {
                objc_enumerationMutation(v49);
              }

              v16 = *(*(&v52 + 1) + 8 * i);
              objc_opt_class();
              v19 = TSUDynamicCast();
              if (v19)
              {
                v20 = objc_msgSend_context(self, v17, v18);
                v22 = objc_msgSend_objectWithUUID_(v20, v21, v19);

                objc_opt_class();
                v23 = TSUDynamicCast();
                objc_opt_class();
                if (v23)
                {
                  v26 = objc_msgSend_parentDrawable(v23, v24, v25);
                  v27 = TSUDynamicCast();

                  if (!v27)
                  {
                    goto LABEL_22;
                  }
                }

                else
                {
                  v27 = TSUDynamicCast();
                  if (!v27)
                  {
LABEL_22:

                    goto LABEL_23;
                  }
                }

                v30 = objc_msgSend_parentInfo(v27, v28, v29);
                if (v30)
                {
                  v33 = v30;
                  while (v33 != v11)
                  {
                    v34 = objc_msgSend_parentInfo(v33, v31, v32);

                    v33 = v34;
                    if (!v34)
                    {
                      goto LABEL_22;
                    }
                  }

                  objc_msgSend_addObject_(v48, v31, v16);
                }

                goto LABEL_22;
              }

LABEL_23:
            }

            v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v35, &v52, v60, 16);
          }

          while (v14);
        }

        objc_msgSend_willModify(self, v36, v37);
        v41 = objc_msgSend_count(v48, v38, v39);
        slideSpecificHyperlinkMap = self->_slideSpecificHyperlinkMap;
        if (v41)
        {
          objc_msgSend_setObject_forKeyedSubscript_(slideSpecificHyperlinkMap, v40, v48, v46);
        }

        else
        {
          objc_msgSend_removeObjectForKey_(slideSpecificHyperlinkMap, v40, v46);
        }

        v5 = v47 + 1;
      }

      while (v47 + 1 != v45);
      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v56, v61, 16);
    }

    while (v45);
  }
}

- (void)removeHyperlinkForStorage:(id)a3 toSlideNode:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (objc_msgSend_numberOfLinksToSlideNodeInStorage_forSlideNodeUUIDString_(self, v7, v16, v6) <= 1)
  {
    v9 = objc_msgSend_p_getSlideSpecificMappingForStorage_forSlideNode_(self, v8, v16, v6);
    objc_opt_class();
    v10 = TSUDynamicCast();
    v13 = v10;
    if (!v10 || (objc_msgSend_decrement(v10, v11, v12), !objc_msgSend_linkCount(v13, v14, v15)))
    {
      objc_msgSend_p_removeHyperlinkForObjectReferencedByMapping_toSlideNode_(self, v11, v9, v6);
    }
  }
}

- (void)removeHyperlinkForInfo:(id)a3 toSlideNode:(id)a4
{
  v6 = a4;
  v10 = objc_msgSend_objectUUID(a3, v7, v8);
  objc_msgSend_p_removeHyperlinkForObjectReferencedByMapping_toSlideNode_(self, v9, v10, v6);
}

- (void)removeHyperlinkFieldMap:(id)a3 forStorage:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v21 = v6;
    v9 = objc_msgSend_url(a3, v7, v8);
    v12 = objc_msgSend_absoluteString(v9, v10, v11);
    v14 = v12;
    if (v9 && !objc_msgSend_rangeOfString_(v12, v13, @"?slideid="))
    {
      v17 = objc_msgSend_length(@"?slideid=", v15, v16);
      v19 = objc_msgSend_substringFromIndex_(v14, v18, v17);
      objc_msgSend_removeHyperlinkForStorage_toSlideNode_(self, v20, v21, v19);
    }

    v6 = v21;
  }
}

- (void)removeSlideSpecificMappingsFromDrawablesInGroup:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = objc_msgSend_childInfos(a3, a2, a3, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v22, v26, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        v13 = TSUDynamicCast();
        if (v13)
        {
          objc_msgSend_removeSlideSpecificMappingsFromDrawablesInGroup_(self, v11, v13);
        }

        else
        {
          v14 = objc_msgSend_hyperlinkURL(v10, v11, v12);

          if (v14)
          {
            v17 = objc_msgSend_hyperlinkURL(v10, v15, v16);
            v19 = objc_msgSend_uniqueIdentifierFromHyperlinkURL_(KNHyperlinkController, v18, v17);

            if (v19)
            {
              objc_msgSend_removeHyperlinkForInfo_toSlideNode_(self, v20, v10, v19);
            }
          }
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v21, &v22, v26, 16);
    }

    while (v7);
  }
}

- (id)p_getSlideSpecificMappingForStorage:(id)a3 forSlideNode:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_tst_tableInfo(v6, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_objectForKeyedSubscript_(self->_slideSpecificHyperlinkMap, v10, v7);
    v16 = objc_msgSend_objectUUID(v12, v14, v15);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = v13;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v33, v37, 16);
    if (v19)
    {
      v20 = v19;
      v32 = v6;
      v21 = *v34;
LABEL_4:
      v22 = 0;
      while (1)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v17);
        }

        objc_opt_class();
        v23 = TSUDynamicCast();
        v26 = v23;
        if (v23)
        {
          v27 = objc_msgSend_tableInfoUUID(v23, v24, v25);
          isEqual = objc_msgSend_isEqual_(v27, v28, v16);

          if (isEqual)
          {
            break;
          }
        }

        if (v20 == ++v22)
        {
          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v30, &v33, v37, 16);
          if (v20)
          {
            goto LABEL_4;
          }

          v26 = 0;
          break;
        }
      }

      v6 = v32;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = objc_msgSend_objectUUID(v6, v10, v11);
  }

  return v26;
}

- (id)childEnumerator
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_slide(self, a2, v2);
  v5 = v3;
  if (v3)
  {
    v20[0] = v3;
    v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v20, 1);
    v9 = objc_msgSend_objectEnumerator(v6, v7, v8);
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNSlideNode childEnumerator]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 791, 0, "invalid nil value for '%{public}s'", "slide");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    v9 = objc_msgSend_objectEnumerator(MEMORY[0x277CBEBF8], v17, v18);
  }

  return v9;
}

- (KNAbstractSlide)slide
{
  v13 = 0;
  v2 = objc_msgSend_slideAndReturnError_(self, a2, &v13);
  v4 = v13;
  if (!v2)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[KNSlideNode slide]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 844, 0, "Failed to load lazy slide reference with error %@", v4);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v10, v11);
  }

  return v2;
}

- (void)setSlide:(id)a3
{
  v4 = a3;
  objc_msgSend_willModify(self, v5, v6);
  v7 = objc_alloc(MEMORY[0x277D80868]);
  v9 = objc_msgSend_initWithObject_(v7, v8, v4);

  slideReference = self->_slideReference;
  self->_slideReference = v9;

  objc_msgSend_addLoadObserver_action_(self->_slideReference, v11, self, sel_didLoadSlide_);
  objc_msgSend_updateTemplateSlideUUID(self, v12, v13);
  objc_msgSend_updateBackgroundIsNoFillOrColorFillWithAlpha(self, v14, v15);

  objc_msgSend_updateLiveVideoSourceUsage(self, v16, v17);
}

- (void)setSkipped:(BOOL)a3
{
  if (self->_skipped != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_skipped = a3;
    objc_opt_class();
    v7 = objc_msgSend_context(self, v5, v6);
    v10 = objc_msgSend_documentObject(v7, v8, v9);
    v19 = TSUDynamicCast();

    v13 = objc_msgSend_show(v19, v11, v12);
    v16 = objc_msgSend_slideTree(v13, v14, v15);

    objc_msgSend_invalidateSlideNameCache(v16, v17, v18);
  }
}

- (BOOL)isSlideNumberVisible
{
  v4 = objc_msgSend_slideIfLoaded(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    isSlideNumberVisible = objc_msgSend_isSlideNumberVisible(v4, v5, v6);
  }

  else
  {
    isSlideNumberVisible = self->_slideNumberVisible;
  }

  return isSlideNumberVisible;
}

- (void)setDigestsForDatasThatNeedDownloadForThumbnail:(id)a3
{
  v4 = a3;
  digestsForDatasThatNeedDownloadForThumbnail = self->_digestsForDatasThatNeedDownloadForThumbnail;
  if (v4 | digestsForDatasThatNeedDownloadForThumbnail)
  {
    v12 = v4;
    isEqual = objc_msgSend_isEqual_(digestsForDatasThatNeedDownloadForThumbnail, v4, v4);
    v4 = v12;
    if ((isEqual & 1) == 0)
    {
      objc_msgSend_willModify(self, v12, v7);
      v10 = objc_msgSend_copy(v12, v8, v9);
      v11 = self->_digestsForDatasThatNeedDownloadForThumbnail;
      self->_digestsForDatasThatNeedDownloadForThumbnail = v10;

      v4 = v12;
    }
  }
}

- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_msgSend_slide(self, v8, v9);
  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v11, v10, v7, v6);
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = objc_msgSend_context(v7, v8, v9);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v11, v10);

  v14 = objc_msgSend_slide(self, v12, v13);
  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v14, v15, v7, v6);

  objc_opt_class();
  v23 = TSUCheckedDynamicCast();

  v18 = objc_msgSend_show(v23, v16, v17);
  v21 = objc_msgSend_recording(v18, v19, v20);
  objc_msgSend_slideNodeWasAddedToDocument_(v21, v22, self);
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUCheckedDynamicCast();
  v8 = objc_msgSend_show(v5, v6, v7);
  v11 = objc_msgSend_recording(v8, v9, v10);
  objc_msgSend_slideNodeWillBeRemovedFromDocument_(v11, v12, self);

  v15 = objc_msgSend_slide(self, v13, v14);
  objc_msgSend_willBeRemovedFromDocumentRoot_(v15, v16, v4);

  v20 = objc_msgSend_context(v4, v17, v18);

  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v19, v20);
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_slide(self, v5, v6);
  objc_msgSend_wasRemovedFromDocumentRoot_(v8, v7, v4);
}

- (void)addThumbnail:(id)a3 atSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v20 = a3;
  if (v20)
  {
    objc_msgSend_willModify(self, v7, v8);
    v11 = objc_msgSend_valueWithCGSize_(MEMORY[0x277CCAE60], v9, v10, width, height);
    objc_msgSend_setObject_forKey_(self->_thumbnails, v12, v20, v11);
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNSlideNode addThumbnail:atSize:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNode.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 929, 0, "invalid nil value for '%{public}s'", "thumbnailData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }
}

- (void)removeThumbnailAtSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  objc_msgSend_willModify(self, a2, v3);
  v10 = objc_msgSend_valueWithCGSize_(MEMORY[0x277CCAE60], v7, v8, width, height);
  objc_msgSend_removeObjectForKey_(self->_thumbnails, v9, v10);
}

- (void)removeAllThumbnails
{
  objc_msgSend_willModify(self, a2, v2);
  thumbnails = self->_thumbnails;

  objc_msgSend_removeAllObjects(thumbnails, v4, v5);
}

- (id)resolverMatchingName:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_275D74EF4;
  v19 = sub_275D74F04;
  v20 = 0;
  v7 = objc_msgSend_slide(self, v5, v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_275D74F0C;
  v12[3] = &unk_27A6982A8;
  v8 = v4;
  v13 = v8;
  v14 = &v15;
  objc_msgSend_performBlockOnInfos_(v7, v9, v12);

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

- (id)resolversMatchingPrefix:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_275D74EF4;
  v21 = sub_275D74F04;
  v22 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
  v9 = objc_msgSend_slide(self, v7, v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_275D7515C;
  v14[3] = &unk_27A6982A8;
  v10 = v4;
  v15 = v10;
  v16 = &v17;
  objc_msgSend_performBlockOnInfos_(v9, v11, v14);

  v12 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v12;
}

- (BOOL)resolverNameIsUsed:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = objc_msgSend_slide(self, v5, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_275D75360;
  v11[3] = &unk_27A6982A8;
  v8 = v4;
  v12 = v8;
  v13 = &v14;
  objc_msgSend_performBlockOnInfos_(v7, v9, v11);

  LOBYTE(v7) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v7;
}

- (unsigned)nextUntitledResolverIndex
{
  tableNameCounter = self->_tableNameCounter;
  self->_tableNameCounter = tableNameCounter + 1;
  return tableNameCounter;
}

- (void)addRemappedTableName:(id)a3
{
  v4 = a3;
  remappedTableNames = self->_remappedTableNames;
  v8 = v4;
  if (!remappedTableNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_remappedTableNames;
    self->_remappedTableNames = v6;

    v4 = v8;
    remappedTableNames = self->_remappedTableNames;
  }

  objc_msgSend_addObject_(remappedTableNames, v4, v4);
}

- (void)clearRemappedTableNames
{
  remappedTableNames = self->_remappedTableNames;
  self->_remappedTableNames = 0;
}

- (id)descendantsOmittingSkippedSlideNodes:(BOOL)a3 omittingCollapsedSlideNodes:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_slideTree);
  v9 = objc_msgSend_descendantsOfSlideNode_omitSkippedSlideNodes_omitCollapsedSlideNodes_(WeakRetained, v8, self, v5, v4);

  return v9;
}

- (void)addOldModelDescendantsToSlideTree:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_children;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v16, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_p_addOldModelDescendantsToSlideTree_atDepth_(*(*(&v12 + 1) + 8 * v11++), v8, v4, 1, v12);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v12, v16, 16);
    }

    while (v9);
  }
}

- (void)p_addOldModelDescendantsToSlideTree:(id)a3 atDepth:(unint64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_msgSend_willModifyForUpgrade(self, v7, v8);
  if (a4 >= 6)
  {
    a4 = 6;
  }

  objc_msgSend_setSlideTree_(self, v9, v6);
  objc_msgSend_addSlideNodeForDocumentUpgrade_atDepth_(v6, v10, self, a4);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_children;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v19, v23, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend_p_addOldModelDescendantsToSlideTree_atDepth_(*(*(&v19 + 1) + 8 * i), v14, v6, a4 + 1, v19);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v19, v23, 16);
    }

    while (v15);
  }

  children = self->_children;
  self->_children = 0;
}

- (void)purgeU15ModelIfNeeded
{
  if (self->_children)
  {
    objc_msgSend_willModifyForUpgrade(self, a2, v2);
    children = self->_children;
    self->_children = 0;
  }
}

- (void)p_commonInit
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  thumbnails = self->_thumbnails;
  self->_thumbnails = v3;

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  slideSpecificHyperlinkMap = self->_slideSpecificHyperlinkMap;
  self->_slideSpecificHyperlinkMap = v5;

  self->_tableNameCounter = 1;
  self->_slideNumberVisible = 0;
  self->_depth = 1;
}

- (id)paragraphIndexesOfTopLevelBullets
{
  v3 = objc_msgSend_slide(self, a2, v2);
  v6 = objc_msgSend_paragraphIndexesOfTopLevelBullets(v3, v4, v5);

  return v6;
}

- (KNSlideTree)slideTree
{
  WeakRetained = objc_loadWeakRetained(&self->_slideTree);

  return WeakRetained;
}

- (id)objectUUIDPath
{
  v4 = objc_msgSend_owningDocument(self, a2, v2);
  v7 = objc_msgSend_show(v4, v5, v6);
  v10 = objc_msgSend_theme(v7, v8, v9);

  v13 = objc_msgSend_templateSlides(v10, v11, v12);
  LODWORD(v7) = objc_msgSend_containsObject_(v13, v14, self);

  if (v7)
  {
    v17 = objc_msgSend_objectUUIDPath(v10, v15, v16);
    v20 = objc_msgSend_objectUUID(self, v18, v19);
    v22 = objc_msgSend_UUIDPathByAppendingUUID_(v17, v21, v20);
  }

  else
  {
    v24.receiver = self;
    v24.super_class = KNSlideNode;
    v22 = [(KNSlideNode *)&v24 objectUUIDPath];
  }

  return v22;
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v129 = a4;
  v10 = objc_msgSend_fileFormatVersion(v129, v6, v7);
  v11 = *(a3 + 4);
  v12 = v11;
  if ((v11 & 4) != 0)
  {
    v13 = *(a3 + 29);
    v138[0] = MEMORY[0x277D85DD0];
    v138[1] = 3221225472;
    v138[2] = sub_275D768F4;
    v138[3] = &unk_27A6982D0;
    v138[4] = self;
    v14 = v129;
    v15 = v138;
    v16 = objc_opt_class();
    objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v14, v17, v13, v16, 0, v15);

    v12 = *(a3 + 4);
  }

  if ((v12 & 0x400000) != 0)
  {
    v18 = *(a3 + 72);
    if (v18)
    {
      if (v18 >= 7)
      {
        objc_msgSend_willModifyForUpgrade(self, v8, v9);
        v18 = 6;
      }
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(self, v8, v9);
      v18 = 1;
    }

    self->_depth = v18;
  }

  v19 = *(a3 + 14);
  if (v19 >= 1)
  {
    if (v19 == *(a3 + 20))
    {
      v20 = objc_alloc(MEMORY[0x277CBEB18]);
      v24 = objc_msgSend_initWithCapacity_(v20, v21, v19);
      v25 = 8;
      do
      {
        v26 = objc_msgSend_valueWithCGSize_(MEMORY[0x277CCAE60], v22, v23, *(*(*(a3 + 11) + v25) + 24), *(*(*(a3 + 11) + v25) + 28));
        objc_msgSend_addObject_(v24, v27, v26);

        v25 += 8;
        --v19;
      }

      while (v19);
      v135[0] = MEMORY[0x277D85DD0];
      v135[1] = 3221225472;
      v135[2] = sub_275D76978;
      v135[3] = &unk_27A698320;
      v28 = v24;
      v136 = v28;
      v137 = self;
      v29 = v129;
      v30 = v135;
      v31 = objc_opt_class();
      objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v29, v32, a3 + 48, v31, 0, v30);

      goto LABEL_24;
    }

    v43 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[KNSlideNode(PersistenceAdditions) loadFromArchive:unarchiver:]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNodePersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v47, v44, v46, 139, 0, "size of thumbnails array doesn't match size of thumbnailSizes array");
LABEL_23:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52);
    goto LABEL_24;
  }

  v33 = *(a3 + 26);
  if (v33 < 1)
  {
    goto LABEL_24;
  }

  if (v33 != *(a3 + 20))
  {
    v48 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[KNSlideNode(PersistenceAdditions) loadFromArchive:unarchiver:]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNodePersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v50, v44, v46, 153, 0, "size of thumbnails array doesn't match size of thumbnailSizes array");
    goto LABEL_23;
  }

  v34 = 8;
  do
  {
    v35 = *(*(a3 + 11) + v34);
    v36 = *(v35 + 24);
    v37 = *(v35 + 28);
    v38 = objc_msgSend_readDataReferenceMessage_(v129, v8, *(*(a3 + 14) + v34));
    v41 = objc_msgSend_null(MEMORY[0x277D80828], v39, v40);

    if (v38 != v41)
    {
      objc_msgSend_addThumbnail_atSize_(self, v42, v38, v36, v37);
    }

    v34 += 8;
    --v33;
  }

  while (v33);
LABEL_24:
  obj = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (*(a3 + 38) >= 1)
  {
    v54 = 0;
    do
    {
      v55 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v53, *(*(a3 + 20) + 8 * v54 + 8));
      objc_msgSend_addObject_(obj, v56, v55);

      ++v54;
    }

    while (v54 < *(a3 + 38));
  }

  objc_storeStrong(&self->_digestsForDatasThatNeedDownloadForThumbnail, obj);
  v58 = *(a3 + 4);
  if ((v58 & 8) != 0)
  {
    v59 = *(a3 + 30);
    v134[0] = MEMORY[0x277D85DD0];
    v134[1] = 3221225472;
    v134[2] = sub_275D76B0C;
    v134[3] = &unk_27A698368;
    v134[4] = self;
    v60 = v129;
    v61 = v134;
    v62 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v60, v63, v59, v62, 0, v61);

    v58 = *(a3 + 4);
  }

  if ((v58 & 0x20) != 0)
  {
    self->_thumbnailsAreDirty = *(a3 + 256);
  }

  self->_skipped = *(a3 + 257);
  self->_collapsed = *(a3 + 258) & (v58 >> 7);
  self->_collapsedInOutlineView = *(a3 + 259) & (v58 << 23 >> 31);
  self->_hasBodyInOutlineView = *(a3 + 260) & (v58 << 22 >> 31);
  objc_msgSend_setHasTransition_(self, v57, *(a3 + 262));
  v66 = *(a3 + 4);
  self->_hasNote = *(a3 + 263) & (v66 << 19 >> 31);
  if ((v66 & 0x8000) != 0)
  {
    self->_slideNumberVisible = *(a3 + 272);
  }

  else
  {
    if ((objc_msgSend_hasPreUFFVersion(v129, v64, v65) & 1) == 0)
    {
      v67 = MEMORY[0x277D81150];
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "[KNSlideNode(PersistenceAdditions) loadFromArchive:unarchiver:]");
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNodePersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v71, v68, v70, 227, 0, "Missing isSlideNumberVisible on slide node.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73);
    }

    if ((v11 & 4) != 0)
    {
      v133[0] = MEMORY[0x277D85DD0];
      v133[1] = 3221225472;
      v133[2] = sub_275D76C68;
      v133[3] = &unk_27A698390;
      v133[4] = self;
      objc_msgSend_addFinalizeHandler_(v129, v64, v133);
    }
  }

  if (v10 > 0x400000000000ALL && (*(a3 + 18) & 0x20) != 0)
  {
    self->_backgroundIsNoFillOrColorFillWithAlpha = *(a3 + 284);
  }

  else if ((v11 & 4) != 0)
  {
    if (v10 >= 0x400000000000BLL)
    {
      v74 = MEMORY[0x277D81150];
      v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "[KNSlideNode(PersistenceAdditions) loadFromArchive:unarchiver:]");
      v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNodePersistenceAdditions.mm");
      v78 = NSStringFromTSPVersion();
      v79 = NSStringFromTSPVersion();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v80, v75, v77, 250, 0, "Slide background alpha expected in document saved at or after version %@ (message version is %@).", v78, v79);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82);
    }

    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = sub_275D76D64;
    v132[3] = &unk_27A698390;
    v132[4] = self;
    objc_msgSend_addFinalizeHandler_(v129, v64, v132);
  }

  v83 = *(a3 + 4);
  self->_slideSpecificHyperlinksCount = *(a3 + 66) & (v83 << 18 >> 31);
  if ((v83 & 0x4000) != 0)
  {
    self->_buildEventCount = *(a3 + 67);
  }

  if ((v83 & 0x80000) != 0)
  {
    v84 = *(a3 + 69) < 3u;
    goto LABEL_50;
  }

  if ((v83 & 0x10000) != 0)
  {
    v84 = *(a3 + 273);
LABEL_50:
    self->_buildEventCountIsUpToDate = v84;
  }

  if (v10 <= 0x2000300000002 && self->_buildEventCountIsUpToDate)
  {
    objc_msgSend_willModifyForUpgrade(self, v64, v65);
    self->_buildEventCountIsUpToDate = 0;
    v83 = *(a3 + 4);
  }

  if ((v83 & 0x20000) != 0)
  {
    self->_hasExplicitBuilds = *(a3 + 274);
  }

  if ((v83 & 0x100000) != 0)
  {
    v85 = *(a3 + 70) < 3u;
  }

  else
  {
    if ((v83 & 0x40000) == 0)
    {
      goto LABEL_61;
    }

    v85 = *(a3 + 275);
  }

  self->_hasExplicitBuildsIsUpToDate = v85;
LABEL_61:
  if (self->_previousIdentifier)
  {
    v86 = MEMORY[0x277D81150];
    v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "[KNSlideNode(PersistenceAdditions) loadFromArchive:unarchiver:]");
    v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNodePersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v86, v90, v87, v89, 322, 0, "expected nil value for '%{public}s'", "_previousIdentifier");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92);
    v83 = *(a3 + 4);
  }

  if (v83)
  {
    v96 = objc_alloc(MEMORY[0x277CCACA8]);
    v95 = objc_msgSend_tsp_initWithProtobufString_(v96, v97, *(a3 + 27) & 0xFFFFFFFFFFFFFFFELL);
    goto LABEL_67;
  }

  if ((v83 & 2) != 0)
  {
    v93 = objc_alloc(MEMORY[0x277CCACA8]);
    v95 = objc_msgSend_tsp_initWithProtobufString_(v93, v94, *(a3 + 28) & 0xFFFFFFFFFFFFFFFELL);
LABEL_67:
    v98 = v95;
    objc_storeStrong(&self->_previousIdentifier, v95);
  }

  if (v10 < *MEMORY[0x277D80968] || v10 < *MEMORY[0x277D80970] && *(a3 + 8) >= 1)
  {
    v131[0] = MEMORY[0x277D85DD0];
    v131[1] = 3221225472;
    v131[2] = sub_275D76E60;
    v131[3] = &unk_27A697A10;
    v131[4] = self;
    v99 = v129;
    v100 = v131;
    v101 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v99, v102, a3 + 24, v101, 0, v100);
  }

  objc_msgSend_removeAllObjects(self->_slideSpecificHyperlinkMap, v64, v65);
  v104 = a3;
  if (*(a3 + 32) >= 1)
  {
    v105 = 0;
    do
    {
      v106 = v104;
      v107 = *(*(v104 + 17) + 8 * v105 + 8);
      v108 = objc_alloc(MEMORY[0x277CCACA8]);
      v110 = objc_msgSend_tsp_initWithProtobufString_(v108, v109, *(v107 + 48) & 0xFFFFFFFFFFFFFFFELL);
      v113 = objc_msgSend_set(MEMORY[0x277CBEB58], v111, v112);
      objc_msgSend_setObject_forKeyedSubscript_(self->_slideSpecificHyperlinkMap, v114, v113, v110);
      if (*(v107 + 32) >= 1)
      {
        v115 = 0;
        do
        {
          v116 = objc_alloc(MEMORY[0x277CCACA8]);
          v118 = objc_msgSend_tsp_initWithProtobufString_(v116, v117, *(*(v107 + 40) + 8 * v115 + 8));
          v120 = objc_msgSend_p_mappingFromString_(self, v119, v118);
          objc_msgSend_addObject_(v113, v121, v120);

          ++v115;
        }

        while (v115 < *(v107 + 32));
      }

      ++v105;
      v104 = v106;
    }

    while (v105 < v106[32]);
  }

  v122 = v104;
  if ((v104[4] & 0x10) != 0)
  {
    v123 = objc_msgSend_readWeakObjectUUIDReferenceMessage_(v129, v103, *(v104 + 31));
    templateSlideUUID = self->_templateSlideUUID;
    self->_templateSlideUUID = v123;
  }

  v125 = [KNLiveVideoSourceUsage alloc];
  v127 = objc_msgSend_initWithLiveVideoSourceUUIDMessages_entryMessages_unarchiver_(v125, v126, (v122 + 42), v122 + 48, v129);
  liveVideoSourceUsage = self->_liveVideoSourceUsage;
  self->_liveVideoSourceUsage = v127;
}

- (id)p_mappingFromString:(id)a3
{
  v3 = a3;
  v5 = objc_msgSend_componentsSeparatedByString_(v3, v4, @",");
  if (objc_msgSend_count(v5, v6, v7) == 2)
  {
    objc_opt_class();
    v9 = objc_msgSend_objectAtIndexedSubscript_(v5, v8, 1);
    v10 = TSUDynamicCast();

    v13 = objc_msgSend_integerValue(v10, v11, v12);
    v14 = objc_alloc(MEMORY[0x277CCAD78]);
    v16 = objc_msgSend_objectAtIndexedSubscript_(v5, v15, 0);
    v18 = objc_msgSend_initWithUUIDString_(v14, v17, v16);

    v19 = [KNSlideNodeSlideSpecificTableCounter alloc];
    v21 = objc_msgSend_initWithTableInfoUUID_andLinkCount_(v19, v20, v18, v13);
  }

  else
  {
    v22 = objc_alloc(MEMORY[0x277CCAD78]);
    v21 = objc_msgSend_initWithUUIDString_(v22, v23, v3);
  }

  return v21;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v190 = *MEMORY[0x277D85DE8];
  v160 = a4;
  v166 = self;
  v7 = objc_msgSend_depth(self, v5, v6);
  if (v7 >> 31)
  {
    v146 = MEMORY[0x277D81150];
    v147 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[KNSlideNode(PersistenceAdditions) saveToArchive:archiver:]");
    v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v148, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNodePersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v146, v150, v147, v149, 390, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v151, v152);
    LODWORD(v7) = 0x7FFFFFFF;
  }

  v10 = a3;
  *(a3 + 4) |= 0x400000u;
  *(a3 + 72) = v7;
  hasNote = objc_msgSend_hasNote(v166, v8, v9);
  *(a3 + 4) |= 0x1000u;
  *(a3 + 263) = hasNote;
  isSlideNumberVisible = objc_msgSend_isSlideNumberVisible(v166, v12, v13);
  v15 = *(a3 + 4);
  *(a3 + 272) = isSlideNumberVisible;
  *(a3 + 4) = v15 | 0x8400;
  *(a3 + 261) = 0;
  hasTransition = objc_msgSend_hasTransition(v166, v16, v17);
  *(a3 + 4) |= 0x800u;
  *(a3 + 262) = hasTransition;
  isSkipped = objc_msgSend_isSkipped(v166, v19, v20);
  *(a3 + 4) |= 0x40u;
  *(a3 + 257) = isSkipped;
  if (v166->_buildEventCountIsUpToDate)
  {
    v24 = objc_msgSend_buildEventCount(v166, v22, v23);
    if (v24 >> 31)
    {
      v153 = MEMORY[0x277D81150];
      v154 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[KNSlideNode(PersistenceAdditions) saveToArchive:archiver:]");
      v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v155, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNodePersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v153, v157, v154, v156, 401, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v158, v159);
      LODWORD(v24) = 0x7FFFFFFF;
    }

    v10 = a3;
    *(a3 + 4) |= 0x4000u;
    *(a3 + 67) = v24;
  }

  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v160, v22, 26, v10);
  if (v166->_buildEventCountIsUpToDate)
  {
    v27 = 2;
  }

  else
  {
    v27 = -1;
  }

  *(v10 + 4) |= 0x80000u;
  *(v10 + 69) = v27;
  if (v166->_hasExplicitBuildsIsUpToDate)
  {
    hasExplicitBuilds = objc_msgSend_hasExplicitBuilds(v166, v25, v26);
    *(v10 + 4) |= 0x20000u;
    *(v10 + 274) = hasExplicitBuilds;
  }

  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v160, v25, 27, v10);
  v31 = v166;
  if (v166->_hasExplicitBuildsIsUpToDate)
  {
    v32 = 2;
  }

  else
  {
    v32 = -1;
  }

  v33 = *(v10 + 4);
  *(v10 + 70) = v32;
  backgroundIsNoFillOrColorFillWithAlpha = v166->_backgroundIsNoFillOrColorFillWithAlpha;
  *(v10 + 4) = v33 | 0x300000;
  *(v10 + 284) = backgroundIsNoFillOrColorFillWithAlpha;
  slideReference = v166->_slideReference;
  if (slideReference)
  {
    *(v10 + 4) = v33 | 0x300004;
    v36 = *(v10 + 29);
    if (!v36)
    {
      v37 = *(a3 + 1);
      if (v37)
      {
        v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
      }

      v36 = MEMORY[0x277C8F050](v37);
      *(a3 + 29) = v36;
    }

    objc_msgSend_setStrongLazyReference_message_(v160, v29, slideReference, v36);
    v31 = v166;
  }

  if (v31->_thumbnails)
  {
    v38 = objc_alloc(MEMORY[0x277CBEB18]);
    v41 = objc_msgSend_count(v166->_thumbnails, v39, v40);
    v43 = objc_msgSend_initWithCapacity_(v38, v42, v41);
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v46 = objc_msgSend_keyEnumerator(v166->_thumbnails, v44, v45);
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v180, v189, 16);
    if (!v49)
    {
      goto LABEL_36;
    }

    v50 = *v181;
    while (1)
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v181 != v50)
        {
          objc_enumerationMutation(v46);
        }

        v52 = *(*(&v180 + 1) + 8 * i);
        v53 = objc_msgSend_objectForKeyedSubscript_(v166->_thumbnails, v48, v52);
        objc_msgSend_addObject_(v43, v54, v53);

        objc_msgSend_CGSizeValue(v52, v55, v56);
        v58 = v57;
        v60 = v59;
        v61 = *(a3 + 11);
        if (!v61)
        {
          goto LABEL_32;
        }

        v62 = *(a3 + 20);
        v63 = *v61;
        if (v62 < *v61)
        {
          *(a3 + 20) = v62 + 1;
          v64 = *&v61[2 * v62 + 2];
          goto LABEL_34;
        }

        if (v63 == *(a3 + 21))
        {
LABEL_32:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 72));
          v61 = *(a3 + 11);
          v63 = *v61;
        }

        *v61 = v63 + 1;
        v64 = MEMORY[0x277C8EFF0](*(a3 + 9));
        v65 = *(a3 + 20);
        v66 = *(a3 + 11) + 8 * v65;
        *(a3 + 20) = v65 + 1;
        *(v66 + 8) = v64;
LABEL_34:
        v67 = v58;
        v68 = v60;
        *(v64 + 16) |= 3u;
        *(v64 + 24) = v67;
        *(v64 + 28) = v68;
      }

      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v48, &v180, v189, 16);
      if (!v49)
      {
LABEL_36:

        objc_msgSend_setDataReferenceArray_message_(v160, v69, v43, a3 + 96);
        break;
      }
    }
  }

  v70 = objc_msgSend_thumbnailsAreDirty(v166, v29, v30);
  *(a3 + 4) |= 0x20u;
  *(a3 + 256) = v70;
  digestsForDatasThatNeedDownloadForThumbnail = v166->_digestsForDatasThatNeedDownloadForThumbnail;
  if (digestsForDatasThatNeedDownloadForThumbnail)
  {
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v74 = digestsForDatasThatNeedDownloadForThumbnail;
    v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, &v176, v188, 16);
    if (!v76)
    {
      goto LABEL_52;
    }

    v77 = *v177;
    while (1)
    {
      for (j = 0; j != v76; ++j)
      {
        if (*v177 != v77)
        {
          objc_enumerationMutation(v74);
        }

        v79 = *(*(&v176 + 1) + 8 * j);
        v82 = objc_msgSend_UTF8String(v79, v80, v81);
        v83 = a3;
        v84 = *(a3 + 20);
        if (!v84)
        {
          goto LABEL_48;
        }

        v85 = *(a3 + 38);
        v86 = *v84;
        if (v85 < *v84)
        {
          *(a3 + 38) = v85 + 1;
          v87 = *&v84[2 * v85 + 2];
          goto LABEL_50;
        }

        if (v86 == *(a3 + 39))
        {
LABEL_48:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 144));
          v83 = a3;
          v84 = *(a3 + 20);
          v86 = *v84;
        }

        *v84 = v86 + 1;
        v87 = sub_275D5EFD8(v83[18]);
        v88 = *(a3 + 38);
        v89 = *(a3 + 20) + 8 * v88;
        *(a3 + 38) = v88 + 1;
        *(v89 + 8) = v87;
LABEL_50:
        MEMORY[0x277C8F920](v87, v82);
      }

      v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v90, &v176, v188, 16);
      if (!v76)
      {
LABEL_52:

        break;
      }
    }
  }

  previousIdentifier = v166->_previousIdentifier;
  if (previousIdentifier)
  {
    v92 = objc_msgSend_UTF8String(previousIdentifier, v71, v72);
    *(a3 + 4) |= 2u;
    sub_275D55B98(__p, v92);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v185 < 0)
    {
      operator delete(__p[0]);
    }
  }

  objc_msgSend_allKeys(v166->_slideSpecificHyperlinkMap, v71, v72);
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  obj = v173 = 0u;
  v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v93, &v172, v187, 16);
  if (v163)
  {
    v162 = *v173;
    do
    {
      for (k = 0; k != v163; ++k)
      {
        if (*v173 != v162)
        {
          objc_enumerationMutation(obj);
        }

        v95 = *(*(&v172 + 1) + 8 * k);
        v164 = objc_msgSend_objectForKeyedSubscript_(v166->_slideSpecificHyperlinkMap, v94, v95);
        v96 = a3;
        v97 = *(a3 + 17);
        if (!v97)
        {
          goto LABEL_66;
        }

        v98 = *(a3 + 32);
        v99 = *v97;
        if (v98 < *v97)
        {
          *(a3 + 32) = v98 + 1;
          v100 = *&v97[2 * v98 + 2];
          goto LABEL_68;
        }

        if (v99 == *(a3 + 33))
        {
LABEL_66:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 120));
          v96 = a3;
          v97 = *(a3 + 17);
          v99 = *v97;
        }

        *v97 = v99 + 1;
        v100 = sub_275E20080(v96[15]);
        v101 = *(a3 + 32);
        v102 = *(a3 + 17) + 8 * v101;
        *(a3 + 32) = v101 + 1;
        *(v102 + 8) = v100;
LABEL_68:
        v103 = v95;
        v106 = objc_msgSend_UTF8String(v95, v104, v105);
        *(v100 + 16) |= 1u;
        sub_275D55B98(__p, v106);
        google::protobuf::internal::ArenaStringPtr::Set();
        if (v185 < 0)
        {
          operator delete(__p[0]);
        }

        v168 = 0u;
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v107 = v164;
        v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v108, &v168, v186, 16);
        if (v109)
        {
          v110 = *v169;
          do
          {
            for (m = 0; m != v109; ++m)
            {
              if (*v169 != v110)
              {
                objc_enumerationMutation(v107);
              }

              objc_opt_class();
              v112 = TSUDynamicCast();
              v115 = v112;
              if (v112)
              {
                v116 = objc_msgSend_stringValue(v112, v113, v114);
                v117 = v116;
                v120 = objc_msgSend_UTF8String(v116, v118, v119);

                v121 = *(v100 + 40);
                if (!v121)
                {
                  goto LABEL_84;
                }

                v122 = *(v100 + 32);
                v123 = *v121;
                if (v122 < *v121)
                {
                  *(v100 + 32) = v122 + 1;
                  v124 = *&v121[2 * v122 + 2];
LABEL_86:
                  MEMORY[0x277C8F920](v124, v120);
                  goto LABEL_92;
                }

                if (v123 == *(v100 + 36))
                {
LABEL_84:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v100 + 24));
                  v121 = *(v100 + 40);
                  v123 = *v121;
                }

                *v121 = v123 + 1;
                v124 = sub_275D5EFD8(*(v100 + 24));
                v137 = *(v100 + 32);
                v138 = *(v100 + 40) + 8 * v137;
                *(v100 + 32) = v137 + 1;
                *(v138 + 8) = v124;
                goto LABEL_86;
              }

              objc_opt_class();
              v125 = TSUDynamicCast();
              v128 = objc_msgSend_UUIDString(v125, v126, v127);
              v129 = v128;
              v132 = objc_msgSend_UTF8String(v128, v130, v131);

              v133 = *(v100 + 40);
              if (!v133)
              {
                goto LABEL_89;
              }

              v134 = *(v100 + 32);
              v135 = *v133;
              if (v134 >= *v133)
              {
                if (v135 == *(v100 + 36))
                {
LABEL_89:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v100 + 24));
                  v133 = *(v100 + 40);
                  v135 = *v133;
                }

                *v133 = v135 + 1;
                v136 = sub_275D5EFD8(*(v100 + 24));
                v139 = *(v100 + 32);
                v140 = *(v100 + 40) + 8 * v139;
                *(v100 + 32) = v139 + 1;
                *(v140 + 8) = v136;
                goto LABEL_91;
              }

              *(v100 + 32) = v134 + 1;
              v136 = *&v133[2 * v134 + 2];
LABEL_91:
              MEMORY[0x277C8F920](v136, v132);

LABEL_92:
            }

            v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v141, &v168, v186, 16);
          }

          while (v109);
        }
      }

      v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v94, &v172, v187, 16);
    }

    while (v163);
  }

  templateSlideUUID = v166->_templateSlideUUID;
  if (templateSlideUUID)
  {
    *(a3 + 4) |= 0x10u;
    v144 = *(a3 + 31);
    if (!v144)
    {
      v145 = *(a3 + 1);
      if (v145)
      {
        v145 = *(v145 & 0xFFFFFFFFFFFFFFFELL);
      }

      v144 = MEMORY[0x277C8F000](v145);
      *(a3 + 31) = v144;
    }

    objc_msgSend_setWeakReferenceToObjectUUID_message_(v160, v142, templateSlideUUID, v144);
  }

  objc_msgSend_saveToLiveVideoSourceUUIDMessages_entryMessages_archiver_(v166->_liveVideoSourceUsage, v142, a3 + 168, a3 + 192, v160);
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  objc_msgSend_p_commonInit(self, v5, v6);
  v10 = v4;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(v10, v7, off_2812EA908[36]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v9, v8, v10);
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_275D77E80, off_2812EA908[36]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, v7);
}

- (void)clearSlideSpecificLinkMap
{
  objc_msgSend_willModify(self, a2, v2);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  slideSpecificHyperlinkMap = self->_slideSpecificHyperlinkMap;
  self->_slideSpecificHyperlinkMap = v4;
}

- (unint64_t)numberOfLinksToSlideNodeInStorage:(id)a3 forSlideNodeUUIDString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_length(v5, v7, v8);
  MEMORY[0x277C8E690](v28, v5, 0, v9, 6, 0);
  v10 = 0;
  while (TSWPAttributeEnumerator::nextAttributeIndex(v28, 0))
  {
    objc_opt_class();
    v11 = TSWPAttributeRecord::object();
    v12 = TSUDynamicCast();

    if (v12)
    {
      v15 = objc_msgSend_url(v12, v13, v14);
      v18 = objc_msgSend_absoluteString(v15, v16, v17);
      v20 = v18;
      if (v15)
      {
        if (!objc_msgSend_rangeOfString_(v18, v19, @"?slideid="))
        {
          v23 = objc_msgSend_length(@"?slideid=", v21, v22);
          v25 = objc_msgSend_substringFromIndex_(v20, v24, v23);
          v10 += objc_msgSend_isEqualToString_(v25, v26, v6);
        }
      }
    }
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v28);

  return v10;
}

+ (id)slideNodeUUIDForObsoleteUniqueIDString:(id)a3 inSlideNodes:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = a4;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v30, v34, 16);
  if (v10)
  {
    v11 = *v31;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v31 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v30 + 1) + 8 * v12);
      v14 = objc_msgSend_previousIdentifier(v13, v8, v9, v30);
      isEqualToString = objc_msgSend_isEqualToString_(v5, v15, v14);

      if (isEqualToString)
      {
        break;
      }

      v19 = objc_msgSend_objectUUID(v13, v17, v18);
      v22 = objc_msgSend_UUIDString(v19, v20, v21);
      v24 = objc_msgSend_isEqualToString_(v5, v23, v22);

      if (v24)
      {
        goto LABEL_10;
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v30, v34, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v27 = objc_msgSend_objectUUID(v13, v17, v18);
    v25 = objc_msgSend_UUIDString(v27, v28, v29);

    if (v25)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_10:
  }

  v25 = v5;
LABEL_12:

  return v25;
}

- (void)upgradeSlideSpecificStorageHyperlinksForStorage:(id)a3 withSlideNodes:(id)a4
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v59 = a4;
  v60 = v5;
  v8 = objc_msgSend_length(v5, v6, v7);
  MEMORY[0x277C8E690](v67, v5, 0, v8, 6, 0);
  v54 = objc_msgSend_set(MEMORY[0x277CBEB58], v9, v10);
  while (TSWPAttributeEnumerator::nextAttributeIndex(v67, 0))
  {
    objc_opt_class();
    v11 = TSWPAttributeRecord::object();
    v12 = TSUDynamicCast();

    if (v12)
    {
      objc_msgSend_addObject_(v54, v13, v12);
    }
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v54;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v63, v68, 16);
  if (v17)
  {
    v18 = *v64;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v64 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v63 + 1) + 8 * i);
        v21 = objc_msgSend_url(v20, v15, v16);
        v24 = objc_msgSend_absoluteString(v21, v22, v23);
        v26 = v24;
        if (v21 && !objc_msgSend_rangeOfString_(v24, v25, @"?slideid="))
        {
          v29 = objc_msgSend_length(@"?slideid=", v27, v28);
          v31 = objc_msgSend_substringFromIndex_(v26, v30, v29);
          v35 = objc_msgSend_p_slideNodeWithUUIDString_inSlideNodes_(self, v32, v31, v59);
          v36 = v31;
          if (!v35)
          {
            v58 = objc_msgSend_slideNodeUUIDForObsoleteUniqueIDString_inSlideNodes_(KNSlideNode, v33, v31, v59);

            if ((objc_msgSend_isEqualToString_(v31, v37, v58) & 1) == 0)
            {
              v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v33, @"%@%@", @"?slideid=", v58);
              v40 = objc_msgSend_range(v20, v38, v39);
              v56 = v41;
              v42 = v40;
              objc_msgSend_willModifyForUpgrade(v60, v41, v43);
              objc_msgSend_removeSmartField_fromRange_undoTransaction_(v60, v44, v20, v42, v56, 0);
              v55 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v45, v57);
              v46 = objc_alloc(MEMORY[0x277D80E58]);
              v49 = objc_msgSend_context(v60, v47, v48);
              v51 = objc_msgSend_initWithContext_url_(v46, v50, v49, v55);

              objc_msgSend_addSmartField_toRange_dolcContext_undoTransaction_(v60, v52, v51, v42, v56, 0, 0);
            }

            v36 = v58;
          }

          objc_msgSend_willModifyForUpgrade(self, v33, v34);
          objc_msgSend_addHyperlinkForStorage_toSlideNode_(self, v53, v60, v36);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v63, v68, 16);
    }

    while (v17);
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v67);
}

- (void)removeInvalidSlideSpecificHyperlinksForStorage:(id)a3 withSlideNodeUUIDStrings:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v47 = a4;
  v49 = v5;
  v8 = objc_msgSend_length(v5, v6, v7);
  MEMORY[0x277C8E690](v55, v5, 0, v8, 6, 0);
  v46 = objc_msgSend_set(MEMORY[0x277CBEB58], v9, v10);
  while (TSWPAttributeEnumerator::nextAttributeIndex(v55, 0))
  {
    objc_opt_class();
    v11 = TSWPAttributeRecord::object();
    v12 = TSUDynamicCast();

    if (v12)
    {
      objc_msgSend_addObject_(v46, v13, v12);
    }
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v46;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v51, v56, 16);
  if (v17)
  {
    v18 = *v52;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v52 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v51 + 1) + 8 * i);
        v21 = objc_msgSend_url(v20, v15, v16, v46);
        v24 = objc_msgSend_absoluteString(v21, v22, v23);
        v26 = v24;
        if (v21 && !objc_msgSend_rangeOfString_(v24, v25, @"?slideid="))
        {
          v29 = objc_msgSend_length(@"?slideid=", v27, v28);
          v31 = objc_msgSend_substringFromIndex_(v26, v30, v29);
          if ((objc_msgSend_containsObject_(v47, v32, v31) & 1) == 0)
          {
            v35 = objc_msgSend_range(v20, v33, v34);
            v36 = v33;
            if (*MEMORY[0x277D81490] != v35 || *(MEMORY[0x277D81490] + 8) != v33)
            {
              objc_msgSend_willModifyForUpgrade(v49, v33, v34);
              objc_msgSend_removeSmartField_fromRange_undoTransaction_(v49, v37, v20, v35, v36, 0);
              v38 = MEMORY[0x277D80DB0];
              v41 = objc_msgSend_context(v49, v39, v40);
              v43 = objc_msgSend_nullStyleWithContext_(v38, v42, v41);
              objc_msgSend_setCharacterStyle_range_undoTransaction_(v49, v44, v43, v35, v36, 0);
            }
          }

          objc_msgSend_willModifyForUpgrade(self, v33, v34);
          objc_msgSend_removeHyperlinkForStorage_toSlideNode_(self, v45, v49, v31);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v51, v56, 16);
    }

    while (v17);
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v55);
}

- (void)upgradeSlideSpecificHyperlinksForSlideNodes:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v56 = objc_msgSend_slide(self, v5, v6);
  objc_msgSend_childInfos(v56, v7, v8);
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  obj = v67 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v66, v71, 16);
  if (v12)
  {
    v59 = *v67;
    do
    {
      v13 = 0;
      v58 = v12;
      do
      {
        if (*v67 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v66 + 1) + 8 * v13);
        v60 = objc_msgSend_hyperlinkURL(v14, v10, v11);
        v61 = objc_msgSend_absoluteString(v60, v15, v16);
        if (v60 && !objc_msgSend_rangeOfString_(v61, v17, @"?slideid="))
        {
          v20 = objc_msgSend_length(@"?slideid=", v18, v19);
          v22 = objc_msgSend_substringFromIndex_(v61, v21, v20);
          v26 = objc_msgSend_p_slideNodeWithUUIDString_inSlideNodes_(self, v23, v22, v4);
          v27 = v22;
          if (!v26)
          {
            v28 = objc_msgSend_slideNodeUUIDForObsoleteUniqueIDString_inSlideNodes_(KNSlideNode, v24, v22, v4);

            if ((objc_msgSend_isEqualToString_(v22, v29, v28) & 1) == 0)
            {
              v30 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"%@%@", @"?slideid=", v28);
              objc_msgSend_willModifyForUpgrade(v14, v31, v32);
              v34 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v33, v30);
              objc_msgSend_setHyperlinkURL_(v14, v35, v34);
            }

            v27 = v28;
          }

          objc_msgSend_willModifyForUpgrade(self, v24, v25);
          objc_msgSend_addHyperlinkForInfo_toSlideNode_(self, v36, v14, v27);
        }

        objc_opt_class();
        v37 = TSUDynamicCast();
        v40 = v37;
        if (v37)
        {
          v41 = objc_msgSend_textStorage(v37, v38, v39);
          objc_msgSend_upgradeSlideSpecificStorageHyperlinksForStorage_withSlideNodes_(self, v42, v41, v4);
        }

        objc_opt_class();
        v43 = TSUDynamicCast();
        v46 = v43;
        if (v43)
        {
          v47 = objc_msgSend_allRichTextStorages(v43, v44, v45);
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v48 = v47;
          v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v62, v70, 16);
          if (v51)
          {
            v52 = *v63;
            do
            {
              for (i = 0; i != v51; ++i)
              {
                if (*v63 != v52)
                {
                  objc_enumerationMutation(v48);
                }

                v54 = *(*(&v62 + 1) + 8 * i);
                objc_msgSend_setParentInfo_(v54, v50, v46);
                objc_msgSend_upgradeSlideSpecificStorageHyperlinksForStorage_withSlideNodes_(self, v55, v54, v4);
              }

              v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v50, &v62, v70, 16);
            }

            while (v51);
          }

          v12 = v58;
        }

        ++v13;
      }

      while (v13 != v12);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v66, v71, 16);
    }

    while (v12);
  }

  self->_slideSpecificHyperlinksCount = 0;
}

- (id)p_slideNodeWithUUIDString:(id)a3 inSlideNodes:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = a4;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v10)
  {
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = objc_msgSend_objectUUID(v13, v8, v9, v21);
        v17 = objc_msgSend_UUIDString(v14, v15, v16);
        isEqualToString = objc_msgSend_isEqualToString_(v5, v18, v17);

        if (isEqualToString)
        {
          v10 = v13;
          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v21, v25, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

- (void)removeInvalidSlideSpecificHyperlinksWithSlideNodeUUIDStrings:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v46 = objc_msgSend_slide(self, v5, v6);
  objc_msgSend_childInfos(v46, v7, v8);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  obj = v57 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v56, v61, 16);
  if (v12)
  {
    v49 = *v57;
    do
    {
      v13 = 0;
      v48 = v12;
      do
      {
        if (*v57 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v56 + 1) + 8 * v13);
        v50 = objc_msgSend_hyperlinkURL(v14, v10, v11);
        v51 = objc_msgSend_absoluteString(v50, v15, v16);
        if (v50 && !objc_msgSend_rangeOfString_(v51, v17, @"?slideid="))
        {
          v20 = objc_msgSend_length(@"?slideid=", v18, v19);
          v22 = objc_msgSend_substringFromIndex_(v51, v21, v20);
          if ((objc_msgSend_containsObject_(v4, v23, v22) & 1) == 0)
          {
            objc_msgSend_willModifyForUpgrade(v14, v24, v25);
            objc_msgSend_setHyperlinkURL_(v14, v26, 0);
          }
        }

        objc_opt_class();
        v27 = TSUDynamicCast();
        v30 = v27;
        if (v27)
        {
          v31 = objc_msgSend_textStorage(v27, v28, v29);
          objc_msgSend_removeInvalidSlideSpecificHyperlinksForStorage_withSlideNodeUUIDStrings_(self, v32, v31, v4);
        }

        objc_opt_class();
        v33 = TSUDynamicCast();
        v36 = v33;
        if (v33)
        {
          v37 = objc_msgSend_allRichTextStorages(v33, v34, v35);
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v38 = v37;
          v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v52, v60, 16);
          if (v41)
          {
            v42 = *v53;
            do
            {
              for (i = 0; i != v41; ++i)
              {
                if (*v53 != v42)
                {
                  objc_enumerationMutation(v38);
                }

                v44 = *(*(&v52 + 1) + 8 * i);
                objc_msgSend_setParentInfo_(v44, v40, v36);
                objc_msgSend_removeInvalidSlideSpecificHyperlinksForStorage_withSlideNodeUUIDStrings_(self, v45, v44, v4);
              }

              v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v40, &v52, v60, 16);
            }

            while (v41);
          }

          v12 = v48;
        }

        ++v13;
      }

      while (v13 != v12);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v56, v61, 16);
    }

    while (v12);
  }
}

@end