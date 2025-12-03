@interface KNBuild
+ (BOOL)p_shouldExcludeAnimationName:(id)name forDrawable:(id)drawable;
+ (KNBuild)buildWithEffect:(id)effect animationType:(int64_t)type drawable:(id)drawable slide:(id)slide;
+ (id)menuAnimationInfosForDrawableInfo:(id)info animationType:(int64_t)type;
+ (id)p_drawableFromInfo:(id)info;
+ (id)supportedAnimationInfosForDrawableInfo:(id)info animationType:(int64_t)type;
+ (void)i_repairBuildToDrawableReferencesFromUUIDsForBuilds:(id)builds drawables:(id)drawables;
- (BOOL)canEditAnimations;
- (BOOL)customAlignToPath;
- (BOOL)customBounce;
- (BOOL)customCursor;
- (BOOL)customDecay;
- (BOOL)customIncludeEndpoints;
- (BOOL)customMotionBlur;
- (BOOL)customShine;
- (BOOL)downgradesDelivery;
- (BOOL)hasComplement;
- (BOOL)i_isFullyFormedBuild;
- (BOOL)isActionMotionBuild;
- (BOOL)isComplementOfBuild:(id)build;
- (BOOL)isEmphasisBuild;
- (BOOL)isOnSlide;
- (BOOL)p_hasComplementInBuilds:(id)builds;
- (BOOL)p_isDeliveryLocalized:(id)localized forNonNilDrawable:(id)drawable;
- (BOOL)p_supportsCustomEffectTimingCurveForLayoutStyles:(id)styles;
- (BOOL)p_supportsCustomTextDeliveryOptionsForAttributes:(id)attributes;
- (BOOL)supports3DChartRotationAngle;
- (BOOL)supportsAcceleration;
- (BOOL)supportsActionRotationAngle;
- (BOOL)supportsActionRotationDirection;
- (BOOL)supportsActionScale;
- (BOOL)supportsAlignToPath;
- (BOOL)supportsBounce;
- (BOOL)supportsCursor;
- (BOOL)supportsCustomCursor;
- (BOOL)supportsCustomDetail;
- (BOOL)supportsCustomEffectTimingCurve1;
- (BOOL)supportsCustomEffectTimingCurve2;
- (BOOL)supportsCustomEffectTimingCurve3;
- (BOOL)supportsCustomRepeats;
- (BOOL)supportsCustomScale;
- (BOOL)supportsCustomTextDelivery;
- (BOOL)supportsDecay;
- (BOOL)supportsDelivery;
- (BOOL)supportsDuration;
- (BOOL)supportsIncludeEndpoints;
- (BOOL)supportsJiggleIntensity;
- (BOOL)supportsOpacity;
- (BOOL)supportsRandomNumberSeedInspection;
- (BOOL)supportsScaleAmount;
- (BOOL)supportsShine;
- (BOOL)supportsTravelDistance;
- (KNAbstractSlide)slide;
- (KNAnimationInfo)animationInfo;
- (KNAnimationPluginMenu)directionMenu;
- (KNBuild)initWithSlide:(id)slide effect:(id)effect buildType:(int64_t)type context:(id)context;
- (KNBuildChunk)firstChunk;
- (NSArray)chunks;
- (NSSet)inspectableAttributes;
- (NSString)animationFilter;
- (NSString)customEffectTimingCurveThemeName1;
- (NSString)customEffectTimingCurveThemeName2;
- (NSString)customEffectTimingCurveThemeName3;
- (NSString)debugDescription;
- (NSString)delivery;
- (NSString)description;
- (NSString)localizedEffect;
- (NSString)title;
- (TSDBezierPathSource)customEffectTimingCurve1;
- (TSDBezierPathSource)customEffectTimingCurve2;
- (TSDBezierPathSource)customEffectTimingCurve3;
- (_NSRange)activeChunkRange;
- (_NSRange)p_calculateActiveChunkRange;
- (double)actionOpacity;
- (double)actionRotationAngle;
- (double)actionScale;
- (double)customDetail;
- (double)customScaleAmount;
- (double)customTravelDistance;
- (double)durationDefaultForInitialChunk;
- (float)custom3DChartRotation;
- (id)chunkForIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deliveriesLocalized:(BOOL)localized;
- (id)i_buildChunkForChunkIdentifier:(id)identifier;
- (id)i_drawableForArchiving:(BOOL)archiving;
- (id)i_drawableOnSlide:(id)slide;
- (id)p_buildChunkIDMap;
- (id)p_chunkAtIndex:(unint64_t)index;
- (id)p_chunkTitleByTruncatingTitle:(id)title toLength:(unint64_t)length;
- (int64_t)animationType;
- (int64_t)customAccelerationOption;
- (int64_t)customTextDelivery;
- (int64_t)randomNumberSeed;
- (unint64_t)actionAcceleration;
- (unint64_t)actionRotationDirection;
- (unint64_t)chunkCount;
- (unint64_t)customDeliveryOption;
- (unint64_t)customJiggleIntensity;
- (unint64_t)customRepeatCount;
- (unint64_t)customScale;
- (unint64_t)deliveryStyle;
- (unint64_t)direction;
- (unint64_t)directionType;
- (unint64_t)endChunkIndexFromEndOffset:(unint64_t)offset;
- (unint64_t)endOffset;
- (unint64_t)expectedChunkCount;
- (unint64_t)firstChunkIndexOnSlide;
- (unint64_t)lastActiveChunkIndexInBuild;
- (unint64_t)lastChunkIndexOnSlide;
- (unint64_t)startOffset;
- (void)didInitFromSOS;
- (void)i_deregisterBuildChunkWithChunkIdentifier:(id)identifier;
- (void)i_generateAndApplyNewChunkIdentifierToChunk:(id)chunk;
- (void)i_invalidateChunkCache;
- (void)i_registerBuildChunkIdentifierForChunk:(id)chunk;
- (void)i_rollbackChunkIDSeedForChunk:(id)chunk;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setAttributes:(id)attributes;
- (void)setDelivery:(id)delivery;
- (void)setDrawable:(id)drawable;
@end

@implementation KNBuild

- (void)i_invalidateChunkCache
{
  cachedChunks = self->_cachedChunks;
  self->_cachedChunks = 0;

  self->_cachedActiveChunkRangeIsValid = 0;
  buildChunkIDMap = self->_buildChunkIDMap;
  self->_buildChunkIDMap = 0;
}

- (BOOL)i_isFullyFormedBuild
{
  if (!self->_drawable && !self->_drawableId)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_slide);
  if (WeakRetained)
  {
    v4 = self->_attributes != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)i_repairBuildToDrawableReferencesFromUUIDsForBuilds:(id)builds drawables:(id)drawables
{
  v32 = *MEMORY[0x277D85DE8];
  buildsCopy = builds;
  drawablesCopy = drawables;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = buildsCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(buildsCopy, v7, &v27, v31, 16);
  if (v8)
  {
    v11 = v8;
    v12 = 0;
    v13 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = objc_msgSend_i_drawableId(v15, v9, v10);
        objc_opt_class();
        v19 = objc_msgSend_context(v15, v17, v18);
        v21 = objc_msgSend_objectWithUUIDIfAvailable_(v19, v20, v16);
        v22 = TSUDynamicCast();

        if (drawablesCopy && !v22)
        {
          if (!v12)
          {
            v12 = objc_msgSend_UUIDToTSPObjectMapForTSPObjects_(KNBuildUtility, v23, drawablesCopy);
          }

          objc_opt_class();
          v25 = objc_msgSend_objectForKeyedSubscript_(v12, v24, v16);
          v22 = TSUCheckedDynamicCast();
        }

        if (v22)
        {
          objc_msgSend_setDrawable_(v15, v23, v22);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v27, v31, 16);
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }
}

- (id)i_drawableForArchiving:(BOOL)archiving
{
  drawable = self->_drawable;
  if (!drawable)
  {
    archivingCopy = archiving;
    objc_opt_class();
    v8 = objc_msgSend_context(self, v6, v7);
    v10 = v8;
    drawableId = self->_drawableId;
    if (archivingCopy)
    {
      objc_msgSend_objectWithUUIDIfAvailable_(v8, v9, drawableId);
    }

    else
    {
      objc_msgSend_objectWithUUID_(v8, v9, drawableId);
    }
    v12 = ;
    v13 = TSUCheckedDynamicCast();

    v14 = self->_drawable;
    self->_drawable = v13;

    drawable = self->_drawable;
  }

  return drawable;
}

- (id)i_drawableOnSlide:(id)slide
{
  slideCopy = slide;
  v7 = objc_msgSend_drawable(self, v5, v6);
  v10 = objc_msgSend_infosToDisplay(slideCopy, v8, v9);

  if ((objc_msgSend_containsObject_(v10, v11, v7) & 1) == 0)
  {
    v14 = objc_msgSend_i_drawableId(self, v12, v13);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_275DDB8A8;
    v19[3] = &unk_27A699010;
    v20 = v14;
    v15 = v14;
    v17 = objc_msgSend_tsu_firstObjectPassingTest_(v10, v16, v19);

    v7 = v17;
  }

  return v7;
}

