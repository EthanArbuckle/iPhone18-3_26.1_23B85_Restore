@interface MAAssetTypeDescriptor
+ (id)_assetTypeDescriptors;
+ (id)_secureAssetTypeDescriptors;
+ (id)_typeDescriptorDictionaryForAssetType:(void *)type typeDescriptors:;
+ (id)_typeDescriptorsMatchingBooleanKey:(uint64_t)key;
+ (id)descriptorForAssetType:(id)type;
+ (void)_loadDescriptorsFromPath:(void *)path intoDictionary:;
- (BOOL)shouldMakeDataVault;
- (BOOL)shouldRemoveV1Assets;
- (MAAssetTypeDescriptor)initWithAssetType:(id)type;
- (NSArray)assetSpecifiers;
- (NSDictionary)assetProperties;
- (id)description;
@end

@implementation MAAssetTypeDescriptor

+ (id)descriptorForAssetType:(id)type
{
  typeCopy = type;
  v4 = [[MAAssetTypeDescriptor alloc] initWithAssetType:typeCopy];

  return v4;
}

- (MAAssetTypeDescriptor)initWithAssetType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    v14.receiver = self;
    v14.super_class = MAAssetTypeDescriptor;
    self = [(MAAssetTypeDescriptor *)&v14 init];
    if (self)
    {
      v6 = +[MAAssetTypeDescriptor _assetTypeDescriptors];
      v7 = +[MAAssetTypeDescriptor _secureAssetTypeDescriptors];
      v8 = [MAAssetTypeDescriptor _typeDescriptorDictionaryForAssetType:typeCopy typeDescriptors:v7];
      if (v8)
      {
        v9 = v8;
        v10 = 1;
      }

      else
      {
        v12 = [MAAssetTypeDescriptor _typeDescriptorDictionaryForAssetType:typeCopy typeDescriptors:v6];
        if (!v12)
        {
          selfCopy = 0;
          goto LABEL_9;
        }

        v9 = v12;
        v10 = 0;
      }

      self->_isSecure = v10;
      objc_storeStrong(&self->_typeDescriptor, v9);
      objc_storeStrong(&self->_assetType, type);
      selfCopy = self;

LABEL_9:
      goto LABEL_10;
    }
  }

  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

+ (id)_assetTypeDescriptors
{
  objc_opt_self();
  if (_assetTypeDescriptors_onceToken != -1)
  {
    +[MAAssetTypeDescriptor _assetTypeDescriptors];
  }

  v0 = _assetTypeDescriptors_assetTypeDescriptors;

  return v0;
}

+ (id)_secureAssetTypeDescriptors
{
  objc_opt_self();
  if (_secureAssetTypeDescriptors_onceToken != -1)
  {
    +[MAAssetTypeDescriptor _secureAssetTypeDescriptors];
  }

  v0 = _secureAssetTypeDescriptors_secureAssetTypeDescriptors;

  return v0;
}

+ (id)_typeDescriptorDictionaryForAssetType:(void *)type typeDescriptors:
{
  v4 = a2;
  typeCopy = type;
  objc_opt_self();
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __79__MAAssetTypeDescriptor__typeDescriptorDictionaryForAssetType_typeDescriptors___block_invoke;
  v9[3] = &unk_4B3988;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [typeCopy enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)description
{
  assetType = [(MAAssetTypeDescriptor *)self assetType];
  v4 = [NSString stringWithFormat:@"<MAAssetTypeDescriptor: %p>: (AssetType: %@, Secure: %d)", self, assetType, [(MAAssetTypeDescriptor *)self isSecure]];

  return v4;
}

+ (id)_typeDescriptorsMatchingBooleanKey:(uint64_t)key
{
  v2 = a2;
  objc_opt_self();
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = __60__MAAssetTypeDescriptor__typeDescriptorsMatchingBooleanKey___block_invoke;
  v13 = &unk_4B3920;
  v14 = v2;
  v15 = objc_opt_new();
  v3 = v15;
  v4 = v2;
  v5 = objc_retainBlock(&v10);
  v6 = +[MAAssetTypeDescriptor _assetTypeDescriptors];
  (v5[2])(v5, v6);

  v7 = +[MAAssetTypeDescriptor _secureAssetTypeDescriptors];
  (v5[2])(v5, v7);

  v8 = [v3 copy];

  return v8;
}

void __60__MAAssetTypeDescriptor__typeDescriptorsMatchingBooleanKey___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __60__MAAssetTypeDescriptor__typeDescriptorsMatchingBooleanKey___block_invoke_2;
  v4[3] = &unk_4B38F8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 enumerateKeysAndObjectsUsingBlock:v4];
}

