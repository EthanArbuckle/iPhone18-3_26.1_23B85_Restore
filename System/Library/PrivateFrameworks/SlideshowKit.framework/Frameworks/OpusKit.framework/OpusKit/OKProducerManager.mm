@interface OKProducerManager
+ (id)defaultManager;
- (BOOL)hasContentWithIdentifier:(id)identifier;
- (BOOL)hasInstalledPluginAndContentWithIdentifier:(id)identifier;
- (BOOL)hasPluginWithIdentifier:(id)identifier;
- (BOOL)uninstallContentWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)uninstallPluginWithIdentifier:(id)identifier error:(id *)error;
- (Class)registeredClassFromString:(id)string;
- (OKProducerManager)init;
- (double)versionForContentIdentifier:(id)identifier;
- (double)versionForPluginIdentifier:(id)identifier;
- (id)_allBundlesURLsWithExtention:(id)extention;
- (id)_contentFromURL:(id)l;
- (id)_contentWithIdentifier:(id)identifier progressBlock:(id)block completionBlock:(id)completionBlock;
- (id)_installedURLsInDirectoryURL:(id)l withExtension:(id)extension;
- (id)_pluginFromURL:(id)l;
- (id)addContentFromURL:(id)l;
- (id)addPluginFromURL:(id)l;
- (id)allContentsIdentifiers;
- (id)allInstalledContents;
- (id)allInstalledPlugins;
- (id)allPluginsIdentifiers;
- (id)audioURLsForPluginIdentifier:(id)identifier;
- (id)backgroundColorForPluginIdentifier:(id)identifier;
- (id)installContentAtURL:(id)l overwrite:(BOOL)overwrite error:(id *)error;
- (id)installPluginAtURL:(id)l overwrite:(BOOL)overwrite error:(id *)error;
- (id)installedContentAtURL:(id)l;
- (id)installedContentWithIdentifier:(id)identifier;
- (id)installedPluginAtURL:(id)l;
- (id)installedPluginWithIdentifier:(id)identifier;
- (id)installedPluginWithName:(id)name;
- (id)installedPluginsNames;
- (id)installedPluginsWithFamily:(unint64_t)family;
- (id)libraryPlugInsDirectoryURL;
- (id)loadedContents;
- (id)loadedPlugins;
- (id)localizedNameForPluginIdentifier:(id)identifier;
- (id)pluginWithLoadedClass:(Class)class;
- (id)userLibraryPlugInsDirectoryURL;
- (void)_closeAndDeleteDocument:(id)document fileURL:(id)l completionBlock:(id)block;
- (void)_closeDocument:(id)document completionBlock:(id)block;
- (void)_openDocument:(id)document completionBlock:(id)block;
- (void)_performAsynchronousProducerAccessUsingBlock:(id)block;
- (void)_reachabilityChanged:(id)changed;
- (void)_saveDocument:(id)document completionBlock:(id)block;
- (void)_saveDocument:(id)document toFileURL:(id)l completionBlock:(id)block;
- (void)authorDocument:(id)document withPluginIdentifier:(id)identifier guidelines:(id)guidelines flattenMedia:(BOOL)media flattenProducer:(BOOL)producer progressBlock:(id)block completionBlock:(id)completionBlock;
- (void)contentWithIdentifier:(id)identifier progressBlock:(id)block completionBlock:(id)completionBlock;
- (void)createDocumentAtDirectoryURL:(id)l withPluginIdentifier:(id)identifier guidelines:(id)guidelines mediaURLs:(id)ls mediaItemLookupDelegate:(id)delegate flattenMedia:(BOOL)media flattenProducer:(BOOL)producer prepareCaches:(BOOL)self0 format:(unint64_t)self1 keepOpen:(BOOL)self2 documentClass:(Class)self3 progressBlock:(id)self4 completionBlock:(id)self5;
- (void)createDocumentAtFileURL:(id)l withPluginIdentifier:(id)identifier guidelines:(id)guidelines mediaURLs:(id)ls mediaItemLookupDelegate:(id)delegate flattenMedia:(BOOL)media flattenProducer:(BOOL)producer prepareCaches:(BOOL)self0 format:(unint64_t)self1 keepOpen:(BOOL)self2 documentClass:(Class)self3 progressBlock:(id)self4 completionBlock:(id)self5;
- (void)createPresentationWithPluginIdentifier:(id)identifier guidelines:(id)guidelines mediaFeeder:(id)feeder mediaItemLookupDelegate:(id)delegate progressBlock:(id)block completionBlock:(id)completionBlock;
- (void)createPresentationWithPreset:(id)preset guidelines:(id)guidelines mediaFeeder:(id)feeder mediaItemLookupDelegate:(id)delegate progressBlock:(id)block completionBlock:(id)completionBlock;
- (void)dealloc;
- (void)pluginWithIdentifier:(id)identifier progressBlock:(id)block completionBlock:(id)completionBlock;
- (void)prepareCloudServiceIfNeeded;
- (void)refreshInstalledContents;
- (void)refreshInstalledPlugins;
- (void)registerExtensionClassName:(id)name forPluginIdentifier:(id)identifier;
- (void)registerOpusKitClasses;
- (void)setCloudServiceAutomaticUpdates:(BOOL)updates;
- (void)unregisterExtensionClassName:(id)name forPluginIdentifier:(id)identifier;
- (void)waitUntilCloudServicePrepared:(double)prepared;
@end

@implementation OKProducerManager

+ (id)defaultManager
{
  if (defaultManager_onceToken_1 != -1)
  {
    +[OKProducerManager defaultManager];
  }

  return defaultManager_defaultManager_1;
}

OKProducerManager *__35__OKProducerManager_defaultManager__block_invoke()
{
  result = objc_alloc_init(OKProducerManager);
  defaultManager_defaultManager_1 = result;
  return result;
}

- (OKProducerManager)init
{
  v11.receiver = self;
  v11.super_class = OKProducerManager;
  v2 = [(OKProducerManager *)&v11 init];
  if (v2)
  {
    v2->_extentionClassNames = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->_installedPlugins = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->_installedContents = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = dispatch_queue_create("_serialCloudServicePreparationQueue", 0);
    v2->_serialCloudServicePreparationQueue = v3;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v3, global_queue);
    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v2->_cloudServiceOperationQueue = v5;
    [(NSOperationQueue *)v5 setMaxConcurrentOperationCount:4];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__reachabilityChanged_ name:*MEMORY[0x277D62810] object:0];
    v2->_minimumNetworkStatusForDownloads = 2;
    v7 = [MEMORY[0x277D627E0] reachabilityWithHostName:@"www.apple.com"];
    v2->_reachability = v7;
    v2->_reachabilityStatus = [(OFReachability *)v7 currentNetworkStatus];
    *&v2->_cloudServicePreparing = 0;
    v2->_cloudServiceAutomaticUpdates = 0;
    [(OKProducerManager *)v2 performSelector:sel_registerOpusKitClasses withObject:0];
    [(OKProducerManager *)v2 refreshInstalledPlugins];
    [(OKProducerManager *)v2 refreshInstalledContents];
    [(OKProducerManager *)v2 prepareCloudServiceIfNeeded];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__OKProducerManager_init__block_invoke;
    block[3] = &unk_279C8E818;
    block[4] = v2;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v8 = dispatch_queue_create("OKDocumentsManager Files Access Queue", 0);
    v2->_producerAccessQueue = v8;
    dispatch_set_target_queue(v8, global_queue);
  }

  return v2;
}

- (void)dealloc
{
  extentionClassNames = self->_extentionClassNames;
  if (extentionClassNames)
  {

    self->_extentionClassNames = 0;
  }

  cloudServiceOperationQueue = self->_cloudServiceOperationQueue;
  if (cloudServiceOperationQueue)
  {
    [(NSOperationQueue *)cloudServiceOperationQueue cancelAllOperations];

    self->_cloudServiceOperationQueue = 0;
  }

  installedPlugins = self->_installedPlugins;
  if (installedPlugins)
  {

    self->_installedPlugins = 0;
  }

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  reachability = self->_reachability;
  if (reachability)
  {
    [(OFReachability *)reachability stopNotifier];
    v7 = self->_reachability;
    if (v7)
    {

      self->_reachability = 0;
    }
  }

  serialCloudServicePreparationQueue = self->_serialCloudServicePreparationQueue;
  if (serialCloudServicePreparationQueue)
  {
    dispatch_release(serialCloudServicePreparationQueue);
    self->_serialCloudServicePreparationQueue = 0;
  }

  v9.receiver = self;
  v9.super_class = OKProducerManager;
  [(OKProducerManager *)&v9 dealloc];
}

- (void)_performAsynchronousProducerAccessUsingBlock:(id)block
{
  if (block)
  {
    producerAccessQueue = self->_producerAccessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__OKProducerManager__performAsynchronousProducerAccessUsingBlock___block_invoke;
    block[3] = &unk_279C8E670;
    block[4] = self;
    block[5] = block;
    dispatch_async(producerAccessQueue, block);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Must pass a non-nil block to %@", NSStringFromSelector(a2)}];
  }
}

- (void)registerExtensionClassName:(id)name forPluginIdentifier:(id)identifier
{
  extentionClassNames = self->_extentionClassNames;
  objc_sync_enter(extentionClassNames);
  v8 = [(NSMutableDictionary *)self->_extentionClassNames objectForKey:name];
  if (v8)
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:203 andFormat:@"Class name %@ cannot be registered for plugin identifier %@: Already registered with %@", name, identifier, v8];
    }
  }

  else
  {
    if (identifier)
    {
      identifierCopy = identifier;
    }

    else
    {
      identifierCopy = @"OpusKit";
    }

    [(NSMutableDictionary *)self->_extentionClassNames setObject:identifierCopy forKey:name];
  }

  objc_sync_exit(extentionClassNames);
}

- (void)unregisterExtensionClassName:(id)name forPluginIdentifier:(id)identifier
{
  extentionClassNames = self->_extentionClassNames;
  objc_sync_enter(extentionClassNames);
  v8 = [(NSMutableDictionary *)self->_extentionClassNames objectForKey:name];
  v9 = v8;
  if (v8)
  {
    if ([v8 isEqualToString:identifier])
    {
      [(NSMutableDictionary *)self->_extentionClassNames removeObjectForKey:name];
    }

    else if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:226 andFormat:@"Class name %@ cannot be unregistered from %@: Alread registered with %@", name, identifier, v9];
    }
  }

  else if (*MEMORY[0x277D62808] >= 2)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:216 andFormat:@"Class name %@ cannot be unregistered: Class name does not exist", name];
  }

  objc_sync_exit(extentionClassNames);
}

