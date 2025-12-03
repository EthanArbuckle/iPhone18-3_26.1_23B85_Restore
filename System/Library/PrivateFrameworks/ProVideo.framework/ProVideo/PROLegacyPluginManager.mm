@interface PROLegacyPluginManager
+ (id)pluginManager;
- (PROLegacyPluginManager)init;
- (id)apiForProtocol:(id)protocol;
- (int)addPluginProtocol:(id)protocol;
- (int)addPluginSearchDirectory:(id)directory;
- (int)getBundlePath:(id *)path forPluginClassName:(id)name;
- (int)getNumPluginsForProtocol:(id)protocol;
- (int)getPluginClass:(Class *)class forPluginClassName:(id)name;
- (int)getPluginClass:(Class *)class forPluginDisplayName:(id)name;
- (int)getPluginClass:(Class *)class forPluginDisplayName:(id)name forProtocol:(id)protocol;
- (int)getPluginClassNames:(id)names forGroupName:(id)name forProtocol:(id)protocol;
- (int)getPluginClassNames:(id)names forProtocol:(id)protocol;
- (int)getPluginDisplayNames:(id)names forGroupName:(id)name forProtocol:(id)protocol;
- (int)getPluginDisplayNames:(id)names forProtocol:(id)protocol;
- (int)getPluginGroupNames:(id)names forProtocol:(id)protocol;
- (int)getPluginInfoDictionaries:(id)dictionaries forProtocol:(id)protocol;
- (int)loadPluginClass:(Class *)class withName:(id)name fromBundlePath:(id)path;
- (int)registerBundle:(id)bundle withPluginDictionaryList:(id)list;
- (int)registerPluginWithDictionary:(id)dictionary withClassName:(id)name withBundle:(id)bundle withProtocolName:(id)protocolName;
- (int)removeApiForProtocol:(id)protocol;
- (int)scanForPluginsInDirectory:(id)directory;
- (int)setApiObject:(id)object forProtocol:(id)protocol;
- (int)setApiObjects:(id)objects forProtocols:(id)protocols;
- (int)setPluginSearchDirectories:(id)directories;
- (void)dealloc;
- (void)localizeKey:(id)key withDefault:(id)default forPlugin:(id)plugin fromBundle:(id)bundle;
@end

@implementation PROLegacyPluginManager