- (void)i_generateAndApplyNewChunkIdentifierToChunk:(id)chunk
{
  chunkCopy = chunk;
  v38 = chunkCopy;
  if (!chunkCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNBuild(Internal) i_generateAndApplyNewChunkIdentifierToChunk:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 173, 0, "Invalid parameter not satisfying: %{public}s", "chunk != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    chunkCopy = 0;
  }

  v14 = objc_msgSend_chunkIdentifier(chunkCopy, v5, v6);
  isValid = objc_msgSend_isValid(v14, v15, v16);

  if (isValid)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[KNBuild(Internal) i_generateAndApplyNewChunkIdentifierToChunk:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 174, 0, "An attempt was made to assign a chunk identifier, but the chunk already has one.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v25, v26);
  }

  if (self->_chunkIDSeed == 0x7FFFFFFF)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[KNBuild(Internal) i_generateAndApplyNewChunkIdentifierToChunk:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 192, 0, "The chunk ID counter is about to overflow and the chunk ID cannot be assigned.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v36, v37);
  }

  else
  {
    objc_msgSend_willModify(self, v18, v19);
    ++self->_chunkIDSeed;
    v27 = [KNBuildChunkIdentifier alloc];
    v29 = objc_msgSend_initWithBuild_chunkID_(v27, v28, self, self->_chunkIDSeed);
    objc_msgSend_i_setChunkIdentifier_(v38, v30, v29);
  }
}

- (void)i_rollbackChunkIDSeedForChunk:(id)chunk
{
  v70 = *MEMORY[0x277D85DE8];
  chunkCopy = chunk;
  if (!chunkCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNBuild(Internal) i_rollbackChunkIDSeedForChunk:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 197, 0, "Invalid parameter not satisfying: %{public}s", "chunk != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_build(chunkCopy, v4, v5);

  if (v14 != self)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[KNBuild(Internal) i_rollbackChunkIDSeedForChunk:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 198, 0, "Chunk is not part of the receiver (build).");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v24 = objc_msgSend_chunkIdentifier(chunkCopy, v15, v16);
  chunkIDSeed = objc_msgSend_chunkID(v24, v25, v26);
  if (chunkIDSeed != self->_chunkIDSeed)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[KNBuild(Internal) i_rollbackChunkIDSeedForChunk:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 202, 0, "Trying to roll back ID for chunk which was not the last one inserted.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v34, v35);
    chunkIDSeed = self->_chunkIDSeed;
  }

  if (chunkIDSeed < 1)
  {
    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[KNBuild(Internal) i_rollbackChunkIDSeedForChunk:]");
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v61, v58, v60, 226, 0, "Trying to roll back an ID which is already at the beginning.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63);
  }

  else
  {
    v64 = v24;
    objc_msgSend_i_deregisterBuildChunkWithChunkIdentifier_(self, v28, v24);
    objc_msgSend_willModify(self, v36, v37);
    --self->_chunkIDSeed;
    objc_msgSend_i_clearChunkIdentifier(chunkCopy, v38, v39);
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v42 = objc_msgSend_allKeys(self->_buildChunkIDMap, v40, v41);
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v65, v69, 16);
    if (v44)
    {
      v47 = v44;
      v48 = *v66;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v66 != v48)
          {
            objc_enumerationMutation(v42);
          }

          if (objc_msgSend_integerValue(*(*(&v65 + 1) + 8 * i), v45, v46) > self->_chunkIDSeed)
          {
            v50 = MEMORY[0x277D81150];
            v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[KNBuild(Internal) i_rollbackChunkIDSeedForChunk:]");
            v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v54, v51, v53, 223, 0, "Found a pre-existing chunk which has an ID that is too high. This could cause an ID collision later.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56);
          }
        }

        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v65, v69, 16);
      }

      while (v47);
    }

    v24 = v64;
  }
}

- (void)i_registerBuildChunkIdentifierForChunk:(id)chunk
{
  chunkCopy = chunk;
  v67 = chunkCopy;
  if (!chunkCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNBuild(Internal) i_registerBuildChunkIdentifierForChunk:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 241, 0, "Invalid parameter not satisfying: %{public}s", "chunk != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    chunkCopy = 0;
  }

  v14 = objc_msgSend_chunkIdentifier(chunkCopy, v5, v6);
  v17 = v14;
  if (v14)
  {
    if ((objc_msgSend_isValid(v14, v15, v16) & 1) == 0)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[KNBuild(Internal) i_registerBuildChunkIdentifierForChunk:]");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 247, 0, "Invalid chunk ID.");

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v25, v26);
    }

    v27 = objc_msgSend_buildUUID(v17, v18, v19);
    v30 = objc_msgSend_objectUUID(self, v28, v29);
    isEqual = objc_msgSend_isEqual_(v27, v31, v30);

    if ((isEqual & 1) == 0)
    {
      v35 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[KNBuild(Internal) i_registerBuildChunkIdentifierForChunk:]");
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 248, 0, "Chunk identifier does not reference the receiver (build).");

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v40, v41);
    }

    v42 = objc_msgSend_chunkID(v17, v33, v34);
    v45 = objc_msgSend_p_buildChunkIDMap(self, v43, v44);
    v47 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v46, v42);
    v49 = objc_msgSend_objectForKeyedSubscript_(v45, v48, v47);

    if (v49 && v49 != v67)
    {
      v51 = MEMORY[0x277D81150];
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "[KNBuild(Internal) i_registerBuildChunkIdentifierForChunk:]");
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v55, v52, v54, 258, 0, "A chunk ID collision has occurred.");

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v56, v57);
    }

    v58 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v50, v42);
    objc_msgSend_setObject_forKeyedSubscript_(v45, v59, v67, v58);
  }

  else
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[KNBuild(Internal) i_registerBuildChunkIdentifierForChunk:]");
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v64, v61, v63, 244, 0, "Nil chunk identifier. %@", v67);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v65, v66);
  }
}

- (id)p_buildChunkIDMap
{
  v59 = *MEMORY[0x277D85DE8];
  buildChunkIDMap = self->_buildChunkIDMap;
  if (!buildChunkIDMap)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = self->_buildChunkIDMap;
    self->_buildChunkIDMap = v4;

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = objc_msgSend_chunks(self, v6, v7);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v54, v58, 16);
    if (v9)
    {
      v12 = v9;
      v13 = *v55;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v55 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v54 + 1) + 8 * i);
          v16 = objc_msgSend_chunkIdentifier(v15, v10, v11);
          if ((objc_msgSend_isValid(v16, v17, v18) & 1) == 0)
          {
            v21 = MEMORY[0x277D81150];
            v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[KNBuild(Internal) p_buildChunkIDMap]");
            v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 273, 0, "Expected the chunk to have a fully qualified chunk identifier.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
          }

          v28 = objc_msgSend_buildUUID(v16, v19, v20);
          v31 = objc_msgSend_objectUUID(self, v29, v30);
          isEqual = objc_msgSend_isEqual_(v28, v32, v31);

          if ((isEqual & 1) == 0)
          {
            v36 = MEMORY[0x277D81150];
            v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[KNBuild(Internal) p_buildChunkIDMap]");
            v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 274, 0, "Chunk identifier does not reference the receiver (build).");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
          }

          v43 = self->_buildChunkIDMap;
          v44 = MEMORY[0x277CCABB0];
          v45 = objc_msgSend_chunkIdentifier(v15, v34, v35);
          v48 = objc_msgSend_chunkID(v45, v46, v47);
          v50 = objc_msgSend_numberWithInt_(v44, v49, v48);
          objc_msgSend_setObject_forKeyedSubscript_(v43, v51, v15, v50);
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v54, v58, 16);
      }

      while (v12);
    }

    buildChunkIDMap = self->_buildChunkIDMap;
  }

  return buildChunkIDMap;
}

- (id)i_buildChunkForChunkIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = objc_msgSend_p_buildChunkIDMap(self, v5, v6);
  v8 = MEMORY[0x277CCABB0];
  v11 = objc_msgSend_chunkID(identifierCopy, v9, v10);

  v13 = objc_msgSend_numberWithInt_(v8, v12, v11);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  return v15;
}

- (void)i_deregisterBuildChunkWithChunkIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ((objc_msgSend_isValid(identifierCopy, v4, v5) & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNBuild(Internal) i_deregisterBuildChunkWithChunkIdentifier:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 288, 0, "Invalid chunk identifier.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_msgSend_buildUUID(identifierCopy, v6, v7);
  v18 = objc_msgSend_objectUUID(self, v16, v17);
  isEqual = objc_msgSend_isEqual_(v15, v19, v18);

  if ((isEqual & 1) == 0)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[KNBuild(Internal) i_deregisterBuildChunkWithChunkIdentifier:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild-Internal.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 289, 0, "Chunk identifier does not reference the receiver (build).");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  v30 = objc_msgSend_chunkID(identifierCopy, v21, v22);
  v33 = objc_msgSend_p_buildChunkIDMap(self, v31, v32);
  v35 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v34, v30);
  objc_msgSend_removeObjectForKey_(v33, v36, v35);
}

+ (BOOL)p_shouldExcludeAnimationName:(id)name forDrawable:(id)drawable
{
  drawableCopy = drawable;
  nameCopy = name;
  isEqualToString = objc_msgSend_isEqualToString_(nameCopy, v7, @"apple:bc-orbital");
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = objc_msgSend_isEqualToString_(nameCopy, v10, @"apple:drift object");

  objc_opt_class();
  LOBYTE(nameCopy) = objc_opt_isKindOfClass();

  return (isEqualToString & ~isKindOfClass | v11 & nameCopy) & 1;
}

