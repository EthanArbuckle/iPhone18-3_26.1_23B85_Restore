@interface TSCH3DNSData2DDataBuffer
+ (id)bufferWithCapacityDimension:(const void *)a3 data:(id)a4;
+ (id)bufferWithCapacityDimension:(const void *)a3 mutableData:(id)a4;
- (NSData)NSData;
- (TSCH3DNSData2DDataBuffer)initWithCapacityDimension:(const void *)a3;
- (TSCH3DNSData2DDataBuffer)initWithCapacityDimension:(const void *)a3 data:(id)a4;
- (TSCH3DNSData2DDataBuffer)initWithCapacityDimension:(const void *)a3 mutableData:(id)a4;
- (const)data;
- (unint64_t)count;
- (void)mutableData;
- (void)resizeFillDimension:(const void *)a3;
@end

@implementation TSCH3DNSData2DDataBuffer

+ (id)bufferWithCapacityDimension:(const void *)a3 mutableData:(id)a4
{
  v6 = a4;
  v7 = [a1 alloc];
  v12 = objc_msgSend_initWithCapacityDimension_mutableData_(v7, v8, v9, v10, v11, a3, v6);

  return v12;
}

+ (id)bufferWithCapacityDimension:(const void *)a3 data:(id)a4
{
  v6 = a4;
  v7 = [a1 alloc];
  v12 = objc_msgSend_initWithCapacityDimension_data_(v7, v8, v9, v10, v11, a3, v6);

  return v12;
}

- (TSCH3DNSData2DDataBuffer)initWithCapacityDimension:(const void *)a3 mutableData:(id)a4
{
  v7 = a4;
  v41.receiver = self;
  v41.super_class = TSCH3DNSData2DDataBuffer;
  v8 = [(TSCH3D2DDataBuffer *)&v41 initWithCapacityDimension:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mutableData, a4);
    v14 = objc_msgSend_length(v9->_mutableData, v10, v11, v12, v13);
    if (v14 != sub_2761F9818(a3, 0x7FFFFFFFFFFFFFFFLL))
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCH3DNSData2DDataBuffer initWithCapacityDimension:mutableData:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DNSData2DDataBuffer.mm");
      v30 = objc_msgSend_length(v9->_mutableData, v26, v27, v28, v29);
      v31 = sub_2761F9818(a3, 0x7FFFFFFFFFFFFFFFLL);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v32, v33, v34, v35, v20, v25, 32, 0, "mutable _mutableData size and _dimension byte size mismatch %lu, %lu", v30, v31);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
    }
  }

  return v9;
}

- (TSCH3DNSData2DDataBuffer)initWithCapacityDimension:(const void *)a3 data:(id)a4
{
  v7 = a4;
  v41.receiver = self;
  v41.super_class = TSCH3DNSData2DDataBuffer;
  v8 = [(TSCH3D2DDataBuffer *)&v41 initWithCapacityDimension:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_constData, a4);
    v14 = objc_msgSend_length(v9->_constData, v10, v11, v12, v13);
    if (v14 < sub_2761F9818(a3, 0x7FFFFFFFFFFFFFFFLL))
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCH3DNSData2DDataBuffer initWithCapacityDimension:data:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DNSData2DDataBuffer.mm");
      v30 = objc_msgSend_length(v9->_constData, v26, v27, v28, v29);
      v31 = sub_2761F9818(a3, 0x7FFFFFFFFFFFFFFFLL);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v32, v33, v34, v35, v20, v25, 45, 0, "mutable _constData size and _dimension byte size mismatch %lu, %lu", v30, v31);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
    }
  }

  return v9;
}

- (TSCH3DNSData2DDataBuffer)initWithCapacityDimension:(const void *)a3
{
  v14.receiver = self;
  v14.super_class = TSCH3DNSData2DDataBuffer;
  v4 = [(TSCH3D2DDataBuffer *)&v14 initWithCapacityDimension:?];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB28]);
    v6 = sub_2761F9818(a3, 0x7FFFFFFFFFFFFFFFLL);
    v11 = objc_msgSend_initWithLength_(v5, v7, v8, v9, v10, v6);
    mutableData = v4->_mutableData;
    v4->_mutableData = v11;
  }

  return v4;
}

- (unint64_t)count
{
  if (!objc_msgSend_components(self, a2, v2, v3, v4))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DNSData2DDataBuffer count]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DNSData2DDataBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 59, 0, "Components should never be 0.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  if (!objc_msgSend_components(self, v6, v7, v8, v9))
  {
    return 0;
  }

  v29 = objc_msgSend_NSData(self, v25, v26, v27, v28);
  v34 = objc_msgSend_length(v29, v30, v31, v32, v33);
  v39 = v34 / objc_msgSend_components(self, v35, v36, v37, v38);

  return v39;
}

- (const)data
{
  v5 = objc_msgSend_NSData(self, a2, v2, v3, v4);
  v6 = v5;
  v11 = objc_msgSend_bytes(v6, v7, v8, v9, v10);

  return v11;
}

- (void)mutableData
{
  mutableData = self->_mutableData;
  if (!mutableData)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DNSData2DDataBuffer mutableData]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DNSData2DDataBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 76, 0, "invalid nil value for '%{public}s'", "_mutableData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    mutableData = self->_mutableData;
  }

  return objc_msgSend_mutableBytes(mutableData, a2, v2, v3, v4);
}

- (NSData)NSData
{
  constData = self->_constData;
  if (!constData)
  {
    constData = self->_mutableData;
  }

  return constData;
}

- (void)resizeFillDimension:(const void *)a3
{
  if (!self->_mutableData)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DNSData2DDataBuffer resizeFillDimension:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DNSData2DDataBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 88, 0, "invalid nil value for '%{public}s'", "_mutableData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  p_dimension = &self->super._dimension;
  self->super._dimension._size.var0.var0 = *a3;
  self->super._dimension._size.var1.var0 = *(a3 + 1);
  v24 = *(a3 + 1);
  self->super._dimension._hasLevels = *(a3 + 16);
  self->super._dimension._components = v24;
  mutableData = self->_mutableData;
  sub_2761F9818(&p_dimension->_size, 0x7FFFFFFFFFFFFFFFLL);

  MEMORY[0x2821F9670](mutableData, sel_setLength_, v26, v27, v28);
}

@end