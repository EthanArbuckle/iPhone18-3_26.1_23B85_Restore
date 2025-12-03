@interface KNCanvasSelection
+ (id)emptySelection;
- (BOOL)containsBuildChunksOfAnimationType:(int64_t)type;
- (BOOL)containsOnlyUnlockedInfosSupportingHyperlinkActions;
- (BOOL)isEqual:(id)equal;
- (KNCanvasSelection)initWithInfos:(id)infos buildChunks:(id)chunks;
- (KNCanvasSelection)initWithPersistableInfos:(id)infos drawableToActionGhostIndexPromiseMap:(id)map buildChunks:(id)chunks;
- (NSSet)drawableInfos;
- (NSSet)unlockedDrawableInfos;
- (NSSet)unlockedInfosSupportingHyperlinkActions;
- (id)UUIDDescription;
- (id)copyExcludingBuildChunks:(id)chunks;
- (id)copyReplacingChunksWithChunks:(id)chunks;
- (id)p_drawablesWithoutPromisesInDrawableToActionGhostIndexPromiseMap:(id)map;
- (id)subclassDescription;
- (unint64_t)hash;
@end

@implementation KNCanvasSelection

+ (id)emptySelection
{
  v2 = [KNCanvasSelection alloc];
  v3 = objc_alloc_init(MEMORY[0x277D812B8]);
  v5 = objc_msgSend_initWithPersistableInfos_drawableToActionGhostIndexPromiseMap_buildChunks_(v2, v4, 0, v3, 0);

  return v5;
}

- (KNCanvasSelection)initWithPersistableInfos:(id)infos drawableToActionGhostIndexPromiseMap:(id)map buildChunks:(id)chunks
{
  infosCopy = infos;
  chunksCopy = chunks;
  v13 = objc_msgSend_p_drawablesWithoutPromisesInDrawableToActionGhostIndexPromiseMap_(self, v10, map);
  if (infosCopy)
  {
    objc_msgSend_setWithSet_(MEMORY[0x277CBEB58], v11, infosCopy);
  }

  else
  {
    objc_msgSend_set(MEMORY[0x277CBEB58], v11, v12);
  }
  v14 = ;
  objc_msgSend_unionSet_(v14, v15, v13);
  v22.receiver = self;
  v22.super_class = KNCanvasSelection;
  v18 = [(TSDCanvasSelection *)&v22 initWithInfos:v14];
  if (v18)
  {
    v19 = objc_msgSend_copy(chunksCopy, v16, v17);
    buildChunks = v18->_buildChunks;
    v18->_buildChunks = v19;
  }

  return v18;
}

- (KNCanvasSelection)initWithInfos:(id)infos buildChunks:(id)chunks
{
  chunksCopy = chunks;
  infosCopy = infos;
  v8 = objc_opt_class();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_275DD7C00;
  v15[3] = &unk_27A698FE8;
  v15[4] = v8;
  v10 = objc_msgSend_objectsPassingTest_(infosCopy, v9, v15);

  v11 = objc_alloc_init(MEMORY[0x277D812B8]);
  v13 = objc_msgSend_initWithPersistableInfos_drawableToActionGhostIndexPromiseMap_buildChunks_(self, v12, v10, v11, chunksCopy);

  return v13;
}

- (id)copyExcludingBuildChunks:(id)chunks
{
  chunksCopy = chunks;
  v7 = objc_msgSend_copy(self, v5, v6);
  v10 = objc_msgSend_mutableCopy(v7[2], v8, v9);
  objc_msgSend_minusSet_(v10, v11, chunksCopy);

  v12 = v7[2];
  v7[2] = v10;

  return v7;
}

- (id)copyReplacingChunksWithChunks:(id)chunks
{
  chunksCopy = chunks;
  v7 = objc_msgSend_copy(self, v5, v6);
  v10 = objc_msgSend_copy(chunksCopy, v8, v9);

  v11 = v7[2];
  v7[2] = v10;

  return v7;
}

