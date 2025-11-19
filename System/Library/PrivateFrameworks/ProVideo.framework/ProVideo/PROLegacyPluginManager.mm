@interface PROLegacyPluginManager
+ (id)pluginManager;
- (PROLegacyPluginManager)init;
- (id)apiForProtocol:(id)a3;
- (int)addPluginProtocol:(id)a3;
- (int)addPluginSearchDirectory:(id)a3;
- (int)getBundlePath:(id *)a3 forPluginClassName:(id)a4;
- (int)getNumPluginsForProtocol:(id)a3;
- (int)getPluginClass:(Class *)a3 forPluginClassName:(id)a4;
- (int)getPluginClass:(Class *)a3 forPluginDisplayName:(id)a4;
- (int)getPluginClass:(Class *)a3 forPluginDisplayName:(id)a4 forProtocol:(id)a5;
- (int)getPluginClassNames:(id)a3 forGroupName:(id)a4 forProtocol:(id)a5;
- (int)getPluginClassNames:(id)a3 forProtocol:(id)a4;
- (int)getPluginDisplayNames:(id)a3 forGroupName:(id)a4 forProtocol:(id)a5;
- (int)getPluginDisplayNames:(id)a3 forProtocol:(id)a4;
- (int)getPluginGroupNames:(id)a3 forProtocol:(id)a4;
- (int)getPluginInfoDictionaries:(id)a3 forProtocol:(id)a4;
- (int)loadPluginClass:(Class *)a3 withName:(id)a4 fromBundlePath:(id)a5;
- (int)registerBundle:(id)a3 withPluginDictionaryList:(id)a4;
- (int)registerPluginWithDictionary:(id)a3 withClassName:(id)a4 withBundle:(id)a5 withProtocolName:(id)a6;
- (int)removeApiForProtocol:(id)a3;
- (int)scanForPluginsInDirectory:(id)a3;
- (int)setApiObject:(id)a3 forProtocol:(id)a4;
- (int)setApiObjects:(id)a3 forProtocols:(id)a4;
- (int)setPluginSearchDirectories:(id)a3;
- (void)dealloc;
- (void)localizeKey:(id)a3 withDefault:(id)a4 forPlugin:(id)a5 fromBundle:(id)a6;
@end

@implementation PROLegacyPluginManager

+ (id)pluginManager
{
  result = sharedPluginManager;
  if (!sharedPluginManager)
  {
    result = objc_alloc_init(a1);
    sharedPluginManager = result;
  }

  return result;
}

