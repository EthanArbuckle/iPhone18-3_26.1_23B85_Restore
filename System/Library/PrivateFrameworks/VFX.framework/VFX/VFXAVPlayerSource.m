@interface VFXAVPlayerSource
- (VFXAVPlayerSource)init;
- (id)metalTextureWithEngineContext:(__CFXEngineContext *)a3 textureSampler:(id)a4 nextFrameTime:(double *)a5 status:(id *)a6;
- (void)connectToProxy:(__CFXImageProxy *)a3;
- (void)dealloc;
- (void)registerPlayerIfNeeded:(id)a3;
- (void)setPlayer:(id)a3;
- (void)unregisterPlayer:(id)a3;
@end

@implementation VFXAVPlayerSource

- (VFXAVPlayerSource)init
{
  v3.receiver = self;
  v3.super_class = VFXAVPlayerSource;
  return [(VFXAVPlayerSource *)&v3 init];
}

- (void)registerPlayerIfNeeded:(id)a3
{
  v22[5] = *MEMORY[0x1E69E9840];
  if (!self->_data.videoOutput)
  {
    v5 = *MEMORY[0x1E6965DB8];
    v6 = *MEMORY[0x1E6965FD0];
    v7 = *MEMORY[0x1E6965F50];
    v8 = *MEMORY[0x1E6965F98];
    v21[0] = *MEMORY[0x1E6965D88];
    v21[1] = v8;
    v22[0] = v5;
    v22[1] = v6;
    v9 = *MEMORY[0x1E6966100];
    v21[2] = *MEMORY[0x1E6965F30];
    v21[3] = v9;
    v22[2] = v7;
    v22[3] = MEMORY[0x1E695E118];
    v21[4] = *MEMORY[0x1E6966130];
    v22[4] = &unk_1F25D4690;
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v22, v21, 5);
    v11 = objc_alloc(MEMORY[0x1E69880D8]);
    v14 = objc_msgSend_initWithPixelBufferAttributes_(v11, v12, v10, v13);
    self->_data.videoOutput = v14;
    v18 = objc_msgSend_currentItem(a3, v15, v16, v17);
    objc_msgSend_addOutput_(v18, v19, v14, v20);
  }
}

- (void)unregisterPlayer:(id)a3
{
  v5 = objc_msgSend_currentItem(a3, a2, a3, v3);
  videoOutput = self->_data.videoOutput;

  MEMORY[0x1EEE66B58](v5, sel_removeOutput_, videoOutput, v6);
}

- (void)dealloc
{
  objc_msgSend_unregisterPlayer_(self, a2, self->_player, v2);

  sub_1AF28BE50(&self->_data);
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
    self->_textureCache = 0;
  }

  v5.receiver = self;
  v5.super_class = VFXAVPlayerSource;
  [(VFXTextureSource *)&v5 dealloc];
}

- (void)setPlayer:(id)a3
{
  player = self->_player;
  if (player != a3)
  {
    objc_msgSend_unregisterPlayer_(self, a2, player, v3);

    self->_player = a3;
  }
}

- (void)connectToProxy:(__CFXImageProxy *)a3
{
  sub_1AF27679C(a3, self, 1);
  v4[0] = xmmword_1F24EBDF8;
  v4[1] = *&off_1F24EBE08;
  sub_1AF276824(a3, v4);
}

- (id)metalTextureWithEngineContext:(__CFXEngineContext *)a3 textureSampler:(id)a4 nextFrameTime:(double *)a5 status:(id *)a6
{
  v33[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1AF12E2AC(a3);
  objc_msgSend_registerPlayerIfNeeded_(self, v10, self->_player, v11);
  videoOutput = self->_data.videoOutput;
  v30 = 0uLL;
  v31 = 0;
  v16 = sub_1AF1302C4(a3);
  if (videoOutput)
  {
    objc_msgSend_itemTimeForHostTime_(videoOutput, v13, v14, v15, v16);
  }

  else
  {
    v30 = 0uLL;
    v31 = 0;
  }

  v28 = v30;
  v29 = v31;
  if (objc_msgSend_hasNewPixelBufferForItemTime_(videoOutput, v13, &v28, v15))
  {
    v28 = v30;
    v29 = v31;
    v19 = objc_msgSend_copyPixelBufferForItemTime_itemTimeForDisplay_(videoOutput, v17, &v28, 0);
    if (v19)
    {
      v21 = v19;
      sub_1AF28BE04(&self->_data, v17, v20, v18);
      self->_data.var0 = v21;
      self->_width = CVPixelBufferGetWidth(v21);
      self->_height = CVPixelBufferGetHeight(v21);
    }
  }

  if (self->_data.var0)
  {
    result = self->_data.mtlTextureForRenderer;
    if (result)
    {
      *a6 = 256;
    }

    else
    {
      textureCache = self->_textureCache;
      if (!textureCache)
      {
        v25 = objc_msgSend_device(v9, v17, 0, v18);
        v32 = *MEMORY[0x1E6966010];
        v33[0] = &unk_1F25D43D8;
        v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v26, v33, &v32, 1);
        CVMetalTextureCacheCreate(0, 0, v25, v27, &self->_textureCache);
        textureCache = self->_textureCache;
      }

      sub_1AF28BEAC(&self->_data, v9, textureCache, v18);
      *a6 = 257;
      return self->_data.mtlTextureForRenderer;
    }
  }

  else
  {
    v23 = sub_1AF0D5194();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF3A08();
    }

    return 0;
  }

  return result;
}

@end