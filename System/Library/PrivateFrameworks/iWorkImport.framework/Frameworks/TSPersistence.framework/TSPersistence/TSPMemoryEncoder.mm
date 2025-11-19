@interface TSPMemoryEncoder
- (id)encodedData;
- (id)metadataData;
- (id)newMetadataComponentWriteChannel;
- (id)newRootObjectComponentWriteChannel;
- (id)rootObjectComponentData;
@end

@implementation TSPMemoryEncoder

- (id)encodedData
{
  v6 = objc_msgSend_serializedData(self->_metadataWriteChannel, a2, v2);
  if (!v6)
  {
    v12 = 0;
    goto LABEL_17;
  }

  v7 = objc_msgSend_serializedData(self->_rootComponentWriteChannel, v4, v5);
  if (v7)
  {
    size = dispatch_data_get_size(v6);
    if (HIDWORD(size))
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPMemoryEncoder encodedData]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMemoryEncoder.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 68, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
      v10 = -1;
      v25 = -1;
    }

    else
    {
      v10 = size;
      LOBYTE(v25) = size | 0x80;
      if (size < 0x80)
      {
        LOBYTE(v25) = size;
        v11 = 1;
        goto LABEL_15;
      }

      BYTE1(v25) = (size >> 7) | 0x80;
      if (size < 0x4000)
      {
        BYTE1(v25) = size >> 7;
        v11 = 2;
        goto LABEL_15;
      }

      BYTE2(v25) = (size >> 14) | 0x80;
      if (size < 0x200000)
      {
        BYTE2(v25) = size >> 14;
        v11 = 3;
        goto LABEL_15;
      }

      HIBYTE(v25) = (size >> 21) | 0x80;
      if (!(size >> 28))
      {
        HIBYTE(v25) = size >> 21;
        v11 = 4;
        goto LABEL_15;
      }
    }

    v26 = v10 >> 28;
    v11 = 5;
LABEL_15:
    v13 = dispatch_data_get_size(v7) + v10;
    v14 = malloc_type_malloc(v13 + v11, 0x100004077774924uLL);
    memcpy(v14, &v25, v11);
    applier = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = sub_276AD33E4;
    v30 = &unk_27A6E30C0;
    v31 = &v14[v11];
    dispatch_data_apply(v6, &applier);
    applier = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = sub_276AD33E4;
    v30 = &unk_27A6E30C0;
    v31 = &v14[v11 + v10];
    dispatch_data_apply(v7, &applier);
    v15 = objc_alloc(MEMORY[0x277CBEA90]);
    v12 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v15, v16, v14, v13 + v11, 1);
    goto LABEL_16;
  }

  v12 = 0;
LABEL_16:

LABEL_17:

  return v12;
}

- (id)metadataData
{
  v3 = MEMORY[0x277CBEA90];
  v4 = objc_msgSend_metadataDispatchData(self, a2, v2);
  v6 = objc_msgSend_tsp_dataFromDispatchData_(v3, v5, v4);

  return v6;
}

- (id)rootObjectComponentData
{
  v3 = MEMORY[0x277CBEA90];
  v4 = objc_msgSend_rootObjectComponentDispatchData(self, a2, v2);
  v6 = objc_msgSend_tsp_dataFromDispatchData_(v3, v5, v4);

  return v6;
}

- (id)newMetadataComponentWriteChannel
{
  if (self->_metadataWriteChannel)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPMemoryEncoder newMetadataComponentWriteChannel]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMemoryEncoder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 108, 0, "expected nil value for '%{public}s'", "_metadataWriteChannel");

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
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPMemoryEncoder newRootObjectComponentWriteChannel]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMemoryEncoder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 114, 0, "expected nil value for '%{public}s'", "_rootComponentWriteChannel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v10 = objc_alloc_init(TSPMemoryComponentWriteChannel);
  rootComponentWriteChannel = self->_rootComponentWriteChannel;
  self->_rootComponentWriteChannel = v10;

  v12 = self->_rootComponentWriteChannel;

  return v12;
}

@end