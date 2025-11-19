@interface TTSAssetBase
- (TTSAssetBase)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TTSAssetBase

- (void)encodeWithCoder:(id)a3
{
  bundleIdentifier = self->_bundleIdentifier;
  v13 = a3;
  objc_msgSend_encodeObject_forKey_(v13, v5, bundleIdentifier, @"_bundleIdentifier", v6);
  objc_msgSend_encodeObject_forKey_(v13, v7, self->_compatibilityVersion, @"_compatibilityVersion", v8);
  objc_msgSend_encodeObject_forKey_(v13, v9, self->_contentVersion, @"_contentVersion", v10);
  objc_msgSend_encodeObject_forKey_(v13, v11, self->_masteredVersion, @"_masteredVersion", v12);
}

- (TTSAssetBase)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = TTSAssetBase;
  v5 = [(TTSAssetBase *)&v27 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"_bundleIdentifier", v8);
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v9;

    v11 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"_compatibilityVersion", v13);
    compatibilityVersion = v5->_compatibilityVersion;
    v5->_compatibilityVersion = v14;

    v16 = objc_opt_class();
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v17, v16, @"_contentVersion", v18);
    contentVersion = v5->_contentVersion;
    v5->_contentVersion = v19;

    v21 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v22, v21, @"_masteredVersion", v23);
    masteredVersion = v5->_masteredVersion;
    v5->_masteredVersion = v24;
  }

  return v5;
}

@end