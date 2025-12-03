@interface PVContentRegistry
+ (id)sharedInstance;
+ (void)initSharedContentRegistryWithHostDelegate:(id)delegate;
+ (void)willTerminate:(id)terminate;
- (BOOL)hasStyleTransfer:(id)transfer;
- (BOOL)isContentIDRegistered:(id)registered;
- (BOOL)isSelfie:(id)selfie;
- (BOOL)isSingleWordTranscription:(id)transcription;
- (BOOL)isSketch:(id)sketch;
- (BOOL)isTranscription:(id)transcription;
- (BOOL)registerContentBundle:(id)bundle;
- (BOOL)registerContentClass:(Class)class forID:(id)d type:(id)type withProperties:(id)properties;
- (BOOL)registerContentDictionary:(id)dictionary withBaseDir:(id)dir;
- (BOOL)registerContentFile:(id)file forID:(id)d properties:(id)properties;
- (BOOL)unregisterContentID:(id)d;
- (PVContentRegistry)init;
- (id)bundleForID:(id)d;
- (id)contentGroupForID:(id)d;
- (id)contentPathForID:(id)d;
- (id)contentPropertiesForID:(id)d;
- (id)createContentInstance:(id)instance;
- (id)listAllContentGroups;
- (id)listAllContentIDs;
- (id)listIDsForContentGroup:(id)group;
- (id)listIDsForContentGroups:(id)groups;
- (id)listIDsForContentType:(id)type;
- (id)listIDsForContentTypes:(id)types;
- (id)lookupPropertyForID:(id)d property:(id)property;
- (void)dealloc;
- (void)initContentRegistryWithHostDelegate:(id)delegate;
- (void)registerBuiltIns;
@end

@implementation PVContentRegistry

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __35__PVContentRegistry_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[PVContentRegistry sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[PVContentRegistry sharedInstance]::onceToken, block);
  }

  v2 = _sContentRegistry;

  return v2;
}

void __35__PVContentRegistry_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _sContentRegistry;
  _sContentRegistry = v1;
}

+ (void)initSharedContentRegistryWithHostDelegate:(id)delegate
{
  delegateCopy = delegate;
  v3 = +[PVContentRegistry sharedInstance];
  v4 = v3;
  if (v3)
  {
    [v3 initContentRegistryWithHostDelegate:delegateCopy];
  }
}

+ (void)willTerminate:(id)terminate
{
  +[PVEffect handleApplicationWillTerminate];

  +[PVMotionEffect handleApplicationWillTerminate];
}

- (PVContentRegistry)init
{
  v8.receiver = self;
  v8.super_class = PVContentRegistry;
  v2 = [(PVContentRegistry *)&v8 init];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  contentDictionary = v2->_contentDictionary;
  v2->_contentDictionary = v3;

  v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  dictionaryLock = v2->_dictionaryLock;
  v2->_dictionaryLock = v5;

  return v2;
}

- (void)dealloc
{
  contentDictionary = self->_contentDictionary;
  self->_contentDictionary = 0;

  v4.receiver = self;
  v4.super_class = PVContentRegistry;
  [(PVContentRegistry *)&v4 dealloc];
}

- (void)initContentRegistryWithHostDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = *"";
  v10[2] = __57__PVContentRegistry_initContentRegistryWithHostDelegate___block_invoke;
  v10[3] = &unk_279AA4E00;
  v11 = delegateCopy;
  selfCopy = self;
  v5 = delegateCopy;
  v6 = MEMORY[0x2666EAFC0](v10);
  v6[2](v6, v7, v8, v9);
}

void __57__PVContentRegistry_initContentRegistryWithHostDelegate___block_invoke(uint64_t a1)
{
  v4 = +[PVHostApplicationDelegateHandler sharedInstance];
  [v4 setHostApplicationDelegate:*(a1 + 32)];
  [*(a1 + 40) registerBuiltIns];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = objc_opt_self();
  [v2 addObserver:v3 selector:sel_willTerminate_ name:*MEMORY[0x277D76770] object:0];
}

