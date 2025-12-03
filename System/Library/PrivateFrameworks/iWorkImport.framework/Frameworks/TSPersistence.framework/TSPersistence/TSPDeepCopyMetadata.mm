@interface TSPDeepCopyMetadata
- (TSPDeepCopyMetadata)initWithContext:(id)context;
- (TSPDeepCopyMetadata)initWithRootObject:(id)object version:(unint64_t)version readVersion:(unint64_t)readVersion componentObjectUUIDMap:(id)map cachedDataMap:(id)dataMap;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSPDeepCopyMetadata

- (TSPDeepCopyMetadata)initWithContext:(id)context
{
  contextCopy = context;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPDeepCopyMetadata initWithContext:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDeepCopyMetadata.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 15, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", "Do not call method", "[TSPDeepCopyMetadata initWithContext:]");
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v15, *MEMORY[0x277CBE658], v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (TSPDeepCopyMetadata)initWithRootObject:(id)object version:(unint64_t)version readVersion:(unint64_t)readVersion componentObjectUUIDMap:(id)map cachedDataMap:(id)dataMap
{
  objectCopy = object;
  mapCopy = map;
  dataMapCopy = dataMap;
  v17 = objc_msgSend_context(objectCopy, v15, v16);
  v22.receiver = self;
  v22.super_class = TSPDeepCopyMetadata;
  v18 = [(TSPObject *)&v22 initWithContext:v17];

  if (v18)
  {
    v18->_rootObjectIdentifier = objc_msgSend_tsp_identifier(objectCopy, v19, v20);
    v18->_version = version;
    v18->_readVersion = readVersion;
    objc_storeStrong(&v18->_componentObjectUUIDMap, map);
    objc_storeStrong(&v18->_cachedDataMap, dataMap);
  }

  return v18;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPDeepCopyMetadata loadFromUnarchiver:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDeepCopyMetadata.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 31, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", "Do not call method", "[TSPDeepCopyMetadata loadFromUnarchiver:]");
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v15, *MEMORY[0x277CBE658], v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPDeepCopyMetadata saveToArchiver:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDeepCopyMetadata.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 35, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", "Do not call method", "[TSPDeepCopyMetadata saveToArchiver:]");
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v15, *MEMORY[0x277CBE658], v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

@end