@interface KNBuildChunk
+ (void)i_repairChunkToBuildReferencesFromUUIDsForChunks:(id)a3 builds:(id)a4 context:(id)a5;
+ (void)i_validateBuildReferencesForChunks:(id)a3;
- (BOOL)canEditAnimations;
- (BOOL)hasComplement;
- (BOOL)isActive;
- (BOOL)isAutomaticWithPreviousChunk;
- (BOOL)isAutomaticWithPreviousChunkOnSameDrawable;
- (BOOL)isComplementOfBuildChunk:(id)a3;
- (BOOL)isFirstInDeliveryGroup;
- (KNBuild)build;
- (KNBuildChunk)initWithBuild:(id)a3;
- (KNBuildChunk)initWithBuild:(id)a3 copyingAttributesFromChunk:(id)a4;
- (KNBuildChunk)initWithBuild:(id)a3 referent:(unint64_t)a4 copyingRemainingAttributesFromChunk:(id)a5;
- (KNBuildChunk)nextChunkOnSlide;
- (KNBuildChunk)previousActiveChunkWithReferentRelativeToEnd;
- (KNBuildChunk)previousChunkOnSlide;
- (KNSlide)slide;
- (NSArray)availableEventTriggers;
- (NSSet)inspectableAttributes;
- (NSString)description;
- (NSString)title;
- (id)copyWithZone:(_NSZone *)a3;
- (id)localizedNameForEventTrigger:(unint64_t)a3 includeLineBreaks:(BOOL)a4;
- (id)p_stringForReferent:(unint64_t)a3;
- (id)p_stringRepresentationWithNotAvailableForIndex:(unint64_t)a3;
- (unint64_t)activeIndexOnSlide;
- (unint64_t)deliveryGroupIndex;
- (unint64_t)indexInBuild;
- (unint64_t)indexOnSlide;
- (void)didInitFromSOS;
- (void)i_clearChunkIdentifier;
- (void)i_didLoadBuild:(id)a3;
- (void)i_invalidateCaches;
- (void)i_setBuildId:(id)a3;
- (void)i_setBuildPointer:(id)a3 forUnarchive:(BOOL)a4;
- (void)i_setChunkIdentifier:(id)a3;
- (void)i_updateChunkUUIDReferencesToBuild:(id)a3;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_setDelayFromBuildAttributes:(id)a3 withReferent:(unint64_t)a4 automatic:(BOOL)a5;
- (void)p_setDurationFromBuildAttributes:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setAutomatic:(BOOL)a3;
- (void)setDelay:(double)a3;
- (void)setDuration:(double)a3;
- (void)setReferent:(unint64_t)a3;
@end

@implementation KNBuildChunk

- (void)i_invalidateCaches
{
  self->_cachedIndexInBuild = 0x7FFFFFFFFFFFFFFFLL;
  self->_cachedIndexOnSlide = 0x7FFFFFFFFFFFFFFFLL;
  self->_cachedActiveIndexOnSlide = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)i_setBuildPointer:(id)a3 forUnarchive:(BOOL)a4
{
  v4 = a4;
  v13 = a3;
  v6 = objc_alloc(MEMORY[0x277D80868]);
  inited = objc_msgSend_initWeakReferenceWithObject_(v6, v7, v13);
  buildReference = self->_buildReference;
  if (!buildReference || (objc_msgSend_isEqualToLazyReference_(buildReference, v8, inited) & 1) == 0)
  {
    objc_msgSend_willModify(self, v8, v9);
    objc_storeStrong(&self->_buildReference, inited);
    if (v4)
    {
      objc_msgSend_i_didLoadBuild_(self, v12, v13);
    }
  }
}

+ (void)i_repairChunkToBuildReferencesFromUUIDsForChunks:(id)a3 builds:(id)a4 context:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v40 = a5;
  if (!v40)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "+[KNBuildChunk(Internal) i_repairChunkToBuildReferencesFromUUIDsForChunks:builds:context:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk-Internal.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 55, 0, "invalid nil value for '%{public}s'", "context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = v7;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v41, v45, 16);
  if (v19)
  {
    v22 = v19;
    v23 = 0;
    v24 = *v42;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v42 != v24)
        {
          objc_enumerationMutation(v17);
        }

        v26 = *(*(&v41 + 1) + 8 * i);
        v27 = objc_msgSend_i_buildFromReference(v26, v20, v21);

        if (!v27)
        {
          v30 = objc_msgSend_i_buildId(v26, v20, v21);
          if (!v30)
          {
            v31 = objc_msgSend_chunkIdentifier(v26, v28, v29);
            v30 = objc_msgSend_buildUUID(v31, v32, v33);
          }

          objc_opt_class();
          v35 = objc_msgSend_objectWithUUIDIfAvailable_(v40, v34, v30);
          v36 = TSUDynamicCast();

          if (v8 && !v36)
          {
            if (!v23)
            {
              v23 = objc_msgSend_UUIDToTSPObjectMapForTSPObjects_(KNBuildUtility, v37, v8);
            }

            objc_opt_class();
            v39 = objc_msgSend_objectForKeyedSubscript_(v23, v38, v30);
            v36 = TSUDynamicCast();
          }

          if (v36)
          {
            objc_msgSend_i_setBuildPointer_forUnarchive_(v26, v37, v36, 0);
          }
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v41, v45, 16);
    }

    while (v22);
  }

  else
  {
    v23 = 0;
  }
}