+ (id)p_drawableFromInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  v4 = TSUDynamicCast();

  return v4;
}

+ (id)supportedAnimationInfosForDrawableInfo:(id)info animationType:(int64_t)type
{
  v46 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (type == 3)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[KNBuild supportedAnimationInfosForDrawableInfo:animationType:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 119, 0, "Unexpected animation type.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_set(MEMORY[0x277CBEB58], v6, v7);
  v40 = infoCopy;
  v18 = objc_msgSend_p_drawableFromInfo_(self, v17, infoCopy);
  v21 = objc_msgSend_instance(KNAnimationRegistry, v19, v20);
  v24 = objc_msgSend_animationFilters(v18, v22, v23);
  v26 = objc_msgSend_animationInfosForAnimationType_filter_(v21, v25, type, v24);

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v27 = v26;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v41, v45, 16);
  if (v29)
  {
    v32 = v29;
    v33 = *v42;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v42 != v33)
        {
          objc_enumerationMutation(v27);
        }

        v35 = *(*(&v41 + 1) + 8 * i);
        v36 = objc_msgSend_effectIdentifier(v35, v30, v31);
        if ((objc_msgSend_p_shouldExcludeAnimationName_forDrawable_(self, v37, v36, v18) & 1) == 0)
        {
          objc_msgSend_addObject_(v16, v38, v35);
        }
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v41, v45, 16);
    }

    while (v32);
  }

  return v16;
}

+ (id)menuAnimationInfosForDrawableInfo:(id)info animationType:(int64_t)type
{
  v57 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (type == 3)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[KNBuild menuAnimationInfosForDrawableInfo:animationType:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 145, 0, "Unexpected animation type.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = MEMORY[0x277CBEB58];
  v51 = infoCopy;
  v16 = objc_msgSend_supportedAnimationInfosForDrawableInfo_animationType_(self, v6, infoCopy, type);
  v18 = objc_msgSend_setWithSet_(v15, v17, v16);

  v21 = objc_msgSend_set(MEMORY[0x277CBEB58], v19, v20);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v22 = v18;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v52, v56, 16);
  if (v24)
  {
    v27 = v24;
    v28 = MEMORY[0x277D80578];
    v29 = *v53;
    v30 = MEMORY[0x277D80588];
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v53 != v29)
        {
          objc_enumerationMutation(v22);
        }

        v32 = *(*(&v52 + 1) + 8 * i);
        v33 = objc_msgSend_animationFilter(v32, v25, v26);
        if ((objc_msgSend_isEqualToString_(v33, v34, *v28) & 1) != 0 || (objc_msgSend_isEqualToString_(v33, v35, *v30) & 1) != 0 || objc_msgSend_isEqualToString_(v33, v35, *MEMORY[0x277D80598]))
        {
          v37 = objc_msgSend_animationClass(v32, v35, v36);
          v40 = objc_msgSend_superclass(v37, v38, v39);
          v41 = [KNAnimationInfo alloc];
          v43 = objc_msgSend_initWithAnimationClass_(v41, v42, v40);
          if (objc_msgSend_containsObject_(v22, v44, v43))
          {
            objc_msgSend_addObject_(v21, v45, v43);
          }
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v52, v56, 16);
    }

    while (v27);
  }

  v48 = objc_msgSend_mutableCopy(v22, v46, v47);
  objc_msgSend_minusSet_(v48, v49, v21);

  return v48;
}

+ (KNBuild)buildWithEffect:(id)effect animationType:(int64_t)type drawable:(id)drawable slide:(id)slide
{
  v60[2] = *MEMORY[0x277D85DE8];
  drawableCopy = drawable;
  slideCopy = slide;
  effectCopy = effect;
  IsEmphasisEffect = KNEffectIsEmphasisEffect();
  if (type != 4 || (IsEmphasisEffect & 1) != 0)
  {
    if (type)
    {
      goto LABEL_7;
    }

    v19 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[KNBuild buildWithEffect:animationType:drawable:slide:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v21, v15, v17, 180, 0, "expected inequality between %{public}s and %{public}s", "animationType", "KNAnimationTypeNone");
  }

  else
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[KNBuild buildWithEffect:animationType:drawable:slide:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 179, 0, "Non-emphasis action builds should not use this constructor.");
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
LABEL_7:
  v24 = [KNBuild alloc];
  v27 = objc_msgSend_slide(drawableCopy, v25, v26);
  v30 = objc_msgSend_context(drawableCopy, v28, v29);
  v32 = objc_msgSend_initWithSlide_effect_buildType_context_(v24, v31, v27, effectCopy, type, v30);

  objc_msgSend_setDrawable_(v32, v33, drawableCopy);
  v38 = objc_msgSend_slide(drawableCopy, v34, v35);
  if (v38)
  {
    isRightToLeft = objc_msgSend_isRightToLeft(drawableCopy, v36, v37);
  }

  else
  {
    isRightToLeft = objc_msgSend_documentIsRTL(slideCopy, v36, v37);
  }

  v40 = isRightToLeft;

  v41 = KNAnimationTypeAsString();
  v59[0] = *MEMORY[0x277D80178];
  v59[1] = @"WritingDirectionIsRTL";
  v60[0] = v41;
  v43 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v42, v40);
  v60[1] = v43;
  v45 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v44, v60, v59, 2);

  v48 = objc_msgSend_attributes(v32, v46, v47);
  v50 = objc_msgSend_attributesByAddingAttributesFromDictionary_(v48, v49, v45);
  objc_msgSend_setAttributes_(v32, v51, v50);

  v53 = objc_msgSend_deliveriesLocalized_(v32, v52, 0);
  v56 = objc_msgSend_firstObject(v53, v54, v55);
  objc_msgSend_setDelivery_(v32, v57, v56);

  return v32;
}

- (KNBuild)initWithSlide:(id)slide effect:(id)effect buildType:(int64_t)type context:(id)context
{
  slideCopy = slide;
  effectCopy = effect;
  v29.receiver = self;
  v29.super_class = KNBuild;
  v12 = [(KNBuild *)&v29 initWithContext:context];
  if (v12)
  {
    if ((KNAnimationTypeIsBuildType() & 1) == 0)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[KNBuild initWithSlide:effect:buildType:context:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 205, 0, "Tried to initialize build with a non-build animation type.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    }

    objc_storeWeak(&v12->_slide, slideCopy);
    v23 = objc_msgSend_copy(*MEMORY[0x277D80118], v21, v22);
    delivery = v12->_delivery;
    v12->_delivery = v23;

    v26 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v25, effectCopy, type);
    attributes = v12->_attributes;
    v12->_attributes = v26;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [KNBuild alloc];
  v7 = objc_msgSend_slide(self, v5, v6);
  v10 = objc_msgSend_effect(self, v8, v9);
  v13 = objc_msgSend_animationType(self, v11, v12);
  v16 = objc_msgSend_context(self, v14, v15);
  v18 = objc_msgSend_initWithSlide_effect_buildType_context_(v4, v17, v7, v10, v13, v16);

  v21 = objc_msgSend_drawable(self, v19, v20);
  objc_msgSend_setDrawable_(v18, v22, v21);

  v25 = objc_msgSend_delivery(self, v23, v24);
  objc_msgSend_setDelivery_(v18, v26, v25);

  v29 = objc_msgSend_attributes(self, v27, v28);
  objc_msgSend_setAttributes_(v18, v30, v29);

  v18[22] = self->_chunkIDSeed;
  if (objc_msgSend_chunkCount(self, v31, v32) == 1)
  {
    v35 = objc_msgSend_chunks(self, v33, v34);
    v38 = objc_msgSend_firstObject(v35, v36, v37);

    v41 = objc_msgSend_eventTrigger(v38, v39, v40);
    v44 = objc_msgSend_attributes(self, v42, v43);
    v46 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v45, v41);
    v48 = objc_msgSend_attributesBySettingValue_forAttributeKey_(v44, v47, v46, @"KNBuildAttributesInitialChunkCreationEventTrigger");
    objc_msgSend_setAttributes_(v18, v49, v48);
  }

  return v18;
}

- (void)didInitFromSOS
{
  v37 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = KNBuild;
  [(KNBuild *)&v35 didInitFromSOS];
  if (self->_drawable)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[KNBuild didInitFromSOS]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 244, 0, "expected nil value for '%{public}s'", "_drawable");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  WeakRetained = objc_loadWeakRetained(&self->_slide);

  if (WeakRetained)
  {
    v14 = objc_msgSend_objectUUID(self, v12, v13);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = objc_loadWeakRetained(&self->_slide);
    v18 = objc_msgSend_buildChunks(v15, v16, v17);

    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v31, v36, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v32;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v26 = *(*(&v31 + 1) + 8 * i);
          v27 = objc_msgSend_i_buildId(v26, v21, v22);
          isEqual = objc_msgSend_isEqual_(v27, v28, v14);

          if (isEqual)
          {
            v30 = objc_msgSend_i_buildFromReference(v26, v21, v22);

            if (!v30)
            {
              objc_msgSend_i_setBuildPointer_forUnarchive_(v26, v21, self, 0);
            }
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v31, v36, 16);
      }

      while (v23);
    }
  }
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_objectUUID(self, v5, v6);
  v10 = objc_msgSend_UUIDString(v7, v8, v9);
  objc_msgSend_animationType(self, v11, v12);
  v13 = KNAnimationTypeAsString();
  v16 = objc_msgSend_drawable(self, v14, v15);
  v19 = objc_msgSend_effect(self, v17, v18);
  v22 = objc_msgSend_title(self, v20, v21);
  v25 = objc_msgSend_chunkCount(self, v23, v24);
  v27 = objc_msgSend_stringWithFormat_(v3, v26, @"<%@ %p %@ type=%@ drawable=%p effect=%@ title=%@ chunk count=%lu chunkIDseed=%d>", v4, self, v10, v13, v16, v19, v22, v25, self->_chunkIDSeed);

  return v27;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_objectUUID(self, v5, v6);
  v10 = objc_msgSend_UUIDString(v7, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v3, v11, @"<%@ %p %@>", v4, self, v10);

  return v12;
}

