@interface VFXMaterialPropertyTextureProviderSource
- (id)cachedTextureWithURL:(id)l token:(id *)token didFallbackToDefaultTexture:(BOOL *)texture;
- (id)metalTextureWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)connectToProxy:(__CFXImageProxy *)proxy;
- (void)dealloc;
- (void)renderWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time;
- (void)setTextureProvider:(id)provider;
@end

@implementation VFXMaterialPropertyTextureProviderSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMaterialPropertyTextureProviderSource;
  [(VFXTextureSource *)&v3 dealloc];
}

- (void)setTextureProvider:(id)provider
{
  if (self->_textureProvider != provider)
  {

    self->_texture = 0;
    self->_textureProvider = provider;
  }
}

- (void)connectToProxy:(__CFXImageProxy *)proxy
{
  sub_1AF27679C(proxy, self, 0);
  v4[0] = xmmword_1F24EBDC8;
  v4[1] = *&off_1F24EBDD8;
  sub_1AF276824(proxy, v4);
}

- (id)metalTextureWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status
{
  self->_engineContext = context;
  v8 = sub_1AF12E2AC(context);
  v12 = v8;
  if (self->_texture)
  {
    v13 = 0;
  }

  else
  {
    textureProvider = self->_textureProvider;
    v15 = objc_msgSend_device(v8, v9, v10, v11);
    self->_texture = objc_msgSend_newTextureForDevice_(textureProvider, v16, v15, v17);
    v13 = 1;
  }

  status->var0 = v13;
  status->var1 = 1;
  sub_1AF28B814(self->_textureProvider, self->_texture, self, v12);
  return self->_texture;
}

- (void)renderWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time
{
  self->_engineContext = context;
  v6 = sub_1AF12E2AC(context);
  textureProvider = self->_textureProvider;
  texture = self->_texture;

  sub_1AF28B814(textureProvider, texture, self, v6);
}

- (id)cachedTextureWithURL:(id)l token:(id *)token didFallbackToDefaultTexture:(BOOL *)texture
{
  if (token)
  {
    *token = 0;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_1AF28BAD4;
  v30[3] = &unk_1E7A7E0E8;
  v30[4] = l;
  v9 = sub_1AF198494(l, 1, v30);
  v10 = v9;
  if (token)
  {
    *token = v9;
  }

  v29 = 0;
  v11 = sub_1AF12E2AC(self->_engineContext);
  v15 = objc_msgSend_resourceManager(v11, v12, v13, v14);
  v16 = sub_1AF1C4F6C();
  v18 = objc_msgSend_renderResourceForImage_sampler_options_engineContext_didFallbackToDefaultTexture_(v15, v17, v10, v16, 0, self->_engineContext, &v29);
  CFAutorelease(v10);
  if (v29)
  {
    v22 = objc_msgSend_resourceManagerMonitor(v11, v19, v20, v21);
    if (v22)
    {
      v25 = v22;
      v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, @"VFXMaterialPropertyTextureProviderHelper could not find texture for %@", v24, l);
      objc_msgSend_renderContext_didFallbackToDefaultTextureForSource_message_(v25, v27, v11, l, v26);
    }
  }

  if (texture)
  {
    *texture = v29;
  }

  return v18;
}

@end