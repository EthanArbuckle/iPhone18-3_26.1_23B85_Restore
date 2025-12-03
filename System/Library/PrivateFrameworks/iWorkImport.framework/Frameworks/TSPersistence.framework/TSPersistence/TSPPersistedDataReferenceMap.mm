@interface TSPPersistedDataReferenceMap
- (BOOL)isAnyObjectIdentifierInDocument:(id)document;
- (NSString)description;
- (TSPPersistedDataReferenceMap)init;
- (TSPPersistedDataReferenceMap)initWithComponentDataReferenceInfoDictionary:(id)dictionary dataCount:(unint64_t)count objectCount:(unint64_t)objectCount;
- (id)allReferencesFromObjectIdentifier:(int64_t)identifier;
- (void)dealloc;
@end

@implementation TSPPersistedDataReferenceMap

- (TSPPersistedDataReferenceMap)initWithComponentDataReferenceInfoDictionary:(id)dictionary dataCount:(unint64_t)count objectCount:(unint64_t)objectCount
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = TSPPersistedDataReferenceMap;
  v9 = [(TSPPersistedDataReferenceMap *)&v15 init];
  v10 = v9;
  if (objectCount | count && v9)
  {
    v11 = [_TtC13TSPersistence22TSPMutableReferenceMap alloc];
    objc_msgSend_initWithCapacity_(v11, v12, count);
    v13 = objc_alloc_init(MEMORY[0x277CCAB58]);
    operator new();
  }

  return v10;
}

- (TSPPersistedDataReferenceMap)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPersistedDataReferenceMap init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPersistedDataReferenceMap.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 70, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPPersistedDataReferenceMap init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)dealloc
{
  objectToDataReferenceMap = self->_objectToDataReferenceMap;
  if (objectToDataReferenceMap)
  {
    v4 = sub_2769ABBE4(objectToDataReferenceMap);
    MEMORY[0x277C9F670](v4, 0x10A0C408EF24B1CLL);
  }

  v5.receiver = self;
  v5.super_class = TSPPersistedDataReferenceMap;
  [(TSPPersistedDataReferenceMap *)&v5 dealloc];
}

- (id)allReferencesFromObjectIdentifier:(int64_t)identifier
{
  identifierCopy = identifier;
  objectToDataReferenceMap = self->_objectToDataReferenceMap;
  if (objectToDataReferenceMap)
  {
    v4 = sub_2769ABC64(objectToDataReferenceMap, &identifierCopy);
    if (v4)
    {
      v5 = v4[3];
    }

    else
    {
      v5 = 0;
    }

    objectToDataReferenceMap = v5;
  }

  return objectToDataReferenceMap;
}

- (BOOL)isAnyObjectIdentifierInDocument:(id)document
{
  documentCopy = document;
  if (objc_msgSend_count(self->_objectIdentifiersInDocument, v5, v6) && objc_msgSend_count(documentCopy, v7, v8))
  {
    v10 = objc_msgSend_intersectsIndexSet_(documentCopy, v9, self->_objectIdentifiersInDocument);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277D811A8]);
  v5 = objc_msgSend_initWithObject_(v3, v4, self);
  v8 = v5;
  if (self->_dataToObjectReferenceMap)
  {
    objc_msgSend_addField_format_(v5, v6, @"references", @"%@", self->_dataToObjectReferenceMap);
  }

  v9 = objc_msgSend_descriptionString(v8, v6, v7);

  return v9;
}

@end