- (void)registerBuiltIns
{
  +[PVMotionEffect initializeMotion];
  +[PVHeliumEffect registerEffects];

  +[PVCompositeDelegateEffect registerEffects];
}

- (BOOL)registerContentBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = bundleCopy;
  if (bundleCopy)
  {
    infoDictionary = [bundleCopy infoDictionary];
    if (!infoDictionary)
    {
      bundlePath = [v5 bundlePath];
      NSLog(&cfstr_FailedToLoadBu.isa, bundlePath);
    }

    v8 = [infoDictionary mutableCopy];
    bundleIdentifier = [v5 bundleIdentifier];
    [v8 setObject:bundleIdentifier forKey:@"_contentBundleID"];

    resourcePath = [v5 resourcePath];
    v11 = [(PVContentRegistry *)self registerContentDictionary:v8 withBaseDir:resourcePath];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)registerContentDictionary:(id)dictionary withBaseDir:(id)dir
{
  v32 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dirCopy = dir;
  v23 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v6 = [dictionaryCopy valueForKey:@"ProVideoContent"];
    v7 = [dictionaryCopy valueForKey:@"_contentBundleID"];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v8)
    {
      v22 = v6;
      v9 = 1;
      v10 = *v28;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = [v12 valueForKey:@"contentID"];
          v14 = [v12 valueForKey:@"contentURL"];
          if ([v14 hasPrefix:@"..."])
          {
            if (!dirCopy)
            {
              NSLog(&cfstr_FailedToRegist_0.isa);

              v9 = 0;
              goto LABEL_25;
            }

            v15 = [v14 substringFromIndex:3];
            v16 = [dirCopy stringByAppendingString:v15];

            v14 = v16;
          }

          v17 = [v12 valueForKey:@"contentProperties"];
          v18 = v17;
          if (v7)
          {
            v19 = [v17 mutableCopy];
            [v19 setObject:v7 forKey:@"_contentBundleID"];
          }

          else
          {
            v19 = v17;
          }

          if (v13)
          {
            v20 = v14 == 0;
          }

          else
          {
            v20 = 1;
          }

          if (v20)
          {
            NSLog(&cfstr_FailedToRegist_1.isa, v13, v22, v23);
          }

          else
          {
            v9 = [(PVContentRegistry *)self registerContentFile:v14 forID:v13 properties:v19];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 1;
    }

LABEL_25:
  }

  else
  {
    NSLog(&cfstr_FailedToRegist.isa);
    v9 = 0;
  }

  return v9;
}

- (BOOL)registerContentFile:(id)file forID:(id)d properties:(id)properties
{
  fileCopy = file;
  dCopy = d;
  propertiesCopy = properties;
  if (HGLogger::getLevel("PVSignPost", v11) >= 1)
  {
    kdebug_trace();
  }

  [(NSLock *)self->_dictionaryLock lock];
  v12 = [(NSMutableDictionary *)self->_contentDictionary objectForKey:dCopy];

  if (v12)
  {
    NSLog(&cfstr_AttemptedToReg.isa, dCopy);
    goto LABEL_15;
  }

  if ([fileCopy hasSuffix:@".moef"])
  {
    v13 = kFFEffectType_VideoFilter;
  }

  else if ([fileCopy hasSuffix:@".motr"])
  {
    v13 = kFFEffectType_VideoTransition;
  }

  else
  {
    if (![fileCopy hasSuffix:@".moti"])
    {
      v14 = 0;
      goto LABEL_12;
    }

    v13 = kFFEffectType_VideoTitle;
  }

  v14 = *v13;
LABEL_12:
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v15 setObject:fileCopy forKeyedSubscript:@"contentPath"];
  [v15 setObject:objc_opt_class() forKeyedSubscript:@"contentClass"];
  [v15 setObject:v14 forKeyedSubscript:@"contentType"];
  if (propertiesCopy)
  {
    [v15 setObject:propertiesCopy forKeyedSubscript:@"contentProperties"];
  }

  [(NSMutableDictionary *)self->_contentDictionary setObject:v15 forKey:dCopy];

