@interface SDPommesFeature
+ (BOOL)isMailBundle:(id)bundle;
+ (BOOL)isSearchToolClientBundle:(id)bundle;
+ (BOOL)isSpotlightUIClientBundle:(id)bundle;
+ (BOOL)usingPommesRankingForClientBundle:(id)bundle;
+ (BOOL)usingRewritesForContextBundleIDs:(id)ds clientBundleID:(id)d userQuery:(id)query indexSupportsRewrites:(BOOL)rewrites isCounting:(BOOL)counting embeddingsEnabled:(BOOL)enabled;
+ (id)allBundleIDsUsingPommesRankingSearchTool;
+ (id)baseBundleIDs;
@end

@implementation SDPommesFeature

+ (BOOL)isMailBundle:(id)bundle
{
  bundleCopy = bundle;
  if ([bundleCopy isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || (objc_msgSend(bundleCopy, "isEqualToString:", @"com.apple.email.SearchIndexer"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [bundleCopy isEqualToString:@"com.apple.pommesctl"];
  }

  return v4;
}

+ (BOOL)isSpotlightUIClientBundle:(id)bundle
{
  lowercaseString = [bundle lowercaseString];
  if ([lowercaseString hasPrefix:@"com.apple.spotlight"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [lowercaseString hasPrefix:@"com.apple.search.framework"];
  }

  return v4;
}

+ (BOOL)isSearchToolClientBundle:(id)bundle
{
  bundleCopy = bundle;
  if ([bundleCopy hasPrefix:@"com.apple.omniSearch"] & 1) != 0 || (objc_msgSend(bundleCopy, "hasPrefix:", @"com.apple.intelligenceflow"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [bundleCopy hasPrefix:@"com.apple.ondeviceeval"];
  }

  return v4;
}

+ (BOOL)usingPommesRankingForClientBundle:(id)bundle
{
  bundleCopy = bundle;
  if ([bundleCopy isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || (objc_msgSend(bundleCopy, "isEqualToString:", @"com.apple.email.SearchIndexer") & 1) != 0 || (objc_msgSend(bundleCopy, "isEqualToString:", @"com.apple.pommesctl"))
  {
    goto LABEL_4;
  }

  if (([bundleCopy isEqualToString:@"com.apple.mobilesafari"] & 1) != 0 || objc_msgSend(bundleCopy, "isEqualToString:", @"com.argos.BlendABApp2"))
  {
    goto LABEL_8;
  }

  if (([bundleCopy isEqualToString:@"com.apple.mobileslideshow"] & 1) == 0 && (objc_msgSend(bundleCopy, "isEqualToString:", @"com.apple.mobilecal") & 1) == 0 && (objc_msgSend(bundleCopy, "isEqualToString:", @"com.apple.MobileSMS") & 1) == 0)
  {
    if (([bundleCopy isEqualToString:@"com.apple.mobilenotes"] & 1) == 0 && !objc_msgSend(bundleCopy, "isEqualToString:", @"com.apple.reminders") && !objc_msgSend(bundleCopy, "isEqualToString:", @"com.apple.Preferences"))
    {
      v6 = [bundleCopy isEqualToString:@"com.apple.Passbook"];
      goto LABEL_9;
    }

LABEL_8:
    v6 = _os_feature_enabled_impl();
LABEL_9:
    v4 = v6;
    goto LABEL_5;
  }

LABEL_4:
  v4 = 1;
LABEL_5:

  return v4;
}

+ (BOOL)usingRewritesForContextBundleIDs:(id)ds clientBundleID:(id)d userQuery:(id)query indexSupportsRewrites:(BOOL)rewrites isCounting:(BOOL)counting embeddingsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  countingCopy = counting;
  rewritesCopy = rewrites;
  dsCopy = ds;
  dCopy = d;
  queryCopy = query;
  if ([SDPommesFeature isSearchToolClientBundle:dCopy])
  {
    goto LABEL_11;
  }

  if ([SDPommesFeature isMessagesBundle:dCopy])
  {
    goto LABEL_11;
  }

  if ([SDPommesFeature isPhotosBundle:dCopy])
  {
    goto LABEL_11;
  }

  v16 = [SDPommesFeature isMailBundle:dCopy];
  v17 = v16;
  if (enabledCopy && !v16)
  {
    goto LABEL_11;
  }

  if ([queryCopy length] > 0x1D)
  {
    goto LABEL_11;
  }

  if (![dsCopy count])
  {
    goto LABEL_13;
  }

  decimalDigitCharacterSet = [dsCopy objectAtIndexedSubscript:0];
  if ([decimalDigitCharacterSet isEqualToString:@"com.apple.mobileslideshow"])
  {
    LOBYTE(v19) = 0;
LABEL_15:

    goto LABEL_12;
  }

  v20 = [dsCopy objectAtIndexedSubscript:0];
  v21 = [v20 isEqualToString:@"com.apple.mobilesafari"];

  if (v21)
  {
LABEL_11:
    LOBYTE(v19) = 0;
  }

  else
  {
LABEL_13:
    v19 = rewritesCopy & ~countingCopy;
    if ((v19 & v17) == 1)
    {
      decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
      LOBYTE(v19) = [queryCopy rangeOfCharacterFromSet:decimalDigitCharacterSet] == 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_15;
    }
  }

LABEL_12:

  return v19;
}

+ (id)baseBundleIDs
{
  if (baseBundleIDs_onceToken != -1)
  {
    +[SDPommesFeature baseBundleIDs];
  }

  v3 = baseBundleIDs_pommesBundles;

  return v3;
}

void __32__SDPommesFeature_baseBundleIDs__block_invoke()
{
  v2 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"com.apple.mobilemail", @"com.apple.pommesctl", @"com.apple.mobilecal", @"com.apple.mobileslideshow", @"com.apple.mobilenotes", @"com.apple.MobileSMS", 0}];
  if (_os_feature_enabled_impl())
  {
    [v2 addObject:@"com.apple.mobilesafari"];
    [v2 addObject:@"com.argos.BlendABApp2"];
  }

  if (_os_feature_enabled_impl())
  {
    [v2 addObject:@"com.apple.reminders"];
  }

  if (_os_feature_enabled_impl())
  {
    [v2 addObject:@"com.apple.spotlight.events"];
  }

  [v2 addObject:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];
  [v2 addObject:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
  [v2 addObject:@"com.apple.FileProvider.LocalStorage"];
  v0 = [v2 copy];
  v1 = baseBundleIDs_pommesBundles;
  baseBundleIDs_pommesBundles = v0;
}

+ (id)allBundleIDsUsingPommesRankingSearchTool
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SDPommesFeature_allBundleIDsUsingPommesRankingSearchTool__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (allBundleIDsUsingPommesRankingSearchTool_onceToken != -1)
  {
    dispatch_once(&allBundleIDsUsingPommesRankingSearchTool_onceToken, block);
  }

  v2 = allBundleIDsUsingPommesRankingSearchTool_pommesBundlesSearchTool;

  return v2;
}

void __59__SDPommesFeature_allBundleIDsUsingPommesRankingSearchTool__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) baseBundleIDs];
  v4 = [v1 mutableCopy];

  [v4 addObject:@"com.apple.Passbook"];
  [v4 addObject:@"com.apple.VoiceMemos"];
  [v4 addObject:@"com.apple.mobilephone"];
  [v4 addObject:@"com.apple.freeform"];
  [v4 addObject:@"com.apple.journal"];
  v2 = [v4 copy];
  v3 = allBundleIDsUsingPommesRankingSearchTool_pommesBundlesSearchTool;
  allBundleIDsUsingPommesRankingSearchTool_pommesBundlesSearchTool = v2;
}

@end