- (PROLegacyPluginManager)init
{
  v4.receiver = self;
  v4.super_class = PROLegacyPluginManager;
  v2 = [(PROLegacyPluginManager *)&v4 init];
  if (v2)
  {
    v2->_pluginRegistry = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->_apiRegistry = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    v2->_pluginProtocols = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_pluginSearchDirectories = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v2;
}

- (void)dealloc
{
  apiRegistry = self->_apiRegistry;
  if (apiRegistry)
  {
    CFRelease(apiRegistry);
    self->_apiRegistry = 0;
  }

  v4.receiver = self;
  v4.super_class = PROLegacyPluginManager;
  [(PROLegacyPluginManager *)&v4 dealloc];
}

- (int)addPluginProtocol:(id)a3
{
  if (!a3)
  {
    return 7;
  }

  Name = protocol_getName(a3);
  if (([(NSMutableArray *)self->_pluginProtocols containsObject:Name]& 1) == 0)
  {
    [(NSMutableArray *)self->_pluginProtocols addObject:Name];
  }

  return 0;
}

- (int)addPluginSearchDirectory:(id)a3
{
  if (!a3)
  {
    return 7;
  }

  [(NSMutableArray *)self->_pluginSearchDirectories addObject:?];
  return 0;
}

- (int)setPluginSearchDirectories:(id)a3
{
  if (!a3)
  {
    return 7;
  }

  if (![a3 count])
  {
    return 8;
  }

  [(NSMutableArray *)self->_pluginSearchDirectories removeAllObjects];
  [(NSMutableArray *)self->_pluginSearchDirectories addObjectsFromArray:a3];
  return 0;
}

- (int)setApiObject:(id)a3 forProtocol:(id)a4
{
  result = 7;
  if (a3)
  {
    if (a4)
    {
      Name = protocol_getName(a4);
      CFDictionarySetValue(self->_apiRegistry, Name, a3);
      return 0;
    }
  }

  return result;
}

- (int)setApiObjects:(id)a3 forProtocols:(id)a4
{
  v4 = self;
  LODWORD(self) = 7;
  if (a3)
  {
    if (a4)
    {
      self = [a3 count];
      if (self)
      {
        v7 = 0;
        v8 = 1;
        do
        {
          Name = protocol_getName([a4 objectAtIndex:v7]);
          CFDictionarySetValue(v4->_apiRegistry, Name, [a3 objectAtIndex:v7]);
          v7 = v8;
        }

        while ([a3 count] > v8++);
        LODWORD(self) = 0;
      }
    }
  }

  return self;
}

- (id)apiForProtocol:(id)a3
{
  Name = protocol_getName(a3);
  apiRegistry = self->_apiRegistry;

  return CFDictionaryGetValue(apiRegistry, Name);
}

- (int)removeApiForProtocol:(id)a3
{
  Name = protocol_getName(a3);
  if (!CFDictionaryGetValue(self->_apiRegistry, Name))
  {
    return 15;
  }

  CFDictionaryRemoveValue(self->_apiRegistry, Name);
  return 0;
}

- (void)localizeKey:(id)a3 withDefault:(id)a4 forPlugin:(id)a5 fromBundle:(id)a6
{
  v10 = [a5 objectForKey:?];
  v11 = v10;
  if (v10 && (v12 = [v10 isEqual:&stru_2872E16E0], v13 = v11, !v12) || a4 && (v14 = objc_msgSend(a4, "isEqual:", &stru_2872E16E0), v13 = a4, (v14 & 1) == 0))
  {
    v15 = [a6 localizedStringForKey:v13 value:v13 table:0];
    if (v15 != v11)
    {

      [a5 setObject:v15 forKey:a3];
    }
  }
}

- (int)registerPluginWithDictionary:(id)a3 withClassName:(id)a4 withBundle:(id)a5 withProtocolName:(id)a6
{
  v11 = [(NSMutableDictionary *)self->_pluginRegistry objectForKey:a6];
  if (v11)
  {
    v12 = v11;
    if ([v11 objectForKey:a4])
    {
      printf("PROPluginManager: WARNING: Class name [%s] already registered. Processing bundle [%s]\n", [a4 UTF8String], objc_msgSend(objc_msgSend(a5, "bundlePath"), "UTF8String"));
      return 3;
    }
  }

  else
  {
    v12 = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)self->_pluginRegistry setObject:v12 forKey:a6];
  }

  v14 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a3];
  [(PROLegacyPluginManager *)self localizeKey:@"groupName" withDefault:0 forPlugin:v14 fromBundle:a5];
  [(PROLegacyPluginManager *)self localizeKey:@"displayName" withDefault:a4 forPlugin:v14 fromBundle:a5];
  [(PROLegacyPluginManager *)self localizeKey:@"infoString" withDefault:0 forPlugin:v14 fromBundle:a5];
  [(PROLegacyPluginManager *)self localizeKey:@"helpURL" withDefault:0 forPlugin:v14 fromBundle:a5];
  [(PROLegacyPluginManager *)self localizeKey:@"vendorName" withDefault:0 forPlugin:v14 fromBundle:a5];
  [v14 setObject:objc_msgSend(a5 forKey:{"bundlePath"), @"bundlePath"}];
  [v12 setObject:v14 forKey:a4];
  return 0;
}

- (int)registerBundle:(id)a3 withPluginDictionaryList:(id)a4
{
  v7 = [a4 count];
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    while (1)
    {
      v10 = [a4 objectAtIndex:v9];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 objectForKey:@"className"];
        if (v12)
        {
          v13 = v12;
          v14 = [v11 objectForKey:@"protocolName"];
          if (v14)
          {
            v15 = v14;
            LODWORD(v10) = [(NSMutableArray *)self->_pluginProtocols containsObject:v14];
            if (v10)
            {
              LODWORD(v10) = [(PROLegacyPluginManager *)self registerPluginWithDictionary:v11 withClassName:v13 withBundle:a3 withProtocolName:v15];
            }

            goto LABEL_11;
          }

          [objc_msgSend(a3 "bundlePath")];
          printf("PROPluginManager: ERROR: Missing [protocolName] entry for item [%d] in bundle [%s]\n");
        }

        else
        {
          [objc_msgSend(a3 "bundlePath")];
          printf("PROPluginManager:  ERROR: Missing [className] entry for item [%d] in bundle [%s]\n");
        }

        LODWORD(v10) = 0;
      }

LABEL_11:
      if (++v9 >= v8 || v10)
      {
        return v10;
      }
    }
  }

  LODWORD(v10) = 0;
  return v10;
}

