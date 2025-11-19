@interface PLCloudPhotoLibraryHelper
+ (void)_donateTipsAppEnablementSignal;
+ (void)disableCPL:(id)a3;
+ (void)enableCPL:(id)a3;
@end

@implementation PLCloudPhotoLibraryHelper

+ (void)_donateTipsAppEnablementSignal
{
  v2 = objc_alloc(MEMORY[0x1E698EBC0]);
  v7 = [v2 initWithContentIdentifier:@"com.apple.mobileslideshow.icpl-enabled" context:*MEMORY[0x1E69BFF18] osBuild:0 userInfo:0];
  v3 = BiomeLibrary();
  v4 = [v3 Discoverability];
  v5 = [v4 Signals];
  v6 = [v5 source];

  [v6 sendEvent:v7];
}

+ (void)disableCPL:(id)a3
{
  v3 = a3;
  v5 = +[PLAccountStore pl_sharedAccountStore];
  v4 = [v5 cachedPrimaryAppleAccount];
  [v4 setEnabled:0 forDataclass:*MEMORY[0x1E6959AE8]];
  [v5 saveAccount:v4 withDataclassActions:0 doVerify:0 completion:v3];
}

+ (void)enableCPL:(id)a3
{
  v4 = a3;
  v6 = +[PLAccountStore pl_sharedAccountStore];
  v5 = [v6 cachedPrimaryAppleAccount];
  [v5 setEnabled:1 forDataclass:*MEMORY[0x1E6959AE8]];
  [v5 setEnabled:0 forDataclass:*MEMORY[0x1E6959B30]];
  [v6 saveAccount:v5 withDataclassActions:0 doVerify:0 completion:v4];

  [a1 _donateTipsAppEnablementSignal];
}

@end