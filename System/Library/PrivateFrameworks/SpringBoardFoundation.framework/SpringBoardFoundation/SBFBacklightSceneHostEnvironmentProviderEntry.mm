@interface SBFBacklightSceneHostEnvironmentProviderEntry
+ (id)entryWithSceneHostEnvironment:(id)environment bundleIdentifier:(id)identifier;
- (SBFBacklightSceneHostEnvironmentProviderEntry)initWithSceneHostEnvironment:(id)environment bundleIdentifier:(id)identifier;
@end

@implementation SBFBacklightSceneHostEnvironmentProviderEntry

+ (id)entryWithSceneHostEnvironment:(id)environment bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  environmentCopy = environment;
  v8 = [[self alloc] initWithSceneHostEnvironment:environmentCopy bundleIdentifier:identifierCopy];

  return v8;
}

- (SBFBacklightSceneHostEnvironmentProviderEntry)initWithSceneHostEnvironment:(id)environment bundleIdentifier:(id)identifier
{
  environmentCopy = environment;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = SBFBacklightSceneHostEnvironmentProviderEntry;
  v9 = [(SBFBacklightSceneHostEnvironmentProviderEntry *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_environment, environment);
    v11 = [identifierCopy copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;
  }

  return v10;
}

@end