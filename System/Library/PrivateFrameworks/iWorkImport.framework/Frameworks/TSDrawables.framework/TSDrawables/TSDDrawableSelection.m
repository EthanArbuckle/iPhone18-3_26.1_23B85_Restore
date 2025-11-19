@interface TSDDrawableSelection
- (BOOL)containsKindOfClass:(Class)a3;
- (BOOL)containsUnlockedKindOfClass:(Class)a3;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (NSSet)infos;
- (NSSet)infosWithNonInteractiveInfos;
- (NSSet)nonInteractiveInfos;
- (NSSet)unlockedInfos;
- (TSDDrawableSelection)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSDDrawableSelection)initWithInfos:(id)a3;
- (TSDDrawableSelection)initWithInteractiveInfos:(id)a3 nonInteractiveInfos:(id)a4;
- (id)UUIDDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)infosOfClass:(Class)a3;
- (unint64_t)hash;
- (unint64_t)infoCount;
- (unint64_t)unlockedInfoCount;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSDDrawableSelection

- (TSDDrawableSelection)initWithInfos:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v8 = objc_msgSend_set(v4, v6, v7);
  v10 = objc_msgSend_initWithInteractiveInfos_nonInteractiveInfos_(self, v9, v5, v8);

  return v10;
}

- (TSDDrawableSelection)initWithInteractiveInfos:(id)a3 nonInteractiveInfos:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = TSDDrawableSelection;
  v10 = [(TSDDrawableSelection *)&v27 init];
  if (v10)
  {
    v11 = objc_msgSend_count(v6, v8, v9);
    if (!(v11 + objc_msgSend_count(v7, v12, v13)))
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSDDrawableSelection initWithInteractiveInfos:nonInteractiveInfos:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableSelection.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 36, 0, "Must have at least one info in a drawable selection");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }

    v22 = [TSDInfoCollectionSelectionHelper alloc];
    v24 = objc_msgSend_initWithInteractiveInfos_nonInteractiveInfos_(v22, v23, v6, v7);
    selectionHelper = v10->_selectionHelper;
    v10->_selectionHelper = v24;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_selectionHelper(self, v5, v6);
  v10 = objc_msgSend_modelInfos(v7, v8, v9);
  v13 = objc_msgSend_selectionHelper(self, v11, v12);
  v16 = objc_msgSend_nonInteractiveInfos(v13, v14, v15);
  v18 = objc_msgSend_initWithInteractiveInfos_nonInteractiveInfos_(v4, v17, v10, v16);

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqual = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (objc_msgSend_isMemberOfClass_(v4, v6, v5))
    {
      v7 = v4;
      v10 = objc_msgSend_selectionHelper(self, v8, v9);
      v13 = objc_msgSend_selectionHelper(v7, v11, v12);

      isEqual = objc_msgSend_isEqual_(v10, v14, v13);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_selectionHelper(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (NSSet)infos
{
  v3 = objc_msgSend_selectionHelper(self, a2, v2);
  v6 = objc_msgSend_modelInfos(v3, v4, v5);

  return v6;
}

- (NSSet)infosWithNonInteractiveInfos
{
  v3 = objc_msgSend_selectionHelper(self, a2, v2);
  v6 = objc_msgSend_infosWithNonInteractiveInfos(v3, v4, v5);

  return v6;
}

- (NSSet)nonInteractiveInfos
{
  v3 = objc_msgSend_selectionHelper(self, a2, v2);
  v6 = objc_msgSend_nonInteractiveInfos(v3, v4, v5);

  return v6;
}

- (unint64_t)infoCount
{
  v3 = objc_msgSend_infos(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5);

  return v6;
}

- (BOOL)isEmpty
{
  v3 = objc_msgSend_infos(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5) == 0;

  return v6;
}

- (BOOL)containsKindOfClass:(Class)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = objc_msgSend_infos(self, a2, a3, 0, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_opt_isKindOfClass())
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v9, &v12, v16, 16);
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (NSSet)unlockedInfos
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_infos(self, v4, v5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_27670D100;
  v10[3] = &unk_27A6CD328;
  v10[4] = v3;
  v8 = objc_msgSend_objectsPassingTest_(v6, v7, v10);

  return v8;
}

- (unint64_t)unlockedInfoCount
{
  v3 = objc_msgSend_unlockedInfos(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5);

  return v6;
}

- (BOOL)containsUnlockedKindOfClass:(Class)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = objc_msgSend_infos(self, a2, a3, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v14, v18, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && !objc_msgSend_isLocked(v9, v10, v11))
          {
            v12 = 1;
            goto LABEL_13;
          }
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v10, &v14, v18, 16);
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (id)infosOfClass:(Class)a3
{
  v4 = objc_msgSend_infos(self, a2, a3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_27670D368;
  v8[3] = &unk_27A6CD348;
  v8[4] = a3;
  v6 = objc_msgSend_objectsPassingTest_(v4, v5, v8);

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_selectionHelper(self, v6, v7);
  v11 = objc_msgSend_subclassDescription(self, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v3, v12, @"<%@: %@ %@>", v5, v8, v11);

  return v13;
}

- (id)UUIDDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_selectionHelper(self, v6, v7);
  v11 = objc_msgSend_UUIDDescription(v8, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v3, v12, @"<%@: %@>", v5, v11);

  return v13;
}

- (TSDDrawableSelection)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v21.receiver = self;
  v21.super_class = TSDDrawableSelection;
  v7 = [(TSDDrawableSelection *)&v21 init];
  if (v7)
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = sub_27679B144;
    v19[4] = sub_27679B154;
    v20 = objc_alloc_init(MEMORY[0x277CBEB98]);
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = sub_27679B144;
    v17[4] = sub_27679B154;
    v18 = objc_alloc_init(MEMORY[0x277CBEB98]);
    v8 = *(a3 + 12);
    if (*(a3 + 6) >= 1)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_27679B208;
      v16[3] = &unk_27A6CDD58;
      v16[4] = v19;
      sub_27679B15C(v6, a3 + 16, &unk_2885A16B8, v16);
    }

    if (v8 >= 1)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_27679B288;
      v15[3] = &unk_27A6CDD58;
      v15[4] = v17;
      sub_27679B15C(v6, a3 + 40, &unk_2885A16B8, v15);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_27679B308;
    v11[3] = &unk_27A6CDD80;
    v12 = v7;
    v13 = v19;
    v14 = v17;
    objc_msgSend_addFinalizeHandler_(v6, v9, v11);

    _Block_object_dispose(v17, 8);
    _Block_object_dispose(v19, 8);
  }

  return v7;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v14 = a4;
  v6 = objc_opt_class();
  v8 = objc_msgSend_infosOfClass_(self, v7, v6);
  objc_msgSend_setWeakReferenceSet_message_(v14, v9, v8, a3 + 16);
  v12 = objc_msgSend_nonInteractiveInfos(self, v10, v11);
  objc_msgSend_setWeakReferenceSet_message_(v14, v13, v12, a3 + 40);
}

@end