- (KNAbstractSlide)slide
{
  WeakRetained = objc_loadWeakRetained(&self->_slide);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_slide);
  }

  else
  {
    v7 = objc_msgSend_drawable(self, v4, v5);
    v6 = objc_msgSend_slide(v7, v8, v9);
  }

  return v6;
}

- (void)setDrawable:(id)drawable
{
  drawableCopy = drawable;
  if (!drawableCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNBuild setDrawable:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 297, 0, "invalid nil value for '%{public}s'", "drawable");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  objc_msgSend_willModify(self, v5, v6);
  v16 = drawableCopy;
  if (self->_drawable != drawableCopy)
  {
    objc_storeStrong(&self->_drawable, drawable);
    v16 = drawableCopy;
  }

  v18 = objc_msgSend_objectUUID(v16, v14, v15);
  if (!v18)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[KNBuild setDrawable:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 310, 0, "invalid nil value for '%{public}s'", "drawableId");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  if (self->_drawableId != v18)
  {
    objc_storeStrong(&self->_drawableId, v18);
  }
}

- (void)setAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (self->_attributes != attributesCopy)
  {
    v31 = attributesCopy;
    objc_msgSend_willModify(self, attributesCopy, v5);
    started = objc_msgSend_startOffset(self, v6, v7);
    v11 = objc_msgSend_endOffset(self, v9, v10);
    v14 = objc_msgSend_copy(v31, v12, v13);
    attributes = self->_attributes;
    self->_attributes = v14;

    v18 = objc_msgSend_startOffset(self, v16, v17);
    v21 = objc_msgSend_endOffset(self, v19, v20);
    attributesCopy = v31;
    if (started != v18 || v11 != v21)
    {
      v23 = objc_msgSend_slide(self, v31, v22);
      self->_cachedActiveChunkRangeIsValid = 0;
      objc_msgSend_i_invalidateActiveChunkCache(v23, v24, v25);
      v28 = objc_msgSend_slideNode(v23, v26, v27);
      objc_msgSend_invalidateBuildEventCountCaches(v28, v29, v30);

      attributesCopy = v31;
    }
  }
}

- (KNAnimationInfo)animationInfo
{
  v4 = objc_msgSend_instance(KNAnimationRegistry, a2, v2);
  v7 = objc_msgSend_effect(self, v5, v6);
  v10 = objc_msgSend_animationType(self, v8, v9);
  v12 = objc_msgSend_animationInfoForEffectIdentifier_animationType_(v4, v11, v7, v10);

  return v12;
}

- (KNAnimationPluginMenu)directionMenu
{
  v4 = objc_msgSend_animationInfo(self, a2, v2);
  v7 = objc_msgSend_animationClass(v4, v5, v6);

  v10 = objc_msgSend_animationPluginMenu(KNAnimationPluginMenu, v8, v9);
  v13 = objc_msgSend_animationType(self, v11, v12);
  objc_msgSend_fillLocalizedDirectionMenu_forType_(v7, v14, v10, v13);
  v17 = objc_msgSend_attributes(self, v15, v16);
  v19 = objc_msgSend_valueForAttributeKey_(v17, v18, @"WritingDirectionIsRTL");
  isEqual = objc_msgSend_isEqual_(v19, v20, MEMORY[0x277CBEC38]);

  if (isEqual)
  {
    v25 = objc_msgSend_defaultDirection(v10, v22, v23);
    v26 = v25 - 11;
    if (v25 - 11) <= 0xD && ((0x3C03u >> v26))
    {
      v25 = qword_275E79198[v26];
    }

    objc_msgSend_setDefaultDirection_(v10, v24, v25);
  }

  return v10;
}

- (unint64_t)directionType
{
  v3 = objc_msgSend_animationInfo(self, a2, v2);
  v6 = objc_msgSend_animationClass(v3, v4, v5);

  return objc_msgSend_directionType(v6, v7, v8);
}

- (NSString)localizedEffect
{
  v4 = objc_msgSend_animationInfo(self, a2, v2);
  v7 = objc_msgSend_animationType(self, v5, v6);
  v9 = objc_msgSend_localizedNameForType_(v4, v8, v7);

  return v9;
}

- (NSString)animationFilter
{
  v3 = objc_msgSend_animationInfo(self, a2, v2);
  v6 = objc_msgSend_animationFilter(v3, v4, v5);

  return v6;
}

- (NSArray)chunks
{
  v33 = *MEMORY[0x277D85DE8];
  cachedChunks = self->_cachedChunks;
  if (!cachedChunks)
  {
    v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = objc_msgSend_slide(self, v6, v7, 0);
    v11 = objc_msgSend_buildChunks(v8, v9, v10);

    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v28, v32, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = objc_msgSend_build(v19, v14, v15);

          if (v20 == self)
          {
            objc_msgSend_addObject_(v5, v14, v19);
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v28, v32, 16);
      }

      while (v16);
    }

    if (objc_msgSend_count(v5, v21, v22))
    {
      v23 = objc_alloc(MEMORY[0x277CBEA60]);
      v25 = objc_msgSend_initWithArray_(v23, v24, v5);
      v26 = self->_cachedChunks;
      self->_cachedChunks = v25;
    }

    cachedChunks = self->_cachedChunks;
  }

  return cachedChunks;
}

- (id)p_chunkAtIndex:(unint64_t)index
{
  v4 = objc_msgSend_chunks(self, a2, index);
  v6 = objc_msgSend_tsu_rangeCheckedObjectAtIndex_(v4, v5, index);

  return v6;
}