- (Class)registeredClassFromString:(id)string
{
  extentionClassNames = self->_extentionClassNames;
  objc_sync_enter(extentionClassNames);
  v7 = [(NSMutableDictionary *)self->_extentionClassNames objectForKey:string];
  if (v7)
  {
    v3 = NSClassFromString(string);
  }

  else if (*MEMORY[0x277D62808] >= 2)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:242 andFormat:@"Class name %@ is not registered", string];
  }

  objc_sync_exit(extentionClassNames);
  if (v7)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (id)_installedURLsInDirectoryURL:(id)l withExtension:(id)extension
{
  v38 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v7 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v8 = [objc_msgSend(l "path")];
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  v10 = *MEMORY[0x277CBE8E8];
  v11 = *MEMORY[0x277CBE868];
  v29 = v7;
  v12 = [v7 enumeratorAtURL:v9 includingPropertiesForKeys:objc_msgSend(MEMORY[0x277CBEA60] options:"arrayWithObjects:" errorHandler:{*MEMORY[0x277CBE8E8], *MEMORY[0x277CBE868], 0), 5, 0}];
  v13 = MEMORY[0x277D62808];
  if (*MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:264 andFormat:@"Locating bundles with extension %@ in %@", extension, v9];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    v30 = *v34;
    do
    {
      v17 = 0;
      do
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v33 + 1) + 8 * v17);
        v32 = 0;
        [v18 getResourceValue:&v32 forKey:v11 error:0];
        if ([v32 BOOLValue])
        {
          v31 = 0;
          [v18 getResourceValue:&v31 forKey:v10 error:0];
          if ([objc_msgSend(v31 "pathExtension")])
          {
            if (*v13 >= 5)
            {
              v19 = v11;
              v20 = v12;
              v21 = v10;
              extensionCopy = extension;
              v23 = array;
              v24 = v13;
              v25 = MEMORY[0x277D627B8];
              lastPathComponent = [v18 lastPathComponent];
              v26 = v25;
              v13 = v24;
              array = v23;
              extension = extensionCopy;
              v10 = v21;
              v12 = v20;
              v11 = v19;
              v16 = v30;
              [v26 logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:280 andFormat:@"Loaded %@", lastPathComponent];
            }

            [array addObject:v18];
          }
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v15);
  }

  return array;
}

- (id)userLibraryPlugInsDirectoryURL
{
  v2 = MEMORY[0x277CBEBC0];
  1uLL = [objc_msgSend(objc_msgSend(-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory 1uLL];

  return [v2 fileURLWithPath:1uLL];
}

- (id)libraryPlugInsDirectoryURL
{
  v2 = MEMORY[0x277CBEBC0];
  2uLL = [objc_msgSend(objc_msgSend(-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory 2uLL];

  return [v2 fileURLWithPath:2uLL];
}

- (id)_allBundlesURLsWithExtention:(id)extention
{
  array = [MEMORY[0x277CBEB18] array];
  [array addObjectsFromArray:{-[OKProducerManager _installedURLsInDirectoryURL:withExtension:](self, "_installedURLsInDirectoryURL:withExtension:", -[OKProducerManager userLibraryPlugInsDirectoryURL](self, "userLibraryPlugInsDirectoryURL"), extention)}];
  [array addObjectsFromArray:{-[OKProducerManager _installedURLsInDirectoryURL:withExtension:](self, "_installedURLsInDirectoryURL:withExtension:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "mainBundle"), "builtInPlugInsURL"), extention)}];
  v6 = NSClassFromString(&cfstr_Slideshowkit.isa);
  if (v6 && (v7 = [MEMORY[0x277CCA8D8] bundleForClass:v6]) != 0 || (v7 = objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", NSClassFromString(&cfstr_Omslideshow.isa))) != 0)
  {
    [array addObjectsFromArray:{-[OKProducerManager _installedURLsInDirectoryURL:withExtension:](self, "_installedURLsInDirectoryURL:withExtension:", objc_msgSend(v7, "builtInPlugInsURL"), extention)}];
  }

  return array;
}

- (id)_pluginFromURL:(id)l
{
  v4 = [[OKProducerPlugin alloc] initWithURL:l];
  if (v4)
  {

    return v4;
  }

  else
  {
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:360 andFormat:@"Failed to init producer plugin from %@: Incompatible plugin", l];
    }

    return 0;
  }
}

- (id)_contentFromURL:(id)l
{
  v4 = [[OKProducerContent alloc] initWithURL:l];
  if (v4)
  {

    return v4;
  }

  else
  {
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:376 andFormat:@"Failed to init producer content from %@: Incompatible content", l];
    }

    return 0;
  }
}

- (id)addPluginFromURL:(id)l
{
  v17 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v5 = [(OKProducerManager *)self _pluginFromURL:l];
  v6 = v5;
  if (v5)
  {
    if (-[NSMutableDictionary objectForKey:](self->_installedPlugins, "objectForKey:", [v5 identifier]))
    {
      if (*MEMORY[0x277D62808] >= 4)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:403 andFormat:@"Failed to add producer plugin %@: Already available", objc_msgSend(v6, "identifier")];
      }

      v6 = 0;
    }

    else
    {
      -[NSMutableDictionary setObject:forKey:](self->_installedPlugins, "setObject:forKey:", v6, [v6 identifier]);
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      exportedClassNames = [v6 exportedClassNames];
      v8 = [exportedClassNames countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(exportedClassNames);
            }

            -[OKProducerManager registerExtensionClassName:forPluginIdentifier:](self, "registerExtensionClassName:forPluginIdentifier:", *(*(&v12 + 1) + 8 * v10++), [v6 identifier]);
          }

          while (v8 != v10);
          v8 = [exportedClassNames countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }
  }

  objc_sync_exit(self);
  return v6;
}

- (id)addContentFromURL:(id)l
{
  objc_sync_enter(self);
  v5 = [(OKProducerManager *)self _contentFromURL:l];
  v6 = v5;
  if (v5)
  {
    if (-[NSMutableDictionary objectForKey:](self->_installedContents, "objectForKey:", [v5 identifier]))
    {
      if (*MEMORY[0x277D62808] >= 4)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:427 andFormat:@"Failed to add producer content %@: Already available", objc_msgSend(v6, "identifier")];
      }

      v6 = 0;
    }

    else
    {
      -[NSMutableDictionary setObject:forKey:](self->_installedContents, "setObject:forKey:", v6, [v6 identifier]);
    }
  }

  objc_sync_exit(self);
  return v6;
}

- (void)refreshInstalledPlugins
{
  v84 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  allValues = [(NSMutableDictionary *)self->_installedPlugins allValues];
  v5 = [allValues countByEnumeratingWithState:&v73 objects:v83 count:16];
  if (v5)
  {
    v6 = *v74;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v74 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v73 + 1) + 8 * i);
        if ([v8 isLoaded])
        {
          [dictionary setObject:v8 forKey:{objc_msgSend(v8, "identifier")}];
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v73 objects:v83 count:16];
    }

    while (v5);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v46 = dictionary;
  obj = self->_installedPlugins;
  v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (v9)
  {
    v10 = *v70;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v70 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v69 + 1) + 8 * j);
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        exportedClassNames = [v12 exportedClassNames];
        v14 = [exportedClassNames countByEnumeratingWithState:&v65 objects:v81 count:16];
        if (v14)
        {
          v15 = *v66;
          do
          {
            for (k = 0; k != v14; ++k)
            {
              if (*v66 != v15)
              {
                objc_enumerationMutation(exportedClassNames);
              }

              -[OKProducerManager unregisterExtensionClassName:forPluginIdentifier:](self, "unregisterExtensionClassName:forPluginIdentifier:", *(*(&v65 + 1) + 8 * k), [v12 identifier]);
            }

            v14 = [exportedClassNames countByEnumeratingWithState:&v65 objects:v81 count:16];
          }

          while (v14);
        }
      }

      v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v69 objects:v82 count:16];
    }

    while (v9);
  }

  [(NSMutableDictionary *)self->_installedPlugins removeAllObjects];
  [(NSMutableDictionary *)self->_installedPlugins addEntriesFromDictionary:v46];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v17 = [v46 countByEnumeratingWithState:&v61 objects:v80 count:16];
  if (v17)
  {
    v18 = *v62;
    do
    {
      for (m = 0; m != v17; ++m)
      {
        if (*v62 != v18)
        {
          objc_enumerationMutation(v46);
        }

        v20 = *(*(&v61 + 1) + 8 * m);
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        exportedClassNames2 = [v20 exportedClassNames];
        v22 = [exportedClassNames2 countByEnumeratingWithState:&v57 objects:v79 count:16];
        if (v22)
        {
          v23 = *v58;
          do
          {
            for (n = 0; n != v22; ++n)
            {
              if (*v58 != v23)
              {
                objc_enumerationMutation(exportedClassNames2);
              }

              -[OKProducerManager registerExtensionClassName:forPluginIdentifier:](self, "registerExtensionClassName:forPluginIdentifier:", *(*(&v57 + 1) + 8 * n), [v20 identifier]);
            }

            v22 = [exportedClassNames2 countByEnumeratingWithState:&v57 objects:v79 count:16];
          }

          while (v22);
        }
      }

      v17 = [v46 countByEnumeratingWithState:&v61 objects:v80 count:16];
    }

    while (v17);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v25 = [(OKProducerManager *)self _allBundlesURLsWithExtention:@"opplugin"];
  v26 = [v25 countByEnumeratingWithState:&v53 objects:v78 count:16];
  if (v26)
  {
    v27 = *v54;
    obja = v25;
    do
    {
      for (ii = 0; ii != v26; ++ii)
      {
        if (*v54 != v27)
        {
          objc_enumerationMutation(obja);
        }

        v29 = [(OKProducerManager *)self _pluginFromURL:*(*(&v53 + 1) + 8 * ii)];
        v30 = -[NSMutableDictionary objectForKey:](self->_installedPlugins, "objectForKey:", [v29 identifier]);
        installedPlugins = self->_installedPlugins;
        if (v30)
        {
          v32 = -[NSMutableDictionary objectForKey:](installedPlugins, "objectForKey:", [v29 identifier]);
          [v32 version];
          v34 = v33;
          [v29 version];
          if (v34 != v35 && *MEMORY[0x277D62808] >= 4)
          {
            v37 = MEMORY[0x277D627B8];
            identifier = [v29 identifier];
            [v29 version];
            v40 = v39;
            [v32 version];
            [v37 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:492 andFormat:@"Failed to add producer plugin %@ version %.2lf: Another version (%.2lf) already in use", identifier, v40, v41];
          }
        }

        else
        {
          -[NSMutableDictionary setObject:forKey:](installedPlugins, "setObject:forKey:", v29, [v29 identifier]);
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          exportedClassNames3 = [v29 exportedClassNames];
          v43 = [exportedClassNames3 countByEnumeratingWithState:&v49 objects:v77 count:16];
          if (v43)
          {
            v44 = *v50;
            do
            {
              for (jj = 0; jj != v43; ++jj)
              {
                if (*v50 != v44)
                {
                  objc_enumerationMutation(exportedClassNames3);
                }

                -[OKProducerManager registerExtensionClassName:forPluginIdentifier:](self, "registerExtensionClassName:forPluginIdentifier:", *(*(&v49 + 1) + 8 * jj), [v29 identifier]);
              }

              v43 = [exportedClassNames3 countByEnumeratingWithState:&v49 objects:v77 count:16];
            }

            while (v43);
          }
        }
      }

      v26 = [obja countByEnumeratingWithState:&v53 objects:v78 count:16];
    }

    while (v26);
  }

  objc_sync_exit(self);
}

