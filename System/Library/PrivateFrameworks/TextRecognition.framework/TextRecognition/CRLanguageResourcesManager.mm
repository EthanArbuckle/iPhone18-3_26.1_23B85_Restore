@interface CRLanguageResourcesManager
+ (id)lineWrappingManager;
+ (id)postProcessManager;
+ (id)sharedManager;
- (BOOL)lockResourcesForLocale:(id)locale sender:(id)sender block:(id)block;
- (CRLanguageResourcesManager)initWithType:(int64_t)type;
- (void)addSubscriber:(id)subscriber forLocale:(id)locale;
- (void)removeSubscriber:(id)subscriber forLocale:(id)locale;
- (void)subscriber:(id)subscriber willDeactivateForLocale:(id)locale;
@end

@implementation CRLanguageResourcesManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CRLanguageResourcesManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED960260 != -1)
  {
    dispatch_once(&qword_1ED960260, block);
  }

  v2 = _MergedGlobals_35;

  return v2;
}

void __43__CRLanguageResourcesManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithType:0];
  v2 = _MergedGlobals_35;
  _MergedGlobals_35 = v1;
}

+ (id)postProcessManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CRLanguageResourcesManager_postProcessManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED960270 != -1)
  {
    dispatch_once(&qword_1ED960270, block);
  }

  v2 = qword_1ED960268;

  return v2;
}

void __48__CRLanguageResourcesManager_postProcessManager__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithType:1];
  v2 = qword_1ED960268;
  qword_1ED960268 = v1;
}

+ (id)lineWrappingManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CRLanguageResourcesManager_lineWrappingManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED960280 != -1)
  {
    dispatch_once(&qword_1ED960280, block);
  }

  v2 = qword_1ED960278;

  return v2;
}

void __49__CRLanguageResourcesManager_lineWrappingManager__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithType:2];
  v2 = qword_1ED960278;
  qword_1ED960278 = v1;
}

- (CRLanguageResourcesManager)initWithType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = CRLanguageResourcesManager;
  v4 = [(CRLanguageResourcesManager *)&v7 init];
  if (v4)
  {
    v5 = objc_opt_new();
    [(CRLanguageResourcesManager *)v4 setLanguageResourceStacks:v5];

    [(CRLanguageResourcesManager *)v4 setResourceType:type];
  }

  return v4;
}

- (void)addSubscriber:(id)subscriber forLocale:(id)locale
{
  subscriberCopy = subscriber;
  localeCopy = locale;
  languageResourceStacks = [(CRLanguageResourcesManager *)self languageResourceStacks];
  objc_sync_enter(languageResourceStacks);
  languageResourceStacks2 = [(CRLanguageResourcesManager *)self languageResourceStacks];
  v9 = [languageResourceStacks2 objectForKey:localeCopy];

  if (!v9)
  {
    v10 = [[CRLanguageResourcesStack alloc] initWithLocaleIdentifier:localeCopy resourceType:[(CRLanguageResourcesManager *)self resourceType]];
    languageResourceStacks3 = [(CRLanguageResourcesManager *)self languageResourceStacks];
    [languageResourceStacks3 setObject:v10 forKeyedSubscript:localeCopy];
  }

  languageResourceStacks4 = [(CRLanguageResourcesManager *)self languageResourceStacks];
  v13 = [languageResourceStacks4 objectForKeyedSubscript:localeCopy];
  [v13 addSubscriber:subscriberCopy];

  objc_sync_exit(languageResourceStacks);
}

- (void)removeSubscriber:(id)subscriber forLocale:(id)locale
{
  subscriberCopy = subscriber;
  localeCopy = locale;
  languageResourceStacks = [(CRLanguageResourcesManager *)self languageResourceStacks];
  objc_sync_enter(languageResourceStacks);
  languageResourceStacks2 = [(CRLanguageResourcesManager *)self languageResourceStacks];
  v9 = [languageResourceStacks2 objectForKeyedSubscript:localeCopy];

  if (v9)
  {
    languageResourceStacks3 = [(CRLanguageResourcesManager *)self languageResourceStacks];
    v11 = [languageResourceStacks3 objectForKeyedSubscript:localeCopy];
    [v11 removeSubscriber:subscriberCopy];

    languageResourceStacks4 = [(CRLanguageResourcesManager *)self languageResourceStacks];
    v13 = [languageResourceStacks4 objectForKeyedSubscript:localeCopy];
    subscriberCount = [v13 subscriberCount];

    if (!subscriberCount)
    {
      languageResourceStacks5 = [(CRLanguageResourcesManager *)self languageResourceStacks];
      [languageResourceStacks5 removeObjectForKey:localeCopy];
    }
  }

  objc_sync_exit(languageResourceStacks);
}

- (void)subscriber:(id)subscriber willDeactivateForLocale:(id)locale
{
  subscriberCopy = subscriber;
  localeCopy = locale;
  languageResourceStacks = [(CRLanguageResourcesManager *)self languageResourceStacks];
  objc_sync_enter(languageResourceStacks);
  languageResourceStacks2 = [(CRLanguageResourcesManager *)self languageResourceStacks];
  v9 = [languageResourceStacks2 objectForKeyedSubscript:localeCopy];

  if (v9)
  {
    languageResourceStacks3 = [(CRLanguageResourcesManager *)self languageResourceStacks];
    v11 = [languageResourceStacks3 objectForKeyedSubscript:localeCopy];
    [v11 deactivateSubscriber:subscriberCopy];
  }

  objc_sync_exit(languageResourceStacks);
}

- (BOOL)lockResourcesForLocale:(id)locale sender:(id)sender block:(id)block
{
  localeCopy = locale;
  senderCopy = sender;
  blockCopy = block;
  languageResourceStacks = [(CRLanguageResourcesManager *)self languageResourceStacks];
  objc_sync_enter(languageResourceStacks);
  languageResourceStacks2 = [(CRLanguageResourcesManager *)self languageResourceStacks];
  v13 = [languageResourceStacks2 objectForKeyedSubscript:localeCopy];

  objc_sync_exit(languageResourceStacks);
  if (v13 && ([v13 hasSubscriber:senderCopy] & 1) != 0)
  {
    v14 = [v13 popResourceForSubscriber:senderCopy];
    v15 = v14 != 0;
    if (v14)
    {
      blockCopy[2](blockCopy, v14);
      [v13 pushResource:v14];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end