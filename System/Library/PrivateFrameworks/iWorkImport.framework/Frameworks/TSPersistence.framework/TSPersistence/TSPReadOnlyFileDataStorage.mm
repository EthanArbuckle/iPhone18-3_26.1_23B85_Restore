@interface TSPReadOnlyFileDataStorage
- (TSPReadOnlyFileDataStorage)initWithURL:(id)a3;
@end

@implementation TSPReadOnlyFileDataStorage

- (TSPReadOnlyFileDataStorage)initWithURL:(id)a3
{
  v5 = a3;
  if ((objc_msgSend_isFileURL(v5, v6, v7) & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPReadOnlyFileDataStorage initWithURL:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadOnlyFileDataStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 21, 0, "Expected a file URL");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v20.receiver = self;
  v20.super_class = TSPReadOnlyFileDataStorage;
  v16 = [(TSPReadOnlyFileDataStorage *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_URL, a3);
    v18 = v17;
  }

  return v17;
}

@end