- (void)refreshInstalledContents
{
  v37 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  allValues = [(NSMutableDictionary *)self->_installedContents allValues];
  v5 = [allValues countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v5)
  {
    v6 = *v32;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        if ([v8 isLoaded])
        {
          [dictionary setObject:v8 forKey:{objc_msgSend(v8, "identifier")}];
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_installedContents removeAllObjects];
  [(NSMutableDictionary *)self->_installedContents addEntriesFromDictionary:dictionary];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [(OKProducerManager *)self _allBundlesURLsWithExtention:@"opcontent"];
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v10)
  {
    v11 = MEMORY[0x277D62808];
    v12 = *v28;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(OKProducerManager *)self _contentFromURL:*(*(&v27 + 1) + 8 * j)];
        v15 = -[NSMutableDictionary objectForKey:](self->_installedContents, "objectForKey:", [v14 identifier]);
        installedContents = self->_installedContents;
        if (v15)
        {
          v17 = -[NSMutableDictionary objectForKey:](installedContents, "objectForKey:", [v14 identifier]);
          [v17 version];
          v19 = v18;
          [v14 version];
          if (v19 != v20 && *v11 >= 4)
          {
            v22 = MEMORY[0x277D627B8];
            identifier = [v14 identifier];
            [v14 version];
            v25 = v24;
            [v17 version];
            [v22 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:530 andFormat:@"Failed to add producer content %@ version %.2lf: Another version (%.2lf) already in use", identifier, v25, v26];
          }
        }

        else
        {
          -[NSMutableDictionary setObject:forKey:](installedContents, "setObject:forKey:", v14, [v14 identifier]);
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v10);
  }

  objc_sync_exit(self);
}

- (id)allInstalledPlugins
{
  objc_sync_enter(self);
  allValues = [(NSMutableDictionary *)self->_installedPlugins allValues];
  objc_sync_exit(self);
  return allValues;
}

- (id)allInstalledContents
{
  objc_sync_enter(self);
  allValues = [(NSMutableDictionary *)self->_installedContents allValues];
  objc_sync_exit(self);
  return allValues;
}

- (id)installedPluginsNames
{
  objc_sync_enter(self);
  v3 = [objc_msgSend(-[NSMutableDictionary allValues](self->_installedPlugins "allValues")];
  objc_sync_exit(self);
  return v3;
}

- (BOOL)hasInstalledPluginAndContentWithIdentifier:(id)identifier
{
  v4 = [(OKProducerManager *)self installedPluginWithIdentifier:identifier];
  if (v4)
  {
    v5 = v4;
    if ([v4 contentIdentifier])
    {
      contentIdentifier = [v5 contentIdentifier];

      LOBYTE(v4) = [(OKProducerManager *)self hasInstalledContentWithIdentifier:contentIdentifier];
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (id)installedPluginWithIdentifier:(id)identifier
{
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)self->_installedPlugins objectForKey:identifier];
  objc_sync_exit(self);
  return v5;
}

- (id)installedContentWithIdentifier:(id)identifier
{
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)self->_installedContents objectForKey:identifier];
  objc_sync_exit(self);
  return v5;
}

- (id)installedPluginAtURL:(id)l
{
  v17 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_installedPlugins allValues];
  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([objc_msgSend(v9 "url")])
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:
  objc_sync_exit(self);
  return v10;
}

- (id)installedContentAtURL:(id)l
{
  v17 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_installedContents allValues];
  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([objc_msgSend(v9 "url")])
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:
  objc_sync_exit(self);
  return v10;
}

- (id)installedPluginWithName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_installedPlugins allValues];
  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([objc_msgSend(v9 "localizedName")])
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:
  objc_sync_exit(self);
  return v10;
}

- (id)installedPluginsWithFamily:(unint64_t)family
{
  v17 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_installedPlugins allValues];
  v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 family] == family)
        {
          [array addObject:v10];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(self);
  return array;
}

- (id)loadedPlugins
{
  v15 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_installedPlugins allValues];
  v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isLoaded])
        {
          [array addObject:v8];
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  objc_sync_exit(self);
  return array;
}

- (id)loadedContents
{
  v15 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_installedContents allValues];
  v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isLoaded])
        {
          [array addObject:v8];
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  objc_sync_exit(self);
  return array;
}

- (id)pluginWithLoadedClass:(Class)class
{
  v17 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_installedPlugins allValues];
  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isLoaded] && objc_msgSend(v9, "hasLoadedClass:", class))
        {
          v10 = v9;
          goto LABEL_12;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:
  objc_sync_exit(self);
  return v10;
}

- (void)setCloudServiceAutomaticUpdates:(BOOL)updates
{
  if (self->_cloudServiceAutomaticUpdates != updates)
  {
    self->_cloudServiceAutomaticUpdates = updates;
    [(OKProducerManager *)self prepareCloudServiceIfNeeded];
  }
}

- (void)prepareCloudServiceIfNeeded
{
  serialCloudServicePreparationQueue = self->_serialCloudServicePreparationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__OKProducerManager_prepareCloudServiceIfNeeded__block_invoke;
  block[3] = &unk_279C8E818;
  block[4] = self;
  dispatch_async(serialCloudServicePreparationQueue, block);
}

uint64_t __48__OKProducerManager_prepareCloudServiceIfNeeded__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 57))
  {
    if (*(v1 + 40) < *(v1 + 72))
    {
      return [*(v1 + 64) cancelAllOperations];
    }
  }

  else
  {
    *(v1 + 56) = 1;
    *(*(result + 32) + 56) = 0;
  }

  return result;
}

- (void)waitUntilCloudServicePrepared:(double)prepared
{
  if (!self->_cloudServicePrepared)
  {
    block[5] = v6;
    block[6] = v5;
    block[9] = v3;
    block[10] = v4;
    if (prepared != 0.0 && self->_cloudServicePreparing)
    {
      v9 = dispatch_semaphore_create(0);
      serialCloudServicePreparationQueue = self->_serialCloudServicePreparationQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__OKProducerManager_waitUntilCloudServicePrepared___block_invoke;
      block[3] = &unk_279C8E818;
      block[4] = v9;
      dispatch_async(serialCloudServicePreparationQueue, block);
      v11 = dispatch_time(0, (prepared * 1000000000.0));
      dispatch_semaphore_wait(v9, v11);
      if (v9)
      {
        dispatch_release(v9);
      }
    }
  }
}

- (void)_reachabilityChanged:(id)changed
{
  name = [changed name];
  if ([name isEqualToString:*MEMORY[0x277D62810]])
  {
    v6 = [objc_msgSend(changed "object")];
    reachabilityStatus = self->_reachabilityStatus;
    if (v6 != reachabilityStatus && reachabilityStatus != -1)
    {
      self->_reachabilityStatus = v6;

      [(OKProducerManager *)self prepareCloudServiceIfNeeded];
    }
  }
}

- (id)allPluginsIdentifiers
{
  objc_sync_enter(self);
  v3 = [-[NSMutableDictionary allValues](self->_installedPlugins "allValues")];
  objc_sync_exit(self);
  return v3;
}

- (id)allContentsIdentifiers
{
  objc_sync_enter(self);
  v3 = [-[NSMutableDictionary allValues](self->_installedContents "allValues")];
  objc_sync_exit(self);
  return v3;
}

- (id)localizedNameForPluginIdentifier:(id)identifier
{
  objc_sync_enter(self);
  v5 = [-[OKProducerManager installedPluginWithIdentifier:](self installedPluginWithIdentifier:{identifier), "localizedName"}];
  objc_sync_exit(self);
  return v5;
}

- (id)backgroundColorForPluginIdentifier:(id)identifier
{
  objc_sync_enter(self);
  v5 = [-[OKProducerManager installedPluginWithIdentifier:](self installedPluginWithIdentifier:{identifier), "backgroundColor"}];
  objc_sync_exit(self);
  return v5;
}

- (double)versionForPluginIdentifier:(id)identifier
{
  objc_sync_enter(self);
  [-[OKProducerManager installedPluginWithIdentifier:](self installedPluginWithIdentifier:{identifier), "version"}];
  v6 = v5;
  objc_sync_exit(self);
  return v6;
}

- (double)versionForContentIdentifier:(id)identifier
{
  objc_sync_enter(self);
  [-[OKProducerManager installedContentWithIdentifier:](self installedContentWithIdentifier:{identifier), "version"}];
  v6 = v5;
  objc_sync_exit(self);
  return v6;
}

- (id)audioURLsForPluginIdentifier:(id)identifier
{
  objc_sync_enter(self);
  v5 = [-[OKProducerManager installedPluginWithIdentifier:](self installedPluginWithIdentifier:{identifier), "audioURLs"}];
  objc_sync_exit(self);
  return v5;
}

- (BOOL)hasPluginWithIdentifier:(id)identifier
{
  objc_sync_enter(self);
  LOBYTE(identifier) = [(OKProducerManager *)self hasInstalledPluginWithIdentifier:identifier];
  objc_sync_exit(self);
  return identifier;
}

- (BOOL)hasContentWithIdentifier:(id)identifier
{
  objc_sync_enter(self);
  LOBYTE(identifier) = [(OKProducerManager *)self hasInstalledContentWithIdentifier:identifier];
  objc_sync_exit(self);
  return identifier;
}

- (void)pluginWithIdentifier:(id)identifier progressBlock:(id)block completionBlock:(id)completionBlock
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__OKProducerManager_pluginWithIdentifier_progressBlock_completionBlock___block_invoke;
  v11[3] = &unk_279C8FC88;
  v11[4] = self;
  v11[5] = identifier;
  v9[4] = completionBlock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__OKProducerManager_pluginWithIdentifier_progressBlock_completionBlock___block_invoke_3;
  v10[3] = &unk_279C8E868;
  v10[4] = block;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__OKProducerManager_pluginWithIdentifier_progressBlock_completionBlock___block_invoke_5;
  v9[3] = &unk_279C8FCB0;
  v7 = [MEMORY[0x277D627C0] operationWithBlock:v11 progressBlock:v10 cancelBlock:&__block_literal_global_98 completionHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__OKProducerManager_pluginWithIdentifier_progressBlock_completionBlock___block_invoke_6;
  v8[3] = &unk_279C8E868;
  v8[4] = block;
  [v7 setProgressBlock:v8];
  [(NSOperationQueue *)self->_cloudServiceOperationQueue addOperation:v7];
}

uint64_t __72__OKProducerManager_pluginWithIdentifier_progressBlock_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [*(a1 + 32) installedPluginWithIdentifier:*(a1 + 40)];
  if (!v6)
  {
    return (*(a3 + 16))(a3, 0, [OKError errorForCode:-3]);
  }

  v7 = v6;
  if ([v6 contentIdentifier])
  {
    LODWORD(v8) = 0.5;
    [a2 setProgress:v8];
    v9 = [*(a1 + 32) installedContentWithIdentifier:{objc_msgSend(v7, "contentIdentifier")}];
    if (!v9)
    {
      return (*(a3 + 16))(a3, 0, [OKError errorForCode:-3]);
    }

    v10 = v9;
    [v9 version];
    v12 = v11;
    [v7 minimumContentVersion];
    if (v12 < v13)
    {
      return (*(a3 + 16))(a3, 0, [OKError errorForCode:-3]);
    }

    [v7 setContent:v10];
    [v10 setPlugin:v7];
  }

  LODWORD(v8) = 1.0;
  [a2 setProgress:v8];
  return (*(a3 + 16))(a3, v7, 0);
}

