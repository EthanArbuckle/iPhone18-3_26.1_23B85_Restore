@interface KNAbstractSlide
+ (BOOL)chunk:(id)a3 isFirstInDeliveryGroupForChunks:(id)a4;
+ (Class)classForUnarchiver:(id)a3;
+ (id)buildChunksInDeliveryGroupAtIndex:(unint64_t)a3 inBuildChunks:(id)a4;
+ (id)p_firstActiveChunkInChunks:(id)a3;
+ (id)parentSlideForInfo:(id)a3;
+ (unint64_t)deliveryGroupCountForBuildChunks:(id)a3;
+ (unint64_t)deliveryGroupIndexForBuildChunk:(id)a3 inBuildChunks:(id)a4;
- (BOOL)areBuildChunksInValidOrderIgnoringInactiveChunks:(id)a3;
- (BOOL)backgroundIsNoFillOrColorFillWithAlpha;
- (BOOL)canMoveDeliveryGroupFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (BOOL)canMoveDrawables:(id)a3 toIndexes:(id)a4;
- (BOOL)canSetChunksToAutomaticWith:(id)a3;
- (BOOL)hasComplementForBuildChunk:(id)a3 inBuildChunks:(id)a4;
- (BOOL)hasFreeformTextPlaceholders;
- (BOOL)hasTagForInfo:(id)a3;
- (BOOL)infoExistsForTag:(id)a3;
- (BOOL)infoIsPlaceholder:(id)a3;
- (BOOL)isBodyVisible;
- (BOOL)isSlideNumberVisible;
- (BOOL)isTemplateSlide;
- (BOOL)isTitleVisible;
- (BOOL)p_activeChunks:(id)a3 areInOrderForBuild:(id)a4;
- (BOOL)p_activeChunks:(id)a3 interleaveChunksForComplementOfBuild:(id)a4;
- (BOOL)p_areActiveBuildChunksInValidOrder:(id)a3;
- (BOOL)p_canMoveDeliveryGroupBuildChunks:(id)a3 toIndex:(unint64_t)a4;
- (BOOL)p_canMoveDeliveryGroupBuildChunksFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (BOOL)p_isChildPlaceholderInfo:(id)a3;
- (BOOL)p_isValidToMoveChunk:(id)a3 toIndex:(unint64_t)a4;
- (CGSize)targetSizeForImageData:(id)a3 associatedHint:(id)a4;
- (KNAbstractSlide)initWithSlideNode:(id)a3 context:(id)a4;
- (KNMotionBackgroundStyle)motionBackgroundStyle;
- (KNSlideBackgroundInfo)background;
- (KNSlideNode)slideNode;
- (NSArray)activeBuildChunks;
- (NSArray)buildsGroupedByDeliveryGroup;
- (NSArray)infosToDisplay;
- (NSArray)ownedChildInfos;
- (NSSet)referencedStyles;
- (TSDFill)backgroundFill;
- (TSUMutablePointerSet)drawablesWithInvalidatedGhosts;
- (TSUPointerKeyDictionary)drawableToGhostInfosMap;
- (_NSRange)p_activeChunkRangeForBuild:(id)a3 inActiveChunks:(id)a4;
- (double)highestScaleFactorForRenderingDrawableInfo:(id)a3;
- (id)activeChunksForDrawable:(id)a3;
- (id)activeChunksForDrawable:(id)a3 animationType:(int64_t)a4;
- (id)availableEventTriggersForBuildChunks:(id)a3;
- (id)boxedObjectForProperty:(int)a3;
- (id)buildChunksForActiveBuildChunkIndexes:(id)a3;
- (id)buildChunksInDeliveryGroupAtIndex:(unint64_t)a3;
- (id)buildsForDrawable:(id)a3;
- (id)buildsForDrawable:(id)a3 type:(int64_t)a4;
- (id)buildsForDrawables:(id)a3;
- (id)childEnumerator;
- (id)chunksForDrawable:(id)a3 animationType:(int64_t)a4;
- (id)chunksWhichPlayWithChunk:(id)a3;
- (id)contentBuildForDrawable:(id)a3;
- (id)defaultBodyPlaceholder;
- (id)defaultBodyPlaceholderWithContext:(id)a3;
- (id)defaultSlideNumberPlaceholder;
- (id)defaultSlideNumberPlaceholderWithContext:(id)a3;
- (id)defaultTitlePlaceholder;
- (id)defaultTitlePlaceholderWithContext:(id)a3;
- (id)deliveryGroupIndexesForBuilds:(id)a3;
- (id)imageUsingDocumentRoot:(id)a3;
- (id)inBuildForDrawable:(id)a3;
- (id)infoCorrespondingToInfo:(id)a3;
- (id)infoForTag:(id)a3;
- (id)instructionalTextForInfo:(id)a3;
- (id)objectForProperty:(int)a3;
- (id)objectUUIDPath;
- (id)outBuildForDrawable:(id)a3;
- (id)p_ChunksForDrawable:(id)a3 animationType:(int64_t)a4 onlyActiveChunks:(BOOL)a5;
- (id)p_calculateActiveBuildChunks;
- (id)p_chunksWhichWillPlayWithChunksToSetToWith:(id)a3;
- (id)p_complementForBuild:(id)a3;
- (id)p_firstActiveChunkInChunksForBuild:(id)a3;
- (id)p_invalidBuildsOnDrawable:(id)a3;
- (id)p_lastActiveChunkInChunksForBuild:(id)a3;
- (id)pdfDataUsingDocumentRoot:(id)a3;
- (id)placeholderOfClass:(Class)a3 withGeometry:(id)a4 stylesheet:(id)a5 shapePresetIndex:(int64_t)a6 textPresetIndex:(int64_t)a7 layoutPropertyMap:(id)a8 paragraphPropertyMap:(id)a9 listPropertyMap:(id)a10 context:(id)a11;
- (id)placeholderOfClass:(Class)a3 withGeometry:(id)a4 stylesheet:(id)a5 shapePresetIndex:(int64_t)a6 textPresetStyle:(id)a7 layoutPropertyMap:(id)a8 paragraphPropertyMap:(id)a9 listPropertyMap:(id)a10 context:(id)a11;
- (id)placeholderOfClass:(Class)a3 withGeometry:(id)a4 stylesheet:(id)a5 shapePresetIndex:(int64_t)a6 textPresetStyle:(id)a7 listStyle:(id)a8 layoutPropertyMap:(id)a9 paragraphPropertyMap:(id)a10 listPropertyMap:(id)a11 context:(id)a12;
- (id)placeholderWithPlaceholder:(id)a3 context:(id)a4;
- (id)placeholderWithPlaceholder:(id)a3 context:(id)a4 placeholderClass:(Class)a5;
- (id)tagForInfo:(id)a3;
- (int64_t)canMoveBuildChunk:(id)a3 toIndex:(unint64_t)a4;
- (int64_t)validateMoveActiveBuildChunks:(id)a3 toActiveIndex:(unint64_t)a4;
- (unint64_t)deliveryGroupCount;
- (unint64_t)deliveryGroupIndexForBuildChunk:(id)a3;
- (unint64_t)p_keynoteVersionFromUnarchiver:(id)a3;
- (void)addBuild:(id)a3;
- (void)addChildInfo:(id)a3;
- (void)addDrawable:(id)a3 dolcContext:(id)a4;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)didInitFromSOS;
- (void)i_primitiveAddBuild:(id)a3;
- (void)i_primitiveInsertBuildChunk:(id)a3 afterChunk:(id)a4 generateIdentifier:(BOOL)a5;
- (void)insertBuildChunk:(id)a3 afterChunk:(id)a4 generateIdentifier:(BOOL)a5;
- (void)insertChildInfo:(id)a3 above:(id)a4;
- (void)insertChildInfo:(id)a3 atIndex:(unint64_t)a4;
- (void)insertChildInfo:(id)a3 below:(id)a4;
- (void)insertContainedModel:(id)a3 atIndex:(unint64_t)a4;
- (void)insertDrawable:(id)a3 atIndex:(unint64_t)a4 dolcContext:(id)a5;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)moveChildren:(id)a3 toIndexes:(id)a4;
- (void)moveModel:(id)a3 toIndex:(unint64_t)a4;
- (void)p_assertChunksInSequenceForBuild:(id)a3;
- (void)p_checkChildInfosForDuplicates:(id)a3;
- (void)p_insertChildInfos:(id)a3 atIndex:(unint64_t)a4 dolcContext:(id)a5;
- (void)p_invalidateAllChunkAndBuildCaches;
- (void)p_invalidateCachesForBuildUpdate:(id)a3 isForRemoval:(BOOL)a4;
- (void)p_invalidateCachesForChunkUpdate:(id)a3 isForRemoval:(BOOL)a4;
- (void)p_invalidateSlideNodeBuildEventCountCaches;
- (void)p_setChildInfosAsOrderedSet:(id)a3 usingDOLC:(BOOL)a4 dolcContext:(id)a5;
- (void)p_updateBuildEffects:(BOOL)a3 version:(unint64_t)a4;
- (void)p_updateBuildsReplacingPlaceholder:(id)a3 withPlaceholder:(id)a4;
- (void)p_updateOverlappingBuildEventTriggers;
- (void)performBlockOnInfos:(id)a3;
- (void)referencedStyleWasUpdated:(id)a3;
- (void)removeBuild:(id)a3;
- (void)removeBuildChunk:(id)a3 rollbackGeneratedIdentifier:(BOOL)a4;
- (void)removeChildInfo:(id)a3;
- (void)removeContainedModel:(id)a3;
- (void)removeDrawable:(id)a3;
- (void)removeTagForDrawable:(id)a3;
- (void)replaceChildInfo:(id)a3 with:(id)a4;
- (void)replaceReferencedStylesUsingBlock:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)setBodyPlaceholder:(id)a3;
- (void)setBuildChunks:(id)a3 generateIdentifiers:(BOOL)a4;
- (void)setBuilds:(id)a3;
- (void)setChildInfos:(id)a3;
- (void)setChildInfosWithoutDOLC:(id)a3;
- (void)setInDocument:(BOOL)a3;
- (void)setInfo:(id)a3 forSageTag:(id)a4;
- (void)setInstructionalText:(id)a3 forInfo:(id)a4;
- (void)setMotionBackgroundStyle:(id)a3;
- (void)setObjectPlaceholder:(id)a3;
- (void)setPlaceholdersForTags:(id)a3;
- (void)setSlideNode:(id)a3;
- (void)setSlideNumberPlaceholder:(id)a3;
- (void)setStyle:(id)a3;
- (void)setTitlePlaceholder:(id)a3;
- (void)setTransition:(id)a3;
- (void)updateMotionBackground;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation KNAbstractSlide

- (KNAbstractSlide)initWithSlideNode:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v40.receiver = self;
  v40.super_class = KNAbstractSlide;
  v8 = [(KNAbstractSlide *)&v40 initWithContext:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_slideNode, v6);
    v10 = objc_alloc_init(MEMORY[0x277CBEB98]);
    builds = v9->_builds;
    v9->_builds = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEA60]);
    buildChunks = v9->_buildChunks;
    v9->_buildChunks = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB70]);
    childInfos = v9->_childInfos;
    v9->_childInfos = v14;

    v16 = [KNTransition alloc];
    v18 = objc_msgSend_initWithOwner_(v16, v17, v9);
    transition = v9->_transition;
    v9->_transition = v18;

    v22 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v20, v21);
    instructionalTextForInfos = v9->_instructionalTextForInfos;
    v9->_instructionalTextForInfos = v22;

    v26 = objc_msgSend_documentRoot(v9, v24, v25);
    v27 = objc_alloc(MEMORY[0x277D802E8]);
    v30 = objc_msgSend_show(v26, v28, v29);
    objc_msgSend_size(v30, v31, v32);
    v35 = objc_msgSend_initWithSize_(v27, v33, v34);

    v37 = objc_msgSend_backgroundWithSlide_andGeometry_(KNSlideBackgroundInfo, v36, v9, v35);
    background = v9->_background;
    v9->_background = v37;
  }

  return v9;
}

- (void)didInitFromSOS
{
  v30.receiver = self;
  v30.super_class = KNAbstractSlide;
  [(KNAbstractSlide *)&v30 didInitFromSOS];
  v5 = objc_msgSend_tsu_uniqueObjects(self->_buildChunks, v3, v4);
  v8 = objc_msgSend_count(v5, v6, v7);
  v11 = objc_msgSend_count(self->_buildChunks, v9, v10);

  if (v8 != v11)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[KNAbstractSlide didInitFromSOS]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 260, 0, "Initialized from SOS with duplicate chunks in chunks list.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  buildChunks = self->_buildChunks;
  builds = self->_builds;
  v23 = objc_msgSend_context(self, v12, v13);
  objc_msgSend_i_repairChunkToBuildReferencesFromUUIDsForChunks_builds_context_(KNBuildChunk, v24, buildChunks, builds, v23);

  v25 = self->_builds;
  v28 = objc_msgSend_childInfos(self, v26, v27);
  objc_msgSend_i_repairBuildToDrawableReferencesFromUUIDsForBuilds_drawables_(KNBuild, v29, v25, v28);
}

- (id)objectUUIDPath
{
  v4 = objc_msgSend_slideNode(self, a2, v2);
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
  if (v4)
  {
    v10 = objc_msgSend_objectUUIDPath(v4, v7, v8);
    v13 = objc_msgSend_uuids(v10, v11, v12);
    objc_msgSend_addObjectsFromArray_(v9, v14, v13);
  }

  v15 = objc_msgSend_objectUUID(self, v7, v8);
  objc_msgSend_addObject_(v9, v16, v15);

  v17 = objc_alloc(MEMORY[0x277D81360]);
  v19 = objc_msgSend_initWithArray_(v17, v18, v9);

  return v19;
}

- (TSDFill)backgroundFill
{
  v3 = objc_msgSend_style(self, a2, v2);
  v5 = objc_msgSend_objectForProperty_(v3, v4, 516);
  v8 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);

  if (v5 == v8)
  {

    v5 = 0;
  }

  return v5;
}

- (BOOL)backgroundIsNoFillOrColorFillWithAlpha
{
  v3 = objc_msgSend_backgroundFill(self, a2, v2);
  if (v3)
  {
    objc_opt_class();
    v4 = TSUDynamicCast();
    v7 = v4;
    if (v4)
    {
      v8 = objc_msgSend_isOpaque(v4, v5, v6) ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (void)setStyle:(id)a3
{
  v21 = a3;
  if (self->_style != v21)
  {
    objc_msgSend_willModify(self, v5, v6);
    v9 = objc_msgSend_motionBackgroundStyle(self, v7, v8);
    objc_storeStrong(&self->_style, a3);
    v12 = objc_msgSend_slideNode(self, v10, v11);
    objc_msgSend_updateBackgroundIsNoFillOrColorFillWithAlpha(v12, v13, v14);

    v17 = objc_msgSend_motionBackgroundStyle(self, v15, v16);
    v20 = v17;
    if (v9 && v17)
    {
      objc_msgSend_updateWithStyle_(self->_motionBackground, v18, v17);
    }

    else
    {
      objc_msgSend_updateMotionBackground(self, v18, v19);
    }
  }
}

- (void)updateMotionBackground
{
  v4 = objc_msgSend_motionBackgroundStyle(self, a2, v2);

  if (v4)
  {
    v5 = [KNMotionBackground alloc];
    v12 = objc_msgSend_motionBackgroundStyle(self, v6, v7);
    v9 = objc_msgSend_initWithStyle_(v5, v8, v12);
    motionBackground = self->_motionBackground;
    self->_motionBackground = v9;

    v11 = v12;
  }

  else
  {
    v11 = self->_motionBackground;
    self->_motionBackground = 0;
  }
}

- (KNMotionBackgroundStyle)motionBackgroundStyle
{
  objc_opt_class();
  v5 = objc_msgSend_backgroundFill(self, v3, v4);
  v6 = TSUDynamicCast();

  if (v6)
  {
    v9 = objc_msgSend_motionBackgroundStyle(v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setMotionBackgroundStyle:(id)a3
{
  v27 = a3;
  v6 = objc_msgSend_motionBackgroundStyle(self, v4, v5);

  if (v6 != v27)
  {
    objc_msgSend_willModify(self, v7, v8);
    v9 = [KNMotionBackgroundFill alloc];
    v11 = objc_msgSend_initWithMotionBackgroundStyle_(v9, v10, v27);
    v12 = objc_alloc(MEMORY[0x277D80AB8]);
    v14 = objc_msgSend_initWithPropertiesAndValues_(v12, v13, 516, v11, 0);
    v17 = objc_msgSend_documentRoot(self, v15, v16);
    v20 = objc_msgSend_stylesheet(v17, v18, v19);
    v23 = objc_msgSend_style(self, v21, v22);
    v25 = objc_msgSend_variationOfStyle_propertyMap_(v20, v24, v23, v14);

    objc_msgSend_setStyle_(self, v26, v25);
  }
}

- (void)setTransition:(id)a3
{
  v7 = a3;
  if (self->_transition != v7)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_transition, a3);
  }
}

- (void)setPlaceholdersForTags:(id)a3
{
  v12 = a3;
  if (self->_placeholdersForTags != v12)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_placeholdersForTags, a3);
    v9 = objc_msgSend_slideNode(self, v7, v8);
    objc_msgSend_updateLiveVideoSourceUsage(v9, v10, v11);
  }
}

- (void)setInDocument:(BOOL)a3
{
  if (self->_inDocument != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_inDocument = a3;
  }
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v40 = objc_msgSend_mappedStyleForStyle_(v7, v8, self->_style);
  if (!v40)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[KNAbstractSlide adoptStylesheet:withMapper:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 401, 0, "Failed to map style %@", self->_style);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[KNAbstractSlide adoptStylesheet:withMapper:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v21, 402, 0, "style mapped returned style of class %@ for %@", v23, self->_style);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  objc_opt_class();
  v29 = TSUDynamicCast();
  if (v29)
  {
    objc_msgSend_setStyle_(self, v27, v29);
  }

  objc_msgSend_ownedChildInfos(self, v27, v28);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v30 = v46 = 0u;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v45, v49, 16);
  if (v33)
  {
    v34 = *v46;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v46 != v34)
        {
          objc_enumerationMutation(v30);
        }

        objc_msgSend_adoptStylesheet_withMapper_(*(*(&v45 + 1) + 8 * i), v32, v6, v7);
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v45, v49, 16);
    }

    while (v33);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_275D46850;
  aBlock[3] = &unk_27A6978A0;
  v36 = v30;
  v42 = v36;
  v37 = v6;
  v43 = v37;
  v38 = v7;
  v44 = v38;
  v39 = _Block_copy(aBlock);
  v39[2](v39, self->_titlePlaceholder);
  v39[2](v39, self->_bodyPlaceholder);
  v39[2](v39, self->_objectPlaceholder);
  v39[2](v39, self->_slideNumberPlaceholder);
}

+ (id)parentSlideForInfo:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v6 = v3;
    do
    {
      v7 = objc_msgSend_parentInfo(v6, v4, v5);

      objc_opt_class();
      v8 = TSUDynamicCast();
      v9 = v8;
      if (!v7)
      {
        break;
      }

      v6 = v7;
    }

    while (!v8);
  }

  else
  {
    v9 = 0;
    v7 = 0;
  }

  return v9;
}

