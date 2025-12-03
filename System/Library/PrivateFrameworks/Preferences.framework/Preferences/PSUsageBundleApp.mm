@interface PSUsageBundleApp
+ (id)usageBundleAppForBundleWithIdentifier:(id)identifier withTotalSize:(float)size andCategories:(id)categories;
- (id)description;
- (void)setUsageBundleStorageReporter:(id)reporter;
@end

@implementation PSUsageBundleApp

+ (id)usageBundleAppForBundleWithIdentifier:(id)identifier withTotalSize:(float)size andCategories:(id)categories
{
  identifierCopy = identifier;
  categoriesCopy = categories;
  v9 = objc_alloc_init(PSUsageBundleApp);
  [(PSUsageBundleApp *)v9 setBundleIdentifier:identifierCopy];
  *&v10 = size;
  [(PSUsageBundleApp *)v9 setTotalSize:v10];
  [(PSUsageBundleApp *)v9 setCategories:categoriesCopy];

  v11 = MEMORY[0x1E69635E0];
  bundleIdentifier = [(PSUsageBundleApp *)v9 bundleIdentifier];
  v13 = [v11 applicationProxyForIdentifier:bundleIdentifier];
  localizedName = [v13 localizedName];

  if (!localizedName)
  {
    if ([identifierCopy isEqualToString:@"com.apple.MobileAddressBook"])
    {
      v15 = PS_LocalizedString(@"CONTACTS");
    }

    else
    {
      v15 = identifierCopy;
    }

    localizedName = v15;
  }

  [(PSUsageBundleApp *)v9 setName:localizedName];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(PSUsageBundleApp *)self name];
  bundleIdentifier = [(PSUsageBundleApp *)self bundleIdentifier];
  categories = [(PSUsageBundleApp *)self categories];
  v8 = [v3 stringWithFormat:@"<%@: %p %@ (%@): %@>", v4, self, name, bundleIdentifier, categories];

  return v8;
}

- (void)setUsageBundleStorageReporter:(id)reporter
{
  reporterCopy = reporter;
  usageBundleStorageReporter = [(PSUsageBundleApp *)self usageBundleStorageReporter];

  v5 = reporterCopy;
  if (usageBundleStorageReporter != reporterCopy)
  {
    v6 = [PSWeakReference weakReferenceWithObject:reporterCopy];
    storageReporterReference = self->_storageReporterReference;
    self->_storageReporterReference = v6;

    v5 = reporterCopy;
  }
}

@end