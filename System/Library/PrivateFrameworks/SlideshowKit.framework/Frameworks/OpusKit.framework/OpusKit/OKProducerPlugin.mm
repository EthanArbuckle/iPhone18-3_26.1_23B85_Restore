@interface OKProducerPlugin
- (BOOL)_load;
- (BOOL)hasExportedClass:(Class)a3;
- (BOOL)hasLoadedClass:(Class)a3;
- (BOOL)isLoaded;
- (BOOL)loadRetain;
- (OKProducerPlugin)init;
- (OKProducerPlugin)initWithURL:(id)a3;
- (double)minimumContentVersion;
- (id)URLForResource:(id)a3 withExtension:(id)a4;
- (id)audioURLs;
- (id)backgroundColor;
- (id)contentIdentifier;
- (id)exportedClassNames;
- (id)localizedName;
- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5;
- (id)producerWithPresentation:(id)a3;
- (id)supportedResolutions;
- (unint64_t)family;
- (void)_bundleDidLoad:(id)a3;
- (void)dealloc;
- (void)setupJavascriptContext:(id)a3;
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

- (OKProducerPlugin)initWithURL:(id)a3
{
  if ([objc_msgSend(a3 "pathExtension")])
  {
    v7.receiver = self;
    v7.super_class = OKProducerPlugin;
    return [(OKProducerBundle *)&v7 initWithURL:a3 bundleType:2];
  }

  else
  {
    v6 = self;
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
  v2 = [(OKProducerBundle *)self infoDictionary];

  return [v2 objectForKey:@"OKProducerName"];
}

- (id)supportedResolutions
{
  v2 = [(OKProducerBundle *)self infoDictionary];

  return [v2 objectForKey:@"OKProducerResolutions"];
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
  v2 = [(OKProducerBundle *)self infoDictionary];

  return [v2 objectForKey:@"OKProducerExportedClasses"];
}

- (id)contentIdentifier
{
  v2 = [(OKProducerBundle *)self infoDictionary];

  return [v2 objectForKey:@"OKProducerContentIdentifier"];
}

- (double)minimumContentVersion
{
  v2 = [-[OKProducerBundle infoDictionary](self "infoDictionary")];

  [v2 doubleValue];
  return result;
}

- (id)audioURLs
{
  v2 = [(OKProducerBundle *)self infoDictionary];

  return [v2 objectForKey:@"OKProducerAudioURLs"];
}

- (id)URLForResource:(id)a3 withExtension:(id)a4
{
  content = self->_content;
  if (!content || (result = [(OKProducerBundle *)content URLForResource:a3 withExtension:a4]) == 0)
  {
    v9.receiver = self;
    v9.super_class = OKProducerPlugin;
    return [(OKProducerBundle *)&v9 URLForResource:a3 withExtension:a4];
  }

  return result;
}

- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5
{
  content = self->_content;
  if (!content || (result = [(OKProducerBundle *)content localizedStringForKey:a3 value:a4 table:a5]) == 0)
  {
    v11.receiver = self;
    v11.super_class = OKProducerPlugin;
    return [(OKProducerBundle *)&v11 localizedStringForKey:a3 value:a4 table:a5];
  }

  return result;
}

- (id)producerWithPresentation:(id)a3
{
  [(OKProducerPlugin *)self loadRetain];
  [a3 registerProducerPlugin:self];
  v5 = [objc_alloc(self->_producerClass) initWithPresentation:a3 andPlugin:self];
  [(OKProducerPlugin *)self unloadRelease];

  return v5;
}

- (void)setupJavascriptContext:(id)a3
{
  [(OKProducerPlugin *)self loadRetain];
  [(objc_class *)self->_producerClass setupJavascriptContext:a3];

  [(OKProducerPlugin *)self unloadRelease];
}

- (void)_bundleDidLoad:(id)a3
{
  v5 = [a3 name];
  if ([v5 isEqualToString:*MEMORY[0x277CCA030]])
  {
    objc_sync_enter(self);
    loadedClasses = self->_loadedClasses;
    if (loadedClasses)
    {

      self->_loadedClasses = 0;
    }

    v7 = objc_alloc(MEMORY[0x277CBEA60]);
    v8 = [a3 userInfo];
    self->_loadedClasses = [v7 initWithArray:{objc_msgSend(v8, "objectForKey:", *MEMORY[0x277CCA438])}];

    objc_sync_exit(self);
  }
}

- (BOOL)hasLoadedClass:(Class)a3
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

        if ([*(*(&v11 + 1) + 8 * i) isEqualToString:NSStringFromClass(a3)])
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

- (BOOL)hasExportedClass:(Class)a3
{
  v16 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(OKProducerPlugin *)self exportedClassNames];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) isEqualToString:NSStringFromClass(a3)])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

    v6 = self;
    v13 = 0;
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = [(OKProducerBundle *)self bundle];
    [v7 addObserver:self selector:sel__bundleDidLoad_ name:*MEMORY[0x277CCA030] object:v8];
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
      v11 = [(OKProducerBundle *)self identifier];
      [v10 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducerPlugin.m" line:281 andFormat:@"Failed to load plugin %@: %@", v11, objc_msgSend(v13, "localizedDescription")];
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
    v4 = 1;
  }

  else
  {
    v4 = [(OKProducerPlugin *)self _load];
  }

  objc_sync_exit(self);
  return v4;
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