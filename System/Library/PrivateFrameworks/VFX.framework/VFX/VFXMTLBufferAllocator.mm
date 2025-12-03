@interface VFXMTLBufferAllocator
- (VFXMTLBufferAllocator)initWithDevice:(__CFXGPUDevice *)device fixedSizeElement:(unint64_t)element buffersize:(unint64_t)buffersize name:(id)name;
- (id)_newSubBuffer;
- (id)newSubBufferWithBytes:(const void *)bytes length:(unint64_t)length renderContext:(id)context;
- (void)dealloc;
- (void)deallocateElementAtOffset:(unint64_t)offset inPage:(id)page;
@end

@implementation VFXMTLBufferAllocator

- (VFXMTLBufferAllocator)initWithDevice:(__CFXGPUDevice *)device fixedSizeElement:(unint64_t)element buffersize:(unint64_t)buffersize name:(id)name
{
  v20.receiver = self;
  v20.super_class = VFXMTLBufferAllocator;
  v10 = [(VFXMTLBufferAllocator *)&v20 init];
  v10->_gpuDevice = device;
  v10->_name = objc_msgSend_copy(name, v11, v12, v13);
  CFXGPUDeviceGetMTLDevice(device);
  v14 = (element + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = buffersize / element;
  if (element > buffersize)
  {
    v15 = 100;
  }

  v10->_bufferSize = v15 * v14;
  v10->_elementSize = v14;
  v16 = objc_alloc(MEMORY[0x1E695DF70]);
  v10->_pages = objc_msgSend_initWithCapacity_(v16, v17, 10, v18);
  v10->_allocatorLock._os_unfair_lock_opaque = 0;
  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLBufferAllocator;
  [(VFXMTLBufferAllocator *)&v3 dealloc];
}

- (id)_newSubBuffer
{
  v30 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_allocatorLock);
  currentAllocatorPage = self->_currentAllocatorPage;
  if (!currentAllocatorPage || !objc_msgSend_count(currentAllocatorPage->_freeIndices, v3, v4, v5))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    pages = self->_pages;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(pages, v3, &v25, v29, 16);
    if (v10)
    {
      v14 = v10;
      v15 = *v26;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(pages);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          if (v17 && objc_msgSend_count(v17->_freeIndices, v11, v12, v13))
          {
            self->_currentAllocatorPage = v17;
            v8 = objc_msgSend_newSubBufferForAllocator_(v17, v11, self, v13);
            goto LABEL_15;
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(pages, v11, &v25, v29, 16);
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    BufferWithLength = CFXGPUDeviceCreateBufferWithLength(self->_gpuDevice, self->_bufferSize, 32);
    v19 = [VFXFixedSizePage alloc];
    self->_currentAllocatorPage = objc_msgSend_initWithBuffer_elementSize_(v19, v20, BufferWithLength, self->_elementSize);

    objc_msgSend_addObject_(self->_pages, v21, self->_currentAllocatorPage, v22);
  }

  v8 = objc_msgSend_newSubBufferForAllocator_(self->_currentAllocatorPage, v3, self, v7);
LABEL_15:
  v23 = v8;
  os_unfair_lock_unlock(&self->_allocatorLock);
  return v23;
}

- (id)newSubBufferWithBytes:(const void *)bytes length:(unint64_t)length renderContext:(id)context
{
  p_elementSize = &self->_elementSize;
  if (self->_elementSize < length)
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE5754(length, p_elementSize, v10);
    }
  }

  v11 = objc_msgSend__newSubBuffer(self, a2, bytes, length);
  v15 = objc_msgSend_frameConstantBufferPool(context, v12, v13, v14);
  v16 = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  v17 = CFXBufferAllocatorPerFrameAllocateWithBytes(v16, bytes, length);
  v19 = v18;
  v22 = objc_msgSend_resourceBlitEncoder(context, v18, v20, v21);
  MTLBuffer = CFXBufferSliceGetMTLBuffer(v17, v19);
  v27 = objc_msgSend_buffer(v11, v24, v25, v26);
  v31 = objc_msgSend_offset(v11, v28, v29, v30);
  objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(*v22, v32, MTLBuffer, v19, v27, v31, length);
  if (v16)
  {
    CFRelease(v16);
  }

  return v11;
}

- (void)deallocateElementAtOffset:(unint64_t)offset inPage:(id)page
{
  os_unfair_lock_lock(&self->_allocatorLock);
  sub_1AFDE54C4(page, offset, v7, v8);

  os_unfair_lock_unlock(&self->_allocatorLock);
}

@end