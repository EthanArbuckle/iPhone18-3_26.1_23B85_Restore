@interface TSPObjectInfo
- (NSArray)referencedData;
- (NSArray)referencedObjects;
- (TSPObjectInfo)init;
- (TSPObjectInfo)initWithObject:(id)object referenceDepth:(unint64_t)depth;
- (void)visitObject:(id)object rootObject:(id)rootObject referenceDepth:(unint64_t)depth;
- (void)visitObjectReferences:(id)references rootObject:(id)object referenceDepth:(unint64_t)depth;
@end

@implementation TSPObjectInfo

- (TSPObjectInfo)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectInfo init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectInfo.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 23, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPObjectInfo init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPObjectInfo)initWithObject:(id)object referenceDepth:(unint64_t)depth
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = TSPObjectInfo;
  v7 = [(TSPObjectInfo *)&v11 init];
  v9 = v7;
  if (v7)
  {
    objc_msgSend_visitObject_rootObject_referenceDepth_(v7, v8, objectCopy, objectCopy, depth);
  }

  return v9;
}

- (void)visitObject:(id)object rootObject:(id)rootObject referenceDepth:(unint64_t)depth
{
  v9 = [TSPReflectionArchiver alloc];
  v11 = objc_msgSend_initWithObject_(v9, v10, object);
  objc_msgSend_archive(v11, v12, v13);
  v30 = objc_msgSend_dataReferences(v11, v14, v15);
  v18 = objc_msgSend_strongReferences(v11, v16, v17);

  if (objc_msgSend_count(v30, v19, v20))
  {
    referencedDataHashTable = self->_referencedDataHashTable;
    if (!referencedDataHashTable)
    {
      v23 = objc_alloc(MEMORY[0x277CCAA50]);
      v26 = objc_msgSend_count(v30, v24, v25);
      v28 = objc_msgSend_initWithOptions_capacity_(v23, v27, 512, v26);
      v29 = self->_referencedDataHashTable;
      self->_referencedDataHashTable = v28;

      referencedDataHashTable = self->_referencedDataHashTable;
    }

    objc_msgSend_unionHashTable_(referencedDataHashTable, v21, v30);
  }

  objc_msgSend_visitObjectReferences_rootObject_referenceDepth_(self, v21, v18, rootObject, depth);
}

- (void)visitObjectReferences:(id)references rootObject:(id)object referenceDepth:(unint64_t)depth
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AEA1A8;
  v5[3] = &unk_27A6E7150;
  v5[4] = self;
  v5[5] = object;
  v5[6] = depth;
  objc_msgSend_enumerateItemsUsingBlock_(references, a2, v5);
}

- (NSArray)referencedData
{
  referencedData = self->_referencedData;
  if (!referencedData)
  {
    referencedData = self->_referencedDataHashTable;
    if (referencedData)
    {
      v5 = objc_msgSend_allObjects(referencedData, a2, v2);
      v6 = self->_referencedData;
      self->_referencedData = v5;

      referencedDataHashTable = self->_referencedDataHashTable;
      self->_referencedDataHashTable = 0;

      referencedData = self->_referencedData;
    }
  }

  return referencedData;
}

- (NSArray)referencedObjects
{
  referencedObjects = self->_referencedObjects;
  if (!referencedObjects)
  {
    referencedObjects = self->_referencedObjectsSet;
    if (referencedObjects)
    {
      v5 = objc_msgSend_allObjects(referencedObjects, a2, v2);
      v6 = self->_referencedObjects;
      self->_referencedObjects = v5;

      referencedObjectsSet = self->_referencedObjectsSet;
      self->_referencedObjectsSet = 0;

      referencedObjects = self->_referencedObjects;
    }
  }

  return referencedObjects;
}

@end