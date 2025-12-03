@interface VFXRenderToTextureFinalAttachmentProvider
- (BOOL)isEqual:(id)equal;
- (VFXRenderToTextureFinalAttachmentProvider)initWithTexture:(id)texture;
- (id)textureForAttachment:(id)attachment withDescriptor:(id)descriptor;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation VFXRenderToTextureFinalAttachmentProvider

- (VFXRenderToTextureFinalAttachmentProvider)initWithTexture:(id)texture
{
  v31.receiver = self;
  v31.super_class = VFXRenderToTextureFinalAttachmentProvider;
  v4 = [(VFXRenderToTextureFinalAttachmentProvider *)&v31 init];
  if (v4)
  {
    textureCopy = texture;
    v4->_texture = textureCopy;
    v4->_finalAttachementIdentifier = RGResourceIdentifierFinalColor(textureCopy);
    v4->_drawableDescriptor = objc_alloc_init(VFXTextureAttachmentDescriptor);
    v9 = objc_msgSend_width(v4->_texture, v6, v7, v8);
    objc_msgSend_setWidth_(v4->_drawableDescriptor, v10, v9, v11);
    v15 = objc_msgSend_height(v4->_texture, v12, v13, v14);
    objc_msgSend_setHeight_(v4->_drawableDescriptor, v16, v15, v17);
    v21 = objc_msgSend_pixelFormat(v4->_texture, v18, v19, v20);
    objc_msgSend_setPixelFormat_(v4->_drawableDescriptor, v22, v21, v23);
    v27 = objc_msgSend_arrayLength(v4->_texture, v24, v25, v26);
    objc_msgSend_setArrayLength_(v4->_drawableDescriptor, v28, v27, v29);
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v8 = objc_msgSend_finalColorDescriptor(self, v5, v6, v7);
  v13 = objc_msgSend_finalColorDescriptor(equal, v9, v10, v11);

  return objc_msgSend_isEqual_(v8, v12, v13, v14);
}

- (unint64_t)hash
{
  v4 = objc_msgSend_finalColorDescriptor(self, a2, v2, v3);

  return objc_msgSend_hash(v4, v5, v6, v7);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXRenderToTextureFinalAttachmentProvider;
  [(VFXRenderToTextureFinalAttachmentProvider *)&v3 dealloc];
}

- (id)textureForAttachment:(id)attachment withDescriptor:(id)descriptor
{
  finalAttachementIdentifier = self->_finalAttachementIdentifier;
  v6 = RGResourceIdentifierMake(attachment);
  if (RGResourceIdentifierMatch(finalAttachementIdentifier, v6))
  {
    return self->_texture;
  }

  else
  {
    return 0;
  }
}

@end