+ (void)i_validateBuildReferencesForChunks:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = a3;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v50, v54, 16);
  if (v4)
  {
    v7 = v4;
    v49 = *v51;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v50 + 1) + 8 * i);
        v10 = objc_msgSend_i_buildId(v9, v5, v6);
        v14 = objc_msgSend_i_buildFromReference(v9, v11, v12);
        if (v14)
        {
          if (v10)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v28 = MEMORY[0x277D81150];
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[KNBuildChunk(Internal) i_validateBuildReferencesForChunks:]");
          v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk-Internal.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 105, 0, "Chunk is missing back pointer to build. %@", v9);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
          if (v10)
          {
            goto LABEL_8;
          }
        }

        v35 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[KNBuildChunk(Internal) i_validateBuildReferencesForChunks:]");
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk-Internal.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 106, 0, "Chunk is missing UUID reference to build. %@", v9);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
LABEL_8:
        objc_opt_class();
        v17 = objc_msgSend_context(v9, v15, v16);
        v19 = objc_msgSend_objectWithUUIDIfAvailable_(v17, v18, v10);
        v20 = TSUDynamicCast();

        if (v20)
        {
          if (v20 == v14)
          {
            goto LABEL_17;
          }

          v23 = MEMORY[0x277D81150];
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "+[KNBuildChunk(Internal) i_validateBuildReferencesForChunks:]");
          v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk-Internal.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 115, 0, "Chunk's back pointer to build and UUID reference to build don't reference the same build.");
          goto LABEL_16;
        }

        if (v14 && objc_msgSend_tsp_isInDocument(v14, v21, v22))
        {
          v43 = MEMORY[0x277D81150];
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "+[KNBuildChunk(Internal) i_validateBuildReferencesForChunks:]");
          v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk-Internal.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v45, v24, v26, 112, 0, "Chunk has a valid build reference which is in the document, but cannot be looked at by UUID.");
LABEL_16:

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
        }

LABEL_17:
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v50, v54, 16);
    }

    while (v7);
  }
}

- (void)i_setBuildId:(id)a3
{
  v5 = a3;
  if (self->_buildId != v5)
  {
    v8 = v5;
    objc_msgSend_willModify(self, v6, v7);
    objc_storeStrong(&self->_buildId, a3);
    v5 = v8;
  }
}

- (void)i_setChunkIdentifier:(id)a3
{
  v14 = a3;
  if (v14 && self->_buildChunkIdentifier)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNBuildChunk(Internal) i_setChunkIdentifier:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk-Internal.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 164, 0, "An attempt was made to assign a chunk identifier, but the chunk already has one.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  else
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_buildChunkIdentifier, a3);
  }
}

- (void)i_clearChunkIdentifier
{
  objc_msgSend_willModify(self, a2, v2);
  buildChunkIdentifier = self->_buildChunkIdentifier;
  self->_buildChunkIdentifier = 0;
}

- (void)i_updateChunkUUIDReferencesToBuild:(id)a3
{
  v30 = a3;
  if (!v30)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNBuildChunk(Internal) i_updateChunkUUIDReferencesToBuild:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk-Internal.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 175, 0, "invalid nil value for '%{public}s'", "build");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12 = [KNBuildChunkIdentifier alloc];
  v15 = objc_msgSend_chunkIdentifier(self, v13, v14);
  v18 = objc_msgSend_chunkID(v15, v16, v17);
  v20 = objc_msgSend_initWithBuild_chunkID_(v12, v19, v30, v18);

  objc_msgSend_i_clearChunkIdentifier(self, v21, v22);
  objc_msgSend_i_setChunkIdentifier_(self, v23, v20);
  v26 = objc_msgSend_objectUUID(v30, v24, v25);
  objc_msgSend_i_setBuildId_(self, v27, v26);

  objc_msgSend_i_invalidateChunkCache(v30, v28, v29);
}

