@interface TSCH3DChartMeshSharedChildResource
+ (id)resourceWithParent:(id)parent;
- (DataBufferInfo)bufferInfo;
- (TSCH3DChartMeshSharedChildResource)initWithParent:(id)parent;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation TSCH3DChartMeshSharedChildResource

+ (id)resourceWithParent:(id)parent
{
  parentCopy = parent;
  v5 = [self alloc];
  v10 = objc_msgSend_initWithParent_(v5, v6, v7, v8, v9, parentCopy);

  return v10;
}

- (TSCH3DChartMeshSharedChildResource)initWithParent:(id)parent
{
  parentCopy = parent;
  v12.receiver = self;
  v12.super_class = TSCH3DChartMeshSharedChildResource;
  v5 = [(TSCH3DChartMeshSharedChildResource *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parent, parentCopy);
    v6->_resourceIdentifier = objc_msgSend_allocateResourceUniqueIdentifier(TSCH3DResourceUniqueIdentifierAllocator, v7, v8, v9, v10);
  }

  return v6;
}

- (void)dealloc
{
  if (self->_resourceIdentifier)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartMeshSharedChildResource dealloc]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartMeshResources.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 97, 0, "The resource identifier should be deallocted when we get here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v21.receiver = self;
  v21.super_class = TSCH3DChartMeshSharedChildResource;
  [(TSCH3DChartMeshSharedChildResource *)&v21 dealloc];
}

- (DataBufferInfo)bufferInfo
{
  retstr->componentType = 0;
  *&retstr->components = 0u;
  *&retstr->byteSize = 0u;
  retstr->elementByteSize = 0;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  objc_sync_enter(WeakRetained);
  if (!self->_bufferInfo.components)
  {
    v10 = objc_msgSend_get(self, v6, v7, v8, v9);
    v15 = v10;
    if (v10)
    {
      objc_msgSend_bufferInfo(v10, v11, v12, v13, v14);
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
    }

    *&self->_bufferInfo.componentType = v18;
    *&self->_bufferInfo.count = v19;
    *&self->_bufferInfo.componentByteSize = v20;
  }

  v16 = *&self->_bufferInfo.count;
  *&retstr->componentType = *&self->_bufferInfo.componentType;
  *&retstr->count = v16;
  *&retstr->componentByteSize = *&self->_bufferInfo.componentByteSize;
  objc_sync_exit(WeakRetained);

  return result;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 8) = 0;
  return self;
}

@end