- (void)setChildInfos:(id)a3
{
  v11 = a3;
  objc_msgSend_p_checkChildInfosForDuplicates_(self, v4, v11);
  v6 = objc_msgSend_orderedSetWithArray_(MEMORY[0x277CBEB70], v5, v11);
  v9 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v7, v8);
  objc_msgSend_p_setChildInfosAsOrderedSet_usingDOLC_dolcContext_(self, v10, v6, 1, v9);
}

- (void)setChildInfosWithoutDOLC:(id)a3
{
  v11 = a3;
  objc_msgSend_p_checkChildInfosForDuplicates_(self, v4, v11);
  v6 = objc_msgSend_orderedSetWithArray_(MEMORY[0x277CBEB70], v5, v11);
  v9 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v7, v8);
  objc_msgSend_p_setChildInfosAsOrderedSet_usingDOLC_dolcContext_(self, v10, v6, 0, v9);
}

- (void)p_checkChildInfosForDuplicates:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CCA940]);
  v6 = objc_msgSend_initWithArray_(v4, v5, v3);
  v9 = objc_msgSend_count(v6, v7, v8);
  if (v9 != objc_msgSend_count(v3, v10, v11))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[KNAbstractSlide p_checkChildInfosForDuplicates:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    v18 = objc_msgSend_tsu_arrayByMappingObjectsUsingBlock_(v3, v17, &unk_2884D4B00);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v16, 461, 0, "Attempting to set child infos array %{public}@ which contains duplicates.", v18);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = v6;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v28, v32, 16);
    if (v25)
    {
      v26 = *v29;
      do
      {
        v27 = 0;
        do
        {
          if (*v29 != v26)
          {
            objc_enumerationMutation(v22);
          }

          if (objc_msgSend_countForObject_(v22, v24, *(*(&v28 + 1) + 8 * v27)) >= 2 && qword_280A3CB98 != -1)
          {
            sub_275E59CA4();
          }

          ++v27;
        }

        while (v25 != v27);
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v28, v32, 16);
      }

      while (v25);
    }
  }
}

- (void)p_setChildInfosAsOrderedSet:(id)a3 usingDOLC:(BOOL)a4 dolcContext:(id)a5
{
  v6 = a4;
  v108 = *MEMORY[0x277D85DE8];
  v85 = a3;
  v86 = a5;
  objc_msgSend_willModify(self, v8, v9);
  if (self->_childInfos == v85)
  {
    goto LABEL_53;
  }

  v82 = objc_msgSend_inDocument(self, v10, v11);
  v79 = v6 & v82;
  if ((v6 & v82) == 1)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v87 = objc_msgSend_documentRoot(self, v16, v17);
    v80 = v15;
    v81 = v14;
    if (!v6)
    {
      goto LABEL_36;
    }

LABEL_6:
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    obj = self->_childInfos;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v100, v107, 16);
    if (v20)
    {
      v84 = *v101;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v101 != v84)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v100 + 1) + 8 * i);
          if ((objc_msgSend_containsObject_(v85, v19, v22) & 1) == 0 && (objc_msgSend_p_isChildPlaceholderInfo_(self, v19, v22) & 1) == 0)
          {
            if (v82)
            {
              objc_opt_class();
              v78 = &unk_2884F6548;
              v24 = TSUClassAndProtocolCast();
              v26 = v24;
              if (v24)
              {
                objc_msgSend_willBeRemovedFromDocumentRoot_(v24, v25, v87, &unk_2884F6548);
                objc_msgSend_addObject_(v81, v27, v26);
              }
            }

            v28 = objc_msgSend_parentInfo(v22, v19, v23, v78);
            v29 = v28 == self;

            if (!v29)
            {
              v31 = MEMORY[0x277D81150];
              v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[KNAbstractSlide p_setChildInfosAsOrderedSet:usingDOLC:dolcContext:]");
              v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
              v35 = objc_opt_class();
              v36 = objc_opt_class();
              v39 = objc_msgSend_parentInfo(v22, v37, v38);
              v40 = objc_opt_class();
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v41, v32, v34, 498, 0, "changing the parent info on something that may be a template drawable: %{public}@, %{public}@ parent: %{public}@", v35, v36, v40);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43);
            }

            objc_msgSend_setParentInfo_(v22, v30, 0);
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v100, v107, 16);
      }

      while (v20);
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v44 = v85;
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v96, v106, 16);
    if (v47)
    {
      v48 = *v97;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v97 != v48)
          {
            objc_enumerationMutation(v44);
          }

          v50 = *(*(&v96 + 1) + 8 * j);
          if ((objc_msgSend_containsObject_(self->_childInfos, v46, v50, v78) & 1) == 0 && (objc_msgSend_p_isChildPlaceholderInfo_(self, v46, v50) & 1) == 0)
          {
            objc_msgSend_setParentInfo_(v50, v46, self);
            if (v82)
            {
              objc_opt_class();
              v78 = &unk_2884F6548;
              v51 = TSUClassAndProtocolCast();
              v53 = v51;
              if (v51)
              {
                objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v51, v52, v87, v86, &unk_2884F6548);
                objc_msgSend_addObject_(v80, v54, v53);
              }
            }
          }
        }

        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v46, &v96, v106, 16);
      }

      while (v47);
    }

    goto LABEL_36;
  }

  v87 = 0;
  v80 = 0;
  v81 = 0;
  if (v6)
  {
    goto LABEL_6;
  }

LABEL_36:
  v55 = objc_msgSend_copy(v85, v12, v13, v78);
  childInfos = self->_childInfos;
  self->_childInfos = v55;

  v59 = objc_msgSend_slideNode(self, v57, v58);
  isSlideNumberVisible = objc_msgSend_isSlideNumberVisible(self, v60, v61);
  objc_msgSend_setIsSlideNumberVisible_(v59, v63, isSlideNumberVisible);
  objc_msgSend_updateLiveVideoSourceUsage(v59, v64, v65);
  if (v79)
  {
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v66 = v81;
    v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v92, v105, 16);
    if (v69)
    {
      v70 = *v93;
      do
      {
        for (k = 0; k != v69; ++k)
        {
          if (*v93 != v70)
          {
            objc_enumerationMutation(v66);
          }

          objc_msgSend_wasRemovedFromDocumentRoot_(*(*(&v92 + 1) + 8 * k), v68, v87);
        }

        v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v68, &v92, v105, 16);
      }

      while (v69);
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v72 = v80;
    v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v73, &v88, v104, 16);
    if (v75)
    {
      v76 = *v89;
      do
      {
        for (m = 0; m != v75; ++m)
        {
          if (*v89 != v76)
          {
            objc_enumerationMutation(v72);
          }

          objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(*(&v88 + 1) + 8 * m), v74, v87, v86);
        }

        v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v74, &v88, v104, 16);
      }

      while (v75);
    }
  }

LABEL_53:
}

- (BOOL)p_isChildPlaceholderInfo:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_titlePlaceholder(self, v5, v6);
  if (v9 == v4)
  {
    v17 = 1;
  }

  else
  {
    v12 = objc_msgSend_bodyPlaceholder(self, v7, v8);
    if (v12 == v4)
    {
      v17 = 1;
    }

    else
    {
      v15 = objc_msgSend_slideNumberPlaceholder(self, v10, v11);
      if (v15 == v4)
      {
        v17 = 1;
      }

      else
      {
        v16 = objc_msgSend_objectPlaceholder(self, v13, v14);
        v17 = v16 == v4;
      }
    }
  }

  return v17;
}

- (NSArray)ownedChildInfos
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_childInfos;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (objc_msgSend_isChildOfPossibleParentInfo_(v11, v7, self, v13))
        {
          objc_msgSend_addObject_(v4, v7, v11);
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v13, v17, 16);
    }

    while (v8);
  }

  return v4;
}

- (KNSlideBackgroundInfo)background
{
  v4 = self->_background;
  if (!v4)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[KNAbstractSlide background]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 560, 0, "_background is nil. This is strange and worth investigating, but we have hopes of coping with this; this assertion doesn't have to block ship.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    v14 = objc_msgSend_documentRoot(self, v12, v13);
    v17 = objc_msgSend_show(v14, v15, v16);
    v18 = objc_alloc(MEMORY[0x277D802E8]);
    objc_msgSend_size(v17, v19, v20);
    v23 = objc_msgSend_initWithSize_(v18, v21, v22);
    v4 = objc_msgSend_backgroundWithSlide_andGeometry_(KNSlideBackgroundInfo, v24, self, v23);

    if (!v4)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[KNAbstractSlide background]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 569, 0, "We had a nil background, and failed to come up with a substitute. We're probably about to hit a fatal exception");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)isTemplateSlide
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNAbstractSlide isTemplateSlide]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 575, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[KNAbstractSlide isTemplateSlide]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (NSArray)infosToDisplay
{
  v4 = MEMORY[0x277CBEB18];
  v5 = objc_msgSend_background(self, a2, v2);
  v7 = objc_msgSend_arrayWithObject_(v4, v6, v5);

  v10 = objc_msgSend_childInfos(self, v8, v9);
  if (objc_msgSend_count(v10, v11, v12))
  {
    objc_msgSend_addObjectsFromArray_(v7, v13, v10);
  }

  return v7;
}

- (void)addDrawable:(id)a3 dolcContext:(id)a4
{
  v11 = a3;
  v6 = a4;
  v9 = objc_msgSend_count(self->_childInfos, v7, v8);
  objc_msgSend_insertDrawable_atIndex_dolcContext_(self, v10, v11, v9, v6);
}

- (void)insertDrawable:(id)a3 atIndex:(unint64_t)a4 dolcContext:(id)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v13[0] = v8;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v13, 1);
  objc_msgSend_insertDrawables_atIndex_dolcContext_(self, v12, v11, a4, v9);
}

- (void)removeDrawable:(id)a3
{
  v8 = a3;
  objc_msgSend_willModify(self, v4, v5);
  objc_msgSend_removeChildInfo_(self, v6, v8);
  objc_msgSend_removeTagForDrawable_(self, v7, v8);
}

- (BOOL)canMoveDrawables:(id)a3 toIndexes:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = v7;
  if (!v6)
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[KNAbstractSlide canMoveDrawables:toIndexes:]");
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 612, 0, "invalid nil value for '%{public}s'", "drawables");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
    if (v10)
    {
LABEL_18:
      v56 = 0;
      goto LABEL_25;
    }

LABEL_17:
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[KNAbstractSlide canMoveDrawables:toIndexes:]");
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v53, v50, v52, 613, 0, "invalid nil value for '%{public}s'", "indexes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
    goto LABEL_18;
  }

  if (!v7)
  {
    goto LABEL_17;
  }

  v11 = objc_msgSend_count(v6, v8, v9);
  v67 = objc_msgSend_count(v10, v12, v13);
  Index = objc_msgSend_lastIndex(v10, v14, v15);
  v19 = objc_msgSend_count(self->_childInfos, v16, v17);
  if (v11 != v67)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[KNAbstractSlide canMoveDrawables:toIndexes:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 622, 0, "Can't move drawables to indexes, counts don't match.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  if (Index >= v19)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[KNAbstractSlide canMoveDrawables:toIndexes:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 623, 0, "Can't move drawables to indexes, one or more indexes out of range.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v34 = v6;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v68, v72, 16);
  if (v37)
  {
    v38 = *v69;
    while (2)
    {
      v39 = v11;
      for (i = 0; i != v37; ++i)
      {
        if (*v69 != v38)
        {
          objc_enumerationMutation(v34);
        }

        if ((objc_msgSend_containsObject_(self->_childInfos, v36, *(*(&v68 + 1) + 8 * i)) & 1) == 0)
        {

          v11 = v39;
          v57 = MEMORY[0x277D81150];
          v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[KNAbstractSlide canMoveDrawables:toIndexes:]");
          v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v62, v59, v61, 631, 0, "Can't move drawables to indexes, not all drawables are on this slide.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64);
          v41 = 0;
          goto LABEL_20;
        }
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, &v68, v72, 16);
      v11 = v39;
      if (v37)
      {
        continue;
      }

      break;
    }
  }

  v41 = 1;
LABEL_20:
  if (Index >= v19)
  {
    v41 = 0;
  }

  if (v11 == v67)
  {
    v56 = v41;
  }

  else
  {
    v56 = 0;
  }

LABEL_25:

  return v56;
}

- (void)moveChildren:(id)a3 toIndexes:(id)a4
{
  v78 = a3;
  v8 = a4;
  if (!v78)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNAbstractSlide moveChildren:toIndexes:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 642, 0, "invalid nil value for '%{public}s'", "children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (!v8)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNAbstractSlide moveChildren:toIndexes:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 643, 0, "invalid nil value for '%{public}s'", "indexes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  if (v78)
  {
    v23 = objc_msgSend_count(v78, v6, v7);
    if (v8)
    {
      if (v23 && objc_msgSend_count(v8, v24, v25))
      {
        v28 = objc_msgSend_count(v78, v26, v27);
        v31 = objc_msgSend_count(v8, v29, v30);
        Index = objc_msgSend_lastIndex(v8, v32, v33);
        v37 = objc_msgSend_count(self->_childInfos, v35, v36);
        v39 = v37;
        if (v28 == v31)
        {
          if (Index < v37)
          {
            v40 = objc_msgSend_tsu_arrayByMappingObjectsUsingBlock_(v78, v38, &unk_2884D4B40);
            v43 = objc_msgSend_mutableCopy(self->_childInfos, v41, v42);
            objc_msgSend_removeObjectsInArray_(v43, v44, v40);
            v49 = v39 - v28;
            if (objc_msgSend_count(v43, v45, v46) != v39 - v28)
            {
              v50 = MEMORY[0x277D81150];
              v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "[KNAbstractSlide moveChildren:toIndexes:]");
              v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v54, v51, v53, 661, 0, "Can't move drawables to indexes, not all drawables are on this slide.");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56);
            }

            if (objc_msgSend_count(v43, v47, v48) == v49)
            {
              objc_msgSend_willModify(self, v57, v58);
              objc_msgSend_insertObjects_atIndexes_(v43, v59, v40, v8);
              v62 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v60, v61);
              objc_msgSend_p_setChildInfosAsOrderedSet_usingDOLC_dolcContext_(self, v63, v43, 1, v62);
            }

            goto LABEL_18;
          }
        }

        else
        {
          v64 = MEMORY[0x277D81150];
          v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[KNAbstractSlide moveChildren:toIndexes:]");
          v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v68, v65, v67, 651, 0, "Can't move drawables to indexes, counts don't match.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70);
          if (Index < v39)
          {
            goto LABEL_18;
          }
        }

        v71 = MEMORY[0x277D81150];
        v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[KNAbstractSlide moveChildren:toIndexes:]");
        v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v75, v72, v74, 652, 0, "Can't move drawables to indexes, one or more indexes out of range. movingCount: %lu, childInfosCount: %lu, indexes: %{public}@", v28, v39, v8);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77);
      }
    }
  }

LABEL_18:
}

- (void)performBlockOnInfos:(id)a3
{
  v4 = a3;
  v12 = 0;
  v5 = objc_alloc(MEMORY[0x277D80660]);
  v9 = objc_msgSend_initWithRootModelObject_filter_(v5, v6, self, &unk_2884D4B60);
  v10 = 0;
  do
  {
    v11 = objc_msgSend_nextObject(v9, v7, v8);

    if (!v11)
    {
      break;
    }

    v4[2](v4, v11, &v12);
    v10 = v11;
  }

  while ((v12 & 1) == 0);
}

- (id)defaultTitlePlaceholder
{
  v4 = objc_msgSend_context(self, a2, v2);
  v6 = objc_msgSend_defaultTitlePlaceholderWithContext_(self, v5, v4);

  return v6;
}

- (id)defaultBodyPlaceholder
{
  v4 = objc_msgSend_context(self, a2, v2);
  v6 = objc_msgSend_defaultBodyPlaceholderWithContext_(self, v5, v4);

  return v6;
}

- (id)defaultTitlePlaceholderWithContext:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNAbstractSlide defaultTitlePlaceholderWithContext:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 726, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "[KNAbstractSlide defaultTitlePlaceholderWithContext:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (id)defaultBodyPlaceholderWithContext:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNAbstractSlide defaultBodyPlaceholderWithContext:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 732, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "[KNAbstractSlide defaultBodyPlaceholderWithContext:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (id)defaultSlideNumberPlaceholder
{
  v4 = objc_msgSend_context(self, a2, v2);
  v6 = objc_msgSend_defaultSlideNumberPlaceholderWithContext_(self, v5, v4);

  return v6;
}

- (id)defaultSlideNumberPlaceholderWithContext:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNAbstractSlide defaultSlideNumberPlaceholderWithContext:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 742, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "[KNAbstractSlide defaultSlideNumberPlaceholderWithContext:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (id)placeholderWithPlaceholder:(id)a3 context:(id)a4 placeholderClass:(Class)a5
{
  v7 = a3;
  v8 = a4;
  if (objc_opt_class() != a5)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[KNAbstractSlide placeholderWithPlaceholder:context:placeholderClass:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 751, 0, "Placeholder class must match that of the template slide placeholder object.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v18 = objc_msgSend_geometry(v7, v9, v10);
  v21 = objc_msgSend_style(v7, v19, v20);
  v24 = objc_msgSend_textStorage(v7, v22, v23);
  v26 = objc_msgSend_newSubstorageWithRange_context_flags_(v24, v25, 0, 0, v8, 0);

  v29 = objc_msgSend_pathSource(v7, v27, v28);
  v30 = [a5 alloc];
  v32 = objc_msgSend_initWithContext_geometry_style_pathSource_wpStorage_(v30, v31, v8, v18, v21, v29, v26);
  v35 = objc_msgSend_hyperlinkURL(v7, v33, v34);
  objc_msgSend_setHyperlinkURL_(v32, v36, v35);

  return v32;
}

- (id)placeholderWithPlaceholder:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v10 = objc_msgSend_placeholderWithPlaceholder_context_placeholderClass_(self, v9, v6, v7, v8);

  return v10;
}

- (id)placeholderOfClass:(Class)a3 withGeometry:(id)a4 stylesheet:(id)a5 shapePresetIndex:(int64_t)a6 textPresetIndex:(int64_t)a7 layoutPropertyMap:(id)a8 paragraphPropertyMap:(id)a9 listPropertyMap:(id)a10 context:(id)a11
{
  v40 = a4;
  v39 = a5;
  v41 = a8;
  v38 = a9;
  v17 = a10;
  v18 = a11;
  objc_opt_class();
  v21 = objc_msgSend_documentRoot(self, v19, v20);
  v24 = objc_msgSend_theme(v21, v22, v23);
  v25 = TSUDynamicCast();

  v37 = v25;
  v27 = objc_msgSend_presetOfKind_index_(v25, v26, *MEMORY[0x277D80BB0], a7);
  v30 = objc_msgSend_paragraphStyle(v27, v28, v29);
  v33 = objc_msgSend_listStyle(v27, v31, v32);
  v35 = objc_msgSend_placeholderOfClass_withGeometry_stylesheet_shapePresetIndex_textPresetStyle_listStyle_layoutPropertyMap_paragraphPropertyMap_listPropertyMap_context_(self, v34, a3, v40, v39, a6, v30, v33, v41, v38, v17, v18);

  return v35;
}

- (id)placeholderOfClass:(Class)a3 withGeometry:(id)a4 stylesheet:(id)a5 shapePresetIndex:(int64_t)a6 textPresetStyle:(id)a7 layoutPropertyMap:(id)a8 paragraphPropertyMap:(id)a9 listPropertyMap:(id)a10 context:(id)a11
{
  v39 = a4;
  v38 = a5;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  v19 = a11;
  v22 = objc_msgSend_initialListStyle(v15, v20, v21);
  v25 = v22;
  if (v22)
  {
    v26 = v22;
  }

  else
  {
    v27 = objc_msgSend_documentRoot(self, v23, v24);
    v30 = objc_msgSend_theme(v27, v28, v29);
    v26 = objc_msgSend_defaultListStyle(v30, v31, v32);
  }

  v34 = objc_msgSend_placeholderOfClass_withGeometry_stylesheet_shapePresetIndex_textPresetStyle_listStyle_layoutPropertyMap_paragraphPropertyMap_listPropertyMap_context_(self, v33, a3, v39, v38, a6, v15, v26, v16, v17, v18, v19);

  return v34;
}

- (id)placeholderOfClass:(Class)a3 withGeometry:(id)a4 stylesheet:(id)a5 shapePresetIndex:(int64_t)a6 textPresetStyle:(id)a7 listStyle:(id)a8 layoutPropertyMap:(id)a9 paragraphPropertyMap:(id)a10 listPropertyMap:(id)a11 context:(id)a12
{
  v62 = a4;
  v17 = a5;
  v61 = a7;
  v60 = a8;
  v64 = a9;
  v18 = a10;
  v65 = a11;
  v19 = a12;
  v59 = v17;
  v63 = v18;
  objc_opt_class();
  v22 = objc_msgSend_documentRoot(self, v20, v21);
  v25 = objc_msgSend_theme(v22, v23, v24);
  v26 = TSUDynamicCast();

  v58 = v26;
  v30 = objc_msgSend_presetOfKind_index_(v26, v27, *MEMORY[0x277D80BB8], a6);
  if (v64 && objc_msgSend_count(v64, v28, v29))
  {
    v32 = objc_msgSend_variationOfStyle_propertyMap_context_(v17, v31, v30, v64, v19);

    v30 = v32;
  }

  v33 = v61;
  v36 = objc_msgSend_count(v18, v34, v35);
  v38 = v33;
  if (v36)
  {
    v38 = objc_msgSend_variationOfStyle_propertyMap_context_(v17, v37, v33, v63, v19);
  }

  v39 = v60;
  v43 = v39;
  if (objc_msgSend_count(v65, v40, v41))
  {
    v43 = objc_msgSend_variationOfStyle_propertyMap_context_(v17, v42, v39, v65, v19);
  }

  v44 = objc_alloc(MEMORY[0x277D80F28]);
  v46 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v44, v45, v19, &stru_2884D8E20, 3, v17, v38, v43, 0, 0);
  v47 = objc_alloc(MEMORY[0x277D801C8]);
  objc_msgSend_size(v62, v48, v49);
  v52 = objc_msgSend_initWithNaturalSize_(v47, v50, v51);
  v53 = [a3 alloc];
  v55 = objc_msgSend_initWithContext_geometry_style_pathSource_wpStorage_(v53, v54, v19, v62, v30, v52, v46);

  return v55;
}

