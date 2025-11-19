@interface TSCH3DChartBasicElementProperties
- (id)boundsGeometryForSeries:(id)a3 index:(void *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)geometryForSeries:(id)a3 index:(void *)a4;
- (id)normalsForSeries:(id)a3 index:(void *)a4;
- (id)texcoordsForSeries:(id)a3 index:(void *)a4;
- (void)createResources;
- (void)dealloc;
- (void)resetWithEnumerator:(id)a3 layoutSettings:(id *)a4;
@end

@implementation TSCH3DChartBasicElementProperties

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_enumerator);

  if (WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DChartBasicElementProperties dealloc]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBasicElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 37, 0, "expected nil value for '%{public}s'", "_enumerator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23.receiver = self;
  v23.super_class = TSCH3DChartBasicElementProperties;
  [(TSCH3DChartBasicElementProperties *)&v23 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = TSCH3DChartBasicElementProperties;
  result = [(TSCH3DChartMutableElementProperties *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 14) = self->_size.var0.var0;
    *(result + 15) = self->_size.var1.var0;
  }

  return result;
}

- (void)resetWithEnumerator:(id)a3 layoutSettings:(id *)a4
{
  v5 = a3;
  v6 = objc_storeWeak(&self->_enumerator, v5);
  if (v5)
  {
    objc_msgSend_size(v5, v7, v8, v9, v10);
    v11 = v16;
  }

  else
  {
    v11 = 0;
  }

  self->_size = v11;

  objc_msgSend_reset(self, v12, v13, v14, v15);
  objc_storeWeak(&self->_enumerator, 0);
}

- (void)createResources
{
  v6 = objc_msgSend_resourcesWithSize_(TSCH3DLabelResources, a2, v2, v3, v4, &self->_size);
  objc_msgSend_setLabels_(self, v7, v8, v9, v10, v6);

  var0 = self->_size.var1.var0;
  v21[0] = 1;
  v21[1] = var0;
  v16 = objc_msgSend_array2DWithSize_(TSCH3DArray2D, v12, v13, v14, v15, v21);
  objc_msgSend_setLightingModels_(self, v17, v18, v19, v20, v16);
}

- (id)geometryForSeries:(id)a3 index:(void *)a4
{
  v8 = objc_msgSend_seriesStorage(a3, a2, v4, v5, v6);
  if (!v8)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCH3DChartBasicElementProperties geometryForSeries:index:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartBasicElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 63, 0, "invalid nil value for '%{public}s'", "storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_geometryResourceWithPrimitiveType_(v8, v7, v9, v10, v11, 1);

  return v27;
}

- (id)boundsGeometryForSeries:(id)a3 index:(void *)a4
{
  v7 = objc_msgSend_seriesStorage(a3, a2, v4, v5, v6);
  v12 = objc_msgSend_bounds(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_resourceWithType_resource_(TSCH3DGeometryResource, v13, v14, v15, v16, 1, v12);

  return v17;
}

- (id)normalsForSeries:(id)a3 index:(void *)a4
{
  v7 = objc_msgSend_seriesStorage(a3, a2, v4, v5, v6);
  v12 = objc_msgSend_normal(v7, v8, v9, v10, v11);

  return v12;
}

- (id)texcoordsForSeries:(id)a3 index:(void *)a4
{
  v7 = objc_msgSend_seriesStorage(a3, a2, v4, v5, v6);
  v12 = objc_msgSend_texcoord(v7, v8, v9, v10, v11);

  return v12;
}

@end