- (unint64_t)firstChunkIndexOnSlide
{
  v3 = objc_msgSend_firstChunk(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_indexOnSlide(v3, v4, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)lastChunkIndexOnSlide
{
  v3 = objc_msgSend_chunks(self, a2, v2);
  v6 = objc_msgSend_lastObject(v3, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_indexOnSlide(v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)chunkCount
{
  v3 = objc_msgSend_chunks(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5);

  return v6;
}

- (unint64_t)expectedChunkCount
{
  v4 = objc_msgSend_supportsDelivery(self, a2, v2);
  isContentBuild = objc_msgSend_isContentBuild(self, v5, v6);
  if ((v4 & 1) == 0 && !isContentBuild)
  {
    return 1;
  }

  v11 = objc_msgSend_drawable(self, v8, v9);
  v14 = objc_msgSend_deliveryStyle(self, v12, v13);
  v17 = objc_msgSend_animationFilter(self, v15, v16);
  v19 = objc_msgSend_chunkCountForTextureDeliveryStyle_animationFilter_(v11, v18, v14, v17);

  return v19;
}

- (KNBuildChunk)firstChunk
{
  v3 = objc_msgSend_chunks(self, a2, v2);
  v6 = objc_msgSend_firstObject(v3, v4, v5);

  return v6;
}

- (id)chunkForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = objc_msgSend_objectUUID(self, v5, v6);
  v10 = objc_msgSend_buildUUID(identifierCopy, v8, v9);
  isEqual = objc_msgSend_isEqual_(v7, v11, v10);

  if ((isEqual & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[KNBuild chunkForIdentifier:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 471, 0, "Attempted to resolve a chunk from an identifier using the wrong build.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v21 = objc_msgSend_i_buildChunkForChunkIdentifier_(self, v13, identifierCopy);

  return v21;
}

- (id)deliveriesLocalized:(BOOL)localized
{
  localizedCopy = localized;
  v39[1] = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_drawable(self, a2, localized);
  if (!v7)
  {
    v18 = 0;
    v21 = objc_msgSend_count(0, v5, v6);
LABEL_8:
    if (v21)
    {
      goto LABEL_16;
    }

    if (localizedCopy)
    {
      goto LABEL_10;
    }

    v32 = *MEMORY[0x277D80118];
LABEL_14:
    v36 = v32;
    v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, &v36, 1);
    goto LABEL_15;
  }

  v8 = objc_msgSend_animationInfo(self, v5, v6);
  isDrift = objc_msgSend_isDrift(v8, v9, v10);

  if (!isDrift)
  {
    v23 = objc_msgSend_animationFilter(self, v12, v13);
    v18 = objc_msgSend_textureDeliveryStylesLocalized_animationFilter_(v7, v24, localizedCopy, v23);

    v21 = objc_msgSend_count(v18, v25, v26);
    goto LABEL_8;
  }

  if (!localizedCopy)
  {
    v32 = *MEMORY[0x277D80118];
    v38 = *MEMORY[0x277D80118];
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, &v38, 1);
    if (objc_msgSend_count(v18, v33, v34))
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v14 = sub_275DC204C();
  v16 = objc_msgSend_localizedStringForKey_value_table_(v14, v15, @"All at Once", &stru_2884D8E20, @"Keynote");
  v39[0] = v16;
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v39, 1);

  if (objc_msgSend_count(v18, v19, v20))
  {
    goto LABEL_16;
  }

LABEL_10:
  v27 = sub_275DC204C();
  v29 = objc_msgSend_localizedStringForKey_value_table_(v27, v28, @"All at Once", &stru_2884D8E20, @"Keynote");
  v37 = v29;
  v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, &v37, 1);

  v18 = v27;
LABEL_15:

  v18 = v31;
LABEL_16:

  return v18;
}

- (BOOL)downgradesDelivery
{
  selfCopy = self;
  v3 = objc_msgSend_deliveriesLocalized_(self, a2, 0);
  LOBYTE(selfCopy) = objc_msgSend_containsObject_(v3, v4, selfCopy->_delivery);

  return selfCopy ^ 1;
}

- (void)setDelivery:(id)delivery
{
  deliveryCopy = delivery;
  v7 = deliveryCopy;
  if (!deliveryCopy || !objc_msgSend_length(deliveryCopy, v5, v6))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNBuild setDelivery:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 514, 0, "Invalid parameter not satisfying: %{public}s", "delivery != nil && delivery.length > 0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (v7 && self->_delivery != v7 && objc_msgSend_length(v7, v5, v8))
  {
    objc_msgSend_willModify(self, v16, v17);
    obj = objc_msgSend_copy(v7, v18, v19);

    objc_storeStrong(&self->_delivery, obj);
    v23 = objc_msgSend_drawable(self, v20, v21);
    if (v23 && objc_msgSend_p_isDeliveryLocalized_forNonNilDrawable_(self, v22, obj, v23))
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[KNBuild setDelivery:]");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 525, 0, "Trying to set a build's delivery with a _localized_ string. Use the non-localized variant.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
    }

    v32 = obj;
  }

  else
  {
    v32 = v7;
  }
}

- (BOOL)p_isDeliveryLocalized:(id)localized forNonNilDrawable:(id)drawable
{
  localizedCopy = localized;
  drawableCopy = drawable;
  if (drawableCopy)
  {
    if (localizedCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNBuild p_isDeliveryLocalized:forNonNilDrawable:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 533, 0, "Invalid parameter not satisfying: %{public}s", "drawable != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
    if (localizedCopy)
    {
      goto LABEL_3;
    }
  }

  v26 = MEMORY[0x277D81150];
  v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNBuild p_isDeliveryLocalized:forNonNilDrawable:]");
  v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 534, 0, "Invalid parameter not satisfying: %{public}s", "delivery != nil");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
LABEL_3:
  v10 = objc_msgSend_animationFilter(self, v7, v8);
  v12 = objc_msgSend_textureDeliveryStylesLocalized_animationFilter_(drawableCopy, v11, 0, v10);
  v15 = 0;
  if ((objc_msgSend_containsObject_(v12, v13, localizedCopy) & 1) == 0)
  {
    v16 = objc_msgSend_textureDeliveryStylesLocalized_animationFilter_(drawableCopy, v14, 1, v10);
    v15 = objc_msgSend_containsObject_(v16, v17, localizedCopy);
  }

  return v15;
}

- (NSString)delivery
{
  if (objc_msgSend_downgradesDelivery(self, a2, v2))
  {
    v5 = objc_msgSend_deliveriesLocalized_(self, v4, 0);
    if (!objc_msgSend_count(v5, v6, v7))
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[KNBuild delivery]");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 556, 0, "Build doesn't have any deliveries.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    }

    v17 = objc_msgSend_firstObject(v5, v8, v9);
  }

  else
  {
    v17 = self->_delivery;
  }

  return v17;
}

- (unint64_t)deliveryStyle
{
  v4 = objc_msgSend_drawable(self, a2, v2);
  v7 = objc_msgSend_delivery(self, v5, v6);
  v9 = objc_msgSend_textureDeliveryStyleFromDeliveryString_(v4, v8, v7);

  return v9;
}

- (unint64_t)startOffset
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNBuildAttributesStartOffset");
  v5 = objc_msgSend_unsignedIntegerValue(v2, v3, v4);

  return v5;
}

- (unint64_t)endOffset
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNBuildAttributesEndOffset");
  v5 = objc_msgSend_unsignedIntegerValue(v2, v3, v4);

  return v5;
}

- (_NSRange)activeChunkRange
{
  p_cachedActiveChunkRange = &self->_cachedActiveChunkRange;
  if (self->_cachedActiveChunkRangeIsValid)
  {
    location = p_cachedActiveChunkRange->location;
    length = p_cachedActiveChunkRange->length;
  }

  else
  {
    location = objc_msgSend_p_calculateActiveChunkRange(self, a2, v2);
    p_cachedActiveChunkRange->location = location;
    p_cachedActiveChunkRange->length = length;
    self->_cachedActiveChunkRangeIsValid = 1;
  }

  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)p_calculateActiveChunkRange
{
  started = objc_msgSend_startOffset(self, a2, v2);
  v7 = objc_msgSend_endOffset(self, v5, v6);
  v9 = objc_msgSend_endChunkIndexFromEndOffset_(self, v8, v7);
  v10 = v9 - started;
  v11 = v9 == 0x7FFFFFFFFFFFFFFFLL;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = started;
  }

  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10 + 1;
  }

  result.length = v13;
  result.location = v12;
  return result;
}

- (unint64_t)endChunkIndexFromEndOffset:(unint64_t)offset
{
  v4 = objc_msgSend_chunkCount(self, a2, offset);
  if (v4 <= offset)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v4 + ~offset;
  }
}

- (unint64_t)lastActiveChunkIndexInBuild
{
  v4 = objc_msgSend_chunkCount(self, a2, v2);
  active = objc_msgSend_activeChunkRange(self, v5, v6);
  v9 = active + v8;
  if (!v8)
  {
    v9 = v4;
  }

  return v9 - 1;
}

- (id)p_chunkTitleByTruncatingTitle:(id)title toLength:(unint64_t)length
{
  titleCopy = title;
  v8 = objc_msgSend_length(titleCopy, v6, v7);
  v9 = titleCopy;
  v11 = v9;
  v12 = v9;
  if (v8)
  {
    if (v8 >= length)
    {
      objc_msgSend_substringWithRange_(v9, v10, 0, length);
    }

    else
    {
      objc_msgSend_substringWithRange_(v9, v10, 0, v8);
    }
    v12 = ;
  }

  return v12;
}

- (NSString)title
{
  v5 = objc_msgSend_drawable(self, a2, v2);
  if (v5)
  {
    v6 = objc_msgSend_p_chunkAtIndex_(self, v4, 0);
    v9 = objc_msgSend_deliveryStyle(self, v7, v8);
    v12 = objc_msgSend_animationFilter(self, v10, v11);
    v15 = objc_msgSend_indexInBuild(v6, v13, v14);
    v17 = objc_msgSend_kn_displayableBuildOrderNameForTextureDeliveryStyle_animationFilter_chunkIndex_(v5, v16, v9, v12, v15);

    v19 = objc_msgSend_p_chunkTitleByTruncatingTitle_toLength_(self, v18, v17, 100);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)isOnSlide
{
  selfCopy = self;
  v4 = objc_msgSend_slide(self, a2, v2);
  v7 = objc_msgSend_builds(v4, v5, v6);
  LOBYTE(selfCopy) = objc_msgSend_containsObject_(v7, v8, selfCopy);

  return selfCopy;
}

- (BOOL)isComplementOfBuild:(id)build
{
  v4 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], a2, build);
  LOBYTE(self) = objc_msgSend_p_hasComplementInBuilds_(self, v5, v4);

  return self;
}

- (BOOL)p_hasComplementInBuilds:(id)builds
{
  v31 = *MEMORY[0x277D85DE8];
  buildsCopy = builds;
  if (objc_msgSend_isActionBuild(self, v5, v6))
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_msgSend_drawable(self, v7, v8);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = buildsCopy;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v26, v30, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v27;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          if (v19 != self)
          {
            v20 = objc_msgSend_drawable(*(*(&v26 + 1) + 8 * i), v14, v15, v26);
            v23 = v20;
            if (v20 == v10)
            {
              isActionBuild = objc_msgSend_isActionBuild(v19, v21, v22);

              if ((isActionBuild & 1) == 0)
              {
                v9 = 1;
                goto LABEL_16;
              }
            }

            else
            {
            }
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v26, v30, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_16:
  }

  return v9;
}

- (BOOL)hasComplement
{
  selfCopy = self;
  v4 = objc_msgSend_slide(self, a2, v2);
  v7 = objc_msgSend_builds(v4, v5, v6);
  LOBYTE(selfCopy) = objc_msgSend_p_hasComplementInBuilds_(selfCopy, v8, v7);

  return selfCopy;
}

- (BOOL)isActionMotionBuild
{
  v3 = objc_msgSend_effect(self, a2, v2);
  isEqualToString = objc_msgSend_isEqualToString_(v3, v4, *MEMORY[0x277D800C8]);

  return isEqualToString;
}

- (BOOL)isEmphasisBuild
{
  v3 = objc_msgSend_effect(self, a2, v2);
  IsEmphasisEffect = KNEffectIsEmphasisEffect();

  return IsEmphasisEffect;
}