- (void)setTitlePlaceholder:(id)a3
{
  v43 = a3;
  if (v43)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNAbstractSlide setTitlePlaceholder:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
      v11 = objc_opt_class();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v10, 871, 0, "Title placeholder must be of type KNTitlePlaceholderInfo. Was: %@", v11);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    }
  }

  if (self->_titlePlaceholder != v43)
  {
    objc_msgSend_willModify(self, v5, v6);
    v15 = self->_titlePlaceholder;
    v18 = objc_msgSend_inDocument(self, v16, v17);
    v21 = v18;
    if (v15)
    {
      v22 = v18;
    }

    else
    {
      v22 = 0;
    }

    if (v22 == 1)
    {
      v23 = objc_msgSend_childInfos(self, v19, v20);
      v25 = objc_msgSend_containsObject_(v23, v24, v15) ^ 1;
    }

    else
    {
      v25 = 0;
    }

    v26 = v21 ^ 1;
    if (!v43)
    {
      v26 = 1;
    }

    if (v26)
    {
      v29 = 0;
      if (!v25)
      {
LABEL_18:
        if (v29)
        {
          v34 = objc_msgSend_documentRoot(self, v19, v20);
          objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v43, v35, v34, 0);
        }

        objc_storeStrong(&self->_titlePlaceholder, a3);
        objc_msgSend_setParentInfo_(self->_titlePlaceholder, v36, self);
        if (v25)
        {
          v39 = objc_msgSend_documentRoot(self, v37, v38);
          objc_msgSend_wasRemovedFromDocumentRoot_(v15, v40, v39);
        }

        if (v29)
        {
          v41 = objc_msgSend_documentRoot(self, v37, v38);
          objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v43, v42, v41, 0);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v27 = objc_msgSend_childInfos(self, v19, v20);
      v29 = objc_msgSend_containsObject_(v27, v28, v43) ^ 1;

      if (!v25)
      {
        goto LABEL_18;
      }
    }

    titlePlaceholder = self->_titlePlaceholder;
    v31 = objc_msgSend_documentRoot(self, v19, v20);
    objc_msgSend_willBeRemovedFromDocumentRoot_(titlePlaceholder, v32, v31);

    objc_msgSend_setParentInfo_(self->_titlePlaceholder, v33, 0);
    goto LABEL_18;
  }

LABEL_25:
}

- (void)setBodyPlaceholder:(id)a3
{
  v43 = a3;
  if (v43)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNAbstractSlide setBodyPlaceholder:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
      v11 = objc_opt_class();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v10, 904, 0, "Body placeholder must be of type KNBodyPlaceholderInfo. Was: %@", v11);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    }
  }

  if (self->_bodyPlaceholder != v43)
  {
    objc_msgSend_willModify(self, v5, v6);
    v15 = self->_bodyPlaceholder;
    v18 = objc_msgSend_inDocument(self, v16, v17);
    v21 = v18;
    if (v15)
    {
      v22 = v18;
    }

    else
    {
      v22 = 0;
    }

    if (v22 == 1)
    {
      v23 = objc_msgSend_childInfos(self, v19, v20);
      v25 = objc_msgSend_containsObject_(v23, v24, v15) ^ 1;
    }

    else
    {
      v25 = 0;
    }

    v26 = v21 ^ 1;
    if (!v43)
    {
      v26 = 1;
    }

    if (v26)
    {
      v29 = 0;
      if (!v25)
      {
LABEL_18:
        if (v29)
        {
          v34 = objc_msgSend_documentRoot(self, v19, v20);
          objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v43, v35, v34, 0);
        }

        objc_storeStrong(&self->_bodyPlaceholder, a3);
        objc_msgSend_setParentInfo_(self->_bodyPlaceholder, v36, self);
        if (v25)
        {
          v39 = objc_msgSend_documentRoot(self, v37, v38);
          objc_msgSend_wasRemovedFromDocumentRoot_(v15, v40, v39);
        }

        if (v29)
        {
          v41 = objc_msgSend_documentRoot(self, v37, v38);
          objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v43, v42, v41, 0);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v27 = objc_msgSend_childInfos(self, v19, v20);
      v29 = objc_msgSend_containsObject_(v27, v28, v43) ^ 1;

      if (!v25)
      {
        goto LABEL_18;
      }
    }

    bodyPlaceholder = self->_bodyPlaceholder;
    v31 = objc_msgSend_documentRoot(self, v19, v20);
    objc_msgSend_willBeRemovedFromDocumentRoot_(bodyPlaceholder, v32, v31);

    objc_msgSend_setParentInfo_(self->_bodyPlaceholder, v33, 0);
    goto LABEL_18;
  }

LABEL_25:
}

- (void)setObjectPlaceholder:(id)a3
{
  v35 = a3;
  if (self->_objectPlaceholder == v35)
  {
    goto LABEL_22;
  }

  objc_msgSend_willModify(self, v5, v6);
  v7 = self->_objectPlaceholder;
  v10 = objc_msgSend_inDocument(self, v8, v9);
  v13 = v10;
  if (v7)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  if (v14 == 1)
  {
    v15 = objc_msgSend_childInfos(self, v11, v12);
    v17 = objc_msgSend_containsObject_(v15, v16, v7) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = v13 ^ 1;
  if (!v35)
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    v19 = objc_msgSend_childInfos(self, v11, v12);
    v21 = objc_msgSend_containsObject_(v19, v20, v35) ^ 1;

    if (!v17)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v21 = 0;
  if (v17)
  {
LABEL_14:
    objectPlaceholder = self->_objectPlaceholder;
    v23 = objc_msgSend_documentRoot(self, v11, v12);
    objc_msgSend_willBeRemovedFromDocumentRoot_(objectPlaceholder, v24, v23);

    objc_msgSend_setParentInfo_(self->_objectPlaceholder, v25, 0);
  }

LABEL_15:
  if (v21)
  {
    v26 = objc_msgSend_documentRoot(self, v11, v12);
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v35, v27, v26, 0);
  }

  objc_storeStrong(&self->_objectPlaceholder, a3);
  objc_msgSend_setParentInfo_(self->_objectPlaceholder, v28, self);
  if (v17)
  {
    v31 = objc_msgSend_documentRoot(self, v29, v30);
    objc_msgSend_wasRemovedFromDocumentRoot_(v7, v32, v31);
  }

  if (v21)
  {
    v33 = objc_msgSend_documentRoot(self, v29, v30);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v35, v34, v33, 0);
  }

LABEL_22:
}

- (void)setSlideNumberPlaceholder:(id)a3
{
  v35 = a3;
  if (self->_slideNumberPlaceholder == v35)
  {
    goto LABEL_22;
  }

  objc_msgSend_willModify(self, v5, v6);
  v7 = self->_slideNumberPlaceholder;
  v10 = objc_msgSend_inDocument(self, v8, v9);
  v13 = v10;
  if (v7)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  if (v14 == 1)
  {
    v15 = objc_msgSend_childInfos(self, v11, v12);
    v17 = objc_msgSend_containsObject_(v15, v16, v7) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = v13 ^ 1;
  if (!v35)
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    v19 = objc_msgSend_childInfos(self, v11, v12);
    v21 = objc_msgSend_containsObject_(v19, v20, v35) ^ 1;

    if (!v17)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v21 = 0;
  if (v17)
  {
LABEL_14:
    slideNumberPlaceholder = self->_slideNumberPlaceholder;
    v23 = objc_msgSend_documentRoot(self, v11, v12);
    objc_msgSend_willBeRemovedFromDocumentRoot_(slideNumberPlaceholder, v24, v23);

    objc_msgSend_setParentInfo_(self->_slideNumberPlaceholder, v25, 0);
  }

LABEL_15:
  if (v21)
  {
    v26 = objc_msgSend_documentRoot(self, v11, v12);
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v35, v27, v26, 0);
  }

  objc_storeStrong(&self->_slideNumberPlaceholder, a3);
  objc_msgSend_setParentInfo_(self->_slideNumberPlaceholder, v28, self);
  if (v17)
  {
    v31 = objc_msgSend_documentRoot(self, v29, v30);
    objc_msgSend_wasRemovedFromDocumentRoot_(v7, v32, v31);
  }

  if (v21)
  {
    v33 = objc_msgSend_documentRoot(self, v29, v30);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v35, v34, v33, 0);
  }

LABEL_22:
}

- (BOOL)isTitleVisible
{
  if (!self->_titlePlaceholder)
  {
    return 0;
  }

  v4 = objc_msgSend_childInfos(self, a2, v2);
  v6 = objc_msgSend_containsObject_(v4, v5, self->_titlePlaceholder);

  return v6;
}

- (BOOL)isBodyVisible
{
  if (!self->_bodyPlaceholder)
  {
    return 0;
  }

  v4 = objc_msgSend_childInfos(self, a2, v2);
  v6 = objc_msgSend_containsObject_(v4, v5, self->_bodyPlaceholder);

  return v6;
}

- (BOOL)isSlideNumberVisible
{
  if (!self->_slideNumberPlaceholder)
  {
    return 0;
  }

  v4 = objc_msgSend_childInfos(self, a2, v2);
  v6 = objc_msgSend_containsObject_(v4, v5, self->_slideNumberPlaceholder);

  return v6;
}

- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = objc_msgSend_ownedChildInfos(self, v8, v9, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v36, v40, 16);
  if (v13)
  {
    v14 = *v37;
    do
    {
      v15 = 0;
      do
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(*(*(&v36 + 1) + 8 * v15++), v12, v6, v7);
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v36, v40, 16);
    }

    while (v13);
  }

  if ((objc_msgSend_isTitleVisible(self, v16, v17) & 1) == 0)
  {
    v20 = objc_msgSend_titlePlaceholder(self, v18, v19);
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v20, v21, v6, v7);
  }

  if ((objc_msgSend_isBodyVisible(self, v18, v19) & 1) == 0)
  {
    v24 = objc_msgSend_bodyPlaceholder(self, v22, v23);
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v24, v25, v6, v7);
  }

  if ((objc_msgSend_isObjectVisible(self, v22, v23) & 1) == 0)
  {
    v28 = objc_msgSend_objectPlaceholder(self, v26, v27);
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v28, v29, v6, v7);
  }

  if ((objc_msgSend_isSlideNumberVisible(self, v26, v27) & 1) == 0)
  {
    v32 = objc_msgSend_slideNumberPlaceholder(self, v30, v31);
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v32, v33, v6, v7);
  }

  v34 = objc_msgSend_background(self, v30, v31);
  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v34, v35, v6, v7);
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_context(v6, v8, v9);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v11, v10);

  objc_msgSend_setInDocument_(self, v12, 1);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v15 = objc_msgSend_ownedChildInfos(self, v13, v14);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v73, v79, 16);
  if (v18)
  {
    v19 = *v74;
    do
    {
      v20 = 0;
      do
      {
        if (*v74 != v19)
        {
          objc_enumerationMutation(v15);
        }

        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(*(&v73 + 1) + 8 * v20++), v17, v6, v7);
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v73, v79, 16);
    }

    while (v18);
  }

  if ((objc_msgSend_isTitleVisible(self, v21, v22) & 1) == 0)
  {
    v25 = objc_msgSend_titlePlaceholder(self, v23, v24);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v25, v26, v6, v7);
  }

  if ((objc_msgSend_isBodyVisible(self, v23, v24) & 1) == 0)
  {
    v29 = objc_msgSend_bodyPlaceholder(self, v27, v28);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v29, v30, v6, v7);
  }

  if ((objc_msgSend_isObjectVisible(self, v27, v28) & 1) == 0)
  {
    v33 = objc_msgSend_objectPlaceholder(self, v31, v32);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v33, v34, v6, v7);
  }

  if ((objc_msgSend_isSlideNumberVisible(self, v31, v32) & 1) == 0)
  {
    v37 = objc_msgSend_slideNumberPlaceholder(self, v35, v36);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v37, v38, v6, v7);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v39 = objc_msgSend_builds(self, v35, v36);
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v69, v78, 16);
  if (v43)
  {
    v44 = *v70;
    do
    {
      v45 = 0;
      do
      {
        if (*v70 != v44)
        {
          objc_enumerationMutation(v39);
        }

        v46 = *(*(&v69 + 1) + 8 * v45);
        v47 = objc_msgSend_context(v6, v41, v42);
        objc_msgSend_wasAddedToDocumentWithContext_(v46, v48, v47);

        ++v45;
      }

      while (v43 != v45);
      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v41, &v69, v78, 16);
    }

    while (v43);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v51 = objc_msgSend_buildChunks(self, v49, v50, 0);
  v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v65, v77, 16);
  if (v55)
  {
    v56 = *v66;
    do
    {
      v57 = 0;
      do
      {
        if (*v66 != v56)
        {
          objc_enumerationMutation(v51);
        }

        v58 = *(*(&v65 + 1) + 8 * v57);
        v59 = objc_msgSend_context(v6, v53, v54);
        objc_msgSend_wasAddedToDocumentWithContext_(v58, v60, v59);

        ++v57;
      }

      while (v55 != v57);
      v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v53, &v65, v77, 16);
    }

    while (v55);
  }

  v63 = objc_msgSend_background(self, v61, v62);
  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v63, v64, v6, v7);
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v7 = objc_msgSend_ownedChildInfos(self, v5, v6);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v70, v76, 16);
  if (v10)
  {
    v11 = *v71;
    do
    {
      v12 = 0;
      do
      {
        if (*v71 != v11)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_willBeRemovedFromDocumentRoot_(*(*(&v70 + 1) + 8 * v12++), v9, v4);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v70, v76, 16);
    }

    while (v10);
  }

  if ((objc_msgSend_isTitleVisible(self, v13, v14) & 1) == 0)
  {
    v17 = objc_msgSend_titlePlaceholder(self, v15, v16);
    objc_msgSend_willBeRemovedFromDocumentRoot_(v17, v18, v4);
  }

  if ((objc_msgSend_isBodyVisible(self, v15, v16) & 1) == 0)
  {
    v21 = objc_msgSend_bodyPlaceholder(self, v19, v20);
    objc_msgSend_willBeRemovedFromDocumentRoot_(v21, v22, v4);
  }

  if ((objc_msgSend_isObjectVisible(self, v19, v20) & 1) == 0)
  {
    v25 = objc_msgSend_objectPlaceholder(self, v23, v24);
    objc_msgSend_willBeRemovedFromDocumentRoot_(v25, v26, v4);
  }

  if ((objc_msgSend_isSlideNumberVisible(self, v23, v24) & 1) == 0)
  {
    v29 = objc_msgSend_slideNumberPlaceholder(self, v27, v28);
    objc_msgSend_willBeRemovedFromDocumentRoot_(v29, v30, v4);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v31 = objc_msgSend_builds(self, v27, v28);
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v66, v75, 16);
  if (v35)
  {
    v36 = *v67;
    do
    {
      v37 = 0;
      do
      {
        if (*v67 != v36)
        {
          objc_enumerationMutation(v31);
        }

        v38 = *(*(&v66 + 1) + 8 * v37);
        v39 = objc_msgSend_context(v4, v33, v34);
        objc_msgSend_willBeRemovedFromDocumentWithContext_(v38, v40, v39);

        ++v37;
      }

      while (v35 != v37);
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v33, &v66, v75, 16);
    }

    while (v35);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v43 = objc_msgSend_buildChunks(self, v41, v42, 0);
  v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v62, v74, 16);
  if (v47)
  {
    v48 = *v63;
    do
    {
      v49 = 0;
      do
      {
        if (*v63 != v48)
        {
          objc_enumerationMutation(v43);
        }

        v50 = *(*(&v62 + 1) + 8 * v49);
        v51 = objc_msgSend_context(v4, v45, v46);
        objc_msgSend_willBeRemovedFromDocumentWithContext_(v50, v52, v51);

        ++v49;
      }

      while (v47 != v49);
      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v45, &v62, v74, 16);
    }

    while (v47);
  }

  v55 = objc_msgSend_background(self, v53, v54);
  objc_msgSend_willBeRemovedFromDocumentRoot_(v55, v56, v4);

  v59 = objc_msgSend_context(v4, v57, v58);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v60, v59);

  objc_msgSend_setInDocument_(self, v61, 0);
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = objc_msgSend_ownedChildInfos(self, v5, v6, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v33, v37, 16);
  if (v10)
  {
    v11 = *v34;
    do
    {
      v12 = 0;
      do
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_wasRemovedFromDocumentRoot_(*(*(&v33 + 1) + 8 * v12++), v9, v4);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v33, v37, 16);
    }

    while (v10);
  }

  if ((objc_msgSend_isTitleVisible(self, v13, v14) & 1) == 0)
  {
    v17 = objc_msgSend_titlePlaceholder(self, v15, v16);
    objc_msgSend_wasRemovedFromDocumentRoot_(v17, v18, v4);
  }

  if ((objc_msgSend_isBodyVisible(self, v15, v16) & 1) == 0)
  {
    v21 = objc_msgSend_bodyPlaceholder(self, v19, v20);
    objc_msgSend_wasRemovedFromDocumentRoot_(v21, v22, v4);
  }

  if ((objc_msgSend_isObjectVisible(self, v19, v20) & 1) == 0)
  {
    v25 = objc_msgSend_objectPlaceholder(self, v23, v24);
    objc_msgSend_wasRemovedFromDocumentRoot_(v25, v26, v4);
  }

  if ((objc_msgSend_isSlideNumberVisible(self, v23, v24) & 1) == 0)
  {
    v29 = objc_msgSend_slideNumberPlaceholder(self, v27, v28);
    objc_msgSend_wasRemovedFromDocumentRoot_(v29, v30, v4);
  }

  v31 = objc_msgSend_background(self, v27, v28);
  objc_msgSend_wasRemovedFromDocumentRoot_(v31, v32, v4);
}