void __72__OKProducerManager_pluginWithIdentifier_progressBlock_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 contentIdentifier];
    v6 = *(a1 + 32);
    if (v4)
    {
      LODWORD(v5) = 0.5;
      [v6 setProgress:v5];
      if ([*(a1 + 32) shouldContinue])
      {
        v23 = 0;
        v24 = &v23;
        v25 = 0x3052000000;
        v26 = __Block_byref_object_copy__4;
        v27 = __Block_byref_object_dispose__4;
        v28 = 0;
        v7 = *(a1 + 40);
        v8 = [a2 contentIdentifier];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __72__OKProducerManager_pluginWithIdentifier_progressBlock_completionBlock___block_invoke_89;
        v22[3] = &unk_279C8F8E0;
        v22[4] = *(a1 + 32);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __72__OKProducerManager_pluginWithIdentifier_progressBlock_completionBlock___block_invoke_2_91;
        v21[3] = &unk_279C8FC38;
        v21[4] = &v23;
        v9 = [v7 _contentWithIdentifier:v8 progressBlock:v22 completionBlock:v21];
        if ([*(a1 + 32) performSubOperationSynchronously:v9 progressBlock:0 timeout:{dispatch_time(0xFFFFFFFFFFFFFFFFLL, 0)}])
        {
          v10 = v24[5];
          if (v10 && ([v10 version], v12 = v11, objc_msgSend(a2, "minimumContentVersion"), v12 >= v13))
          {
            [a2 setContent:v24[5]];
            [v24[5] setPlugin:a2];
            LODWORD(v19) = 1.0;
            [*(a1 + 32) setProgress:v19];
            (*(*(a1 + 48) + 16))();
          }

          else
          {
            (*(*(a1 + 48) + 16))(*(a1 + 48), 0, [OKError errorForCode:-3]);
          }
        }

        else
        {
          (*(*(a1 + 48) + 16))(*(a1 + 48), 0, [v9 error]);
        }

        v20 = v24[5];
        if (v20)
        {

          v24[5] = 0;
        }

        _Block_object_dispose(&v23, 8);
        return;
      }

      v17 = *(a1 + 48);
      v16 = *(v17 + 16);
      v18 = 0;
    }

    else
    {
      LODWORD(v5) = 1.0;
      [v6 setProgress:v5];
      v17 = *(a1 + 48);
      v16 = *(v17 + 16);
      v18 = a2;
    }

    v15 = 0;
  }

  else
  {
    v14 = *(a1 + 48);
    v15 = [OKError errorForCode:-1];
    v16 = *(v14 + 16);
    v17 = v14;
    v18 = 0;
  }

  v16(v17, v18, v15);
}

uint64_t __72__OKProducerManager_pluginWithIdentifier_progressBlock_completionBlock___block_invoke_89(uint64_t a1, float a2)
{
  v2 = a2 * 0.5 + 0.5;
  *&v2 = v2;
  return [*(a1 + 32) setProgress:v2];
}

void *__72__OKProducerManager_pluginWithIdentifier_progressBlock_completionBlock___block_invoke_2_91(void *result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    if (a3)
    {
      v3 = result;
      result = a3;
      *(*(v3[4] + 8) + 40) = result;
    }
  }

  return result;
}

uint64_t __72__OKProducerManager_pluginWithIdentifier_progressBlock_completionBlock___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, a2);
  }

  return result;
}

- (id)_contentWithIdentifier:(id)identifier progressBlock:(id)block completionBlock:(id)completionBlock
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__OKProducerManager__contentWithIdentifier_progressBlock_completionBlock___block_invoke;
  v11[3] = &unk_279C8FCD8;
  v11[4] = self;
  v11[5] = identifier;
  v9[4] = completionBlock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__OKProducerManager__contentWithIdentifier_progressBlock_completionBlock___block_invoke_2;
  v10[3] = &unk_279C8E868;
  v10[4] = block;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__OKProducerManager__contentWithIdentifier_progressBlock_completionBlock___block_invoke_4;
  v9[3] = &unk_279C8FD00;
  v6 = [MEMORY[0x277D627C0] operationWithBlock:v11 progressBlock:v10 cancelBlock:&__block_literal_global_102 completionHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__OKProducerManager__contentWithIdentifier_progressBlock_completionBlock___block_invoke_5;
  v8[3] = &unk_279C8E868;
  v8[4] = block;
  [v6 setProgressBlock:v8];
  return v6;
}

uint64_t __74__OKProducerManager__contentWithIdentifier_progressBlock_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [*(a1 + 32) installedContentWithIdentifier:*(a1 + 40)];
  LODWORD(v6) = 1.0;
  if (!v5)
  {
    *&v6 = 0.0;
  }

  [a2 setProgress:v6];
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = [OKError errorForCode:-3];
  }

  v8 = *(a3 + 16);

  return v8(a3, v5, v7);
}

uint64_t __74__OKProducerManager__contentWithIdentifier_progressBlock_completionBlock___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, a2);
  }

  return result;
}

- (void)contentWithIdentifier:(id)identifier progressBlock:(id)block completionBlock:(id)completionBlock
{
  v6 = [(OKProducerManager *)self _contentWithIdentifier:identifier progressBlock:block completionBlock:completionBlock];
  cloudServiceOperationQueue = self->_cloudServiceOperationQueue;

  [(NSOperationQueue *)cloudServiceOperationQueue addOperation:v6];
}

- (id)installPluginAtURL:(id)l overwrite:(BOOL)overwrite error:(id *)error
{
  overwriteCopy = overwrite;
  objc_sync_enter(self);
  v9 = [[OKProducerPlugin alloc] initWithURL:l];
  v10 = v9;
  if (!v9)
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1498 andFormat:@"Failed to install plugin %@: Invalid plugin", l];
    }

    if (!error)
    {
      goto LABEL_32;
    }

    v15 = 0;
    *error = [OKError errorForCode:-1];
    goto LABEL_33;
  }

  v11 = [(OKProducerManager *)self installedPluginWithIdentifier:[(OKProducerBundle *)v9 identifier]];
  v12 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v17 = 0;
  v13 = [-[OKProducerManager userLibraryPlugInsDirectoryURL](self "userLibraryPlugInsDirectoryURL")];
  if (v11)
  {
    if (overwriteCopy)
    {
      if ([v11 isLoaded])
      {
        if (*MEMORY[0x277D62808] >= 2)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1520 andFormat:@"Failed to install plugin %@: Plugin already loaded %@", l, -[OKProducerBundle identifier](v10, "identifier")];
        }

        if (!error)
        {
          goto LABEL_18;
        }

        v14 = -7;
        goto LABEL_17;
      }

      if ([v12 removeItemAtURL:v13 error:&v17])
      {
        [(NSMutableDictionary *)self->_installedPlugins removeObjectForKey:[(OKProducerBundle *)v10 identifier]];
        goto LABEL_21;
      }

      if (*MEMORY[0x277D62808] >= 2)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1535 andFormat:@"Failed to install plugin %@: Existing plugin cannot be removed (%@)", l, objc_msgSend(v17, "localizedDescription")];
      }
    }

    else if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1552 andFormat:@"Failed to install plugin %@: Plugin already exist %@", l, objc_msgSend(v11, "url")];
    }

    if (!error)
    {
LABEL_18:

LABEL_31:
LABEL_32:
      v15 = 0;
      goto LABEL_33;
    }

    v14 = -1;
LABEL_17:
    *error = [OKError errorForCode:v14];
    goto LABEL_18;
  }

LABEL_21:

  if ([v12 fileExistsAtPath:{objc_msgSend(v13, "relativePath")}])
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1570 andFormat:@"Failed to install plugin %@: Another plugin with the same name already exist", l];
    }

LABEL_29:
    if (error)
    {
      *error = [OKError errorForCode:-1];
    }

    goto LABEL_31;
  }

  if (([v12 moveItemAtURL:l toURL:v13 error:&v17] & 1) == 0)
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1584 andFormat:@"Failed to install plugin %@: %@", l, objc_msgSend(v17, "localizedDescription")];
    }

    goto LABEL_29;
  }

  v15 = [(OKProducerManager *)self addPluginFromURL:v13];
  if (!v15)
  {
    [v12 removeItemAtURL:v13 error:0];
    if (error)
    {
      *error = [OKError errorForCode:-1];
    }

    goto LABEL_31;
  }

LABEL_33:
  objc_sync_exit(self);
  return v15;
}

- (id)installContentAtURL:(id)l overwrite:(BOOL)overwrite error:(id *)error
{
  overwriteCopy = overwrite;
  objc_sync_enter(self);
  v9 = [[OKProducerContent alloc] initWithURL:l];
  v10 = v9;
  if (!v9)
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1627 andFormat:@"Failed to install content %@: Invalid content", l];
    }

    if (!error)
    {
      goto LABEL_32;
    }

    v15 = 0;
    *error = [OKError errorForCode:-1];
    goto LABEL_33;
  }

  v11 = [(OKProducerManager *)self installedContentWithIdentifier:[(OKProducerBundle *)v9 identifier]];
  v12 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v17 = 0;
  v13 = [-[OKProducerManager userLibraryPlugInsDirectoryURL](self "userLibraryPlugInsDirectoryURL")];
  if (v11)
  {
    if (overwriteCopy)
    {
      if ([v11 isLoaded])
      {
        if (*MEMORY[0x277D62808] >= 2)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1649 andFormat:@"Failed to install content %@: Content already loaded %@", l, -[OKProducerBundle identifier](v10, "identifier")];
        }

        if (!error)
        {
          goto LABEL_18;
        }

        v14 = -7;
        goto LABEL_17;
      }

      if ([v12 removeItemAtURL:v13 error:&v17])
      {
        [(NSMutableDictionary *)self->_installedContents removeObjectForKey:[(OKProducerBundle *)v10 identifier]];
        goto LABEL_21;
      }

      if (*MEMORY[0x277D62808] >= 2)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1664 andFormat:@"Failed to install content %@: Existing content cannot be removed (%@)", l, objc_msgSend(v17, "localizedDescription")];
      }
    }

    else if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1681 andFormat:@"Failed to install content %@: Content already exist %@", l, objc_msgSend(v11, "url")];
    }

    if (!error)
    {
LABEL_18:

LABEL_31:
LABEL_32:
      v15 = 0;
      goto LABEL_33;
    }

    v14 = -1;
LABEL_17:
    *error = [OKError errorForCode:v14];
    goto LABEL_18;
  }

LABEL_21:

  if ([v12 fileExistsAtPath:{objc_msgSend(v13, "relativePath")}])
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1699 andFormat:@"Failed to install content %@: Another content with the same name already exist", l];
    }

LABEL_29:
    if (error)
    {
      *error = [OKError errorForCode:-1];
    }

    goto LABEL_31;
  }

  if (([v12 moveItemAtURL:l toURL:v13 error:&v17] & 1) == 0)
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1713 andFormat:@"Failed to install content %@: %@", l, objc_msgSend(v17, "localizedDescription")];
    }

    goto LABEL_29;
  }

  v15 = [(OKProducerManager *)self addContentFromURL:v13];
  if (!v15)
  {
    [v12 removeItemAtURL:v13 error:0];
    if (error)
    {
      *error = [OKError errorForCode:-1];
    }

    goto LABEL_31;
  }

LABEL_33:
  objc_sync_exit(self);
  return v15;
}

- (BOOL)uninstallPluginWithIdentifier:(id)identifier error:(id *)error
{
  objc_sync_enter(self);
  v7 = [(OKProducerManager *)self installedPluginWithIdentifier:identifier];
  v8 = v7;
  if (!v7)
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1755 andFormat:@"Failed to uninstall plugin %@: Cannot be found", identifier];
    }

    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (([objc_msgSend(objc_msgSend(v7 "url")] & 1) == 0)
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1767 andFormat:@"Failed to uninstall plugin %@: Only plugins from %@ can be uninstalled", objc_msgSend(v8, "identifier"), -[OKProducerManager userLibraryPlugInsDirectoryURL](self, "userLibraryPlugInsDirectoryURL")];
    }

    if (!error)
    {
      goto LABEL_17;
    }

