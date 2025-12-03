@interface CLSCurationUtilities
+ (BOOL)isBlocklistedImportedByBundleIdentifier:(id)identifier withExternalAppBlocklistType:(unint64_t)type;
+ (BOOL)isRiskyFileFormatWithAsset:(id)asset;
+ (id)blockedExternalAppBundleIdentifiers;
+ (id)blockedSocialMediaAppBundleIdentifiers;
@end

@implementation CLSCurationUtilities

+ (BOOL)isRiskyFileFormatWithAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy isAnimatedGIF] & 1) != 0 || (objc_msgSend(assetCopy, "isPDF") & 1) != 0 || (objc_msgSend(assetCopy, "isPNG") & 1) != 0 || (objc_msgSend(assetCopy, "isPSD"))
  {
    isHEICSequence = 1;
  }

  else
  {
    isHEICSequence = [assetCopy isHEICSequence];
  }

  return isHEICSequence;
}

+ (BOOL)isBlocklistedImportedByBundleIdentifier:(id)identifier withExternalAppBlocklistType:(unint64_t)type
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    if (type == 1)
    {
      blockedSocialMediaAppBundleIdentifiers = [self blockedSocialMediaAppBundleIdentifiers];
      goto LABEL_7;
    }

    if (!type)
    {
      blockedSocialMediaAppBundleIdentifiers = [self blockedExternalAppBundleIdentifiers];
LABEL_7:
      v9 = blockedSocialMediaAppBundleIdentifiers;
      lowercaseString = [identifierCopy lowercaseString];
      v8 = [v9 containsObject:lowercaseString];

      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

+ (id)blockedSocialMediaAppBundleIdentifiers
{
  if (blockedSocialMediaAppBundleIdentifiers_onceToken != -1)
  {
    dispatch_once(&blockedSocialMediaAppBundleIdentifiers_onceToken, &__block_literal_global_102);
  }

  v3 = blockedSocialMediaAppBundleIdentifiers_blocklist;

  return v3;
}

uint64_t __62__CLSCurationUtilities_blockedSocialMediaAppBundleIdentifiers__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"com.baidu.baidumobile", @"com.douban.frodo", @"com.facebook.facebook", @"com.burbn.instagram", @"com.reddit.reddit", @"com.zhiliaoapp.musically", @"com.atebits.tweetie2", 0}];
  v2 = blockedSocialMediaAppBundleIdentifiers_blocklist;
  blockedSocialMediaAppBundleIdentifiers_blocklist = v0;

  return MEMORY[0x1EEE66BB8](v0, v2, v1);
}

+ (id)blockedExternalAppBundleIdentifiers
{
  if (blockedExternalAppBundleIdentifiers_onceToken != -1)
  {
    dispatch_once(&blockedExternalAppBundleIdentifiers_onceToken, &__block_literal_global_2516);
  }

  v3 = blockedExternalAppBundleIdentifiers_blocklist;

  return v3;
}

uint64_t __59__CLSCurationUtilities_blockedExternalAppBundleIdentifiers__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"com.baidu.baidumobile", @"com.google.chrome.ios", @"com.douban.frodo", @"com.facebook.facebook", @"com.facebook.messenger", @"org.mozilla.ios.firefox", @"com.google.gmail", @"com.burbn.instagram", @"com.iwilab.kakaotalk", @"jp.naver.line", @"com.apple.mobilemail", @"com.microsoft.office.outlook", @"com.tencent.mqq", 0x1F46D2000, @"com.apple.mobilesafari", @"com.toyopagroup.picaboo", @"ph.telegra.telegraph", @"com.zhiliaoapp.musically", @"com.atebits.tweetie2", @"com.viber", @"com.vk.vkclient", @"com.vk.vkhd", @"com.tencent.xin", @"com.sina.weibo", @"net.whatsapp.whatsapp", 0}];
  v2 = blockedExternalAppBundleIdentifiers_blocklist;
  blockedExternalAppBundleIdentifiers_blocklist = v0;

  return MEMORY[0x1EEE66BB8](v0, v2, v1);
}

@end