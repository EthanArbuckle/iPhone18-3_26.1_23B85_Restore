@interface TTSAssetBase
- (TTSAssetBase)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TTSAssetBase

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, bundleIdentifier, @"_bundleIdentifier", v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_compatibilityVersion, @"_compatibilityVersion", v8);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, self->_contentVersion, @"_contentVersion", v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, self->_masteredVersion, @"_masteredVersion", v12);
}

- (TTSAssetBase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = TTSAssetBase;
  v5 = [(TTSAssetBase *)&v27 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"_bundleIdentifier", v8);
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v9;

    v11 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"_compatibilityVersion", v13);
    compatibilityVersion = v5->_compatibilityVersion;
    v5->_compatibilityVersion = v14;

    v16 = objc_opt_class();
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v17, v16, @"_contentVersion", v18);
    contentVersion = v5->_contentVersion;
    v5->_contentVersion = v19;

    v21 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v22, v21, @"_masteredVersion", v23);
    masteredVersion = v5->_masteredVersion;
    v5->_masteredVersion = v24;
  }

  return v5;
}

@end