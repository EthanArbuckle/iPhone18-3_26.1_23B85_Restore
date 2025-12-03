@interface TSCH3DVectorN3DDataBuffer
+ (id)bufferWithCapacity3DDimension:(const void *)dimension;
- (TSCH3DVectorN3DDataBuffer)initWithCapacity3DDimension:(const void *)dimension;
- (id).cxx_construct;
- (tvec3<int>)size;
- (unint64_t)componentByteSize;
- (void)fillCapacity;
@end

@implementation TSCH3DVectorN3DDataBuffer

+ (id)bufferWithCapacity3DDimension:(const void *)dimension
{
  v4 = [self alloc];
  v9 = objc_msgSend_initWithCapacity3DDimension_(v4, v5, v6, v7, v8, dimension);

  return v9;
}

- (TSCH3DVectorN3DDataBuffer)initWithCapacity3DDimension:(const void *)dimension
{
  v11.receiver = self;
  v11.super_class = TSCH3DVectorN3DDataBuffer;
  v4 = [(TSCH3DVectorN3DDataBuffer *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v6 = *dimension;
    v4->_dimension._size.var0.var0 = *dimension;
    v7 = *(dimension + 1);
    v4->_dimension._size.var1.var0 = v7;
    v8 = *(dimension + 2);
    v4->_dimension._size.var2.var0 = v8;
    v9 = *(dimension + 2);
    v4->_dimension._components = v9;
    sub_2761FB370(&v4->_container.__begin_, v9 * v7 * v6 * v8);
  }

  return v5;
}

- (tvec3<int>)size
{
  *v2 = *&self->_dimension._size.var0.var0;
  *(v2 + 8) = self->_dimension._size.var2.var0;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (unint64_t)componentByteSize
{
  v26.receiver = self;
  v26.super_class = TSCH3DVectorN3DDataBuffer;
  if ([(TSCH3DDataBuffer *)&v26 componentByteSize]!= 1)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, "[TSCH3DVectorN3DDataBuffer componentByteSize]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DVectorDataBuffer.mm");
    v25.receiver = self;
    v25.super_class = TSCH3DVectorN3DDataBuffer;
    componentByteSize = [(TSCH3DDataBuffer *)&v25 componentByteSize];
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v8, v13, 444, 0, "componentByteSize mismatch %lu %lu", componentByteSize, 1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v24.receiver = self;
  v24.super_class = TSCH3DVectorN3DDataBuffer;
  return [(TSCH3DDataBuffer *)&v24 componentByteSize];
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
    sub_2761FC724(&p_container->__begin_, v3 - v4);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 4) = 0;
  *(self + 3) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

@end