- (void)setInfo:(id)a3 forSageTag:(id)a4
{
  v14 = a3;
  v6 = a4;
  objc_msgSend_willModify(self, v7, v8);
  v9 = objc_alloc(MEMORY[0x277CBEB38]);
  v11 = objc_msgSend_initWithDictionary_(v9, v10, self->_placeholdersForTags);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v12, v14, v6);
  objc_msgSend_setPlaceholdersForTags_(self, v13, v11);
}

- (id)infoForTag:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = objc_msgSend_objectForKeyedSubscript_(self->_placeholdersForTags, v5, v4);
  v7 = TSUDynamicCast();

  return v7;
}

- (BOOL)infoExistsForTag:(id)a3
{
  v3 = objc_msgSend_infoForTag_(self, a2, a3);
  v4 = v3 != 0;

  return v4;
}

- (id)tagForInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_placeholdersForTags(self, v5, v6);
  v9 = objc_msgSend_allKeysForObject_(v7, v8, v4);

  if (objc_msgSend_count(v9, v10, v11))
  {
    if (objc_msgSend_count(v9, v12, v13) != 1)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[KNAbstractSlide tagForInfo:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 1145, 0, "Multiple tags for a single placeholder");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }

    v22 = objc_msgSend_objectAtIndexedSubscript_(v9, v14, 0);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)hasTagForInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_placeholdersForTags(self, v5, v6);
  v10 = objc_msgSend_allValues(v7, v8, v9);
  v12 = objc_msgSend_containsObject_(v10, v11, v4);

  return v12;
}

- (BOOL)infoIsPlaceholder:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_titlePlaceholder(self, v5, v6);
  if (v9 == v4)
  {
    goto LABEL_8;
  }

  v12 = objc_msgSend_bodyPlaceholder(self, v7, v8);
  if (v12 == v4)
  {
LABEL_7:

LABEL_8:
    v19 = 1;
    goto LABEL_9;
  }

  v13 = objc_msgSend_objectPlaceholder(self, v10, v11);
  v16 = v13;
  if (v13 == v4)
  {

    goto LABEL_7;
  }

  v17 = objc_msgSend_slideNumberPlaceholder(self, v14, v15);

  if (v17 == v4)
  {
    v19 = 1;
    goto LABEL_10;
  }

  v9 = objc_msgSend_tagForInfo_(self, v18, v4);
  v19 = v9 != 0;
LABEL_9:

LABEL_10:
  return v19;
}

- (void)removeTagForDrawable:(id)a3
{
  v13 = a3;
  objc_msgSend_willModify(self, v4, v5);
  v6 = objc_alloc(MEMORY[0x277CBEB38]);
  v8 = objc_msgSend_initWithDictionary_(v6, v7, self->_placeholdersForTags);
  v10 = objc_msgSend_allKeysForObject_(self->_placeholdersForTags, v9, v13);
  objc_msgSend_removeObjectsForKeys_(v8, v11, v10);

  objc_msgSend_setPlaceholdersForTags_(self, v12, v8);
}

- (BOOL)hasFreeformTextPlaceholders
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_placeholdersForTags(self, a2, v2);
  v6 = objc_msgSend_allValues(v3, v4, v5);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v16, v20, 16);
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        objc_opt_class();
        v12 = TSUDynamicCast();
        v13 = v12 == 0;

        if (!v13)
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v14, &v16, v20, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (id)instructionalTextForInfo:(id)a3
{
  v3 = objc_msgSend_objectForKeyedSubscript_(self->_instructionalTextForInfos, a2, a3);

  return v3;
}

- (void)setInstructionalText:(id)a3 forInfo:(id)a4
{
  v12 = a3;
  v6 = a4;
  objc_msgSend_willModify(self, v7, v8);
  v10 = v12;
  if (v12 && (v11 = objc_msgSend_length(v12, v12, v9), v10 = v12, v11))
  {
    objc_msgSend_setObject_forKeyedSubscript_(self->_instructionalTextForInfos, v12, v12, v6);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(self->_instructionalTextForInfos, v10, v6);
  }
}

- (void)p_invalidateAllChunkAndBuildCaches
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = self->_buildChunks;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v25, v30, 16);
  if (v7)
  {
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_i_invalidateCaches(*(*(&v25 + 1) + 8 * i), v5, v6);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v25, v30, 16);
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = self->_builds;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v21, v29, 16);
  if (v14)
  {
    v15 = *v22;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v21 + 1) + 8 * j);
        objc_msgSend_i_invalidateChunkCache(v17, v12, v13, v21);
        objc_msgSend_p_assertChunksInSequenceForBuild_(self, v18, v17);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v21, v29, 16);
    }

    while (v14);
  }

  objc_msgSend_p_invalidateSlideNodeBuildEventCountCaches(self, v19, v20);
}

- (void)p_invalidateCachesForChunkUpdate:(id)a3 isForRemoval:(BOOL)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNAbstractSlide p_invalidateCachesForChunkUpdate:isForRemoval:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 1402, 0, "Invalid parameter not satisfying: %{public}s", "chunk != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v18 = objc_msgSend_build(v8, v6, v7);
  if (!v18)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[KNAbstractSlide p_invalidateCachesForChunkUpdate:isForRemoval:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 1406, 0, "invalid nil value for '%{public}s'", "build");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  objc_msgSend_i_invalidateChunkCache(v18, v16, v17);
  if (!a4)
  {
    if ((objc_msgSend_containsObject_(self->_buildChunks, v26, v8) & 1) == 0)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[KNAbstractSlide p_invalidateCachesForChunkUpdate:isForRemoval:]");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 1411, 0, "Expected chunk to already be part of the chunks on the slide.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v36 = self->_buildChunks;
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v45, v49, 16);
    if (v40)
    {
      v41 = *v46;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v46 != v41)
          {
            objc_enumerationMutation(v36);
          }

          objc_msgSend_i_invalidateCaches(*(*(&v45 + 1) + 8 * i), v38, v39);
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v38, &v45, v49, 16);
      }

      while (v40);
    }
  }

  objc_msgSend_p_invalidateSlideNodeBuildEventCountCaches(self, v26, v27);
  objc_msgSend_i_invalidateActiveChunkCache(self, v43, v44);
}

- (void)p_invalidateCachesForBuildUpdate:(id)a3 isForRemoval:(BOOL)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNAbstractSlide p_invalidateCachesForBuildUpdate:isForRemoval:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 1433, 0, "Invalid parameter not satisfying: %{public}s", "build != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = objc_msgSend_chunks(v8, v6, v7);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v26, v30, 16);
  if (v20)
  {
    v21 = *v27;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v16);
        }

        objc_msgSend_i_invalidateCaches(*(*(&v26 + 1) + 8 * i), v18, v19);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v26, v30, 16);
    }

    while (v20);
  }

  if (!a4)
  {
    objc_msgSend_i_invalidateChunkCache(v8, v23, v24);
    objc_msgSend_p_assertChunksInSequenceForBuild_(self, v25, v8);
  }

  objc_msgSend_p_invalidateSlideNodeBuildEventCountCaches(self, v23, v24);
}

- (void)p_invalidateSlideNodeBuildEventCountCaches
{
  v4 = objc_msgSend_slideNode(self, a2, v2);
  if (v4)
  {
    v8 = v4;
    objc_msgSend_invalidateBuildEventCountCaches(v4, v5, v6);
    v7 = 0;
    v4 = v8;
  }

  else
  {
    v7 = 1;
  }

  self->_needsSlideNodeEventCountUpdate = v7;
}

- (void)setBuilds:(id)a3
{
  v12 = a3;
  objc_msgSend_willModify(self, v4, v5);
  if (self->_builds != v12)
  {
    v8 = objc_msgSend_copy(v12, v6, v7);
    builds = self->_builds;
    self->_builds = v8;

    objc_msgSend_p_invalidateAllChunkAndBuildCaches(self, v10, v11);
  }
}

- (void)addBuild:(id)a3
{
  v6 = a3;
  objc_msgSend_i_primitiveAddBuild_(self, v4, v6);
  objc_msgSend_p_invalidateCachesForBuildUpdate_isForRemoval_(self, v5, v6, 0);
}

- (void)removeBuild:(id)a3
{
  v15 = a3;
  objc_msgSend_willModify(self, v4, v5);
  v6 = objc_alloc(MEMORY[0x277CBEB58]);
  v8 = objc_msgSend_initWithSet_(v6, v7, self->_builds);
  v11 = objc_msgSend_context(self, v9, v10);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(v15, v12, v11);

  objc_msgSend_removeObject_(v8, v13, v15);
  objc_storeStrong(&self->_builds, v8);
  objc_msgSend_p_invalidateCachesForBuildUpdate_isForRemoval_(self, v14, v15, 1);
}

- (id)buildsForDrawables:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_builds(self, v5, v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_275D4C180;
  v12[3] = &unk_27A697928;
  v8 = v4;
  v13 = v8;
  v10 = objc_msgSend_objectsPassingTest_(v7, v9, v12);

  return v10;
}

- (id)buildsForDrawable:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v9 = objc_msgSend_builds(self, v7, v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_275D4C2D0;
  v14[3] = &unk_27A697950;
  v10 = v6;
  v15 = v10;
  v16 = a4;
  v12 = objc_msgSend_objectsPassingTest_(v9, v11, v14);

  return v12;
}

- (id)buildsForDrawable:(id)a3
{
  v3 = objc_msgSend_buildsForDrawable_type_(self, a2, a3, 0);

  return v3;
}

- (id)inBuildForDrawable:(id)a3
{
  v3 = objc_msgSend_buildsForDrawable_type_(self, a2, a3, 1);
  v6 = objc_msgSend_tsu_onlyObject(v3, v4, v5);

  return v6;
}

- (id)outBuildForDrawable:(id)a3
{
  v3 = objc_msgSend_buildsForDrawable_type_(self, a2, a3, 2);
  v6 = objc_msgSend_tsu_onlyObject(v3, v4, v5);

  return v6;
}

- (id)contentBuildForDrawable:(id)a3
{
  v3 = objc_msgSend_buildsForDrawable_type_(self, a2, a3, 5);
  v6 = objc_msgSend_tsu_onlyObject(v3, v4, v5);

  return v6;
}

- (id)p_invalidBuildsOnDrawable:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6 = objc_msgSend_setWithCapacity_(MEMORY[0x277CBEB58], v5, 1);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = objc_msgSend_builds(self, v7, v8, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v26, v30, 16);
  if (v13)
  {
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = objc_msgSend_drawable(v16, v11, v12);
        v18 = v17 == v4;

        if (v18)
        {
          v19 = objc_msgSend_animationFilters(v4, v11, v12);
          v22 = objc_msgSend_animationFilter(v16, v20, v21);
          v24 = objc_msgSend_containsObject_(v19, v23, v22);

          if ((v24 & 1) == 0)
          {
            objc_msgSend_addObject_(v6, v11, v16);
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v26, v30, 16);
    }

    while (v13);
  }

  return v6;
}

- (void)setBuildChunks:(id)a3 generateIdentifiers:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_msgSend_willModify(self, v7, v8);
  if (self->_buildChunks != v6)
  {
    if (v4)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = v6;
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v26, v30, 16);
      if (v15)
      {
        v16 = *v27;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v27 != v16)
            {
              objc_enumerationMutation(v11);
            }

            v18 = *(*(&v26 + 1) + 8 * i);
            v19 = objc_msgSend_build(v18, v13, v14, v26);
            objc_msgSend_i_generateAndApplyNewChunkIdentifierToChunk_(v19, v20, v18);
            objc_msgSend_i_registerBuildChunkIdentifierForChunk_(v19, v21, v18);
          }

          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v26, v30, 16);
        }

        while (v15);
      }
    }

    v22 = objc_msgSend_copy(v6, v9, v10, v26);
    buildChunks = self->_buildChunks;
    self->_buildChunks = v22;

    objc_msgSend_p_invalidateAllChunkAndBuildCaches(self, v24, v25);
  }
}

- (void)p_assertChunksInSequenceForBuild:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v33 = objc_msgSend_chunks(a3, a2, a3);
  v37 = objc_msgSend_buildChunks(self, v4, v5);
  v8 = objc_msgSend_firstObject(v33, v6, v7);
  v36 = objc_msgSend_indexOfObject_(v37, v9, v8);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v33;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v38, v42, 16);
  if (v12)
  {
    v13 = 0;
    v14 = *v39;
    do
    {
      v15 = 0;
      v34 = v13 + v12;
      do
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v38 + 1) + 8 * v15);
        if (objc_msgSend_indexOfObject_(v37, v11, v16) < (v36 + v13))
        {
          v19 = MEMORY[0x277D81150];
          v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[KNAbstractSlide p_assertChunksInSequenceForBuild:]");
          v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 1602, 0, "Chunks out of sequence on slide.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
        }

        if (v13 != objc_msgSend_indexInBuild(v16, v17, v18))
        {
          v26 = MEMORY[0x277D81150];
          v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[KNAbstractSlide p_assertChunksInSequenceForBuild:]");
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 1603, 0, "Chunks out of sequence in build.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
        }

        ++v13;
        ++v15;
      }

      while (v12 != v15);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v38, v42, 16);
      v13 = v34;
    }

    while (v12);
  }
}

- (void)insertBuildChunk:(id)a3 afterChunk:(id)a4 generateIdentifier:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  objc_msgSend_i_primitiveInsertBuildChunk_afterChunk_generateIdentifier_(self, v9, v11, v8, v5);
  objc_msgSend_p_invalidateCachesForChunkUpdate_isForRemoval_(self, v10, v11, 0);
}

- (void)removeBuildChunk:(id)a3 rollbackGeneratedIdentifier:(BOOL)a4
{
  v4 = a4;
  v34 = a3;
  objc_msgSend_willModify(self, v6, v7);
  if (v4)
  {
    v10 = objc_msgSend_build(v34, v8, v9);
    objc_msgSend_i_rollbackChunkIDSeedForChunk_(v10, v11, v34);
  }

  v12 = objc_alloc(MEMORY[0x277CBEB18]);
  v14 = objc_msgSend_initWithArray_(v12, v13, self->_buildChunks);
  v17 = objc_msgSend_context(self, v15, v16);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(v34, v18, v17);

  objc_msgSend_removeObject_(v14, v19, v34);
  v22 = objc_msgSend_count(v14, v20, v21);
  if (v22 >= objc_msgSend_count(self->_buildChunks, v23, v24))
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[KNAbstractSlide removeBuildChunk:rollbackGeneratedIdentifier:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 1638, 0, "Removing a build chunk should result in fewer build chunks.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v31, v32);
  }

  objc_storeStrong(&self->_buildChunks, v14);
  objc_msgSend_p_invalidateCachesForChunkUpdate_isForRemoval_(self, v33, v34, 1);
}

- (id)availableEventTriggersForBuildChunks:(id)a3
{
  if (objc_msgSend_canSetChunksToAutomaticWith_(self, a2, a3))
  {
    return &unk_2884F3D48;
  }

  else
  {
    return &unk_2884F3D60;
  }
}

- (BOOL)canSetChunksToAutomaticWith:(id)a3
{
  v95 = *MEMORY[0x277D85DE8];
  v84 = a3;
  if (!v84)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNAbstractSlide canSetChunksToAutomaticWith:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 1659, 0, "Invalid parameter not satisfying: %{public}s", "chunksToSetToWith != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_buildChunks(self, v4, v5);
  v16 = objc_msgSend_firstObject(v13, v14, v15);

  v81 = v16;
  if (objc_msgSend_containsObject_(v84, v17, v16))
  {
    v19 = 0;
  }

  else
  {
    v20 = objc_msgSend_p_chunksWhichWillPlayWithChunksToSetToWith_(self, v18, v84);
    v21 = MEMORY[0x277CBEB58];
    v75 = v20;
    v24 = objc_msgSend_count(v20, v22, v23);
    v83 = objc_msgSend_setWithCapacity_(v21, v25, v24);
    v82 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v26, v27);
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    obj = v75;
    v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v89, v94, 16);
    if (v74)
    {
      v76 = *v90;
      while (2)
      {
        for (i = 0; i != v74; ++i)
        {
          if (*v90 != v76)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v89 + 1) + 8 * i);
          if (objc_msgSend_indexOnSlide(v31, v29, v30) == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_37;
          }

          v34 = objc_msgSend_build(v31, v32, v33);
          if (objc_msgSend_containsObject_(v83, v35, v34))
          {
            goto LABEL_36;
          }

          objc_msgSend_addObject_(v83, v36, v34);
          v77 = objc_msgSend_drawable(v34, v37, v38);
          v42 = objc_msgSend_objectForKey_(v82, v39, v77);
          if (v42)
          {
            if (!objc_msgSend_isActionBuild(v34, v40, v41) || (objc_msgSend_isEmphasisBuild(v34, v43, v44) & 1) != 0 || (objc_msgSend_isContentBuild(v34, v45, v46) & 1) != 0)
            {
LABEL_35:

LABEL_36:
LABEL_37:
              v19 = 0;
              goto LABEL_38;
            }

            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v80 = v42;
            v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v47, &v85, v93, 16);
            if (v50)
            {
              v51 = *v86;
              while (2)
              {
                for (j = 0; j != v50; ++j)
                {
                  if (*v86 != v51)
                  {
                    objc_enumerationMutation(v80);
                  }

                  v53 = objc_msgSend_build(*(*(&v85 + 1) + 8 * j), v48, v49);
                  if (!objc_msgSend_isActionBuild(v53, v54, v55) || (objc_msgSend_isEmphasisBuild(v53, v56, v57) & 1) != 0 || (objc_msgSend_isContentBuild(v53, v58, v59) & 1) != 0)
                  {

LABEL_34:
                    goto LABEL_35;
                  }

                  v62 = objc_msgSend_effect(v53, v60, v61);
                  v65 = objc_msgSend_effect(v34, v63, v64);
                  isEqualToString = objc_msgSend_isEqualToString_(v62, v66, v65);

                  if (isEqualToString)
                  {
                    goto LABEL_34;
                  }
                }

                v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v48, &v85, v93, 16);
                if (v50)
                {
                  continue;
                }

                break;
              }
            }

            v69 = objc_msgSend_setByAddingObject_(v80, v68, v31);

            v70 = v69;
            objc_msgSend_setObject_forKey_(v82, v71, v69, v77);
          }

          else
          {
            v70 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v40, v31);
            objc_msgSend_setObject_forKey_(v82, v72, v70, v77);
          }
        }

        v19 = 1;
        v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v89, v94, 16);
        if (v74)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v19 = 1;
    }

