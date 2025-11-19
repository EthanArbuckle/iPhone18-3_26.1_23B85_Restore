@interface TSPPersistedObjectUUIDMap
- (BOOL)isAnyObjectIdentifierInDocument:(id)a3;
- (BOOL)setObjectLocation:(TSPObjectLocation)a3 forUUID:(id)a4 objectReferenceMap:(id)a5 delegate:(id)a6;
- (TSPObjectLocation)objectLocationForUUID:(id)a3;
- (TSPPersistedObjectUUIDMap)init;
- (TSPPersistedObjectUUIDMap)initWithComponentObjectUUIDMapDictionary:(id)a3 objectUUIDCount:(unint64_t)a4 isLoadingDocument:(BOOL)a5 objectReferenceMap:(id)a6 delegate:(id)a7;
- (TSPPersistedObjectUUIDMap)initWithPersistedObjectUUIDMap:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionForComponentIdentifier:(int64_t)a3 objectIdentifier:(int64_t)a4 delegate:(id)a5;
- (unint64_t)count;
- (void)dealloc;
- (void)didUpdateObjectIdentifierDuringRead:(int64_t)a3 UUID:(id)a4 componentIdentifier:(int64_t)a5 originalObjectIdentifier:(int64_t)a6 originalUUID:(id)a7 delegate:(id)a8;
- (void)didUpdateObjectIdentifierDuringRead:(int64_t)a3 forUUID:(id)a4 componentIdentifier:(int64_t)a5 originalObjectIdentifier:(int64_t)a6 delegate:(id)a7;
- (void)didUpdateUUIDDuringRead:(id)a3 forComponentIdentifier:(int64_t)a4 objectIdentifier:(int64_t)a5 originalUUID:(id)a6 isDuplicatedUUID:(BOOL)a7 delegate:(id)a8;
- (void)enumerateEntriesUsingBlock:(id)a3;
@end

@implementation TSPPersistedObjectUUIDMap

- (TSPPersistedObjectUUIDMap)initWithComponentObjectUUIDMapDictionary:(id)a3 objectUUIDCount:(unint64_t)a4 isLoadingDocument:(BOOL)a5 objectReferenceMap:(id)a6 delegate:(id)a7
{
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v18.receiver = self;
  v18.super_class = TSPPersistedObjectUUIDMap;
  v14 = [(TSPPersistedObjectUUIDMap *)&v18 init];
  if (v14)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v17 = 1;
    if (a4)
    {
      operator new();
    }

    _Block_object_dispose(v16, 8);
  }

  return v14;
}

- (TSPPersistedObjectUUIDMap)initWithPersistedObjectUUIDMap:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TSPPersistedObjectUUIDMap;
  v5 = [(TSPPersistedObjectUUIDMap *)&v8 init];
  v6 = v5;
  if (v4 && v5 && v4[1])
  {
    operator new();
  }

  return v6;
}

- (TSPPersistedObjectUUIDMap)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPersistedObjectUUIDMap init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPersistedObjectUUIDMap.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 78, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPPersistedObjectUUIDMap init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)dealloc
{
  map = self->_map;
  if (map)
  {
    v4 = sub_276A16E7C(map);
    MEMORY[0x277C9F670](v4, 0x10A0C408EF24B1CLL);
  }

  v5.receiver = self;
  v5.super_class = TSPPersistedObjectUUIDMap;
  [(TSPPersistedObjectUUIDMap *)&v5 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);

  return MEMORY[0x2821F9670](v7, sel_initWithPersistedObjectUUIDMap_, self);
}

- (id)descriptionForComponentIdentifier:(int64_t)a3 objectIdentifier:(int64_t)a4 delegate:(id)a5
{
  v7 = objc_msgSend_persistedObjectUUIDMap_needsDescriptionForComponentIdentifier_objectIdentifier_(a5, a2, self, a3, a4);
  v9 = v7;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"[component: %llu object: %llu]", a3, a4);;
  }

  v11 = v10;

  return v11;
}

