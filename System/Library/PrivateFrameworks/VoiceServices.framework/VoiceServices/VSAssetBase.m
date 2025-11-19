@interface VSAssetBase
- (VSAssetBase)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VSAssetBase

- (VSAssetBase)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = VSAssetBase;
  v5 = [(VSAssetBase *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_compatibilityVersion"];
    compatibilityVersion = v5->_compatibilityVersion;
    v5->_compatibilityVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contentVersion"];
    contentVersion = v5->_contentVersion;
    v5->_contentVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_masteredVersion"];
    masteredVersion = v5->_masteredVersion;
    v5->_masteredVersion = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_downloadSize"];
    downloadSize = v5->_downloadSize;
    v5->_downloadSize = v14;

    v5->_isPurgeable = [v4 decodeBoolForKey:@"_isPurgeable"];
    v5->_storage = [v4 decodeIntegerForKey:@"_storage"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bundleIdentifier = self->_bundleIdentifier;
  v5 = a3;
  [v5 encodeObject:bundleIdentifier forKey:@"_bundleIdentifier"];
  [v5 encodeObject:self->_compatibilityVersion forKey:@"_compatibilityVersion"];
  [v5 encodeObject:self->_contentVersion forKey:@"_contentVersion"];
  [v5 encodeObject:self->_masteredVersion forKey:@"_masteredVersion"];
  [v5 encodeObject:self->_downloadSize forKey:@"_downloadSize"];
  [v5 encodeBool:self->_isPurgeable forKey:@"_isPurgeable"];
  [v5 encodeInteger:self->_storage forKey:@"_storage"];
}

@end