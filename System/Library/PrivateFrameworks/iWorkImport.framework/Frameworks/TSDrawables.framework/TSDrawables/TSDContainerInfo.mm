@interface TSDContainerInfo
- (BOOL)isThemeContent;
- (NSArray)childInfos;
- (TSDContainerInfo)initWithContext:(id)a3 geometry:(id)a4;
- (id)endCollectingChanges;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (void)addChildInfo:(id)a3;
- (void)beginCollectingChanges;
- (void)clearBackPointerToParentInfoIfNeeded:(id)a3;
- (void)dealloc;
- (void)insertChildInfo:(id)a3 above:(id)a4;
- (void)insertChildInfo:(id)a3 atIndex:(unint64_t)a4;
- (void)insertChildInfo:(id)a3 below:(id)a4;
- (void)insertContainedModel:(id)a3 atIndex:(unint64_t)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)moveChildren:(id)a3 toIndexes:(id)a4;
- (void)moveModel:(id)a3 toIndex:(unint64_t)a4;
- (void)removeContainedModel:(id)a3;
- (void)replaceChildInfo:(id)a3 with:(id)a4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setChildInfos:(id)a3;
- (void)setGeometry:(id)a3;
- (void)setOwningAttachment:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
- (void)willChangeProperties:(id)a3;
- (void)willChangeProperty:(int)a3;
@end

@implementation TSDContainerInfo

- (TSDContainerInfo)initWithContext:(id)a3 geometry:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = TSDContainerInfo;
  v9 = [(TSDContainerInfo *)&v17 initWithContext:a3];
  if (v9)
  {
    v10 = objc_msgSend_copy(v6, v7, v8);
    geometry = v9->_geometry;
    v9->_geometry = v10;

    v14 = objc_msgSend_array(MEMORY[0x277CBEB18], v12, v13);
    childInfos = v9->_childInfos;
    v9->_childInfos = v14;
  }

  return v9;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_childInfos;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v11, v15, 16);
  if (v5)
  {
    v7 = v5;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_clearBackPointerToParentInfoIfNeeded_(*(*(&v11 + 1) + 8 * v9++), v6, self);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v11, v15, 16);
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = TSDContainerInfo;
  [(TSDContainerInfo *)&v10 dealloc];
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)a3
{
  if (self->_parentInfo == a3)
  {
    self->_parentInfo = 0;
  }
}

- (void)setGeometry:(id)a3
{
  v5 = a3;
  v16 = v5;
  if (!v5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDContainerInfo setGeometry:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDContainerInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 54, 0, "invalid nil value for '%{public}s'", "newGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    v5 = 0;
  }

  if ((objc_msgSend_isEqual_(v5, v6, self->_geometry) & 1) == 0)
  {
    objc_msgSend_willModify(self, v14, v15);
    objc_storeStrong(&self->_geometry, a3);
  }
}

- (void)setOwningAttachment:(id)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDContainerInfo setOwningAttachment:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDContainerInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 71, 0, "TSDContainerInfo cannot be owned by an attachment because it is not a subclass of TSDDrawableInfo");

  v10 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

- (BOOL)isThemeContent
{
  v3 = objc_msgSend_parentInfo(self, a2, v2);
  isThemeContent = objc_msgSend_isThemeContent(v3, v4, v5);

  return isThemeContent;
}

- (NSArray)childInfos
{
  v3 = objc_msgSend_copy(self->_childInfos, a2, v2);

  return v3;
}

- (void)insertContainedModel:(id)a3 atIndex:(unint64_t)a4
{
  v6 = TSUProtocolCast();
  v15 = v6;
  if (v6)
  {
    objc_msgSend_insertChildInfo_atIndex_(self, v6, v6, a4, &unk_2885A16B8);
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDContainerInfo insertContainedModel:atIndex:]", &unk_2885A16B8);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDContainerInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 132, 0, "Must provide an info!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }
}

- (void)removeContainedModel:(id)a3
{
  v4 = TSUProtocolCast();
  v13 = v4;
  if (v4)
  {
    objc_msgSend_removeChildInfo_(self, v4, v4, &unk_2885A16B8);
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDContainerInfo removeContainedModel:]", &unk_2885A16B8);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDContainerInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 140, 0, "Must provide an info!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }
}

