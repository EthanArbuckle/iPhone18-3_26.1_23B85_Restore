@interface NSBundle(SafariCoreExtras)
+ (id)safari_passwordsAppBundle;
+ (id)safari_safariCoreBundle;
+ (id)safari_safariInjectedBundleURL;
+ (id)safari_safariServicesInjectedBundleURL;
+ (uint64_t)safari_isICloudAppWithBundleIdentifier:()SafariCoreExtras;
+ (uint64_t)safari_isMobileSafariInstalled;
+ (uint64_t)safari_isSafariFamilyBundleIdentifier:()SafariCoreExtras;
+ (void)safari_safariServicesInjectedBundleURL;
- (id)safari_displayName;
- (id)safari_localizedDisplayName;
- (id)safari_localizedShortVersion;
- (id)safari_normalizedVersion;
- (id)safari_shortVersion;
- (id)safari_version;
- (uint64_t)safari_isInSyncAgent;
- (uint64_t)safari_isPasswordsAppBundle;
- (uint64_t)safari_isSafariFamilyApplicationBundle;
- (uint64_t)safari_isSafariWidgetExtensionBundle;
- (uint64_t)safari_primaryLocalizationIsEnglish;
@end

@implementation NSBundle(SafariCoreExtras)

+ (id)safari_safariCoreBundle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__NSBundle_SafariCoreExtras__safari_safariCoreBundle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (safari_safariCoreBundle_onceToken != -1)
  {
    dispatch_once(&safari_safariCoreBundle_onceToken, block);
  }

  v1 = safari_safariCoreBundle_bundle;

  return v1;
}

- (uint64_t)safari_isPasswordsAppBundle
{
  v1 = [a1 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.Passwords"];

  return v2;
}

+ (id)safari_safariInjectedBundleURL
{
  if (safari_safariInjectedBundleURL_onceToken != -1)
  {
    +[NSBundle(SafariCoreExtras) safari_safariInjectedBundleURL];
  }

  v1 = safari_safariInjectedBundleURL_bundleURL;

  return v1;
}

- (id)safari_normalizedVersion
{
  v1 = [a1 safari_version];
  v2 = [v1 safari_stringByNormalizingVersionString];

  return v2;
}

- (id)safari_version
{
  v1 = [a1 infoDictionary];
  v2 = [v1 safari_stringForKey:*MEMORY[0x1E695E500]];

  return v2;
}

- (uint64_t)safari_isInSyncAgent
{
  v1 = [a1 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.SafariBookmarksSyncAgent"];

  return v2;
}

- (uint64_t)safari_isSafariFamilyApplicationBundle
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = [a1 bundleIdentifier];
  v3 = [v1 safari_isSafariFamilyBundleIdentifier:v2];

  return v3;
}

- (id)safari_shortVersion
{
  v1 = [a1 infoDictionary];
  v2 = [v1 safari_stringForKey:*MEMORY[0x1E695E148]];

  return v2;
}

- (id)safari_displayName
{
  v1 = [a1 infoDictionary];
  v2 = [v1 safari_stringForKey:*MEMORY[0x1E695E120]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [v1 safari_stringForKey:*MEMORY[0x1E695E4F8]];
  }

  v5 = v4;

  return v5;
}

- (id)safari_localizedDisplayName
{
  v2 = [a1 localizedInfoDictionary];
  v3 = [v2 safari_stringForKey:*MEMORY[0x1E695E120]];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [a1 safari_displayName];
  }

  v6 = v5;

  return v6;
}

- (id)safari_localizedShortVersion
{
  v2 = [a1 localizedInfoDictionary];
  v3 = [v2 safari_stringForKey:*MEMORY[0x1E695E148]];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [a1 safari_shortVersion];
  }

  v5 = v4;

  return v5;
}

+ (uint64_t)safari_isMobileSafariInstalled
{
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  v1 = [MEMORY[0x1E696AAE8] safari_safariApplicationPlatformBundleIdentifier];
  v2 = [v0 applicationIsInstalled:v1];

  return v2;
}

- (uint64_t)safari_primaryLocalizationIsEnglish
{
  v1 = [a1 preferredLocalizations];
  if ([v1 count])
  {
    v2 = [v1 objectAtIndexedSubscript:0];
    v3 = [v2 isEqualToString:@"English"];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (uint64_t)safari_isSafariWidgetExtensionBundle
{
  v1 = [a1 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.mobilesafari.SafariWidgetExtension"];

  return v2;
}

+ (id)safari_safariServicesInjectedBundleURL
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.JavaScriptCore"];
  v1 = [v0 bundleURL];
  v2 = [v1 URLByDeletingLastPathComponent];

  v3 = MEMORY[0x1E696AAE8];
  v4 = [v2 URLByAppendingPathComponent:@"SafariServices.framework" isDirectory:1];
  v5 = [v3 bundleWithURL:v4];

  if (!v5)
  {
    +[NSBundle(SafariCoreExtras) safari_safariServicesInjectedBundleURL];
  }

  v6 = [v5 builtInPlugInsURL];
  v7 = [v6 URLByAppendingPathComponent:@"SafariServices.wkbundle" isDirectory:1];
  v8 = [v7 absoluteURL];

  return v8;
}

+ (uint64_t)safari_isICloudAppWithBundleIdentifier:()SafariCoreExtras
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"com.apple.CloudKit.ShareBear";
  v9[1] = @"com.apple.bird";
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v9 count:2];
  v6 = [v5 containsObject:v4];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (uint64_t)safari_isSafariFamilyBundleIdentifier:()SafariCoreExtras
{
  v3 = a3;
  if ([v3 safari_isCaseInsensitiveEqualToString:@"com.apple.Safari"] & 1) != 0 || (objc_msgSend(v3, "safari_isCaseInsensitiveEqualToString:", @"com.apple.Safari.automation") & 1) != 0 || (objc_msgSend(v3, "safari_isCaseInsensitiveEqualToString:", @"com.apple.SafariTechnologyPreview"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 safari_isCaseInsensitiveEqualToString:@"com.apple.mobilesafari"];
  }

  return v4;
}

+ (id)safari_passwordsAppBundle
{
  v1 = safari_passwordsAppBundle_bundle;
  if (!safari_passwordsAppBundle_bundle)
  {
    v2 = [a1 bundleWithIdentifier:@"com.apple.Passwords"];
    v3 = safari_passwordsAppBundle_bundle;
    safari_passwordsAppBundle_bundle = v2;

    v1 = safari_passwordsAppBundle_bundle;
  }

  return v1;
}

+ (void)safari_safariServicesInjectedBundleURL
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F3064D08];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/SafariShared/SafariShared/SafariCore/FoundationExtras/WBSCoreNSBundleExtras.m"];
  v3 = [v2 lastPathComponent];
  if ([v0 length])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v0];
    v4 = [v1 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "containingBundle", "+[NSBundle(SafariCoreExtras) safari_safariServicesInjectedBundleURL]", v3, 385, v5];
  }

  else
  {
    v4 = [v1 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "containingBundle", "+[NSBundle(SafariCoreExtras) safari_safariServicesInjectedBundleURL]", v3, 385, &stru_1F3064D08];
  }

  v6 = [MEMORY[0x1E696AF00] callStackSymbols];
  NSLog(&stru_1F3069F08.isa, v4, v6);

  abort();
}

@end