@interface QLExtensionManagerCacheKey
- (BOOL)isEqual:(id)equal;
- (QLExtensionManagerCacheKey)initWithAttributes:(id)attributes allowParentTypes:(BOOL)types wantsFirstPartyExtension:(BOOL)extension extensionPath:(id)path;
@end

@implementation QLExtensionManagerCacheKey

- (QLExtensionManagerCacheKey)initWithAttributes:(id)attributes allowParentTypes:(BOOL)types wantsFirstPartyExtension:(BOOL)extension extensionPath:(id)path
{
  attributesCopy = attributes;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = QLExtensionManagerCacheKey;
  v13 = [(QLExtensionManagerCacheKey *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_attributes, attributes);
    v14->_allowParentTypes = types;
    v14->_wantsFirstPartyExtension = extension;
    objc_storeStrong(&v14->_extensionPath, path);
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      attributes = [(QLExtensionManagerCacheKey *)v6 attributes];
      if (![attributes isEqual:self->_attributes])
      {
        v10 = 0;
LABEL_16:

        goto LABEL_17;
      }

      extensionPath = [(QLExtensionManagerCacheKey *)v6 extensionPath];
      extensionPath = self->_extensionPath;
      if (extensionPath == extensionPath || (-[QLExtensionManagerCacheKey extensionPath](v6, "extensionPath"), v3 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:self->_extensionPath]))
      {
        v10 = self->_allowParentTypes == [(QLExtensionManagerCacheKey *)v6 allowParentTypes]&& self->_wantsFirstPartyExtension == [(QLExtensionManagerCacheKey *)v6 wantsFirstPartyExtension];
        if (extensionPath == extensionPath)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_15:
      goto LABEL_16;
    }

    v10 = 0;
  }

LABEL_17:

  return v10;
}

@end