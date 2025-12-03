@interface OKProducerPlugin
- (BOOL)_load;
- (BOOL)hasExportedClass:(Class)class;
- (BOOL)hasLoadedClass:(Class)class;
- (BOOL)isLoaded;
- (BOOL)loadRetain;
- (OKProducerPlugin)init;
- (OKProducerPlugin)initWithURL:(id)l;
- (double)minimumContentVersion;
- (id)URLForResource:(id)resource withExtension:(id)extension;
- (id)audioURLs;
- (id)backgroundColor;
- (id)contentIdentifier;
- (id)exportedClassNames;
- (id)localizedName;
- (id)localizedStringForKey:(id)key value:(id)value table:(id)table;
- (id)producerWithPresentation:(id)presentation;
- (id)supportedResolutions;
- (unint64_t)family;
- (void)_bundleDidLoad:(id)load;
- (void)dealloc;
- (void)setupJavascriptContext:(id)context;
- (void)unloadRelease;
@end

@implementation OKProducerPlugin

- (OKProducerPlugin)init
{
  v3.receiver = self;
  v3.super_class = OKProducerPlugin;
  result = [(OKProducerBundle *)&v3 init];
  if (result)
  {
    result->_producerClass = 0;
    result->_loadCounter = 0;
    result->_content = 0;
  }

  return result;
}

- (OKProducerPlugin)initWithURL:(id)l
{
  if ([objc_msgSend(l "pathExtension")])
  {
    v7.receiver = self;
    v7.super_class = OKProducerPlugin;
    return [(OKProducerBundle *)&v7 initWithURL:l bundleType:2];
  }

  else
  {
    selfCopy = self;
    return 0;
  }
}

- (void)dealloc
{
  if (self->_producerClass)
  {
    self->_producerClass = 0;
  }

  loadedClasses = self->_loadedClasses;
  if (loadedClasses)
  {

    self->_loadedClasses = 0;
  }

  content = self->_content;
  if (content)
  {

    self->_content = 0;
  }

  v5.receiver = self;
  v5.super_class = OKProducerPlugin;
  [(OKProducerBundle *)&v5 dealloc];
}

- (unint64_t)family
{
  v2 = [-[OKProducerBundle infoDictionary](self "infoDictionary")];

  return [v2 unsignedIntegerValue];
}

- (id)localizedName
{
  infoDictionary = [(OKProducerBundle *)self infoDictionary];

  return [infoDictionary objectForKey:@"OKProducerName"];
}

- (id)supportedResolutions
{
  infoDictionary = [(OKProducerBundle *)self infoDictionary];

  return [infoDictionary objectForKey:@"OKProducerResolutions"];
}

- (id)backgroundColor
{
  result = [-[OKProducerBundle infoDictionary](self "infoDictionary")];
  if (result)
  {

    return UIColorFromString();
  }

  return result;
}

- (id)exportedClassNames
{
  infoDictionary = [(OKProducerBundle *)self infoDictionary];

  return [infoDictionary objectForKey:@"OKProducerExportedClasses"];
}

- (id)contentIdentifier
{
  infoDictionary = [(OKProducerBundle *)self infoDictionary];

  return [infoDictionary objectForKey:@"OKProducerContentIdentifier"];
}

- (double)minimumContentVersion
{
  v2 = [-[OKProducerBundle infoDictionary](self "infoDictionary")];

  [v2 doubleValue];
  return result;
}

- (id)audioURLs
{
  infoDictionary = [(OKProducerBundle *)self infoDictionary];

  return [infoDictionary objectForKey:@"OKProducerAudioURLs"];
}

- (id)URLForResource:(id)resource withExtension:(id)extension
{
  content = self->_content;
  if (!content || (result = [(OKProducerBundle *)content URLForResource:resource withExtension:extension]) == 0)
  {
    v9.receiver = self;
    v9.super_class = OKProducerPlugin;
    return [(OKProducerBundle *)&v9 URLForResource:resource withExtension:extension];
  }

  return result;
}

- (id)localizedStringForKey:(id)key value:(id)value table:(id)table
{
  content = self->_content;
  if (!content || (result = [(OKProducerBundle *)content localizedStringForKey:key value:value table:table]) == 0)
  {
    v11.receiver = self;
    v11.super_class = OKProducerPlugin;
    return [(OKProducerBundle *)&v11 localizedStringForKey:key value:value table:table];
  }

  return result;
}

- (id)producerWithPresentation:(id)presentation
{
  [(OKProducerPlugin *)self loadRetain];
  [presentation registerProducerPlugin:self];
  v5 = [objc_alloc(self->_producerClass) initWithPresentation:presentation andPlugin:self];
  [(OKProducerPlugin *)self unloadRelease];

  return v5;
}

