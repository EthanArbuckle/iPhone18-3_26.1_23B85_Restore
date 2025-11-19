@interface VFXMTLBuffer
- (int64_t)decrementUsedCount;
- (void)contents;
- (void)dealloc;
- (void)incrementUsedCount;
@end

@implementation VFXMTLBuffer

- (void)contents
{
  if (!self->_buffer)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEA64C(v5, a2, v2, v3, v6, v7, v8, v9);
    }
  }

  return (objc_msgSend_contents(self->_buffer, a2, v2, v3) + self->_offset);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLBuffer;
  [(VFXMTLBuffer *)&v3 dealloc];
}

- (void)incrementUsedCount
{
  v6 = objc_msgSend_usedCount(self, a2, v2, v3) + 1;

  objc_msgSend_setUsedCount_(self, v5, v6, v7);
}

- (int64_t)decrementUsedCount
{
  v5 = objc_msgSend_usedCount(self, a2, v2, v3);
  objc_msgSend_setUsedCount_(self, v6, v5 - 1, v7);

  return objc_msgSend_usedCount(self, v8, v9, v10);
}

@end