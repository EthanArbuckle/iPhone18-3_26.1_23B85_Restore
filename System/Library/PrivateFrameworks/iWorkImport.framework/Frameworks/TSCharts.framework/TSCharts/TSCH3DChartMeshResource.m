@interface TSCH3DChartMeshResource
+ (id)resourceWithSharedResource:(id)a3;
- (BOOL)isEqual:(id)a3;
- (DataBufferInfo)bufferInfo;
- (TSCH3DChartMeshResource)initWithSharedResource:(id)a3;
@end

@implementation TSCH3DChartMeshResource

+ (id)resourceWithSharedResource:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v10 = objc_msgSend_initWithSharedResource_(v5, v6, v7, v8, v9, v4);

  return v10;
}

- (TSCH3DChartMeshResource)initWithSharedResource:(id)a3
{
  v5 = a3;
  v27.receiver = self;
  v27.super_class = TSCH3DChartMeshResource;
  v7 = [(TSCH3DResource *)&v27 init];
  if (v7)
  {
    if (!v5)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DChartMeshResource initWithSharedResource:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartMeshResources.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 260, 0, "invalid nil value for '%{public}s'", "resource");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    }

    objc_storeStrong(&v7->_shared, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = self->_shared == v5[11];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (DataBufferInfo)bufferInfo
{
  result = self->_shared;
  if (result)
  {
    return objc_msgSend_bufferInfo(result, a3, v3, v4, v5);
  }

  *&retstr->count = 0u;
  *&retstr->componentByteSize = 0u;
  *&retstr->componentType = 0u;
  return result;
}

@end