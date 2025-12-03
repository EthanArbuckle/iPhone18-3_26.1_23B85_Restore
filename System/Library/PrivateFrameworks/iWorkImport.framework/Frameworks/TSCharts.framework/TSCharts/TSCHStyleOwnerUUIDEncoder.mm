@interface TSCHStyleOwnerUUIDEncoder
+ (id)UUIDEncoder;
+ (id)UUIDEncoderWithStyleOwnerPathType:(unsigned __int8)type;
+ (id)styleOwnerBaseUUID;
- (TSCHStyleOwnerUUIDEncoder)init;
- (id)encodedUUID;
- (void)encodeByte:(unsigned __int8)byte;
- (void)encodeUInt64:(unint64_t)int64;
@end

@implementation TSCHStyleOwnerUUIDEncoder

+ (id)styleOwnerBaseUUID
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2762E6A50;
  block[3] = &unk_27A6B6250;
  block[4] = self;
  if (qword_280A47A20 != -1)
  {
    dispatch_once(&qword_280A47A20, block);
  }

  v2 = qword_280A47A18;

  return v2;
}

+ (id)UUIDEncoderWithStyleOwnerPathType:(unsigned __int8)type
{
  typeCopy = type;
  if (!type)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCHStyleOwnerUUIDEncoder UUIDEncoderWithStyleOwnerPathType:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 738, 0, "invalid style owner path type");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_UUIDEncoder(TSCHStyleOwnerUUIDEncoder, a2, v3, v4, v5);
  objc_msgSend_encodeByte_(v22, v23, v24, v25, v26, typeCopy);

  return v22;
}

+ (id)UUIDEncoder
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSCHStyleOwnerUUIDEncoder)init
{
  v14.receiver = self;
  v14.super_class = TSCHStyleOwnerUUIDEncoder;
  v2 = [(TSCHStyleOwnerUUIDEncoder *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v8 = objc_msgSend_styleOwnerBaseUUID(v3, v4, v5, v6, v7);
    objc_msgSend_getUUIDBytes_(v8, v9, v10, v11, v12, v2->_UUID);
  }

  return v2;
}

- (void)encodeByte:(unsigned __int8)byte
{
  byteCopy = byte;
  if (objc_msgSend_hasSpaceToEncodeNumberOfBytes_(self, a2, v3, v4, v5, 1))
  {
    self->_UUID[self->_index++] = byteCopy;
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHStyleOwnerUUIDEncoder encodeByte:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 767, 0, "Run out of bytes to encode byte %lu from index %lu", byteCopy, self->_index);

    v27 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v27, v23, v24, v25, v26);
  }
}

- (void)encodeUInt64:(unint64_t)int64
{
  if (objc_msgSend_hasSpaceToEncodeNumberOfBytes_(self, a2, v3, v4, v5, 8))
  {
    UUID = self->_UUID;
    v13 = 8;
    do
    {
      UUID[self->_index] = int64;
      int64 >>= 8;
      ++UUID;
      --v13;
    }

    while (v13);
    self->_index += 8;
  }

  else
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHStyleOwnerUUIDEncoder encodeUInt64:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 782, 0, "Run out of bytes to encode uint64 %lu from index %lu", int64, self->_index);

    v29 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v29, v25, v26, v27, v28);
  }
}

- (id)encodedUUID
{
  self->_index = 16;
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = objc_msgSend_initWithUUIDBytes_(v3, v4, v5, v6, v7, self->_UUID);

  return v8;
}

@end