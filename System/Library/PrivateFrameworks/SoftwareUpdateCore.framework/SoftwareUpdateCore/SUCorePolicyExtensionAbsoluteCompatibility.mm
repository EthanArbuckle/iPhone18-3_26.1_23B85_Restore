@interface SUCorePolicyExtensionAbsoluteCompatibility
- (BOOL)isEqual:(id)equal;
- (SUCorePolicyExtensionAbsoluteCompatibility)init;
- (SUCorePolicyExtensionAbsoluteCompatibility)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
- (void)extendSoftwareUpdateMAAssetQuery:(id)query;
@end

@implementation SUCorePolicyExtensionAbsoluteCompatibility

- (SUCorePolicyExtensionAbsoluteCompatibility)init
{
  v6.receiver = self;
  v6.super_class = SUCorePolicyExtensionAbsoluteCompatibility;
  v2 = [(SUCorePolicyExtension *)&v6 init];
  v3 = v2;
  if (v2)
  {
    compatibilityVersion = v2->_compatibilityVersion;
    v2->_compatibilityVersion = 0;
  }

  return v3;
}

- (void)extendSoftwareUpdateMAAssetQuery:(id)query
{
  v16 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  compatibilityVersion = [(SUCorePolicyExtensionAbsoluteCompatibility *)self compatibilityVersion];

  if (compatibilityVersion)
  {
    compatibilityVersion2 = [(SUCorePolicyExtensionAbsoluteCompatibility *)self compatibilityVersion];
    stringValue = [compatibilityVersion2 stringValue];
    [queryCopy addKeyValuePair:@"_CompatibilityVersion" with:stringValue];
  }

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    compatibilityVersion3 = [(SUCorePolicyExtensionAbsoluteCompatibility *)self compatibilityVersion];
    v12 = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = compatibilityVersion3;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ querying SU metadata: compatibilityVersion=%{public}@", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (SUCorePolicyExtensionAbsoluteCompatibility)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUCorePolicyExtensionAbsoluteCompatibility;
  v5 = [(SUCorePolicyExtension *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_CompatibilityVersion"];
    compatibilityVersion = v5->_compatibilityVersion;
    v5->_compatibilityVersion = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  compatibilityVersion = [(SUCorePolicyExtensionAbsoluteCompatibility *)self compatibilityVersion];
  [coderCopy encodeObject:compatibilityVersion forKey:@"_CompatibilityVersion"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = MEMORY[0x277D643F8];
      compatibilityVersion = [(SUCorePolicyExtensionAbsoluteCompatibility *)equalCopy compatibilityVersion];
      compatibilityVersion2 = [(SUCorePolicyExtensionAbsoluteCompatibility *)self compatibilityVersion];
      v8 = [v5 numberIsEqual:compatibilityVersion to:compatibilityVersion2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)summary
{
  compatibilityVersion = [(SUCorePolicyExtensionAbsoluteCompatibility *)self compatibilityVersion];

  if (compatibilityVersion)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    compatibilityVersion2 = [(SUCorePolicyExtensionAbsoluteCompatibility *)self compatibilityVersion];
    v6 = [v4 initWithFormat:@"|compatibilityVersion=%@", compatibilityVersion2];
    v7 = [&stru_28469CC48 stringByAppendingString:v6];
  }

  else
  {
    v7 = &stru_28469CC48;
  }

  if (([(__CFString *)v7 isEqualToString:&stru_28469CC48]& 1) == 0)
  {
    v8 = [(__CFString *)v7 stringByAppendingString:@"|"];

    v7 = v8;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  extensionName = [(SUCorePolicyExtensionAbsoluteCompatibility *)self extensionName];
  compatibilityVersion = [(SUCorePolicyExtensionAbsoluteCompatibility *)self compatibilityVersion];
  v6 = [v3 initWithFormat:@"%@(compatibilityVersion:%@)", extensionName, compatibilityVersion];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SUCorePolicyExtensionAbsoluteCompatibility);
  compatibilityVersion = [(SUCorePolicyExtensionAbsoluteCompatibility *)self compatibilityVersion];
  [(SUCorePolicyExtensionAbsoluteCompatibility *)v4 setCompatibilityVersion:compatibilityVersion];

  return v4;
}

@end