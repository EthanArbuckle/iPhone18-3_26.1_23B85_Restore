@interface TSCH3DUByteDataBuffer
- (TSCH3DUByteDataBuffer)initWithCapacity:(unint64_t)a3;
- (id).cxx_construct;
- (id)elementsAtIndices:(id)a3;
- (unint64_t)componentByteSize;
- (void)fillCapacity;
@end

@implementation TSCH3DUByteDataBuffer

- (TSCH3DUByteDataBuffer)initWithCapacity:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = TSCH3DUByteDataBuffer;
  v4 = [(TSCH3DUByteDataBuffer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    sub_2761FB370(&v4->_container.__begin_, a3);
  }

  return v5;
}

- (void)fillCapacity
{
  p_container = &self->_container;
  v3 = p_container->__cap_ - p_container->__begin_;
  v4 = p_container->__end_ - p_container->__begin_;
  if (v3 <= v4)
  {
    if (v3 < v4)
    {
      p_container->__end_ = p_container->__cap_;
    }
  }

  else
  {
    sub_2761FC724(p_container, v3 - v4);
  }
}

- (unint64_t)componentByteSize
{
  v26.receiver = self;
  v26.super_class = TSCH3DUByteDataBuffer;
  if ([(TSCH3DDataBuffer *)&v26 componentByteSize]!= 1)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, "[TSCH3DUByteDataBuffer componentByteSize]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DVectorDataBuffer.mm");
    v25.receiver = self;
    v25.super_class = TSCH3DUByteDataBuffer;
    v14 = [(TSCH3DDataBuffer *)&v25 componentByteSize];
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v8, v13, 296, 0, "componentByteSize mismatch %lu %lu", v14, 1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v24.receiver = self;
  v24.super_class = TSCH3DUByteDataBuffer;
  return [(TSCH3DDataBuffer *)&v24 componentByteSize];
}

- (id)elementsAtIndices:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v10 = objc_msgSend_count(v4, v6, v7, v8, v9);
  v15 = objc_msgSend_bufferWithCapacity_(v5, v11, v12, v13, v14, v10);
  v15[2] = v15[1];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = v15 + 1;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2761FC85C;
  v20[3] = &unk_27A6B6AC0;
  v20[4] = v21;
  v20[5] = &self->_container;
  objc_msgSend_enumerateIndexesUsingBlock_(v4, v16, COERCE_DOUBLE(3221225472), v17, v18, v20);
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