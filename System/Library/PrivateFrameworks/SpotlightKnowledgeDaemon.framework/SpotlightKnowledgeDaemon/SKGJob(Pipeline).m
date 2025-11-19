@interface SKGJob(Pipeline)
- (id)_coreSpotlightIndexWithBundleIdentifier:()Pipeline protectionClass:;
@end

@implementation SKGJob(Pipeline)

- (id)_coreSpotlightIndexWithBundleIdentifier:()Pipeline protectionClass:
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&_coreSpotlightIndexWithBundleIdentifier_protectionClass__s_lock);
  v8 = _coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes_0;
  if (!_coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes_0)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = _coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes_0;
    _coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes_0 = v9;

    v8 = _coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes_0;
  }

  v11 = [v8 objectForKeyedSubscript:v5];

  if (!v11)
  {
    v12 = [MEMORY[0x277CBEB38] dictionary];
    [_coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes_0 setObject:v12 forKeyedSubscript:v5];
  }

  v13 = [_coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes_0 objectForKeyedSubscript:v5];
  v14 = [v13 objectForKeyedSubscript:v6];

  if (v14)
  {
    v15 = [_coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes_0 objectForKeyedSubscript:v5];
    v16 = [v15 objectForKeyedSubscript:v6];
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x277CC34A8]) initWithName:@"PipelineIndex" protectionClass:v6 bundleIdentifier:v5];
    v15 = [_coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes_0 objectForKeyedSubscript:v5];
    [v15 setObject:v16 forKey:v6];
  }

  os_unfair_lock_unlock(&_coreSpotlightIndexWithBundleIdentifier_protectionClass__s_lock);
  objc_autoreleasePoolPop(v7);

  return v16;
}

@end