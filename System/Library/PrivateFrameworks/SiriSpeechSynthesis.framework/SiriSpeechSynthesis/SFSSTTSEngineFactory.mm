@interface SFSSTTSEngineFactory
+ (id)getKeyByVoiceAsset:(id)a3 resourceAsset:(id)a4;
+ (id)sharedInstance;
- (SFSSTTSEngineFactory)init;
- (id)getEngineByVoiceAsset:(id)a3 resourceAsset:(id)a4;
- (void)removeAllEngines;
- (void)removeEngineByVoiceAsset:(id)a3 resourceAsset:(id)a4;
@end

@implementation SFSSTTSEngineFactory

- (void)removeAllEngines
{
  v2 = [(SFSSTTSEngineFactory *)self keyToTTSEngineMap];
  [v2 removeAllObjects];
}

- (void)removeEngineByVoiceAsset:(id)a3 resourceAsset:(id)a4
{
  v6 = [SFSSTTSEngineFactory getKeyByVoiceAsset:a3 resourceAsset:a4];
  v5 = [(SFSSTTSEngineFactory *)self keyToTTSEngineMap];
  [v5 removeObjectForKey:v6];
}

- (id)getEngineByVoiceAsset:(id)a3 resourceAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [SFSSTTSEngineFactory getKeyByVoiceAsset:v6 resourceAsset:v7];
  v9 = [(SFSSTTSEngineFactory *)self keyToTTSEngineMap];
  v10 = [v9 objectForKey:v8];

  if (!v10)
  {
    v11 = [SFSSTTSEngine alloc];
    v12 = [v6 assetPath];
    v13 = [v7 assetPath];
    v10 = [(SFSSTTSEngine *)v11 initWithVoicePath:v12 resourcePath:v13];

    v14 = [(SFSSTTSEngineFactory *)self keyToTTSEngineMap];
    [v14 setValue:v10 forKey:v8];
  }

  return v10;
}

- (SFSSTTSEngineFactory)init
{
  v6.receiver = self;
  v6.super_class = SFSSTTSEngineFactory;
  v2 = [(SFSSTTSEngineFactory *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    keyToTTSEngineMap = v2->_keyToTTSEngineMap;
    v2->_keyToTTSEngineMap = v3;
  }

  return v2;
}

+ (id)getKeyByVoiceAsset:(id)a3 resourceAsset:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBEA60];
  v7 = [a3 key];
  v8 = [v5 key];
  v9 = [v6 arrayWithObjects:{v7, v8, 0}];

  v10 = [v9 componentsJoinedByString:@"-"];

  return v10;
}

+ (id)sharedInstance
{
  if (+[SFSSTTSEngineFactory sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[SFSSTTSEngineFactory sharedInstance]::onceToken, &__block_literal_global_1908);
  }

  v3 = +[SFSSTTSEngineFactory sharedInstance]::__sharedInstance;

  return v3;
}

uint64_t __38__SFSSTTSEngineFactory_sharedInstance__block_invoke()
{
  +[SFSSTTSEngineFactory sharedInstance]::__sharedInstance = objc_alloc_init(SFSSTTSEngineFactory);

  return MEMORY[0x2821F96F8]();
}

@end