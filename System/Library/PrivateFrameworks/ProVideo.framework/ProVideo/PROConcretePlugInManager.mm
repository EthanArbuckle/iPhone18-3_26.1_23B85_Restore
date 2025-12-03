@interface PROConcretePlugInManager
- (BOOL)bundleHandler:(id)handler shouldAddPlugIn:(id)in;
- (BOOL)bundleIsDeferred:(id)deferred;
- (BOOL)checkIfShouldBlockPlugin:(id)plugin returnPluginDictionary:(id *)dictionary;
- (BOOL)checkPluginVersionAgainstBlockList:(id)list blockDict:(id)dict;
- (BOOL)shouldLoadBundle:(id)bundle;
- (BOOL)shouldLoadPlugIn:(id)in;
- (BOOL)validateProtocols:(id)protocols;
- (PROConcretePlugInManager)init;
- (id)apiForProtocol:(id *)protocol versions:(id)versions;
- (id)blockedDocumentPlugins;
- (id)blockedLibraryPlugins;
- (id)objectInBundlesAtIndex:(unsigned int)index;
- (id)plugInGroupWithUUID:(__CFUUID *)d;
- (id)plugInGroups;
- (id)plugInSearchDirectories;
- (id)plugInWithClassName:(id)name;
- (id)plugInWithUUID:(__CFUUID *)d;
- (id)plugIns;
- (id)plugInsForProtocol:(id)protocol;
- (id)plugInsForProtocols:(id)protocols;
- (id)sanitizePluginVersionString:(id)string;
- (unsigned)countOfBundles;
- (void)addDeferredPluginBundle:(id)bundle;
- (void)addDocumentBlockedPlugin:(id)plugin;
- (void)addLibraryBlockedPlugin:(id)plugin bundleName:(id)name pluginName:(id)pluginName version:(id)version;
- (void)addPlugIn:(id)in;
- (void)addPlugInSearchDirectory:(id)directory;
- (void)bundleHandler:(id)handler didAddPlugIn:(id)in;
- (void)dealloc;
- (void)finishPluginSetupForBundle:(id)bundle handler:(id)handler;
- (void)getNameOverrides:(id)overrides pluginName:(id *)name bundleName:(id *)bundleName;
- (void)insertObject:(id)object inPlugInSearchDirectoriesAtIndex:(unsigned int)index;
- (void)loadDeferredPlugins;
- (void)mergeGroupsDictionaryWith:(id)with;
- (void)registerAPIObject:(id)object forProtocol:(id)protocol version:(unsigned int)version;
- (void)removeAllPlugIns;
- (void)removeDeferredPluginBundle:(id)bundle;
- (void)removeObjectFromPlugInSearchDirectoriesAtIndex:(unsigned int)index;
- (void)removePlugin:(id)plugin;
- (void)reportError:(id)error;
- (void)scanForPlugInsInBundle:(id)bundle deferralNotification:(id)notification;
- (void)scanForPlugInsInBundle:(id)bundle withPluginKitPlugIn:(id)in deferralNotification:(id)notification;
- (void)scanForPlugInsInBundleHelper:(id)helper zone:(_NSZone *)zone withPluginKitPlugIn:(id)in actuallyLoad:(BOOL)load deferralNotification:(id)notification;
- (void)scanForPlugInsInDirectory:(id)directory actuallyLoad:(BOOL)load deferralNotification:(id)notification;
- (void)setDelegate:(id)delegate;
- (void)setPlugInSearchDirectories:(id)directories;
- (void)setRequiresProtocolsToBePresentWhenLoading:(BOOL)loading;
- (void)unregisterAPIForProtocol:(id)protocol;
- (void)unregisterAPIForProtocol:(id)protocol version:(unsigned int)version;
@end

@implementation PROConcretePlugInManager

