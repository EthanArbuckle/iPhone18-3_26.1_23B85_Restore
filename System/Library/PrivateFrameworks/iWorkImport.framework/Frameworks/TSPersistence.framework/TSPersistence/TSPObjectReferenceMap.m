@interface TSPObjectReferenceMap
- (TSPObjectReferenceMap)init;
- (TSPObjectReferenceMap)initWithContext:(id)a3 delegate:(id)a4;
- (TSPObjectReferenceMap)initWithContext:(id)a3 delegate:(id)a4 externalReferencesFromComponent:(id)a5;
- (id).cxx_construct;
- (id)descriptionOfAllPossiblePathsToObject:(id)a3 withLimit:(unint64_t)a4;
- (id)descriptionOfAllPossiblePathsToObjectIdentifier:(int64_t)a3 withLimit:(unint64_t)a4;
- (id)parentObjectPathsForObjectIdentifier:(int64_t)a3 limit:(unint64_t)a4 totalParentObjects:(unint64_t *)a5;
- (id)parentObjectsForObject:(id)a3;
- (id)parentObjectsForObjectIdentifier:(int64_t)a3;
- (unint64_t)visitObjectWithIdentifier:(int64_t)a3 level:(unint64_t)a4 mode:(int)a5 limit:(unint64_t)a6 pathSuffix:(id)a7 visitedObjectIdentifiers:(id)a8 updatingParentObjectPaths:(id)a9;
- (void)addObjectReferenceMap:(id)a3;
- (void)addReferenceFromObjectIdentifier:(int64_t)a3 toObjectIdentifier:(int64_t)a4;
- (void)addReferenceFromObjectIdentifier:(int64_t)a3 toObjectOrLazyReference:(id)a4;
- (void)addReferencesFromObject:(id)a3 archiver:(id)a4;
- (void)mergeWithObjectReferenceMap:(id)a3;
@end

@implementation TSPObjectReferenceMap

- (TSPObjectReferenceMap)initWithContext:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TSPObjectReferenceMap;
  v8 = [(TSPObjectReferenceMap *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_context, v6);
    objc_storeWeak(&v9->_delegate, v7);
  }

  return v9;
}

- (TSPObjectReferenceMap)initWithContext:(id)a3 delegate:(id)a4 externalReferencesFromComponent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = objc_msgSend_initWithContext_delegate_(self, v11, v8, v9);
  if (v14)
  {
    v15 = objc_msgSend_identifier(v10, v12, v13);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_276A686EC;
    v18[3] = &unk_27A6E5470;
    v19 = v14;
    v20 = v15;
    objc_msgSend_enumerateExternalReferences_(v10, v16, v18);
  }

  return v14;
}

- (TSPObjectReferenceMap)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectReferenceMap init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectReferenceMap.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 228, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPObjectReferenceMap init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (id)parentObjectsForObject:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_tsp_identifier(v4, v5, v6);
  v9 = objc_msgSend_parentObjectsForObjectIdentifier_(self, v8, v7);

  return v9;
}

- (id)descriptionOfAllPossiblePathsToObject:(id)a3 withLimit:(unint64_t)a4
{
  v6 = a3;
  v9 = objc_msgSend_tsp_identifier(v6, v7, v8);
  v11 = objc_msgSend_descriptionOfAllPossiblePathsToObjectIdentifier_withLimit_(self, v10, v9, a4);

  return v11;
}

- (id)parentObjectsForObjectIdentifier:(int64_t)a3
{
  v21 = a3;
  v3 = a3 == 1 || a3 == 3;
  if (v3 || (v5 = sub_2769ABC64(&self->_inverseReferenceMap.__table_.__bucket_list_.__ptr_, &v21)) == 0)
  {
    v13 = 0;
  }

  else
  {
    v6 = v5;
    v7 = v5[4];
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v10 = objc_msgSend_initWithCapacity_(v8, v9, v7);
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v12 = objc_loadWeakRetained(&self->_delegate);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_276A68C1C;
    v17[3] = &unk_27A6E5498;
    v18 = v12;
    v19 = WeakRetained;
    v13 = v10;
    v20 = v13;
    v14 = WeakRetained;
    v15 = v12;
    sub_276A68AF0((v6 + 3), 0, v17);
  }

  return v13;
}

- (id)parentObjectPathsForObjectIdentifier:(int64_t)a3 limit:(unint64_t)a4 totalParentObjects:(unint64_t *)a5
{
  v19 = a3;
  v6 = a3 == 1 || a3 == 3;
  if (v6 || (v9 = sub_2769ABC64(&self->_inverseReferenceMap.__table_.__bucket_list_.__ptr_, &v19)) == 0)
  {
    if (a5)
    {
      v17 = 0;
      v11 = 0;
      goto LABEL_13;
    }

    v11 = 0;
  }

  else
  {
    v10 = v9;
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (a4)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v14 = objc_msgSend_visitObjectWithIdentifier_level_mode_limit_pathSuffix_visitedObjectIdentifiers_updatingParentObjectPaths_(self, v13, v19, 0, 1, a4, &stru_2885C9BB8, v12, v11);

      if (v14)
      {
        v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
        objc_msgSend_visitObjectWithIdentifier_level_mode_limit_pathSuffix_visitedObjectIdentifiers_updatingParentObjectPaths_(self, v16, v19, 0, 2, v14, &stru_2885C9BB8, v15, v11);
      }
    }

    if (a5)
    {
      v17 = v10[4];
LABEL_13:
      *a5 = v17;
    }
  }

  return v11;
}

