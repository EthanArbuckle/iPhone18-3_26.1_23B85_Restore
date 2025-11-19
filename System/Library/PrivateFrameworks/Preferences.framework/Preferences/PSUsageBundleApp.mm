@interface PSUsageBundleApp
+ (id)usageBundleAppForBundleWithIdentifier:(id)a3 withTotalSize:(float)a4 andCategories:(id)a5;
- (id)description;
- (void)setUsageBundleStorageReporter:(id)a3;
@end

@implementation PSUsageBundleApp

+ (id)usageBundleAppForBundleWithIdentifier:(id)a3 withTotalSize:(float)a4 andCategories:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc_init(PSUsageBundleApp);
  [(PSUsageBundleApp *)v9 setBundleIdentifier:v7];
  *&v10 = a4;
  [(PSUsageBundleApp *)v9 setTotalSize:v10];
  [(PSUsageBundleApp *)v9 setCategories:v8];

  v11 = MEMORY[0x1E69635E0];
  v12 = [(PSUsageBundleApp *)v9 bundleIdentifier];
  v13 = [v11 applicationProxyForIdentifier:v12];
  v14 = [v13 localizedName];

  if (!v14)
  {
    if ([v7 isEqualToString:@"com.apple.MobileAddressBook"])
    {
      v15 = PS_LocalizedString(@"CONTACTS");
    }

    else
    {
      v15 = v7;
    }

    v14 = v15;
  }

  [(PSUsageBundleApp *)v9 setName:v14];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PSUsageBundleApp *)self name];
  v6 = [(PSUsageBundleApp *)self bundleIdentifier];
  v7 = [(PSUsageBundleApp *)self categories];
  v8 = [v3 stringWithFormat:@"<%@: %p %@ (%@): %@>", v4, self, v5, v6, v7];

  return v8;
}

- (void)setUsageBundleStorageReporter:(id)a3
{
  v8 = a3;
  v4 = [(PSUsageBundleApp *)self usageBundleStorageReporter];

  v5 = v8;
  if (v4 != v8)
  {
    v6 = [PSWeakReference weakReferenceWithObject:v8];
    storageReporterReference = self->_storageReporterReference;
    self->_storageReporterReference = v6;

    v5 = v8;
  }
}

@end