uint64_t __60__MAAssetTypeDescriptor__typeDescriptorsMatchingBooleanKey___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v8 objectForKey:*(a1 + 32)];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 BOOLValue])
    {
      v5 = [v8 objectForKey:@"Asset Type"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [[MAAssetTypeDescriptor alloc] initWithAssetType:v5];
        if (v6)
        {
          [*(a1 + 40) addObject:v6];
        }
      }
    }
  }

  return _objc_release_x1();
}

void __46__MAAssetTypeDescriptor__assetTypeDescriptors__block_invoke(id a1)
{
  v1 = objc_opt_new();
  v2 = _assetTypeDescriptors_assetTypeDescriptors;
  _assetTypeDescriptors_assetTypeDescriptors = v1;

  v3 = _assetTypeDescriptors_assetTypeDescriptors;

  [MAAssetTypeDescriptor _loadDescriptorsFromPath:v3 intoDictionary:?];
}

+ (void)_loadDescriptorsFromPath:(void *)path intoDictionary:
{
  v4 = a2;
  pathCopy = path;
  objc_opt_self();
  v5 = +[NSFileManager defaultManager];
  v6 = [NSURL fileURLWithPath:v4];
  v40 = NSURLIsRegularFileKey;
  v7 = [NSArray arrayWithObjects:&v40 count:1];
  v34 = 0;
  v8 = [v5 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:v7 options:4 error:&v34];
  v9 = v34;

  if (v8)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v25 = v9;
      v26 = v8;
      v27 = v4;
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          lastPathComponent = [v15 lastPathComponent];
          v18 = lastPathComponent;
          if (lastPathComponent)
          {
            stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
            v20 = stringByDeletingPathExtension;
            if (stringByDeletingPathExtension && [stringByDeletingPathExtension length])
            {
              v29 = 0;
              v21 = [v15 getResourceValue:&v29 forKey:NSURLIsRegularFileKey error:0];
              v22 = v29;
              v23 = v22;
              if (!v21 || [v22 BOOLValue])
              {
                v24 = [NSDictionary dictionaryWithContentsOfURL:v15, v25, v26, v27];
                if (v24)
                {
                  [pathCopy setObject:v24 forKeyedSubscript:v20];
                }
              }
            }
          }

          objc_autoreleasePoolPop(v16);
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v12);
      v8 = v26;
      v4 = v27;
      v9 = v25;
    }
  }

  else
  {
    v10 = _MADLog(@"DEFAULT");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v37 = v4;
      v38 = 2112;
      v39 = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Failed to load asset descriptors from path %{public}@. %@", buf, 0x16u);
    }
  }
}

void __52__MAAssetTypeDescriptor__secureAssetTypeDescriptors__block_invoke(id a1)
{
  v1 = objc_opt_new();
  v2 = _secureAssetTypeDescriptors_secureAssetTypeDescriptors;
  _secureAssetTypeDescriptors_secureAssetTypeDescriptors = v1;

  v3 = _secureAssetTypeDescriptors_secureAssetTypeDescriptors;

  [MAAssetTypeDescriptor _loadDescriptorsFromPath:v3 intoDictionary:?];
}

uint64_t __79__MAAssetTypeDescriptor__typeDescriptorDictionaryForAssetType_typeDescriptors___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v9 objectForKey:@"Asset Type"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 32) isEqualToString:v7])
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
      *a4 = 1;
    }
  }

  return _objc_release_x1();
}

- (NSArray)assetSpecifiers
{
  if (self)
  {
    self = self->_typeDescriptor;
  }

  v2 = [(MAAssetTypeDescriptor *)self objectForKey:@"Asset Specifiers"];
  objc_opt_class();
  if (OUTLINED_FUNCTION_0())
  {
    v3 = v2;
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (NSDictionary)assetProperties
{
  if (self)
  {
    self = self->_typeDescriptor;
  }

  v2 = [(MAAssetTypeDescriptor *)self objectForKey:@"MobileAssetProperties"];
  objc_opt_class();
  if (OUTLINED_FUNCTION_0())
  {
    v3 = v2;
  }

  else
  {
    v3 = &__NSDictionary0__struct;
  }

  return v3;
}

- (BOOL)shouldMakeDataVault
{
  if (self)
  {
    self = self->_typeDescriptor;
  }

  v2 = [(MAAssetTypeDescriptor *)self objectForKey:@"Make Repository Data Vault"];
  objc_opt_class();
  if (OUTLINED_FUNCTION_0())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)shouldRemoveV1Assets
{
  if (self)
  {
    self = self->_typeDescriptor;
  }

  v2 = [(MAAssetTypeDescriptor *)self objectForKey:@"RemoveV1Assets"];
  objc_opt_class();
  if (OUTLINED_FUNCTION_0())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end