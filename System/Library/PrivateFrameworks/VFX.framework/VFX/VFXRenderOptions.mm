@interface VFXRenderOptions
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)setCommandBuffer:(id)a3;
- (void)setRasterizationRateMap:(id)a3;
- (void)setRayMap:(id)a3;
- (void)setViewpoints:(id)a3;
@end

@implementation VFXRenderOptions

- (void)setRasterizationRateMap:(id)a3
{
  rasterizationRateMap = self->_rasterizationRateMap;
  if (rasterizationRateMap != a3)
  {

    self->_rasterizationRateMap = a3;
  }
}

- (void)setRayMap:(id)a3
{
  rayMap = self->_rayMap;
  if (rayMap != a3)
  {

    self->_rayMap = a3;
  }
}

- (void)setViewpoints:(id)a3
{
  viewpoints = self->_viewpoints;
  if (viewpoints != a3)
  {

    self->_viewpoints = objc_msgSend_copy(a3, v6, v7, v8);
  }
}

- (void)setCommandBuffer:(id)a3
{
  commandBuffer = self->_commandBuffer;
  if (commandBuffer != a3)
  {

    self->_commandBuffer = a3;
  }
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v8 = objc_msgSend_viewpoints(self, v5, v6, v7);
  v13 = objc_msgSend_viewpoints(a3, v9, v10, v11);

  return objc_msgSend_isEqual_(v8, v12, v13, v14);
}

- (unint64_t)hash
{
  v5 = objc_msgSend_viewpoints(self, a2, v2, v3);
  if (!objc_msgSend_count(v5, v6, v7, v8))
  {
    return 0;
  }

  v12 = objc_msgSend_viewpoints(self, v9, v10, v11);
  Object = objc_msgSend_firstObject(v12, v13, v14, v15);
  v20 = objc_msgSend_hash(Object, v17, v18, v19);
  v24 = objc_msgSend_viewpoints(self, v21, v22, v23);
  if (objc_msgSend_count(v24, v25, v26, v27) >= 2)
  {
    v31 = objc_msgSend_viewpoints(self, v28, v29, v30);
    if (objc_msgSend_count(v31, v32, v33, v34) >= 2)
    {
      v38 = 1;
      do
      {
        v39 = objc_msgSend_viewpoints(self, v35, v36, v37);
        v42 = objc_msgSend_objectAtIndexedSubscript_(v39, v40, v38, v41);
        v20 ^= objc_msgSend_hash(v42, v43, v44, v45);
        ++v38;
        v49 = objc_msgSend_viewpoints(self, v46, v47, v48);
      }

      while (v38 < objc_msgSend_count(v49, v50, v51, v52));
    }
  }

  return v20;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXRenderOptions;
  [(VFXRenderOptions *)&v3 dealloc];
}

@end