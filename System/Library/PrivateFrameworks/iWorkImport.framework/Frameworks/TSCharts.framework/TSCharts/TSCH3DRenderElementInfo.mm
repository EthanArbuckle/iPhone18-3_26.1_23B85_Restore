@interface TSCH3DRenderElementInfo
+ (id)infoWithPipeline:(id)a3 properties:(id)a4 series:(id)a5 index:(tvec2<int>)a6 useBoundsGeometry:(BOOL)a7 twoPasses:(BOOL)a8 transparent:(BOOL)a9 geometryOnly:(BOOL)a10;
- (TSCH3DRenderElementInfo)initWithPipeline:(id)a3 properties:(id)a4 series:(id)a5 index:(tvec2<int>)a6 useBoundsGeometry:(BOOL)a7 twoPasses:(BOOL)a8 transparent:(BOOL)a9 geometryOnly:(BOOL)a10;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TSCH3DRenderElementInfo

+ (id)infoWithPipeline:(id)a3 properties:(id)a4 series:(id)a5 index:(tvec2<int>)a6 useBoundsGeometry:(BOOL)a7 twoPasses:(BOOL)a8 transparent:(BOOL)a9 geometryOnly:(BOOL)a10
{
  v10 = a8;
  v11 = a7;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = [a1 alloc];
  v26 = **&a6;
  HIBYTE(v25) = a10;
  LOBYTE(v25) = a9;
  v23 = objc_msgSend_initWithPipeline_properties_series_index_useBoundsGeometry_twoPasses_transparent_geometryOnly_(v19, v20, v26, v21, v22, v16, v17, v18, &v26, v11, v10, v25);

  return v23;
}

- (TSCH3DRenderElementInfo)initWithPipeline:(id)a3 properties:(id)a4 series:(id)a5 index:(tvec2<int>)a6 useBoundsGeometry:(BOOL)a7 twoPasses:(BOOL)a8 transparent:(BOOL)a9 geometryOnly:(BOOL)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v23.receiver = self;
  v23.super_class = TSCH3DRenderElementInfo;
  v20 = [(TSCH3DRenderElementInfo *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_pipeline, a3);
    objc_storeStrong(&v21->_properties, a4);
    objc_storeStrong(&v21->_series, a5);
    v21->_index.var0.var0 = *a6.var0.var0;
    v21->_index.var1.var0 = *(*&a6 + 4);
    v21->_useBoundsGeometry = a7;
    v21->_twoPasses = a8;
    v21->_transparent = a9;
    v21->_geometryOnly = a10;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, a3);
  pipeline = self->_pipeline;
  properties = self->_properties;
  series = self->_series;
  v19 = *&self->_index;
  v18 = *&self->_transparent;
  return objc_msgSend_initWithPipeline_properties_series_index_useBoundsGeometry_twoPasses_transparent_geometryOnly_(v10, v14, v19, v15, v16, pipeline, properties, series, &v19, self->_useBoundsGeometry, self->_twoPasses, v18);
}

@end