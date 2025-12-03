@interface PLCloudPhotoLibraryHelper
+ (void)_donateTipsAppEnablementSignal;
+ (void)disableCPL:(id)l;
+ (void)enableCPL:(id)l;
@end

@implementation PLCloudPhotoLibraryHelper

+ (void)_donateTipsAppEnablementSignal
{
  v2 = objc_alloc(MEMORY[0x1E698EBC0]);
  v7 = [v2 initWithContentIdentifier:@"com.apple.mobileslideshow.icpl-enabled" context:*MEMORY[0x1E69BFF18] osBuild:0 userInfo:0];
  v3 = BiomeLibrary();
  discoverability = [v3 Discoverability];
  signals = [discoverability Signals];
  source = [signals source];

  [source sendEvent:v7];
}

+ (void)disableCPL:(id)l
{
  lCopy = l;
  v5 = +[PLAccountStore pl_sharedAccountStore];
  cachedPrimaryAppleAccount = [v5 cachedPrimaryAppleAccount];
  [cachedPrimaryAppleAccount setEnabled:0 forDataclass:*MEMORY[0x1E6959AE8]];
  [v5 saveAccount:cachedPrimaryAppleAccount withDataclassActions:0 doVerify:0 completion:lCopy];
}

+ (void)enableCPL:(id)l
{
  lCopy = l;
  v6 = +[PLAccountStore pl_sharedAccountStore];
  cachedPrimaryAppleAccount = [v6 cachedPrimaryAppleAccount];
  [cachedPrimaryAppleAccount setEnabled:1 forDataclass:*MEMORY[0x1E6959AE8]];
  [cachedPrimaryAppleAccount setEnabled:0 forDataclass:*MEMORY[0x1E6959B30]];
  [v6 saveAccount:cachedPrimaryAppleAccount withDataclassActions:0 doVerify:0 completion:lCopy];

  [self _donateTipsAppEnablementSignal];
}

@end