LABEL_15:
  [(NSLock *)self->_dictionaryLock unlock];
  if (HGLogger::getLevel("PVSignPost", v16) >= 1)
  {
    kdebug_trace();
  }

  return v12 == 0;
}

- (BOOL)registerContentClass:(Class)class forID:(id)d type:(id)type withProperties:(id)properties
{
  v19[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  typeCopy = type;
  propertiesCopy = properties;
  if (HGLogger::getLevel("PVSignPost", v13) >= 1)
  {
    kdebug_trace();
  }

  [(NSLock *)self->_dictionaryLock lock];
  v14 = [(NSMutableDictionary *)self->_contentDictionary objectForKey:dCopy];

  if (v14)
  {
    NSLog(&cfstr_AttemptedToReg_0.isa, dCopy);
  }

  else
  {
    v18[0] = @"contentPath";
    v18[1] = @"contentClass";
    v19[0] = &stru_2872E16E0;
    v19[1] = class;
    v18[2] = @"contentProperties";
    v18[3] = @"contentType";
    v19[2] = propertiesCopy;
    v19[3] = typeCopy;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
    [(NSMutableDictionary *)self->_contentDictionary setObject:v15 forKey:dCopy];
  }

  [(NSLock *)self->_dictionaryLock unlock];
  if (HGLogger::getLevel("PVSignPost", v16) >= 1)
  {
    kdebug_trace();
  }

  return v14 == 0;
}

- (BOOL)unregisterContentID:(id)d
{
  dCopy = d;
  [(NSLock *)self->_dictionaryLock lock];
  v5 = [(NSMutableDictionary *)self->_contentDictionary objectForKey:dCopy];

  if (v5)
  {
    [(NSMutableDictionary *)self->_contentDictionary removeObjectForKey:dCopy];
  }

  else
  {
    NSLog(&cfstr_AttemptedToUnr.isa, dCopy);
  }

  [(NSLock *)self->_dictionaryLock unlock];

  return v5 != 0;
}

- (id)listAllContentGroups
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(NSLock *)self->_dictionaryLock lock];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_contentDictionary;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [(NSMutableDictionary *)self->_contentDictionary objectForKey:*(*(&v14 + 1) + 8 * i)];
        v8 = v7;
        if (!v7)
        {
          v10 = 0;
LABEL_12:
          v11 = 0;
          goto LABEL_13;
        }

        v9 = [v7 valueForKey:@"contentProperties"];
        v10 = v9;
        if (!v9)
        {
          goto LABEL_12;
        }

        v11 = [v9 objectForKey:@"contentGroup"];
        if (v11 && ([v13 containsObject:v11] & 1) == 0)
        {
          [v13 addObject:v11];
        }

LABEL_13:
      }

      v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  [(NSLock *)self->_dictionaryLock unlock];

  return v13;
}

- (id)listAllContentIDs
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(NSLock *)self->_dictionaryLock lock];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_contentDictionary;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{*(*(&v9 + 1) + 8 * i), v9}];
      }

      v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSLock *)self->_dictionaryLock unlock];

  return v3;
}

- (id)listIDsForContentGroup:(id)group
{
  v22 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(NSLock *)self->_dictionaryLock lock];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_contentDictionary;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [(NSMutableDictionary *)self->_contentDictionary objectForKey:v7];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 valueForKey:@"contentProperties"];
          v11 = v10;
          if (v10)
          {
            v12 = [v10 objectForKey:@"contentGroup"];
            if (v12 && [groupCopy isEqualToString:v12])
            {
              [v14 addObject:v7];
            }
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
          v11 = 0;
        }
      }

      v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  [(NSLock *)self->_dictionaryLock unlock];

  return v14;
}

- (BOOL)isContentIDRegistered:(id)registered
{
  registeredCopy = registered;
  [(NSLock *)self->_dictionaryLock lock];
  v5 = [(NSMutableDictionary *)self->_contentDictionary objectForKey:registeredCopy];

  [(NSLock *)self->_dictionaryLock unlock];
  return v5 != 0;
}