- (KNBuildChunk)initWithBuild:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_context(v4, v5, v6);
  v35.receiver = self;
  v35.super_class = KNBuildChunk;
  v8 = [(KNBuildChunk *)&v35 initWithContext:v7];

  if (v8)
  {
    if (v4)
    {
      objc_msgSend_i_setBuildPointer_forUnarchive_(v8, v9, v4, 0);
      v13 = objc_msgSend_objectUUID(v4, v10, v11);
      if (!v13)
      {
        v14 = MEMORY[0x277D81150];
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[KNBuildChunk initWithBuild:]");
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 78, 0, "invalid nil value for '%{public}s'", "buildId");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
      }

      buildId = v8->_buildId;
      v8->_buildId = v13;
    }

    else
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[KNBuildChunk initWithBuild:]");
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 81, 0, "Chunk initialized with nil build. %@", v8);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v29, v30);
    }

    objc_msgSend_i_invalidateCaches(v8, v22, v23);
    v8->_automatic = 0;
    v8->_referent = 0;
    v8->_delay = 0.0;
    objc_msgSend_durationDefaultForInitialChunk(v4, v31, v32);
    v8->_duration = v33;
  }

  return v8;
}

- (KNBuildChunk)initWithBuild:(id)a3 copyingAttributesFromChunk:(id)a4
{
  v6 = a4;
  v8 = objc_msgSend_initWithBuild_(self, v7, a3);
  v11 = v8;
  if (v6 && v8)
  {
    objc_msgSend_delay(v6, v9, v10);
    *(v11 + 80) = v12;
    objc_msgSend_duration(v6, v13, v14);
    *(v11 + 88) = v15;
    *(v11 + 104) = objc_msgSend_referent(v6, v16, v17);
    *(v11 + 96) = objc_msgSend_isAutomatic(v6, v18, v19);
  }

  return v11;
}

- (KNBuildChunk)initWithBuild:(id)a3 referent:(unint64_t)a4 copyingRemainingAttributesFromChunk:(id)a5
{
  result = objc_msgSend_initWithBuild_copyingAttributesFromChunk_(self, a2, a3, a5);
  if (result)
  {
    result->_referent = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_build(self, v5, v6);
  v9 = objc_msgSend_initWithBuild_(v4, v8, v7);

  *(v9 + 80) = self->_delay;
  *(v9 + 88) = self->_duration;
  *(v9 + 96) = self->_automatic;
  *(v9 + 104) = self->_referent;
  v12 = objc_msgSend_copy(self->_buildChunkIdentifier, v10, v11);
  v13 = *(v9 + 72);
  *(v9 + 72) = v12;

  v16 = objc_msgSend_copy(self->_buildId, v14, v15);
  v17 = *(v9 + 64);
  *(v9 + 64) = v16;

  v20 = objc_msgSend_copy(self->_buildReference, v18, v19);
  v21 = *(v9 + 136);
  *(v9 + 136) = v20;

  v24 = objc_msgSend_objectUUID(self, v22, v23);

  if (v24)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[KNBuildChunk copyWithZone:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 138, 0, "expected nil value for '%{public}s'", "self.objectUUID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
  }

  return v9;
}

- (void)didInitFromSOS
{
  v10.receiver = self;
  v10.super_class = KNBuildChunk;
  [(KNBuildChunk *)&v10 didInitFromSOS];
  if (!self->_buildReference)
  {
    objc_opt_class();
    v5 = objc_msgSend_context(self, v3, v4);
    v7 = objc_msgSend_objectWithUUID_(v5, v6, self->_buildId);
    v8 = TSUCheckedDynamicCast();

    if (v8)
    {
      objc_msgSend_i_setBuildPointer_forUnarchive_(self, v9, v8, 0);
    }
  }
}

- (KNBuild)build
{
  objc_opt_class();
  v4 = objc_msgSend_objectAndReturnError_(self->_buildReference, v3, 0);
  v5 = TSUDynamicCast();

  if (!v5)
  {
    v8 = objc_msgSend_context(self, v6, v7);
    v10 = objc_msgSend_objectWithUUID_(v8, v9, self->_buildId);

    objc_opt_class();
    v5 = TSUCheckedDynamicCast();
  }

  return v5;
}

- (void)setDuration:(double)a3
{
  objc_msgSend_willModify(self, a2, v3);
  KNAnimationRoundTimeInterval();
  self->_duration = v5;
}

- (void)setDelay:(double)a3
{
  objc_msgSend_willModify(self, a2, v3);
  KNAnimationRoundTimeInterval();
  self->_delay = v5;
}

- (void)setAutomatic:(BOOL)a3
{
  if (objc_msgSend_isAutomatic(self, a2, a3) != a3)
  {
    objc_msgSend_willModify(self, v5, v6);
    v14 = objc_msgSend_slide(self, v7, v8);
    self->_automatic = a3;
    v11 = objc_msgSend_slideNode(v14, v9, v10);
    objc_msgSend_invalidateBuildEventCountCaches(v11, v12, v13);
  }
}

- (void)setReferent:(unint64_t)a3
{
  if (self->_referent != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    v12 = objc_msgSend_slide(self, v5, v6);
    self->_referent = a3;
    v9 = objc_msgSend_slideNode(v12, v7, v8);
    objc_msgSend_invalidateBuildEventCountCaches(v9, v10, v11);
  }
}

- (BOOL)isAutomaticWithPreviousChunk
{
  isAutomatic = objc_msgSend_isAutomatic(self, a2, v2);
  if (isAutomatic)
  {
    LOBYTE(isAutomatic) = objc_msgSend_referent(self, v5, v6) == 0;
  }

  return isAutomatic;
}

- (BOOL)isAutomaticWithPreviousChunkOnSameDrawable
{
  v4 = objc_msgSend_previousChunkOnSlide(self, a2, v2);
  v9 = 0;
  if (objc_msgSend_isAutomaticWithPreviousChunk(self, v5, v6) && v4)
  {
    v10 = objc_msgSend_build(v4, v7, v8);
    v13 = objc_msgSend_drawable(v10, v11, v12);
    v16 = objc_msgSend_build(self, v14, v15);
    v19 = objc_msgSend_drawable(v16, v17, v18);
    v9 = v13 == v19;
  }

  return v9;
}

- (KNBuildChunk)previousChunkOnSlide
{
  v4 = objc_msgSend_indexOnSlide(self, a2, v2);
  v7 = 0;
  if (v4)
  {
    v8 = v4;
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = objc_msgSend_slide(self, v5, v6);
      v12 = objc_msgSend_buildChunks(v9, v10, v11);
      v7 = objc_msgSend_objectAtIndex_(v12, v13, v8 - 1);
    }
  }

  return v7;
}

