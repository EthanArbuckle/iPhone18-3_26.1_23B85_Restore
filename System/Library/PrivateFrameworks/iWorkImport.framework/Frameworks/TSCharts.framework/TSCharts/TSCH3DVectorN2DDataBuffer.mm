@interface TSCH3DVectorN2DDataBuffer
- (TSCH3DVectorN2DDataBuffer)initWithCapacityDimension:(const void *)dimension;
- (id).cxx_construct;
- (unint64_t)componentByteSize;
- (void)fillCapacity;
- (void)resizeFillDimension:(const void *)dimension;
@end

@implementation TSCH3DVectorN2DDataBuffer

- (TSCH3DVectorN2DDataBuffer)initWithCapacityDimension:(const void *)dimension
{
  v7.receiver = self;
  v7.super_class = TSCH3DVectorN2DDataBuffer;
  v3 = [(TSCH3D2DDataBuffer *)&v7 initWithCapacityDimension:dimension];
  v4 = v3;
  if (v3)
  {
    v5 = sub_2761F9818(&v3->super._dimension._size, 0x7FFFFFFFFFFFFFFFLL);
    sub_2761FB370(&v4->_container.__begin_, v5);
  }

  return v4;
}

- (unint64_t)componentByteSize
{
  v26.receiver = self;
  v26.super_class = TSCH3DVectorN2DDataBuffer;
  if ([(TSCH3DDataBuffer *)&v26 componentByteSize]!= 1)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, "[TSCH3DVectorN2DDataBuffer componentByteSize]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DVectorDataBuffer.mm");
    v25.receiver = self;
    v25.super_class = TSCH3DVectorN2DDataBuffer;
    componentByteSize = [(TSCH3DDataBuffer *)&v25 componentByteSize];
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v8, v13, 382, 0, "componentByteSize mismatch %lu %lu", componentByteSize, 1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v24.receiver = self;
  v24.super_class = TSCH3DVectorN2DDataBuffer;
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

- (void)resizeFillDimension:(const void *)dimension
{
  self->super._dimension._size.var0.var0 = *dimension;
  self->super._dimension._size.var1.var0 = *(dimension + 1);
  v3 = *(dimension + 1);
  self->super._dimension._hasLevels = *(dimension + 16);
  self->super._dimension._components = v3;
  p_container = &self->_container;
  v5 = sub_2761F9818(&self->super._dimension._size, 0x7FFFFFFFFFFFFFFFLL);
  v6 = p_container->__end_ - p_container->__begin_;
  if (v5 <= v6)
  {
    if (v5 < v6)
    {
      p_container->__end_ = &p_container->__begin_[v5];
    }
  }

  else
  {

    sub_2761FC724(&p_container->__begin_, v5 - v6);
  }
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

@end