- (void)moveModel:(id)a3 toIndex:(unint64_t)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = TSUProtocolCast();
  v8 = v6;
  if (v6)
  {
    v20[0] = v6;
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v20, 1, &unk_2885A16B8);
    v11 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v10, a4);
    objc_msgSend_moveChildren_toIndexes_(self, v12, v9, v11);
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDContainerInfo moveModel:toIndex:]", &unk_2885A16B8);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDContainerInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 148, 0, "Must provide an info!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }
}

- (void)setChildInfos:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a3;
  childInfos = self->_childInfos;
  if (childInfos != v5 && (objc_msgSend_isEqual_(childInfos, v4, v5) & 1) == 0)
  {
    objc_msgSend_willChangeProperty_(self, v7, 514);
    if (v5)
    {
      v8 = objc_alloc(MEMORY[0x277CBEB98]);
      v10 = objc_msgSend_initWithArray_(v8, v9, v5);
    }

    else
    {
      v10 = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v11 = self->_childInfos;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v45, v50, 16);
    if (v13)
    {
      v15 = v13;
      v16 = *v46;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v46 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v45 + 1) + 8 * i);
          if ((objc_msgSend_containsObject_(v10, v14, v18) & 1) == 0)
          {
            objc_msgSend_setParentInfo_(v18, v14, 0);
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v45, v50, 16);
      }

      while (v15);
    }

    if (self->_childInfos)
    {
      v19 = objc_alloc(MEMORY[0x277CBEB98]);
      v20 = self;
      v22 = objc_msgSend_initWithArray_(v19, v21, self->_childInfos);
    }

    else
    {
      v20 = self;
      v22 = 0;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = v5;
    v23 = v5;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v41, v49, 16);
    if (v25)
    {
      v27 = v25;
      v28 = *v42;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v42 != v28)
          {
            objc_enumerationMutation(v23);
          }

          v30 = *(*(&v41 + 1) + 8 * j);
          if ((objc_msgSend_containsObject_(v22, v26, v30) & 1) == 0)
          {
            v32 = objc_msgSend_parentInfo(v30, v26, v31);
            v33 = TSUProtocolCast();

            objc_msgSend_removeChildInfo_(v33, v34, v30, &unk_2885A1948);
            objc_msgSend_setParentInfo_(v30, v35, v20);
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v41, v49, 16);
      }

      while (v27);
    }

    v38 = objc_msgSend_mutableCopy(v23, v36, v37);
    v39 = v20->_childInfos;
    v20->_childInfos = v38;

    v5 = v40;
  }
}

- (void)addChildInfo:(id)a3
{
  v9 = a3;
  childInfos = self->_childInfos;
  if (childInfos)
  {
    v7 = objc_msgSend_count(childInfos, v4, v5);
    objc_msgSend_insertChildInfo_atIndex_(self, v8, v9, v7);
  }

  else
  {
    objc_msgSend_insertChildInfo_atIndex_(self, v4, v9, 0);
  }
}

- (void)insertChildInfo:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v30 = v6;
    objc_msgSend_willChangeProperty_(self, v7, 514);
    v10 = objc_msgSend_parentInfo(v30, v8, v9);
    v29 = &unk_2885A1948;
    v11 = TSUProtocolCast();

    if (v11)
    {
      objc_msgSend_removeChildInfo_(v11, v12, v30, &unk_2885A1948);
    }

    objc_msgSend_setParentInfo_(v30, v12, self, v29);
    v13 = TSUProtocolCast();
    v16 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v14, v15, &unk_2885A1AA0);
    if (objc_msgSend_tsp_isInDocument(self, v17, v18))
    {
      v21 = objc_msgSend_documentRoot(self, v19, v20);
      objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v13, v22, v21, v16);
    }

    objc_msgSend_insertObject_atIndex_(self->_childInfos, v19, v30, a4);
    if (objc_msgSend_tsp_isInDocument(self, v23, v24))
    {
      v27 = objc_msgSend_documentRoot(self, v25, v26);
      objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v13, v28, v27, v16);
    }

    v6 = v30;
  }
}

- (void)insertChildInfo:(id)a3 below:(id)a4
{
  v11 = a3;
  v7 = a4;
  childInfos = self->_childInfos;
  if (childInfos)
  {
    v9 = objc_msgSend_indexOfObjectIdenticalTo_(childInfos, v6, v7);
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_insertChildInfo_atIndex_(self, v10, v11, v9);
    }
  }
}

