@interface TSCH3Dvec2DataBuffer
- (TSCH3Dvec2DataBuffer)initWithCapacity:(unint64_t)capacity;
- (id).cxx_construct;
- (id)elementsAtIndices:(id)indices;
- (unint64_t)componentByteSize;
@end

@implementation TSCH3Dvec2DataBuffer

- (TSCH3Dvec2DataBuffer)initWithCapacity:(unint64_t)capacity
{
  v7.receiver = self;
  v7.super_class = TSCH3Dvec2DataBuffer;
  v4 = [(TSCH3Dvec2DataBuffer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    sub_2761FA5B8(&v4->_container.__begin_, capacity);
  }

  return v5;
}

- (unint64_t)componentByteSize
{
  v26.receiver = self;
  v26.super_class = TSCH3Dvec2DataBuffer;
  if ([(TSCH3DDataBuffer *)&v26 componentByteSize]!= 4)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, "[TSCH3Dvec2DataBuffer componentByteSize]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DVectorDataBuffer.mm");
    v25.receiver = self;
    v25.super_class = TSCH3Dvec2DataBuffer;
    componentByteSize = [(TSCH3DDataBuffer *)&v25 componentByteSize];
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v8, v13, 151, 0, "componentByteSize mismatch %lu %lu", componentByteSize, 4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v24.receiver = self;
  v24.super_class = TSCH3Dvec2DataBuffer;
  return [(TSCH3DDataBuffer *)&v24 componentByteSize];
}

- (id)elementsAtIndices:(id)indices
{
  indicesCopy = indices;
  v5 = objc_opt_class();
  v10 = objc_msgSend_count(indicesCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_bufferWithCapacity_(v5, v11, v12, v13, v14, v10);
  v15[2] = v15[1];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = v15 + 1;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2761FC548;
  v20[3] = &unk_27A6B6AC0;
  v20[4] = v21;
  v20[5] = &self->_container;
  objc_msgSend_enumerateIndexesUsingBlock_(indicesCopy, v16, COERCE_DOUBLE(3221225472), v17, v18, v20);
  _Block_object_dispose(v21, 8);

  return v15;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0;
  return self;
}

@end