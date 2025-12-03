@interface PFClientUtil
+ (BOOL)isAppRemovalService;
+ (BOOL)isPodcastsApp;
+ (BOOL)isPodcastsKit;
+ (BOOL)isRunningOnHomepod;
+ (BOOL)isRunningOnInternalOS;
+ (BOOL)isRunningOnVisionOS;
+ (BOOL)isRunningOnWatch;
+ (BOOL)supportsDownloads;
+ (BOOL)supportsGUI;
+ (BOOL)supportsImageStore;
+ (BOOL)supportsLocalLibrary;
+ (NSString)bagProfileName;
+ (id)clientBundleVersion;
+ (id)clientIdentifier;
+ (id)mediaApiClientIdentifier;
@end

@implementation PFClientUtil

+ (BOOL)isPodcastsApp
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__PFClientUtil_isPodcastsApp__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (isPodcastsApp_onceToken != -1)
  {
    dispatch_once(&isPodcastsApp_onceToken, block);
  }

  return isPodcastsApp_isPodcastsApp;
}

void __29__PFClientUtil_isPodcastsApp__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) clientIdentifier];
  isPodcastsApp_isPodcastsApp = [v1 isEqualToString:@"com.apple.podcasts"];
}

+ (id)clientIdentifier
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (!bundleIdentifier)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    bundleIdentifier = [processInfo processName];
  }

  return bundleIdentifier;
}

+ (BOOL)supportsImageStore
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__PFClientUtil_supportsImageStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (supportsImageStore_onceToken != -1)
  {
    dispatch_once(&supportsImageStore_onceToken, block);
  }

  return 0;
}

uint64_t __34__PFClientUtil_supportsImageStore__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isRunningOnHomepod];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) isPodcastsKit];
    if ((result & 1) == 0)
    {
      v3 = *(a1 + 32);

      return [v3 isAppRemovalService];
    }
  }

  return result;
}

void __36__PFClientUtil_supportsLocalLibrary__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 infoDictionary];
  v2 = [v1 valueForKey:@"PodcastsThinClient"];
  v3 = [v2 isEqual:MEMORY[0x1E695E118]];

  supportsLocalLibrary_supportsLocalLibrary = v3;
}

uint64_t __34__PFClientUtil_isRunningOnHomepod__block_invoke()
{
  result = MGGetSInt32Answer();
  isRunningOnHomepod_isRunningOnHomepod = result == 7;
  return result;
}

+ (BOOL)isPodcastsKit
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__PFClientUtil_isPodcastsKit__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (isPodcastsKit_onceToken != -1)
  {
    dispatch_once(&isPodcastsKit_onceToken, block);
  }

  return isPodcastsKit_isPodcastsKit;
}

+ (BOOL)supportsLocalLibrary
{
  if (supportsLocalLibrary_onceToken != -1)
  {
    +[PFClientUtil supportsLocalLibrary];
  }

  return (supportsLocalLibrary_supportsLocalLibrary & 1) == 0;
}

+ (BOOL)isRunningOnHomepod
{
  if (isRunningOnHomepod_onceToken != -1)
  {
    +[PFClientUtil isRunningOnHomepod];
  }

  return isRunningOnHomepod_isRunningOnHomepod;
}

void __29__PFClientUtil_isPodcastsKit__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) clientIdentifier];
  isPodcastsKit_isPodcastsKit = [v1 isEqualToString:@"com.apple.PodcastsKit"];
}

+ (BOOL)isAppRemovalService
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PFClientUtil_isAppRemovalService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (isAppRemovalService_onceToken != -1)
  {
    dispatch_once(&isAppRemovalService_onceToken, block);
  }

  return isAppRemovalService_isAppRemovalService;
}

void __35__PFClientUtil_isAppRemovalService__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) clientIdentifier];
  isAppRemovalService_isAppRemovalService = [v1 isEqualToString:@"com.apple.podcasts.appremoval"];
}

+ (NSString)bagProfileName
{
  if (bagProfileName_onceToken != -1)
  {
    +[PFClientUtil bagProfileName];
  }

  return @"Podcasts";
}

+ (BOOL)supportsDownloads
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PFClientUtil_supportsDownloads__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (supportsDownloads_onceToken != -1)
  {
    dispatch_once(&supportsDownloads_onceToken, block);
  }

  return supportsDownloads_supportsDownloads;
}

+ (id)clientBundleVersion
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v4 = [infoDictionary objectForKey:@"CFBundleShortVersionString"];

  return v4;
}

uint64_t __33__PFClientUtil_supportsDownloads__block_invoke(uint64_t a1)
{
  supportsDownloads_supportsDownloads = [*(a1 + 32) isPodcastsApp];
  if (supportsDownloads_supportsDownloads)
  {
    result = 1;
  }

  else
  {
    result = isRunningUnitTests();
  }

  supportsDownloads_supportsDownloads = result;
  return result;
}

+ (BOOL)isRunningOnInternalOS
{
  if (isRunningOnInternalOS_onceToken != -1)
  {
    +[PFClientUtil isRunningOnInternalOS];
  }

  return isRunningOnInternalOS_isRunningOnInternalOS;
}

uint64_t __37__PFClientUtil_isRunningOnInternalOS__block_invoke()
{
  result = MGGetBoolAnswer();
  isRunningOnInternalOS_isRunningOnInternalOS = result;
  return result;
}

+ (id)mediaApiClientIdentifier
{
  if (mediaApiClientIdentifier_onceToken != -1)
  {
    +[PFClientUtil mediaApiClientIdentifier];
  }

  v3 = mediaApiClientIdentifier_identifier;

  return v3;
}

void __40__PFClientUtil_mediaApiClientIdentifier__block_invoke()
{
  v0 = mediaApiClientIdentifier_identifier;
  mediaApiClientIdentifier_identifier = @"com.apple.podcasts";
}

+ (BOOL)isRunningOnVisionOS
{
  if (isRunningOnVisionOS_onceToken != -1)
  {
    +[PFClientUtil isRunningOnVisionOS];
  }

  return isRunningOnVisionOS_isRunningOnVisionOS;
}

uint64_t __35__PFClientUtil_isRunningOnVisionOS__block_invoke()
{
  result = MGGetSInt32Answer();
  isRunningOnVisionOS_isRunningOnVisionOS = result == 11;
  return result;
}

+ (BOOL)isRunningOnWatch
{
  if (isRunningOnWatch_onceToken != -1)
  {
    +[PFClientUtil isRunningOnWatch];
  }

  return 0;
}

+ (BOOL)supportsGUI
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__PFClientUtil_supportsGUI__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (supportsGUI_onceToken[0] != -1)
  {
    dispatch_once(supportsGUI_onceToken, block);
  }

  return supportsGUI_supportsGUI;
}

uint64_t __27__PFClientUtil_supportsGUI__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isRunningOnHomepod])
  {
    result = 0;
  }

  else
  {
    result = [*(a1 + 32) isPodcastsApp];
  }

  supportsGUI_supportsGUI = result;
  return result;
}

@end