LABEL_38:
  }

  return v19;
}

- (id)chunksWhichPlayWithChunk:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isAutomatic(v4, v5, v6))
  {
    v8 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v7, v4);
    v10 = objc_msgSend_p_chunksWhichWillPlayWithChunksToSetToWith_(self, v9, v8);
  }

  else
  {
    v10 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v7, v4);
  }

  return v10;
}

- (id)p_chunksWhichWillPlayWithChunksToSetToWith:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_buildChunks(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9, v7);
  v13 = objc_msgSend_mutableCopy(v4, v11, v12);
  v15 = objc_msgSend_setWithCapacity_(MEMORY[0x277CBEB58], v14, v10);
  v43 = objc_msgSend_lastObject(v7, v16, v17);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = v7;
  v20 = 0;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v44, v48, 16);
  if (v23)
  {
    v24 = *v45;
    do
    {
      v25 = 0;
      v26 = v20;
      do
      {
        if (*v45 != v24)
        {
          objc_enumerationMutation(v18);
        }

        v27 = *(*(&v44 + 1) + 8 * v25);
        isAutomaticWithPreviousChunk = objc_msgSend_isAutomaticWithPreviousChunk(v27, v21, v22);
        if (isAutomaticWithPreviousChunk)
        {
          if (objc_msgSend_containsObject_(v13, v28, v26))
          {
            objc_msgSend_addObject_(v13, v30, v27);
          }

          else
          {
            objc_msgSend_addObject_(v15, v30, v27);
            objc_msgSend_tsu_addNonNilObject_(v15, v31, v26);
          }
        }

        if (objc_msgSend_containsObject_(v4, v28, v27))
        {
          objc_msgSend_unionSet_(v13, v32, v15);
          objc_msgSend_removeAllObjects(v15, v34, v35);
          objc_msgSend_tsu_addNonNilObject_(v13, v36, v26);
        }

        else
        {
          if (v27 == v43)
          {
            v37 = 0;
          }

          else
          {
            v37 = isAutomaticWithPreviousChunk;
          }

          if ((v37 & 1) == 0)
          {
            objc_msgSend_removeAllObjects(v15, v32, v33);
          }
        }

        v20 = v27;

        ++v25;
        v26 = v20;
      }

      while (v23 != v25);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v44, v48, 16);
    }

    while (v23);
  }

  objc_msgSend_unionSet_(v13, v38, v15);
  v41 = objc_msgSend_copy(v13, v39, v40);

  return v41;
}

- (id)activeChunksForDrawable:(id)a3
{
  v3 = objc_msgSend_activeChunksForDrawable_animationType_(self, a2, a3, 0);

  return v3;
}

- (id)p_ChunksForDrawable:(id)a3 animationType:(int64_t)a4 onlyActiveChunks:(BOOL)a5
{
  v5 = a5;
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v30 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = objc_msgSend_buildChunks(self, v10, v11);
  v31 = self;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v33, v37, 16);
  if (v16)
  {
    v17 = *v34;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        if (!v5 || v31->_shouldConsiderAllChunksActive || objc_msgSend_isActive(*(*(&v33 + 1) + 8 * i), v14, v15))
        {
          v20 = objc_msgSend_build(v19, v14, v15);
          v23 = objc_msgSend_drawable(v20, v21, v22);
          v26 = v23;
          if (v23 == v7)
          {
            if (a4)
            {
              v27 = objc_msgSend_animationType(v20, v24, v25) == a4;

              if (!v27)
              {
                goto LABEL_16;
              }
            }

            else
            {
            }

            objc_msgSend_addObject_(v30, v28, v19);
          }

          else
          {
          }

LABEL_16:

          continue;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v33, v37, 16);
    }

    while (v16);
  }

  return v30;
}

- (id)activeChunksForDrawable:(id)a3 animationType:(int64_t)a4
{
  v4 = objc_msgSend_p_ChunksForDrawable_animationType_onlyActiveChunks_(self, a2, a3, a4, 1);

  return v4;
}

- (id)chunksForDrawable:(id)a3 animationType:(int64_t)a4
{
  v4 = objc_msgSend_p_ChunksForDrawable_animationType_onlyActiveChunks_(self, a2, a3, a4, 0);

  return v4;
}

- (id)p_complementForBuild:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_isActionBuild(v4, v5, v6) & 1) != 0 || (objc_msgSend_isContentBuild(v4, v7, v8))
  {
    v11 = 0;
  }

  else
  {
    v12 = objc_msgSend_drawable(v4, v9, v10);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = objc_msgSend_builds(self, v13, v14, 0);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v25, v29, 16);
    if (v11)
    {
      v19 = *v26;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v25 + 1) + 8 * i);
          if (v21 != v4 && (objc_msgSend_isActionBuild(*(*(&v25 + 1) + 8 * i), v17, v18) & 1) == 0 && (objc_msgSend_isContentBuild(v21, v17, v18) & 1) == 0)
          {
            v22 = objc_msgSend_drawable(v21, v17, v18);
            v23 = v22 == v12;

            if (v23)
            {
              v11 = v21;
              goto LABEL_17;
            }
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v25, v29, 16);
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  return v11;
}

- (id)p_firstActiveChunkInChunksForBuild:(id)a3
{
  v3 = a3;
  ActiveChunkIndexInBuild = objc_msgSend_firstActiveChunkIndexInBuild(v3, v4, v5);
  if (ActiveChunkIndexInBuild == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_msgSend_chunks(v3, v6, v7);
    v9 = objc_msgSend_objectAtIndex_(v10, v11, ActiveChunkIndexInBuild);
  }

  return v9;
}

- (id)p_lastActiveChunkInChunksForBuild:(id)a3
{
  v3 = a3;
  ActiveChunkIndexInBuild = objc_msgSend_lastActiveChunkIndexInBuild(v3, v4, v5);
  if (ActiveChunkIndexInBuild == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_msgSend_chunks(v3, v6, v7);
    v9 = objc_msgSend_objectAtIndex_(v10, v11, ActiveChunkIndexInBuild);
  }

  return v9;
}

- (BOOL)p_isValidToMoveChunk:(id)a3 toIndex:(unint64_t)a4
{
  v6 = a3;
  v9 = objc_msgSend_build(v6, v7, v8);
  v11 = objc_msgSend_p_complementForBuild_(self, v10, v9);
  v14 = objc_msgSend_chunks(v9, v12, v13);
  v17 = v14;
  if (v11 && (objc_msgSend_count(v14, v15, v16) > 1 || objc_msgSend_chunkCount(v11, v18, v19) >= 2))
  {
    v54 = v17;
    v20 = objc_msgSend_p_firstActiveChunkInChunksForBuild_(self, v18, v9);
    v53 = v20;
    v22 = objc_msgSend_p_lastActiveChunkInChunksForBuild_(self, v21, v9);
    v52 = v22;
    objc_msgSend_activeChunkRange(v9, v23, v24);
    if (v25 == 1)
    {
      v27 = 1;
      v28 = a4;
    }

    else
    {
      v30 = objc_msgSend_indexOnSlide(v20, v25, v26);
      v33 = objc_msgSend_indexOnSlide(v22, v31, v32);
      if (v30 >= a4)
      {
        v28 = a4;
      }

      else
      {
        v28 = v30;
      }

      if (v33 <= a4)
      {
        v34 = a4;
      }

      else
      {
        v34 = v33;
      }

      v27 = v34 - v28 + 1;
    }

    WeakRetained = objc_loadWeakRetained(&self->_slideNode);
    v38 = objc_msgSend_slide(WeakRetained, v36, v37);

    v41 = objc_msgSend_activeBuildChunks(v38, v39, v40);
    active = objc_msgSend_p_activeChunkRangeForBuild_inActiveChunks_(self, v42, v11, v41);
    v45 = v44;

    if (objc_msgSend_indexOnSlide(v6, v46, v47) <= active)
    {
      v48 = active - 1;
    }

    else
    {
      v48 = active;
    }

    v56.length = v45;
    v55.location = v28;
    v55.length = v27;
    v56.location = v48;
    if (NSIntersectionRange(v55, v56).length)
    {
      v29 = v48 >= a4 || v45 + v48 + 1 <= a4;
      if (v29 && v45 == 1)
      {
        LOBYTE(v29) = v48 < v28 || v48 - v28 >= v27;
      }
    }

    else
    {
      LOBYTE(v29) = 1;
    }

    v17 = v54;
  }

  else
  {
    LOBYTE(v29) = 1;
  }

  return v29;
}

- (int64_t)canMoveBuildChunk:(id)a3 toIndex:(unint64_t)a4
{
  v6 = a3;
  v9 = objc_msgSend_build(v6, v7, v8);
  v12 = objc_msgSend_drawable(v9, v10, v11);
  isLocked = objc_msgSend_isLocked(v12, v13, v14);

  if (isLocked)
  {
    v18 = 3;
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_msgSend_build(v6, v16, v17);
  v22 = objc_msgSend_chunks(v19, v20, v21);

  if (objc_msgSend_count(v22, v23, v24) >= 2)
  {
    v27 = objc_msgSend_indexInBuild(v6, v25, v26);
    v30 = objc_msgSend_count(v22, v28, v29);
    isFirstInBuild = objc_msgSend_isFirstInBuild(v6, v31, v32);
    v36 = isFirstInBuild;
    v37 = v30 - 1;
    if (v27 == v30 - 1)
    {
      v38 = 0;
      if (isFirstInBuild)
      {
LABEL_7:
        v39 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v38 = objc_msgSend_tsu_rangeCheckedObjectAtIndex_(v22, v34, v27 + 1);
      if (v36)
      {
        goto LABEL_7;
      }
    }

    v39 = objc_msgSend_tsu_rangeCheckedObjectAtIndex_(v22, v34, v27 - 1);
LABEL_12:
    v41 = objc_msgSend_buildChunks(self, v34, v35);
    if (objc_msgSend_indexOfObject_(v41, v42, v6) == a4)
    {
LABEL_13:
      v40 = 1;
LABEL_31:

      goto LABEL_32;
    }

    if (objc_msgSend_isFirstInBuild(v6, v43, v44))
    {
      if (objc_msgSend_indexOfObject_(v41, v45, v38) <= a4)
      {
        v47 = objc_msgSend_indexOfObject_(v41, v46, v38);
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    if (v27 == v37)
    {
      if (objc_msgSend_indexOfObject_(v41, v45, v39) >= a4)
      {
LABEL_27:
        v47 = objc_msgSend_indexOfObject_(v41, v48, v39);
LABEL_28:
        if (v47 == a4)
        {
          v40 = 1;
        }

        else
        {
          v40 = 2;
        }

        goto LABEL_31;
      }
    }

    else if (objc_msgSend_indexOfObject_(v41, v45, v39) >= a4 || objc_msgSend_indexOfObject_(v41, v49, v38) <= a4)
    {
      if (objc_msgSend_indexOfObject_(v41, v49, v38) == a4)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }

LABEL_22:

    goto LABEL_23;
  }

  if (isLocked)
  {
    v40 = 3;
    goto LABEL_32;
  }

LABEL_23:
  if (objc_msgSend_p_isValidToMoveChunk_toIndex_(self, v25, v6, a4))
  {
    v40 = v18;
  }

  else
  {
    v40 = 4;
  }

LABEL_32:

  return v40;
}

- (int64_t)validateMoveActiveBuildChunks:(id)a3 toActiveIndex:(unint64_t)a4
{
  v6 = a3;
  v9 = objc_msgSend_activeBuildChunks(self, v7, v8);
  v12 = objc_msgSend_mutableCopy(v9, v10, v11);

  v16 = objc_msgSend_tsu_indexesOfObjects_(v12, v13, v6);
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    a4 = objc_msgSend_count(v12, v14, v15);
  }

  objc_msgSend_kn_moveObjectsLocatedAtIndexes_nearIndex_(v12, v14, v16, a4);
  if (objc_msgSend_p_areActiveBuildChunksInValidOrder_(self, v17, v12))
  {
    v18 = 0;
  }

  else
  {
    v18 = 2;
  }

  return v18;
}

- (BOOL)areBuildChunksInValidOrderIgnoringInactiveChunks:(id)a3
{
  v4 = objc_msgSend_tsu_arrayOfObjectsPassingTest_(a3, a2, &unk_2884D4B80);
  LOBYTE(self) = objc_msgSend_p_areActiveBuildChunksInValidOrder_(self, v5, v4);

  return self;
}

- (BOOL)p_areActiveBuildChunksInValidOrder:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_set(MEMORY[0x277CBEB58], v5, v6);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v4;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v22, v26, 16);
  if (v12)
  {
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = objc_msgSend_build(*(*(&v22 + 1) + 8 * i), v10, v11, v22);
        if ((objc_msgSend_containsObject_(v7, v16, v15) & 1) == 0)
        {
          objc_msgSend_addObject_(v7, v17, v15);
          if (!objc_msgSend_p_activeChunks_areInOrderForBuild_(self, v18, v8, v15) || objc_msgSend_p_activeChunks_interleaveChunksForComplementOfBuild_(self, v19, v8, v15))
          {

            v20 = 0;
            goto LABEL_13;
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v22, v26, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v20 = 1;
LABEL_13:

  return v20;
}

- (BOOL)p_activeChunks:(id)a3 areInOrderForBuild:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_chunks(v6, v7, v8);
  ActiveChunkIndexInBuild = objc_msgSend_firstActiveChunkIndexInBuild(v6, v10, v11);
  v16 = objc_msgSend_lastActiveChunkIndexInBuild(v6, v13, v14);
  if (ActiveChunkIndexInBuild <= v16)
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v19 = objc_msgSend_objectAtIndexedSubscript_(v9, v15, ActiveChunkIndexInBuild);
      v21 = objc_msgSend_indexOfObject_(v5, v20, v19);
      v22 = v21;
      v17 = v18 == 0x7FFFFFFFFFFFFFFFLL || v18 <= v21;

      v24 = !v17 || ++ActiveChunkIndexInBuild > v16;
      v18 = v22;
    }

    while (!v24);
  }

  else
  {
    LOBYTE(v17) = 1;
  }

  return v17;
}

- (BOOL)p_activeChunks:(id)a3 interleaveChunksForComplementOfBuild:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_p_complementForBuild_(self, v8, v7);
  if (!v11)
  {
    goto LABEL_8;
  }

  active = objc_msgSend_chunks(v7, v9, v10);
  if (active)
  {
    v15 = objc_msgSend_chunks(v7, v12, v13);
    if (objc_msgSend_count(v15, v16, v17) && (objc_msgSend_chunks(v11, v18, v19), (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v23 = objc_msgSend_chunks(v11, v20, v21);
      v26 = objc_msgSend_count(v23, v24, v25);

      if (v26)
      {
        active = objc_msgSend_p_activeChunkRangeForBuild_inActiveChunks_(self, v27, v7, v6);
        v29 = v28;
        v33.location = objc_msgSend_p_activeChunkRangeForBuild_inActiveChunks_(self, v28, v11, v6);
        v33.length = v30;
        v32.location = active;
        v32.length = v29;
        LOBYTE(active) = NSIntersectionRange(v32, v33).length != 0;
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    LOBYTE(active) = 0;
  }

LABEL_9:

  return active;
}

- (_NSRange)p_activeChunkRangeForBuild:(id)a3 inActiveChunks:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_chunks(v5, v7, v8);
  ActiveChunkIndexInBuild = objc_msgSend_firstActiveChunkIndexInBuild(v5, v10, v11);
  v14 = objc_msgSend_objectAtIndexedSubscript_(v9, v13, ActiveChunkIndexInBuild);
  v17 = objc_msgSend_lastActiveChunkIndexInBuild(v5, v15, v16);
  v19 = objc_msgSend_objectAtIndexedSubscript_(v9, v18, v17);
  v21 = objc_msgSend_indexOfObject_(v6, v20, v14);
  v23 = objc_msgSend_indexOfObject_(v6, v22, v19) - v21;

  v24 = v23 + 1;
  v25 = v21;
  result.length = v24;
  result.location = v25;
  return result;
}

- (NSArray)activeBuildChunks
{
  v4 = objc_msgSend_buildChunks(self, a2, v2);
  v7 = v4;
  if (self->_shouldConsiderAllChunksActive)
  {
    v8 = v4;
  }

  else
  {
    v8 = objc_msgSend_p_calculateActiveBuildChunks(self, v5, v6);
    v11 = objc_msgSend_count(v8, v9, v10);
    self->_shouldConsiderAllChunksActive = v11 == objc_msgSend_count(v7, v12, v13);
  }

  return v8;
}

- (id)p_calculateActiveBuildChunks
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_buildChunks(self, a2, v2);
  v4 = MEMORY[0x277CBEB18];
  v7 = objc_msgSend_count(v3, v5, v6);
  v9 = objc_msgSend_arrayWithCapacity_(v4, v8, v7);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v3;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v21, v25, 16);
  if (v14)
  {
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if (objc_msgSend_isActive(v17, v12, v13, v21))
        {
          objc_msgSend_addObject_(v9, v12, v17);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v21, v25, 16);
    }

    while (v14);
  }

  v19 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v18, v9);

  return v19;
}

- (id)buildChunksForActiveBuildChunkIndexes:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_activeBuildChunks(self, v5, v6);
  v8 = MEMORY[0x277CBEB98];
  v10 = objc_msgSend_objectsAtIndexes_(v7, v9, v4);
  v12 = objc_msgSend_setWithArray_(v8, v11, v10);

  return v12;
}

- (BOOL)hasComplementForBuildChunk:(id)a3 inBuildChunks:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_build(v5, v7, v8);
  if (objc_msgSend_isActionBuild(v9, v10, v11))
  {
LABEL_4:
    v19 = 0;
LABEL_5:

    goto LABEL_17;
  }

  v14 = objc_msgSend_build(v5, v12, v13);
  if (objc_msgSend_isContentBuild(v14, v15, v16))
  {

    goto LABEL_4;
  }

  v20 = objc_msgSend_indexOnSlide(v5, v17, v18);

  if (v20)
  {
    v24 = objc_msgSend_indexOfObject_(v6, v21, v5);
    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = objc_msgSend_count(v6, v22, v23);
    }

    if (v24 - 1 >= 0)
    {
      do
      {
        v9 = objc_msgSend_objectAtIndexedSubscript_(v6, v22, --v24);
        v27 = objc_msgSend_build(v9, v25, v26);
        if (objc_msgSend_isActionBuild(v27, v28, v29))
        {
        }

        else
        {
          v32 = objc_msgSend_build(v9, v30, v31);
          isContentBuild = objc_msgSend_isContentBuild(v32, v33, v34);

          if ((isContentBuild & 1) == 0)
          {
            v38 = objc_msgSend_build(v9, v36, v37);
            v41 = objc_msgSend_drawable(v38, v39, v40);
            v44 = objc_msgSend_build(v5, v42, v43);
            v47 = objc_msgSend_drawable(v44, v45, v46);

            v19 = v41 == v47;
            if (v41 == v47)
            {
              goto LABEL_5;
            }

            if (!objc_msgSend_isAutomaticWithPreviousChunk(v9, v48, v49))
            {
              goto LABEL_4;
            }
          }
        }
      }

      while (v24 > 0);
    }
  }

  v19 = 0;
