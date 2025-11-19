@interface VFXViewConfiguration
- (VFXViewConfiguration)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VFXViewConfiguration

- (void)dealloc
{
  objc_msgSend_setColorSpaceName_(self, a2, 0, v2);
  v4.receiver = self;
  v4.super_class = VFXViewConfiguration;
  [(VFXViewConfiguration *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v6 = objc_msgSend_colorSpaceName(self, a2, a3, v3);
  objc_msgSend_encodeObject_forKey_(a3, v7, v6, @"colorSpaceName");
  v11 = objc_msgSend_pixelFormat(self, v8, v9, v10);
  objc_msgSend_encodeInteger_forKey_(a3, v12, v11, @"pixelFormat");
  v16 = objc_msgSend_wantsExtendedDynamicRange(self, v13, v14, v15);
  objc_msgSend_encodeBool_forKey_(a3, v17, v16, @"hdr");
  v22 = objc_msgSend_additiveWritesToAlpha(self, v18, v19, v20);

  objc_msgSend_encodeBool_forKey_(a3, v21, v22, @"additiveAlpha");
}

- (VFXViewConfiguration)initWithCoder:(id)a3
{
  v26.receiver = self;
  v26.super_class = VFXViewConfiguration;
  v4 = [(VFXViewConfiguration *)&v26 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"colorSpaceName");
    objc_msgSend_setColorSpaceName_(v4, v8, v7, v9);
    v12 = objc_msgSend_decodeIntegerForKey_(a3, v10, @"pixelFormat", v11);
    objc_msgSend_setPixelFormat_(v4, v13, v12, v14);
    v17 = objc_msgSend_decodeBoolForKey_(a3, v15, @"hdr", v16);
    objc_msgSend_setWantsExtendedDynamicRange_(v4, v18, v17, v19);
    v22 = objc_msgSend_decodeBoolForKey_(a3, v20, @"additiveAlpha", v21);
    objc_msgSend_setAdditiveWritesToAlpha_(v4, v23, v22, v24);
  }

  return v4;
}

@end