- (KNBuildChunk)nextChunkOnSlide
{
  v4 = objc_msgSend_indexOnSlide(self, a2, v2);
  v7 = objc_msgSend_slide(self, v5, v6);
  v10 = objc_msgSend_buildChunks(v7, v8, v9);

  if (v4 == 0x7FFFFFFFFFFFFFFFLL || v4 == objc_msgSend_count(v10, v11, v12) - 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = objc_msgSend_objectAtIndex_(v10, v13, v4 + 1);
  }

  return v14;
}

- (NSArray)availableEventTriggers
{
  v4 = objc_msgSend_slide(self, a2, v2);
  v6 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v5, self);
  v8 = objc_msgSend_availableEventTriggersForBuildChunks_(v4, v7, v6);

  return v8;
}

- (KNSlide)slide
{
  v3 = objc_msgSend_build(self, a2, v2);
  v6 = objc_msgSend_slide(v3, v4, v5);

  return v6;
}

- (unint64_t)indexInBuild
{
  result = self->_cachedIndexInBuild;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = objc_msgSend_build(self, a2, v2);
    v8 = objc_msgSend_chunks(v5, v6, v7);

    if (v8)
    {
      self->_cachedIndexInBuild = objc_msgSend_indexOfObject_(v8, v9, self);
    }

    return self->_cachedIndexInBuild;
  }

  return result;
}

- (unint64_t)indexOnSlide
{
  v4 = objc_msgSend_slide(self, a2, v2);
  v7 = objc_msgSend_buildChunks(v4, v5, v6);

  cachedIndexOnSlide = self->_cachedIndexOnSlide;
  if (cachedIndexOnSlide < objc_msgSend_count(v7, v9, v10) && (objc_msgSend_objectAtIndexedSubscript_(v7, v11, self->_cachedIndexOnSlide), v12 = objc_claimAutoreleasedReturnValue(), v12, v12 == self))
  {
    v13 = self->_cachedIndexOnSlide;
  }

  else
  {
    v13 = objc_msgSend_indexOfObject_(v7, v11, self);
    self->_cachedIndexOnSlide = v13;
  }

  return v13;
}

