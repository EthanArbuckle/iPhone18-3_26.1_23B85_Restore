@interface SFSSTTSEngineFactory
+ (id)getKeyByVoiceAsset:(id)asset resourceAsset:(id)resourceAsset;
+ (id)sharedInstance;
- (SFSSTTSEngineFactory)init;
- (id)getEngineByVoiceAsset:(id)asset resourceAsset:(id)resourceAsset;
- (void)removeAllEngines;
- (void)removeEngineByVoiceAsset:(id)asset resourceAsset:(id)resourceAsset;
@end

@implementation SFSSTTSEngineFactory

- (void)removeAllEngines
{
  keyToTTSEngineMap = [(SFSSTTSEngineFactory *)self keyToTTSEngineMap];
  [keyToTTSEngineMap removeAllObjects];
}

- (void)removeEngineByVoiceAsset:(id)asset resourceAsset:(id)resourceAsset
{
  v6 = [SFSSTTSEngineFactory getKeyByVoiceAsset:asset resourceAsset:resourceAsset];
  keyToTTSEngineMap = [(SFSSTTSEngineFactory *)self keyToTTSEngineMap];
  [keyToTTSEngineMap removeObjectForKey:v6];
}

- (id)getEngineByVoiceAsset:(id)asset resourceAsset:(id)resourceAsset
{
  assetCopy = asset;
  resourceAssetCopy = resourceAsset;
  v8 = [SFSSTTSEngineFactory getKeyByVoiceAsset:assetCopy resourceAsset:resourceAssetCopy];
  keyToTTSEngineMap = [(SFSSTTSEngineFactory *)self keyToTTSEngineMap];
  v10 = [keyToTTSEngineMap objectForKey:v8];

  if (!v10)
  {
    v11 = [SFSSTTSEngine alloc];
    assetPath = [assetCopy assetPath];
    assetPath2 = [resourceAssetCopy assetPath];
    v10 = [(SFSSTTSEngine *)v11 initWithVoicePath:assetPath resourcePath:assetPath2];

    keyToTTSEngineMap2 = [(SFSSTTSEngineFactory *)self keyToTTSEngineMap];
    [keyToTTSEngineMap2 setValue:v10 forKey:v8];
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

+ (id)getKeyByVoiceAsset:(id)asset resourceAsset:(id)resourceAsset
{
  resourceAssetCopy = resourceAsset;
  v6 = MEMORY[0x277CBEA60];
  v7 = [asset key];
  v8 = [resourceAssetCopy key];
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