- (BOOL)setObjectLocation:(TSPObjectLocation)a3 forUUID:(id)a4 objectReferenceMap:(id)a5 delegate:(id)a6
{
  v57 = a3;
  v56 = a4;
  v9 = a5;
  v10 = a6;
  map = self->_map;
  if (!map)
  {
    TSUSetCrashReporterInfo();
    v40 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSPPersistedObjectUUIDMap setObjectLocation:forUUID:objectReferenceMap:delegate:]", "[TSPPersistedObjectUUIDMap setObjectLocation:forUUID:objectReferenceMap:delegate:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPersistedObjectUUIDMap.mm", 123);
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPersistedObjectUUIDMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v45, v42, v44, 123, 1, "UUID map was initialized with no capacity.");

    TSUCrashBreakpoint();
    goto LABEL_12;
  }

  v12 = sub_276A17248(map, &v56, &v56);
  v14 = v13;
  if (v13)
  {
    objectIdentifiers = self->_objectIdentifiers;
    if (objectIdentifiers)
    {
      objc_msgSend_addIndex_(objectIdentifiers, v13, v57.var1);
      goto LABEL_9;
    }

    TSUSetCrashReporterInfo();
    v46 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "[TSPPersistedObjectUUIDMap setObjectLocation:forUUID:objectReferenceMap:delegate:]", "[TSPPersistedObjectUUIDMap setObjectLocation:forUUID:objectReferenceMap:delegate:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPersistedObjectUUIDMap.mm", 100, "_objectIdentifiers");
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPersistedObjectUUIDMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v51, v48, v50, 100, 1, "invalid nil value for '%{public}s'", "_objectIdentifiers");

    TSUCrashBreakpoint();
LABEL_12:
    abort();
  }

  v16 = v12;
  v52 = v9;
  v55 = v10;
  v54 = objc_msgSend_descriptionForComponentIdentifier_objectIdentifier_delegate_(self, v13, v12[3], v12[4], v10);
  v53 = objc_msgSend_descriptionForComponentIdentifier_objectIdentifier_delegate_(self, v17, v57.var0, v57.var1, v10);
  if (v9)
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = objc_msgSend_descriptionOfAllPossiblePathsToObjectIdentifier_withLimit_(v9, v18, v16[4], 20);
    v22 = objc_msgSend_stringWithFormat_(v19, v21, @" referenced by\n%@", v20);

    v23 = MEMORY[0x277CCACA8];
    v25 = objc_msgSend_descriptionOfAllPossiblePathsToObjectIdentifier_withLimit_(v9, v24, v57.var1, 20);
    v27 = objc_msgSend_stringWithFormat_(v23, v26, @" referenced by\n%@", v25);
  }

  else
  {
    v27 = &stru_2885C9BB8;
    v22 = &stru_2885C9BB8;
  }

  v28 = MEMORY[0x277D81150];
  v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPPersistedObjectUUIDMap setObjectLocation:forUUID:objectReferenceMap:delegate:]");
  v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPersistedObjectUUIDMap.mm");
  v34 = objc_msgSend_UUIDString(v56, v32, v33);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v29, v31, 116, 0, "There are two objects with the same UUID %{public}@:\n%{public}@%{public}@\nAND\n%{public}@%{public}@", v34, v54, v22, v53, v27);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
  objc_msgSend_persistedObjectUUIDMap_foundDuplicateUUID_firstObjectLocation_secondObjectLocation_(v55, v38, self, v56, v57.var0, v57.var1, v16[3], v16[4]);

  v9 = v52;
  v10 = v55;
LABEL_9:

  return v14 & 1;
}