- (unint64_t)deliveryGroupIndex
{
  v4 = objc_msgSend_slide(self, a2, v2);
  v6 = objc_msgSend_deliveryGroupIndexForBuildChunk_(v4, v5, self);

  return v6;
}

- (BOOL)isFirstInDeliveryGroup
{
  v3 = self;
  v4 = objc_msgSend_slide(self, a2, v2);
  v7 = objc_msgSend_buildChunks(v4, v5, v6);
  LOBYTE(v3) = objc_msgSend_chunk_isFirstInDeliveryGroupForChunks_(KNAbstractSlide, v8, v3, v7);

  return v3;
}

- (BOOL)isActive
{
  v4 = objc_msgSend_indexInBuild(self, a2, v2);
  v7 = objc_msgSend_build(self, v5, v6);
  active = objc_msgSend_activeChunkRange(v7, v8, v9);
  v13 = v4 >= active && v4 - active < v11;

  return v13;
}

- (unint64_t)activeIndexOnSlide
{
  v4 = objc_msgSend_slide(self, a2, v2);
  v7 = objc_msgSend_activeBuildChunks(v4, v5, v6);

  cachedActiveIndexOnSlide = self->_cachedActiveIndexOnSlide;
  if (cachedActiveIndexOnSlide < objc_msgSend_count(v7, v9, v10) && (objc_msgSend_objectAtIndexedSubscript_(v7, v11, self->_cachedActiveIndexOnSlide), v12 = objc_claimAutoreleasedReturnValue(), v12, v12 == self))
  {
    v13 = self->_cachedActiveIndexOnSlide;
  }

  else
  {
    v13 = objc_msgSend_indexOfObject_(v7, v11, self);
    self->_cachedActiveIndexOnSlide = v13;
  }

  return v13;
}

- (BOOL)hasComplement
{
  if (self->_referent)
  {
    return 0;
  }

  v4 = objc_msgSend_build(self, a2, v2);
  hasComplement = objc_msgSend_hasComplement(v4, v5, v6);

  return hasComplement;
}

- (BOOL)isComplementOfBuildChunk:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_build(self, v5, v6);
  v10 = objc_msgSend_build(v4, v8, v9);

  LOBYTE(v4) = objc_msgSend_isComplementOfBuild_(v7, v11, v10);
  return v4;
}

- (id)p_stringForReferent:(unint64_t)a3
{
  if (a3)
  {
    return @"end";
  }

  else
  {
    return @"start";
  }
}

- (NSString)description
{
  v4 = objc_msgSend_build(self, a2, v2);
  v7 = objc_msgSend_indexOnSlide(self, v5, v6);
  v37 = objc_msgSend_p_stringRepresentationWithNotAvailableForIndex_(self, v8, v7);
  v11 = objc_msgSend_indexInBuild(self, v9, v10);
  v13 = objc_msgSend_p_stringRepresentationWithNotAvailableForIndex_(self, v12, v11);
  objc_msgSend_isAutomatic(self, v14, v15);
  objc_msgSend_referent(self, v16, v17);
  v18 = KNAnimationEventTriggerFromAutomaticReferent();
  if (v18 > 2)
  {
    v19 = &stru_2884D8E20;
  }

  else
  {
    v19 = off_27A6995A0[v18];
  }

  v20 = MEMORY[0x277CCACA8];
  v21 = objc_opt_class();
  v24 = objc_msgSend_chunkIdentifier(self, v22, v23);
  objc_msgSend_animationType(v4, v25, v26);
  v27 = KNAnimationTypeAsString();
  v30 = objc_msgSend_effect(v4, v28, v29);
  v33 = objc_msgSend_title(self, v31, v32);
  v35 = objc_msgSend_stringWithFormat_(v20, v34, @"<%@ %p id:%@ build:%p (%@ - %@) indexInBuild:%@ indexOnSlide:%@ title:%@ %@>", v21, self, v24, v4, v27, v30, v13, v37, v33, v19);

  return v35;
}

- (id)p_stringRepresentationWithNotAvailableForIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = @"n/a";
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%lu", a3);
  }

  return v4;
}

- (KNBuildChunk)previousActiveChunkWithReferentRelativeToEnd
{
  v4 = objc_msgSend_build(self, a2, v2);
  v7 = objc_msgSend_slide(v4, v5, v6);

  v10 = objc_msgSend_buildChunks(v7, v8, v9);
  v13 = objc_msgSend_indexOnSlide(self, v11, v12);
  v15 = self;
  if (v13)
  {
    do
    {
      --v13;
      v16 = v15;
      v15 = objc_msgSend_objectAtIndexedSubscript_(v10, v14, v13);
    }

    while ((!objc_msgSend_isActive(v15, v17, v18) || objc_msgSend_isAutomatic(v15, v14, v19) && objc_msgSend_referent(v15, v20, v21) != 1) && v13);
  }

  return v15;
}