- (id)descriptionOfAllPossiblePathsToObjectIdentifier:(int64_t)a3 withLimit:(unint64_t)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendString_(v7, v8, @"(\n");
  v9 = objc_autoreleasePoolPush();
  v25 = 0;
  objc_msgSend_parentObjectPathsForObjectIdentifier_limit_totalParentObjects_(self, v10, a3, a4, &v25);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v11 = v22 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v21, v26, 16);
  if (v14)
  {
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend_appendFormat_(v7, v13, @"    %@\n", *(*(&v21 + 1) + 8 * i));
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v21, v26, 16);
    }

    while (v14);
  }

  if (v25 > a4)
  {
    objc_msgSend_appendFormat_(v7, v17, @"    Total known parent objects: %tu\n", v25);
  }

  objc_autoreleasePoolPop(v9);
  objc_msgSend_appendString_(v7, v18, @""));
  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)addReferencesFromObject:(id)a3 archiver:(id)a4
{
  v12[0] = objc_msgSend_tsp_identifier(a3, a2, a3);
  v8 = objc_msgSend_aggregatedStrongReferences(a4, v6, v7);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276A69150;
  v11[3] = &unk_27A6E54C0;
  v11[4] = self;
  v11[5] = v12[0];
  objc_msgSend_enumerateItemsUsingBlock_(v8, v9, v11);

  if (!sub_2769ABC64(&self->_classMap.__table_.__bucket_list_.__ptr_, v12))
  {
    v10 = objc_opt_class();
    v12[2] = v12;
    sub_276A6A438(&self->_classMap.__table_.__bucket_list_.__ptr_, v12)[3] = v10;
  }
}

- (void)mergeWithObjectReferenceMap:(id)a3
{
  if (a3)
  {
    for (i = *(a3 + 5); i; i = *i)
    {
      v5 = i[2];
      v16 = v5;
      v6 = i[4];
      if (v6 >= 2)
      {
        v15 = i[4];
        sub_276A6A668();
      }

      if (v6 != 1)
      {
        v7 = MEMORY[0x277D81150];
        v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectReferenceMap mergeWithObjectReferenceMap:]");
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectReferenceMap.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 380, 0, "Unexpected empty info.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
        v5 = v16;
      }

      objc_msgSend_addReferenceFromObjectIdentifier_toObjectIdentifier_(self, a2, i[5], v5);
    }

    if (*(a3 + 10))
    {
      sub_276A6A76C();
    }
  }
}

- (void)addObjectReferenceMap:(id)a3
{
  if (a3)
  {
    v3 = *(a3 + 5);
    if (v3)
    {
      v15 = v3[2];
      sub_276A6A804(&self->_inverseReferenceMap.__table_.__bucket_list_.__ptr_, &v15);
      v5 = v3[4];
      if (v5 >= 2)
      {
        v13 = v3[4];
        sub_276A6A668();
      }

      if (v5 != 1)
      {
        v6 = MEMORY[0x277D81150];
        v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPObjectReferenceMap addObjectReferenceMap:]");
        v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectReferenceMap.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 410, 0, "Unexpected empty info.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
      }

      v14 = v3[5];
      sub_276A6A668();
    }

    if (*(a3 + 10))
    {
      sub_276A6A76C();
    }
  }
}

- (unint64_t)visitObjectWithIdentifier:(int64_t)a3 level:(unint64_t)a4 mode:(int)a5 limit:(unint64_t)a6 pathSuffix:(id)a7 visitedObjectIdentifiers:(id)a8 updatingParentObjectPaths:(id)a9
{
  v43 = a3;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  if (a6)
  {
    v18 = objc_alloc(MEMORY[0x277CCABB0]);
    v20 = objc_msgSend_initWithLongLong_(v18, v19, a3);
    objc_msgSend_addObject_(v16, v21, v20);

    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = a6;
    if (a3 == 1 || a3 == 3)
    {
      if (a4 <= 1 && a5 != 1 || !objc_msgSend_length(v15, v22, v23))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v26 = sub_2769ABC64(&self->_inverseReferenceMap.__table_.__bucket_list_.__ptr_, &v43);
      v28 = v26;
      if (v26)
      {
        if (a4)
        {
          v29 = a5;
        }

        else
        {
          v29 = 0;
        }

        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = sub_276A699A8;
        v31[3] = &unk_27A6E54E8;
        v36 = v43;
        v31[4] = self;
        v32 = v15;
        v38 = a5;
        v33 = v16;
        v37 = a4;
        v34 = v17;
        v35 = &v39;
        sub_276A68AF0((v28 + 3), v29, v31);

        goto LABEL_20;
      }

      if (a4 <= 1 && a5 != 1)
      {
LABEL_20:
        v25 = v40[3];
        _Block_object_dispose(&v39, 8);
        goto LABEL_21;
      }
    }

    objc_msgSend_addObject_(v17, v27, v15);
    --v40[3];
    goto LABEL_20;
  }

  v25 = 0;
LABEL_21:

  return v25;
}

- (void)addReferenceFromObjectIdentifier:(int64_t)a3 toObjectOrLazyReference:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = objc_msgSend_tsp_identifier(a4, v7, v8);

    objc_msgSend_addReferenceFromObjectIdentifier_toObjectIdentifier_(self, v9, a3, v10);
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPObjectReferenceMap addReferenceFromObjectIdentifier:toObjectOrLazyReference:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectReferenceMap.mm");
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v14, 503, 0, "Unexpected object class for a strong reference: %{public}@", v16);

    v20 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v20, v18, v19);
  }
}

- (void)addReferenceFromObjectIdentifier:(int64_t)a3 toObjectIdentifier:(int64_t)a4
{
  v6 = a3;
  v7 = a4;
  v4 = 0;
  v5 = 1;
  sub_276A6A850();
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 14) = 1065353216;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 24) = 1065353216;
  return self;
}

@end