- (BOOL)supportsDuration
{
  v4 = objc_msgSend_effect(self, a2, v2);
  if (objc_msgSend_isEqualToString_(v4, v5, *MEMORY[0x277D80138]) & 1) != 0 || (objc_msgSend_isEqualToString_(v4, v6, *MEMORY[0x277D80158]) & 1) != 0 || (objc_msgSend_isEqualToString_(v4, v7, *MEMORY[0x277D80148]) & 1) != 0 || (objc_msgSend_isEqualToString_(v4, v8, *MEMORY[0x277D80170]))
  {
    v11 = 0;
  }

  else
  {
    v13 = objc_msgSend_animationName(KNGalleryAppear, v9, v10);
    if (objc_msgSend_isEqualToString_(v4, v14, v13))
    {
      v11 = 0;
    }

    else if (objc_msgSend_isEqualToString_(v4, v15, *MEMORY[0x277D80140]))
    {
      v11 = objc_msgSend_customTextDelivery(self, v16, v17) != 1;
    }

    else
    {
      v11 = 1;
    }
  }

  return v11;
}

- (BOOL)supportsBounce
{
  v4 = objc_msgSend_effect(self, a2, v2);
  v7 = objc_msgSend_animationType(self, v5, v6);
  v9 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v8, v4, v7);

  v11 = objc_msgSend_containsAttributeForKey_(v9, v10, @"KNBuildCustomAttributesBounce");
  return v11;
}

- (BOOL)supportsAlignToPath
{
  v3 = objc_msgSend_animationInfo(self, a2, v2);
  v5 = objc_msgSend_supportsCustomAttributeKey_(v3, v4, @"KNBuildCustomAttributesAlignToPath");

  return v5;
}

- (BOOL)supportsAcceleration
{
  v3 = *MEMORY[0x277D800E8];
  v4 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, *MEMORY[0x277D800E8]);
  v7 = objc_msgSend_integerValue(v4, v5, v6);

  isCustomEffectTimingCurveEditingEnabled = objc_msgSend_isCustomEffectTimingCurveEditingEnabled(KNAnimationUtils, v8, v9);
  v13 = objc_msgSend_animationInfo(self, v11, v12);
  v15 = objc_msgSend_customAttributesForAttributeKey_(v13, v14, @"KNAnimationAttributesCustomEffectTimingCurve1");

  v18 = objc_msgSend_effect(self, v16, v17);
  v21 = objc_msgSend_animationType(self, v19, v20);
  v23 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v22, v18, v21);

  if (v15 && (v7 == 4) | isCustomEffectTimingCurveEditingEnabled & 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = objc_msgSend_containsAttributeForKey_(v23, v24, v3);
  }

  return v25;
}

- (BOOL)supportsIncludeEndpoints
{
  v4 = objc_msgSend_effect(self, a2, v2);
  v7 = objc_msgSend_animationType(self, v5, v6);
  v9 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v8, v4, v7);

  v11 = objc_msgSend_containsAttributeForKey_(v9, v10, @"KNBuildCustomAttributesIncludeEndpoints");
  return v11;
}

- (BOOL)supportsShine
{
  v4 = objc_msgSend_effect(self, a2, v2);
  v7 = objc_msgSend_animationType(self, v5, v6);
  v9 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v8, v4, v7);

  v11 = objc_msgSend_containsAttributeForKey_(v9, v10, @"KNBuildCustomAttributesShine");
  return v11;
}

- (BOOL)supportsScaleAmount
{
  v4 = objc_msgSend_effect(self, a2, v2);
  v7 = objc_msgSend_animationType(self, v5, v6);
  v9 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v8, v4, v7);

  v11 = objc_msgSend_containsAttributeForKey_(v9, v10, @"KNBuildCustomAttributesScaleAmount");
  return v11;
}

- (BOOL)supportsCustomScale
{
  v4 = objc_msgSend_effect(self, a2, v2);
  v7 = objc_msgSend_animationType(self, v5, v6);
  v9 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v8, v4, v7);

  v11 = objc_msgSend_containsAttributeForKey_(v9, v10, @"KNActionBuildCustomAttributesScale");
  return v11;
}

- (BOOL)supportsOpacity
{
  v4 = objc_msgSend_effect(self, a2, v2);
  v7 = objc_msgSend_animationType(self, v5, v6);
  v9 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v8, v4, v7);

  v11 = objc_msgSend_containsAttributeForKey_(v9, v10, *MEMORY[0x277D800F0]);
  return v11;
}

- (BOOL)supportsActionScale
{
  v4 = objc_msgSend_effect(self, a2, v2);
  v7 = objc_msgSend_animationType(self, v5, v6);
  v9 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v8, v4, v7);

  v11 = objc_msgSend_containsAttributeForKey_(v9, v10, *MEMORY[0x277D80110]);
  return v11;
}

- (BOOL)supportsTravelDistance
{
  v4 = objc_msgSend_effect(self, a2, v2);
  v7 = objc_msgSend_animationType(self, v5, v6);
  v9 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v8, v4, v7);

  v11 = objc_msgSend_containsAttributeForKey_(v9, v10, @"KNBuildCustomAttributesTravelDistance");
  return v11;
}

- (BOOL)supportsActionRotationAngle
{
  v4 = objc_msgSend_effect(self, a2, v2);
  v7 = objc_msgSend_animationType(self, v5, v6);
  v9 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v8, v4, v7);

  v11 = objc_msgSend_containsAttributeForKey_(v9, v10, *MEMORY[0x277D80100]);
  return v11;
}

- (BOOL)supportsActionRotationDirection
{
  v4 = objc_msgSend_effect(self, a2, v2);
  v7 = objc_msgSend_animationType(self, v5, v6);
  v9 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v8, v4, v7);

  v11 = objc_msgSend_containsAttributeForKey_(v9, v10, *MEMORY[0x277D80108]);
  return v11;
}

- (BOOL)supports3DChartRotationAngle
{
  v3 = objc_msgSend_effect(self, a2, v2);
  if (objc_msgSend_isEqualToString_(v3, v4, @"apple:3d-crane") & 1) != 0 || (objc_msgSend_isEqualToString_(v3, v5, @"apple:3d-rotate"))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v3, v6, @"apple:3d-rotatinggrow");
  }

  return isEqualToString;
}

- (BOOL)supportsJiggleIntensity
{
  v4 = objc_msgSend_effect(self, a2, v2);
  v7 = objc_msgSend_animationType(self, v5, v6);
  v9 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v8, v4, v7);

  v11 = objc_msgSend_containsAttributeForKey_(v9, v10, @"KNActionBuildCustomAttributesJiggleIntensity");
  return v11;
}

- (BOOL)supportsCursor
{
  v4 = objc_msgSend_effect(self, a2, v2);
  v7 = objc_msgSend_animationType(self, v5, v6);
  v9 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v8, v4, v7);

  v11 = objc_msgSend_containsAttributeForKey_(v9, v10, @"KNBuildCustomAttributesCursor");
  return v11;
}

- (BOOL)supportsCustomRepeats
{
  v4 = objc_msgSend_effect(self, a2, v2);
  v7 = objc_msgSend_animationType(self, v5, v6);
  v9 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v8, v4, v7);

  v11 = objc_msgSend_containsAttributeForKey_(v9, v10, @"KNActionBuildCustomAttributesRepeatCount");
  return v11;
}

- (BOOL)supportsDecay
{
  v4 = objc_msgSend_effect(self, a2, v2);
  v7 = objc_msgSend_animationType(self, v5, v6);
  v9 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v8, v4, v7);

  v11 = objc_msgSend_containsAttributeForKey_(v9, v10, @"KNActionBuildCustomAttributesDecay");
  return v11;
}

- (BOOL)supportsRandomNumberSeedInspection
{
  isRandomNumberSeedInspectionEnabled = objc_msgSend_isRandomNumberSeedInspectionEnabled(KNAnimationUtils, a2, v2);
  if (isRandomNumberSeedInspectionEnabled)
  {
    v7 = objc_msgSend_effect(self, v5, v6);
    v10 = objc_msgSend_animationType(self, v8, v9);
    v12 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v11, v7, v10);

    v14 = objc_msgSend_containsAttributeForKey_(v12, v13, @"KNBuildCustomAttributesRandomNumberSeed");
    LOBYTE(isRandomNumberSeedInspectionEnabled) = v14;
  }

  return isRandomNumberSeedInspectionEnabled;
}

- (BOOL)supportsCustomEffectTimingCurve1
{
  v3 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], a2, &unk_2884F3AE0, 0);
  LOBYTE(self) = objc_msgSend_p_supportsCustomEffectTimingCurveForLayoutStyles_(self, v4, v3);

  return self;
}

- (BOOL)supportsCustomEffectTimingCurve2
{
  v3 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], a2, &unk_2884F3AF8, &unk_2884F3B10, 0);
  LOBYTE(self) = objc_msgSend_p_supportsCustomEffectTimingCurveForLayoutStyles_(self, v4, v3);

  return self;
}

- (BOOL)supportsCustomEffectTimingCurve3
{
  v3 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], a2, &unk_2884F3B28, 0);
  LOBYTE(self) = objc_msgSend_p_supportsCustomEffectTimingCurveForLayoutStyles_(self, v4, v3);

  return self;
}

