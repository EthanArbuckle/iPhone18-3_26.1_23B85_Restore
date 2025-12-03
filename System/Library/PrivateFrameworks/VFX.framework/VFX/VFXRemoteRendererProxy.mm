@interface VFXRemoteRendererProxy
- (VFXRemoteRendererProxy)init;
- (void)dealloc;
- (void)destroyBufferWithRemoteID:(id)d;
- (void)destroyTextureWithRemoteID:(id)d;
- (void)newBuffer:(id)buffer remoteID:(id)d;
- (void)newFrame:(id)frame index:(int64_t)index;
@end

@implementation VFXRemoteRendererProxy

- (VFXRemoteRendererProxy)init
{
  v10.receiver = self;
  v10.super_class = VFXRemoteRendererProxy;
  v5 = [(VFXRemoteRendererProxy *)&v10 init];
  if (v5)
  {
    v5->_decoder = objc_msgSend_remoteDecoder(VFXRenderer, v2, v3, v4);
    v6 = objc_alloc_init(VFXRenderOptions);
    v5->_renderOptions = v6;
    objc_msgSend_setWaitUntilCompleted_(v6, v7, 1, v8);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXRemoteRendererProxy;
  [(VFXRemoteRendererProxy *)&v3 dealloc];
}

- (void)newFrame:(id)frame index:(int64_t)index
{
  lastFrame = self->_lastFrame;
  if (lastFrame != frame)
  {

    self->_lastFrame = frame;
  }
}

- (void)newBuffer:(id)buffer remoteID:(id)d
{
  region = 0;
  v6 = xpc_shmem_map(buffer, &region);
  v10 = objc_msgSend_device(self->_decoder, v7, v8, v9);
  v12 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v10, v11, region, v6, 0, &unk_1F24EC248);
  v13 = MEMORY[0x1E696AEC0];
  v17 = objc_msgSend_unsignedIntegerValue(d, v14, v15, v16);
  v20 = objc_msgSend_stringWithFormat_(v13, v18, @"shared_%lx", v19, v17);
  objc_msgSend_setLabel_(v12, v21, v20, v22);
  v26 = objc_msgSend_resourceConsumer(self->_decoder, v23, v24, v25);
  v30 = objc_msgSend_unsignedIntegerValue(d, v27, v28, v29);
  objc_msgSend_remoteRegisterBuffer_remoteID_(v26, v31, v12, v30);
}

- (void)destroyBufferWithRemoteID:(id)d
{
  v5 = objc_msgSend_resourceConsumer(self->_decoder, a2, d, v3);
  v9 = objc_msgSend_unsignedIntegerValue(d, v6, v7, v8);

  MEMORY[0x1EEE66B58](v5, sel_remoteUnregisterBuffer_, v9, v10);
}

- (void)destroyTextureWithRemoteID:(id)d
{
  v5 = objc_msgSend_resourceConsumer(self->_decoder, a2, d, v3);
  v9 = objc_msgSend_unsignedIntegerValue(d, v6, v7, v8);

  MEMORY[0x1EEE66B58](v5, sel_remoteUnregisterTexture_, v9, v10);
}

@end