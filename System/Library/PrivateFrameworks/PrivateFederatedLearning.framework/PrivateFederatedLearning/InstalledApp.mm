@interface InstalledApp
- (InstalledApp)initWithBundleIdentifier:(id)identifier supportedMediaCategories:(id)categories supportedIntents:(id)intents appName:(id)name;
- (id)description;
@end

@implementation InstalledApp

- (InstalledApp)initWithBundleIdentifier:(id)identifier supportedMediaCategories:(id)categories supportedIntents:(id)intents appName:(id)name
{
  identifierCopy = identifier;
  categoriesCopy = categories;
  intentsCopy = intents;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = InstalledApp;
  v15 = [(InstalledApp *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bundleIdentifier, identifier);
    objc_storeStrong(&v16->_supportedMediaCategories, categories);
    objc_storeStrong(&v16->_supportedIntents, intents);
    objc_storeStrong(&v16->_appName, name);
  }

  return v16;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  bundleIdentifier = [(InstalledApp *)self bundleIdentifier];
  v4 = [v2 stringWithFormat:@"InstalledApp { bundleIdentifier: %@ }", bundleIdentifier];

  return v4;
}

@end