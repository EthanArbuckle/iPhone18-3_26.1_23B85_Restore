@interface PSUsageBundleCategory
+ (id)categoryNamed:(id)named withIdentifier:(id)identifier forUsageBundleApp:(id)app;
- (PSUsageBundleApp)usageBundleApp;
- (id)description;
@end

@implementation PSUsageBundleCategory

+ (id)categoryNamed:(id)named withIdentifier:(id)identifier forUsageBundleApp:(id)app
{
  appCopy = app;
  identifierCopy = identifier;
  namedCopy = named;
  v10 = objc_alloc_init(PSUsageBundleCategory);
  [(PSUsageBundleCategory *)v10 setIdentifier:identifierCopy];

  [(PSUsageBundleCategory *)v10 setName:namedCopy];
  [(PSUsageBundleCategory *)v10 setUsageBundleApp:appCopy];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  usageBundleApp = [(PSUsageBundleCategory *)self usageBundleApp];
  name = [usageBundleApp name];
  identifier = [(PSUsageBundleCategory *)self identifier];
  name2 = [(PSUsageBundleCategory *)self name];
  v8 = [v3 stringWithFormat:@"%@: %@ (%@)", name, identifier, name2];

  return v8;
}

- (PSUsageBundleApp)usageBundleApp
{
  WeakRetained = objc_loadWeakRetained(&self->_usageBundleApp);

  return WeakRetained;
}

@end