LABEL_15:
    v9 = [OKError errorForCode:-1];
    goto LABEL_16;
  }

  if ([v8 isLoaded])
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1779 andFormat:@"Failed to uninstall plugin %@: Plugin already loaded", objc_msgSend(v8, "identifier")];
    }

    if (error)
    {
      v9 = [OKError errorForCode:-7];
LABEL_16:
      v10 = 0;
      *error = v9;
      goto LABEL_25;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  v11 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v15 = 0;
  v10 = [v11 removeItemAtURL:objc_msgSend(v8 error:{"url"), &v15}];
  if (v10)
  {
    -[NSMutableDictionary removeObjectForKey:](self->_installedPlugins, "removeObjectForKey:", [v8 identifier]);
  }

  else
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      v12 = MEMORY[0x277D627B8];
      v13 = [v8 url];
      [v12 logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1794 andFormat:@"Failed to uninstall plugin %@: Existing plugin cannot be removed (%@)", v13, objc_msgSend(v15, "localizedDescription")];
    }

    if (error)
    {
      *error = [OKError errorForCode:-1];
    }
  }

LABEL_25:
  objc_sync_exit(self);
  return v10;
}

- (BOOL)uninstallContentWithIdentifier:(id)identifier error:(id *)error
{
  objc_sync_enter(self);
  v7 = [(OKProducerManager *)self installedContentWithIdentifier:identifier];
  v8 = v7;
  if (!v7)
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1822 andFormat:@"Failed to uninstall content %@: Cannot be found", identifier];
    }

    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (([objc_msgSend(objc_msgSend(v7 "url")] & 1) == 0)
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1834 andFormat:@"Failed to uninstall content %@: Only contents from %@ can be uninstalled", objc_msgSend(v8, "identifier"), -[OKProducerManager userLibraryPlugInsDirectoryURL](self, "userLibraryPlugInsDirectoryURL")];
    }

    if (!error)
    {
      goto LABEL_17;
    }

LABEL_15:
    v9 = [OKError errorForCode:-1];
    goto LABEL_16;
  }

  if ([v8 isLoaded])
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1846 andFormat:@"Failed to uninstall content %@: Content already loaded", objc_msgSend(v8, "identifier")];
    }

    if (error)
    {
      v9 = [OKError errorForCode:-7];
LABEL_16:
      v10 = 0;
      *error = v9;
      goto LABEL_25;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  v11 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v15 = 0;
  v10 = [v11 removeItemAtURL:objc_msgSend(v8 error:{"url"), &v15}];
  if (v10)
  {
    -[NSMutableDictionary removeObjectForKey:](self->_installedContents, "removeObjectForKey:", [v8 identifier]);
  }

  else
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      v12 = MEMORY[0x277D627B8];
      v13 = [v8 url];
      [v12 logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:1861 andFormat:@"Failed to uninstall content %@: Existing content cannot be removed (%@)", v13, objc_msgSend(v15, "localizedDescription")];
    }

    if (error)
    {
      *error = [OKError errorForCode:-1];
    }
  }

LABEL_25:
  objc_sync_exit(self);
  return v10;
}

- (void)createPresentationWithPluginIdentifier:(id)identifier guidelines:(id)guidelines mediaFeeder:(id)feeder mediaItemLookupDelegate:(id)delegate progressBlock:(id)block completionBlock:(id)completionBlock
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __137__OKProducerManager_createPresentationWithPluginIdentifier_guidelines_mediaFeeder_mediaItemLookupDelegate_progressBlock_completionBlock___block_invoke;
  v8[3] = &unk_279C8FDF0;
  v8[9] = completionBlock;
  v8[10] = block;
  v8[4] = delegate;
  v8[5] = feeder;
  v8[6] = self;
  v8[7] = identifier;
  v8[8] = guidelines;
  [(OKProducerManager *)self performAsynchronousProducerAccessUsingBlock:v8];
}

void __137__OKProducerManager_createPresentationWithPluginIdentifier_guidelines_mediaFeeder_mediaItemLookupDelegate_progressBlock_completionBlock___block_invoke(uint64_t a1)
{
  v71 = 0;
  v69 = 0;
  v70[0] = &v69;
  v70[1] = 0x3052000000;
  v70[2] = __Block_byref_object_copy__4;
  v70[3] = __Block_byref_object_dispose__4;
  v70[4] = objc_alloc_init(OKPresentation);
  [*(v70[0] + 40) setLookupDelegate:*(a1 + 32)];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v65 = __137__OKProducerManager_createPresentationWithPluginIdentifier_guidelines_mediaFeeder_mediaItemLookupDelegate_progressBlock_completionBlock___block_invoke_2;
  v66 = &unk_279C8FD28;
  v67 = *(a1 + 72);
  v68 = &v69;
  v2 = *(v70[0] + 40);
  if (!v2)
  {
    v4 = -1;
    goto LABEL_6;
  }

  v3 = *(a1 + 80);
  if (!v3)
  {
LABEL_8:
    [v2 setRootMediaFeeder:*(a1 + 40)];
    v58 = 0;
    v59 = &v58;
    v60 = 0x3052000000;
    v61 = __Block_byref_object_copy__4;
    v62 = __Block_byref_object_dispose__4;
    v63 = 0;
    v5 = dispatch_semaphore_create(0);
    v6 = *(a1 + 40);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __137__OKProducerManager_createPresentationWithPluginIdentifier_guidelines_mediaFeeder_mediaItemLookupDelegate_progressBlock_completionBlock___block_invoke_3;
    v57[3] = &unk_279C8FD50;
    v7 = *(a1 + 80);
    v57[4] = v5;
    v57[5] = v7;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __137__OKProducerManager_createPresentationWithPluginIdentifier_guidelines_mediaFeeder_mediaItemLookupDelegate_progressBlock_completionBlock___block_invoke_4;
    v56[3] = &unk_279C8FD78;
    v56[4] = &v58;
    [v6 reloadDataWithProgressBlock:v57 andCompletionHandler:v56];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    if (v59[5])
    {
      (v65)(v64);
      v8 = v59[5];
      if (v8)
      {

        v59[5] = 0;
      }

      goto LABEL_25;
    }

    v9 = *(a1 + 80);
    if (v9)
    {
      (*(v9 + 16))(v9, &v71, 0.2);
      if (v71)
      {
        v10 = [OKError errorForCode:-4];
        v65(v64, v10);
LABEL_25:
        _Block_object_dispose(&v58, 8);
        goto LABEL_26;
      }

      v11 = *(a1 + 80);
    }

    else
    {
      v11 = 0;
    }

    v54 = 0;
    v55[0] = &v54;
    v55[1] = 0x3052000000;
    v55[2] = __Block_byref_object_copy__4;
    v55[3] = __Block_byref_object_dispose__4;
    v55[4] = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x3052000000;
    v51 = __Block_byref_object_copy__4;
    v52 = __Block_byref_object_dispose__4;
    v53 = 0;
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v46[6] = &v54;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __137__OKProducerManager_createPresentationWithPluginIdentifier_guidelines_mediaFeeder_mediaItemLookupDelegate_progressBlock_completionBlock___block_invoke_5;
    v47[3] = &unk_279C8FDA0;
    v47[4] = v11;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __137__OKProducerManager_createPresentationWithPluginIdentifier_guidelines_mediaFeeder_mediaItemLookupDelegate_progressBlock_completionBlock___block_invoke_6;
    v46[3] = &unk_279C8FDC8;
    v46[4] = v5;
    v46[5] = &v48;
    [v12 pluginWithIdentifier:v13 progressBlock:v47 completionBlock:v46];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    if (v5)
    {
      dispatch_release(v5);
    }

    if (!v49[5])
    {
      v17 = *(v55[0] + 40);
      if (v17)
      {
        v18 = *(a1 + 80);
        if (v18)
        {
          (*(v18 + 16))(*(a1 + 80), &v71, 0.4);
          if (v71)
          {
            v19 = [OKError errorForCode:-4];
            v65(v64, v19);
            v15 = *(v55[0] + 40);
            if (!v15)
            {
              goto LABEL_24;
            }

            goto LABEL_22;
          }

          v17 = *(v55[0] + 40);
        }

        v20 = [v17 producerWithPresentation:*(v70[0] + 40)];
        [*(v70[0] + 40) addGuidelines:*(a1 + 64)];
        if (![*(v70[0] + 40) guidelineLiveAuthoringEnabled] || (objc_msgSend(v20, "supportsLiveAuthoring") & 1) == 0)
        {
          v21 = [[OKPresentationGuideline alloc] initWithType:1];
          v22 = [MEMORY[0x277CBEB18] arrayWithArray:{objc_msgSend(objc_msgSend(*(a1 + 40), "allMediaURLs"), "valueForKey:", @"absoluteString"}];
          [(OKPresentationGuideline *)v21 setKey:@"authoringUserMediaURLStrings"];
          [(OKPresentationGuideline *)v21 setValue:v22];
          [*(v70[0] + 40) addGuideline:v21];
        }

        v23 = *(a1 + 80);
        if (!v23 || ((*(v23 + 16))(v23, &v71, 0.5), v71 != 1))
        {
          v45 = 0;
          v44 = 0;
          [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
          v26 = v25;
          if ([*(v70[0] + 40) guidelineLiveAuthoringEnabled] && (objc_msgSend(v20, "supportsLiveAuthoring") & 1) != 0)
          {
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __137__OKProducerManager_createPresentationWithPluginIdentifier_guidelines_mediaFeeder_mediaItemLookupDelegate_progressBlock_completionBlock___block_invoke_8;
            v42[3] = &unk_279C8FDA0;
            v42[4] = *(a1 + 80);
            v27 = [v20 liveAuthorInitialBootstrap:v42 error:&v44];
            [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
            if (*MEMORY[0x277D62808] >= 5)
            {
              if (v27)
              {
                v29 = @"succeeded";
              }

              else
              {
                v29 = @"failed";
              }

              [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:2089 andFormat:@"[PRODUCER][LIVE INITIAL][%@ generated in %f secondes for %d medias]", v29, v28 - v26, objc_msgSend(objc_msgSend(*(v70[0] + 40), "guidelineAuthoringUserMediaItems"), "count")];
            }

            if ((v27 & 1) == 0)
            {
              if (!v44)
              {
                [OKError errorForCode:-1];
              }

              (v65)(v64);
              goto LABEL_24;
            }

            v45 = 1;
          }

          else
          {
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = __137__OKProducerManager_createPresentationWithPluginIdentifier_guidelines_mediaFeeder_mediaItemLookupDelegate_progressBlock_completionBlock___block_invoke_7;
            v43[3] = &unk_279C8FDA0;
            v43[4] = *(a1 + 80);
            v30 = [v20 author:0 progressBlock:v43 requiresProducer:&v45 error:&v44];
            [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
            if (*MEMORY[0x277D62808] >= 5)
            {
              if (v30)
              {
                v32 = @"succeeded";
              }

              else
              {
                v32 = @"failed";
              }

              [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:2071 andFormat:@"[PRODUCER][AUTHOR][%@ generated in %f secondes for %d medias]", v32, v31 - v26, objc_msgSend(objc_msgSend(*(v70[0] + 40), "rootMediaFeeder"), "numberOfMediaItems")];
            }

            if ((v30 & 1) == 0)
            {
              if (!v44)
              {
                [OKError errorForCode:-1];
              }

              (v65)(v64);
              goto LABEL_24;
            }
          }

          v33 = [*(v55[0] + 40) identifier];
          [objc_msgSend(*(v70[0] + 40) "info")];
          [*(v55[0] + 40) version];
          [objc_msgSend(*(v70[0] + 40) "info")];
          [objc_msgSend(*(v70[0] + 40) "info")];
          v35 = [[OKPresentationGuideline alloc] initWithType:1];
          [(OKPresentationGuideline *)v35 setKey:@"authoringManuallyEdited"];
          -[OKPresentationGuideline setValue:](v35, "setValue:", [MEMORY[0x277CCABB0] numberWithBool:0]);
          [*(v70[0] + 40) addGuideline:v35];

          v36 = *(a1 + 80);
          if (v36 && ((*(v36 + 16))(v36, &v71, 1.0), v71 == 1))
          {
            v37 = [OKError errorForCode:-4];
            v65(v64, v37);
            v38 = *(v55[0] + 40);
            if (!v38)
            {
              goto LABEL_24;
            }

            v39 = v55;
          }

          else
          {
            v40 = *(a1 + 72);
            if (v40)
            {
              (*(v40 + 16))(v40, *(v70[0] + 40), 0);
            }

            v41 = *(v70[0] + 40);
            if (!v41)
            {
              goto LABEL_24;
            }

            v39 = v70;
          }

          v16 = *v39;
          goto LABEL_23;
        }

        v24 = [OKError errorForCode:-4];
        v65(v64, v24);
        v15 = *(v55[0] + 40);
        if (!v15)
        {
          goto LABEL_24;
        }

LABEL_22:

        v16 = v55[0];
LABEL_23:
        *(v16 + 40) = 0;
LABEL_24:
        _Block_object_dispose(&v48, 8);
        _Block_object_dispose(&v54, 8);
        goto LABEL_25;
      }

      [OKError errorForCode:-1];
    }

    (v65)(v64);
    v14 = v49[5];
    if (v14)
    {

      v49[5] = 0;
    }

    v15 = *(v55[0] + 40);
    if (!v15)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  (*(v3 + 16))(*(a1 + 80), &v71, 0.1);
  if ((v71 & 1) == 0)
  {
    v2 = *(v70[0] + 40);
    goto LABEL_8;
  }

  v4 = -4;
LABEL_6:
  v65(v64, [OKError errorForCode:v4]);
LABEL_26:
  _Block_object_dispose(&v69, 8);
}

void __137__OKProducerManager_createPresentationWithPluginIdentifier_guidelines_mediaFeeder_mediaItemLookupDelegate_progressBlock_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, a2);
  }

  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {

    *(*(*(a1 + 40) + 8) + 40) = 0;
  }
}

intptr_t __137__OKProducerManager_createPresentationWithPluginIdentifier_guidelines_mediaFeeder_mediaItemLookupDelegate_progressBlock_completionBlock___block_invoke_3(uint64_t a1, float a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))((a2 * 0.1) + 0.1);
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

id __137__OKProducerManager_createPresentationWithPluginIdentifier_guidelines_mediaFeeder_mediaItemLookupDelegate_progressBlock_completionBlock___block_invoke_4(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

uint64_t __137__OKProducerManager_createPresentationWithPluginIdentifier_guidelines_mediaFeeder_mediaItemLookupDelegate_progressBlock_completionBlock___block_invoke_5(uint64_t a1, float a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))((a2 * 0.2) + 0.2);
  }

  return result;
}

