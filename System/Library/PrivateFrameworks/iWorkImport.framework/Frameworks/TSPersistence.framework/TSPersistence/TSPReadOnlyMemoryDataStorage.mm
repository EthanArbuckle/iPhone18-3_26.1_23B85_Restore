@interface TSPReadOnlyMemoryDataStorage
- (BOOL)archiveInfoMessage:(void *)a3 archiver:(id)a4 packageWriter:(id)a5;
- (TSPReadOnlyMemoryDataStorage)initWithNSData:(id)a3;
- (void)performIOChannelReadWithAccessor:(id)a3;
@end

@implementation TSPReadOnlyMemoryDataStorage

- (TSPReadOnlyMemoryDataStorage)initWithNSData:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TSPReadOnlyMemoryDataStorage;
  v6 = [(TSPReadOnlyMemoryDataStorage *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_NSData, a3);
    v8 = v7;
  }

  return v7;
}

- (void)performIOChannelReadWithAccessor:(id)a3
{
  v7 = a3;
  v4 = [TSPMemoryReadChannel alloc];
  v6 = objc_msgSend_initWithNSData_(v4, v5, self->_NSData);
  v7[2](v7, v6);
}

- (BOOL)archiveInfoMessage:(void *)a3 archiver:(id)a4 packageWriter:(id)a5
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReadOnlyMemoryDataStorage archiveInfoMessage:archiver:packageWriter:]", a4, a5);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadOnlyMemoryDataStorage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 35, 0, "Cannot save read only TSPData to a document");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  return 0;
}

@end