- (PROConcretePlugInManager)init
{
  v8.receiver = self;
  v8.super_class = PROConcretePlugInManager;
  v2 = [(PROConcretePlugInManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(PROConcretePlugInManager *)v2 zone];
    v3->protocols = [objc_msgSend(MEMORY[0x277CBEB38] allocWithZone:{v4), "init"}];
    v3->groupsDictionary = [objc_msgSend(MEMORY[0x277CBEB38] allocWithZone:{v4), "init"}];
    v3->bundlesDictionary = [objc_msgSend(MEMORY[0x277CBEB38] allocWithZone:{v4), "init"}];
    v3->uuids = [objc_msgSend(MEMORY[0x277CBEB38] allocWithZone:{v4), "init"}];
    v3->classesDictionary = [objc_msgSend(MEMORY[0x277CBEB38] allocWithZone:{v4), "init"}];
    v3->plugIns = [objc_msgSend(MEMORY[0x277CBEB18] allocWithZone:{v4), "init"}];
    v3->api = [objc_msgSend(MEMORY[0x277CBEB38] allocWithZone:{v4), "init"}];
    v3->apiLock = [[PROReadWriteLock allocWithZone:?]];
    v3->plugInSearchDirectories = [objc_msgSend(MEMORY[0x277CBEB18] allocWithZone:{v4), "init"}];
    v3->deferredPluginBundles = [objc_msgSend(MEMORY[0x277CBEB18] allocWithZone:{v4), "init"}];
    v3->blockedLibraryPlugins = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3->blockedDocumentPlugins = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3->mutex = [objc_msgSend(MEMORY[0x277CCAC60] allocWithZone:{v4), "init"}];
    v5 = [(NSArray *)NSSearchPathForDirectoriesInDomains(NSLibraryDirectory objectEnumerator:1)];
    for (i = [(NSEnumerator *)v5 nextObject]; i; i = [(NSEnumerator *)v5 nextObject])
    {
      -[PROConcretePlugInManager addPlugInSearchDirectory:](v3, "addPlugInSearchDirectory:", [i stringByAppendingPathComponent:@"Application Support/Plug-ins/ProPlug"]);
    }

    -[PROConcretePlugInManager addPlugInSearchDirectory:](v3, "addPlugInSearchDirectory:", [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")]);
  }

  return v3;
}

- (void)dealloc
{
  [(NSRecursiveLock *)self->mutex lock];

  [(PROReadWriteLock *)self->apiLock lock];
  v3.receiver = self;
  v3.super_class = PROConcretePlugInManager;
  [(PROConcretePlugInManager *)&v3 dealloc];
}

- (void)setRequiresProtocolsToBePresentWhenLoading:(BOOL)loading
{
  if (loading)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->managerFlags = *&self->managerFlags & 0xDF | v3;
}

- (void)setDelegate:(id)delegate
{
  self->delegate = delegate;
  *&self->managerFlags = *&self->managerFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *&self->managerFlags = *&self->managerFlags & 0xFD | v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *&self->managerFlags = *&self->managerFlags & 0xFB | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  *&self->managerFlags = *&self->managerFlags & 0xF7 | v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  *&self->managerFlags = *&self->managerFlags & 0xEF | v7;
}

- (void)reportError:(id)error
{
  if (*&self->managerFlags)
  {
    [self->delegate plugInManager:self didError:error];
  }
}

- (BOOL)shouldLoadBundle:(id)bundle
{
  if (-[NSMutableDictionary objectForKey:](self->bundlesDictionary, "objectForKey:", [bundle bundleIdentifier]))
  {
    return 0;
  }

  if ((*&self->managerFlags & 4) == 0)
  {
    return 1;
  }

  delegate = self->delegate;

  return [delegate plugInManager:self shouldLoadBundle:bundle];
}

- (BOOL)shouldLoadPlugIn:(id)in
{
  if (-[NSMutableDictionary objectForKey:](self->uuids, "objectForKey:", [MEMORY[0x277CCAE60] valueWithPointer:{objc_msgSend(in, "uuid")}]))
  {
    return 0;
  }

  if ((*&self->managerFlags & 8) == 0)
  {
    return 1;
  }

  delegate = self->delegate;

  return [delegate plugInManager:self shouldLoadPlugIn:in];
}

- (void)addPlugInSearchDirectory:(id)directory
{
  if (!directory)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Nil argument '%s' to method '%@'", "plugInSearchDirectory", NSStringFromSelector(a2)}];
  }

  [(NSRecursiveLock *)self->mutex lock];
  if (([(NSMutableArray *)self->plugInSearchDirectories containsObject:directory]& 1) == 0)
  {
    [-[PROConcretePlugInManager mutableArrayValueForKey:](self mutableArrayValueForKey:{@"plugInSearchDirectories", "addObject:", directory}];
  }

  mutex = self->mutex;

  [(NSRecursiveLock *)mutex unlock];
}

- (void)setPlugInSearchDirectories:(id)directories
{
  if (!directories)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Nil argument '%s' to method '%@'", "searchDirectories", NSStringFromSelector(a2)}];
  }

  [(NSRecursiveLock *)self->mutex lock];
  [(PROConcretePlugInManager *)self willChangeValueForKey:@"plugInSearchDirectories"];
  [(NSMutableArray *)self->plugInSearchDirectories setArray:directories];
  [(PROConcretePlugInManager *)self didChangeValueForKey:@"plugInSearchDirectories"];
  mutex = self->mutex;

  [(NSRecursiveLock *)mutex unlock];
}

- (void)insertObject:(id)object inPlugInSearchDirectoriesAtIndex:(unsigned int)index
{
  [(NSRecursiveLock *)self->mutex lock];
  [(NSMutableArray *)self->plugInSearchDirectories insertObject:object atIndex:index];
  mutex = self->mutex;

  [(NSRecursiveLock *)mutex unlock];
}

- (void)removeObjectFromPlugInSearchDirectoriesAtIndex:(unsigned int)index
{
  [(NSRecursiveLock *)self->mutex lock];
  [(NSMutableArray *)self->plugInSearchDirectories removeObjectAtIndex:index];
  mutex = self->mutex;

  [(NSRecursiveLock *)mutex unlock];
}

- (id)plugInSearchDirectories
{
  [(NSRecursiveLock *)self->mutex lock];
  v3 = [MEMORY[0x277CBEA60] arrayWithArray:self->plugInSearchDirectories];
  [(NSRecursiveLock *)self->mutex unlock];
  return v3;
}

- (void)removeAllPlugIns
{
  [(NSRecursiveLock *)self->mutex lock];
  [(NSMutableDictionary *)self->protocols removeAllObjects];
  [(NSMutableDictionary *)self->groupsDictionary removeAllObjects];
  [(NSMutableDictionary *)self->uuids removeAllObjects];
  [(NSMutableDictionary *)self->classesDictionary removeAllObjects];
  [(PROConcretePlugInManager *)self willChangeValueForKey:@"bundles"];
  [(NSMutableDictionary *)self->bundlesDictionary removeAllObjects];
  [(PROConcretePlugInManager *)self didChangeValueForKey:@"bundles"];
  [-[PROConcretePlugInManager mutableArrayValueForKey:](self mutableArrayValueForKey:{@"plugIns", "removeAllObjects"}];
  mutex = self->mutex;

  [(NSRecursiveLock *)mutex unlock];
}

- (void)addPlugIn:(id)in
{
  -[NSMutableDictionary setObject:forKey:](self->uuids, "setObject:forKey:", in, [MEMORY[0x277CCAE60] valueWithPointer:{objc_msgSend(in, "uuid")}]);
  -[NSMutableDictionary setObject:forKey:](self->classesDictionary, "setObject:forKey:", in, [in className]);
  v5 = [objc_msgSend(in "implementedProtocols")];
  nextObject = [v5 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      [(NSMutableDictionary *)self->protocols addObject:in toSetForKey:nextObject2];
      nextObject2 = [v5 nextObject];
    }

    while (nextObject2);
  }

  [-[PROConcretePlugInManager mutableArrayValueForKey:](self mutableArrayValueForKey:{@"plugIns", nextObject2), "addObject:", in}];
  if ((*&self->managerFlags & 0x10) != 0)
  {
    delegate = self->delegate;

    [delegate plugInManager:self didLoadPlugIn:in];
  }
}

- (void)addDeferredPluginBundle:(id)bundle
{
  [(NSRecursiveLock *)self->mutex lock];
  [(NSMutableArray *)self->deferredPluginBundles addObject:bundle];
  mutex = self->mutex;

  [(NSRecursiveLock *)mutex unlock];
}

- (void)loadDeferredPlugins
{
  v14 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->mutex lock];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  deferredPluginBundles = self->deferredPluginBundles;
  v4 = [(NSMutableArray *)deferredPluginBundles countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(deferredPluginBundles);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 loadDeferredPlugins];
        -[PROConcretePlugInManager finishPluginSetupForBundle:handler:](self, "finishPluginSetupForBundle:handler:", [v8 getBundle], v8);
      }

      v5 = [(NSMutableArray *)deferredPluginBundles countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  self->deferredPluginBundles = 0;
  [(NSRecursiveLock *)self->mutex unlock];
}