- (BOOL)containsBuildChunksOfAnimationType:(int64_t)type
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNCanvasSelection containsBuildChunksOfAnimationType:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNCanvasSelection.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 199, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  v10 = MEMORY[0x277CBEAD8];
  v11 = *MEMORY[0x277CBE658];
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s: %s", "Do not call method", "[KNCanvasSelection containsBuildChunksOfAnimationType:]");
  v15 = objc_msgSend_exceptionWithName_reason_userInfo_(v10, v14, v11, v13, 0);
  v16 = v15;

  objc_exception_throw(v15);
}

- (NSSet)unlockedInfosSupportingHyperlinkActions
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNCanvasSelection unlockedInfosSupportingHyperlinkActions]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNCanvasSelection.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 218, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[KNCanvasSelection unlockedInfosSupportingHyperlinkActions]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (BOOL)containsOnlyUnlockedInfosSupportingHyperlinkActions
{
  v4 = objc_msgSend_infos(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  v10 = objc_msgSend_unlockedInfosSupportingHyperlinkActions(self, v8, v9);
  v13 = objc_msgSend_count(v10, v11, v12);

  return v7 == v13;
}

- (NSSet)unlockedDrawableInfos
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_infos(self, v4, v5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_275DD7FF4;
  v10[3] = &unk_27A698FE8;
  v10[4] = v3;
  v8 = objc_msgSend_objectsPassingTest_(v6, v7, v10);

  return v8;
}

- (NSSet)drawableInfos
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_infos(self, v4, v5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_275DD80FC;
  v10[3] = &unk_27A698FE8;
  v10[4] = v3;
  v8 = objc_msgSend_objectsPassingTest_(v6, v7, v10);

  return v8;
}

- (id)p_drawablesWithoutPromisesInDrawableToActionGhostIndexPromiseMap:(id)map
{
  v25 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], v4, v5);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = mapCopy;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = objc_msgSend_objectForKeyedSubscript_(v7, v10, v14, v20);
        if (!objc_msgSend_count(v15, v16, v17))
        {
          objc_msgSend_addObject_(v6, v18, v14);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v20, v24, 16);
    }

    while (v11);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v11.receiver = self;
  v11.super_class = KNCanvasSelection;
  equalCopy = equal;
  v5 = [(TSDCanvasSelection *)&v11 isEqual:equalCopy];
  objc_opt_class();
  v6 = TSUDynamicCast();

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    isEqualToSet = 0;
  }

  else
  {
    isEqualToSet = objc_msgSend_tsu_set_isEqualToSet_(MEMORY[0x277CBEB98], v7, v6[2], self->_buildChunks, v11.receiver, v11.super_class);
  }

  return isEqualToSet;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = KNCanvasSelection;
  v3 = [(TSDCanvasSelection *)&v7 hash];
  return objc_msgSend_hash(self->_buildChunks, v4, v5) ^ v3;
}

- (id)subclassDescription
{
  v4 = objc_msgSend_unlockedInfos(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);
  v10 = objc_msgSend_infos(self, v8, v9);
  v13 = objc_msgSend_count(v10, v11, v12);

  if (v7 == v13)
  {
    v16 = &stru_2884D8E20;
  }

  else
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = objc_msgSend_unlockedInfos(self, v14, v15);
    v16 = objc_msgSend_stringWithFormat_(v17, v19, @"\n unlockedInfos: %@", v18);
  }

  v20 = objc_msgSend_buildChunks(self, v14, v15);
  v23 = objc_msgSend_count(v20, v21, v22);

  if (v23)
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = objc_msgSend_buildChunks(self, v24, v25);
    v29 = objc_msgSend_stringWithFormat_(v26, v28, @"\n chunks: %@", v27);
  }

  else
  {
    v29 = &stru_2884D8E20;
  }

  v30 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"%@ %@ %@", &stru_2884D8E20, v16, v29);

  return v30;
}

- (id)UUIDDescription
{
  v10.receiver = self;
  v10.super_class = KNCanvasSelection;
  uUIDDescription = [(TSDCanvasSelection *)&v10 UUIDDescription];
  v6 = objc_msgSend_subclassDescription(self, v4, v5);
  v8 = objc_msgSend_stringByAppendingFormat_(uUIDDescription, v7, @"%@", v6);

  return v8;
}

@end