- (TSPObjectLocation)objectLocationForUUID:(id)a3
{
  v11 = a3;
  map = self->_map;
  if (map && (v6 = sub_276A174D4(map, &v11, v4)) != 0)
  {
    v8 = v6[3];
    v7 = v6[4];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = v8;
  v10 = v7;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (void)didUpdateUUIDDuringRead:(id)a3 forComponentIdentifier:(int64_t)a4 objectIdentifier:(int64_t)a5 originalUUID:(id)a6 isDuplicatedUUID:(BOOL)a7 delegate:(id)a8
{
  v14 = a3;
  v54 = a6;
  v17 = a8;
  if (v54)
  {
    map = self->_map;
    if (map && (v19 = sub_276A174D4(map, &v54, v16), (v20 = v19) != 0))
    {
      if (!a7)
      {
        if (v19[4] != a5)
        {
          v21 = MEMORY[0x277D81150];
          v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPPersistedObjectUUIDMap didUpdateUUIDDuringRead:forComponentIdentifier:objectIdentifier:originalUUID:isDuplicatedUUID:delegate:]");
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPersistedObjectUUIDMap.mm");
          v24 = v20[4];
          v27 = objc_msgSend_UUIDString(v54, v25, v26);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v52, v23, 150, 0, "Unexpected object identifier %llu (actual=%llu) for UUID %{public}@", a5, v24, v27);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
        }

        if (v20[3] != a4)
        {
          v31 = MEMORY[0x277D81150];
          v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPPersistedObjectUUIDMap didUpdateUUIDDuringRead:forComponentIdentifier:objectIdentifier:originalUUID:isDuplicatedUUID:delegate:]");
          v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPersistedObjectUUIDMap.mm");
          v34 = v20[3];
          v37 = objc_msgSend_UUIDString(v54, v35, v36);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v38, v53, v33, 151, 0, "Unexpected component identifier %llu (actual=%llu) for UUID %{public}@", a4, v34, v37);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
        }
      }

      sub_2769D2814(self->_map, v20, v55);
      sub_276A171FC(v55);
      objc_msgSend_removeIndex_(self->_objectIdentifiers, v41, a5);
    }

    else if (!a7)
    {
      v42 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPPersistedObjectUUIDMap didUpdateUUIDDuringRead:forComponentIdentifier:objectIdentifier:originalUUID:isDuplicatedUUID:delegate:]");
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPersistedObjectUUIDMap.mm");
      v48 = objc_msgSend_UUIDString(v54, v46, v47);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v43, v45, 160, 0, "Unexpected missing UUID %{public}@", v48);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
    }
  }

  if (v14)
  {
    if (!self->_map)
    {
      operator new();
    }

    objc_msgSend_setObjectLocation_forUUID_objectReferenceMap_delegate_(self, v15, a4, a5, v14, 0, v17);
  }
}

- (void)didUpdateObjectIdentifierDuringRead:(int64_t)a3 forUUID:(id)a4 componentIdentifier:(int64_t)a5 originalObjectIdentifier:(int64_t)a6 delegate:(id)a7
{
  v52 = a4;
  v14 = a7;
  if (v52)
  {
    map = self->_map;
    if (map && (v16 = sub_276A174D4(map, &v52, v13), (v17 = v16) != 0))
    {
      if (v16[4] != a6)
      {
        v18 = MEMORY[0x277D81150];
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPPersistedObjectUUIDMap didUpdateObjectIdentifierDuringRead:forUUID:componentIdentifier:originalObjectIdentifier:delegate:]");
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPersistedObjectUUIDMap.mm");
        v21 = v17[4];
        v24 = objc_msgSend_UUIDString(v52, v22, v23);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v50, v20, 184, 0, "Unexpected object identifier %llu (actual=%llu) for UUID %{public}@", a6, v21, v24);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
      }

      if (v17[3] != a5)
      {
        v28 = MEMORY[0x277D81150];
        v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPPersistedObjectUUIDMap didUpdateObjectIdentifierDuringRead:forUUID:componentIdentifier:originalObjectIdentifier:delegate:]");
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPersistedObjectUUIDMap.mm");
        v31 = v17[3];
        v34 = objc_msgSend_UUIDString(v52, v32, v33);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v51, v30, 185, 0, "Unexpected component identifier %llu (actual=%llu) for UUID %{public}@", a5, v31, v34);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
      }

      sub_2769D2814(self->_map, v17, v53);
      sub_276A171FC(v53);
      objc_msgSend_removeIndex_(self->_objectIdentifiers, v38, a6);
    }

    else
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPPersistedObjectUUIDMap didUpdateObjectIdentifierDuringRead:forUUID:componentIdentifier:originalObjectIdentifier:delegate:]");
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPersistedObjectUUIDMap.mm");
      v46 = objc_msgSend_UUIDString(v52, v44, v45);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v41, v43, 192, 0, "Unexpected missing UUID %{public}@", v46);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
    }

    if (!self->_map)
    {
      operator new();
    }

    objc_msgSend_setObjectLocation_forUUID_objectReferenceMap_delegate_(self, v39, a5, a3, v52, 0, v14);
  }
}