intptr_t __137__OKProducerManager_createPresentationWithPluginIdentifier_guidelines_mediaFeeder_mediaItemLookupDelegate_progressBlock_completionBlock___block_invoke_6(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

uint64_t __137__OKProducerManager_createPresentationWithPluginIdentifier_guidelines_mediaFeeder_mediaItemLookupDelegate_progressBlock_completionBlock___block_invoke_7(uint64_t a1, float a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))((a2 * 0.5) + 0.5);
  }

  return result;
}

uint64_t __137__OKProducerManager_createPresentationWithPluginIdentifier_guidelines_mediaFeeder_mediaItemLookupDelegate_progressBlock_completionBlock___block_invoke_8(uint64_t a1, float a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))((a2 * 0.5) + 0.5);
  }

  return result;
}

- (void)createPresentationWithPreset:(id)preset guidelines:(id)guidelines mediaFeeder:(id)feeder mediaItemLookupDelegate:(id)delegate progressBlock:(id)block completionBlock:(id)completionBlock
{
  array = [MEMORY[0x277CBEB18] array];
  if ([preset guidelines])
  {
    [array addObjectsFromArray:{objc_msgSend(preset, "guidelines")}];
  }

  if (guidelines)
  {
    [array addObjectsFromArray:guidelines];
  }

  pluginIdentifier = [preset pluginIdentifier];

  [(OKProducerManager *)self createPresentationWithPluginIdentifier:pluginIdentifier guidelines:array mediaFeeder:feeder mediaItemLookupDelegate:delegate progressBlock:block completionBlock:completionBlock];
}

- (void)createDocumentAtDirectoryURL:(id)l withPluginIdentifier:(id)identifier guidelines:(id)guidelines mediaURLs:(id)ls mediaItemLookupDelegate:(id)delegate flattenMedia:(BOOL)media flattenProducer:(BOOL)producer prepareCaches:(BOOL)self0 format:(unint64_t)self1 keepOpen:(BOOL)self2 documentClass:(Class)self3 progressBlock:(id)self4 completionBlock:(id)self5
{
  v20 = +[OKDocumentsManager defaultManager];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __219__OKProducerManager_createDocumentAtDirectoryURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke;
  v23[3] = &unk_279C8FE18;
  v23[4] = self;
  v23[5] = identifier;
  v23[6] = l;
  v23[7] = guidelines;
  v23[8] = ls;
  v23[9] = delegate;
  mediaCopy = media;
  producerCopy = producer;
  cachesCopy = caches;
  openCopy = open;
  v23[10] = class;
  v23[11] = completionBlock;
  v23[12] = block;
  v23[13] = format;
  [v20 performAsynchronousFileAccessUsingBlock:v23];
}

uint64_t __219__OKProducerManager_createDocumentAtDirectoryURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v7 = 0;
  v3 = [a2 uniqueFileURLForFileName:objc_msgSend(objc_msgSend(*(a1 + 32) inDirectoryURL:"localizedNameForPluginIdentifier:" error:{*(a1 + 40)), "stringByAppendingPathExtension:", @"opus", *(a1 + 48), &v7}];
  if (v7)
  {
    result = *(a1 + 88);
    if (result)
    {
      return (*(result + 16))(result, 0);
    }
  }

  else
  {
    LOBYTE(v6) = *(a1 + 115);
    LOWORD(v5) = *(a1 + 113);
    return [*(a1 + 32) createDocumentAtFileURL:v3 withPluginIdentifier:*(a1 + 40) guidelines:*(a1 + 56) mediaURLs:*(a1 + 64) mediaItemLookupDelegate:*(a1 + 72) flattenMedia:*(a1 + 112) flattenProducer:v5 prepareCaches:*(a1 + 104) format:v6 keepOpen:*(a1 + 80) documentClass:*(a1 + 96) progressBlock:*(a1 + 88) completionBlock:?];
  }

  return result;
}

- (void)_closeAndDeleteDocument:(id)document fileURL:(id)l completionBlock:(id)block
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__OKProducerManager__closeAndDeleteDocument_fileURL_completionBlock___block_invoke;
  v6[3] = &unk_279C8FE40;
  v6[4] = l;
  v6[5] = block;
  if (document)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __69__OKProducerManager__closeAndDeleteDocument_fileURL_completionBlock___block_invoke_2;
    v5[3] = &unk_279C8E770;
    v5[4] = v6;
    [document closeWithCompletionHandler:v5];
  }

  else
  {
    __69__OKProducerManager__closeAndDeleteDocument_fileURL_completionBlock___block_invoke(v6);
  }
}

uint64_t __69__OKProducerManager__closeAndDeleteDocument_fileURL_completionBlock___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA00]);
  if ([v2 fileExistsAtPath:{objc_msgSend(*(a1 + 32), "relativePath")}])
  {
    [v2 removeItemAtURL:*(a1 + 32) error:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_saveDocument:(id)document toFileURL:(id)l completionBlock:(id)block
{
  v8 = +[OKDocumentsManager defaultManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__OKProducerManager__saveDocument_toFileURL_completionBlock___block_invoke;
  v9[3] = &unk_279C8FE68;
  v9[4] = document;
  v9[5] = l;
  v9[6] = block;
  [v8 performAsynchronousFileAccessUsingBlock:v9];
}

uint64_t __61__OKProducerManager__saveDocument_toFileURL_completionBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__OKProducerManager__saveDocument_toFileURL_completionBlock___block_invoke_2;
  v4[3] = &unk_279C8E770;
  v4[4] = a1[6];
  return [v2 saveToURL:v1 forSaveOperation:0 completionHandler:v4];
}

uint64_t __61__OKProducerManager__saveDocument_toFileURL_completionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_saveDocument:(id)document completionBlock:(id)block
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__OKProducerManager__saveDocument_completionBlock___block_invoke;
  v4[3] = &unk_279C8FE40;
  v4[4] = document;
  v4[5] = block;
  [document performAsynchronousFileAccessUsingBlock:v4];
}

uint64_t __51__OKProducerManager__saveDocument_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 fileURL];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__OKProducerManager__saveDocument_completionBlock___block_invoke_2;
  v5[3] = &unk_279C8E770;
  v5[4] = *(a1 + 40);
  return [v2 saveToURL:v3 forSaveOperation:1 completionHandler:v5];
}

uint64_t __51__OKProducerManager__saveDocument_completionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_openDocument:(id)document completionBlock:(id)block
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__OKProducerManager__openDocument_completionBlock___block_invoke;
  v4[3] = &unk_279C8E770;
  v4[4] = block;
  [document openWithCompletionHandler:v4];
}

uint64_t __51__OKProducerManager__openDocument_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_closeDocument:(id)document completionBlock:(id)block
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__OKProducerManager__closeDocument_completionBlock___block_invoke;
  v4[3] = &unk_279C8E770;
  v4[4] = block;
  [document closeWithCompletionHandler:v4];
}

uint64_t __52__OKProducerManager__closeDocument_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)createDocumentAtFileURL:(id)l withPluginIdentifier:(id)identifier guidelines:(id)guidelines mediaURLs:(id)ls mediaItemLookupDelegate:(id)delegate flattenMedia:(BOOL)media flattenProducer:(BOOL)producer prepareCaches:(BOOL)self0 format:(unint64_t)self1 keepOpen:(BOOL)self2 documentClass:(Class)self3 progressBlock:(id)self4 completionBlock:(id)self5
{
  classCopy = class;
  if (!class)
  {
    classCopy = objc_opt_class();
  }

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3052000000;
  v28[3] = __Block_byref_object_copy__4;
  v28[4] = __Block_byref_object_dispose__4;
  v28[5] = 0;
  v23 = +[OKDocumentsManager defaultManager];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke;
  v24[3] = &unk_279C8FFF8;
  v24[4] = self;
  v24[5] = l;
  v24[6] = classCopy;
  v24[7] = delegate;
  v24[13] = v28;
  v24[14] = format;
  v24[11] = completionBlock;
  v24[12] = block;
  mediaCopy = media;
  v24[8] = identifier;
  v24[9] = ls;
  v24[10] = guidelines;
  producerCopy = producer;
  openCopy = open;
  [v23 performAsynchronousFileAccessUsingBlock:v24];
  _Block_object_dispose(v28, 8);
}

