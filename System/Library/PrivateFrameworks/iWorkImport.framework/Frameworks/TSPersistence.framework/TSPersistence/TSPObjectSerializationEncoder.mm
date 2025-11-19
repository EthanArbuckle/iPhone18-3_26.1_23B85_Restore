@interface TSPObjectSerializationEncoder
- (TSPObjectSerializationEncoder)init;
- (id)newMetadataComponentWriteChannel;
- (id)newRootObjectComponentWriteChannel;
- (void)appendData:(id)a3 completion:(id)a4;
- (void)finishEncodingWithCompletion:(id)a3;
@end

@implementation TSPObjectSerializationEncoder

- (TSPObjectSerializationEncoder)init
{
  v7.receiver = self;
  v7.super_class = TSPObjectSerializationEncoder;
  v2 = [(TSPObjectSerializationEncoder *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("TSPObjectSerializationEncoder.Access", v3);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v4;

    objc_storeStrong(&v2->_encodedData, MEMORY[0x277D85CC8]);
  }

  return v2;
}

- (void)finishEncodingWithCompletion:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276ADB90C;
  v7[3] = &unk_27A6E4C58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

- (void)appendData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276ADBFDC;
    block[3] = &unk_27A6E6F30;
    block[4] = self;
    v12 = v7;
    v11 = v6;
    dispatch_async(accessQueue, block);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (id)newMetadataComponentWriteChannel
{
  if (self->_metadataWriteChannel)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectSerializationEncoder newMetadataComponentWriteChannel]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectSerializationEncoder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 169, 0, "expected nil value for '%{public}s'", "_metadataWriteChannel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v10 = objc_alloc_init(TSPMemoryComponentWriteChannel);
  metadataWriteChannel = self->_metadataWriteChannel;
  self->_metadataWriteChannel = v10;

  v12 = self->_metadataWriteChannel;

  return v12;
}

- (id)newRootObjectComponentWriteChannel
{
  if (self->_rootComponentWriteChannel)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectSerializationEncoder newRootObjectComponentWriteChannel]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectSerializationEncoder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 175, 0, "expected nil value for '%{public}s'", "_rootComponentWriteChannel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v10 = objc_alloc_init(TSPMemoryComponentWriteChannel);
  rootComponentWriteChannel = self->_rootComponentWriteChannel;
  self->_rootComponentWriteChannel = v10;

  v12 = self->_rootComponentWriteChannel;

  return v12;
}

@end