- (int)loadPluginClass:(Class *)a3 withName:(id)a4 fromBundlePath:(id)a5
{
  v8 = [MEMORY[0x277CCA8D8] bundleWithPath:a5];
  if (v8)
  {
    [v8 load];
    v9 = NSClassFromString(a4);
    *a3 = v9;
    if (v9)
    {
      return 0;
    }

    [a4 UTF8String];
    [a5 UTF8String];
    printf("PROPluginManager: ERROR: Class [%s]  not found in bundle [%s]\n");
  }

  else
  {
    [a5 UTF8String];
    printf("PROPluginManager: ERROR: Unable to open bundle [%s]\n");
  }

  return 5;
}

- (int)scanForPluginsInDirectory:(id)a3
{
  if (a3)
  {
    v5 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    v6 = [v5 nextObject];
    if (v6)
    {
      v7 = v6;
      while (![objc_msgSend(v7 "pathExtension")])
      {
LABEL_15:
        v6 = [v5 nextObject];
        v7 = v6;
        if (!v6)
        {
          return v6;
        }
      }

      v8 = [a3 stringByAppendingPathComponent:v7];
      v9 = [MEMORY[0x277CCA8D8] bundleWithPath:v8];
      v10 = [v9 infoDictionary];
      v11 = [v10 objectForKey:@"ProPlugPluginList"];
      v12 = [v10 objectForKey:@"ProPlugDynamicRegistration"];
      if (v12)
      {
        if (([v12 BOOLValue] & 1) == 0 && v11)
        {
          if (![v11 count])
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }
      }

      else if (v11 && [v11 count])
      {
LABEL_12:
        [(PROLegacyPluginManager *)self registerBundle:v9 withPluginDictionaryList:v11];
LABEL_14:
        [v5 skipDescendents];
        goto LABEL_15;
      }

      [(PROLegacyPluginManager *)self registerBundleDynamic:v9];
      goto LABEL_14;
    }
  }

  else
  {
    LODWORD(v6) = 7;
  }

  return v6;
}

- (int)getNumPluginsForProtocol:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_pluginRegistry objectForKey:protocol_getName(a3)];
  if (v3)
  {
    LODWORD(v3) = [v3 count];
  }

  return v3;
}

- (int)getPluginDisplayNames:(id)a3 forProtocol:(id)a4
{
  v4 = self;
  LODWORD(self) = 7;
  if (a3 && a4)
  {
    v6 = [(NSMutableDictionary *)v4->_pluginRegistry objectForKey:protocol_getName(a4)];
    if (v6)
    {
      v7 = [v6 objectEnumerator];
      for (self = [v7 nextObject]; self; self = objc_msgSend(v7, "nextObject"))
      {
        v8 = [(PROLegacyPluginManager *)self objectForKey:@"displayName"];
        if (v8)
        {
          [a3 addObject:v8];
        }
      }
    }

    else
    {
      LODWORD(self) = 17;
    }
  }

  return self;
}

- (int)getPluginClassNames:(id)a3 forProtocol:(id)a4
{
  v4 = self;
  LODWORD(self) = 7;
  if (a3 && a4)
  {
    v6 = [(NSMutableDictionary *)v4->_pluginRegistry objectForKey:protocol_getName(a4)];
    if (v6)
    {
      v7 = [v6 objectEnumerator];
      for (self = [v7 nextObject]; self; self = objc_msgSend(v7, "nextObject"))
      {
        v8 = [(PROLegacyPluginManager *)self objectForKey:@"className"];
        if (v8)
        {
          [a3 addObject:v8];
        }
      }
    }

    else
    {
      LODWORD(self) = 17;
    }
  }

  return self;
}

- (int)getPluginGroupNames:(id)a3 forProtocol:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      i = [(NSMutableDictionary *)self->_pluginRegistry objectForKey:protocol_getName(a4)];
      if (i)
      {
        v6 = [i objectEnumerator];
        for (i = [v6 nextObject]; i; i = objc_msgSend(v6, "nextObject"))
        {
          v7 = [i objectForKey:@"groupName"];
          if (v7)
          {
            v8 = v7;
            if (([a3 containsObject:v7] & 1) == 0)
            {
              [a3 addObject:v8];
            }
          }
        }
      }
    }

    else
    {
      v9 = [(NSMutableDictionary *)self->_pluginRegistry objectEnumerator];
      for (i = [v9 nextObject]; i; i = objc_msgSend(v9, "nextObject"))
      {
        v10 = [i objectEnumerator];
        for (j = v10; ; v10 = j)
        {
          v12 = [v10 nextObject];
          if (!v12)
          {
            break;
          }

          v13 = [v12 objectForKey:@"groupName"];
          if (v13)
          {
            v14 = v13;
            if (([a3 containsObject:v13] & 1) == 0)
            {
              [a3 addObject:v14];
            }
          }
        }
      }
    }
  }

  else
  {
    LODWORD(i) = 7;
  }

  return i;
}

