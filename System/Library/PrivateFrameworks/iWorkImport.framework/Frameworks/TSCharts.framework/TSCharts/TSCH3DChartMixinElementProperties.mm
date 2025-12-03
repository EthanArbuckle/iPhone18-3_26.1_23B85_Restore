@interface TSCH3DChartMixinElementProperties
+ (id)propertiesWithProperties:(id)properties;
- (BOOL)applyElementTransform:(void *)transform series:(id)series index:(tvec2<int>)index propertyAccessor:(id)accessor;
- (TSCH3DChartMixinElementProperties)initWithProperties:(id)properties;
- (float)elementTransformDepthFromPropertyAccessor:(id)accessor;
- (id)boundsGeometryForSeries:(id)series index:(void *)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)geometryForSeries:(id)series index:(void *)index;
- (id)normalsForSeries:(id)series index:(void *)index;
- (id)renderingLightingModelForSeries:(id)series;
- (id)texcoordsForSeries:(id)series index:(void *)index;
@end

@implementation TSCH3DChartMixinElementProperties

+ (id)propertiesWithProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [self alloc];
  v10 = objc_msgSend_initWithProperties_(v5, v6, v7, v8, v9, propertiesCopy);

  return v10;
}

- (TSCH3DChartMixinElementProperties)initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v9.receiver = self;
  v9.super_class = TSCH3DChartMixinElementProperties;
  v6 = [(TSCH3DChartElementProperties *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_original, properties);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = TSCH3DChartMixinElementProperties;
  v4 = [(TSCH3DChartElementProperties *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 2, self->_original);
  }

  return v5;
}

- (float)elementTransformDepthFromPropertyAccessor:(id)accessor
{
  accessorCopy = accessor;
  if (!accessorCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCH3DChartMixinElementProperties elementTransformDepthFromPropertyAccessor:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 210, 0, "invalid nil value for '%{public}s'", "accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  objc_msgSend_elementTransformDepthFromPropertyAccessor_(self->_original, v4, v6, v7, v8, accessorCopy);
  v25 = v24;

  return v25;
}

- (BOOL)applyElementTransform:(void *)transform series:(id)series index:(tvec2<int>)index propertyAccessor:(id)accessor
{
  seriesCopy = series;
  accessorCopy = accessor;
  if (!accessorCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DChartMixinElementProperties applyElementTransform:series:index:propertyAccessor:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 215, 0, "invalid nil value for '%{public}s'", "accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  original = self->_original;
  v34 = **&index;
  v32 = objc_msgSend_applyElementTransform_series_index_propertyAccessor_(original, v11, v34, v14, v15, transform, seriesCopy, &v34, accessorCopy);

  return v32;
}

- (id)renderingLightingModelForSeries:(id)series
{
  v6 = objc_msgSend_renderingLightingModelForSeries_(self->_original, a2, v3, v4, v5, series);

  return v6;
}

- (id)geometryForSeries:(id)series index:(void *)index
{
  v7 = objc_msgSend_geometryForSeries_index_(self->_original, a2, v4, v5, v6, series, index);

  return v7;
}

- (id)boundsGeometryForSeries:(id)series index:(void *)index
{
  v7 = objc_msgSend_boundsGeometryForSeries_index_(self->_original, a2, v4, v5, v6, series, index);

  return v7;
}

- (id)normalsForSeries:(id)series index:(void *)index
{
  v7 = objc_msgSend_normalsForSeries_index_(self->_original, a2, v4, v5, v6, series, index);

  return v7;
}

- (id)texcoordsForSeries:(id)series index:(void *)index
{
  v7 = objc_msgSend_texcoordsForSeries_index_(self->_original, a2, v4, v5, v6, series, index);

  return v7;
}

@end