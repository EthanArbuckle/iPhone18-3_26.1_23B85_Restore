@interface TSDCanvasSelection
+ (id)emptySelection;
- (BOOL)containsKindOfClass:(Class)a3;
- (BOOL)containsUnlockedKindOfClass:(Class)a3;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (NSSet)infos;
- (NSSet)infosWithNonInteractiveInfos;
- (NSSet)modelInfos;
- (NSSet)nonInteractiveInfos;
- (NSSet)unlockedInfos;
- (NSString)description;
- (TSDCanvasSelection)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSDCanvasSelection)initWithInfos:(id)a3;
- (TSDCanvasSelection)initWithInteractiveInfos:(id)a3 nonInteractiveInfos:(id)a4;
- (id)UUIDDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)infosOfClass:(Class)a3;
- (unint64_t)hash;
- (unint64_t)infoCount;
- (unint64_t)unlockedInfoCount;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSDCanvasSelection

- (TSDCanvasSelection)initWithInteractiveInfos:(id)a3 nonInteractiveInfos:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TSDCanvasSelection;
  v8 = [(TSDCanvasSelection *)&v14 init];
  if (v8)
  {
    v9 = [TSDInfoCollectionSelectionHelper alloc];
    v11 = objc_msgSend_initWithInteractiveInfos_nonInteractiveInfos_(v9, v10, v6, v7);
    selectionHelper = v8->_selectionHelper;
    v8->_selectionHelper = v11;
  }

  return v8;
}

- (TSDCanvasSelection)initWithInfos:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v8 = objc_msgSend_set(v4, v6, v7);
  v10 = objc_msgSend_initWithInteractiveInfos_nonInteractiveInfos_(self, v9, v5, v8);

  return v10;
}

- (NSSet)modelInfos
{
  v3 = objc_msgSend_selectionHelper(self, a2, v2);
  v6 = objc_msgSend_modelInfos(v3, v4, v5);

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

+ (id)emptySelection
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v4 = [a1 alloc];
  v6 = objc_msgSend_initWithInfos_(v4, v5, v3);

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_modelInfos(self, v5, v6);
  v10 = objc_msgSend_nonInteractiveInfos(self, v8, v9);
  v12 = objc_msgSend_initWithInteractiveInfos_nonInteractiveInfos_(v4, v11, v7, v10);

  return v12;
}

- (unint64_t)infoCount
{
  v3 = objc_msgSend_infos(self, a2, v2);
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

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    v4 = a3;
    objc_opt_class();
    v5 = TSUDynamicCast();

    if (!v5)
    {
      v26 = 0;
LABEL_11:

      return v26;
    }

    v8 = objc_msgSend_infos(self, v6, v7);
    v11 = objc_msgSend_count(v8, v9, v10);
    v14 = objc_msgSend_infos(v5, v12, v13);
    v17 = v14;
    if (v11)
    {
      isEqual = objc_msgSend_isEqual_(v8, v15, v14);

      if (isEqual)
      {
LABEL_5:
        v21 = objc_msgSend_selectionHelper(self, v19, v20);
        v24 = objc_msgSend_selectionHelper(v5, v22, v23);
        v26 = objc_msgSend_isEqual_(v21, v25, v24);

LABEL_10:
        goto LABEL_11;
      }
    }

    else
    {
      v27 = objc_msgSend_count(v14, v15, v16);

      if (!v27)
      {
        goto LABEL_5;
      }
    }

    v26 = 0;
    goto LABEL_10;
  }

  return 1;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_selectionHelper(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (BOOL)isEmpty
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_emptySelection(v3, v4, v5);
  LOBYTE(self) = objc_msgSend_isEqual_(self, v7, v6);

  return self;
}

- (id)infosOfClass:(Class)a3
{
  v4 = objc_msgSend_infos(self, a2, a3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276791E90;
  v8[3] = &unk_27A6CD348;
  v8[4] = a3;
  v6 = objc_msgSend_objectsPassingTest_(v4, v5, v8);

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
  v10[2] = sub_276792078;
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

- (NSString)description
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

- (TSDCanvasSelection)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v21.receiver = self;
  v21.super_class = TSDCanvasSelection;
  v7 = [(TSDCanvasSelection *)&v21 init];
  if (v7)
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = sub_2767C3B74;
    v19[4] = sub_2767C3B84;
    v20 = objc_alloc_init(MEMORY[0x277CBEB98]);
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = sub_2767C3B74;
    v17[4] = sub_2767C3B84;
    v18 = objc_alloc_init(MEMORY[0x277CBEB98]);
    v8 = *(a3 + 14);
    if (*(a3 + 8) >= 1)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_2767C3B8C;
      v16[3] = &unk_27A6CDD58;
      v16[4] = v19;
      sub_27679B15C(v6, a3 + 24, &unk_2885A16B8, v16);
    }

    if (v8 >= 1)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_2767C3C0C;
      v15[3] = &unk_27A6CDD58;
      v15[4] = v17;
      sub_27679B15C(v6, a3 + 48, &unk_2885A16B8, v15);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2767C3C8C;
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
  v20 = a4;
  v8 = objc_msgSend_selectionHelper(self, v6, v7);
  v11 = objc_msgSend_modelInfos(v8, v9, v10);
  objc_msgSend_setWeakReferenceSet_message_(v20, v12, v11, a3 + 24);

  v15 = objc_msgSend_selectionHelper(self, v13, v14);
  v18 = objc_msgSend_nonInteractiveInfos(v15, v16, v17);
  objc_msgSend_setWeakReferenceSet_message_(v20, v19, v18, a3 + 48);
}

@end