- (BOOL)bundleIsDeferred:(id)deferred
{
  [(NSRecursiveLock *)self->mutex lock];
  if ([(NSMutableArray *)self->deferredPluginBundles count])
  {
    v5 = 1;
    do
    {
      v6 = [-[NSMutableArray objectAtIndexedSubscript:](self->deferredPluginBundles objectAtIndexedSubscript:{v5 - 1), "getBundle"}];
      v7 = v6 == deferred;
    }

    while (v5++ < [(NSMutableArray *)self->deferredPluginBundles count]&& v6 != deferred);
  }

  else
  {
    v7 = 0;
  }

  [(NSRecursiveLock *)self->mutex unlock];
  return v7;
}

- (void)removeDeferredPluginBundle:(id)bundle
{
  v17 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->mutex lock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  deferredPluginBundles = self->deferredPluginBundles;
  v6 = [(NSMutableArray *)deferredPluginBundles countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(deferredPluginBundles);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 getBundle] == bundle)
        {
          v8 = v11;
        }
      }

      v7 = [(NSMutableArray *)deferredPluginBundles countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
    if (v8)
    {
      [(NSMutableArray *)self->deferredPluginBundles removeObject:v8];
    }
  }

  [(NSRecursiveLock *)self->mutex unlock];
}

- (void)removePlugin:(id)plugin
{
  [(NSRecursiveLock *)self->mutex lock];
  [-[PROConcretePlugInManager mutableArrayValueForKey:](self mutableArrayValueForKey:{@"plugIns", "removeObject:", plugin}];
  mutex = self->mutex;

  [(NSRecursiveLock *)mutex unlock];
}

- (void)addLibraryBlockedPlugin:(id)plugin bundleName:(id)name pluginName:(id)pluginName version:(id)version
{
  v8 = [[BlockedPlugin alloc] init:name plugName:pluginName plugVersion:version];
  -[NSMutableDictionary setObject:forKey:](self->blockedLibraryPlugins, "setObject:forKey:", v8, [plugin blockedLookupKey]);
}

- (void)addDocumentBlockedPlugin:(id)plugin
{
  v5 = [objc_msgSend(plugin "bundle")];
  if (!v5 || (v6 = v5, [v5 isEqualToString:&stru_2872E16E0]))
  {
    v6 = [objc_msgSend(plugin "bundle")];
  }

  v7 = [objc_msgSend(plugin "bundle")];
  v8 = [objc_msgSend(plugin "infoDictionary")];
  v9 = [objc_msgSend(plugin "bundle")];
  v10 = [objc_msgSend(plugin "bundle")];
  if ([objc_msgSend(objc_msgSend(plugin "bundle")])
  {
    v10 = [objc_msgSend(plugin "bundle")];
  }

  v11 = [[BlockedPlugin alloc] init:v7 plugName:v9 plugVersion:v10];
  -[NSMutableDictionary setObject:forKey:](self->blockedDocumentPlugins, "setObject:forKey:", v11, [plugin blockedLookupKey]);
}

- (id)sanitizePluginVersionString:(id)string
{
  v3 = [string componentsSeparatedByString:@" "];

  return [v3 objectAtIndexedSubscript:0];
}

- (BOOL)checkPluginVersionAgainstBlockList:(id)list blockDict:(id)dict
{
  v6 = -[PROConcretePlugInManager sanitizePluginVersionString:](self, "sanitizePluginVersionString:", [objc_msgSend(list "bundle")]);
  v7 = [objc_msgSend(dict valueForKey:{@"Range Block", "BOOLValue"}];
  v8 = [dict valueForKey:@"Version Upper Limit"];
  if (!v7)
  {
    return ([v6 compare:v8 options:64] - 1) > 0xFFFFFFFFFFFFFFFDLL;
  }

  v9 = [dict valueForKey:@"Version Lower Limit"];
  if ([objc_msgSend(objc_msgSend(list "bundle")])
  {
    v6 = [objc_msgSend(list "bundle")];
  }

  v10 = [v6 compare:v8 options:64];
  v11 = [v6 compare:v9 options:64];
  v12 = v11;
  if (v10 == -1 && v11 == 1)
  {
    return 1;
  }

  result = 1;
  if (v10 && v12)
  {
    return 0;
  }

  return result;
}

- (BOOL)checkIfShouldBlockPlugin:(id)plugin returnPluginDictionary:(id *)dictionary
{
  v49 = *MEMORY[0x277D85DE8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __76__PROConcretePlugInManager_checkIfShouldBlockPlugin_returnPluginDictionary___block_invoke;
  block[3] = &unk_279AA8060;
  block[4] = self;
  if (checkIfShouldBlockPlugin_returnPluginDictionary__loadBlockList != -1)
  {
    dispatch_once(&checkIfShouldBlockPlugin_returnPluginDictionary__loadBlockList, block);
  }

  if (checkIfShouldBlockPlugin_returnPluginDictionary__pluginList)
  {
    infoDictionary = [plugin infoDictionary];
    v8 = [objc_msgSend(plugin "bundle")];
    v9 = [infoDictionary valueForKey:@"displayName"];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = checkIfShouldBlockPlugin_returnPluginDictionary__pluginList;
    v10 = [checkIfShouldBlockPlugin_returnPluginDictionary__pluginList countByEnumeratingWithState:&v41 objects:v48 count:16];
    v31 = v10;
    if (v10)
    {
      dictionaryCopy = dictionary;
      v32 = *v42;
      alloc = *MEMORY[0x277CBECE8];
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v42 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v41 + 1) + 8 * v11);
          if ([objc_msgSend(v12 valueForKey:{@"Block Type", "isEqualToString:", @"UUID"}])
          {
            v13 = CFUUIDCreateString(alloc, [plugin uuid]);
            v14 = [objc_msgSend(v12 valueForKey:{@"UUID", "isEqualToString:", v13}];

            if (v14)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v15 = [objc_msgSend(v12 valueForKey:{@"Bundle Block", "BOOLValue"}];
            v16 = [v12 valueForKey:@"Name"];
            v17 = v16;
            if (v15)
            {
              v39 = 0uLL;
              v40 = 0uLL;
              v37 = 0uLL;
              v38 = 0uLL;
              v18 = [v16 countByEnumeratingWithState:&v37 objects:v47 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v38;
LABEL_16:
                v21 = 0;
                while (1)
                {
                  if (*v38 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  if ([v8 isEqualToString:*(*(&v37 + 1) + 8 * v21)] && -[PROConcretePlugInManager checkPluginVersionAgainstBlockList:blockDict:](self, "checkPluginVersionAgainstBlockList:blockDict:", plugin, v12))
                  {
                    break;
                  }

                  if (v19 == ++v21)
                  {
                    v19 = [v17 countByEnumeratingWithState:&v37 objects:v47 count:16];
                    if (v19)
                    {
                      goto LABEL_16;
                    }

                    goto LABEL_11;
                  }
                }

LABEL_36:
                *dictionaryCopy = v12;
                LOBYTE(v10) = 1;
                return v10;
              }
            }

            else
            {
              v35 = 0uLL;
              v36 = 0uLL;
              v33 = 0uLL;
              v34 = 0uLL;
              v22 = [v16 countByEnumeratingWithState:&v33 objects:v46 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v34;
LABEL_26:
                v25 = 0;
                while (1)
                {
                  if (*v34 != v24)
                  {
                    objc_enumerationMutation(v17);
                  }

                  if ([v9 isEqualToString:*(*(&v33 + 1) + 8 * v25)] && -[PROConcretePlugInManager checkPluginVersionAgainstBlockList:blockDict:](self, "checkPluginVersionAgainstBlockList:blockDict:", plugin, v12))
                  {
                    goto LABEL_36;
                  }

                  if (v23 == ++v25)
                  {
                    v23 = [v17 countByEnumeratingWithState:&v33 objects:v46 count:16];
                    if (v23)
                    {
                      goto LABEL_26;
                    }

                    break;
                  }
                }
              }
            }
          }

LABEL_11:
          ++v11;
        }

        while (v11 != v31);
        v26 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
        LOBYTE(v10) = 0;
        v31 = v26;
        if (v26)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

uint64_t __76__PROConcretePlugInManager_checkIfShouldBlockPlugin_returnPluginDictionary___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) newBlockPluginList:@"6B9D8D3C-D3BF-4276-828F-2212D24B11CE"];
  checkIfShouldBlockPlugin_returnPluginDictionary__pluginList = result;
  return result;
}

- (void)getNameOverrides:(id)overrides pluginName:(id *)name bundleName:(id *)bundleName
{
  v8 = [overrides valueForKey:@"Name Override"];
  v9 = [overrides valueForKey:@"Bundle Name Override"];
  if (v8 && ([v8 isEqualToString:&stru_2872E16E0] & 1) == 0)
  {
    *name = [MEMORY[0x277CCAB68] stringWithString:v8];
  }

  if (v9)
  {
    if (([v9 isEqualToString:&stru_2872E16E0] & 1) == 0)
    {
      *bundleName = [MEMORY[0x277CCAB68] stringWithString:v9];
    }
  }
}

- (void)mergeGroupsDictionaryWith:(id)with
{
  v13 = [with mutableCopy];
  keyEnumerator = [with keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    nextObject4 = nextObject;
    do
    {
      v8 = [(NSMutableDictionary *)self->groupsDictionary objectForKey:nextObject4];
      if (v8)
      {
        v9 = v8;
        v10 = [objc_msgSend(objc_msgSend(with objectForKey:{nextObject4), "plugIns"), "objectEnumerator"}];
        nextObject2 = [v10 nextObject];
        if (nextObject2)
        {
          nextObject3 = nextObject2;
          do
          {
            if (objc_opt_respondsToSelector())
            {
              [v9 addPlugIn:nextObject3];
            }

            nextObject3 = [v10 nextObject];
          }

          while (nextObject3);
        }

        [v13 removeObjectForKey:nextObject4];
      }

      nextObject4 = [keyEnumerator nextObject];
    }

    while (nextObject4);
  }

  [(NSMutableDictionary *)self->groupsDictionary addEntriesFromDictionary:v13];
}

- (void)finishPluginSetupForBundle:(id)bundle handler:(id)handler
{
  [(NSRecursiveLock *)self->mutex lock];
  if ([objc_msgSend(handler "plugIns")])
  {
    -[PROConcretePlugInManager mergeGroupsDictionaryWith:](self, "mergeGroupsDictionaryWith:", [handler groupsDictionary]);
  }

  if (handler)
  {
    [(PROConcretePlugInManager *)self willChangeValueForKey:@"bundles"];
    -[NSMutableDictionary setObject:forKey:](self->bundlesDictionary, "setObject:forKey:", handler, [bundle bundleIdentifier]);
    [(PROConcretePlugInManager *)self didChangeValueForKey:@"bundles"];
  }

  mutex = self->mutex;

  [(NSRecursiveLock *)mutex unlock];
}

- (void)scanForPlugInsInBundleHelper:(id)helper zone:(_NSZone *)zone withPluginKitPlugIn:(id)in actuallyLoad:(BOOL)load deferralNotification:(id)notification
{
  loadCopy = load;
  load = [[PROBundleHandler allocWithZone:?]actuallyLoad:"initWithBundle:actuallyLoad:", helper, load];
  [(PROBundleHandler *)load setDelegate:self];
  [(PROBundleHandler *)load setAPIManager:self];
  [(PROBundleHandler *)load registerAndLoadPlugIns:loadCopy];
  [(PROBundleHandler *)load setRegistrationCallbackObject:self];
  [(PROBundleHandler *)load setDeferralNotification:notification];
  [(PROConcretePlugInManager *)self finishPluginSetupForBundle:helper handler:load];
}

- (void)scanForPlugInsInDirectory:(id)directory actuallyLoad:(BOOL)load deferralNotification:(id)notification
{
  loadCopy = load;
  if (!directory)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Nil argument '%s' to method '%@'", "directoryPath", NSStringFromSelector(a2)}];
  }

  v13 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v8 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v9 = [(PROConcretePlugInManager *)self zone];
  [(NSRecursiveLock *)self->mutex lock];
  nextObject = [v8 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      if (([nextObject2 hasPrefix:@"."] & 1) == 0)
      {
        v12 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:{objc_msgSend(objc_msgSend(directory, "stringByAppendingPathComponent:", nextObject2), "stringByResolvingSymlinksInPath")}];
        if ([v12 bundleIdentifier] && -[PROConcretePlugInManager shouldLoadBundle:](self, "shouldLoadBundle:", v12))
        {
          [(PROConcretePlugInManager *)self scanForPlugInsInBundleHelper:v12 zone:v9 withPluginKitPlugIn:0 actuallyLoad:loadCopy deferralNotification:notification];
          [v8 skipDescendents];
        }
      }

      nextObject2 = [v8 nextObject];
    }

    while (nextObject2);
  }

  [(NSRecursiveLock *)self->mutex unlock];
}

- (void)scanForPlugInsInBundle:(id)bundle withPluginKitPlugIn:(id)in deferralNotification:(id)notification
{
  [(NSRecursiveLock *)self->mutex lock];
  if ([bundle bundleIdentifier] && -[PROConcretePlugInManager shouldLoadBundle:](self, "shouldLoadBundle:", bundle))
  {
    v9 = objc_alloc_init(MEMORY[0x277CCA8B0]);
    [(PROConcretePlugInManager *)self scanForPlugInsInBundleHelper:bundle zone:[(PROConcretePlugInManager *)self zone] withPluginKitPlugIn:in deferralNotification:notification];
    [v9 drain];
  }

  mutex = self->mutex;

  [(NSRecursiveLock *)mutex unlock];
}

- (void)scanForPlugInsInBundle:(id)bundle deferralNotification:(id)notification
{
  [(NSRecursiveLock *)self->mutex lock];
  if ([bundle bundleIdentifier] && -[PROConcretePlugInManager shouldLoadBundle:](self, "shouldLoadBundle:", bundle))
  {
    v7 = objc_alloc_init(MEMORY[0x277CCA8B0]);
    [(PROConcretePlugInManager *)self scanForPlugInsInBundleHelper:bundle zone:[(PROConcretePlugInManager *)self zone] withPluginKitPlugIn:0 deferralNotification:notification];
    [v7 drain];
  }

  mutex = self->mutex;

  [(NSRecursiveLock *)mutex unlock];
}

- (BOOL)bundleHandler:(id)handler shouldAddPlugIn:(id)in
{
  [(NSRecursiveLock *)self->mutex lock];
  LOBYTE(in) = [(PROConcretePlugInManager *)self shouldLoadPlugIn:in];
  [(NSRecursiveLock *)self->mutex unlock];
  return in;
}

- (void)bundleHandler:(id)handler didAddPlugIn:(id)in
{
  [(NSRecursiveLock *)self->mutex lock];
  [(PROConcretePlugInManager *)self addPlugIn:in];
  mutex = self->mutex;

  [(NSRecursiveLock *)mutex unlock];
}

- (id)plugIns
{
  [(NSRecursiveLock *)self->mutex lock];
  v3 = [MEMORY[0x277CBEA60] arrayWithArray:self->plugIns];
  [(NSRecursiveLock *)self->mutex unlock];
  return v3;
}

- (id)plugInGroups
{
  [(NSRecursiveLock *)self->mutex lock];
  v3 = [MEMORY[0x277CBEA60] arrayWithArray:{-[NSMutableDictionary allValues](self->groupsDictionary, "allValues")}];
  [(NSRecursiveLock *)self->mutex unlock];
  return v3;
}

- (id)plugInWithUUID:(__CFUUID *)d
{
  if (!d)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Nil argument '%s' to method '%@'", "uuid", NSStringFromSelector(a2)}];
  }

  [(NSRecursiveLock *)self->mutex lock];
  v5 = -[NSMutableDictionary objectForKey:](self->uuids, "objectForKey:", [MEMORY[0x277CCAE60] valueWithPointer:d]);
  [(NSRecursiveLock *)self->mutex unlock];
  return v5;
}

- (id)plugInWithClassName:(id)name
{
  if (!name)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Nil argument '%s' to method '%@'", "className", NSStringFromSelector(a2)}];
  }

  [(NSRecursiveLock *)self->mutex lock];
  v5 = [(NSMutableDictionary *)self->classesDictionary objectForKey:name];
  [(NSRecursiveLock *)self->mutex unlock];
  return v5;
}

- (id)plugInGroupWithUUID:(__CFUUID *)d
{
  if (!d)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Nil argument '%s' to method '%@'", "uuid", NSStringFromSelector(a2)}];
  }

  [(NSRecursiveLock *)self->mutex lock];
  v5 = -[NSMutableDictionary objectForKey:](self->groupsDictionary, "objectForKey:", [MEMORY[0x277CCAE60] valueWithPointer:d]);
  [(NSRecursiveLock *)self->mutex unlock];
  return v5;
}