- (BOOL)supportsCustomDetail
{
  v4 = objc_msgSend_effect(self, a2, v2);
  v7 = objc_msgSend_animationType(self, v5, v6);
  v9 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v8, v4, v7);

  v11 = objc_msgSend_containsAttributeForKey_(v9, v10, @"KNBuildCustomAttributesDetail");
  return v11;
}

- (BOOL)supportsCustomCursor
{
  v4 = objc_msgSend_effect(self, a2, v2);
  v7 = objc_msgSend_animationType(self, v5, v6);
  v9 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v8, v4, v7);

  v11 = objc_msgSend_containsAttributeForKey_(v9, v10, @"KNBuildCustomAttributesCursor");
  return v11;
}

- (BOOL)p_supportsCustomEffectTimingCurveForLayoutStyles:(id)styles
{
  stylesCopy = styles;
  isCustomEffectTimingCurveEditingEnabled = objc_msgSend_isCustomEffectTimingCurveEditingEnabled(KNAnimationUtils, v5, v6);
  v10 = objc_msgSend_animationInfo(self, v8, v9);
  v13 = objc_msgSend_attributes(self, v11, v12);
  v16 = objc_msgSend_attributes(v13, v14, v15);
  v18 = objc_msgSend_customEffectTimingCurveDisplayParametersForAttributes_layoutStyleOnly_(v10, v17, v16, 1);

  v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, &unk_2884F3B40);
  LOBYTE(v10) = objc_msgSend_containsObject_(stylesCopy, v21, v20);

  return isCustomEffectTimingCurveEditingEnabled & v10;
}

- (BOOL)supportsDelivery
{
  if (objc_msgSend_isActionBuild(self, a2, v2))
  {
    return 0;
  }

  v6 = objc_msgSend_deliveriesLocalized_(self, v4, 0);
  v5 = objc_msgSend_count(v6, v7, v8) > 1;

  return v5;
}

- (BOOL)supportsCustomTextDelivery
{
  v4 = objc_msgSend_effect(self, a2, v2);
  v7 = objc_msgSend_animationType(self, v5, v6);
  v9 = objc_msgSend_defaultAttributesForEffect_buildType_(KNBuildAttributes, v8, v4, v7);

  v11 = objc_msgSend_containsAttributeForKey_(v9, v10, @"KNBuildCustomAttributesTextDelivery");
  return v11;
}

- (int64_t)animationType
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, *MEMORY[0x277D80178]);
  v3 = KNAnimationTypeFromString();

  return v3;
}

- (double)durationDefaultForInitialChunk
{
  v3 = objc_msgSend_attributes(self, a2, v2);
  v5 = objc_msgSend_valueForAttributeKey_(v3, v4, @"KNBuildAttributesDefaultDuration");

  if (v5)
  {
    objc_msgSend_doubleValue(v5, v6, v7);
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  return v9;
}

- (unint64_t)direction
{
  v4 = objc_msgSend_animationType(self, a2, v2);
  if (!objc_msgSend_supportsDirection(self, v5, v6))
  {
    return 0;
  }

  v9 = objc_msgSend_animationPluginMenu(KNAnimationPluginMenu, v7, v8);
  v12 = objc_msgSend_animationInfo(self, v10, v11);
  v15 = objc_msgSend_animationClass(v12, v13, v14);

  objc_msgSend_fillLocalizedDirectionMenu_forType_(v15, v16, v9, v4);
  v19 = objc_msgSend_defaultDirection(v9, v17, v18);
  v22 = objc_msgSend_attributes(self->_attributes, v20, v21);
  v24 = objc_msgSend_objectForKey_(v22, v23, @"KNBuildAttributesDirection");

  if (!v24 || (v27 = objc_msgSend_intValue(v24, v25, v26), (objc_msgSend_containsDirection_(v9, v28, v27) & 1) == 0))
  {
    v29 = objc_msgSend_attributes(self, v25, v26);
    v31 = objc_msgSend_valueForAttributeKey_(v29, v30, @"WritingDirectionIsRTL");
    isEqual = objc_msgSend_isEqual_(v31, v32, MEMORY[0x277CBEC38]);

    if (isEqual && (v34 = v19 - 11, (v19 - 11) <= 0xD))
    {
      v27 = v19;
      if ((0x3C03u >> v34))
      {
        v27 = qword_275E79198[v34];
      }
    }

    else
    {
      v27 = v19;
    }
  }

  return v27;
}

- (unint64_t)actionAcceleration
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, *MEMORY[0x277D800E8]);
  v5 = objc_msgSend_unsignedIntegerValue(v2, v3, v4);

  return v5;
}

- (double)actionScale
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, *MEMORY[0x277D80110]);
  objc_msgSend_tsu_CGFloatValue(v2, v3, v4);
  v6 = v5;

  return v6;
}

- (double)actionRotationAngle
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, *MEMORY[0x277D80100]);
  objc_msgSend_tsu_CGFloatValue(v2, v3, v4);
  v6 = v5;

  return v6;
}

- (unint64_t)actionRotationDirection
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, *MEMORY[0x277D80108]);
  v5 = objc_msgSend_unsignedIntegerValue(v2, v3, v4);

  return v5;
}

- (double)actionOpacity
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, *MEMORY[0x277D800F0]);
  objc_msgSend_tsu_CGFloatValue(v2, v3, v4);
  v6 = v5;

  return v6;
}

- (float)custom3DChartRotation
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuild custom3DChartRotation]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuild.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 1002, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[KNBuild custom3DChartRotation]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (int64_t)customTextDelivery
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNBuildCustomAttributesTextDelivery");
  v5 = objc_msgSend_integerValue(v2, v3, v4);

  return v5;
}

- (unint64_t)customDeliveryOption
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNBuildCustomAttributesDeliveryOption");
  v5 = objc_msgSend_integerValue(v2, v3, v4);

  return v5;
}

- (int64_t)customAccelerationOption
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, *MEMORY[0x277D800E8]);
  v5 = objc_msgSend_integerValue(v2, v3, v4);

  return v5;
}

- (BOOL)customBounce
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNBuildCustomAttributesBounce");
  v5 = objc_msgSend_BOOLValue(v2, v3, v4);

  return v5;
}

- (BOOL)customAlignToPath
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNBuildCustomAttributesAlignToPath");
  v5 = objc_msgSend_BOOLValue(v2, v3, v4);

  return v5;
}

- (BOOL)customMotionBlur
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNBuildCustomAttributesMotionBlur");
  v5 = objc_msgSend_BOOLValue(v2, v3, v4);

  return v5;
}

- (BOOL)customIncludeEndpoints
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNBuildCustomAttributesIncludeEndpoints");
  v5 = objc_msgSend_BOOLValue(v2, v3, v4);

  return v5;
}

- (BOOL)customShine
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNBuildCustomAttributesShine");
  v5 = objc_msgSend_BOOLValue(v2, v3, v4);

  return v5;
}

- (double)customScaleAmount
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNBuildCustomAttributesScaleAmount");
  objc_msgSend_tsu_CGFloatValue(v2, v3, v4);
  v6 = v5;

  return v6;
}

- (double)customTravelDistance
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNBuildCustomAttributesTravelDistance");
  objc_msgSend_tsu_CGFloatValue(v2, v3, v4);
  v6 = v5;

  return v6;
}

- (unint64_t)customRepeatCount
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNActionBuildCustomAttributesRepeatCount");
  v5 = objc_msgSend_integerValue(v2, v3, v4);

  return v5;
}

- (BOOL)customDecay
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNActionBuildCustomAttributesDecay");
  v5 = objc_msgSend_BOOLValue(v2, v3, v4);

  return v5;
}

- (unint64_t)customScale
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNActionBuildCustomAttributesScale");
  v5 = objc_msgSend_integerValue(v2, v3, v4);

  return v5;
}

- (unint64_t)customJiggleIntensity
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNActionBuildCustomAttributesJiggleIntensity");
  v5 = objc_msgSend_integerValue(v2, v3, v4);

  return v5;
}

- (int64_t)randomNumberSeed
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNBuildCustomAttributesRandomNumberSeed");
  v5 = objc_msgSend_unsignedIntValue(v2, v3, v4);

  return v5;
}

- (double)customDetail
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNBuildCustomAttributesDetail");
  objc_msgSend_tsu_CGFloatValue(v2, v3, v4);
  v6 = v5;

  return v6;
}

- (BOOL)customCursor
{
  v2 = objc_msgSend_valueForAttributeKey_(self->_attributes, a2, @"KNBuildCustomAttributesCursor");
  v5 = objc_msgSend_BOOLValue(v2, v3, v4);

  return v5;
}

- (TSDBezierPathSource)customEffectTimingCurve1
{
  objc_opt_class();
  v4 = objc_msgSend_valueForAttributeKey_(self->_attributes, v3, @"KNAnimationAttributesCustomEffectTimingCurve1");
  v5 = TSUCheckedDynamicCast();

  return v5;
}

- (TSDBezierPathSource)customEffectTimingCurve2
{
  objc_opt_class();
  v4 = objc_msgSend_valueForAttributeKey_(self->_attributes, v3, @"KNAnimationAttributesCustomEffectTimingCurve2");
  v5 = TSUCheckedDynamicCast();

  return v5;
}

- (TSDBezierPathSource)customEffectTimingCurve3
{
  objc_opt_class();
  v4 = objc_msgSend_valueForAttributeKey_(self->_attributes, v3, @"KNAnimationAttributesCustomEffectTimingCurve3");
  v5 = TSUCheckedDynamicCast();

  return v5;
}

