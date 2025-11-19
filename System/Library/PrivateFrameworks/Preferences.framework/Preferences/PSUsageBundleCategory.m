@interface PSUsageBundleCategory
+ (id)categoryNamed:(id)a3 withIdentifier:(id)a4 forUsageBundleApp:(id)a5;
- (PSUsageBundleApp)usageBundleApp;
- (id)description;
@end

@implementation PSUsageBundleCategory

+ (id)categoryNamed:(id)a3 withIdentifier:(id)a4 forUsageBundleApp:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(PSUsageBundleCategory);
  [(PSUsageBundleCategory *)v10 setIdentifier:v8];

  [(PSUsageBundleCategory *)v10 setName:v9];
  [(PSUsageBundleCategory *)v10 setUsageBundleApp:v7];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PSUsageBundleCategory *)self usageBundleApp];
  v5 = [v4 name];
  v6 = [(PSUsageBundleCategory *)self identifier];
  v7 = [(PSUsageBundleCategory *)self name];
  v8 = [v3 stringWithFormat:@"%@: %@ (%@)", v5, v6, v7];

  return v8;
}

- (PSUsageBundleApp)usageBundleApp
{
  WeakRetained = objc_loadWeakRetained(&self->_usageBundleApp);

  return WeakRetained;
}

@end