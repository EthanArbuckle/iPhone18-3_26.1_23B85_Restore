@interface KNBuildChunkIdentifier
+ (id)emptyIdentifier;
- (BOOL)isEqual:(id)equal;
- (KNBuildChunkIdentifier)initWithBuild:(id)build chunkID:(int)d;
- (KNBuildChunkIdentifier)initWithMessage:(const void *)message;
- (id)description;
- (id)initEmptyIdentifier;
- (id)resolveToChunkOnSlide:(id)slide;
- (id)resolveToChunkUsingContext:(id)context;
- (void)saveToMessage:(void *)message;
@end

@implementation KNBuildChunkIdentifier

+ (id)emptyIdentifier
{
  if (qword_280A3C5B0 != -1)
  {
    sub_275E60930();
  }

  v3 = qword_280A3C5B8;

  return v3;
}

- (id)initEmptyIdentifier
{
  v6.receiver = self;
  v6.super_class = KNBuildChunkIdentifier;
  v2 = [(KNBuildChunkIdentifier *)&v6 init];
  v3 = v2;
  if (v2)
  {
    buildUUID = v2->_buildUUID;
    v2->_buildUUID = 0;

    v3->_chunkID = 0;
  }

  return v3;
}

- (KNBuildChunkIdentifier)initWithBuild:(id)build chunkID:(int)d
{
  buildCopy = build;
  if (!buildCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNBuildChunkIdentifier initWithBuild:chunkID:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkIdentifier.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 54, 0, "Invalid parameter not satisfying: %{public}s", "build != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  if ((d - 1) >= 0x7FFFFFFE)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNBuildChunkIdentifier initWithBuild:chunkID:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkIdentifier.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 55, 0, "Invalid parameter not satisfying: %{public}s", "KNIsValidChunkID(chunkID)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  v39.receiver = self;
  v39.super_class = KNBuildChunkIdentifier;
  v24 = [(KNBuildChunkIdentifier *)&v39 init];
  if (v24)
  {
    v25 = objc_msgSend_objectUUID(buildCopy, v22, v23);
    v28 = objc_msgSend_copy(v25, v26, v27);
    buildUUID = v24->_buildUUID;
    v24->_buildUUID = v28;

    if (!v24->_buildUUID)
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[KNBuildChunkIdentifier initWithBuild:chunkID:]");
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkIdentifier.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 61, 0, "invalid nil value for '%{public}s'", "_buildUUID");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
    }

    v24->_chunkID = d;
  }

  return v24;
}

- (id)resolveToChunkUsingContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNBuildChunkIdentifier resolveToChunkUsingContext:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkIdentifier.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 86, 0, "Invalid parameter not satisfying: %{public}s", "context != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (objc_msgSend_isEmpty(self, v4, v5))
  {
    v14 = 0;
  }

  else
  {
    objc_opt_class();
    v16 = objc_msgSend_objectWithUUID_(contextCopy, v15, self->_buildUUID);
    v17 = TSUCheckedDynamicCast();

    v14 = objc_msgSend_chunkForIdentifier_(v17, v18, self);
  }

  return v14;
}