LABEL_17:

  return v19;
}

+ (unint64_t)deliveryGroupIndexForBuildChunk:(id)a3 inBuildChunks:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!objc_msgSend_isActive(v6, v8, v9) || !objc_msgSend_containsObject_(v7, v10, v6))
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_14;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v7;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v21, v25, 16);
  if (!v14)
  {

LABEL_16:
    v19 = 0;
    goto LABEL_14;
  }

  v15 = 0;
  v16 = *v22;
LABEL_5:
  v17 = 0;
  while (1)
  {
    if (*v22 != v16)
    {
      objc_enumerationMutation(v11);
    }

    v18 = *(*(&v21 + 1) + 8 * v17);
    v15 += objc_msgSend_chunk_isFirstInDeliveryGroupForChunks_(a1, v13, v18, v11, v21) & 1;
    if (v18 == v6)
    {
      break;
    }

    if (v14 == ++v17)
    {
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v21, v25, 16);
      if (v14)
      {
        goto LABEL_5;
      }

      break;
    }
  }

  if (!v15)
  {
    goto LABEL_16;
  }

  v19 = v15 - 1;
LABEL_14:

  return v19;
}

+ (BOOL)chunk:(id)a3 isFirstInDeliveryGroupForChunks:(id)a4
{
  v6 = a3;
  v9 = a4;
  if (v6 && objc_msgSend_isActive(v6, v7, v8))
  {
    if (objc_msgSend_isAutomatic(v6, v10, v11))
    {
      v13 = objc_msgSend_p_firstActiveChunkInChunks_(a1, v12, v9);
      v14 = v13 == v6;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)p_firstActiveChunkInChunks:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (objc_msgSend_isActive(v10, v5, v6, v12))
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v12, v16, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (unint64_t)deliveryGroupIndexForBuildChunk:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend_deliveryGroupIndexForBuildChunk_inBuildChunks_(v5, v6, v4, self->_buildChunks);

  return v7;
}

- (id)deliveryGroupIndexesForBuilds:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v4);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v4;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v28, v33, 16);
  if (v11)
  {
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v15 = objc_msgSend_chunks(v14, v9, v10);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v24, v32, 16);
        if (v18)
        {
          v19 = *v25;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v25 != v19)
              {
                objc_enumerationMutation(v15);
              }

              v21 = objc_msgSend_deliveryGroupIndexForBuildChunk_(self, v17, *(*(&v24 + 1) + 8 * j));
              if (v21 != 0x7FFFFFFFFFFFFFFFLL)
              {
                objc_msgSend_addIndex_(v7, v17, v21);
              }
            }

            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v24, v32, 16);
          }

          while (v18);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v28, v33, 16);
    }

    while (v11);
  }

  return v7;
}

+ (id)buildChunksInDeliveryGroupAtIndex:(unint64_t)a3 inBuildChunks:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v6;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v20, v24, 16);
  if (v14)
  {
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if (objc_msgSend_isActive(v17, v12, v13, v20))
        {
          v18 = objc_msgSend_deliveryGroupIndexForBuildChunk_inBuildChunks_(a1, v12, v17, v10);
          if (v18 == a3)
          {
            objc_msgSend_addObject_(v9, v12, v17);
          }

          else if (v18 > a3)
          {
            goto LABEL_12;
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v20, v24, 16);
    }

    while (v14);
  }

LABEL_12:

  return v9;
}

- (id)buildChunksInDeliveryGroupAtIndex:(unint64_t)a3
{
  v4 = objc_opt_class();

  return MEMORY[0x2821F9670](v4, sel_buildChunksInDeliveryGroupAtIndex_inBuildChunks_, a3);
}

- (BOOL)p_canMoveDeliveryGroupBuildChunksFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_buildChunksInDeliveryGroupAtIndex_(self, a2, a3);
  objc_msgSend_buildChunksInDeliveryGroupAtIndex_(self, v7, a4);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v8 = v20 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v19, v23, 16);
  if (v12)
  {
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = objc_msgSend_indexOnSlide(*(*(&v19 + 1) + 8 * i), v10, v11, v19);
        if ((objc_msgSend_p_canMoveDeliveryGroupBuildChunks_toIndex_(self, v16, v6, v15) & 1) == 0)
        {
          v17 = 0;
          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v19, v23, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_11:

  return v17;
}

- (BOOL)p_canMoveDeliveryGroupBuildChunks:(id)a3 toIndex:(unint64_t)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v8 = objc_msgSend_buildChunks(self, v6, v7);
  if (objc_msgSend_count(v8, v9, v10) <= a4)
  {
    v23 = 0;
  }

  else
  {
    v42 = objc_msgSend_objectAtIndexedSubscript_(v8, v11, a4);
    v14 = objc_msgSend_build(v42, v12, v13);
    v17 = objc_msgSend_drawable(v14, v15, v16);
    isLocked = objc_msgSend_isLocked(v17, v18, v19);

    if (isLocked)
    {
      v23 = 0;
    }

    else
    {
      v24 = objc_msgSend_indexInBuild(v42, v21, v22);
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v25 = v43;
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v44, v48, 16);
      if (v29)
      {
        v30 = *v45;
        while (2)
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v45 != v30)
            {
              objc_enumerationMutation(v25);
            }

            v32 = *(*(&v44 + 1) + 8 * i);
            v33 = objc_msgSend_build(v32, v27, v28);
            v36 = v33;
            if (v33 == v14)
            {
              if (objc_msgSend_indexInBuild(v32, v34, v35) >= v24)
              {
LABEL_17:

                v23 = 0;
                goto LABEL_18;
              }
            }

            else
            {
              v37 = objc_msgSend_drawable(v33, v34, v35);
              v40 = objc_msgSend_isLocked(v37, v38, v39);

              if (v40)
              {
                goto LABEL_17;
              }
            }
          }

          v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v44, v48, 16);
          if (v29)
          {
            continue;
          }

          break;
        }
      }

      v23 = 1;
LABEL_18:
    }
  }

  return v23;
}

+ (unint64_t)deliveryGroupCountForBuildChunks:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v6 = 0;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v12, v16, 16);
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v6 += objc_msgSend_chunk_isFirstInDeliveryGroupForChunks_(a1, v7, *(*(&v12 + 1) + 8 * v10++), v4, v12);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v12, v16, 16);
    }

    while (v8);
  }

  return v6;
}

- (unint64_t)deliveryGroupCount
{
  v3 = objc_opt_class();
  buildChunks = self->_buildChunks;

  return MEMORY[0x2821F9670](v3, sel_deliveryGroupCountForBuildChunks_, buildChunks);
}

- (NSArray)buildsGroupedByDeliveryGroup
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_buildChunks;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v21, v25, 16);
  if (v9)
  {
    v10 = 0;
    v11 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if (objc_msgSend_isFirstInDeliveryGroup(v13, v7, v8, v21))
        {
          if (v10)
          {
            objc_msgSend_addObject_(v4, v14, v10);
          }

          v16 = objc_msgSend_set(MEMORY[0x277CBEB58], v14, v15);

          v10 = v16;
        }

        v17 = objc_msgSend_build(v13, v14, v15);
        objc_msgSend_addObject_(v10, v18, v17);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v21, v25, 16);
    }

    while (v9);

    if (v10)
    {
      objc_msgSend_addObject_(v4, v19, v10);
    }
  }

  else
  {

    v10 = 0;
  }

  return v4;
}

- (BOOL)canMoveDeliveryGroupFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  v8 = objc_msgSend_deliveryGroupCount(self, a2, a3);
  result = 0;
  if (a3 != a4 && v8 > a3 && v8 > a4)
  {
    if (a3 <= a4)
    {
      if (a4 <= a3)
      {
        return 1;
      }

      else
      {
        do
        {
          result = objc_msgSend_p_canMoveDeliveryGroupBuildChunksFromIndex_toIndex_(self, v7, a4--, a3);
        }

        while (a4 > a3 && result);
      }
    }

    else
    {
      do
      {
        result = objc_msgSend_p_canMoveDeliveryGroupBuildChunksFromIndex_toIndex_(self, v7, a3, a4++);
      }

      while (a4 < a3 && result);
    }
  }

  return result;
}

- (void)i_primitiveAddBuild:(id)a3
{
  v17 = a3;
  objc_msgSend_willModify(self, v4, v5);
  v6 = objc_alloc(MEMORY[0x277CBEB58]);
  v8 = objc_msgSend_initWithSet_(v6, v7, self->_builds);
  objc_msgSend_setSlide_(v17, v9, self);
  objc_msgSend_addObject_(v8, v10, v17);
  objc_storeStrong(&self->_builds, v8);
  if (objc_msgSend_inDocument(self, v11, v12))
  {
    v15 = objc_msgSend_context(self, v13, v14);
    objc_msgSend_wasAddedToDocumentWithContext_(v17, v16, v15);
  }
}

- (void)i_primitiveInsertBuildChunk:(id)a3 afterChunk:(id)a4 generateIdentifier:(BOOL)a5
{
  v5 = a5;
  v70 = a3;
  v69 = a4;
  v10 = objc_msgSend_build(v70, v8, v9);
  v14 = objc_msgSend_containsObject_(self->_buildChunks, v11, v70);
  if (v14)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[KNAbstractSlide i_primitiveInsertBuildChunk:afterChunk:generateIdentifier:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 2458, 0, "Trying to insert duplicate chunk %@.", v70);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v20, v21);
  }

  v22 = objc_msgSend_chunkIdentifier(v70, v12, v13);
  v24 = objc_msgSend_resolveToChunkOnSlide_(v22, v23, self);

  if (v24)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[KNAbstractSlide i_primitiveInsertBuildChunk:afterChunk:generateIdentifier:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 2463, 0, "Trying to insert chunk with duplicate chunk identifier %@.", v70);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v32, v33);
    v34 = 0;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v34 = v14 ^ 1;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  v35 = objc_msgSend_chunkIdentifier(v70, v25, v26);
  v38 = objc_msgSend_chunkID(v35, v36, v37);
  v41 = objc_msgSend_i_chunkIDSeed(v10, v39, v40);

  if (v38 > v41)
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[KNAbstractSlide i_primitiveInsertBuildChunk:afterChunk:generateIdentifier:]");
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 2468, 0, "Trying to insert a chunk with an ID greater than the current seed.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v47, v48);
    goto LABEL_20;
  }

LABEL_9:
  if (!v34)
  {
    goto LABEL_20;
  }

  objc_msgSend_willModify(self, v25, v26);
  if (!v10)
  {
    v50 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "[KNAbstractSlide i_primitiveInsertBuildChunk:afterChunk:generateIdentifier:]");
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v54, v51, v53, 2475, 0, "invalid nil value for '%{public}s'", "build");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56);
  }

  v57 = objc_alloc(MEMORY[0x277CBEB18]);
  v60 = objc_msgSend_initWithArray_(v57, v58, self->_buildChunks);
  if (v69)
  {
    v61 = objc_msgSend_indexOfObject_(self->_buildChunks, v59, v69) + 1;
    if (!v5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v61 = 0;
  if (v5)
  {
LABEL_16:
    objc_msgSend_i_generateAndApplyNewChunkIdentifierToChunk_(v10, v59, v70);
  }

LABEL_17:
  objc_msgSend_i_registerBuildChunkIdentifierForChunk_(v10, v59, v70);
  objc_msgSend_insertObject_atIndex_(v60, v62, v70, v61);
  objc_storeStrong(&self->_buildChunks, v60);
  if (objc_msgSend_inDocument(self, v63, v64))
  {
    v67 = objc_msgSend_context(self, v65, v66);
    objc_msgSend_wasAddedToDocumentWithContext_(v70, v68, v67);
  }

LABEL_20:
}

- (TSUPointerKeyDictionary)drawableToGhostInfosMap
{
  drawableToGhostInfosMap = self->_drawableToGhostInfosMap;
  if (!drawableToGhostInfosMap)
  {
    v4 = objc_alloc_init(MEMORY[0x277D812B8]);
    v5 = self->_drawableToGhostInfosMap;
    self->_drawableToGhostInfosMap = v4;

    drawableToGhostInfosMap = self->_drawableToGhostInfosMap;
  }

  return drawableToGhostInfosMap;
}

- (TSUMutablePointerSet)drawablesWithInvalidatedGhosts
{
  drawablesWithInvalidatedGhosts = self->_drawablesWithInvalidatedGhosts;
  if (!drawablesWithInvalidatedGhosts)
  {
    v4 = objc_alloc_init(MEMORY[0x277D81258]);
    v5 = self->_drawablesWithInvalidatedGhosts;
    self->_drawablesWithInvalidatedGhosts = v4;

    drawablesWithInvalidatedGhosts = self->_drawablesWithInvalidatedGhosts;
  }

  return drawablesWithInvalidatedGhosts;
}

- (void)insertContainedModel:(id)a3 atIndex:(unint64_t)a4
{
  v6 = TSUProtocolCast();
  v15 = v6;
  if (v6)
  {
    objc_msgSend_insertChildInfo_atIndex_(self, v6, v6, a4, &unk_2884F6E18);
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNAbstractSlide insertContainedModel:atIndex:]", &unk_2884F6E18);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 2685, 0, "Must provide an info!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }
}

- (void)removeContainedModel:(id)a3
{
  v4 = TSUProtocolCast();
  v13 = v4;
  if (v4)
  {
    objc_msgSend_removeChildInfo_(self, v4, v4, &unk_2884F6E18);
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNAbstractSlide removeContainedModel:]", &unk_2884F6E18);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 2693, 0, "Must provide an info!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }
}

- (void)moveModel:(id)a3 toIndex:(unint64_t)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = TSUProtocolCast();
  v9 = v7;
  if (v7)
  {
    v21[0] = v7;
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v21, 1, &unk_2884F6E18);
    v12 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v11, a4);
    objc_msgSend_moveChildren_toIndexes_(self, v13, v10, v12);
  }

  else
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[KNAbstractSlide moveModel:toIndex:]", &unk_2884F6E18);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 2701, 0, "Must provide an info!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }
}

- (void)p_insertChildInfos:(id)a3 atIndex:(unint64_t)a4 dolcContext:(id)a5
{
  v22 = a3;
  v8 = a5;
  objc_msgSend_willModify(self, v9, v10);
  v11 = objc_alloc(MEMORY[0x277CBEB40]);
  v13 = objc_msgSend_initWithOrderedSet_(v11, v12, self->_childInfos);
  v14 = objc_alloc(MEMORY[0x277CCAA78]);
  v17 = objc_msgSend_count(v22, v15, v16);
  v19 = objc_msgSend_initWithIndexesInRange_(v14, v18, a4, v17);
  objc_msgSend_insertObjects_atIndexes_(v13, v20, v22, v19);
  objc_msgSend_p_setChildInfosAsOrderedSet_usingDOLC_dolcContext_(self, v21, v13, 1, v8);
}

- (void)addChildInfo:(id)a3
{
  v8 = a3;
  v6 = objc_msgSend_count(self->_childInfos, v4, v5);
  objc_msgSend_insertChildInfo_atIndex_(self, v7, v8, v6);
}

- (void)insertChildInfo:(id)a3 atIndex:(unint64_t)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();
  v14[0] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v14, 1);
  v12 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v10, v11);
  objc_msgSend_p_insertChildInfos_atIndex_dolcContext_(self, v13, v9, a4, v12);
}

- (void)insertChildInfo:(id)a3 below:(id)a4
{
  v11 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();
  v9 = objc_msgSend_indexOfObject_(self->_childInfos, v8, v7);
  objc_msgSend_insertChildInfo_atIndex_(self, v10, v11, v9 + 1);
}

- (void)insertChildInfo:(id)a3 above:(id)a4
{
  v11 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();
  v9 = objc_msgSend_indexOfObject_(self->_childInfos, v8, v7);
  objc_msgSend_insertChildInfo_atIndex_(self, v10, v11, v9);
}

- (void)removeChildInfo:(id)a3
{
  v15 = a3;
  objc_msgSend_willModify(self, v4, v5);
  v6 = objc_alloc(MEMORY[0x277CBEB40]);
  v8 = objc_msgSend_initWithOrderedSet_(v6, v7, self->_childInfos);
  objc_opt_class();
  v9 = TSUCheckedDynamicCast();
  objc_msgSend_removeObject_(v8, v10, v9);
  v13 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v11, v12);
  objc_msgSend_p_setChildInfosAsOrderedSet_usingDOLC_dolcContext_(self, v14, v8, 1, v13);
}

- (void)replaceChildInfo:(id)a3 with:(id)a4
{
  v21 = a3;
  v6 = a4;
  objc_msgSend_willModify(self, v7, v8);
  v9 = objc_alloc(MEMORY[0x277CBEB40]);
  v11 = objc_msgSend_initWithOrderedSet_(v9, v10, self->_childInfos);
  objc_opt_class();
  v12 = TSUCheckedDynamicCast();
  objc_opt_class();
  v13 = TSUCheckedDynamicCast();
  v15 = objc_msgSend_indexOfObject_(v11, v14, v12);
  objc_msgSend_replaceObjectAtIndex_withObject_(v11, v16, v15, v13);
  v19 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v17, v18);
  objc_msgSend_p_setChildInfosAsOrderedSet_usingDOLC_dolcContext_(self, v20, v11, 1, v19);
}

- (id)infoCorrespondingToInfo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v7 = objc_msgSend_parentInfo(v4, v5, v6);
  v8 = TSUDynamicCast();

  if (v8)
  {
    v11 = objc_msgSend_titlePlaceholder(v8, v9, v10);

    if (v11 == v4)
    {
      v23 = objc_msgSend_titlePlaceholder(self, v12, v13);
    }

    else
    {
      v14 = objc_msgSend_bodyPlaceholder(v8, v12, v13);

      if (v14 == v4)
      {
        v23 = objc_msgSend_bodyPlaceholder(self, v15, v16);
      }

      else
      {
        v17 = objc_msgSend_slideNumberPlaceholder(v8, v15, v16);

        if (v17 != v4)
        {
          v21 = objc_msgSend_tagForInfo_(v8, v18, v4);
          if (v21)
          {
            v22 = objc_msgSend_infoForTag_(self, v20, v21);
          }

          else
          {
            v22 = 0;
          }

          goto LABEL_14;
        }

        v23 = objc_msgSend_slideNumberPlaceholder(self, v18, v19);
      }
    }

    v22 = v23;
  }

  else
  {
    v22 = 0;
  }

LABEL_14:

  return v22;
}