- (id)listIDsForContentGroups:(id)groups
{
  v18 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(NSLock *)self->_dictionaryLock lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_contentDictionary;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(PVContentRegistry *)self lookupPropertyForID:v10 property:@"contentGroup", v13];
        if ([groupsCopy containsObject:v11])
        {
          [v5 addObject:v10];
        }
      }

      v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(NSLock *)self->_dictionaryLock unlock];

  return v5;
}

- (id)listIDsForContentType:(id)type
{
  v20 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(NSLock *)self->_dictionaryLock lock];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_contentDictionary;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_contentDictionary objectForKey:v8];
        v10 = [v9 valueForKey:@"contentType"];
        v11 = [typeCopy isEqualToString:v10];

        if (v11)
        {
          [v13 addObject:v8];
        }
      }

      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  [(NSLock *)self->_dictionaryLock unlock];

  return v13;
}

- (id)listIDsForContentTypes:(id)types
{
  v20 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(NSLock *)self->_dictionaryLock lock];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_contentDictionary;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_contentDictionary objectForKey:v9];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 valueForKey:@"contentType"];
          if ([typesCopy containsObject:v12])
          {
            [v14 addObject:v9];
          }
        }
      }

      v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [(NSLock *)self->_dictionaryLock unlock];

  return v14;
}

- (id)contentGroupForID:(id)d
{
  v3 = [(PVContentRegistry *)self lookupPropertyForID:d property:@"contentGroup"];

  return v3;
}

- (id)contentPathForID:(id)d
{
  dCopy = d;
  [(NSLock *)self->_dictionaryLock lock];
  v5 = [(NSMutableDictionary *)self->_contentDictionary objectForKeyedSubscript:dCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 valueForKey:@"contentPath"];
  }

  else
  {
    v7 = 0;
  }

  [(NSLock *)self->_dictionaryLock unlock];

  return v7;
}

- (id)contentPropertiesForID:(id)d
{
  dCopy = d;
  [(NSLock *)self->_dictionaryLock lock];
  v5 = [(NSMutableDictionary *)self->_contentDictionary objectForKey:dCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 valueForKey:@"contentProperties"];
  }

  else
  {
    v7 = 0;
  }

  [(NSLock *)self->_dictionaryLock unlock];

  return v7;
}

- (id)lookupPropertyForID:(id)d property:(id)property
{
  propertyCopy = property;
  v7 = [(PVContentRegistry *)self contentPropertiesForID:d];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:propertyCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)bundleForID:(id)d
{
  v3 = [(PVContentRegistry *)self contentPropertiesForID:d];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"_contentBundleID"];
    if (v5)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createContentInstance:(id)instance
{
  instanceCopy = instance;
  [(NSLock *)self->_dictionaryLock lock];
  v5 = [(NSMutableDictionary *)self->_contentDictionary objectForKeyedSubscript:instanceCopy];
  [(NSLock *)self->_dictionaryLock unlock];
  if (v5 && (v6 = [v5 valueForKey:@"contentClass"]) != 0)
  {
    v7 = [[v6 alloc] initWithContentID:instanceCopy andDictionary:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isTranscription:(id)transcription
{
  v3 = [(PVContentRegistry *)self lookupPropertyForID:transcription property:@"PV_CONTENT_IS_TRANSCRIPTION"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isSingleWordTranscription:(id)transcription
{
  v3 = [(PVContentRegistry *)self lookupPropertyForID:transcription property:@"PV_CONTENT_IS_SINGLE_WORD_TRANSCRIPTION"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isSketch:(id)sketch
{
  v3 = [(PVContentRegistry *)self lookupPropertyForID:sketch property:@"PV_CONTENT_IS_SKETCH"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isSelfie:(id)selfie
{
  v3 = [(PVContentRegistry *)self lookupPropertyForID:selfie property:@"PV_CONTENT_IS_SELFIE"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasStyleTransfer:(id)transfer
{
  v3 = [(PVContentRegistry *)self lookupPropertyForID:transfer property:@"PV_CONTENT_HAS_STYLE_TRANSFER"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end