@interface TSPDataAttributesSnapshot
+ (id)newSnapshotForContext:(id)context;
- (TSPDataAttributesSnapshot)init;
- (TSPDataAttributesSnapshot)initWithAttributesMap:(id)map;
- (id)attributesForData:(id)data;
@end

@implementation TSPDataAttributesSnapshot

+ (id)newSnapshotForContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = objc_msgSend_dataManager(contextCopy, v6, v7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276AE5190;
  v15[3] = &unk_27A6E7038;
  v9 = v5;
  v16 = v9;
  objc_msgSend_enumerateAllDataUsingBlock_(v8, v10, v15);

  v11 = [self alloc];
  v13 = objc_msgSend_initWithAttributesMap_(v11, v12, v9);

  return v13;
}

- (TSPDataAttributesSnapshot)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDataAttributesSnapshot init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataAttributesSnapshot.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 30, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPDataAttributesSnapshot init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPDataAttributesSnapshot)initWithAttributesMap:(id)map
{
  mapCopy = map;
  v9.receiver = self;
  v9.super_class = TSPDataAttributesSnapshot;
  v6 = [(TSPDataAttributesSnapshot *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributesMap, map);
  }

  return v7;
}

- (id)attributesForData:(id)data
{
  attributesMap = self->_attributesMap;
  v4 = objc_msgSend_digest(data, a2, data);
  v6 = objc_msgSend_objectForKeyedSubscript_(attributesMap, v5, v4);

  return v6;
}

@end