@interface TSCH3DChartElementProperties
+ (id)properties;
- (BOOL)applyCombinedTransform:(void *)transform series:(id)series index:(void *)index propertyAccessor:(id)accessor;
- (BOOL)applyElementTransformToProcessor:(id)processor series:(id)series index:(void *)index propertyAccessor:(id)accessor;
- (TSCH3DChartElementProperties)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getPropertiesOfType:(Class)type;
- (id)renderingLightingModelForSeries:(id)series;
- (void)addTexcoordsToProcessor:(id)processor series:(id)series index:(void *)index;
- (void)applyChartElementsTransform:(void *)transform;
- (void)applyChartElementsTransformToProcessor:(id)processor;
@end

@implementation TSCH3DChartElementProperties

+ (id)properties
{
  v2 = objc_alloc_init(self);

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

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

- (void)applyChartElementsTransform:(void *)transform
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
  sub_276168C80(transform + 6, v43);

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
    sub_27616AC4C(transform + 3, v43);
  }
}

- (id)renderingLightingModelForSeries:(id)series
{
  seriesCopy = series;
  v8 = objc_msgSend_chartInfo(seriesCopy, v4, v5, v6, v7);
  v13 = objc_msgSend_objectValueForProperty_(v8, v9, v10, v11, v12, 1071);

  if (!v13)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCH3DChartElementProperties renderingLightingModelForSeries:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 80, 0, "invalid nil value for '%{public}s'", "lightings");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  v33 = objc_msgSend_objectValueForProperty_(seriesCopy, v14, v15, v16, v17, 1160);
  v38 = objc_msgSend_renderingLightingModelWithFill_lightings_(TSCH3DRenderingLightingModel, v34, v35, v36, v37, v33, v13);

  return v38;
}

- (void)applyChartElementsTransformToProcessor:(id)processor
{
  processorCopy = processor;
  memset(v15, 0, sizeof(v15));
  memset(v14, 0, sizeof(v14));
  objc_msgSend_applyChartElementsTransform_(self, v5, 0.0, v6, v7, v14);
  sub_276169AD4(v14, v13, v8);
  objc_msgSend_multiply_(processorCopy, v9, v10, v11, v12, v13);
  sub_27616B32C(v15);
  sub_27616B32C(v14);
}

- (BOOL)applyElementTransformToProcessor:(id)processor series:(id)series index:(void *)index propertyAccessor:(id)accessor
{
  processorCopy = processor;
  seriesCopy = series;
  accessorCopy = accessor;
  if (!accessorCopy)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, "[TSCH3DChartElementProperties(Convenience) applyElementTransformToProcessor:series:index:propertyAccessor:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 100, 0, "invalid nil value for '%{public}s'", "accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  memset(v41, 0, sizeof(v41));
  memset(v40, 0, sizeof(v40));
  v39[0] = *index;
  v32 = objc_msgSend_applyElementTransform_series_index_propertyAccessor_(self, v12, v39[0], v15, v16, v40, seriesCopy, v39, accessorCopy);
  sub_276169AD4(v40, v39, v33);
  objc_msgSend_multiply_(processorCopy, v34, v35, v36, v37, v39);
  sub_27616B32C(v41);
  sub_27616B32C(v40);

  return v32;
}

- (BOOL)applyCombinedTransform:(void *)transform series:(id)series index:(void *)index propertyAccessor:(id)accessor
{
  seriesCopy = series;
  accessorCopy = accessor;
  if (!accessorCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DChartElementProperties(Convenience) applyCombinedTransform:series:index:propertyAccessor:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 111, 0, "invalid nil value for '%{public}s'", "accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  objc_msgSend_applyChartElementsTransform_(self, v11, v13, v14, v15, transform);
  v36 = *index;
  v34 = objc_msgSend_applyElementTransform_series_index_propertyAccessor_(self, v31, v36, v32, v33, transform, seriesCopy, &v36, accessorCopy);

  return v34;
}

- (void)addTexcoordsToProcessor:(id)processor series:(id)series index:(void *)index
{
  processorCopy = processor;
  seriesCopy = series;
  v14 = objc_msgSend_renderingLightingModelForSeries_(self, v9, v10, v11, v12, seriesCopy);
  if (!v14)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "[TSCH3DChartElementProperties(Convenience) addTexcoordsToProcessor:series:index:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 122, 0, "invalid nil value for '%{public}s'", "renderingLightingModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  v33 = objc_msgSend_texcoordsForSeries_index_(self, v13, v15, v16, v17, seriesCopy, index);
  v38 = objc_msgSend_coordinates(TSCH3DFillTextureCoordinates, v34, v35, v36, v37);
  objc_msgSend_addTexcoordsToProcessor_renderingLightingModel_texcoords_(v38, v39, v40, v41, v42, processorCopy, v14, v33);
}

- (id)getPropertiesOfType:(Class)type
{
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end