+ (id)pluginManager
{
  result = sharedPluginManager;
  if (!sharedPluginManager)
  {
    result = objc_alloc_init(self);
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

- (int)addPluginProtocol:(id)protocol
{
  if (!protocol)
  {
    return 7;
  }

  Name = protocol_getName(protocol);
  if (([(NSMutableArray *)self->_pluginProtocols containsObject:Name]& 1) == 0)
  {
    [(NSMutableArray *)self->_pluginProtocols addObject:Name];
  }

  return 0;
}

- (int)addPluginSearchDirectory:(id)directory
{
  if (!directory)
  {
    return 7;
  }

  [(NSMutableArray *)self->_pluginSearchDirectories addObject:?];
  return 0;
}

- (int)setPluginSearchDirectories:(id)directories
{
  if (!directories)
  {
    return 7;
  }

  if (![directories count])
  {
    return 8;
  }

  [(NSMutableArray *)self->_pluginSearchDirectories removeAllObjects];
  [(NSMutableArray *)self->_pluginSearchDirectories addObjectsFromArray:directories];
  return 0;
}

- (int)setApiObject:(id)object forProtocol:(id)protocol
{
  result = 7;
  if (object)
  {
    if (protocol)
    {
      Name = protocol_getName(protocol);
      CFDictionarySetValue(self->_apiRegistry, Name, object);
      return 0;
    }
  }

  return result;
}

- (int)setApiObjects:(id)objects forProtocols:(id)protocols
{
  selfCopy = self;
  LODWORD(self) = 7;
  if (objects)
  {
    if (protocols)
    {
      self = [objects count];
      if (self)
      {
        v7 = 0;
        v8 = 1;
        do
        {
          Name = protocol_getName([protocols objectAtIndex:v7]);
          CFDictionarySetValue(selfCopy->_apiRegistry, Name, [objects objectAtIndex:v7]);
          v7 = v8;
        }

        while ([objects count] > v8++);
        LODWORD(self) = 0;
      }
    }
  }

  return self;
}

- (id)apiForProtocol:(id)protocol
{
  Name = protocol_getName(protocol);
  apiRegistry = self->_apiRegistry;

  return CFDictionaryGetValue(apiRegistry, Name);
}

- (int)removeApiForProtocol:(id)protocol
{
  Name = protocol_getName(protocol);
  if (!CFDictionaryGetValue(self->_apiRegistry, Name))
  {
    return 15;
  }

  CFDictionaryRemoveValue(self->_apiRegistry, Name);
  return 0;
}

- (void)localizeKey:(id)key withDefault:(id)default forPlugin:(id)plugin fromBundle:(id)bundle
{
  v10 = [plugin objectForKey:?];
  v11 = v10;
  if (v10 && (v12 = [v10 isEqual:&stru_2872E16E0], v13 = v11, !v12) || default && (v14 = objc_msgSend(default, "isEqual:", &stru_2872E16E0), v13 = default, (v14 & 1) == 0))
  {
    v15 = [bundle localizedStringForKey:v13 value:v13 table:0];
    if (v15 != v11)
    {

      [plugin setObject:v15 forKey:key];
    }
  }
}

- (int)registerPluginWithDictionary:(id)dictionary withClassName:(id)name withBundle:(id)bundle withProtocolName:(id)protocolName
{
  v11 = [(NSMutableDictionary *)self->_pluginRegistry objectForKey:protocolName];
  if (v11)
  {
    dictionary = v11;
    if ([v11 objectForKey:name])
    {
      printf("PROPluginManager: WARNING: Class name [%s] already registered. Processing bundle [%s]\n", [name UTF8String], objc_msgSend(objc_msgSend(bundle, "bundlePath"), "UTF8String"));
      return 3;
    }
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)self->_pluginRegistry setObject:dictionary forKey:protocolName];
  }

  v14 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:dictionary];
  [(PROLegacyPluginManager *)self localizeKey:@"groupName" withDefault:0 forPlugin:v14 fromBundle:bundle];
  [(PROLegacyPluginManager *)self localizeKey:@"displayName" withDefault:name forPlugin:v14 fromBundle:bundle];
  [(PROLegacyPluginManager *)self localizeKey:@"infoString" withDefault:0 forPlugin:v14 fromBundle:bundle];
  [(PROLegacyPluginManager *)self localizeKey:@"helpURL" withDefault:0 forPlugin:v14 fromBundle:bundle];
  [(PROLegacyPluginManager *)self localizeKey:@"vendorName" withDefault:0 forPlugin:v14 fromBundle:bundle];
  [v14 setObject:objc_msgSend(bundle forKey:{"bundlePath"), @"bundlePath"}];
  [dictionary setObject:v14 forKey:name];
  return 0;
}