- (double)highestScaleFactorForRenderingDrawableInfo:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  objc_msgSend_activeChunksForDrawable_(self, a2, a3);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v3 = v23 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v22, v26, 16);
  if (v7)
  {
    v8 = *v23;
    v9 = *MEMORY[0x277D800E0];
    v10 = 1.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v12 = objc_msgSend_build(*(*(&v22 + 1) + 8 * i), v5, v6, v22);
        v15 = objc_msgSend_effect(v12, v13, v14);
        isEqualToString = objc_msgSend_isEqualToString_(v15, v16, v9);

        if (isEqualToString)
        {
          objc_msgSend_actionScale(v12, v18, v19);
          if (v20 >= v10)
          {
            v10 = v20;
          }
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v22, v26, 16);
    }

    while (v7);
  }

  else
  {
    v10 = 1.0;
  }

  return v10;
}

- (CGSize)targetSizeForImageData:(id)a3 associatedHint:(id)a4
{
  objc_opt_class();
  v7 = objc_msgSend_backgroundFill(self, v5, v6);
  v8 = TSUCheckedDynamicCast();

  v11 = objc_msgSend_owningDocument(self, v9, v10);
  v14 = objc_msgSend_show(v11, v12, v13);
  objc_msgSend_size(v14, v15, v16);
  objc_msgSend_renderedImageSizeForObjectSize_(v8, v17, v18);
  v20 = v19;
  v22 = v21;

  v23 = v20;
  v24 = v22;
  result.height = v24;
  result.width = v23;
  return result;
}

- (id)childEnumerator
{
  v4 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2);
  v7 = objc_msgSend_ownedChildInfos(self, v5, v6);
  objc_msgSend_addObjectsFromArray_(v4, v8, v7);

  v11 = objc_msgSend_titlePlaceholder(self, v9, v10);

  if (v11)
  {
    v14 = objc_msgSend_titlePlaceholder(self, v12, v13);
    objc_msgSend_addObject_(v4, v15, v14);
  }

  v16 = objc_msgSend_bodyPlaceholder(self, v12, v13);

  if (v16)
  {
    v19 = objc_msgSend_bodyPlaceholder(self, v17, v18);
    objc_msgSend_addObject_(v4, v20, v19);
  }

  v21 = objc_msgSend_objectPlaceholder(self, v17, v18);

  if (v21)
  {
    v24 = objc_msgSend_objectPlaceholder(self, v22, v23);
    objc_msgSend_addObject_(v4, v25, v24);
  }

  v26 = objc_msgSend_slideNumberPlaceholder(self, v22, v23);

  if (v26)
  {
    v29 = objc_msgSend_slideNumberPlaceholder(self, v27, v28);
    objc_msgSend_addObject_(v4, v30, v29);
  }

  v31 = objc_msgSend_objectEnumerator(v4, v27, v28);

  return v31;
}

- (id)boxedObjectForProperty:(int)a3
{
  v3 = *&a3;
  v6 = String();
  v7 = 0;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      objc_msgSend_floatValueForProperty_(self, v5, v3);
      if (v15 != INFINITY)
      {
        v7 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v13, v14);
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_14;
      }

      objc_msgSend_doubleValueForProperty_(self, v5, v3);
      if (v12 != INFINITY)
      {
        v7 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v10, v11);
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (!v6)
    {
      v7 = objc_msgSend_objectForProperty_(self, v5, v3);
      goto LABEL_14;
    }

    if (v6 != 1)
    {
      goto LABEL_14;
    }

    v8 = objc_msgSend_intValueForProperty_(self, v5, v3);
    if (v8 != 0x80000000)
    {
      v7 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v9, v8);
      goto LABEL_14;
    }
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (id)objectForProperty:(int)a3
{
  switch(a3)
  {
    case 4215:
      v3 = objc_msgSend_placeholdersForTags(self, a2, *&a3);
      break;
    case 4214:
      v3 = objc_msgSend_childInfos(self, a2, *&a3);
      break;
    case 515:
      v3 = objc_msgSend_style(self, a2, *&a3);
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (NSSet)referencedStyles
{
  v4 = MEMORY[0x277CBEB58];
  v5 = objc_msgSend_style(self, a2, v2);
  v7 = objc_msgSend_setWithObject_(v4, v6, v5);

  v10 = objc_msgSend_motionBackgroundStyle(self, v8, v9);
  objc_msgSend_tsu_addNonNilObject_(v7, v11, v10);

  return v7;
}

- (void)replaceReferencedStylesUsingBlock:(id)a3
{
  v25 = a3;
  v6 = objc_msgSend_style(self, v4, v5);
  v8 = v25[2](v25, v6);
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNAbstractSlide replaceReferencedStylesUsingBlock:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 3121, 0, "Failed to map style %@", v6);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  objc_opt_class();
  v17 = TSUDynamicCast();
  if (!v17)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[KNAbstractSlide replaceReferencedStylesUsingBlock:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 3123, 0, "mapped style is not of right class");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  objc_msgSend_setStyle_(self, v16, v17);
}

- (void)referencedStyleWasUpdated:(id)a3
{
  v14 = a3;
  v8 = objc_msgSend_motionBackgroundStyle(self, v4, v5);
  if (v8 == v14)
  {

    goto LABEL_5;
  }

  v9 = objc_msgSend_motionBackgroundStyle(self, v6, v7);
  isDescendentOf = objc_msgSend_isDescendentOf_(v9, v10, v14);

  if (isDescendentOf)
  {
LABEL_5:
    objc_msgSend_updateMotionBackground(self, v12, v13);
  }
}

- (void)setSlideNode:(id)a3
{
  v8 = a3;
  objc_storeWeak(&self->_slideNode, v8);
  if (self->_needsSlideNodeEventCountUpdate && (objc_msgSend_isTemplateSlide(self, v4, v5) & 1) == 0)
  {
    objc_msgSend_invalidateBuildEventCountCaches(v8, v6, v7);
    self->_needsSlideNodeEventCountUpdate = 0;
  }
}

+ (Class)classForUnarchiver:(id)a3
{
  v3 = a3;
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_messageWithDescriptor_(v3, v4, off_2812EA908[32]);

  v5 = objc_opt_class();
  v6 = v5;

  return v5;
}

- (void)p_updateBuildsReplacingPlaceholder:(id)a3 withPlaceholder:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = objc_msgSend_builds(self, v8, v9, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v20, v24, 16);
  if (v14)
  {
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        v18 = objc_msgSend_drawable(v17, v12, v13);
        v19 = v18 == v6;

        if (v19)
        {
          objc_msgSend_setDrawable_(v17, v12, v7);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v20, v24, 16);
    }

    while (v14);
  }
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v121 = objc_msgSend_sourceType(v6, v7, v8);
  v9 = v121 == 1;
  v10 = *(a3 + 36);
  v154[0] = MEMORY[0x277D85DD0];
  v154[1] = 3221225472;
  v154[2] = sub_275D52930;
  v154[3] = &unk_27A697998;
  v154[4] = self;
  v11 = v6;
  v13 = objc_opt_class();
  if (v10)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v11, v12, v10, v13, 0, v154);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v11, v12, MEMORY[0x277D80A18], v13, 0, v154);
  }

  v14 = [KNTransition alloc];
  if (*(a3 + 37))
  {
    v16 = objc_msgSend_initWithArchive_unarchiver_owner_(v14, v15, *(a3 + 37), v11, self);
  }

  else
  {
    v16 = objc_msgSend_initWithArchive_unarchiver_owner_(v14, v15, &qword_2812EAB40, v11, self);
  }

  v18 = v16;
  objc_msgSend_setTransition_(self, v17, v16);

  v152[0] = 0;
  v152[1] = v152;
  v152[2] = 0x3032000000;
  v152[3] = sub_275D52944;
  v152[4] = sub_275D52954;
  v153 = 0;
  v20 = *(a3 + 20);
  v122 = self;
  v125 = a3;
  if ((v20 & 0x80000000) != 0)
  {
    v113 = MEMORY[0x277D81150];
    v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[KNAbstractSlide loadFromArchive:unarchiver:]");
    v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v115, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v113, v117, v114, v116, 3181, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v118, v119);
    v20 = 0;
  }

  v150[0] = MEMORY[0x277D85DD0];
  v150[1] = 3221225472;
  v150[2] = sub_275D5295C;
  v150[3] = &unk_27A6979C0;
  v150[5] = v152;
  v150[6] = v20;
  v150[4] = self;
  v151 = v121 == 1;
  v21 = v11;
  v22 = objc_opt_class();
  objc_msgSend_readRepeatedWeakReferenceMessage_class_protocol_completion_(v21, v23, a3 + 72, v22, 0, v150);

  v24 = *(a3 + 50);
  if (v24)
  {
    v149[0] = MEMORY[0x277D85DD0];
    v149[1] = 3221225472;
    v149[2] = sub_275D52B3C;
    v149[3] = &unk_27A6979E8;
    v149[5] = v24;
    v149[4] = self;
    v25 = v21;
    v26 = objc_opt_class();
    objc_msgSend_readRepeatedWeakReferenceMessage_class_protocol_completion_(v25, v27, a3 + 192, v26, 0, v149);
  }

  if (*(a3 + 8) >= 1)
  {
    v148[0] = MEMORY[0x277D85DD0];
    v148[1] = 3221225472;
    v148[2] = sub_275D52C64;
    v148[3] = &unk_27A697A10;
    v148[4] = self;
    v28 = v21;
    v29 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v28, v30, a3 + 24, v29, 0, v148);
  }

  v31 = v21;
  if (*(a3 + 56) < 1)
  {
    v35 = *(a3 + 14);
    if (v35 >= 1)
    {
      v36 = objc_alloc(MEMORY[0x277CBEB18]);
      v38 = objc_msgSend_initWithCapacity_(v36, v37, v35);
      v41 = objc_msgSend_context(self, v39, v40);
      for (i = 0; i != v35; ++i)
      {
        v43 = [KNBuildChunk alloc];
        v45 = objc_msgSend_initWithContext_(v43, v44, v41);
        v47 = objc_msgSend_newObjectUUIDWithOffset_(self, v46, i);
        objc_msgSend_setObjectUUID_(v45, v48, v47);

        v51 = objc_msgSend_context(self, v49, v50);
        objc_msgSend_wasAddedToDocumentDuringUnarchiveWithContext_(v45, v52, v51);

        objc_msgSend_loadFromArchive_unarchiver_(v45, v53, *(*(a3 + 8) + 8 * i + 8), v31);
        objc_msgSend_addObject_(v38, v54, v45);
      }

      buildChunks = self->_buildChunks;
      self->_buildChunks = v38;

      v9 = v121 == 1;
    }
  }

  else
  {
    v147[0] = MEMORY[0x277D85DD0];
    v147[1] = 3221225472;
    v147[2] = sub_275D52DC8;
    v147[3] = &unk_27A697A10;
    v147[4] = self;
    v32 = v21;
    v33 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v32, v34, a3 + 216, v33, 0, v147);
  }

  v145[0] = 0;
  v145[1] = v145;
  v145[2] = 0x3032000000;
  v145[3] = sub_275D52944;
  v145[4] = sub_275D52954;
  v146 = 0;
  v56 = a3;
  v57 = *(a3 + 4);
  v120 = v6;
  if ((v57 & 0x20) != 0)
  {
    v58 = *(a3 + 38);
    v144[0] = MEMORY[0x277D85DD0];
    v144[1] = 3221225472;
    v144[2] = sub_275D52DDC;
    v144[3] = &unk_27A697A38;
    v144[4] = v145;
    v59 = v31;
    v60 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v59, v61, v58, v60, 0, v144, v6);

    v57 = *(a3 + 4);
  }

  v142[0] = 0;
  v142[1] = v142;
  v142[2] = 0x3032000000;
  v142[3] = sub_275D52944;
  v142[4] = sub_275D52954;
  v143 = 0;
  if ((v57 & 0x40) != 0)
  {
    v62 = *(a3 + 39);
    v141[0] = MEMORY[0x277D85DD0];
    v141[1] = 3221225472;
    v141[2] = sub_275D52DEC;
    v141[3] = &unk_27A697A38;
    v141[4] = v142;
    v63 = v31;
    v64 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v63, v65, v62, v64, 0, v141);

    v57 = *(a3 + 4);
  }

  v139[0] = 0;
  v139[1] = v139;
  v139[2] = 0x3032000000;
  v139[3] = sub_275D52944;
  v139[4] = sub_275D52954;
  v140 = 0;
  if ((v57 & 0x20000) != 0)
  {
    v66 = *(a3 + 50);
    v138[0] = MEMORY[0x277D85DD0];
    v138[1] = 3221225472;
    v138[2] = sub_275D52DFC;
    v138[3] = &unk_27A697A38;
    v138[4] = v139;
    v67 = v31;
    v68 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v67, v69, v66, v68, 0, v138);

    v57 = *(a3 + 4);
  }

  if ((v57 & 0x400) != 0)
  {
    v70 = *(a3 + 43);
    v136[0] = MEMORY[0x277D85DD0];
    v136[1] = 3221225472;
    v136[2] = sub_275D52E0C;
    v136[3] = &unk_27A697A60;
    v136[4] = self;
    v137 = v9;
    v71 = v31;
    v72 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v71, v73, v70, v72, 0, v136);
  }

  v74 = *(a3 + 32);
  v75 = objc_alloc(MEMORY[0x277CBEB38]);
  obj = objc_msgSend_initWithCapacity_(v75, v76, v74);
  if (v74 >= 1)
  {
    v78 = 8;
    do
    {
      v79 = *(v56[17] + v78);
      v80 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v77, *(v79 + 24) & 0xFFFFFFFFFFFFFFFELL, v120);
      v81 = *(v79 + 32);
      v133[0] = MEMORY[0x277D85DD0];
      v133[1] = 3221225472;
      v133[2] = sub_275D52E94;
      v133[3] = &unk_27A697A88;
      v134 = obj;
      v82 = v80;
      v135 = v82;
      v83 = v31;
      v85 = objc_opt_class();
      if (v81)
      {
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v83, v84, v81, v85, 0, v133);
      }

      else
      {
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v83, v84, MEMORY[0x277D80A18], v85, 0, v133);
      }

      v78 += 8;
      --v74;
      v56 = v125;
    }

    while (v74);
  }

  objc_storeStrong(&self->_placeholdersForTags, obj);
  v123 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v86, v87);
  if ((*(v56 + 18) & 0x10) != 0)
  {
    v89 = v125[53];
    v90 = *(v89 + 24);
    if (v90 >= 1)
    {
      v91 = 8;
      do
      {
        v92 = *(*(v89 + 32) + v91);
        v93 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v88, *(v92 + 24) & 0xFFFFFFFFFFFFFFFELL, v120);
        v94 = *(v92 + 32);
        v130[0] = MEMORY[0x277D85DD0];
        v130[1] = 3221225472;
        v130[2] = sub_275D52EFC;
        v130[3] = &unk_27A697A88;
        v131 = v123;
        v95 = v93;
        v132 = v95;
        v96 = v31;
        v98 = objc_opt_class();
        if (v94)
        {
          objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v96, v97, v94, v98, 0, v130);
        }

        else
        {
          objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v96, v97, MEMORY[0x277D80A18], v98, 0, v130);
        }

        v91 += 8;
        --v90;
      }

      while (v90);
    }
  }

  objc_storeStrong(&v122->_instructionalTextForInfos, v123);
  if (*(v125 + 457) == 1 && v121 == 1)
  {
    hasPreUFFVersion = 1;
    v102 = 1;
  }

  else
  {
    hasPreUFFVersion = objc_msgSend_hasPreUFFVersion(v31, v99, v100, v120);
    v102 = v121 == 1;
  }

  v122->_inDocument = hasPreUFFVersion;
  v103 = objc_msgSend_fileFormatVersion(v31, v99, v100, v120);
  v106 = objc_msgSend_hasPreUFFVersion(v31, v104, v105);
  v109 = objc_msgSend_preUFFVersion(v31, v107, v108);
  v111 = objc_msgSend_p_keynoteVersionFromUnarchiver_(v122, v110, v31);
  v126[0] = MEMORY[0x277D85DD0];
  v126[1] = 3221225472;
  v126[2] = sub_275D52F64;
  v126[3] = &unk_27A697AF8;
  v127 = v106;
  v128 = v103 < 0x2000000000007;
  v126[10] = v111;
  v126[11] = v103;
  v126[4] = v122;
  v126[5] = v152;
  v129 = v102;
  v126[6] = v145;
  v126[7] = v142;
  v126[8] = v139;
  v126[9] = v109;
  objc_msgSend_addFinalizeHandler_(v31, v112, v126);

  _Block_object_dispose(v139, 8);
  _Block_object_dispose(v142, 8);

  _Block_object_dispose(v145, 8);
  _Block_object_dispose(v152, 8);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v223[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v189 = v6;
  v190 = self;
  style = self->_style;
  *(a3 + 4) |= 8u;
  v9 = *(a3 + 36);
  if (!v9)
  {
    v10 = *(a3 + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x277C8F050](v10);
    *(a3 + 36) = v9;
    v6 = v189;
  }

  objc_msgSend_setStrongReference_message_(v6, v7, style, v9);
  v14 = objc_msgSend_transition(v190, v11, v12);
  *(a3 + 4) |= 0x10u;
  v15 = *(a3 + 37);
  if (!v15)
  {
    v16 = *(a3 + 1);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = sub_275E1F6F8(v16);
    *(a3 + 37) = v15;
  }

  objc_msgSend_saveToArchive_archiver_(v14, v13, v15, v189);

  v19 = objc_msgSend_count(v190->_builds, v17, v18);
  v20 = objc_alloc(MEMORY[0x277CBEB18]);
  v188 = objc_msgSend_initWithCapacity_(v20, v21, v19);
  v22 = [KNAbstractSlideAlternateArchiveBuildFilter alloc];
  v23 = *MEMORY[0x277D808D8];
  v25 = objc_msgSend_initWithExcludedBuildMinVersion_capacity_(v22, v24, *MEMORY[0x277D808D8], v19);
  v223[0] = v25;
  v26 = [KNAbstractSlideAlternateArchiveBuildFilter alloc];
  v27 = *MEMORY[0x277D80990];
  v29 = objc_msgSend_initWithExcludedBuildMinVersion_capacity_(v26, v28, *MEMORY[0x277D80990], v19);
  v223[1] = v29;
  v182 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v223, 2);

  v213 = 0u;
  v214 = 0u;
  v211 = 0u;
  v212 = 0u;
  obj = v190->_builds;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v211, v222, 16);
  if (v33)
  {
    v183 = *v212;
    v179 = *MEMORY[0x277D80170];
    do
    {
      v34 = 0;
      v186 = v33;
      do
      {
        if (*v212 != v183)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v211 + 1) + 8 * v34);
        objc_msgSend_addObject_(v188, v32, v35);
        v38 = objc_msgSend_effect(v35, v36, v37);
        isEqualToString = objc_msgSend_isEqualToString_(v38, v39, v179);

        if (isEqualToString)
        {
          v209 = 0u;
          v210 = 0u;
          v207 = 0u;
          v208 = 0u;
          v43 = v182;
          v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v207, v221, 16);
          if (v47)
          {
            v48 = *v208;
            do
            {
              for (i = 0; i != v47; ++i)
              {
                if (*v208 != v48)
                {
                  objc_enumerationMutation(v43);
                }

                v50 = *(*(&v207 + 1) + 8 * i);
                if (objc_msgSend_excludedBuildMinVersion(v50, v45, v46) <= v23)
                {
                  objc_msgSend_addExcludedBuild_(v50, v45, v35);
                }
              }

              v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v45, &v207, v221, 16);
            }

            while (v47);
          }

          v33 = v186;
        }

        if (objc_msgSend_isContentBuild(v35, v41, v42))
        {
          v205 = 0u;
          v206 = 0u;
          v203 = 0u;
          v204 = 0u;
          v51 = v182;
          v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v203, v220, 16);
          if (v55)
          {
            v56 = *v204;
            do
            {
              for (j = 0; j != v55; ++j)
              {
                if (*v204 != v56)
                {
                  objc_enumerationMutation(v51);
                }

                v58 = *(*(&v203 + 1) + 8 * j);
                if (objc_msgSend_excludedBuildMinVersion(v58, v53, v54) <= v27)
                {
                  objc_msgSend_addExcludedBuild_(v58, v53, v35);
                }
              }

              v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v53, &v203, v220, 16);
            }

            while (v55);
          }

          v33 = v186;
        }

        ++v34;
      }

      while (v34 != v33);
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v211, v222, 16);
    }

    while (v33);
  }

  objc_msgSend_setStrongReferenceArray_message_(v189, v59, v188, a3 + 24);
  objc_msgSend_setStrongReferenceArray_message_(v189, v60, v190->_buildChunks, a3 + 216);
  objc_msgSend_setWeakReferenceOrderedSet_message_(v189, v61, v190->_childInfos, a3 + 192);
  v64 = objc_msgSend_ownedChildInfos(v190, v62, v63);
  objc_msgSend_setStrongReferenceArray_message_(v189, v65, v64, a3 + 72);

  v68 = objc_msgSend_titlePlaceholder(v190, v66, v67);
  LOBYTE(v64) = v68 == 0;

  if ((v64 & 1) == 0)
  {
    v72 = objc_msgSend_titlePlaceholder(v190, v69, v70);
    *(a3 + 4) |= 0x20u;
    v73 = *(a3 + 38);
    if (!v73)
    {
      v74 = *(a3 + 1);
      if (v74)
      {
        v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
      }

      v73 = MEMORY[0x277C8F050](v74);
      *(a3 + 38) = v73;
    }

    objc_msgSend_setStrongReference_message_(v189, v71, v72, v73);
  }

  v75 = objc_msgSend_bodyPlaceholder(v190, v69, v70);
  v76 = v75 == 0;

  if (!v76)
  {
    v80 = objc_msgSend_bodyPlaceholder(v190, v77, v78);
    *(a3 + 4) |= 0x40u;
    v81 = *(a3 + 39);
    if (!v81)
    {
      v82 = *(a3 + 1);
      if (v82)
      {
        v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
      }

      v81 = MEMORY[0x277C8F050](v82);
      *(a3 + 39) = v81;
    }

    objc_msgSend_setStrongReference_message_(v189, v79, v80, v81);
  }

  v83 = objc_msgSend_objectPlaceholder(v190, v77, v78);
  v84 = v83 == 0;

  if (!v84)
  {
    v88 = objc_msgSend_objectPlaceholder(v190, v85, v86);
    *(a3 + 4) |= 0x20000u;
    v89 = *(a3 + 50);
    if (!v89)
    {
      v90 = *(a3 + 1);
      if (v90)
      {
        v90 = *(v90 & 0xFFFFFFFFFFFFFFFELL);
      }

      v89 = MEMORY[0x277C8F050](v90);
      *(a3 + 50) = v89;
    }

    objc_msgSend_setStrongReference_message_(v189, v87, v88, v89);
  }

  v91 = objc_msgSend_slideNumberPlaceholder(v190, v85, v86);
  v92 = v91 == 0;

  if (!v92)
  {
    v96 = objc_msgSend_slideNumberPlaceholder(v190, v93, v94);
    *(a3 + 4) |= 0x400u;
    v97 = *(a3 + 43);
    if (!v97)
    {
      v98 = *(a3 + 1);
      if (v98)
      {
        v98 = *(v98 & 0xFFFFFFFFFFFFFFFELL);
      }

      v97 = MEMORY[0x277C8F050](v98);
      *(a3 + 43) = v97;
    }

    objc_msgSend_setStrongReference_message_(v189, v95, v96, v97);
  }

  v201 = 0u;
  v202 = 0u;
  v199 = 0u;
  v200 = 0u;
  v99 = objc_msgSend_keyEnumerator(v190->_placeholdersForTags, v93, v94);
  v180 = v99;
  v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v99, v100, &v199, v219, 16);
  if (v102)
  {
    v184 = *v200;
    do
    {
      for (k = 0; k != v102; ++k)
      {
        if (*v200 != v184)
        {
          objc_enumerationMutation(v180);
        }

        v104 = *(*(&v199 + 1) + 8 * k);
        v107 = objc_msgSend_objectForKeyedSubscript_(v190->_placeholdersForTags, v101, v104);
        v108 = *(a3 + 17);
        if (!v108)
        {
          goto LABEL_72;
        }

        v109 = *(a3 + 32);
        v110 = *v108;
        if (v109 < *v108)
        {
          *(a3 + 32) = v109 + 1;
          v111 = *&v108[2 * v109 + 2];
          goto LABEL_74;
        }

        if (v110 == *(a3 + 33))
        {
LABEL_72:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 120));
          v108 = *(a3 + 17);
          v110 = *v108;
        }

        *v108 = v110 + 1;
        v111 = sub_275E1FE50(*(a3 + 15));
        v112 = *(a3 + 32);
        v113 = *(a3 + 17) + 8 * v112;
        *(a3 + 32) = v112 + 1;
        *(v113 + 8) = v111;
LABEL_74:
        v114 = objc_msgSend_tsp_protobufString(v104, v105, v106);
        *(v111 + 16) |= 1u;
        sub_275D55B98(__p, v114);
        google::protobuf::internal::ArenaStringPtr::Set();
        if (v216 < 0)
        {
          operator delete(__p[0]);
        }

        v117 = objc_msgSend_childInfos(v190, v115, v116);
        v119 = objc_msgSend_containsObject_(v117, v118, v107);

        if ((v119 & 1) == 0)
        {
          v121 = MEMORY[0x277D81150];
          v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "[KNAbstractSlide saveToArchive:archiver:]");
          v124 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v123, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAbstractSlide.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v121, v125, v122, v124, 3808, 0, "Saving tagged drawable %@ with tag %@ that is not among the childInfos for %@", v107, v104, v190);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v126, v127);
        }

        *(v111 + 16) |= 2u;
        v128 = *(v111 + 32);
        if (!v128)
        {
          v129 = *(v111 + 8);
          if (v129)
          {
            v129 = *(v129 & 0xFFFFFFFFFFFFFFFELL);
          }

          v128 = MEMORY[0x277C8F050](v129);
          *(v111 + 32) = v128;
        }

        objc_msgSend_setStrongReference_message_(v189, v120, v107, v128);
      }

      v99 = v180;
      v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v180, v101, &v199, v219, 16);
    }

    while (v102);
  }

  *(a3 + 4) |= 0x100000u;
  v132 = *(a3 + 53);
  if (!v132)
  {
    v133 = *(a3 + 1);
    if (v133)
    {
      v133 = *(v133 & 0xFFFFFFFFFFFFFFFELL);
    }

    v132 = sub_275E1FF68(v133);
    *(a3 + 53) = v132;
  }

  v197 = 0u;
  v198 = 0u;
  v195 = 0u;
  v196 = 0u;
  v134 = objc_msgSend_keyEnumerator(v190->_instructionalTextForInfos, v130, v131);
  v137 = objc_msgSend_countByEnumeratingWithState_objects_count_(v134, v135, &v195, v218, 16);
  if (v137)
  {
    v138 = *v196;
    do
    {
      for (m = 0; m != v137; ++m)
      {
        if (*v196 != v138)
        {
          objc_enumerationMutation(v134);
        }

        v140 = *(*(&v195 + 1) + 8 * m);
        v141 = *(v132 + 32);
        if (!v141)
        {
          goto LABEL_98;
        }

        v142 = *(v132 + 24);
        v143 = *v141;
        if (v142 < *v141)
        {
          *(v132 + 24) = v142 + 1;
          v144 = *&v141[2 * v142 + 2];
          goto LABEL_100;
        }

        if (v143 == *(v132 + 28))
        {
LABEL_98:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v132 + 16));
          v141 = *(v132 + 32);
          v143 = *v141;
        }

        *v141 = v143 + 1;
        v144 = sub_275E1FEDC(*(v132 + 16));
        v145 = *(v132 + 24);
        v146 = *(v132 + 32) + 8 * v145;
        *(v132 + 24) = v145 + 1;
        *(v146 + 8) = v144;
LABEL_100:
        *(v144 + 16) |= 2u;
        v147 = *(v144 + 32);
        if (!v147)
        {
          v148 = *(v144 + 8);
          if (v148)
          {
            v148 = *(v148 & 0xFFFFFFFFFFFFFFFELL);
          }

          v147 = MEMORY[0x277C8F050](v148);
          *(v144 + 32) = v147;
        }

        objc_msgSend_setWeakReference_message_(v189, v136, v140, v147);
        v150 = objc_msgSend_objectForKeyedSubscript_(v190->_instructionalTextForInfos, v149, v140);
        v153 = objc_msgSend_tsp_protobufString(v150, v151, v152);
        *(v144 + 16) |= 1u;
        sub_275D55B98(__p, v153);
        google::protobuf::internal::ArenaStringPtr::Set();
        if (v216 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v137 = objc_msgSend_countByEnumeratingWithState_objects_count_(v134, v136, &v195, v218, 16);
    }

    while (v137);
  }

  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v189, v154, 45, a3);
  inDocument = v190->_inDocument;
  *(a3 + 4) |= 0x10000000u;
  *(a3 + 457) = inDocument;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v187 = v182;
  v159 = objc_msgSend_countByEnumeratingWithState_objects_count_(v187, v156, &v191, v217, 16);
  if (v159)
  {
    v160 = *v192;
    v185 = *MEMORY[0x277D809B8];
    v181 = *MEMORY[0x277D80970];
    do
    {
      for (n = 0; n != v159; ++n)
      {
        if (*v192 != v160)
        {
          objc_enumerationMutation(v187);
        }

        v162 = *(*(&v191 + 1) + 8 * n);
        if (objc_msgSend_hasExcludedBuilds(v162, v157, v158))
        {
          v163 = objc_msgSend_filteredBuildsForBuilds_(v162, v157, v188);
          v166 = objc_msgSend_excludedBuildMinVersion(v162, v164, v165);
          v168 = objc_msgSend_alternateDiffToMergeBeforeVersion_fileFormatVersion_message_(v189, v167, v166, v185, a3);
          google::protobuf::internal::AssignDescriptors();
          v170 = objc_msgSend_messageWithNewFunction_descriptor_(v168, v169, sub_275D55CF8, off_2812EA908[32]);

          objc_msgSend_removeField_message_(v168, v171, 2, v170);
          objc_msgSend_setStrongReferenceArray_message_(v168, v172, v163, v170 + 24);
          v174 = objc_msgSend_filteredBuildChunksForBuildChunks_(v162, v173, v190->_buildChunks);
          objc_msgSend_removeField_message_(v168, v175, 43, v170);
          objc_msgSend_setStrongReferenceArray_message_(v168, v176, v174, v170 + 216);
          objc_msgSend_requiresDocumentReadVersion_writeVersion_(v189, v177, v181, v27);
        }
      }

      v159 = objc_msgSend_countByEnumeratingWithState_objects_count_(v187, v157, &v191, v217, 16);
    }

    while (v159);
  }
}

