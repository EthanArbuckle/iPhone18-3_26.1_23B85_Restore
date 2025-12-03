@interface CFXVFXRenderTargetInfo
- (CFXVFXRenderTargetInfo)init;
- (int64_t)sampleCount;
- (unint64_t)colorPixelFormatAtIndex:(int64_t)index;
- (unint64_t)depthPixelFormat;
- (unint64_t)stencilPixelFormat;
@end

@implementation CFXVFXRenderTargetInfo

- (CFXVFXRenderTargetInfo)init
{
  v3.receiver = self;
  v3.super_class = CFXVFXRenderTargetInfo;
  return [(CFXVFXRenderTargetInfo *)&v3 init];
}

- (int64_t)sampleCount
{
  v5 = objc_msgSend_descriptor(self, a2, v2, v3);
  v9 = objc_msgSend_colorAttachments(v5, v6, v7, v8);
  v12 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, 0, v11);
  v16 = objc_msgSend_texture(v12, v13, v14, v15);
  v20 = objc_msgSend_descriptor(self, v17, v18, v19);
  if (v16)
  {
    v24 = objc_msgSend_colorAttachments(v20, v21, v22, v23);
    v27 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 0, v26);
  }

  else
  {
    v27 = objc_msgSend_depthAttachment(v20, v21, v22, v23);
  }

  v31 = objc_msgSend_texture(v27, v28, v29, v30);

  return objc_msgSend_sampleCount(v31, v32, v33, v34);
}

- (unint64_t)depthPixelFormat
{
  v4 = objc_msgSend_descriptor(self, a2, v2, v3);
  v8 = objc_msgSend_depthAttachment(v4, v5, v6, v7);
  v12 = objc_msgSend_texture(v8, v9, v10, v11);

  return objc_msgSend_pixelFormat(v12, v13, v14, v15);
}

- (unint64_t)stencilPixelFormat
{
  v4 = objc_msgSend_descriptor(self, a2, v2, v3);
  v8 = objc_msgSend_stencilAttachment(v4, v5, v6, v7);
  v12 = objc_msgSend_texture(v8, v9, v10, v11);

  return objc_msgSend_pixelFormat(v12, v13, v14, v15);
}

- (unint64_t)colorPixelFormatAtIndex:(int64_t)index
{
  v5 = objc_msgSend_descriptor(self, a2, index, v3);
  v9 = objc_msgSend_colorAttachments(v5, v6, v7, v8);
  v12 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, index, v11);
  v16 = objc_msgSend_texture(v12, v13, v14, v15);

  return objc_msgSend_pixelFormat(v16, v17, v18, v19);
}

@end