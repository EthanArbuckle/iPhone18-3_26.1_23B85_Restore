@interface VFXShaderCacheConfiguration
- (VFXShaderCacheConfiguration)init;
- (VFXShaderCacheConfiguration)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VFXShaderCacheConfiguration

- (VFXShaderCacheConfiguration)init
{
  v13.receiver = self;
  v13.super_class = VFXShaderCacheConfiguration;
  v2 = [(VFXShaderCacheConfiguration *)&v13 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setUsesMultisampling_(v2, v3, 1, v4);
    objc_msgSend_setName_(v5, v6, @"default", v7);
    objc_msgSend_setGpuFamily_(v5, v8, 1008, v9);
    objc_msgSend_setPixelFormat_(v5, v10, 81, v11);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXShaderCacheConfiguration;
  [(VFXShaderCacheConfiguration *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInt_forKey_(coder, a2, LODWORD(self->_pixelFormat), @"pixelFormat");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_name, @"name");
  objc_msgSend_encodeInt_forKey_(coder, v6, LODWORD(self->_gpuFamily), @"gpuFamily");
  objc_msgSend_encodeBool_forKey_(coder, v7, self->_usesMultisampling, @"usesMultisampling");
  additiveWritesToAlpha = self->_additiveWritesToAlpha;

  objc_msgSend_encodeBool_forKey_(coder, v8, additiveWritesToAlpha, @"additiveWritesToAlpha");
}

- (VFXShaderCacheConfiguration)initWithCoder:(id)coder
{
  v31.receiver = self;
  v31.super_class = VFXShaderCacheConfiguration;
  v6 = [(VFXShaderCacheConfiguration *)&v31 init];
  if (v6)
  {
    v7 = objc_msgSend_decodeIntForKey_(coder, v4, @"pixelFormat", v5);
    objc_msgSend_setPixelFormat_(v6, v8, v7, v9);
    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"name");
    objc_msgSend_setName_(v6, v13, v12, v14);
    v17 = objc_msgSend_decodeIntForKey_(coder, v15, @"gpuFamily", v16);
    objc_msgSend_setGpuFamily_(v6, v18, v17, v19);
    v22 = objc_msgSend_decodeBoolForKey_(coder, v20, @"usesMultisampling", v21);
    objc_msgSend_setUsesMultisampling_(v6, v23, v22, v24);
    v27 = objc_msgSend_decodeBoolForKey_(coder, v25, @"additiveWritesToAlpha", v26);
    objc_msgSend_setAdditiveWritesToAlpha_(v6, v28, v27, v29);
  }

  return v6;
}

@end