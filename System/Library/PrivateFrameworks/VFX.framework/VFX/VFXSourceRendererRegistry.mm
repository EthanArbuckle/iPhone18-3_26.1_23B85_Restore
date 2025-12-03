@interface VFXSourceRendererRegistry
+ (id)sharedRegistry;
- (VFXSourceRendererRegistry)init;
- (id)sourceRendererForEngineContext:(__CFXEngineContext *)context source:(id)source textureSource:(id)textureSource targetTexture:(id)texture;
- (void)dealloc;
- (void)removeSourceRenderersForSource:(id)source;
- (void)rendererDidChange:(id)change;
@end

@implementation VFXSourceRendererRegistry

- (VFXSourceRendererRegistry)init
{
  v4.receiver = self;
  v4.super_class = VFXSourceRendererRegistry;
  v2 = [(VFXSourceRendererRegistry *)&v4 init];
  if (v2)
  {
    v2->_registry = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  }

  return v2;
}

- (void)dealloc
{
  registry = self->_registry;
  if (registry)
  {
    CFRelease(registry);
  }

  v4.receiver = self;
  v4.super_class = VFXSourceRendererRegistry;
  [(VFXSourceRendererRegistry *)&v4 dealloc];
}

+ (id)sharedRegistry
{
  if (qword_1EB64FB28 != -1)
  {
    sub_1AFDF3D64();
  }

  return qword_1EB64FB20;
}

- (void)rendererDidChange:(id)change
{
  if (pthread_main_np())
  {
    v7 = objc_msgSend_layer(change, v4, v5, v6);
    v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9, v10);

    objc_msgSend_postNotificationName_object_(v11, v12, @"VFXLayerTreeDidChange", v7);
  }

  else
  {
    objc_msgSend_begin(MEMORY[0x1E6979518], v4, v5, v6);
    objc_msgSend_activateBackground_(MEMORY[0x1E6979518], v13, 1, v14);
    v18 = objc_msgSend_layer(change, v15, v16, v17);
    v22 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v19, v20, v21);
    objc_msgSend_postNotificationName_object_(v22, v23, @"VFXLayerTreeDidChange", v18);
    v27 = MEMORY[0x1E6979518];

    objc_msgSend_commit(v27, v24, v25, v26);
  }
}

- (id)sourceRendererForEngineContext:(__CFXEngineContext *)context source:(id)source textureSource:(id)textureSource targetTexture:(id)texture
{
  v42[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&unk_1EB644850);
  Value = CFDictionaryGetValue(self->_registry, source);
  if (Value)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_14:
    Value = 0;
    goto LABEL_15;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v18 = objc_msgSend_valueForKey_(source, v11, @"VFXIsBackingViewAsMaterialPropertyTag", v13);
    if (!objc_msgSend_BOOLValue(v18, v19, v20, v21))
    {
      goto LABEL_9;
    }

    v41 = @"kCARendererFlags";
    v42[0] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v22, 3, v23);
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, v42, &v41, 1);
    if (!v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v25 = objc_msgSend_mutableCopy(v14, v15, v16, v17);
    goto LABEL_10;
  }

  v14 = objc_msgSend_rendererOptions(source, v11, v12, v13);
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_9:
  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
LABEL_10:
  v26 = v25;
  if (!texture)
  {

    goto LABEL_14;
  }

  v27 = sub_1AF164458();
  objc_msgSend_setObject_forKeyedSubscript_(v26, v28, v27, *MEMORY[0x1E6979F08]);
  v29 = sub_1AF12E2AC(context);
  v33 = objc_msgSend_commandQueue(v29, v30, v31, v32);
  objc_msgSend_setObject_forKeyedSubscript_(v26, v34, v33, *MEMORY[0x1E6979F10]);
  objc_msgSend_setObject_forKeyedSubscript_(v26, v35, MEMORY[0x1E695E118], *MEMORY[0x1E6979F00]);
  Value = objc_msgSend_rendererWithMTLTexture_options_(MEMORY[0x1E6979428], v36, texture, v26);
  objc_msgSend_setDelegate_(Value, v37, self, v38);

  if (Value)
  {
    CFDictionarySetValue(self->_registry, source, Value);
  }

LABEL_15:
  v39 = Value;
  os_unfair_lock_unlock(&unk_1EB644850);
  return Value;
}

- (void)removeSourceRenderersForSource:(id)source
{
  os_unfair_lock_lock(&unk_1EB644850);
  CFDictionaryRemoveValue(self->_registry, source);

  os_unfair_lock_unlock(&unk_1EB644850);
}

@end