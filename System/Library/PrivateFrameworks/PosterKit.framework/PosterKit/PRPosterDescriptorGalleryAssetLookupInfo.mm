@interface PRPosterDescriptorGalleryAssetLookupInfo
+ (id)_assetManagerCache;
+ (id)defaultLookupInfo;
+ (id)imageCache;
+ (id)lookUpInfoForAssetCatalogIdentifier:(id)identifier;
+ (id)lookUpInfoForMicaAsset:(id)asset;
- (PRPosterDescriptorGalleryAssetLookupInfo)initWithAssetCatalogIdentifier:(id)identifier;
- (PRPosterDescriptorGalleryAssetLookupInfo)initWithCoder:(id)coder;
- (PRPosterDescriptorGalleryAssetLookupInfo)initWithDictionary:(id)dictionary;
- (PRPosterDescriptorGalleryAssetLookupInfo)initWithMicaAssetIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PRPosterDescriptorGalleryAssetLookupInfo

+ (id)imageCache
{
  if (imageCache_onceToken != -1)
  {
    +[PRPosterDescriptorGalleryAssetLookupInfo imageCache];
  }

  v3 = imageCache_imageCache;

  return v3;
}

uint64_t __54__PRPosterDescriptorGalleryAssetLookupInfo_imageCache__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E698E7F0]) initWithUniqueIdentifier:@"PRPosterDescriptorGalleryAssetLookupInfo mapped image cache"];
  v1 = imageCache_imageCache;
  imageCache_imageCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_assetManagerCache
{
  if (_assetManagerCache_onceToken != -1)
  {
    +[PRPosterDescriptorGalleryAssetLookupInfo _assetManagerCache];
  }

  v3 = _assetManagerCache_assetManagerCache;

  return v3;
}

uint64_t __62__PRPosterDescriptorGalleryAssetLookupInfo__assetManagerCache__block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = _assetManagerCache_assetManagerCache;
  _assetManagerCache_assetManagerCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (PRPosterDescriptorGalleryAssetLookupInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PRPosterDescriptorGalleryAssetLookupInfo;
  v5 = [(PRPosterDescriptorGalleryAssetLookupInfo *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    lookupInfo = v5->_lookupInfo;
    v5->_lookupInfo = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([(NSDictionary *)self->_lookupInfo count])
  {
    v4 = [objc_opt_class() allocWithZone:zone];
    lookupInfo = self->_lookupInfo;

    return [v4 initWithDictionary:lookupInfo];
  }

  else
  {

    return self;
  }
}

- (PRPosterDescriptorGalleryAssetLookupInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = objc_opt_self();
  v7 = [coderCopy decodeDictionaryWithKeysOfClass:v5 objectsOfClass:v6 forKey:@"lookupInfo"];

  v8 = [(PRPosterDescriptorGalleryAssetLookupInfo *)self initWithDictionary:v7];
  return v8;
}

+ (id)defaultLookupInfo
{
  if (defaultLookupInfo_onceToken != -1)
  {
    +[PRPosterDescriptorGalleryAssetLookupInfo defaultLookupInfo];
  }

  v3 = defaultLookupInfo_defaultLookupInfo;

  return v3;
}

uint64_t __61__PRPosterDescriptorGalleryAssetLookupInfo_defaultLookupInfo__block_invoke()
{
  v0 = [PRPosterDescriptorGalleryAssetLookupInfo alloc];
  v1 = [(PRPosterDescriptorGalleryAssetLookupInfo *)v0 initWithDictionary:MEMORY[0x1E695E0F8]];
  v2 = defaultLookupInfo_defaultLookupInfo;
  defaultLookupInfo_defaultLookupInfo = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)lookUpInfoForAssetCatalogIdentifier:(id)identifier
{
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    [PRPosterDescriptorGalleryAssetLookupInfo lookUpInfoForAssetCatalogIdentifier:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterDescriptorGalleryAssetLookupInfo lookUpInfoForAssetCatalogIdentifier:a2];
  }

  v5 = [objc_alloc(objc_opt_class()) initWithAssetCatalogIdentifier:identifierCopy];

  return v5;
}

+ (id)lookUpInfoForMicaAsset:(id)asset
{
  assetCopy = asset;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!assetCopy)
  {
    [PRPosterDescriptorGalleryAssetLookupInfo lookUpInfoForMicaAsset:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterDescriptorGalleryAssetLookupInfo lookUpInfoForMicaAsset:a2];
  }

  v5 = [objc_alloc(objc_opt_class()) initWithMicaAssetIdentifier:assetCopy];

  return v5;
}

- (PRPosterDescriptorGalleryAssetLookupInfo)initWithAssetCatalogIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    [PRPosterDescriptorGalleryAssetLookupInfo initWithAssetCatalogIdentifier:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterDescriptorGalleryAssetLookupInfo initWithAssetCatalogIdentifier:a2];
  }

  v9 = @"assetCatalogIdentifier";
  v10[0] = identifierCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [(PRPosterDescriptorGalleryAssetLookupInfo *)self initWithDictionary:v6];

  return v7;
}

- (PRPosterDescriptorGalleryAssetLookupInfo)initWithMicaAssetIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    [PRPosterDescriptorGalleryAssetLookupInfo initWithMicaAssetIdentifier:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterDescriptorGalleryAssetLookupInfo initWithMicaAssetIdentifier:a2];
  }

  v9 = @"micaAssetIdentifier";
  v10[0] = identifierCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [(PRPosterDescriptorGalleryAssetLookupInfo *)self initWithDictionary:v6];

  return v7;
}

+ (void)lookUpInfoForAssetCatalogIdentifier:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)lookUpInfoForAssetCatalogIdentifier:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)lookUpInfoForMicaAsset:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)lookUpInfoForMicaAsset:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithAssetCatalogIdentifier:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithAssetCatalogIdentifier:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithMicaAssetIdentifier:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithMicaAssetIdentifier:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end