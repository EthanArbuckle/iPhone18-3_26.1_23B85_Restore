@interface SBSUserNotificationImageAssetDefinition
- (id)_initWithDictionary:(id)dictionary;
- (id)_initWithImagePath:(id)path imageCatalogPath:(id)catalogPath catalogImageKey:(id)key;
- (id)build;
@end

@implementation SBSUserNotificationImageAssetDefinition

- (id)_initWithImagePath:(id)path imageCatalogPath:(id)catalogPath catalogImageKey:(id)key
{
  pathCopy = path;
  catalogPathCopy = catalogPath;
  keyCopy = key;
  v13 = keyCopy;
  if (!pathCopy && (!catalogPathCopy || !keyCopy))
  {
    [SBSUserNotificationImageAssetDefinition _initWithImagePath:a2 imageCatalogPath:self catalogImageKey:?];
  }

  v17.receiver = self;
  v17.super_class = SBSUserNotificationImageAssetDefinition;
  v14 = [(SBSUserNotificationImageAssetDefinition *)&v17 init];
  p_isa = &v14->super.super.super.isa;
  if (v14)
  {
    objc_storeStrong(&v14->_imagePath, path);
    objc_storeStrong(p_isa + 2, catalogPath);
    objc_storeStrong(p_isa + 3, key);
  }

  return p_isa;
}

- (id)_initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SBSUserNotificationImageAssetDefinition;
  v5 = [(SBSUserNotificationAssetDefinition *)&v13 _initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy bs_safeStringForKey:@"SBSCFUNImagePath"];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [dictionaryCopy bs_safeStringForKey:@"SBSCFUNCatalogPath"];
    v9 = v5[2];
    v5[2] = v8;

    v10 = [dictionaryCopy bs_safeStringForKey:@"SBSCFUNCatalogImageKey"];
    v11 = v5[3];
    v5[3] = v10;
  }

  return v5;
}

- (id)build
{
  v10.receiver = self;
  v10.super_class = SBSUserNotificationImageAssetDefinition;
  build = [(SBSUserNotificationAssetDefinition *)&v10 build];
  v4 = [build mutableCopy];

  imagePath = self->_imagePath;
  if (imagePath)
  {
    [v4 setObject:imagePath forKey:@"SBSCFUNImagePath"];
  }

  catalogPath = self->_catalogPath;
  if (catalogPath)
  {
    [v4 setObject:catalogPath forKey:@"SBSCFUNCatalogPath"];
  }

  catalogImageKey = self->_catalogImageKey;
  if (catalogImageKey)
  {
    [v4 setObject:catalogImageKey forKey:@"SBSCFUNCatalogImageKey"];
  }

  v8 = [v4 copy];

  return v8;
}

- (void)_initWithImagePath:(uint64_t)a1 imageCatalogPath:(uint64_t)a2 catalogImageKey:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSCFUserNotificationImageAssetDefinition.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"imagePath || (catalogPath && catalogImageKey)"}];
}

@end