- (void)insertChildInfo:(id)a3 above:(id)a4
{
  v11 = a3;
  v7 = a4;
  childInfos = self->_childInfos;
  if (childInfos)
  {
    v9 = objc_msgSend_indexOfObjectIdenticalTo_(childInfos, v6, v7);
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_insertChildInfo_atIndex_(self, v10, v11, v9 + 1);
    }
  }
}

- (void)moveChildren:(id)a3 toIndexes:(id)a4
{
  v52 = a3;
  v6 = a4;
  v9 = objc_msgSend_count(v52, v7, v8);
  v12 = objc_msgSend_count(v6, v10, v11);
  Index = objc_msgSend_lastIndex(v6, v13, v14);
  v18 = objc_msgSend_count(self->_childInfos, v16, v17);
  v21 = v18;
  if (v9 != v12)
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSDContainerInfo moveChildren:toIndexes:]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDContainerInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v42, v39, v41, 239, 0, "Can't move drawables to indexes, counts don't match.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
    if (Index < v21)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (Index >= v18)
  {
LABEL_9:
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSDContainerInfo moveChildren:toIndexes:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDContainerInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v49, v46, v48, 240, 0, "Can't move drawables to indexes, one or more indexes out of range.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
    goto LABEL_10;
  }

  v22 = objc_msgSend_mutableCopy(self->_childInfos, v19, v20);
  objc_msgSend_removeObjectsInArray_(v22, v23, v52);
  v28 = v21 - v9;
  if (objc_msgSend_count(v22, v24, v25) != v21 - v9)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSDContainerInfo moveChildren:toIndexes:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDContainerInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 246, 0, "Can't move drawables to indexes, not all drawables are in this container.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
  }

  if (objc_msgSend_count(v22, v26, v27) == v28)
  {
    objc_msgSend_insertObjects_atIndexes_(v22, v36, v52, v6);
    objc_msgSend_setChildInfos_(self, v37, v22);
  }

LABEL_10:
}

- (void)replaceChildInfo:(id)a3 with:(id)a4
{
  v26 = a3;
  v7 = a4;
  childInfos = self->_childInfos;
  if (childInfos)
  {
    v9 = objc_msgSend_indexOfObjectIdenticalTo_(childInfos, v6, v26);
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v9;
      objc_msgSend_willChangeProperty_(self, v10, 514);
      v12 = TSUProtocolCast();
      if (objc_msgSend_tsp_isInDocument(self, v13, v14, &unk_2885A1AA0))
      {
        v17 = objc_msgSend_documentRoot(self, v15, v16);
        objc_msgSend_willBeRemovedFromDocumentRoot_(v12, v18, v17);
      }

      objc_msgSend_removeObjectAtIndex_(self->_childInfos, v15, v11);
      objc_msgSend_setParentInfo_(v26, v19, 0);
      if (objc_msgSend_tsp_isInDocument(self, v20, v21))
      {
        v24 = objc_msgSend_documentRoot(self, v22, v23);
        objc_msgSend_wasRemovedFromDocumentRoot_(v12, v25, v24);
      }

      objc_msgSend_insertChildInfo_atIndex_(self, v22, v7, v11);
    }
  }
}

- (void)beginCollectingChanges
{
  if (!self->_changes || (v3 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDContainerInfo beginCollectingChanges]"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDContainerInfo.m"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 287, 0, "don't try to beginCollectingChanges when we are already collecting"), v6, v4, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9), !self->_changes))
  {
    v10 = objc_alloc_init(MEMORY[0x277D80AC8]);
    changes = self->_changes;
    self->_changes = v10;
  }
}

- (void)willChangeProperty:(int)a3
{
  v3 = *&a3;
  objc_msgSend_willModify(self, a2, *&a3);
  changes = self->_changes;

  MEMORY[0x2821F9670](changes, sel_addChangedProperty_, v3);
}

- (void)willChangeProperties:(id)a3
{
  v7 = a3;
  objc_msgSend_willModify(self, v4, v5);
  objc_msgSend_addChangedProperties_(self->_changes, v6, v7);
}

- (id)endCollectingChanges
{
  changes = self->_changes;
  if (!changes)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDContainerInfo endCollectingChanges]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDContainerInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 310, 0, "don't try to endCollectingChanges without calling -beginCollectingChanges first");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    changes = self->_changes;
  }

  v11 = changes;
  v12 = self->_changes;
  self->_changes = 0;

  return changes;
}

- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ((objc_msgSend_wasUnarchived(v7, v8, v9) & 1) == 0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = self->_childInfos;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v17, v21, 16);
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

          objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(*(*(&v17 + 1) + 8 * v16++), v13, v6, v7, v17);
        }

        while (v14 != v16);
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v17, v21, 16);
      }

      while (v14);
    }
  }
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_context(v6, v8, v9);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v11, v10);

  if ((objc_msgSend_wasUnarchived(v7, v12, v13) & 1) == 0)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = self->_childInfos;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v21, v25, 16);
    if (v16)
    {
      v18 = v16;
      v19 = *v22;
      do
      {
        v20 = 0;
        do
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v14);
          }

          objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(*(&v21 + 1) + 8 * v20++), v17, v6, v7, v21);
        }

        while (v18 != v20);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v21, v25, 16);
      }

      while (v18);
    }
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_context(v4, v5, v6);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v8, v7);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_childInfos;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v16, v20, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_willBeRemovedFromDocumentRoot_(*(*(&v16 + 1) + 8 * v15++), v12, v4, v16);
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v16, v20, 16);
    }

    while (v13);
  }
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_childInfos;
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

        objc_msgSend_wasRemovedFromDocumentRoot_(*(*(&v12 + 1) + 8 * v11++), v8, v4, v12);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v12, v16, 16);
    }

    while (v9);
  }
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDContainerInfo mixingTypeWithObject:context:]", a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDContainerInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 353, 0, "TSDContainerInfo does not implement TSDMixing!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  return 1;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDContainerInfo mixedObjectWithFraction:ofObject:]", a3);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDContainerInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 359, 0, "TSDContainerInfo does not implement TSDMixing!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  return 0;
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v7 = [TSDMutableInfoGeometry alloc];
  if (*(a3 + 6))
  {
    v9 = objc_msgSend_initWithArchive_(v7, v8, *(a3 + 6));
  }

  else
  {
    v9 = objc_msgSend_initWithArchive_(v7, v8, &TSD::_GeometryArchive_default_instance_);
  }

  geometry = self->_geometry;
  self->_geometry = v9;

  if ((*(a3 + 16) & 2) != 0)
  {
    v11 = *(a3 + 7);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_276664ED0;
    v15[3] = &unk_27A6CC6A8;
    v15[4] = self;
    sub_276664E24(v6, v11, &unk_2885A16B8, v15);
  }

  if (*(a3 + 8) < 1)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    childInfos = self->_childInfos;
    self->_childInfos = v12;
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_276664F88;
    v14[3] = &unk_27A6CC598;
    v14[4] = self;
    sub_276664EDC(v6, a3 + 24, &unk_2885A16B8, v14);
  }
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v7 = a4;
  geometry = self->_geometry;
  *(a3 + 4) |= 1u;
  v9 = *(a3 + 6);
  v39 = v7;
  if (!v9)
  {
    v10 = *(a3 + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v10);
    *(a3 + 6) = v9;
    v7 = v39;
  }

  objc_msgSend_saveToArchive_archiver_(geometry, v6, v9, v7);
  v13 = objc_msgSend_parentInfo(self, v11, v12);

  if (v13)
  {
    v16 = objc_msgSend_parentInfo(self, v14, v15);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSDContainerInfo(PersistenceAdditions) saveToArchive:archiver:]");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDContainerInfoPersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 46, 0, "parent info is not a TSPObject");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
    }

    v28 = objc_msgSend_parentInfo(self, v18, v19);
    *(a3 + 4) |= 2u;
    v29 = *(a3 + 7);
    if (!v29)
    {
      v30 = *(a3 + 1);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = MEMORY[0x277C9BB20](v30);
      *(a3 + 7) = v29;
    }

    objc_msgSend_setStrongReference_message_(v39, v27, v28, v29);
  }

  v31 = objc_msgSend_childInfos(self, v14, v15);
  v34 = objc_msgSend_count(v31, v32, v33);

  if (v34)
  {
    v37 = objc_msgSend_childInfos(self, v35, v36);
    objc_msgSend_setStrongReferenceArray_message_(v39, v38, v37, a3 + 24);
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDContainerInfo(PersistenceAdditions) loadFromUnarchiver:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDContainerInfoPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 56, 0, "TSDContainerInfo needs a separate intializer for subclass unarchiving");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v17 = v4;
  google::protobuf::internal::AssignDescriptors();
  v15 = objc_msgSend_messageWithDescriptor_(v17, v14, off_2812F5188[72]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v16, v15, v17);
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_276665400, off_2812F5188[72]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, v7);
}

@end