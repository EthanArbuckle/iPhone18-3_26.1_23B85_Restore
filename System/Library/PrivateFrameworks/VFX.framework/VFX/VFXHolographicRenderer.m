@interface VFXHolographicRenderer
- (BOOL)isNodeInsideFrustum:(id)a3 withPointOfView:(id)a4;
- (CGRect)currentViewport;
- (VFXHolographicRenderer)initWithDevice:(id)a3 options:(id)a4;
- (double)projectPoint:(uint64_t)a3;
- (id)hitTest:(CGPoint)a3 options:(id)a4;
- (id)nodesInsideFrustumWithPointOfView:(id)a3;
- (uint64_t)unprojectPoint:(uint64_t)a3;
- (void)dealloc;
- (void)setJitteringEnabled:(BOOL)a3;
- (void)setPointOfView:(id)a3;
- (void)setShowsStatistics:(BOOL)a3;
@end

@implementation VFXHolographicRenderer

- (VFXHolographicRenderer)initWithDevice:(id)a3 options:(id)a4
{
  v26.receiver = self;
  v26.super_class = VFXHolographicRenderer;
  v8 = [(VFXHolographicRenderer *)&v26 init];
  if (v8)
  {
    if (a3 || (a3 = objc_msgSend_deviceForOptions_(VFXView, v6, a4, v7)) != 0)
    {
      if (!objc_msgSend_objectForKeyedSubscript_(a4, v6, @"maxInFlightFrameCount", v7))
      {
        if (a4)
        {
          v12 = objc_msgSend_mutableCopy(a4, v9, v10, v11);
        }

        else
        {
          v14 = objc_alloc(MEMORY[0x1E695DF90]);
          v12 = objc_msgSend_initWithCapacity_(v14, v15, 1, v16);
        }

        v17 = v12;
        objc_msgSend_setObject_forKeyedSubscript_(v12, v13, &unk_1F25D4510, @"maxInFlightFrameCount");
        a4 = v17;
      }

      v18 = [VFXRenderer alloc];
      isPrivateRenderer_privateRendererOwner_clearsOnDraw = objc_msgSend__initWithDevice_options_isPrivateRenderer_privateRendererOwner_clearsOnDraw_(v18, v19, a3, a4, 1, v8, 0);
      v8->_renderer = isPrivateRenderer_privateRendererOwner_clearsOnDraw;
      objc_msgSend_setRendererKind_(isPrivateRenderer_privateRendererOwner_clearsOnDraw, v21, 3, v22);
      objc_msgSend_setShouldLoadFinalTexture_(v8->_renderer, v23, 1, v24);
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXHolographicRenderer;
  [(VFXHolographicRenderer *)&v3 dealloc];
}

- (id)hitTest:(CGPoint)a3 options:(id)a4
{
  objc_msgSend__backingSize(self->_renderer, a2, a4, v4);
  renderer = self->_renderer;

  return MEMORY[0x1EEE66B58](renderer, sel__hitTest_viewport_options_, a4, v7);
}

- (CGRect)currentViewport
{
  (MEMORY[0x1EEE66B58])(self->_renderer, sel_currentViewport);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)isNodeInsideFrustum:(id)a3 withPointOfView:(id)a4
{
  renderer = self->_renderer;
  objc_msgSend__viewport(renderer, a2, a3, a4);

  return MEMORY[0x1EEE66B58](renderer, sel__isNodeInsideFrustum_withPointOfView_viewport_, a3, a4);
}

- (id)nodesInsideFrustumWithPointOfView:(id)a3
{
  renderer = self->_renderer;
  objc_msgSend__viewport(renderer, a2, a3, v3);

  return MEMORY[0x1EEE66B58](renderer, sel__nodesInsideFrustumWithPointOfView_viewport_, a3, v6);
}

- (double)projectPoint:(uint64_t)a3
{
  objc_msgSend__viewport(*(a1 + 24), a2, a3, a4);
  objc_msgSend__projectPoint_viewport_(*(a1 + 24), v6, v7, v8, a5, v9, *&v9, v10);
  LODWORD(v12) = v11;
  *(&v12 + 1) = v15 - v13;
  return v12;
}

- (uint64_t)unprojectPoint:(uint64_t)a3
{
  objc_msgSend__viewport(*(a1 + 24), a2, a3, a4);
  v7 = *(a1 + 24);

  return MEMORY[0x1EEE66B58](v7, sel__unprojectPoint_viewport_, v5, v6);
}

- (void)setPointOfView:(id)a3
{
  v5 = a3;

  self->_pointOfView = a3;
}

- (void)setJitteringEnabled:(BOOL)a3
{
  if (a3)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFB978(self, v4);
    }
  }
}

- (void)setShowsStatistics:(BOOL)a3
{
  v5 = sub_1AF0D5C40(0) | a3;
  renderer = self->_renderer;

  objc_msgSend_setShowsStatistics_(renderer, v4, v5, v6);
}

@end