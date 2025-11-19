@interface VFXFixedSizePage
- (VFXFixedSizePage)initWithBuffer:(id)a3 elementSize:(unint64_t)a4;
- (id)newSubBufferForAllocator:(id)a3;
- (unint64_t)_allocateElement;
- (void)dealloc;
@end

@implementation VFXFixedSizePage

- (VFXFixedSizePage)initWithBuffer:(id)a3 elementSize:(unint64_t)a4
{
  v15.receiver = self;
  v15.super_class = VFXFixedSizePage;
  v6 = [(VFXFixedSizePage *)&v15 init];
  v10 = objc_msgSend_length(a3, v7, v8, v9) / a4;
  v6->_buffer = a3;
  v11 = objc_alloc(MEMORY[0x1E696AD50]);
  v13 = objc_msgSend_initWithIndexesInRange_(v11, v12, 0, v10);
  v6->_elementSize = a4;
  v6->_freeIndices = v13;
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXFixedSizePage;
  [(VFXFixedSizePage *)&v3 dealloc];
}

- (unint64_t)_allocateElement
{
  if (!objc_msgSend_count(self->_freeIndices, a2, v2, v3))
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE55EC(v8, v5, v6, v7, v9, v10, v11, v12);
    }
  }

  v16 = 0x7FFFFFFFFFFFFFFFLL;
  if (objc_msgSend_count(self->_freeIndices, v5, v6, v7))
  {
    Index = objc_msgSend_firstIndex(self->_freeIndices, v13, v14, v15);
    if (Index == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = sub_1AF0D5194();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE5664(v20, v17, v21, v18, v22, v23, v24, v25);
      }
    }

    objc_msgSend_removeIndex_(self->_freeIndices, v17, Index, v18);
    return self->_elementSize * Index;
  }

  return v16;
}

- (id)newSubBufferForAllocator:(id)a3
{
  v5 = [VFXMTLBufferAllocatorSubBuffer alloc];
  v7 = objc_msgSend_initWithPage_allocator_(v5, v6, self, a3);
  objc_msgSend_setBuffer_(v7, v8, self->_buffer, v9);
  Element = objc_msgSend__allocateElement(self, v10, v11, v12);
  objc_msgSend_setOffset_(v7, v14, Element, v15);
  if (objc_msgSend_offset(v7, v16, v17, v18) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = sub_1AF0D5194();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE56DC(v19, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  return v7;
}

@end