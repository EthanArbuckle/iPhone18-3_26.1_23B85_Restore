@interface TSPDeepCopyObjectMap
- (id)deepCopyForObject:(id)a3;
- (id)objectForDeepCopy:(id)a3;
- (void)didReadObjects:(id)a3;
- (void)didWriteObjects:(id)a3;
@end

@implementation TSPDeepCopyObjectMap

- (void)didWriteObjects:(id)a3
{
  v5 = a3;
  if (self->_archivedObjects || self->_deepCopyIdentifierToOriginalObject)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPDeepCopyObjectMap didWriteObjects:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDeepCopyObjectMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 20, 0, "You should not re-use TSPDeepCopyObjectMap instances.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  archivedObjects = self->_archivedObjects;
  self->_archivedObjects = v5;
}

- (void)didReadObjects:(id)a3
{
  v5 = a3;
  if (self->_originalIdentifierToDeepCopyObject)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPDeepCopyObjectMap didReadObjects:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDeepCopyObjectMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 26, 0, "You should not re-use TSPDeepCopyObjectMap instances.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  originalIdentifierToDeepCopyObject = self->_originalIdentifierToDeepCopyObject;
  self->_originalIdentifierToDeepCopyObject = v5;
}

- (id)deepCopyForObject:(id)a3
{
  v4 = a3;
  originalIdentifierToDeepCopyObject = self->_originalIdentifierToDeepCopyObject;
  v8 = objc_msgSend_tsp_identifier(v4, v6, v7);
  v10 = objc_msgSend_tsp_objectForIdentifier_(originalIdentifierToDeepCopyObject, v9, v8);

  return v10;
}

- (id)objectForDeepCopy:(id)a3
{
  v6 = a3;
  deepCopyIdentifierToOriginalObject = self->_deepCopyIdentifierToOriginalObject;
  if (!deepCopyIdentifierToOriginalObject)
  {
    if (self->_archivedObjects)
    {
      v8 = MEMORY[0x277CCAB00];
      v9 = objc_msgSend_count(self->_originalIdentifierToDeepCopyObject, v4, v5);
      v11 = objc_msgSend_newTspStrongObjectsMapTableWithCapacity_(v8, v10, v9);
      v12 = self->_deepCopyIdentifierToOriginalObject;
      self->_deepCopyIdentifierToOriginalObject = v11;

      originalIdentifierToDeepCopyObject = self->_originalIdentifierToDeepCopyObject;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_276AA4A14;
      v20[3] = &unk_27A6E2988;
      v20[4] = self;
      objc_msgSend_tsp_enumerateIdentifiersAndObjectsUsingBlock_(originalIdentifierToDeepCopyObject, v14, v20);
      archivedObjects = self->_archivedObjects;
      self->_archivedObjects = 0;

      deepCopyIdentifierToOriginalObject = self->_deepCopyIdentifierToOriginalObject;
    }

    else
    {
      deepCopyIdentifierToOriginalObject = 0;
    }
  }

  v16 = objc_msgSend_tsp_identifier(v6, v4, v5);
  v18 = objc_msgSend_tsp_objectForIdentifier_(deepCopyIdentifierToOriginalObject, v17, v16);

  return v18;
}

@end