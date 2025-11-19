@interface TSDDrawableInfo
- (BOOL)hasActionBuilds;
- (BOOL)hasBuildOfAnimationType:(int64_t)a3;
- (BOOL)hasContentBuilds;
- (BOOL)isRightToLeft;
- (BOOL)mayHaveImplicitBuildEvents;
- (BOOL)swizzled_matchesObjectPlaceholderGeometry;
- (KNBuild)buildIn;
- (KNBuild)buildOut;
- (KNSlide)slide;
- (NSArray)actionBuildChunks;
- (NSArray)activeBuildChunks;
- (NSArray)buildChunks;
- (NSArray)ghostInfos;
- (NSSet)actionBuilds;
- (NSSet)builds;
- (NSSet)contentBuilds;
- (id)buildChunksForAnimationType:(int64_t)a3;
- (id)validBuildsInBuilds:(id)a3;
- (unint64_t)buildCount;
- (void)swizzled_setMatchesObjectPlaceholderGeometry:(BOOL)a3;
@end

@implementation TSDDrawableInfo

- (KNSlide)slide
{
  objc_opt_class();
  v4 = objc_msgSend_parentSlideForInfo_(KNAbstractSlide, v3, self);
  v5 = TSUDynamicCast();

  return v5;
}

- (BOOL)hasActionBuilds
{
  v3 = objc_msgSend_actionBuilds(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5) != 0;

  return v6;
}

- (NSSet)actionBuilds
{
  v4 = objc_msgSend_abstractSlide(self, a2, v2);
  v6 = objc_msgSend_buildsForDrawable_type_(v4, v5, self, 4);

  return v6;
}

- (BOOL)hasContentBuilds
{
  v3 = objc_msgSend_contentBuilds(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5) != 0;

  return v6;
}

- (NSSet)contentBuilds
{
  v4 = objc_msgSend_abstractSlide(self, a2, v2);
  v6 = objc_msgSend_buildsForDrawable_type_(v4, v5, self, 5);

  return v6;
}

- (KNBuild)buildIn
{
  v4 = objc_msgSend_abstractSlide(self, a2, v2);
  v6 = objc_msgSend_inBuildForDrawable_(v4, v5, self);

  return v6;
}

- (KNBuild)buildOut
{
  v4 = objc_msgSend_abstractSlide(self, a2, v2);
  v6 = objc_msgSend_outBuildForDrawable_(v4, v5, self);

  return v6;
}

- (unint64_t)buildCount
{
  v3 = objc_msgSend_builds(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_count(v3, v4, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasBuildOfAnimationType:(int64_t)a3
{
  v5 = objc_msgSend_abstractSlide(self, a2, a3);
  v9 = objc_msgSend_buildsForDrawable_type_(v5, v6, self, a3);
  if (v9)
  {
    v10 = objc_msgSend_abstractSlide(self, v7, v8);
    v12 = objc_msgSend_buildsForDrawable_type_(v10, v11, self, a3);
    v15 = objc_msgSend_count(v12, v13, v14) != 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSSet)builds
{
  v4 = objc_msgSend_abstractSlide(self, a2, v2);
  v6 = objc_msgSend_buildsForDrawable_type_(v4, v5, self, 0);

  return v6;
}

- (id)validBuildsInBuilds:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_animationFilters(self, v5, v6);
  v8 = MEMORY[0x277CCAC30];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_275E396C8;
  v15[3] = &unk_27A6996A0;
  v16 = v7;
  v9 = v7;
  v11 = objc_msgSend_predicateWithBlock_(v8, v10, v15);
  v13 = objc_msgSend_filteredSetUsingPredicate_(v4, v12, v11);

  return v13;
}

- (NSArray)activeBuildChunks
{
  v4 = objc_msgSend_abstractSlide(self, a2, v2);
  v6 = objc_msgSend_activeChunksForDrawable_(v4, v5, self);

  return v6;
}

- (NSArray)actionBuildChunks
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_buildChunks(self, a2, v2);
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v21, v25, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = objc_msgSend_build(v15, v10, v11, v21);
        isActionBuild = objc_msgSend_isActionBuild(v16, v17, v18);

        if (isActionBuild)
        {
          objc_msgSend_addObject_(v6, v10, v15);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v21, v25, 16);
    }

    while (v12);
  }

  return v6;
}

- (NSArray)buildChunks
{
  v3 = objc_msgSend_builds(self, a2, v2);
  v5 = objc_msgSend_chunksInBuilds_(KNBuildUtility, v4, v3);

  return v5;
}

- (id)buildChunksForAnimationType:(int64_t)a3
{
  v5 = objc_msgSend_abstractSlide(self, a2, a3);
  v7 = objc_msgSend_chunksForDrawable_animationType_(v5, v6, self, a3);

  return v7;
}

- (NSArray)ghostInfos
{
  v4 = objc_msgSend_abstractSlide(self, a2, v2);
  v6 = objc_msgSend_ghostInfosForDrawable_(v4, v5, self);

  return v6;
}

- (BOOL)swizzled_matchesObjectPlaceholderGeometry
{
  v4 = objc_msgSend_slide(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_infosUsingObjectPlaceholderGeometry(v4, v5, v6);
    v10 = objc_msgSend_containsObject_(v8, v9, self);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)swizzled_setMatchesObjectPlaceholderGeometry:(BOOL)a3
{
  v3 = a3;
  v5 = objc_msgSend_slide(self, a2, a3);
  if (v5)
  {
    v12 = v5;
    v8 = objc_msgSend_infosUsingObjectPlaceholderGeometry(v5, v6, v7);
    v10 = objc_msgSend_containsObject_(v8, v9, self);

    v5 = v12;
    if (v10 != v3)
    {
      if (v3)
      {
        objc_msgSend_addInfoUsingObjectPlaceholderGeometry_(v12, v11, self);
      }

      else
      {
        objc_msgSend_removeInfoUsingObjectPlaceholderGeometry_(v12, v11, self);
      }

      v5 = v12;
    }
  }
}

- (BOOL)mayHaveImplicitBuildEvents
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)isRightToLeft
{
  v3 = objc_msgSend_slide(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    IsRTL = objc_msgSend_documentIsRTL(v3, v4, v5);
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDDrawableInfo(KNAdditions) isRightToLeft]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/TSDDrawableInfo-KNAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 187, 0, "invalid nil value for '%{public}s'", "slide");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    IsRTL = 0;
  }

  return IsRTL;
}

@end