- (id)resolveToChunkOnSlide:(id)slide
{
  v44 = *MEMORY[0x277D85DE8];
  slideCopy = slide;
  if (!slideCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNBuildChunkIdentifier resolveToChunkOnSlide:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkIdentifier.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 100, 0, "Invalid parameter not satisfying: %{public}s", "slide != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (objc_msgSend_isEmpty(self, v4, v5))
  {
    v14 = 0;
  }

  else
  {
    objc_opt_class();
    v17 = objc_msgSend_context(slideCopy, v15, v16);
    v19 = objc_msgSend_objectWithUUID_(v17, v18, self->_buildUUID);
    v20 = TSUCheckedDynamicCast();

    if ((objc_msgSend_isOnSlide(v20, v21, v22) & 1) == 0)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v25 = objc_msgSend_builds(slideCopy, v23, v24);
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v39, v43, 16);
      if (v27)
      {
        v30 = v27;
        v31 = *v40;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v40 != v31)
            {
              objc_enumerationMutation(v25);
            }

            v33 = *(*(&v39 + 1) + 8 * i);
            v34 = objc_msgSend_objectUUID(v33, v28, v29);
            isEqual = objc_msgSend_isEqual_(v34, v35, self->_buildUUID);

            if (isEqual)
            {
              v37 = v33;

              v20 = v37;
              goto LABEL_16;
            }
          }

          v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v39, v43, 16);
          if (v30)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }

    v14 = objc_msgSend_chunkForIdentifier_(v20, v23, self);
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    v8 = objc_msgSend_buildUUID(self, v6, v7);
    v11 = objc_msgSend_buildUUID(v5, v9, v10);
    v14 = v11;
    if (v11 | v8 && !objc_msgSend_isEqual_(v11, v12, v8))
    {
      v18 = 0;
    }

    else
    {
      v15 = objc_msgSend_chunkID(v5, v12, v13);
      v18 = v15 == objc_msgSend_chunkID(self, v16, v17);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)description
{
  isEmpty = objc_msgSend_isEmpty(self, a2, v2);
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v9 = v6;
  if (isEmpty)
  {
    v10 = objc_msgSend_stringWithFormat_(v5, v7, @"<%@ %p (empty)>", v6, self);
  }

  else
  {
    v11 = objc_msgSend_UUIDString(self->_buildUUID, v7, v8);
    v10 = objc_msgSend_stringWithFormat_(v5, v12, @"<%@ %p build uuid:%@ id:%d>", v9, self, v11, self->_chunkID);
  }

  return v10;
}

- (KNBuildChunkIdentifier)initWithMessage:(const void *)message
{
  v28.receiver = self;
  v28.super_class = KNBuildChunkIdentifier;
  v6 = [(KNBuildChunkIdentifier *)&v28 init];
  if (v6)
  {
    v7 = *(message + 4);
    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277CCAD78]);
      if (*(message + 3))
      {
        v10 = objc_msgSend_tsp_initWithMessage_(v8, v9, *(message + 3));
      }

      else
      {
        v10 = objc_msgSend_tsp_initWithMessage_(v8, v9, MEMORY[0x277D809E0]);
      }

      buildUUID = v6->_buildUUID;
      v6->_buildUUID = v10;

      v7 = *(message + 4);
    }

    if ((v7 & 2) != 0)
    {
      v6->_chunkID = *(message + 8);
    }

    else
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNBuildChunkIdentifier(PersistenceAdditions) initWithMessage:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkIdentifierPersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 37, 0, "Unarchived a chunk identifier which is missing the chunk_id field.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    if ((objc_msgSend_isEmpty(v6, v4, v5) & 1) == 0 && !v6->_buildUUID)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[KNBuildChunkIdentifier(PersistenceAdditions) initWithMessage:]");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkIdentifierPersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 40, 0, "Attempted to unarchive a chunk identifier which is not empty, but which is missing a build UUID.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
    }
  }

  return v6;
}

- (void)saveToMessage:(void *)message
{
  if ((objc_msgSend_isEmpty(self, a2, message) & 1) == 0 && !self->_buildUUID)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNBuildChunkIdentifier(PersistenceAdditions) saveToMessage:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkIdentifierPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 47, 0, "Attempted to archive a chunk identifier which is not empty, but which is missing a build UUID.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  buildUUID = self->_buildUUID;
  if (buildUUID)
  {
    *(message + 4) |= 1u;
    v14 = *(message + 3);
    if (!v14)
    {
      v15 = *(message + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C8F000](v15);
      *(message + 3) = v14;
    }

    objc_msgSend_tsp_saveToMessage_(buildUUID, v5, v14);
  }

  chunkID = self->_chunkID;
  *(message + 4) |= 2u;
  *(message + 8) = chunkID;
}

@end