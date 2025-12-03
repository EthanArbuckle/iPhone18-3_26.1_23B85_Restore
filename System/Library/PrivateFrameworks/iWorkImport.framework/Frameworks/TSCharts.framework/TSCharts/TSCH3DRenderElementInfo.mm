@interface TSCH3DRenderElementInfo
+ (id)infoWithPipeline:(id)pipeline properties:(id)properties series:(id)series index:(tvec2<int>)index useBoundsGeometry:(BOOL)geometry twoPasses:(BOOL)passes transparent:(BOOL)transparent geometryOnly:(BOOL)self0;
- (TSCH3DRenderElementInfo)initWithPipeline:(id)pipeline properties:(id)properties series:(id)series index:(tvec2<int>)index useBoundsGeometry:(BOOL)geometry twoPasses:(BOOL)passes transparent:(BOOL)transparent geometryOnly:(BOOL)self0;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSCH3DRenderElementInfo

+ (id)infoWithPipeline:(id)pipeline properties:(id)properties series:(id)series index:(tvec2<int>)index useBoundsGeometry:(BOOL)geometry twoPasses:(BOOL)passes transparent:(BOOL)transparent geometryOnly:(BOOL)self0
{
  passesCopy = passes;
  geometryCopy = geometry;
  pipelineCopy = pipeline;
  propertiesCopy = properties;
  seriesCopy = series;
  v19 = [self alloc];
  v26 = **&index;
  HIBYTE(v25) = only;
  LOBYTE(v25) = transparent;
  v23 = objc_msgSend_initWithPipeline_properties_series_index_useBoundsGeometry_twoPasses_transparent_geometryOnly_(v19, v20, v26, v21, v22, pipelineCopy, propertiesCopy, seriesCopy, &v26, geometryCopy, passesCopy, v25);

  return v23;
}

- (TSCH3DRenderElementInfo)initWithPipeline:(id)pipeline properties:(id)properties series:(id)series index:(tvec2<int>)index useBoundsGeometry:(BOOL)geometry twoPasses:(BOOL)passes transparent:(BOOL)transparent geometryOnly:(BOOL)self0
{
  pipelineCopy = pipeline;
  propertiesCopy = properties;
  seriesCopy = series;
  v23.receiver = self;
  v23.super_class = TSCH3DRenderElementInfo;
  v20 = [(TSCH3DRenderElementInfo *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_pipeline, pipeline);
    objc_storeStrong(&v21->_properties, properties);
    objc_storeStrong(&v21->_series, series);
    v21->_index.var0.var0 = *index.var0.var0;
    v21->_index.var1.var0 = *(*&index + 4);
    v21->_useBoundsGeometry = geometry;
    v21->_twoPasses = passes;
    v21->_transparent = transparent;
    v21->_geometryOnly = only;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, zone);
  pipeline = self->_pipeline;
  properties = self->_properties;
  series = self->_series;
  v19 = *&self->_index;
  v18 = *&self->_transparent;
  return objc_msgSend_initWithPipeline_properties_series_index_useBoundsGeometry_twoPasses_transparent_geometryOnly_(v10, v14, v19, v15, v16, pipeline, properties, series, &v19, self->_useBoundsGeometry, self->_twoPasses, v18);
}

@end