- (id)blockedLibraryPlugins
{
  [(NSRecursiveLock *)self->mutex lock];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->blockedLibraryPlugins];
  [(NSRecursiveLock *)self->mutex unlock];
  return v3;
}

- (id)blockedDocumentPlugins
{
  [(NSRecursiveLock *)self->mutex lock];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->blockedDocumentPlugins];
  [(NSRecursiveLock *)self->mutex unlock];
  return v3;
}

- (unsigned)countOfBundles
{
  [(NSRecursiveLock *)self->mutex lock];
  v3 = [(NSMutableDictionary *)self->bundlesDictionary count];
  [(NSRecursiveLock *)self->mutex unlock];
  return v3;
}

- (id)objectInBundlesAtIndex:(unsigned int)index
{
  [(NSRecursiveLock *)self->mutex lock];
  v5 = [objc_msgSend(-[NSMutableDictionary allValues](self->bundlesDictionary "allValues")];
  [(NSRecursiveLock *)self->mutex unlock];
  return v5;
}

- (id)plugInsForProtocol:(id)protocol
{
  if (!protocol)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Nil argument '%s' to method '%@'", "protocol", NSStringFromSelector(a2)}];
  }

  [(NSRecursiveLock *)self->mutex lock];
  v5 = [(NSMutableDictionary *)self->protocols objectForKey:NSStringFromProtocol(protocol)];
  [(NSRecursiveLock *)self->mutex unlock];
  if (v5)
  {

    return [v5 allObjects];
  }

  else
  {
    v7 = MEMORY[0x277CBEA60];

    return [v7 array];
  }
}

