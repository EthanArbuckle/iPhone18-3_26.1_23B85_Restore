@interface SBFBacklightSceneHostEnvironmentProviderEntry
+ (id)entryWithSceneHostEnvironment:(id)a3 bundleIdentifier:(id)a4;
- (SBFBacklightSceneHostEnvironmentProviderEntry)initWithSceneHostEnvironment:(id)a3 bundleIdentifier:(id)a4;
@end

@implementation SBFBacklightSceneHostEnvironmentProviderEntry

+ (id)entryWithSceneHostEnvironment:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithSceneHostEnvironment:v7 bundleIdentifier:v6];

  return v8;
}

- (SBFBacklightSceneHostEnvironmentProviderEntry)initWithSceneHostEnvironment:(id)a3 bundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SBFBacklightSceneHostEnvironmentProviderEntry;
  v9 = [(SBFBacklightSceneHostEnvironmentProviderEntry *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_environment, a3);
    v11 = [v8 copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;
  }

  return v10;
}

@end