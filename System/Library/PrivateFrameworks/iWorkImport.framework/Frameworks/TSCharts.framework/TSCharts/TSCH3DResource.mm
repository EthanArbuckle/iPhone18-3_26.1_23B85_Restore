@interface TSCH3DResource
+ (TSCH3DResource)resourceWithCaching:(int)caching;
+ (id)resource;
- (BOOL)cacheNeedsUpdate;
- (DataBufferInfo)bufferInfo;
- (TSCH3DDataBuffer)buffer;
- (TSCH3DResource)initWithCaching:(int)caching;
- (id).cxx_construct;
- (void)dealloc;
- (void)flushMemory;
- (void)setCache:(id)cache;
- (void)setChanged:(BOOL)changed;
- (void)updateBufferInfoFromBuffer:(id)buffer;
@end

@implementation TSCH3DResource

+ (id)resource
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (TSCH3DResource)resourceWithCaching:(int)caching
{
  v3 = *&caching;
  v4 = [self alloc];
  v9 = objc_msgSend_initWithCaching_(v4, v5, v6, v7, v8, v3);

  return v9;
}

- (TSCH3DResource)initWithCaching:(int)caching
{
  v10.receiver = self;
  v10.super_class = TSCH3DResource;
  v5 = [(TSCH3DResource *)&v10 init];
  if (v5)
  {
    v5->_uniqueIdentifier = objc_msgSend_allocateResourceUniqueIdentifier(TSCH3DResourceUniqueIdentifierAllocator, v4, v6, v7, v8);
    v5->_caching = caching;
    v5->_update = 0;
  }

  return v5;
}

- (void)dealloc
{
  objc_msgSend_deallocateResourceUniqueIdentifier_(TSCH3DResourceUniqueIdentifierAllocator, a2, v2, v3, v4, self->_uniqueIdentifier);
  v6.receiver = self;
  v6.super_class = TSCH3DResource;
  [(TSCH3DResource *)&v6 dealloc];
}

- (void)setChanged:(BOOL)changed
{
  if (self->_changed != changed)
  {
    self->_changed = changed;
    if (changed)
    {
      self->_cached = 0;
    }

    else if (!self->_cached)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DResource setChanged:]");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DResource.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 87, 0, "must be cached before clearing change flag");

      v21 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v21, v17, v18, v19, v20);
    }
  }
}

- (void)updateBufferInfoFromBuffer:(id)buffer
{
  bufferCopy = buffer;
  v9 = bufferCopy;
  if (bufferCopy)
  {
    objc_msgSend_bufferInfo(bufferCopy, v5, v6, v7, v8);
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DResource updateBufferInfoFromBuffer:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 93, 0, "invalid nil value for '%{public}s'", "buf");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
  }

  *&self->_dataBufferInfo.componentType = v25;
  *&self->_dataBufferInfo.count = v26;
  *&self->_dataBufferInfo.componentByteSize = v27;
}

- (DataBufferInfo)bufferInfo
{
  result = objc_msgSend_changed(self, a3, v3, v4, v5);
  if ((result & 1) != 0 || !self->_dataBufferInfo.components || self->_update)
  {
    v13 = objc_msgSend_buffer(self, v9, v10, v11, v12);
    objc_msgSend_updateBufferInfoFromBuffer_(self, v14, v15, v16, v17, v13);
  }

  v18 = *&self->_dataBufferInfo.count;
  *&retstr->componentType = *&self->_dataBufferInfo.componentType;
  *&retstr->count = v18;
  *&retstr->componentByteSize = *&self->_dataBufferInfo.componentByteSize;
  return result;
}

- (BOOL)cacheNeedsUpdate
{
  caching = self->_caching;
  if ((caching - 1) >= 2)
  {
    if (caching)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "BOOL (anonymous namespace)::IsCaching(TSCH3DResourceCaching)");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DResource.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 28, 0, "not possible to get here");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
      LOBYTE(caching) = 0;
    }
  }

  else if (self->_cache)
  {
    LOBYTE(caching) = !self->_cached;
  }

  else
  {
    LOBYTE(caching) = 1;
  }

  return caching & 1;
}

- (void)setCache:(id)cache
{
  objc_storeStrong(&self->_cache, cache);
  self->_cached = 1;
  self->_dataBufferInfo.componentType = 0;
  *&self->_dataBufferInfo.components = 0u;
  *&self->_dataBufferInfo.byteSize = 0u;
  self->_dataBufferInfo.elementByteSize = 0;
}

- (void)flushMemory
{
  cache = self->_cache;
  self->_cache = 0;
}

- (TSCH3DDataBuffer)buffer
{
  if (objc_msgSend_cacheNeedsUpdate(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_get(self, v6, v7, v8, v9);
    objc_msgSend_setCache_(self, v11, v12, v13, v14, v10);
  }

  cache = self->_cache;
  if (cache)
  {
    v16 = cache;
  }

  else
  {
    v16 = objc_msgSend_get(self, v6, v7, v8, v9);
  }

  return v16;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 9) = 0;
  return self;
}

@end