void __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v23 = __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_2;
  v24 = &unk_279C8FEB8;
  v3 = *(a1 + 104);
  v25 = *(a1 + 32);
  v26 = *(a1 + 88);
  v27 = v3;
  if ([*(a1 + 48) isSubclassOfClass:objc_opt_class()])
  {
    if ([v2 fileExistsAtPath:{objc_msgSend(*(a1 + 40), "relativePath")}])
    {
      v4 = *(a1 + 88);
      if (v4)
      {
        v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-1 localizedDescription:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"Document file already exists", @"Document file already exists", @"Localizable"}];
LABEL_7:
        (*(v4 + 16))(v4, 0, v5);
      }
    }

    else
    {
      *(*(*(a1 + 104) + 8) + 40) = [objc_alloc(*(a1 + 48)) initWithFileURL:*(a1 + 40)];
      v6 = *(*(*(a1 + 104) + 8) + 40);
      if (v6)
      {
        [objc_msgSend(v6 "presentation")];
        [objc_msgSend(objc_msgSend(*(*(*(a1 + 104) + 8) + 40) "presentation")];
        v7 = *(a1 + 104);
        v8 = *(*(v7 + 8) + 40);
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_4;
        v11[3] = &unk_279C8FFD0;
        v16 = v30;
        v17 = v28;
        v11[4] = v9;
        v18 = v7;
        v19 = *(a1 + 120);
        v12 = *(a1 + 64);
        v13 = *(a1 + 80);
        v14 = v22;
        v20 = *(a1 + 121);
        v21 = *(a1 + 122);
        v15 = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
        [v9 _saveDocument:v8 toFileURL:v10 completionBlock:v11];
      }

      else
      {
        v23(v22, [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-1 userInfo:0]);
      }
    }
  }

  else
  {
    v4 = *(a1 + 88);
    if (v4)
    {
      v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-1 localizedDescription:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"Document file class not supported", @"Document file class not supported", @"Localizable"}];
      goto LABEL_7;
    }
  }

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
}

uint64_t __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_2(void *a1, uint64_t a2)
{
  v2 = a1[7];
  v3 = *(*(v2 + 8) + 40);
  v5 = a1[4];
  v4 = a1[5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_3;
  v8[3] = &unk_279C8FE90;
  v6 = a1[6];
  v8[4] = a2;
  v8[5] = v6;
  v8[6] = v2;
  return [v5 _closeAndDeleteDocument:v3 fileURL:v4 completionBlock:v8];
}

void __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_3(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, 0, a1[4]);
  }

  v3 = *(*(a1[6] + 8) + 40);
  if (v3)
  {

    *(*(a1[6] + 8) + 40) = 0;
  }
}

uint64_t __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 64);
    v6 = MEMORY[0x277CCA9B8];
    v7 = -1;
    goto LABEL_6;
  }

  *(*(*(a1 + 88) + 8) + 24) = 1036831949;
  v3 = *(a1 + 72);
  if (!v3)
  {
    v11 = 0;
    v4 = *(a1 + 96);
LABEL_11:
    v12 = *(a1 + 104);
    v13 = *(*(v12 + 8) + 40);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_5;
    v16[3] = &unk_279C8FFA8;
    v19 = *(a1 + 64);
    v20 = v11;
    v25 = *(a1 + 112);
    v14 = *(a1 + 80);
    v23 = *(a1 + 88);
    v24 = v4;
    v15 = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = v15;
    v26 = *(a1 + 113);
    v27 = *(a1 + 114);
    v21 = v14;
    v22 = v12;
    return [v17 _openDocument:v13 completionBlock:v16];
  }

  (*(v3 + 16))(v3, *(*(a1 + 96) + 8) + 24, *(*(*(a1 + 88) + 8) + 24));
  v4 = *(a1 + 96);
  if ((*(*(v4 + 8) + 24) & 1) == 0)
  {
    v11 = *(a1 + 72);
    goto LABEL_11;
  }

  v5 = *(a1 + 64);
  v6 = MEMORY[0x277CCA9B8];
  v7 = -4;
LABEL_6:
  v8 = [v6 errorWithDomain:@"OKErrorDomain" code:v7 userInfo:0];
  v9 = *(v5 + 16);

  return v9(v5, v8);
}

uint64_t __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_5(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_6;
    v20[3] = &unk_279C8FDA0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_7;
    v11[3] = &unk_279C8FF80;
    v4 = *(a1 + 64);
    v18 = *(a1 + 112);
    v5 = *(a1 + 88);
    v17 = *(a1 + 104);
    v12 = *(a1 + 48);
    v19 = *(a1 + 113);
    v13 = v3;
    v14 = v4;
    v6 = *(a1 + 72);
    v20[4] = *(a1 + 72);
    v16 = v5;
    v15 = v6;
    return [v3 pluginWithIdentifier:v2 progressBlock:v20 completionBlock:v11];
  }

  else
  {
    v8 = *(a1 + 64);
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-1 userInfo:0];
    v10 = *(v8 + 16);

    return v10(v8, v9);
  }
}

uint64_t __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_6(uint64_t a1, float a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))((a2 * 0.2) + 0.1);
  }

  return result;
}

__n128 __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_8;
    block[3] = &unk_279C8FF58;
    v18 = *(a1 + 104);
    v8 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
    v17 = *(a1 + 88);
    v12 = *(a1 + 32);
    v9 = *(a1 + 48);
    v13 = a3;
    v14 = v9;
    v19 = *(a1 + 106);
    v10 = *(a1 + 72);
    v15 = v8;
    v16 = v10;
    dispatch_async(global_queue, block);
  }

  return result;
}

uint64_t __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_8(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  if (*(a1 + 112) == 1 && [*(a1 + 32) count])
  {
    v49 = 0;
    v2 = *(*(*(a1 + 88) + 8) + 40);
    v3 = *(a1 + 32);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_9;
    v48[3] = &unk_279C8FEE0;
    v4 = *(a1 + 96);
    v48[4] = *(a1 + 64);
    v48[5] = v4;
    v5 = [v2 importResourceURLs:v3 opaque:1 force:1 progressBlock:v48 error:&v49];
    if (!v5)
    {
      v9 = v49;
LABEL_35:
      v33 = *(a1 + 72);
      if (!v9)
      {
        [OKError errorForCode:-1];
      }

      return (*(v33 + 16))(v33);
    }

    v6 = v5;
    v7 = [v5 count];
    v8 = [*(a1 + 32) count];
    v9 = v49;
    if (v7 != v8 || v49 != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v6 = [objc_msgSend(*(*(*(a1 + 88) + 8) + 40) "presentation")];
  }

  *(*(*(a1 + 96) + 8) + 24) = 1056964608;
  v11 = *(a1 + 64);
  if (v11)
  {
    (*(v11 + 16))(v11, *(*(a1 + 104) + 8) + 24, *(*(*(a1 + 96) + 8) + 24));
    if (*(*(*(a1 + 104) + 8) + 24) == 1)
    {
      return (*(*(a1 + 72) + 16))(*(a1 + 72), [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-4 userInfo:0]);
    }
  }

  v12 = MEMORY[0x277D62808];
  if (*MEMORY[0x277D62808] >= 2)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:2452 andFormat:@"TO BE FIXED: prepareCaches crashes on iOS due to UIImage autorelease..."];
  }

  *(*(*(a1 + 96) + 8) + 24) = 1060320051;
  v13 = *(a1 + 64);
  if (v13)
  {
    (*(v13 + 16))(v13, *(*(a1 + 104) + 8) + 24, *(*(*(a1 + 96) + 8) + 24));
    if (*(*(*(a1 + 104) + 8) + 24) == 1)
    {
      return (*(*(a1 + 72) + 16))(*(a1 + 72), [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-4 userInfo:0]);
    }
  }

  [objc_msgSend(*(*(*(a1 + 88) + 8) + 40) "presentation")];
  v14 = [[OKPresentationGuideline alloc] initWithType:1];
  v15 = [MEMORY[0x277CBEB18] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v16 = [v6 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v45;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(v6);
        }

        [v15 addObject:{objc_msgSend(objc_msgSend(*(*(&v44 + 1) + 8 * i), "uniqueURL"), "absoluteString")}];
      }

      v17 = [v6 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v17);
  }

  [(OKPresentationGuideline *)v14 setKey:@"authoringUserMediaURLStrings"];
  [(OKPresentationGuideline *)v14 setValue:v15];
  [objc_msgSend(*(*(*(a1 + 88) + 8) + 40) "presentation")];

  v20 = [*(a1 + 48) producerWithPresentation:{objc_msgSend(*(*(*(a1 + 88) + 8) + 40), "presentation")}];
  v43 = 0;
  v49 = 0;
  [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
  v22 = v21;
  v23 = *(a1 + 113);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_10;
  v42[3] = &unk_279C8FDA0;
  v42[4] = *(a1 + 64);
  v24 = [v20 author:v23 progressBlock:v42 requiresProducer:&v43 error:&v49];
  [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
  if (*v12 >= 5)
  {
    v26 = v25 - v22;
    if (v24)
    {
      v27 = @"succeeded";
    }

    else
    {
      v27 = @"failed";
    }

    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:2519 andFormat:@"[PRODUCER][AUTHOR][%@ generated in %f secondes for %d medias]", v27, *&v26, objc_msgSend(objc_msgSend(objc_msgSend(*(*(*(a1 + 88) + 8) + 40), "presentation"), "guidelineAuthoringUserMediaItems"), "count")];
  }

  if ((v24 & 1) == 0)
  {
    v33 = *(a1 + 72);
    if (!v49)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-1 userInfo:0];
    }

    return (*(v33 + 16))(v33);
  }

  [objc_msgSend(objc_msgSend(*(*(*(a1 + 88) + 8) + 40) "presentation")];
  [*(a1 + 48) version];
  [objc_msgSend(objc_msgSend(*(*(*(a1 + 88) + 8) + 40) "presentation")];
  [objc_msgSend(objc_msgSend(*(*(*(a1 + 88) + 8) + 40) "presentation")];
  v29 = [[OKPresentationGuideline alloc] initWithType:1];
  [(OKPresentationGuideline *)v29 setKey:@"authoringManuallyEdited"];
  -[OKPresentationGuideline setValue:](v29, "setValue:", [MEMORY[0x277CCABB0] numberWithBool:0]);
  [objc_msgSend(*(*(*(a1 + 88) + 8) + 40) "presentation")];

  *(*(*(a1 + 96) + 8) + 24) = 1063675494;
  v30 = *(a1 + 64);
  if (v30)
  {
    (*(v30 + 16))(v30, *(*(a1 + 104) + 8) + 24, *(*(*(a1 + 96) + 8) + 24));
    v31 = *(a1 + 104);
    if (*(*(v31 + 8) + 24))
    {
      return (*(*(a1 + 72) + 16))(*(a1 + 72), [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-4 userInfo:0]);
    }

    v34 = *(a1 + 64);
  }

  else
  {
    v34 = 0;
    v31 = *(a1 + 104);
  }

  v35 = *(a1 + 56);
  v36 = *(a1 + 88);
  v37 = *(*(v36 + 8) + 40);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_11;
  v40[3] = &unk_279C8FF30;
  v40[8] = *(a1 + 96);
  v40[9] = v31;
  v41 = *(a1 + 114);
  v38 = *(a1 + 72);
  v39 = *(a1 + 80);
  v40[4] = v35;
  v40[5] = v38;
  v40[10] = v36;
  v40[6] = v34;
  v40[7] = v39;
  return [v35 _saveDocument:v37 completionBlock:v40];
}

uint64_t __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_9(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))((*(*(*(a1 + 40) + 8) + 24) * 0.2) + 0.3);
  }

  return result;
}

