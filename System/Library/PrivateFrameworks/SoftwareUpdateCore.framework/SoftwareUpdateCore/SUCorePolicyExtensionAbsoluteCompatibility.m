@interface SUCorePolicyExtensionAbsoluteCompatibility
- (BOOL)isEqual:(id)a3;
- (SUCorePolicyExtensionAbsoluteCompatibility)init;
- (SUCorePolicyExtensionAbsoluteCompatibility)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
- (void)extendSoftwareUpdateMAAssetQuery:(id)a3;
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

- (void)extendSoftwareUpdateMAAssetQuery:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCorePolicyExtensionAbsoluteCompatibility *)self compatibilityVersion];

  if (v5)
  {
    v6 = [(SUCorePolicyExtensionAbsoluteCompatibility *)self compatibilityVersion];
    v7 = [v6 stringValue];
    [v4 addKeyValuePair:@"_CompatibilityVersion" with:v7];
  }

  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(SUCorePolicyExtensionAbsoluteCompatibility *)self compatibilityVersion];
    v12 = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ querying SU metadata: compatibilityVersion=%{public}@", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (SUCorePolicyExtensionAbsoluteCompatibility)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUCorePolicyExtensionAbsoluteCompatibility;
  v5 = [(SUCorePolicyExtension *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_CompatibilityVersion"];
    compatibilityVersion = v5->_compatibilityVersion;
    v5->_compatibilityVersion = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUCorePolicyExtensionAbsoluteCompatibility *)self compatibilityVersion];
  [v4 encodeObject:v5 forKey:@"_CompatibilityVersion"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = MEMORY[0x277D643F8];
      v6 = [(SUCorePolicyExtensionAbsoluteCompatibility *)v4 compatibilityVersion];
      v7 = [(SUCorePolicyExtensionAbsoluteCompatibility *)self compatibilityVersion];
      v8 = [v5 numberIsEqual:v6 to:v7];
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
  v3 = [(SUCorePolicyExtensionAbsoluteCompatibility *)self compatibilityVersion];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = [(SUCorePolicyExtensionAbsoluteCompatibility *)self compatibilityVersion];
    v6 = [v4 initWithFormat:@"|compatibilityVersion=%@", v5];
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
  v4 = [(SUCorePolicyExtensionAbsoluteCompatibility *)self extensionName];
  v5 = [(SUCorePolicyExtensionAbsoluteCompatibility *)self compatibilityVersion];
  v6 = [v3 initWithFormat:@"%@(compatibilityVersion:%@)", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SUCorePolicyExtensionAbsoluteCompatibility);
  v5 = [(SUCorePolicyExtensionAbsoluteCompatibility *)self compatibilityVersion];
  [(SUCorePolicyExtensionAbsoluteCompatibility *)v4 setCompatibilityVersion:v5];

  return v4;
}

@end