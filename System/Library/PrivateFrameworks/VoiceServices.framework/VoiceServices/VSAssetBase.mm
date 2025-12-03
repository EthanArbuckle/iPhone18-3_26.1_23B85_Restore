@interface VSAssetBase
- (VSAssetBase)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSAssetBase

- (VSAssetBase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = VSAssetBase;
  v5 = [(VSAssetBase *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_compatibilityVersion"];
    compatibilityVersion = v5->_compatibilityVersion;
    v5->_compatibilityVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contentVersion"];
    contentVersion = v5->_contentVersion;
    v5->_contentVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_masteredVersion"];
    masteredVersion = v5->_masteredVersion;
    v5->_masteredVersion = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_downloadSize"];
    downloadSize = v5->_downloadSize;
    v5->_downloadSize = v14;

    v5->_isPurgeable = [coderCopy decodeBoolForKey:@"_isPurgeable"];
    v5->_storage = [coderCopy decodeIntegerForKey:@"_storage"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"_bundleIdentifier"];
  [coderCopy encodeObject:self->_compatibilityVersion forKey:@"_compatibilityVersion"];
  [coderCopy encodeObject:self->_contentVersion forKey:@"_contentVersion"];
  [coderCopy encodeObject:self->_masteredVersion forKey:@"_masteredVersion"];
  [coderCopy encodeObject:self->_downloadSize forKey:@"_downloadSize"];
  [coderCopy encodeBool:self->_isPurgeable forKey:@"_isPurgeable"];
  [coderCopy encodeInteger:self->_storage forKey:@"_storage"];
}

@end