- (void)p_updateOverlappingBuildEventTriggers
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = objc_msgSend_buildChunks(self, a2, v2, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v13, v17, 16);
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (objc_msgSend_hasComplement(v11, v6, v7))
        {
          objc_msgSend_willModifyForUpgrade(self, v6, v7);
          objc_msgSend_setReferent_(v11, v12, 1);
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v13, v17, 16);
    }

    while (v8);
  }
}

- (unint64_t)p_keynoteVersionFromUnarchiver:(id)a3
{
  v3 = a3;
  if (objc_msgSend_hasPreUFFVersion(v3, v4, v5))
  {
    v8 = objc_msgSend_preUFFVersion(v3, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_fileFormatVersion(v3, v6, v7);
    if (v9 >= *MEMORY[0x277D80958])
    {
      if (v9 >= *MEMORY[0x277D80988])
      {
        if (v9 >= *MEMORY[0x277D808C8])
        {
          v10 = &qword_275E79258;
        }

        else
        {
          v10 = &unk_275E79248;
        }
      }

      else
      {
        v10 = &qword_275E79240;
      }
    }

    else
    {
      v10 = &qword_275E79238;
    }

    v8 = *v10;
  }

  return v8;
}

- (void)p_updateBuildEffects:(BOOL)a3 version:(unint64_t)a4
{
  v75 = a3;
  v88 = *MEMORY[0x277D85DE8];
  v78 = objc_msgSend_instance(KNAnimationRegistry, a2, a3);
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = objc_msgSend_builds(self, v4, v5);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v83, v87, 16);
  if (v7)
  {
    v77 = *v84;
    do
    {
      v79 = v7;
      for (i = 0; i != v79; ++i)
      {
        if (*v84 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v83 + 1) + 8 * i);
        v12 = objc_msgSend_effect(v11, v8, v9);
        v15 = objc_msgSend_animationType(v11, v13, v14);
        v18 = objc_msgSend_drawable(v11, v16, v17);
        v20 = objc_msgSend_animationInfoForEffectIdentifier_animationType_includeObsoleteNames_drawable_(v78, v19, v12, v15, 1, v18);
        v23 = v20;
        if (a4 < 0xE94D0C4B44)
        {
          v24 = objc_msgSend_effectIdentifier(v20, v21, v22);
          objc_msgSend_isEqualToString_(v24, v25, v12);
        }

        v26 = objc_msgSend_animationClass(v23, v21, v22);
        if (objc_msgSend_conformsToProtocol_(v26, v27, &unk_28852EB30))
        {
          v30 = objc_msgSend_attributes(v11, v28, v29);
          v33 = objc_msgSend_attributes(v30, v31, v32);

          v82 = v33;
          v36 = objc_msgSend_effectIdentifier(v23, v34, v35);
          v81 = 0;
          v39 = objc_msgSend_animationType(v11, v37, v38);
          objc_msgSend_upgradeAttributes_animationName_oldAnimationName_warning_type_isFromClassic_version_(v26, v40, &v82, v36, v12, &v81, v39, v75, a4);
          v41 = v82;

          v42 = v81;
          v45 = objc_msgSend_attributes(v11, v43, v44);
          v47 = objc_msgSend_attributesByAddingAttributesFromDictionary_(v45, v46, v41);
          objc_msgSend_setAttributes_(v11, v48, v47);
        }

        if (objc_msgSend_conformsToProtocol_(v26, v28, &unk_28852EBF0) && objc_msgSend_shouldWarnOnUpgradeWithOldAnimationName_version_(v26, v49, v12, a4))
        {
          v74 = objc_msgSend_context(self, v50, v51);
          v54 = objc_msgSend_delegate(v74, v52, v53);
          if (objc_opt_respondsToSelector())
          {
            v55 = MEMORY[0x277CCACA8];
            v72 = sub_275DC204C();
            v57 = objc_msgSend_localizedStringForKey_value_table_(v72, v56, @"%@ builds were imported as %@.", &stru_2884D8E20, @"Keynote");
            v59 = objc_msgSend_localizedNameForUnsupportedAnimation_(KNAnimationRegistry, v58, v12);
            v62 = objc_msgSend_animationType(v11, v60, v61);
            v64 = objc_msgSend_localizedAnimationStringForUpgradeWarning_(v26, v63, v62);
            v66 = objc_msgSend_localizedStringWithFormat_(v55, v65, v57, v59, v64);

            v68 = objc_msgSend_warningWithMessage_(MEMORY[0x277D81368], v67, v66);
            v70 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v69, v68);
            objc_msgSend_addPersistenceWarnings_(v54, v71, v70);
          }
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v83, v87, 16);
    }

    while (v7);
  }
}

- (KNSlideNode)slideNode
{
  WeakRetained = objc_loadWeakRetained(&self->_slideNode);

  return WeakRetained;
}

- (id)pdfDataUsingDocumentRoot:(id)a3
{
  v4 = a3;
  v5 = [KNImager alloc];
  v7 = objc_msgSend_initWithDocumentRoot_(v5, v6, v4);
  v10 = objc_msgSend_slideNode(self, v8, v9);
  objc_msgSend_setIsPrinting_(v7, v11, 1);
  v14 = objc_msgSend_blackColor(MEMORY[0x277D81180], v12, v13);
  objc_msgSend_setBackgroundColor_(v7, v15, v14);

  v18 = objc_msgSend_show(v4, v16, v17);
  objc_msgSend_size(v18, v19, v20);
  TSURectWithSize();
  objc_msgSend_setUnscaledClipRect_(v7, v21, v22);

  v25 = objc_msgSend_infosToDisplay(self, v23, v24);
  objc_msgSend_setInfos_(v7, v26, v25);

  v29 = objc_msgSend_show(v4, v27, v28);

  v32 = objc_msgSend_slideTree(v29, v30, v31);
  v34 = objc_msgSend_slideNumberForSlideNode_(v32, v33, v10);
  objc_msgSend_setSlideNumber_(v7, v35, v34);

  v38 = objc_msgSend_slide(v10, v36, v37);
  objc_msgSend_setSlide_(v7, v39, v38);

  v42 = objc_msgSend_pdfData(v7, v40, v41);

  return v42;
}

- (id)imageUsingDocumentRoot:(id)a3
{
  v4 = a3;
  v5 = [KNImager alloc];
  v7 = objc_msgSend_initWithDocumentRoot_(v5, v6, v4);
  v10 = objc_msgSend_slideNode(self, v8, v9);
  v13 = objc_msgSend_blackColor(MEMORY[0x277D81180], v11, v12);
  objc_msgSend_setBackgroundColor_(v7, v14, v13);

  v17 = objc_msgSend_show(v4, v15, v16);
  objc_msgSend_size(v17, v18, v19);
  TSURectWithSize();
  objc_msgSend_setUnscaledClipRect_(v7, v20, v21);

  v24 = objc_msgSend_infosToDisplay(self, v22, v23);
  objc_msgSend_setInfos_(v7, v25, v24);

  v28 = objc_msgSend_show(v4, v26, v27);

  v31 = objc_msgSend_slideTree(v28, v29, v30);
  v33 = objc_msgSend_slideNumberForSlideNode_(v31, v32, v10);
  objc_msgSend_setSlideNumber_(v7, v34, v33);

  v37 = objc_msgSend_slide(v10, v35, v36);
  objc_msgSend_setSlide_(v7, v38, v37);

  v41 = objc_msgSend_newImage(v7, v39, v40);
  v42 = objc_alloc(MEMORY[0x277D811F8]);
  v44 = objc_msgSend_initWithCGImage_(v42, v43, v41);
  CGImageRelease(v41);

  return v44;
}

@end