@interface VFXLayerAsset
- (CALayer)rootLayer;
- (VFXLayerAsset)initWithCoder:(id)a3;
- (id)stateController;
- (void)copyTo:(id)a3 withContext:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setActiveStateName:(id)a3;
- (void)updateActiveState;
@end

@implementation VFXLayerAsset

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXLayerAsset;
  [(VFXFileAsset *)&v3 dealloc];
}

- (id)stateController
{
  result = self->_stateController;
  if (!result)
  {
    v4 = objc_alloc(MEMORY[0x1E69794D0]);
    v8 = objc_msgSend_rootLayer(self, v5, v6, v7);
    result = objc_msgSend_initWithLayer_(v4, v9, v8, v10);
    self->_stateController = result;
  }

  return result;
}

- (void)updateActiveState
{
  if (objc_msgSend_world(self, a2, v2, v3))
  {
    v8 = objc_msgSend_world(self, v5, v6, v7);
    v12 = objc_msgSend_clock(v8, v9, v10, v11);
    objc_msgSend_speed(v12, v13, v14, v15);
  }

  if (self->_activeStateName)
  {
    v16 = objc_msgSend_rootLayer(self, v5, v6, v7);
    v19 = objc_msgSend_stateWithName_(v16, v17, self->_activeStateName, v18);
  }

  else
  {
    v19 = 0;
  }

  v20 = objc_msgSend_stateController(self, v5, v6, v7);
  v24 = objc_msgSend_rootLayer(self, v21, v22, v23);

  MEMORY[0x1EEE66B58](v20, sel_setState_ofLayer_transitionSpeed_, v19, v24);
}

- (CALayer)rootLayer
{
  if (!self->_loaded)
  {
    self->_loaded = 1;
    v5 = objc_msgSend_world(self, a2, v2, v3);
    v12 = objc_msgSend_assetPathResolver(v5, v6, v7, v8);
    if (!v12)
    {
      v13 = objc_msgSend_valueForKey_(VFXTransaction, v9, @"VFXWorldLoadingContextKey", v11);
      v12 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"VFXWorldLoaderAssetPathResolver", v15);
    }

    v16 = objc_msgSend_filename(self, v9, v10, v11);
    v19 = objc_msgSend_absoluteURLForAssetPath_(v12, v17, v16, v18);
    if (v19)
    {
      v23 = objc_msgSend_packageWithContentsOfURL_type_options_error_(MEMORY[0x1E6979400], v20, v19, *MEMORY[0x1E6979EF8], 0, 0);
      self->_rootLayer = objc_msgSend_rootLayer(v23, v24, v25, v26);
    }

    objc_msgSend_updateActiveState(self, v20, v21, v22);
  }

  return self->_rootLayer;
}

- (void)copyTo:(id)a3 withContext:(id)a4
{
  v5.receiver = self;
  v5.super_class = VFXLayerAsset;
  [(VFXFileAsset *)&v5 copyTo:a3 withContext:a4];
  *(a3 + 56) = 0;
}

- (void)setActiveStateName:(id)a3
{
  if (self->_activeStateName != a3)
  {
    v3 = a3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = 0;
    }

    self->_activeStateName = v3;

    objc_msgSend_updateActiveState(self, v5, v6, v7);
  }
}

- (VFXLayerAsset)initWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = VFXLayerAsset;
  v4 = [(VFXFileAsset *)&v11 initWithCoder:?];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"activeStateName");
    objc_msgSend_setActiveStateName_(v4, v8, v7, v9);
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  if (objc_msgSend_activeStateName(self, a2, a3, v3))
  {
    active = objc_msgSend_activeStateName(self, v6, v7, v8);
    objc_msgSend_encodeObject_forKey_(a3, v10, active, @"activeStateName");
  }

  v11.receiver = self;
  v11.super_class = VFXLayerAsset;
  [(VFXFileAsset *)&v11 encodeWithCoder:a3];
}

@end