- (int)getPluginClassNames:(id)a3 forGroupName:(id)a4 forProtocol:(id)a5
{
  if (!a3)
  {
    LODWORD(i) = 7;
    return i;
  }

  if (a5)
  {
    i = [(NSMutableDictionary *)self->_pluginRegistry objectForKey:protocol_getName(a5)];
    if (!i)
    {
      return i;
    }

    v8 = [i objectEnumerator];
    v9 = [v8 nextObject];
    v10 = v9;
    if (a4)
    {
      if (v9)
      {
        do
        {
          v11 = [v10 objectForKey:@"groupName"];
          if (v11 && [v11 isEqualToString:a4])
          {
            [a3 addObject:{objc_msgSend(v10, "objectForKey:", @"className"}];
          }

          i = [v8 nextObject];
          v10 = i;
        }

        while (i);
        return i;
      }

LABEL_31:
      LODWORD(i) = 0;
      return i;
    }

    if (!v9)
    {
      goto LABEL_31;
    }

    do
    {
      if (![v10 objectForKey:@"groupName"])
      {
        [a3 addObject:{objc_msgSend(v10, "objectForKey:", @"className"}];
      }

      i = [v8 nextObject];
      v10 = i;
    }

    while (i);
  }

  else
  {
    v12 = [(NSMutableDictionary *)self->_pluginRegistry objectEnumerator];
    for (i = [v12 nextObject]; i; i = objc_msgSend(v12, "nextObject"))
    {
      v13 = [i objectEnumerator];
      v14 = [v13 nextObject];
      v15 = v14;
      if (a4)
      {
        if (v14)
        {
          do
          {
            v16 = [v15 objectForKey:@"groupName"];
            if (v16 && [v16 isEqualToString:a4])
            {
              [a3 addObject:{objc_msgSend(v15, "objectForKey:", @"className"}];
            }

            v15 = [v13 nextObject];
          }

          while (v15);
        }
      }

      else if (v14)
      {
        do
        {
          if (![v15 objectForKey:@"groupName"])
          {
            [a3 addObject:{objc_msgSend(v15, "objectForKey:", @"className"}];
          }

          v15 = [v13 nextObject];
        }

        while (v15);
      }
    }
  }

  return i;
}

- (int)getPluginDisplayNames:(id)a3 forGroupName:(id)a4 forProtocol:(id)a5
{
  v5 = self;
  LODWORD(self) = 7;
  if (a3 && a4)
  {
    if (a5)
    {
      self = [(NSMutableDictionary *)v5->_pluginRegistry objectForKey:protocol_getName(a5)];
      if (self)
      {
        v8 = [(PROLegacyPluginManager *)self objectEnumerator];
        self = [v8 nextObject];
        if (self)
        {
          v9 = self;
          do
          {
            v10 = [(PROLegacyPluginManager *)v9 objectForKey:@"groupName"];
            if (v10 && [v10 isEqualToString:a4])
            {
              [a3 addObject:{-[PROLegacyPluginManager objectForKey:](v9, "objectForKey:", @"displayName"}];
            }

            self = [v8 nextObject];
            v9 = self;
          }

          while (self);
        }
      }
    }

    else
    {
      v11 = [(NSMutableDictionary *)v5->_pluginRegistry objectEnumerator];
      for (self = [v11 nextObject]; self; self = objc_msgSend(v11, "nextObject"))
      {
        v12 = [(PROLegacyPluginManager *)self objectEnumerator];
        v13 = [v12 nextObject];
        if (v13)
        {
          v14 = v13;
          do
          {
            v15 = [v14 objectForKey:@"groupName"];
            if (v15 && [v15 isEqualToString:a4])
            {
              [a3 addObject:{objc_msgSend(v14, "objectForKey:", @"displayName"}];
            }

            v14 = [v12 nextObject];
          }

          while (v14);
        }
      }
    }
  }

  return self;
}

- (int)getPluginInfoDictionaries:(id)a3 forProtocol:(id)a4
{
  v4 = self;
  LODWORD(self) = 7;
  if (a3 && a4)
  {
    v6 = [(NSMutableDictionary *)v4->_pluginRegistry objectForKey:protocol_getName(a4)];
    if (v6)
    {
      v7 = [v6 objectEnumerator];
      self = [v7 nextObject];
      if (self)
      {
        v8 = self;
        do
        {
          [a3 addObject:v8];
          self = [v7 nextObject];
          v8 = self;
        }

        while (self);
      }
    }

    else
    {
      LODWORD(self) = 17;
    }
  }

  return self;
}

- (int)getBundlePath:(id *)a3 forPluginClassName:(id)a4
{
  result = 7;
  if (a3 && a4)
  {
    v8 = [(NSMutableDictionary *)self->_pluginRegistry objectEnumerator];
    v9 = [v8 nextObject];
    if (v9)
    {
      v10 = v9;
      do
      {
        v11 = [v10 objectEnumerator];
        while (1)
        {
          v12 = [v11 nextObject];
          if (!v12)
          {
            break;
          }

          v13 = v12;
          if ([objc_msgSend(v12 objectForKey:{@"className", "isEqualToString:", a4}])
          {
            v14 = [v13 objectForKey:@"bundlePath"];
            result = 0;
            *a3 = v14;
            return result;
          }
        }

        v10 = [v8 nextObject];
        result = 16;
      }

      while (v10);
    }

    else
    {
      return 16;
    }
  }

  return result;
}

- (int)getPluginClass:(Class *)a3 forPluginClassName:(id)a4
{
  result = 7;
  if (a3 && a4)
  {
    v8 = NSClassFromString(a4);
    *a3 = v8;
    if (v8)
    {
      return 0;
    }

    else
    {
      v9 = [(NSMutableDictionary *)self->_pluginRegistry objectEnumerator];
      v10 = [v9 nextObject];
      if (v10)
      {
        v11 = v10;
        while (2)
        {
          v12 = [v11 objectEnumerator];
          while (1)
          {
            v13 = [v12 nextObject];
            if (!v13)
            {
              break;
            }

            v14 = v13;
            if ([objc_msgSend(v13 objectForKey:{@"className", "isEqualToString:", a4}])
            {
              v15 = [v14 objectForKey:@"bundlePath"];

              return [(PROLegacyPluginManager *)self loadPluginClass:a3 withName:a4 fromBundlePath:v15];
            }
          }

          v11 = [v9 nextObject];
          result = 16;
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        return 16;
      }
    }
  }

  return result;
}

- (int)getPluginClass:(Class *)a3 forPluginDisplayName:(id)a4
{
  result = 7;
  if (a3 && a4)
  {
    v8 = [(NSMutableDictionary *)self->_pluginRegistry objectEnumerator];
    v9 = [v8 nextObject];
    if (v9)
    {
      v10 = v9;
      while (2)
      {
        v11 = [v10 objectEnumerator];
        while (1)
        {
          v12 = [v11 nextObject];
          if (!v12)
          {
            break;
          }

          v13 = v12;
          if ([objc_msgSend(v12 objectForKey:{@"displayName", "isEqualToString:", a4}])
          {
            v14 = [v13 objectForKey:@"className"];
            v15 = NSClassFromString(v14);
            *a3 = v15;
            if (v15)
            {
              return 0;
            }

            v16 = [v13 objectForKey:@"bundlePath"];

            return [(PROLegacyPluginManager *)self loadPluginClass:a3 withName:v14 fromBundlePath:v16];
          }
        }

        v10 = [v8 nextObject];
        result = 16;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      return 16;
    }
  }

  return result;
}

- (int)getPluginClass:(Class *)a3 forPluginDisplayName:(id)a4 forProtocol:(id)a5
{
  result = 7;
  if (a3 && a4 && a5)
  {
    v9 = [(NSMutableDictionary *)self->_pluginRegistry objectForKey:protocol_getName(a5)];
    if (v9)
    {
      v10 = [v9 objectEnumerator];
      v11 = [v10 nextObject];
      if (v11)
      {
        v12 = v11;
        while (1)
        {
          if ([objc_msgSend(v12 objectForKey:{@"displayName", "isEqualToString:", a4}])
          {
            v13 = [v12 objectForKey:@"className"];
            v14 = NSClassFromString(v13);
            *a3 = v14;
            if (v14)
            {
              break;
            }
          }

          v12 = [v10 nextObject];
          if (!v12)
          {
            return 16;
          }
        }

        v15 = [v12 objectForKey:@"bundlePath"];

        return [(PROLegacyPluginManager *)self loadPluginClass:a3 withName:v13 fromBundlePath:v15];
      }

      else
      {
        return 16;
      }
    }

    else
    {
      return 17;
    }
  }

  return result;
}

@end