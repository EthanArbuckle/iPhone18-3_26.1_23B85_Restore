@interface TFLaunchScreenBuilder
+ (id)_lockupWithAppName:(id)name shortVersionString:(id)string bundleVersionString:(id)versionString expirationDate:(id)date iconUrlTemplate:(id)template iconNeedsMask:(BOOL)mask;
+ (id)buildLaunchScreenFromBetaAppLaunchInfo:(id)info;
+ (id)buildLaunchScreenWithAppName:(id)name shortVersionString:(id)string bundleVersionString:(id)versionString expirationDate:(id)date iconUrlTemplate:(id)template testerNotes:(id)notes iconNeedsMask:(BOOL)mask;
@end

@implementation TFLaunchScreenBuilder

+ (id)buildLaunchScreenWithAppName:(id)name shortVersionString:(id)string bundleVersionString:(id)versionString expirationDate:(id)date iconUrlTemplate:(id)template testerNotes:(id)notes iconNeedsMask:(BOOL)mask
{
  notesCopy = notes;
  v16 = [self _lockupWithAppName:name shortVersionString:string bundleVersionString:versionString expirationDate:date iconUrlTemplate:template iconNeedsMask:mask];
  v17 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"https://developer.apple.com/go/?id=testflight-screenshot"];
  v18 = [[TFLaunchScreen alloc] initWithLockup:v16 testerNotes:notesCopy howToScreenshotSupportUrl:v17];

  return v18;
}

+ (id)buildLaunchScreenFromBetaAppLaunchInfo:(id)info
{
  infoCopy = info;
  displayNames = [infoCopy displayNames];
  v25 = [TFLocale preferredLocalizedDisplayNameFromDisplayNames:displayNames];

  displayNames2 = [infoCopy displayNames];
  primaryLocale = [displayNames2 primaryLocale];

  localizedTestNotes = [infoCopy localizedTestNotes];
  allKeys = [localizedTestNotes allKeys];
  v24 = primaryLocale;
  v9 = [TFLocale preferredLocaleKeyFromAvailableKeys:allKeys primaryLocaleKey:primaryLocale];

  v22 = v9;
  if (v9)
  {
    localizedTestNotes2 = [infoCopy localizedTestNotes];
    v11 = [localizedTestNotes2 objectForKeyedSubscript:v9];
  }

  else
  {
    v11 = 0;
  }

  iconNeedsMask = [infoCopy iconNeedsMask];
  version = [infoCopy version];
  shortVersion = [version shortVersion];
  version2 = [infoCopy version];
  bundleVersion = [version2 bundleVersion];
  expirationDate = [infoCopy expirationDate];
  iconURLTemplate = [infoCopy iconURLTemplate];
  LOBYTE(v21) = iconNeedsMask;
  v19 = [self buildLaunchScreenWithAppName:v25 shortVersionString:shortVersion bundleVersionString:bundleVersion expirationDate:expirationDate iconUrlTemplate:iconURLTemplate testerNotes:v11 iconNeedsMask:v21];

  return v19;
}

+ (id)_lockupWithAppName:(id)name shortVersionString:(id)string bundleVersionString:(id)versionString expirationDate:(id)date iconUrlTemplate:(id)template iconNeedsMask:(BOOL)mask
{
  maskCopy = mask;
  nameCopy = name;
  dateCopy = date;
  templateCopy = template;
  v16 = MEMORY[0x277CCACA8];
  versionStringCopy = versionString;
  stringCopy = string;
  v19 = TFLocalizedString(@"LOCKUP_SUBTITLE_VERSION_PREFIX");
  versionStringCopy = [v16 stringWithFormat:@"%@ %@ (%@)", v19, stringCopy, versionStringCopy];

  [dateCopy timeIntervalSinceNow];
  if (v21 >= 0.0)
  {
    tf_timeFromNow = [dateCopy tf_timeFromNow];
    if ([tf_timeFromNow day] < 1)
    {
      v22 = TFLocalizedString(@"LOCKUP_SUBTITLE_EXPIRATION_TODAY");
    }

    else
    {
      v34 = maskCopy;
      minute = [tf_timeFromNow minute];
      if ([tf_timeFromNow hour] + minute >= 1)
      {
        [tf_timeFromNow setDay:{objc_msgSend(tf_timeFromNow, "day") + 1}];
      }

      v25 = TFLocalizedString(@"LOCKUP_SUBTITLE_EXPIRATION_IN_X");
      v26 = MEMORY[0x277CCACA8];
      v27 = TFLocalizedString(@"NUMBER_OF_DAYS");
      v28 = [v26 stringWithFormat:v27, objc_msgSend(tf_timeFromNow, "day")];

      v22 = [MEMORY[0x277CCACA8] stringWithFormat:v25, v28];

      maskCopy = v34;
    }
  }

  else
  {
    v22 = TFLocalizedString(@"LOCKUP_SUBTITLE_EXPIRATION_EXPIRED");
  }

  v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  [v29 addObject:versionStringCopy];
  if (v22)
  {
    [v29 addObject:v22];
  }

  if (templateCopy)
  {
    v30 = [[TFIconArtwork alloc] initWithUrlTemplate:templateCopy];
  }

  else
  {
    v30 = 0;
  }

  v31 = nameCopy;
  v32 = [[TFAppLockup alloc] initWithTitle:v31 subtitles:v29 iconArtwork:v30 iconNeedsMask:maskCopy];

  return v32;
}

@end