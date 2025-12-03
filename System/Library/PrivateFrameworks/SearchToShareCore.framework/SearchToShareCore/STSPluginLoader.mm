@interface STSPluginLoader
- (STSPluginLoader)init;
- (id)pluginWithName:(id)name;
@end

@implementation STSPluginLoader

- (STSPluginLoader)init
{
  v6.receiver = self;
  v6.super_class = STSPluginLoader;
  v2 = [(STSPluginLoader *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    pluginCache = v2->_pluginCache;
    v2->_pluginCache = v3;
  }

  return v2;
}

- (id)pluginWithName:(id)name
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  builtInPlugInsURL = [v4 builtInPlugInsURL];
  v6 = [builtInPlugInsURL URLByAppendingPathComponent:@"SearchToShareAppKitHelpers.bundle"];

  resourceURL = [v4 resourceURL];
  v8 = [resourceURL URLByAppendingPathComponent:@"SearchToShareAppKitHelpers.bundle"];

  if (v6)
  {
    pluginCache = self->_pluginCache;
    absoluteString = [v6 absoluteString];
    v11 = [(NSCache *)pluginCache objectForKey:absoluteString];

    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v13 = [MEMORY[0x277CCA8D8] bundleWithURL:v8];
      v14 = v13;
      if (v13 && ([v13 load], (v15 = objc_alloc_init(objc_msgSend(v14, "principalClass"))) != 0))
      {
        v16 = v15;
        v17 = self->_pluginCache;
        absoluteString2 = [v6 absoluteString];
        [(NSCache *)v17 setObject:v16 forKey:absoluteString2];

        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end