- (void)didUpdateObjectIdentifierDuringRead:(int64_t)a3 UUID:(id)a4 componentIdentifier:(int64_t)a5 originalObjectIdentifier:(int64_t)a6 originalUUID:(id)a7 delegate:(id)a8
{
  v68 = a4;
  v67 = a7;
  v16 = a8;
  if (v68)
  {
    map = self->_map;
    if (!map)
    {
      goto LABEL_12;
    }

    v18 = sub_276A174D4(map, &v67, v15);
    v21 = v18;
    if (v18 && v18[4] != a6)
    {
      v22 = MEMORY[0x277D81150];
      v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPPersistedObjectUUIDMap didUpdateObjectIdentifierDuringRead:UUID:componentIdentifier:originalObjectIdentifier:originalUUID:delegate:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPersistedObjectUUIDMap.mm");
      v25 = v21[4];
      v28 = objc_msgSend_UUIDString(v67, v26, v27);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v65, v24, 214, 0, "Unexpected object identifier %llu (actual=%llu) for UUID %{public}@", a6, v25, v28);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
    }

    v32 = sub_276A174D4(self->_map, &v68, v20);
    v33 = v32;
    if (v32)
    {
      if (v32[4] != a3)
      {
        v34 = MEMORY[0x277D81150];
        v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPPersistedObjectUUIDMap didUpdateObjectIdentifierDuringRead:UUID:componentIdentifier:originalObjectIdentifier:originalUUID:delegate:]");
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPersistedObjectUUIDMap.mm");
        v37 = v33[4];
        v40 = objc_msgSend_UUIDString(v68, v38, v39);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v66, v36, 222, 0, "Unexpected object identifier %llu (actual=%llu) for UUID %{public}@", a3, v37, v40);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43);
      }

      if (v33[3] != a5)
      {
        v44 = MEMORY[0x277D81150];
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPPersistedObjectUUIDMap didUpdateObjectIdentifierDuringRead:UUID:componentIdentifier:originalObjectIdentifier:originalUUID:delegate:]");
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPersistedObjectUUIDMap.mm");
        v48 = v33[3];
        v51 = objc_msgSend_UUIDString(v68, v49, v50);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v52, v45, v47, 223, 0, "Unexpected component identifier %llu (actual=%llu) for UUID %{public}@", a5, v48, v51);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
      }
    }

    if (!v21)
    {
LABEL_12:
      v55 = MEMORY[0x277D81150];
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPPersistedObjectUUIDMap didUpdateObjectIdentifierDuringRead:UUID:componentIdentifier:originalObjectIdentifier:originalUUID:delegate:]");
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPersistedObjectUUIDMap.mm");
      v61 = objc_msgSend_UUIDString(v67, v59, v60);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v56, v58, 226, 0, "Unexpected missing UUID %{public}@", v61);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64);
    }

    if (!self->_map)
    {
      operator new();
    }

    objc_msgSend_setObjectLocation_forUUID_objectReferenceMap_delegate_(self, v14, a5, a3, v68, 0, v16);
  }
}

- (unint64_t)count
{
  map = self->_map;
  if (map)
  {
    return map[3];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isAnyObjectIdentifierInDocument:(id)a3
{
  v4 = a3;
  if (objc_msgSend_count(self->_objectIdentifiers, v5, v6) && objc_msgSend_count(v4, v7, v8))
  {
    if (v4)
    {
      v10 = objc_msgSend_intersectsIndexSet_(v4, v9, self->_objectIdentifiers);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)enumerateEntriesUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    map = self->_map;
    if (map)
    {
      v7 = 0;
      v6 = map + 16;
      do
      {
        v6 = *v6;
        if (!v6)
        {
          break;
        }

        (*(v4 + 2))(v4, v6[2], v6[3], v6[4], &v7);
      }

      while ((v7 & 1) == 0);
    }
  }
}

@end