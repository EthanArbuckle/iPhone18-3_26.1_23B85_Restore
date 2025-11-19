@interface CLSCurationUtilities
+ (BOOL)isBlocklistedImportedByBundleIdentifier:(id)a3 withExternalAppBlocklistType:(unint64_t)a4;
+ (BOOL)isRiskyFileFormatWithAsset:(id)a3;
+ (id)blockedExternalAppBundleIdentifiers;
+ (id)blockedSocialMediaAppBundleIdentifiers;
@end

@implementation CLSCurationUtilities

+ (BOOL)isRiskyFileFormatWithAsset:(id)a3
{
  v3 = a3;
  if ([v3 isAnimatedGIF] & 1) != 0 || (objc_msgSend(v3, "isPDF") & 1) != 0 || (objc_msgSend(v3, "isPNG") & 1) != 0 || (objc_msgSend(v3, "isPSD"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isHEICSequence];
  }

  return v4;
}

+ (BOOL)isBlocklistedImportedByBundleIdentifier:(id)a3 withExternalAppBlocklistType:(unint64_t)a4
{
  v6 = a3;
  if ([v6 length])
  {
    if (a4 == 1)
    {
      v7 = [a1 blockedSocialMediaAppBundleIdentifiers];
      goto LABEL_7;
    }

    if (!a4)
    {
      v7 = [a1 blockedExternalAppBundleIdentifiers];
LABEL_7:
      v9 = v7;
      v10 = [v6 lowercaseString];
      v8 = [v9 containsObject:v10];

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