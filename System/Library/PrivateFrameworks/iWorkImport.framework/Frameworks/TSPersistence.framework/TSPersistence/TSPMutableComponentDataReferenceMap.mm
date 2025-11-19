@interface TSPMutableComponentDataReferenceMap
- (TSPMutableComponentDataReferenceMap)initWithDataCapacity:(int64_t)a3 objectCapacity:(int64_t)a4;
- (TSPMutableComponentDataReferenceMap)initWithDataToObjectReferenceMap:(id)a3 objectToDataReferenceMap:(id)a4 objectIdentifiersWithoutUUID:(id)a5;
- (id)makeComponentDataReferenceMap;
- (int64_t)incrementReferenceFromObjectIdentifier:(int64_t)a3 toDataIdentifier:(int64_t)a4 objectHasUUID:(BOOL)a5 increment:(unint64_t)a6;
- (void)dealloc;
- (void)objectIdentifier:(int64_t)a3 didResetToObjectIdentifier:(int64_t)a4;
@end

@implementation TSPMutableComponentDataReferenceMap

- (TSPMutableComponentDataReferenceMap)initWithDataCapacity:(int64_t)a3 objectCapacity:(int64_t)a4
{
  if (a3 < 1)
  {
    v9 = 0;
  }

  else
  {
    v7 = [_TtC13TSPersistence22TSPMutableReferenceMap alloc];
    v9 = objc_msgSend_initWithCapacity_(v7, v8, a3);
  }

  if (a4 < 1)
  {
    v13 = 0;
    v12 = 0;
    v15 = objc_msgSend_initWithDataToObjectReferenceMap_objectToDataReferenceMap_objectIdentifiersWithoutUUID_(self, a2, v9, 0, 0);
  }

  else
  {
    v10 = [_TtC13TSPersistence22TSPMutableReferenceMap alloc];
    v12 = objc_msgSend_initWithCapacity_(v10, v11, a4);
    v13 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v15 = objc_msgSend_initWithDataToObjectReferenceMap_objectToDataReferenceMap_objectIdentifiersWithoutUUID_(self, v14, v9, v12, v13);
  }

  v16 = v15;

  return v16;
}

- (TSPMutableComponentDataReferenceMap)initWithDataToObjectReferenceMap:(id)a3 objectToDataReferenceMap:(id)a4 objectIdentifiersWithoutUUID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TSPMutableComponentDataReferenceMap;
  v12 = [(TSPMutableComponentDataReferenceMap *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataToObjectReferenceMap, a3);
    objc_storeStrong(&v13->_objectToDataReferenceMap, a4);
    objc_storeStrong(&v13->_objectIdentifiersWithoutUUID, a5);
  }

  return v13;
}

- (void)dealloc
{
  resetObjectIdentifiers = self->_resetObjectIdentifiers;
  if (resetObjectIdentifiers)
  {
    v4 = sub_2769BB184(resetObjectIdentifiers);
    MEMORY[0x277C9F670](v4, 0x10A0C408EF24B1CLL);
  }

  v5.receiver = self;
  v5.super_class = TSPMutableComponentDataReferenceMap;
  [(TSPMutableComponentDataReferenceMap *)&v5 dealloc];
}