- (void)setupJavascriptContext:(id)context
{
  [(OKProducerPlugin *)self loadRetain];
  [(objc_class *)self->_producerClass setupJavascriptContext:context];

  [(OKProducerPlugin *)self unloadRelease];
}

- (void)_bundleDidLoad:(id)load
{
  name = [load name];
  if ([name isEqualToString:*MEMORY[0x277CCA030]])
  {
    objc_sync_enter(self);
    loadedClasses = self->_loadedClasses;
    if (loadedClasses)
    {

      self->_loadedClasses = 0;
    }

    v7 = objc_alloc(MEMORY[0x277CBEA60]);
    userInfo = [load userInfo];
    self->_loadedClasses = [v7 initWithArray:{objc_msgSend(userInfo, "objectForKey:", *MEMORY[0x277CCA438])}];

    objc_sync_exit(self);
  }
}

- (BOOL)hasLoadedClass:(Class)class
{
  v16 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  loadedClasses = self->_loadedClasses;
  v6 = [(NSArray *)loadedClasses countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(loadedClasses);
        }

        if ([*(*(&v11 + 1) + 8 * i) isEqualToString:NSStringFromClass(class)])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)loadedClasses countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:
  objc_sync_exit(self);
  return v9;
}

- (BOOL)hasExportedClass:(Class)class
{
  v16 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  exportedClassNames = [(OKProducerPlugin *)self exportedClassNames];
  v6 = [exportedClassNames countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(exportedClassNames);
        }

        if ([*(*(&v11 + 1) + 8 * i) isEqualToString:NSStringFromClass(class)])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [exportedClassNames countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:
  objc_sync_exit(self);
  return v9;
}

- (BOOL)_load
{
  objc_sync_enter(self);
  if (([-[OKProducerBundle bundle](self "bundle")] & 1) == 0)
  {
    v5 = MEMORY[0x277D62808];
    if (*MEMORY[0x277D62808] >= 5)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerPlugin.m" line:251 andFormat:@"Loading plugin %@...", -[OKProducerBundle identifier](self, "identifier")];
    }

    selfCopy = self;
    v13 = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    bundle = [(OKProducerBundle *)self bundle];
    [defaultCenter addObserver:self selector:sel__bundleDidLoad_ name:*MEMORY[0x277CCA030] object:bundle];
    if ([-[OKProducerBundle bundle](self "bundle")])
    {
      v9 = [-[OKProducerBundle bundle](self "bundle")];
      self->_producerClass = v9;
      if (([(objc_class *)v9 isSubclassOfClass:objc_opt_class()]& 1) != 0)
      {
        v3 = 1;
        goto LABEL_3;
      }

      self->_producerClass = 0;
      if (*v5 >= 4)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerPlugin.m" line:271 andFormat:@"Failed to load plugin %@: Principal class is not compatible", -[OKProducerBundle identifier](self, "identifier")];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __25__OKProducerPlugin__load__block_invoke;
      block[3] = &unk_279C8E818;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else if (*v5 >= 4)
    {
      v10 = MEMORY[0x277D627B8];
      identifier = [(OKProducerBundle *)self identifier];
      [v10 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerPlugin.m" line:281 andFormat:@"Failed to load plugin %@: %@", identifier, objc_msgSend(v13, "localizedDescription")];
    }
  }

  v3 = 0;
LABEL_3:
  objc_sync_exit(self);
  return v3;
}

- (BOOL)loadRetain
{
  objc_sync_enter(self);
  loadCounter = self->_loadCounter;
  self->_loadCounter = loadCounter + 1;
  if (loadCounter)
  {
    _load = 1;
  }

  else
  {
    _load = [(OKProducerPlugin *)self _load];
  }

  objc_sync_exit(self);
  return _load;
}

- (void)unloadRelease
{
  objc_sync_enter(self);
  loadCounter = self->_loadCounter;
  self->_loadCounter = loadCounter - 1;
  if (loadCounter == 1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__OKProducerPlugin_unloadRelease__block_invoke;
    block[3] = &unk_279C8E818;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else if (loadCounter <= 0 && *MEMORY[0x277D62808] >= 2)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerPlugin.m" line:349 andFormat:@"Plugin %@ has been over unloaded", -[OKProducerBundle identifier](self, "identifier")];
  }

  objc_sync_exit(self);
}

- (BOOL)isLoaded
{
  objc_sync_enter(self);
  if (self->_loadCounter <= 0)
  {
    v3 = [-[OKProducerBundle bundle](self "bundle")];
  }

  else
  {
    v3 = 1;
  }

  objc_sync_exit(self);
  return v3;
}

@end