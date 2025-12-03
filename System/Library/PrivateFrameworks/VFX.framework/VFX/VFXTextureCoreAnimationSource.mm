@interface VFXTextureCoreAnimationSource
- (CGSize)layerSizeInPixels;
- (double)__renderLayerUsingMetal:(id)metal withCARenderer:(id)renderer engineContext:(__CFXEngineContext *)context viewport:(double)viewport atTime:;
- (double)__updateTextureWithLayer:(id)layer texture:(id)texture engineContext:(__CFXEngineContext *)context sampler:(id)sampler;
- (double)layerContentsScaleFactor;
- (id)metalTextureWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)_resizeLayer:(id)layer toSize:(CGSize)size updateLayer:(BOOL)updateLayer updateTransform:(BOOL)transform caRenderer:(id)renderer;
- (void)dealloc;
- (void)renderWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)setLayer:(id)layer;
@end

@implementation VFXTextureCoreAnimationSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXTextureCoreAnimationSource;
  [(VFXTextureSource *)&v3 dealloc];
}

- (void)setLayer:(id)layer
{
  layer = self->_layer;
  if (layer != layer)
  {

    self->_layer = layer;
  }
}

- (void)renderWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status
{
  if (sub_1AF12E2AC(context))
  {
    FrameTime_status = objc_msgSend_metalTextureWithEngineContext_textureSampler_nextFrameTime_status_(self, v11, context, *&sampler, time, status);
    v13 = sub_1AF12E2AC(context);

    MEMORY[0x1EEE66B58](v13, sel__drawFullScreenTexture_, FrameTime_status, v14);
  }
}

- (void)_resizeLayer:(id)layer toSize:(CGSize)size updateLayer:(BOOL)updateLayer updateTransform:(BOOL)transform caRenderer:(id)renderer
{
  height = size.height;
  width = size.width;
  v14 = objc_msgSend_requiresMainThreadUpdates(self, a2, layer, updateLayer);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1AF28AC9C;
  v17[3] = &unk_1E7A7E0C0;
  updateLayerCopy = updateLayer;
  v17[4] = renderer;
  v17[5] = layer;
  transformCopy = transform;
  v17[6] = self;
  *&v17[7] = width;
  *&v17[8] = height;
  if (v14)
  {
    dispatch_async(MEMORY[0x1E69E96A0], v17);
  }

  else
  {
    v15 = dispatch_group_create();
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_group_async(v15, global_queue, v17);
    dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v15);
  }
}

- (double)__renderLayerUsingMetal:(id)metal withCARenderer:(id)renderer engineContext:(__CFXEngineContext *)context viewport:(double)viewport atTime:
{
  rect2 = vcvt_hight_f64_f32(*&viewport);
  objc_msgSend_bounds(renderer, a2, metal, renderer, context);
  v26.size.width = rect2.f64[0];
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.height = rect2.f64[1];
  if (!CGRectEqualToRect(v25, v26))
  {
    objc_msgSend_setBounds_(renderer, v9, v10, v11, 0.0, 0.0, *&rect2);
  }

  v15 = objc_msgSend_layer(renderer, v9, v10, v11);
  if (v15 != metal || metal && (objc_msgSend_transform(metal, v12, v13, v14), v24 > 0.0))
  {
    objc_msgSend__resizeLayer_toSize_updateLayer_updateTransform_caRenderer_(self, v12, metal, v15 != metal, 1, renderer, *&rect2);
  }

  objc_msgSend_addUpdateRect_(renderer, v12, v13, v14, 0.0, 0.0, *&rect2);
  objc_msgSend_render(renderer, v16, v17, v18);
  objc_msgSend_nextFrameTime(renderer, v19, v20, v21);
  return result;
}