- (id)plugInsForProtocols:(id)protocols
{
  if (!protocols)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Nil argument '%s' to method '%@'", "matchingProtocols", NSStringFromSelector(a2)}];
  }

  [(NSRecursiveLock *)self->mutex lock];
  v5 = [MEMORY[0x277CBEA60] arrayWithArray:{-[NSMutableDictionary objectsInAllSetsForKeys:](self->protocols, "objectsInAllSetsForKeys:", protocols)}];
  [(NSRecursiveLock *)self->mutex unlock];
  return v5;
}

- (id)apiForProtocol:(id *)protocol versions:(id)versions
{
  if (!protocol)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Nil argument '%s' to method '%@'", "apiProtocol", NSStringFromSelector(a2)}];
  }

  [(PROReadWriteLock *)self->apiLock lockForReading];
  v7 = [(NSMutableDictionary *)self->api objectForKey:NSStringFromProtocol(*protocol)];
  if (!v7)
  {
LABEL_9:
    v12 = 0;
    goto LABEL_12;
  }

  v8 = v7;
  if (versions)
  {
    objectEnumerator = [versions objectEnumerator];
    while (1)
    {
      nextObject = [objectEnumerator nextObject];
      if (!nextObject)
      {
        goto LABEL_9;
      }

      v11 = [v8 objectForKey:nextObject];
      if (v11)
      {
        v12 = v11;
        goto LABEL_11;
      }
    }
  }

  v12 = [objc_msgSend(v7 "allValues")];
  if (v12)
  {
LABEL_11:
    *protocol = [objc_msgSend(v8 objectForKey:{@"OriginalProtocolPointer", "pointerValue"}];
    v13 = v12;
  }

LABEL_12:
  [(PROReadWriteLock *)self->apiLock unlock];
  return v12;
}