- (id)localizedNameForEventTrigger:(unint64_t)a3 includeLineBreaks:(BOOL)a4
{
  v4 = a4;
  if (!a3)
  {
    v18 = objc_msgSend_previousActiveChunkWithReferentRelativeToEnd(self, a2, 0);
    active = objc_msgSend_activeIndexOnSlide(v18, v19, v20);

    v22 = MEMORY[0x277CCABB8];
    v24 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v23, active + 1);
    v5 = objc_msgSend_localizedStringFromNumber_numberStyle_(v22, v25, v24, 0);

    v12 = MEMORY[0x277CCACA8];
    v13 = sub_275DC204C();
    v15 = v13;
    v16 = @"With Build %@";
    v17 = @"With\nBuild %@";
    goto LABEL_8;
  }

  if (a3 != 2)
  {
    if (a3 != 1)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBuildChunk localizedNameForEventTrigger:includeLineBreaks:]");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunk.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 486, 0, "Unexpected trigger type.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
      v28 = 0;
      goto LABEL_19;
    }

    v5 = sub_275DC204C();
    objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"On Tap", &stru_2884D8E20, @"Keynote");
    goto LABEL_17;
  }

  v7 = objc_msgSend_activeIndexOnSlide(self, a2, 2);
  if (v7)
  {
    v9 = MEMORY[0x277CCABB8];
    v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, v7);
    v5 = objc_msgSend_localizedStringFromNumber_numberStyle_(v9, v11, v10, 0);

    v12 = MEMORY[0x277CCACA8];
    v13 = sub_275DC204C();
    v15 = v13;
    v16 = @"After Build %@";
    v17 = @"After\nBuild %@";
LABEL_8:
    if (v4)
    {
      objc_msgSend_localizedStringForKey_value_table_(v13, v14, v17, &stru_2884D8E20, @"Keynote");
    }

    else
    {
      objc_msgSend_localizedStringForKey_value_table_(v13, v14, v16, &stru_2884D8E20, @"Keynote");
    }
    v26 = ;
    v28 = objc_msgSend_stringWithFormat_(v12, v27, v26, v5);

    goto LABEL_18;
  }

  v36 = sub_275DC204C();
  v5 = v36;
  if (v4)
  {
    v38 = @"After\nTransition";
  }

  else
  {
    v38 = @"After Transition";
  }

  objc_msgSend_localizedStringForKey_value_table_(v36, v37, v38, &stru_2884D8E20, @"Keynote");
  v28 = LABEL_17:;
LABEL_18:

LABEL_19:

  return v28;
}

- (NSString)title
{
  if (objc_msgSend_indexOnSlide(self, a2, v2) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = &stru_2884D8E20;
  }

  else
  {
    v7 = objc_msgSend_build(self, v4, v5);
    v10 = objc_msgSend_drawable(v7, v8, v9);
    v13 = objc_msgSend_deliveryStyle(v7, v11, v12);
    v16 = objc_msgSend_animationFilter(v7, v14, v15);
    v18 = objc_msgSend_chunkCountForTextureDeliveryStyle_animationFilter_(v10, v17, v13, v16);
    v21 = objc_msgSend_indexInBuild(self, v19, v20);
    if (v21 >= v18)
    {
      v6 = &stru_2884D8E20;
    }

    else
    {
      v6 = objc_msgSend_kn_displayableBuildOrderNameForTextureDeliveryStyle_animationFilter_chunkIndex_(v10, v22, v13, v16, v21);
    }
  }

  return v6;
}

- (NSSet)inspectableAttributes
{
  v4 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2);
  objc_msgSend_addObject_(v4, v5, @"KNBuildChunkEventTriggerProperty");
  objc_msgSend_addObject_(v4, v6, @"KNAnimationOrder");
  if (objc_msgSend_isAutomatic(self, v7, v8))
  {
    objc_msgSend_addObject_(v4, v9, @"KNBuildChunkDelayProperty");
  }

  return v4;
}

