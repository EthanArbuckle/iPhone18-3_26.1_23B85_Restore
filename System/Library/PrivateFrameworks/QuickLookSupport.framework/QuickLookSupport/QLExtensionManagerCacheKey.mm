@interface QLExtensionManagerCacheKey
- (BOOL)isEqual:(id)a3;
- (QLExtensionManagerCacheKey)initWithAttributes:(id)a3 allowParentTypes:(BOOL)a4 wantsFirstPartyExtension:(BOOL)a5 extensionPath:(id)a6;
@end

@implementation QLExtensionManagerCacheKey

- (QLExtensionManagerCacheKey)initWithAttributes:(id)a3 allowParentTypes:(BOOL)a4 wantsFirstPartyExtension:(BOOL)a5 extensionPath:(id)a6
{
  v11 = a3;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = QLExtensionManagerCacheKey;
  v13 = [(QLExtensionManagerCacheKey *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_attributes, a3);
    v14->_allowParentTypes = a4;
    v14->_wantsFirstPartyExtension = a5;
    objc_storeStrong(&v14->_extensionPath, a6);
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(QLExtensionManagerCacheKey *)v6 attributes];
      if (![v7 isEqual:self->_attributes])
      {
        v10 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v8 = [(QLExtensionManagerCacheKey *)v6 extensionPath];
      extensionPath = self->_extensionPath;
      if (v8 == extensionPath || (-[QLExtensionManagerCacheKey extensionPath](v6, "extensionPath"), v3 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:self->_extensionPath]))
      {
        v10 = self->_allowParentTypes == [(QLExtensionManagerCacheKey *)v6 allowParentTypes]&& self->_wantsFirstPartyExtension == [(QLExtensionManagerCacheKey *)v6 wantsFirstPartyExtension];
        if (v8 == extensionPath)
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