- (NSString)customEffectTimingCurveThemeName1
{
  objc_opt_class();
  v4 = objc_msgSend_valueForAttributeKey_(self->_attributes, v3, @"KNAnimationAttributesCustomEffectTimingCurveThemeName1");
  v5 = TSUCheckedDynamicCast();

  return v5;
}

- (NSString)customEffectTimingCurveThemeName2
{
  objc_opt_class();
  v4 = objc_msgSend_valueForAttributeKey_(self->_attributes, v3, @"KNAnimationAttributesCustomEffectTimingCurveThemeName2");
  v5 = TSUCheckedDynamicCast();

  return v5;
}

- (NSString)customEffectTimingCurveThemeName3
{
  objc_opt_class();
  v4 = objc_msgSend_valueForAttributeKey_(self->_attributes, v3, @"KNAnimationAttributesCustomEffectTimingCurveThemeName3");
  v5 = TSUCheckedDynamicCast();

  return v5;
}

- (NSSet)inspectableAttributes
{
  v4 = objc_msgSend_animationInfo(self, a2, v2);
  v7 = objc_msgSend_defaultAttributes(v4, v5, v6);

  v8 = MEMORY[0x277CBEB58];
  v11 = objc_msgSend_allKeys(v7, v9, v10);
  v13 = objc_msgSend_setWithArray_(v8, v12, v11);

  v16 = objc_msgSend_supportsDirection(self, v14, v15);
  objc_msgSend_kn_addOrRemoveObject_withCondition_(v13, v17, @"KNBuildAttributesDirection", v16);
  v20 = objc_msgSend_supportsDelivery(self, v18, v19);
  objc_msgSend_kn_addOrRemoveObject_withCondition_(v13, v21, @"KNBuildDeliveryProperty", v20);
  v24 = objc_msgSend_supportsDuration(self, v22, v23);
  if (objc_msgSend_containsObject_(v13, v25, @"KNBuildAttributesDefaultDuration"))
  {
    objc_msgSend_removeObject_(v13, v26, @"KNBuildAttributesDefaultDuration");
    objc_msgSend_addObject_(v13, v27, @"KNBuildChunkDurationProperty");
  }

  objc_msgSend_kn_addOrRemoveObject_withCondition_(v13, v26, @"KNBuildChunkDurationProperty", v24);
  v30 = objc_msgSend_deliveryStyle(self, v28, v29) != 0;
  objc_msgSend_kn_addOrRemoveObject_withCondition_(v13, v31, @"KNBuildAttributesStartOffset", v30);
  objc_msgSend_kn_addOrRemoveObject_withCondition_(v13, v32, @"KNBuildAttributesEndOffset", v30);
  isActionMotionBuild = objc_msgSend_isActionMotionBuild(self, v33, v34);
  objc_msgSend_kn_addOrRemoveObject_withCondition_(v13, v36, *MEMORY[0x277D800F8], isActionMotionBuild);
  v39 = objc_msgSend_supportsAlignToPath(self, v37, v38);
  objc_msgSend_kn_addOrRemoveObject_withCondition_(v13, v40, @"KNBuildCustomAttributesAlignToPath", v39);
  v42 = objc_msgSend_p_supportsCustomTextDeliveryOptionsForAttributes_(self, v41, v13);
  objc_msgSend_kn_addOrRemoveObject_withCondition_(v13, v43, @"KNBuildCustomAttributesDeliveryOption", v42);
  v46 = objc_msgSend_supportsAcceleration(self, v44, v45);
  objc_msgSend_kn_addOrRemoveObject_withCondition_(v13, v47, *MEMORY[0x277D800E8], v46);
  v50 = objc_msgSend_supportsRandomNumberSeedInspection(self, v48, v49);
  objc_msgSend_kn_addOrRemoveObject_withCondition_(v13, v51, @"KNBuildCustomAttributesRandomNumberSeed", v50);
  v54 = objc_msgSend_supportsCustomEffectTimingCurve3(self, v52, v53);
  objc_msgSend_kn_addOrRemoveObject_withCondition_(v13, v55, @"KNAnimationAttributesCustomEffectTimingCurve3", v54);
  if (v54)
  {
    objc_msgSend_kn_addOrRemoveObject_withCondition_(v13, v56, @"KNAnimationAttributesCustomEffectTimingCurve2", 0);
LABEL_6:
    objc_msgSend_kn_addOrRemoveObject_withCondition_(v13, v58, @"KNAnimationAttributesCustomEffectTimingCurve1", 0);
    goto LABEL_8;
  }

  v59 = objc_msgSend_supportsCustomEffectTimingCurve2(self, v56, v57);
  objc_msgSend_kn_addOrRemoveObject_withCondition_(v13, v60, @"KNAnimationAttributesCustomEffectTimingCurve2", v59);
  if (v59)
  {
    goto LABEL_6;
  }

  v64 = objc_msgSend_supportsCustomEffectTimingCurve1(self, v58, v61);
  objc_msgSend_kn_addOrRemoveObject_withCondition_(v13, v65, @"KNAnimationAttributesCustomEffectTimingCurve1", v64);
LABEL_8:
  v66 = objc_msgSend_supportsCustomDetail(self, v62, v63);
  objc_msgSend_kn_addOrRemoveObject_withCondition_(v13, v67, @"KNBuildCustomAttributesDetail", v66);

  return v13;
}

- (BOOL)p_supportsCustomTextDeliveryOptionsForAttributes:(id)attributes
{
  attributesCopy = attributes;
  v9 = objc_msgSend_containsObject_(attributesCopy, v5, @"KNBuildCustomAttributesTextDelivery") && objc_msgSend_containsObject_(attributesCopy, v6, @"KNBuildCustomAttributesDeliveryOption") && objc_msgSend_customTextDelivery(self, v7, v8) > 1;

  return v9;
}

- (BOOL)canEditAnimations
{
  v3 = objc_msgSend_drawable(self, a2, v2);
  if (objc_msgSend_isLocked(v3, v4, v5))
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = objc_msgSend_parentInfo(v3, v6, v7);
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v8 = objc_msgSend_isInlineWithText(v3, v10, v11) ^ 1;
    }
  }

  return v8;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v8 = unarchiverCopy;
  if ((*(archive + 16) & 2) != 0)
  {
    v9 = *(archive + 4);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_275E517EC;
    v22[3] = &unk_27A699760;
    v22[4] = self;
    v10 = unarchiverCopy;
    v11 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v10, v12, v9, v11, 0, v22);
  }

  else if (KNBuildArchivingLogCat_init_token != -1)
  {
    sub_275E6112C();
  }

  v13 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v7, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
  delivery = self->_delivery;
  self->_delivery = v13;

  if (objc_msgSend_isEqualToString_(self->_delivery, v15, @"All At Once"))
  {
    objc_msgSend_willModifyForUpgrade(self, v16, v17);
    objc_storeStrong(&self->_delivery, *MEMORY[0x277D80118]);
  }

  v18 = [KNBuildAttributes alloc];
  if (*(archive + 5))
  {
    v20 = objc_msgSend_initFromBuildAttributesArchive_(v18, v19, *(archive + 5));
  }

  else
  {
    v20 = objc_msgSend_initFromBuildAttributesArchive_(v18, v19, &unk_2812EAC50);
  }

  attributes = self->_attributes;
  self->_attributes = v20;

  if ((*(archive + 16) & 0x10) != 0)
  {
    self->_chunkIDSeed = *(archive + 14);
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v9 = objc_msgSend_i_drawableForArchiving_(self, v7, 1);
  if (v9)
  {
    *(archive + 4) |= 2u;
    v10 = *(archive + 4);
    if (!v10)
    {
      v11 = *(archive + 1);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C8F050](v11);
      *(archive + 4) = v10;
    }

    objc_msgSend_setWeakReference_message_(archiverCopy, v8, v9, v10);
  }

  else if (KNBuildCobblestoneLogCat_init_token != -1)
  {
    sub_275E61154();
  }

  v14 = self->_delivery;
  if (!v14)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[KNBuild(PersistenceAdditions) saveToArchive:archiver:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 92, 0, "invalid nil value for '%{public}s'", "delivery");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  if (!objc_msgSend_length(v14, v12, v13))
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[KNBuild(PersistenceAdditions) saveToArchive:archiver:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 95, 0, "Archiving an empty delivery string.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    v14 = &stru_2884D8E20;
  }

  v30 = v14;
  v31 = v14;
  v34 = objc_msgSend_UTF8String(v30, v32, v33);
  sub_275E51DB8(archive, v34);
  *(archive + 4) |= 8u;
  *(archive + 6) = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_275E51ECC;
  v38[3] = &unk_27A697C88;
  v38[4] = self;
  archiveCopy = archive;
  v35 = archiverCopy;
  v39 = v35;
  objc_msgSend_pushScopeForField_message_usingBlock_(v35, v36, 4, archive, v38);
  chunkIDSeed = self->_chunkIDSeed;
  *(archive + 4) |= 0x10u;
  *(archive + 14) = chunkIDSeed;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNBuild(PersistenceAdditions) loadFromUnarchiver:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 113, 0, "KNBuild needs a separate method for subclass unarchiving");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v17 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v15 = objc_msgSend_messageWithDescriptor_(v17, v14, off_2812EA908[16]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v16, v15, v17);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275E52190, off_2812EA908[16]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

@end