- (BOOL)canEditAnimations
{
  v3 = objc_msgSend_build(self, a2, v2);
  canEditAnimations = objc_msgSend_canEditAnimations(v3, v4, v5);

  return canEditAnimations;
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v7 = a4;
  self->_needsAutomaticFromBuildAttributes = 1;
  self->_needsReferentFromBuildAttributes = 1;
  self->_needsDelayFromBuildAttributes = 1;
  self->_needsDurationFromBuildAttributes = 1;
  v8 = *(a3 + 4);
  if ((v8 & 0x40) != 0)
  {
    self->_automatic = *(a3 + 68);
    self->_needsAutomaticFromBuildAttributes = 0;
    if ((v8 & 0x80) == 0)
    {
LABEL_3:
      if ((v8 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  self->_referent = *(a3 + 69);
  self->_needsReferentFromBuildAttributes = 0;
  if ((v8 & 8) == 0)
  {
LABEL_4:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  KNAnimationRoundTimeInterval();
  self->_delay = v9;
  self->_needsDelayFromBuildAttributes = 0;
  v8 = *(a3 + 4);
  if ((v8 & 0x10) == 0)
  {
LABEL_5:
    if ((v8 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_10:
  KNAnimationRoundTimeInterval();
  self->_duration = v10;
  self->_needsDurationFromBuildAttributes = 0;
  v8 = *(a3 + 4);
  if ((v8 & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v11 = objc_alloc(MEMORY[0x277CCAD78]);
  if (*(a3 + 5))
  {
    v13 = objc_msgSend_tsp_initWithMessage_(v11, v12, *(a3 + 5));
  }

  else
  {
    v13 = objc_msgSend_tsp_initWithMessage_(v11, v12, MEMORY[0x277D809E0]);
  }

  buildId = self->_buildId;
  self->_buildId = v13;

  v8 = *(a3 + 4);
LABEL_15:
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_275E2D0F4;
  v32[4] = sub_275E2D104;
  v33 = 0;
  if (v8)
  {
    v15 = *(a3 + 3);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_275E2D10C;
    v31[3] = &unk_27A6995C0;
    v31[4] = v32;
    v16 = v7;
    v17 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v16, v18, v15, v17, 0, v31);

    v19 = *(a3 + 3);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_275E2D11C;
    v30[3] = &unk_27A6982D0;
    v30[4] = self;
    v20 = v16;
    v22 = objc_opt_class();
    if (v19)
    {
      objc_msgSend_readWeakLazyReferenceMessage_class_protocol_completion_(v20, v21, v19, v22, 0, v30);
    }

    else
    {
      objc_msgSend_readWeakLazyReferenceMessage_class_protocol_completion_(v20, v21, MEMORY[0x277D80A18], v22, 0, v30);
    }
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_275E2D134;
  v29[3] = &unk_27A6995E8;
  v29[4] = self;
  v29[5] = v32;
  objc_msgSend_addFinalizeHandler_(v7, v6, v29);
  if ((*(a3 + 16) & 2) != 0)
  {
    v25 = [KNBuildChunkIdentifier alloc];
    if (*(a3 + 4))
    {
      v27 = objc_msgSend_initWithMessage_(v25, v26, *(a3 + 4));
    }

    else
    {
      v27 = objc_msgSend_initWithMessage_(v25, v26, &qword_2812EABA8);
    }

    buildChunkIdentifier = self->_buildChunkIdentifier;
    self->_buildChunkIdentifier = v27;
  }

  objc_msgSend_i_invalidateCaches(self, v23, v24);
  _Block_object_dispose(v32, 8);
}

- (void)i_didLoadBuild:(id)a3
{
  v38 = a3;
  v8 = objc_msgSend_attributes(v38, v4, v5);
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNBuildChunk(PersistenceAdditions) i_didLoadBuild:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 122, 0, "invalid nil value for '%{public}s'", "buildAttributes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (self->_needsAutomaticFromBuildAttributes)
  {
    objc_msgSend_willModifyForUpgrade(self, v6, v7);
    v17 = objc_msgSend_valueForAttributeKey_(v8, v16, @"KNBuildAttributesInitialChunkCreationEventTrigger");
    objc_msgSend_unsignedIntegerValue(v17, v18, v19);

    self->_automatic = KNAnimationAutomaticFromEventTrigger();
  }

  if (self->_needsReferentFromBuildAttributes)
  {
    objc_msgSend_willModifyForUpgrade(self, v6, v7);
    v21 = objc_msgSend_valueForAttributeKey_(v8, v20, @"KNBuildAttributesInitialChunkCreationEventTrigger");
    objc_msgSend_unsignedIntegerValue(v21, v22, v23);

    self->_referent = KNAnimationReferentFromEventTrigger();
  }

  if (self->_needsDelayFromBuildAttributes)
  {
    objc_msgSend_willModifyForUpgrade(self, v6, v7);
    objc_msgSend_p_setDelayFromBuildAttributes_withReferent_automatic_(self, v24, v8, self->_referent, self->_automatic);
  }

  if (self->_needsDurationFromBuildAttributes)
  {
    objc_msgSend_willModifyForUpgrade(self, v6, v7);
    objc_msgSend_p_setDurationFromBuildAttributes_(self, v25, v8);
  }

  if (!self->_buildId)
  {
    objc_msgSend_willModifyForUpgrade(self, v6, v7);
    v29 = objc_msgSend_objectUUID(v38, v26, v27);
    if (!v29)
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[KNBuildChunk(PersistenceAdditions) i_didLoadBuild:]");
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkPersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 159, 0, "invalid nil value for '%{public}s'", "buildUUID");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
    }

    buildId = self->_buildId;
    self->_buildId = v29;
  }
}

- (void)p_setDelayFromBuildAttributes:(id)a3 withReferent:(unint64_t)a4 automatic:(BOOL)a5
{
  v5 = a5;
  v16 = a3;
  v9 = @"KNBuildAttributesInitialChunkCreationDelay";
  if (v5)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_7;
      }

      v10 = off_27A698DE8;
    }

    else
    {
      v10 = off_27A698DF0;
    }

    v11 = *v10;

    v9 = v11;
  }

LABEL_7:
  v12 = objc_msgSend_valueForAttributeKey_(v16, v8, v9);
  objc_msgSend_doubleValue(v12, v13, v14);
  KNAnimationRoundTimeInterval();
  self->_delay = v15;
}

- (void)p_setDurationFromBuildAttributes:(id)a3
{
  v4 = objc_msgSend_valueForAttributeKey_(a3, a2, @"KNBuildAttributesDefaultDuration");
  objc_msgSend_doubleValue(v4, v5, v6);
  KNAnimationRoundTimeInterval();
  v8 = v7;

  self->_duration = v8;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  buildReference = self->_buildReference;
  v37 = v6;
  if (buildReference)
  {
    *(a3 + 4) |= 1u;
    v10 = *(a3 + 3);
    if (!v10)
    {
      v11 = *(a3 + 1);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C8F050](v11);
      *(a3 + 3) = v10;
      v6 = v37;
    }

    objc_msgSend_setWeakLazyReference_message_(v6, v7, buildReference, v10);
  }

  else if (!self->_buildId && objc_msgSend_targetType(v6, v7, v8) != 4)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNBuildChunk(PersistenceAdditions) saveToArchive:archiver:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 195, 0, "[buildReference_log] Trying to archive a nil build reference for chunk %@, and _buildId is nil.", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  objc_msgSend_delay(self, v7, v8);
  *(a3 + 4) |= 8u;
  *(a3 + 6) = v19;
  objc_msgSend_duration(self, v20, v21);
  *(a3 + 4) |= 0x10u;
  *(a3 + 7) = v22;
  isAutomatic = objc_msgSend_isAutomatic(self, v23, v24);
  *(a3 + 4) |= 0x40u;
  *(a3 + 68) = isAutomatic;
  v29 = objc_msgSend_referent(self, v26, v27) == 1;
  v30 = *(a3 + 4);
  *(a3 + 4) = v30 | 0x80;
  *(a3 + 69) = v29;
  buildChunkIdentifier = self->_buildChunkIdentifier;
  if (buildChunkIdentifier)
  {
    *(a3 + 4) = v30 | 0x82;
    v32 = *(a3 + 4);
    if (!v32)
    {
      v33 = *(a3 + 1);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = sub_275E1F89C(v33);
      *(a3 + 4) = v32;
    }

    objc_msgSend_saveToMessage_(buildChunkIdentifier, v28, v32);
  }

  buildId = self->_buildId;
  if (buildId)
  {
    *(a3 + 4) |= 4u;
    v35 = *(a3 + 5);
    if (!v35)
    {
      v36 = *(a3 + 1);
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = MEMORY[0x277C8F000](v36);
      *(a3 + 5) = v35;
    }

    objc_msgSend_tsp_saveToMessage_(buildId, v28, v35);
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNBuildChunk(PersistenceAdditions) loadFromUnarchiver:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 213, 0, "KNBuildChunk needs a separate method for subclass unarchiving");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v17 = v4;
  google::protobuf::internal::AssignDescriptors();
  v15 = objc_msgSend_messageWithDescriptor_(v17, v14, off_2812EA908[6]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v16, v15, v17);
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_275E2DC80, off_2812EA908[6]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, v7);
}

@end