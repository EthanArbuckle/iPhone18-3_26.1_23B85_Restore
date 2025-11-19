@interface SFSSAssetManager
+ (id)sharedInstance;
- (id)getResoruceAssetByVoice:(id)a3;
- (id)getVoiceAssetByVoice:(id)a3;
@end

@implementation SFSSAssetManager

- (id)getResoruceAssetByVoice:(id)a3
{
  v3 = [a3 locale];
  v4 = [v3 localeIdentifier];

  v5 = [[SFSSResourceAsset alloc] init:v4 contentVersion:0];
  [v5 setAssetPath:@"/Developer/ljc_asset/e58c8cb36e6fe72b3ed4652f9f8a3dd42bbdabb8.asset/AssetData/"];

  return v5;
}

- (id)getVoiceAssetByVoice:(id)a3
{
  v3 = [a3 locale];
  v4 = [v3 localeIdentifier];

  v5 = [[SFSSVoiceAsset alloc] init:v4 gender:2 name:@"nora" type:3 footprint:2 contentVersion:0];
  [v5 setAssetPath:@"/Developer/ljc_asset/640ee391346ea788b19ff2560ecaeebdeab7db83.asset/AssetData/"];

  return v5;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1566 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1566, &__block_literal_global_1567);
  }

  v3 = sharedInstance___sharedInstance_1568;

  return v3;
}

uint64_t __34__SFSSAssetManager_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance_1568 = objc_alloc_init(SFSSAssetManager);

  return MEMORY[0x2821F96F8]();
}

@end