void __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_11(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = MEMORY[0x277CCA9B8];
    v6 = -1;
    goto LABEL_6;
  }

  *(*(*(a1 + 64) + 8) + 24) = 1065353216;
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, *(*(a1 + 72) + 8) + 24, *(*(*(a1 + 64) + 8) + 24));
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v4 = *(a1 + 40);
      v5 = MEMORY[0x277CCA9B8];
      v6 = -4;
LABEL_6:
      v7 = [v5 errorWithDomain:@"OKErrorDomain" code:v6 userInfo:0];
      v8 = *(v4 + 16);

      v8(v4, v7);
      return;
    }
  }

  if (*(a1 + 88))
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      (*(v9 + 16))(v9, *(*(*(a1 + 80) + 8) + 40), 0);
    }

    v10 = *(*(*(a1 + 80) + 8) + 40);
    if (v10)
    {

      *(*(*(a1 + 80) + 8) + 40) = 0;
    }
  }

  else
  {
    v11 = *(a1 + 80);
    v12 = *(*(v11 + 8) + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_12;
    v15[3] = &unk_279C8FF08;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15[4] = *(a1 + 56);
    v15[5] = v14;
    v15[6] = v11;
    [v13 _closeDocument:v12 completionBlock:v15];
  }
}

void __214__OKProducerManager_createDocumentAtFileURL_withPluginIdentifier_guidelines_mediaURLs_mediaItemLookupDelegate_flattenMedia_flattenProducer_prepareCaches_format_keepOpen_documentClass_progressBlock_completionBlock___block_invoke_12(void *a1, int a2)
{
  if (a2)
  {
    v3 = a1[4];
    if (v3)
    {
      (*(v3 + 16))(v3, *(*(a1[6] + 8) + 40), 0);
    }

    v4 = *(*(a1[6] + 8) + 40);
    if (v4)
    {

      *(*(a1[6] + 8) + 40) = 0;
    }
  }

  else
  {
    v5 = a1[5];
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OKErrorDomain" code:-4 userInfo:0];
    v7 = *(v5 + 16);

    v7(v5, v6);
  }
}

- (void)authorDocument:(id)document withPluginIdentifier:(id)identifier guidelines:(id)guidelines flattenMedia:(BOOL)media flattenProducer:(BOOL)producer progressBlock:(id)block completionBlock:(id)completionBlock
{
  global_queue = dispatch_get_global_queue(0, 0);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __127__OKProducerManager_authorDocument_withPluginIdentifier_guidelines_flattenMedia_flattenProducer_progressBlock_completionBlock___block_invoke;
  v16[3] = &unk_279C90048;
  v16[4] = document;
  v16[5] = self;
  v16[6] = guidelines;
  v16[7] = identifier;
  v16[8] = block;
  producerCopy = producer;
  dispatch_async(global_queue, v16);
  if (completionBlock)
  {
    (*(completionBlock + 2))(completionBlock, document, 0);
  }
}

void __127__OKProducerManager_authorDocument_withPluginIdentifier_guidelines_flattenMedia_flattenProducer_progressBlock_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) documentState];
  v3 = dispatch_semaphore_create(0);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __127__OKProducerManager_authorDocument_withPluginIdentifier_guidelines_flattenMedia_flattenProducer_progressBlock_completionBlock___block_invoke_2;
  v34[3] = &unk_279C8FA38;
  v34[4] = v3;
  [v4 _openDocument:v5 completionBlock:v34];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v6 = [MEMORY[0x277CBEB18] arrayWithArray:{objc_msgSend(objc_msgSend(*(a1 + 32), "presentation"), "allGuidelines")}];
  [v6 addObjectsFromArray:*(a1 + 48)];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__4;
  v32 = __Block_byref_object_dispose__4;
  v33 = 0;
  v7 = *(a1 + 40);
  v26[5] = &v28;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __127__OKProducerManager_authorDocument_withPluginIdentifier_guidelines_flattenMedia_flattenProducer_progressBlock_completionBlock___block_invoke_3;
  v27[3] = &unk_279C8FDA0;
  v8 = *(a1 + 56);
  v27[4] = *(a1 + 64);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __127__OKProducerManager_authorDocument_withPluginIdentifier_guidelines_flattenMedia_flattenProducer_progressBlock_completionBlock___block_invoke_4;
  v26[3] = &unk_279C90020;
  v26[4] = v3;
  [v7 pluginWithIdentifier:v8 progressBlock:v27 completionBlock:v26];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  [objc_msgSend(*(a1 + 32) "presentation")];
  [objc_msgSend(*(a1 + 32) "presentation")];
  v9 = [v29[5] producerWithPresentation:{objc_msgSend(*(a1 + 32), "presentation")}];
  v25 = 0;
  v24 = 0;
  [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
  v11 = v10;
  v12 = *(a1 + 72);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __127__OKProducerManager_authorDocument_withPluginIdentifier_guidelines_flattenMedia_flattenProducer_progressBlock_completionBlock___block_invoke_5;
  v23[3] = &unk_279C8FDA0;
  v23[4] = *(a1 + 64);
  v13 = [v9 author:v12 progressBlock:v23 requiresProducer:&v25 error:&v24];
  [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
  if (*MEMORY[0x277D62808] >= 5)
  {
    if (v13)
    {
      v15 = @"succeeded";
    }

    else
    {
      v15 = @"failed";
    }

    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerManager.m" line:2686 andFormat:@"[PRODUCER][AUTHOR][%@ generated in %f secondes for %d medias]", v15, v14 - v11, objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32), "presentation"), "guidelineAuthoringUserMediaItems"), "count")];
  }

  if (v13)
  {
    [objc_msgSend(objc_msgSend(*(a1 + 32) "presentation")];
    [v29[5] version];
    [objc_msgSend(objc_msgSend(*(a1 + 32) "presentation")];
    [objc_msgSend(objc_msgSend(*(a1 + 32) "presentation")];

    [objc_msgSend(*(a1 + 32) "presentation")];
    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __127__OKProducerManager_authorDocument_withPluginIdentifier_guidelines_flattenMedia_flattenProducer_progressBlock_completionBlock___block_invoke_6;
    v22[3] = &unk_279C8FA38;
    v22[4] = v3;
    [v17 _saveDocument:v18 completionBlock:v22];
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    if (v2 == 1)
    {
      v20 = *(a1 + 32);
      v19 = *(a1 + 40);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __127__OKProducerManager_authorDocument_withPluginIdentifier_guidelines_flattenMedia_flattenProducer_progressBlock_completionBlock___block_invoke_7;
      v21[3] = &unk_279C8FA38;
      v21[4] = v3;
      [v19 _closeDocument:v20 completionBlock:v21];
      dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (v3)
    {
      dispatch_release(v3);
    }
  }

  _Block_object_dispose(&v28, 8);
}

uint64_t __127__OKProducerManager_authorDocument_withPluginIdentifier_guidelines_flattenMedia_flattenProducer_progressBlock_completionBlock___block_invoke_3(uint64_t a1, float a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))((a2 * 0.2) + 0.1);
  }

  return result;
}

intptr_t __127__OKProducerManager_authorDocument_withPluginIdentifier_guidelines_flattenMedia_flattenProducer_progressBlock_completionBlock___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2 && a3)
  {
    *(*(*(a1 + 40) + 8) + 40) = a3;
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (void)registerOpusKitClasses
{
  v3 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v3) forPluginIdentifier:0];
  v4 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v4) forPluginIdentifier:0];
  v5 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v5) forPluginIdentifier:0];
  v6 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v6) forPluginIdentifier:0];
  v7 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v7) forPluginIdentifier:0];
  v8 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v8) forPluginIdentifier:0];
  v9 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v9) forPluginIdentifier:0];
  v10 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v10) forPluginIdentifier:0];
  v11 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v11) forPluginIdentifier:0];
  v12 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v12) forPluginIdentifier:0];
  v13 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v13) forPluginIdentifier:0];
  v14 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v14) forPluginIdentifier:0];
  v15 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v15) forPluginIdentifier:0];
  v16 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v16) forPluginIdentifier:0];
  v17 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v17) forPluginIdentifier:0];
  v18 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v18) forPluginIdentifier:0];
  v19 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v19) forPluginIdentifier:0];
  v20 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v20) forPluginIdentifier:0];
  v21 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v21) forPluginIdentifier:0];
  v22 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v22) forPluginIdentifier:0];
  v23 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v23) forPluginIdentifier:0];
  v24 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v24) forPluginIdentifier:0];
  v25 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v25) forPluginIdentifier:0];
  v26 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v26) forPluginIdentifier:0];
  v27 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v27) forPluginIdentifier:0];
  v28 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v28) forPluginIdentifier:0];
  v29 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v29) forPluginIdentifier:0];
  v30 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v30) forPluginIdentifier:0];
  v31 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v31) forPluginIdentifier:0];
  v32 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v32) forPluginIdentifier:0];
  v33 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v33) forPluginIdentifier:0];
  v34 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v34) forPluginIdentifier:0];
  v35 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v35) forPluginIdentifier:0];
  v36 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v36) forPluginIdentifier:0];
  v37 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v37) forPluginIdentifier:0];
  v38 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v38) forPluginIdentifier:0];
  v39 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v39) forPluginIdentifier:0];
  v40 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v40) forPluginIdentifier:0];
  v41 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v41) forPluginIdentifier:0];
  v42 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v42) forPluginIdentifier:0];
  v43 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v43) forPluginIdentifier:0];
  v44 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v44) forPluginIdentifier:0];
  v45 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v45) forPluginIdentifier:0];
  v46 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v46) forPluginIdentifier:0];
  v47 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v47) forPluginIdentifier:0];
  v48 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v48) forPluginIdentifier:0];
  v49 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v49) forPluginIdentifier:0];
  v50 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v50) forPluginIdentifier:0];
  v51 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v51) forPluginIdentifier:0];
  v52 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v52) forPluginIdentifier:0];
  v53 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v53) forPluginIdentifier:0];
  v54 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v54) forPluginIdentifier:0];
  v55 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v55) forPluginIdentifier:0];
  v56 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v56) forPluginIdentifier:0];
  v57 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v57) forPluginIdentifier:0];
  v58 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v58) forPluginIdentifier:0];
  v59 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v59) forPluginIdentifier:0];
  v60 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v60) forPluginIdentifier:0];
  v61 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v61) forPluginIdentifier:0];
  v62 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v62) forPluginIdentifier:0];
  v63 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v63) forPluginIdentifier:0];
  v64 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v64) forPluginIdentifier:0];
  v65 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v65) forPluginIdentifier:0];
  v66 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v66) forPluginIdentifier:0];
  v67 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v67) forPluginIdentifier:0];
  v68 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v68) forPluginIdentifier:0];
  v69 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v69) forPluginIdentifier:0];
  v70 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v70) forPluginIdentifier:0];
  v71 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v71) forPluginIdentifier:0];
  v72 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v72) forPluginIdentifier:0];
  v73 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v73) forPluginIdentifier:0];
  v74 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v74) forPluginIdentifier:0];
  v75 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v75) forPluginIdentifier:0];
  v76 = objc_opt_class();
  [(OKProducerManager *)self registerExtensionClassName:NSStringFromClass(v76) forPluginIdentifier:0];
  v77 = objc_opt_class();
  v78 = NSStringFromClass(v77);

  [(OKProducerManager *)self registerExtensionClassName:v78 forPluginIdentifier:0];
}

@end