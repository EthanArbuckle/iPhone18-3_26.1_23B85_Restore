@interface TSCHStyleOwnerUUIDDecoder
+ (id)UUIDDecoderWithUUID:(id)d;
- (TSCHStyleOwnerUUIDDecoder)initWithUUID:(id)d;
- (unint64_t)decodeUInt64;
- (unsigned)decodeByte;
- (void)endDecode;
@end

@implementation TSCHStyleOwnerUUIDDecoder

+ (id)UUIDDecoderWithUUID:(id)d
{
  dCopy = d;
  v5 = [self alloc];
  v10 = objc_msgSend_initWithUUID_(v5, v6, v7, v8, v9, dCopy);

  return v10;
}

- (TSCHStyleOwnerUUIDDecoder)initWithUUID:(id)d
{
  dCopy = d;
  v26.receiver = self;
  v26.super_class = TSCHStyleOwnerUUIDDecoder;
  v6 = [(TSCHStyleOwnerUUIDDecoder *)&v26 init];
  if (v6)
  {
    if (!dCopy)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCHStyleOwnerUUIDDecoder initWithUUID:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 814, 0, "invalid nil value for '%{public}s'", "uuid");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    }

    objc_msgSend_getUUIDBytes_(dCopy, v5, v7, v8, v9, v6->_UUID);
  }

  return v6;
}

- (unsigned)decodeByte
{
  if (objc_msgSend_p_hasSpaceToDecodeNumberOfBytes_(self, a2, v2, v3, v4, 1))
  {
    index = self->_index;
    result = self->_UUID[index];
    self->_index = index + 1;
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHStyleOwnerUUIDDecoder decodeByte]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 831, 0, "Run out of bytes to decode from index %lu", self->_index);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    return 0;
  }

  return result;
}

- (unint64_t)decodeUInt64
{
  if (objc_msgSend_p_hasSpaceToDecodeNumberOfBytes_(self, a2, v2, v3, v4, 8))
  {
    result = 0;
    index = self->_index;
    for (i = 15; i != 7; --i)
    {
      result = *(&self->super.isa + index + i) | (result << 8);
    }

    self->_index = index + 8;
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHStyleOwnerUUIDDecoder decodeUInt64]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 845, 0, "Run out of bytes to decode from index %lu", self->_index);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    return 0;
  }

  return result;
}

- (void)endDecode
{
  v46 = *MEMORY[0x277D85DE8];
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  uuid_copy(uu, self->_UUID);
  __src[0] = 0;
  __src[1] = 0;
  v7 = objc_msgSend_styleOwnerBaseUUID(TSCHStyleOwnerUUIDEncoder, v3, v4, v5, v6);
  objc_msgSend_getUUIDBytes_(v7, v8, v9, v10, v11, __src);

  index = self->_index;
  if (index)
  {
    memcpy(uu, __src, index);
  }

  if (uuid_compare(uu, __src))
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCHStyleOwnerUUIDDecoder endDecode]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    v24 = objc_alloc(MEMORY[0x277CCAD78]);
    v29 = objc_msgSend_initWithUUIDBytes_(v24, v25, v26, v27, v28, uu);
    v30 = objc_alloc(MEMORY[0x277CCAD78]);
    v35 = objc_msgSend_initWithUUIDBytes_(v30, v31, v32, v33, v34, __src);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v36, v37, v38, v39, v18, v23, 873, 0, "uuid mismatch %@ expects %@ for verification", v29, v35);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
  }
}

@end