- (double)__updateTextureWithLayer:(id)layer texture:(id)texture engineContext:(__CFXEngineContext *)context sampler:(id)sampler
{
  v10 = sub_1AF12DDCC(context);
  if (v10)
  {
    if (!sub_1AF1CF830(v10))
    {
      v14 = sub_1AF0D5194();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF36AC(v14);
      }
    }

    v15 = sub_1AF1302C4(context);
  }

  else
  {
    v15 = 0.0;
  }

  if (self->super._framebufferSize.width > 0.0 && self->_lastUpdate != v15)
  {
    v16 = objc_msgSend_sharedRegistry(VFXSourceRendererRegistry, v11, v12, v13);
    v18 = objc_msgSend_sourceRendererForEngineContext_source_textureSource_targetTexture_(v16, v17, context, layer, self, texture);
    v19 = sub_1AF1302D4(context);
    v20 = CACurrentMediaTime();
    if ((objc_msgSend_requiresMainThreadUpdates(self, v21, v22, v23) & 1) == 0)
    {
      objc_msgSend_begin(MEMORY[0x1E6979518], v24, v25, v26);
      objc_msgSend_setDisableActions_(MEMORY[0x1E6979518], v27, 1, v28);
      objc_msgSend_setTimeOffset_(layer, v29, v30, v31, v19 - v20);
      objc_msgSend_commit(MEMORY[0x1E6979518], v32, v33, v34);
    }

    lastUpdate = self->_lastUpdate;
    if (lastUpdate == 0.0 || v15 >= self->_nextUpdateDate + -0.0166666667)
    {
      objc_msgSend_beginFrameAtTime_timeStamp_(v18, v24, 0, v26, v20);
      goto LABEL_18;
    }

    if (v15 != lastUpdate)
    {
      objc_msgSend_beginFrameAtTime_timeStamp_(v18, v24, 0, v26, v20);
      objc_msgSend_updateBounds(v18, v36, v37, v38);
      if (CGRectIsEmpty(v46))
      {
        v42 = INFINITY;
LABEL_25:
        objc_msgSend_endFrame(v18, v39, v40, v41);
        return v42;
      }

LABEL_18:
      self->_lastUpdate = v15;
      if (texture)
      {
        objc_msgSend___renderLayerUsingMetal_withCARenderer_engineContext_viewport_atTime_(self, v39, layer, v18, context, *vcvt_hight_f32_f64(0, self->super._framebufferSize).i64, v20);
        v42 = v43;
      }

      else
      {
        v42 = 0.0;
      }

      self->_nextUpdateDate = 3.40282347e38;
      if (v42 != INFINITY && v42 != 3.40282347e38)
      {
        v44 = CACurrentMediaTime() - v42;
        if (v44 > 0.0)
        {
          self->_nextUpdateDate = v15 + v44;
        }
      }

      goto LABEL_25;
    }
  }

  return INFINITY;
}

- (CGSize)layerSizeInPixels
{
  v4 = objc_msgSend_layer(self, a2, v2, v3);
  objc_msgSend_bounds(v4, v5, v6, v7);
  v9 = v8;
  v11 = v10;
  objc_msgSend_contentsScale(v4, v12, v13, v14);
  v16 = v15 * v11;
  v17 = v15 * v9;
  result.height = v16;
  result.width = v17;
  return result;
}

- (double)layerContentsScaleFactor
{
  v4 = objc_msgSend_layer(self, a2, v2, v3);

  objc_msgSend_contentsScale(v4, v5, v6, v7);
  return result;
}

- (id)metalTextureWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status
{
  if (objc_msgSend_supportsMetal(self, a2, context, *&sampler))
  {
    v11 = sub_1AF12E2AC(context);
    v12 = sub_1AF12DE14(context);
    v13 = CACurrentMediaTime();
    prof_beginFlame("CA texture source", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/Texture sources/Custom sources/VFXCoreAnimationSource.m", 422);
    v17 = objc_msgSend_layer(self, v14, v15, v16);
    if (v17)
    {
      v21 = v17;
      objc_msgSend_layerSizeInPixels(self, v18, v19, v20);
      v23 = v22;
      v25 = v24;
      self->super._framebufferSize.width = v22;
      self->super._framebufferSize.height = v24;
      v29 = objc_msgSend_MTLTextureCache(self, v26, v27, v28);
      if (v29)
      {
        v31 = v29;
        v32 = 0;
      }

      else
      {
        v34 = sub_1AF1F2C50(0);
        v45 = 0uLL;
        v46 = 0;
        CFXTextureDescriptorMake2D(v23, v25, v34, &v45);
        LOBYTE(v46) = 5;
        v38 = objc_msgSend_gpuDevice(v11, v35, v36, v37);
        v43 = v45;
        v44 = v46;
        v31 = CFXGPUDeviceCreateTexture(v38, &v43);
        objc_msgSend_setMTLTextureCache_(self, v39, v31, v40);

        v32 = 1;
      }

      status->var0 = v32;
      status->var1 = 1;
      objc_msgSend___updateTextureWithLayer_texture_engineContext_sampler_(self, v30, v21, v31, context, sampler);
      *time = v41;
      *(v12 + 160) = *(v12 + 160) + CACurrentMediaTime() - v13;
      prof_endFlame();
    }

    else
    {
      v33 = sub_1AF0D5194();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3730(v33);
      }

      *(v12 + 160) = *(v12 + 160) + CACurrentMediaTime() - v13;
      prof_endFlame();
      return 0;
    }
  }

  else
  {
    v47.receiver = self;
    v47.super_class = VFXTextureCoreAnimationSource;
    return [(VFXTextureSource *)&v47 metalTextureWithEngineContext:context textureSampler:sampler nextFrameTime:time status:status];
  }

  return v31;
}

@end