- (int)registerBundle:(id)bundle withPluginDictionaryList:(id)list
{
  v7 = [list count];
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    while (1)
    {
      v10 = [list objectAtIndex:v9];
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
              LODWORD(v10) = [(PROLegacyPluginManager *)self registerPluginWithDictionary:v11 withClassName:v13 withBundle:bundle withProtocolName:v15];
            }

            goto LABEL_11;
          }

          [objc_msgSend(bundle "bundlePath")];
          printf("PROPluginManager: ERROR: Missing [protocolName] entry for item [%d] in bundle [%s]\n");
        }

        else
        {
          [objc_msgSend(bundle "bundlePath")];
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

- (int)loadPluginClass:(Class *)class withName:(id)name fromBundlePath:(id)path
{
  v8 = [MEMORY[0x277CCA8D8] bundleWithPath:path];
  if (v8)
  {
    [v8 load];
    v9 = NSClassFromString(name);
    *class = v9;
    if (v9)
    {
      return 0;
    }

    [name UTF8String];
    [path UTF8String];
    printf("PROPluginManager: ERROR: Class [%s]  not found in bundle [%s]\n");
  }

  else
  {
    [path UTF8String];
    printf("PROPluginManager: ERROR: Unable to open bundle [%s]\n");
  }

  return 5;
}

- (int)scanForPluginsInDirectory:(id)directory
{
  if (directory)
  {
    v5 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    nextObject = [v5 nextObject];
    if (nextObject)
    {
      v7 = nextObject;
      while (![objc_msgSend(v7 "pathExtension")])
      {
LABEL_15:
        nextObject = [v5 nextObject];
        v7 = nextObject;
        if (!nextObject)
        {
          return nextObject;
        }
      }

      v8 = [directory stringByAppendingPathComponent:v7];
      v9 = [MEMORY[0x277CCA8D8] bundleWithPath:v8];
      infoDictionary = [v9 infoDictionary];
      v11 = [infoDictionary objectForKey:@"ProPlugPluginList"];
      v12 = [infoDictionary objectForKey:@"ProPlugDynamicRegistration"];
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
    LODWORD(nextObject) = 7;
  }

  return nextObject;
}

- (int)getNumPluginsForProtocol:(id)protocol
{
  v3 = [(NSMutableDictionary *)self->_pluginRegistry objectForKey:protocol_getName(protocol)];
  if (v3)
  {
    LODWORD(v3) = [v3 count];
  }

  return v3;
}

- (int)getPluginDisplayNames:(id)names forProtocol:(id)protocol
{
  selfCopy = self;
  LODWORD(self) = 7;
  if (names && protocol)
  {
    v6 = [(NSMutableDictionary *)selfCopy->_pluginRegistry objectForKey:protocol_getName(protocol)];
    if (v6)
    {
      objectEnumerator = [v6 objectEnumerator];
      for (self = [objectEnumerator nextObject]; self; self = objc_msgSend(objectEnumerator, "nextObject"))
      {
        v8 = [(PROLegacyPluginManager *)self objectForKey:@"displayName"];
        if (v8)
        {
          [names addObject:v8];
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

- (int)getPluginClassNames:(id)names forProtocol:(id)protocol
{
  selfCopy = self;
  LODWORD(self) = 7;
  if (names && protocol)
  {
    v6 = [(NSMutableDictionary *)selfCopy->_pluginRegistry objectForKey:protocol_getName(protocol)];
    if (v6)
    {
      objectEnumerator = [v6 objectEnumerator];
      for (self = [objectEnumerator nextObject]; self; self = objc_msgSend(objectEnumerator, "nextObject"))
      {
        v8 = [(PROLegacyPluginManager *)self objectForKey:@"className"];
        if (v8)
        {
          [names addObject:v8];
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

- (int)getPluginGroupNames:(id)names forProtocol:(id)protocol
{
  if (names)
  {
    if (protocol)
    {
      i = [(NSMutableDictionary *)self->_pluginRegistry objectForKey:protocol_getName(protocol)];
      if (i)
      {
        objectEnumerator = [i objectEnumerator];
        for (i = [objectEnumerator nextObject]; i; i = objc_msgSend(objectEnumerator, "nextObject"))
        {
          v7 = [i objectForKey:@"groupName"];
          if (v7)
          {
            v8 = v7;
            if (([names containsObject:v7] & 1) == 0)
            {
              [names addObject:v8];
            }
          }
        }
      }
    }

    else
    {
      objectEnumerator2 = [(NSMutableDictionary *)self->_pluginRegistry objectEnumerator];
      for (i = [objectEnumerator2 nextObject]; i; i = objc_msgSend(objectEnumerator2, "nextObject"))
      {
        objectEnumerator3 = [i objectEnumerator];
        for (j = objectEnumerator3; ; objectEnumerator3 = j)
        {
          nextObject = [objectEnumerator3 nextObject];
          if (!nextObject)
          {
            break;
          }

          v13 = [nextObject objectForKey:@"groupName"];
          if (v13)
          {
            v14 = v13;
            if (([names containsObject:v13] & 1) == 0)
            {
              [names addObject:v14];
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

- (int)getPluginClassNames:(id)names forGroupName:(id)name forProtocol:(id)protocol
{
  if (!names)
  {
    LODWORD(i) = 7;
    return i;
  }

  if (protocol)
  {
    i = [(NSMutableDictionary *)self->_pluginRegistry objectForKey:protocol_getName(protocol)];
    if (!i)
    {
      return i;
    }

    objectEnumerator = [i objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    v10 = nextObject;
    if (name)
    {
      if (nextObject)
      {
        do
        {
          v11 = [v10 objectForKey:@"groupName"];
          if (v11 && [v11 isEqualToString:name])
          {
            [names addObject:{objc_msgSend(v10, "objectForKey:", @"className"}];
          }

          i = [objectEnumerator nextObject];
          v10 = i;
        }

        while (i);
        return i;
      }

LABEL_31:
      LODWORD(i) = 0;
      return i;
    }

    if (!nextObject)
    {
      goto LABEL_31;
    }

    do
    {
      if (![v10 objectForKey:@"groupName"])
      {
        [names addObject:{objc_msgSend(v10, "objectForKey:", @"className"}];
      }

      i = [objectEnumerator nextObject];
      v10 = i;
    }

    while (i);
  }

  else
  {
    objectEnumerator2 = [(NSMutableDictionary *)self->_pluginRegistry objectEnumerator];
    for (i = [objectEnumerator2 nextObject]; i; i = objc_msgSend(objectEnumerator2, "nextObject"))
    {
      objectEnumerator3 = [i objectEnumerator];
      nextObject2 = [objectEnumerator3 nextObject];
      nextObject3 = nextObject2;
      if (name)
      {
        if (nextObject2)
        {
          do
          {
            v16 = [nextObject3 objectForKey:@"groupName"];
            if (v16 && [v16 isEqualToString:name])
            {
              [names addObject:{objc_msgSend(nextObject3, "objectForKey:", @"className"}];
            }

            nextObject3 = [objectEnumerator3 nextObject];
          }

          while (nextObject3);
        }
      }

      else if (nextObject2)
      {
        do
        {
          if (![nextObject3 objectForKey:@"groupName"])
          {
            [names addObject:{objc_msgSend(nextObject3, "objectForKey:", @"className"}];
          }

          nextObject3 = [objectEnumerator3 nextObject];
        }

        while (nextObject3);
      }
    }
  }

  return i;
}

- (int)getPluginDisplayNames:(id)names forGroupName:(id)name forProtocol:(id)protocol
{
  selfCopy = self;
  LODWORD(self) = 7;
  if (names && name)
  {
    if (protocol)
    {
      self = [(NSMutableDictionary *)selfCopy->_pluginRegistry objectForKey:protocol_getName(protocol)];
      if (self)
      {
        objectEnumerator = [(PROLegacyPluginManager *)self objectEnumerator];
        self = [objectEnumerator nextObject];
        if (self)
        {
          selfCopy3 = self;
          do
          {
            v10 = [(PROLegacyPluginManager *)selfCopy3 objectForKey:@"groupName"];
            if (v10 && [v10 isEqualToString:name])
            {
              [names addObject:{-[PROLegacyPluginManager objectForKey:](selfCopy3, "objectForKey:", @"displayName"}];
            }

            self = [objectEnumerator nextObject];
            selfCopy3 = self;
          }

          while (self);
        }
      }
    }

    else
    {
      objectEnumerator2 = [(NSMutableDictionary *)selfCopy->_pluginRegistry objectEnumerator];
      for (self = [objectEnumerator2 nextObject]; self; self = objc_msgSend(objectEnumerator2, "nextObject"))
      {
        objectEnumerator3 = [(PROLegacyPluginManager *)self objectEnumerator];
        nextObject = [objectEnumerator3 nextObject];
        if (nextObject)
        {
          nextObject2 = nextObject;
          do
          {
            v15 = [nextObject2 objectForKey:@"groupName"];
            if (v15 && [v15 isEqualToString:name])
            {
              [names addObject:{objc_msgSend(nextObject2, "objectForKey:", @"displayName"}];
            }

            nextObject2 = [objectEnumerator3 nextObject];
          }

          while (nextObject2);
        }
      }
    }
  }

  return self;
}

- (int)getPluginInfoDictionaries:(id)dictionaries forProtocol:(id)protocol
{
  selfCopy = self;
  LODWORD(self) = 7;
  if (dictionaries && protocol)
  {
    v6 = [(NSMutableDictionary *)selfCopy->_pluginRegistry objectForKey:protocol_getName(protocol)];
    if (v6)
    {
      objectEnumerator = [v6 objectEnumerator];
      self = [objectEnumerator nextObject];
      if (self)
      {
        selfCopy3 = self;
        do
        {
          [dictionaries addObject:selfCopy3];
          self = [objectEnumerator nextObject];
          selfCopy3 = self;
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

- (int)getBundlePath:(id *)path forPluginClassName:(id)name
{
  result = 7;
  if (path && name)
  {
    objectEnumerator = [(NSMutableDictionary *)self->_pluginRegistry objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      nextObject3 = nextObject;
      do
      {
        objectEnumerator2 = [nextObject3 objectEnumerator];
        while (1)
        {
          nextObject2 = [objectEnumerator2 nextObject];
          if (!nextObject2)
          {
            break;
          }

          v13 = nextObject2;
          if ([objc_msgSend(nextObject2 objectForKey:{@"className", "isEqualToString:", name}])
          {
            v14 = [v13 objectForKey:@"bundlePath"];
            result = 0;
            *path = v14;
            return result;
          }
        }

        nextObject3 = [objectEnumerator nextObject];
        result = 16;
      }

      while (nextObject3);
    }

    else
    {
      return 16;
    }
  }

  return result;
}

- (int)getPluginClass:(Class *)class forPluginClassName:(id)name
{
  result = 7;
  if (class && name)
  {
    v8 = NSClassFromString(name);
    *class = v8;
    if (v8)
    {
      return 0;
    }

    else
    {
      objectEnumerator = [(NSMutableDictionary *)self->_pluginRegistry objectEnumerator];
      nextObject = [objectEnumerator nextObject];
      if (nextObject)
      {
        nextObject3 = nextObject;
        while (2)
        {
          objectEnumerator2 = [nextObject3 objectEnumerator];
          while (1)
          {
            nextObject2 = [objectEnumerator2 nextObject];
            if (!nextObject2)
            {
              break;
            }

            v14 = nextObject2;
            if ([objc_msgSend(nextObject2 objectForKey:{@"className", "isEqualToString:", name}])
            {
              v15 = [v14 objectForKey:@"bundlePath"];

              return [(PROLegacyPluginManager *)self loadPluginClass:class withName:name fromBundlePath:v15];
            }
          }

          nextObject3 = [objectEnumerator nextObject];
          result = 16;
          if (nextObject3)
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

- (int)getPluginClass:(Class *)class forPluginDisplayName:(id)name
{
  result = 7;
  if (class && name)
  {
    objectEnumerator = [(NSMutableDictionary *)self->_pluginRegistry objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      nextObject3 = nextObject;
      while (2)
      {
        objectEnumerator2 = [nextObject3 objectEnumerator];
        while (1)
        {
          nextObject2 = [objectEnumerator2 nextObject];
          if (!nextObject2)
          {
            break;
          }

          v13 = nextObject2;
          if ([objc_msgSend(nextObject2 objectForKey:{@"displayName", "isEqualToString:", name}])
          {
            v14 = [v13 objectForKey:@"className"];
            v15 = NSClassFromString(v14);
            *class = v15;
            if (v15)
            {
              return 0;
            }

            v16 = [v13 objectForKey:@"bundlePath"];

            return [(PROLegacyPluginManager *)self loadPluginClass:class withName:v14 fromBundlePath:v16];
          }
        }

        nextObject3 = [objectEnumerator nextObject];
        result = 16;
        if (nextObject3)
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

- (int)getPluginClass:(Class *)class forPluginDisplayName:(id)name forProtocol:(id)protocol
{
  result = 7;
  if (class && name && protocol)
  {
    v9 = [(NSMutableDictionary *)self->_pluginRegistry objectForKey:protocol_getName(protocol)];
    if (v9)
    {
      objectEnumerator = [v9 objectEnumerator];
      nextObject = [objectEnumerator nextObject];
      if (nextObject)
      {
        nextObject2 = nextObject;
        while (1)
        {
          if ([objc_msgSend(nextObject2 objectForKey:{@"displayName", "isEqualToString:", name}])
          {
            v13 = [nextObject2 objectForKey:@"className"];
            v14 = NSClassFromString(v13);
            *class = v14;
            if (v14)
            {
              break;
            }
          }

          nextObject2 = [objectEnumerator nextObject];
          if (!nextObject2)
          {
            return 16;
          }
        }

        v15 = [nextObject2 objectForKey:@"bundlePath"];

        return [(PROLegacyPluginManager *)self loadPluginClass:class withName:v13 fromBundlePath:v15];
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