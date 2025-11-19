@interface TSCH3DChartElementProperties
+ (id)properties;
- (BOOL)applyCombinedTransform:(void *)a3 series:(id)a4 index:(void *)a5 propertyAccessor:(id)a6;
- (BOOL)applyElementTransformToProcessor:(id)a3 series:(id)a4 index:(void *)a5 propertyAccessor:(id)a6;
- (TSCH3DChartElementProperties)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)getPropertiesOfType:(Class)a3;
- (id)renderingLightingModelForSeries:(id)a3;
- (void)addTexcoordsToProcessor:(id)a3 series:(id)a4 index:(void *)a5;
- (void)applyChartElementsTransform:(void *)a3;
- (void)applyChartElementsTransformToProcessor:(id)a3;
@end

@implementation TSCH3DChartElementProperties

+ (id)properties
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (TSCH3DChartElementProperties)init
{
  v6.receiver = self;
  v6.super_class = TSCH3DChartElementProperties;
  v2 = [(TSCH3DChartElementProperties *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TSCH3DTexturePool);
    pool = v2->_pool;
    v2->_pool = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

- (void)applyChartElementsTransform:(void *)a3
{
  v8 = objc_msgSend_chartTransform(self, a2, v3, v4, v5);
  v13 = objc_msgSend_chartTransform(self, v9, v10, v11, v12);
  v18 = v13;
  if (v13)
  {
    objc_msgSend_asTSCH3DCPPTransform(v13, v14, v15, v16, v17);
  }

  else
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
  }

  sub_276169788(v8, &v39, v43);
  sub_276168C80(a3 + 6, v43);

  v23 = objc_msgSend_elementsTransform(self, v19, v20, v21, v22);

  if (v23)
  {
    v28 = objc_msgSend_elementsTransform(self, v24, v25, v26, v27);
    v33 = objc_msgSend_elementsTransform(self, v29, v30, v31, v32);
    v38 = v33;
    if (v33)
    {
      objc_msgSend_asTSCH3DCPPTransform(v33, v34, v35, v36, v37);
    }

    else
    {
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
    }

    sub_276169788(v28, &v39, v43);
    sub_27616AC4C(a3 + 3, v43);
  }
}

- (id)renderingLightingModelForSeries:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_chartInfo(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_objectValueForProperty_(v8, v9, v10, v11, v12, 1071);

  if (!v13)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCH3DChartElementProperties renderingLightingModelForSeries:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 80, 0, "invalid nil value for '%{public}s'", "lightings");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  v33 = objc_msgSend_objectValueForProperty_(v3, v14, v15, v16, v17, 1160);
  v38 = objc_msgSend_renderingLightingModelWithFill_lightings_(TSCH3DRenderingLightingModel, v34, v35, v36, v37, v33, v13);

  return v38;
}

- (void)applyChartElementsTransformToProcessor:(id)a3
{
  v4 = a3;
  memset(v15, 0, sizeof(v15));
  memset(v14, 0, sizeof(v14));
  objc_msgSend_applyChartElementsTransform_(self, v5, 0.0, v6, v7, v14);
  sub_276169AD4(v14, v13, v8);
  objc_msgSend_multiply_(v4, v9, v10, v11, v12, v13);
  sub_27616B32C(v15);
  sub_27616B32C(v14);
}

- (BOOL)applyElementTransformToProcessor:(id)a3 series:(id)a4 index:(void *)a5 propertyAccessor:(id)a6
{
  v10 = a3;
  v11 = a4;
  v13 = a6;
  if (!v13)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, "[TSCH3DChartElementProperties(Convenience) applyElementTransformToProcessor:series:index:propertyAccessor:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 100, 0, "invalid nil value for '%{public}s'", "accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  memset(v41, 0, sizeof(v41));
  memset(v40, 0, sizeof(v40));
  v39[0] = *a5;
  v32 = objc_msgSend_applyElementTransform_series_index_propertyAccessor_(self, v12, v39[0], v15, v16, v40, v11, v39, v13);
  sub_276169AD4(v40, v39, v33);
  objc_msgSend_multiply_(v10, v34, v35, v36, v37, v39);
  sub_27616B32C(v41);
  sub_27616B32C(v40);

  return v32;
}

- (BOOL)applyCombinedTransform:(void *)a3 series:(id)a4 index:(void *)a5 propertyAccessor:(id)a6
{
  v10 = a4;
  v12 = a6;
  if (!v12)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DChartElementProperties(Convenience) applyCombinedTransform:series:index:propertyAccessor:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 111, 0, "invalid nil value for '%{public}s'", "accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  objc_msgSend_applyChartElementsTransform_(self, v11, v13, v14, v15, a3);
  v36 = *a5;
  v34 = objc_msgSend_applyElementTransform_series_index_propertyAccessor_(self, v31, v36, v32, v33, a3, v10, &v36, v12);

  return v34;
}

- (void)addTexcoordsToProcessor:(id)a3 series:(id)a4 index:(void *)a5
{
  v43 = a3;
  v8 = a4;
  v14 = objc_msgSend_renderingLightingModelForSeries_(self, v9, v10, v11, v12, v8);
  if (!v14)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "[TSCH3DChartElementProperties(Convenience) addTexcoordsToProcessor:series:index:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 122, 0, "invalid nil value for '%{public}s'", "renderingLightingModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  v33 = objc_msgSend_texcoordsForSeries_index_(self, v13, v15, v16, v17, v8, a5);
  v38 = objc_msgSend_coordinates(TSCH3DFillTextureCoordinates, v34, v35, v36, v37);
  objc_msgSend_addTexcoordsToProcessor_renderingLightingModel_texcoords_(v38, v39, v40, v41, v42, v43, v14, v33);
}

- (id)getPropertiesOfType:(Class)a3
{
  if (objc_opt_isKindOfClass())
  {
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end