- (void)registerAPIObject:(id)object forProtocol:(id)protocol version:(unsigned int)version
{
  v5 = *&version;
  if (object)
  {
    if (protocol)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Nil argument '%s' to method '%@'", "apiObject", NSStringFromSelector(a2)}];
    if (protocol)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Nil argument '%s' to method '%@'", "apiProtocol", NSStringFromSelector(a2)}];
LABEL_3:
  v10 = NSStringFromProtocol(protocol);
  v14 = [objc_msgSend(MEMORY[0x277CCABB0] allocWithZone:{-[PROConcretePlugInManager zone](self, "zone")), "initWithUnsignedInt:", v5}];
  [(PROReadWriteLock *)self->apiLock lockForWriting];
  v11 = [(NSMutableDictionary *)self->api objectForKey:v10];
  if (v11)
  {
    [v11 setObject:object forKey:v14];
  }

  else
  {
    v12 = [MEMORY[0x277CBEB38] allocWithZone:{-[PROConcretePlugInManager zone](self, "zone")}];
    v13 = [v12 initWithObjectsAndKeys:{object, v14, objc_msgSend(MEMORY[0x277CCAE60], "valueWithPointer:", protocol), @"OriginalProtocolPointer", 0}];
    [(NSMutableDictionary *)self->api setObject:v13 forKey:v10];
  }

  [(PROReadWriteLock *)self->apiLock unlock];
}

- (void)unregisterAPIForProtocol:(id)protocol version:(unsigned int)version
{
  v4 = *&version;
  if (!protocol)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Nil argument '%s' to method '%@'", "apiProtocol", NSStringFromSelector(a2)}];
  }

  v7 = NSStringFromProtocol(protocol);
  [(PROReadWriteLock *)self->apiLock lockForWriting];
  v8 = [(NSMutableDictionary *)self->api objectForKey:v7];
  [v8 removeObjectForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", v4)}];
  if (![v8 count])
  {
    [(NSMutableDictionary *)self->api removeObjectForKey:v7];
  }

  apiLock = self->apiLock;

  [(PROReadWriteLock *)apiLock unlock];
}

- (void)unregisterAPIForProtocol:(id)protocol
{
  if (!protocol)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Nil argument '%s' to method '%@'", "apiProtocol", NSStringFromSelector(a2)}];
  }

  [(PROReadWriteLock *)self->apiLock lockForWriting];
  [(NSMutableDictionary *)self->api removeObjectForKey:NSStringFromProtocol(protocol)];
  apiLock = self->apiLock;

  [(PROReadWriteLock *)apiLock unlock];
}

- (BOOL)validateProtocols:(id)protocols
{
  if (![(PROConcretePlugInManager *)self requiresProtocolsToBePresentWhenLoading])
  {
    return 1;
  }

  [(PROReadWriteLock *)self->apiLock lockForReading];
  objectEnumerator = [protocols objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject3 = nextObject;
    while (2)
    {
      v8 = [nextObject3 objectForKey:@"protocolName"];
      v9 = [nextObject3 objectForKey:@"versions"];
      v10 = [(NSMutableDictionary *)self->api objectForKey:v8];
      v11 = v10 != 0;
      if (v10)
      {
        v12 = v10;
        objectEnumerator2 = [v9 objectEnumerator];
        do
        {
          nextObject2 = [objectEnumerator2 nextObject];
          if (!nextObject2)
          {
            v11 = 0;
            goto LABEL_13;
          }
        }

        while (![v12 objectForKey:nextObject2]);
        nextObject3 = [objectEnumerator nextObject];
        if (nextObject3)
        {
          continue;
        }
      }

      break;
    }
  }

  else
  {
    v11 = 1;
  }

LABEL_13:
  [(PROReadWriteLock *)self->apiLock unlock];
  return v11;
}

@end