- (int64_t)incrementReferenceFromObjectIdentifier:(int64_t)a3 toDataIdentifier:(int64_t)a4 objectHasUUID:(BOOL)a5 increment:(unint64_t)a6
{
  v33 = a3;
  if (!a4)
  {
    return 0;
  }

  resetObjectIdentifiers = self->_resetObjectIdentifiers;
  if (resetObjectIdentifiers)
  {
    v11 = sub_2769ABC64(resetObjectIdentifiers, &v33);
    if (v11)
    {
      v33 = v11[3];
    }
  }

  dataToObjectReferenceMap = self->_dataToObjectReferenceMap;
  if (!dataToObjectReferenceMap)
  {
    v13 = objc_alloc_init(_TtC13TSPersistence22TSPMutableReferenceMap);
    v14 = self->_dataToObjectReferenceMap;
    self->_dataToObjectReferenceMap = v13;

    dataToObjectReferenceMap = self->_dataToObjectReferenceMap;
  }

  v16 = objc_msgSend_incrementReferenceFromIdentifier_toIdentifier_increment_(dataToObjectReferenceMap, a2, a4, v33, a6);
  objectToDataReferenceMap = self->_objectToDataReferenceMap;
  if (!objectToDataReferenceMap)
  {
    v18 = objc_alloc_init(_TtC13TSPersistence22TSPMutableReferenceMap);
    v19 = self->_objectToDataReferenceMap;
    self->_objectToDataReferenceMap = v18;

    objectToDataReferenceMap = self->_objectToDataReferenceMap;
  }

  if (v16 != objc_msgSend_incrementReferenceFromIdentifier_toIdentifier_increment_(objectToDataReferenceMap, v15, v33, a4, a6))
  {
    TSUSetCrashReporterInfo();
    v27 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSPMutableComponentDataReferenceMap incrementReferenceFromObjectIdentifier:toDataIdentifier:objectHasUUID:increment:]", "[TSPMutableComponentDataReferenceMap incrementReferenceFromObjectIdentifier:toDataIdentifier:objectHasUUID:increment:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentDataReferenceMap.mm", 270);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentDataReferenceMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v29, v31, 270, 1, "Inconsistent internal structure for component data reference map.");

    TSUCrashBreakpoint();
    abort();
  }

  if (!a5)
  {
    objectIdentifiersWithoutUUID = self->_objectIdentifiersWithoutUUID;
    if (objectIdentifiersWithoutUUID)
    {
      objc_msgSend_addIndex_(objectIdentifiersWithoutUUID, v20, v33);
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x277CCAB58]);
      v24 = objc_msgSend_initWithIndex_(v22, v23, v33);
      v25 = self->_objectIdentifiersWithoutUUID;
      self->_objectIdentifiersWithoutUUID = v24;
    }
  }

  return v16;
}

- (void)objectIdentifier:(int64_t)a3 didResetToObjectIdentifier:(int64_t)a4
{
  v22[0] = a3;
  v7 = objc_msgSend_allReferencesFromIdentifier_(self->_objectToDataReferenceMap, a2, a4);

  if (v7)
  {
    TSUSetCrashReporterInfo();
    v15 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPMutableComponentDataReferenceMap objectIdentifier:didResetToObjectIdentifier:]", "[TSPMutableComponentDataReferenceMap objectIdentifier:didResetToObjectIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentDataReferenceMap.mm", 284);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentDataReferenceMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v17, v19, 284, 1, "Should not have references from the new object identifier.");

    TSUCrashBreakpoint();
    abort();
  }

  v9 = objc_msgSend_allReferencesFromIdentifier_(self->_objectToDataReferenceMap, v8, a3);
  v11 = v9;
  if (v9)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_276AA5AA8;
    v21[3] = &unk_27A6E66C8;
    v21[4] = self;
    v21[5] = a3;
    v21[6] = a4;
    objc_msgSend_enumerateIdentifiersUsingBlock_(v9, v10, v21);
  }

  if (objc_msgSend_containsIndex_(self->_objectIdentifiersWithoutUUID, v10, a3))
  {
    objc_msgSend_removeIndex_(self->_objectIdentifiersWithoutUUID, v12, a3);
    objc_msgSend_addIndex_(self->_objectIdentifiersWithoutUUID, v13, a4);
  }

  resetObjectIdentifiers = self->_resetObjectIdentifiers;
  if (!resetObjectIdentifiers)
  {
    operator new();
  }

  v22[2] = v22;
  sub_276AA5EAC(resetObjectIdentifiers, v22)[3] = a4;
}

- (id)makeComponentDataReferenceMap
{
  v3 = [TSPComponentDataReferenceMap alloc];
  v6 = objc_msgSend_makeReferenceMap(self->_dataToObjectReferenceMap, v4, v5);
  v9 = objc_msgSend_makeReferenceMap(self->_objectToDataReferenceMap, v7, v8);
  v12 = objc_msgSend_copy(self->_objectIdentifiersWithoutUUID, v10, v11);
  v14 = objc_msgSend_initWithDataToObjectReferenceMap_objectToDataReferenceMap_objectIdentifiersWithoutUUID_(v3, v13, v6, v9, v12);

  return v14;
}

@end