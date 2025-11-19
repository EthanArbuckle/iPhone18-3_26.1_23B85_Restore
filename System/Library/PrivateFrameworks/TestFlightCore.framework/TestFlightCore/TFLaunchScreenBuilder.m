@interface TFLaunchScreenBuilder
+ (id)_lockupWithAppName:(id)a3 shortVersionString:(id)a4 bundleVersionString:(id)a5 expirationDate:(id)a6 iconUrlTemplate:(id)a7 iconNeedsMask:(BOOL)a8;
+ (id)buildLaunchScreenFromBetaAppLaunchInfo:(id)a3;
+ (id)buildLaunchScreenWithAppName:(id)a3 shortVersionString:(id)a4 bundleVersionString:(id)a5 expirationDate:(id)a6 iconUrlTemplate:(id)a7 testerNotes:(id)a8 iconNeedsMask:(BOOL)a9;
@end

@implementation TFLaunchScreenBuilder

+ (id)buildLaunchScreenWithAppName:(id)a3 shortVersionString:(id)a4 bundleVersionString:(id)a5 expirationDate:(id)a6 iconUrlTemplate:(id)a7 testerNotes:(id)a8 iconNeedsMask:(BOOL)a9
{
  v15 = a8;
  v16 = [a1 _lockupWithAppName:a3 shortVersionString:a4 bundleVersionString:a5 expirationDate:a6 iconUrlTemplate:a7 iconNeedsMask:a9];
  v17 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"https://developer.apple.com/go/?id=testflight-screenshot"];
  v18 = [[TFLaunchScreen alloc] initWithLockup:v16 testerNotes:v15 howToScreenshotSupportUrl:v17];

  return v18;
}

+ (id)buildLaunchScreenFromBetaAppLaunchInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 displayNames];
  v25 = [TFLocale preferredLocalizedDisplayNameFromDisplayNames:v4];

  v5 = [v3 displayNames];
  v6 = [v5 primaryLocale];

  v7 = [v3 localizedTestNotes];
  v8 = [v7 allKeys];
  v24 = v6;
  v9 = [TFLocale preferredLocaleKeyFromAvailableKeys:v8 primaryLocaleKey:v6];

  v22 = v9;
  if (v9)
  {
    v10 = [v3 localizedTestNotes];
    v11 = [v10 objectForKeyedSubscript:v9];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v3 iconNeedsMask];
  v13 = [v3 version];
  v14 = [v13 shortVersion];
  v15 = [v3 version];
  v16 = [v15 bundleVersion];
  v17 = [v3 expirationDate];
  v18 = [v3 iconURLTemplate];
  LOBYTE(v21) = v12;
  v19 = [a1 buildLaunchScreenWithAppName:v25 shortVersionString:v14 bundleVersionString:v16 expirationDate:v17 iconUrlTemplate:v18 testerNotes:v11 iconNeedsMask:v21];

  return v19;
}

+ (id)_lockupWithAppName:(id)a3 shortVersionString:(id)a4 bundleVersionString:(id)a5 expirationDate:(id)a6 iconUrlTemplate:(id)a7 iconNeedsMask:(BOOL)a8
{
  v8 = a8;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v16 = MEMORY[0x277CCACA8];
  v17 = a5;
  v18 = a4;
  v19 = TFLocalizedString(@"LOCKUP_SUBTITLE_VERSION_PREFIX");
  v20 = [v16 stringWithFormat:@"%@ %@ (%@)", v19, v18, v17];

  [v14 timeIntervalSinceNow];
  if (v21 >= 0.0)
  {
    v23 = [v14 tf_timeFromNow];
    if ([v23 day] < 1)
    {
      v22 = TFLocalizedString(@"LOCKUP_SUBTITLE_EXPIRATION_TODAY");
    }

    else
    {
      v34 = v8;
      v24 = [v23 minute];
      if ([v23 hour] + v24 >= 1)
      {
        [v23 setDay:{objc_msgSend(v23, "day") + 1}];
      }

      v25 = TFLocalizedString(@"LOCKUP_SUBTITLE_EXPIRATION_IN_X");
      v26 = MEMORY[0x277CCACA8];
      v27 = TFLocalizedString(@"NUMBER_OF_DAYS");
      v28 = [v26 stringWithFormat:v27, objc_msgSend(v23, "day")];

      v22 = [MEMORY[0x277CCACA8] stringWithFormat:v25, v28];

      v8 = v34;
    }
  }

  else
  {
    v22 = TFLocalizedString(@"LOCKUP_SUBTITLE_EXPIRATION_EXPIRED");
  }

  v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  [v29 addObject:v20];
  if (v22)
  {
    [v29 addObject:v22];
  }

  if (v15)
  {
    v30 = [[TFIconArtwork alloc] initWithUrlTemplate:v15];
  }

  else
  {
    v30 = 0;
  }

  v31 = v13;
  v32 = [[TFAppLockup alloc] initWithTitle:v31 subtitles:v29 iconArtwork:v30 iconNeedsMask:v8];

  return v32;
}

@end