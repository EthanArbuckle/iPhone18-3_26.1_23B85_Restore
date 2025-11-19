@interface TypistKeyboardUtilities
+ (BOOL)allOneTimeActionsAlreadyTriggered;
+ (BOOL)getAutoCapitalizationPrefSetting;
+ (BOOL)getAutoCorrectionPrefSetting;
+ (BOOL)getCapsLockPrefSetting;
+ (BOOL)getCheckSpellingPrefSetting;
+ (BOOL)getDictationEnabled;
+ (BOOL)getFuzzyPinyinPrefSetting;
+ (BOOL)getGestureKeyPrefSetting;
+ (BOOL)getHWKeyboardCapsLockRomanSwitchPrefSetting;
+ (BOOL)getKeyPaddlePrefSetting;
+ (BOOL)getPeriodShortcutPrefSetting;
+ (BOOL)getPredictivePrefSetting;
+ (BOOL)getSmallDisplayPrefSetting;
+ (BOOL)getSmartDashesPrefSetting;
+ (BOOL)getSmartFullWidthSetting;
+ (BOOL)getSmartQuotesPrefSetting;
+ (BOOL)getTypologyEnabled;
+ (BOOL)hasMarkedText;
+ (BOOL)inhibitGlobalAlerts:(BOOL)a3;
+ (BOOL)isDictationSupported:(id)a3;
+ (BOOL)isFloating;
+ (BOOL)setPrefSettings:(id)a3;
+ (BOOL)shouldShowDictationKey;
+ (BOOL)shouldShowGlobeKey;
+ (BOOL)triggerAllTIOneTimeActions;
+ (BOOL)waitForKeyboardPlane:(id)a3;
+ (CGPoint)floatingKeyboardDraggablePoint;
+ (CGPoint)generateGaussianPoint:(CGPoint)a3 withSeed:(int64_t)a4 andSigma:(double)a5;
+ (CGPoint)generateGaussianPointWithMean:(CGPoint)a3 andSigma:(double)a4;
+ (CGPoint)generateUniformPointWithMean:(CGPoint)a3 andBounds:(CGVector)a4;
+ (CGPoint)generateUniformPointWithMean:(CGPoint)a3 andRange:(unsigned int)a4;
+ (CGRect)findKeyBoundsInKeyboard:(id)a3;
+ (id)appendKeyboardForKeyboardSetting:(id)a3;
+ (id)canonicalConversion:(id)a3;
+ (id)captureCurrentKeyboardImage;
+ (id)convertRecapCommands:(id)a3;
+ (id)convertRecapCommandsFromListOfActions:(id)a3;
+ (id)deviceInfo;
+ (id)formattedKeyplaneName;
+ (id)generateKeyboardList;
+ (id)getAggregatedTIPreferences;
+ (id)getHwRevision;
+ (id)getKeyboardsForKeyboardSetting;
+ (id)getMobileGestalt:(id)a3;
+ (id)getNandCapacity;
+ (id)getOneHandedKeyboardHandBias;
+ (id)getRegionCodeFromKeyboardID:(id)a3;
+ (id)getRootViewControllerViaScene;
+ (id)getSameScreenSizeModel;
+ (id)getScreenSize;
+ (id)getTrainBuildVersion:(id)a3;
+ (id)getUIDeviceOrientationAsString;
+ (id)markedText;
+ (id)removeKeyboardForKeyboardSetting:(id)a3;
+ (id)replaceWaitForKeyboardPlane:(id)a3 withWait:(double)a4;
+ (id)searchForViewInKeyboardWindow:(id)a3;
+ (id)searchForWindow:(id)a3;
+ (id)setKeyboardForKeyboardSetting:(id)a3;
+ (id)setOneHandedKeyboardHandBias:(id)a3;
+ (id)sharedFBSOrientationObserver;
+ (id)sharedRecapInlinePlayer;
+ (id)validateProbability:(id)a3;
+ (int)getShuangpinPrefSetting;
+ (int)getWubiPrefSetting;
+ (int)touchScanRate;
+ (int64_t)getUIDeviceOrientationFromString:(id)a3;
+ (int64_t)getUIInterfaceOrientation;
+ (int64_t)toUIDeviceOrientation:(int64_t)a3;
+ (int64_t)toUIInterfaceOrientation:(int64_t)a3;
+ (void)correctForRotation:(CGVector *)a3 orientation:(int64_t)a4;
+ (void)killKbd;
+ (void)launchRecap:(id)a3 completion:(id)a4;
+ (void)launchRecapWithSyntheticEventStream:(id)a3;
+ (void)runCommandLineProcess:(char *)a3;
+ (void)runOnMainThread:(id)a3;
+ (void)setAirplaneMode:(BOOL)a3;
+ (void)setDoNotDisturb:(BOOL)a3;
+ (void)tearDownRecapInlinePlayer;
+ (void)waitFor:(double)a3;
@end

@implementation TypistKeyboardUtilities

+ (CGPoint)generateGaussianPoint:(CGPoint)a3 withSeed:(int64_t)a4 andSigma:(double)a5
{
  y = a3.y;
  x = a3.x;
  srand48(a4);
  do
  {
    v7 = drand48() * 2.0 + -1.0;
    v8 = drand48() * 2.0 + -1.0;
    v9 = v8 * v8 + v7 * v7;
  }

  while (v9 >= 1.0);
  v10 = sqrt(log(v8 * v8 + v7 * v7) * -2.0 / v9);
  v11 = v8 * v10;
  v12 = x + v7 * v10 * a5;
  v13 = y + v11 * a5;
  result.y = v13;
  result.x = v12;
  return result;
}

+ (CGPoint)generateGaussianPointWithMean:(CGPoint)a3 andSigma:(double)a4
{
  y = a3.y;
  x = a3.x;
  do
  {
    v6 = drand48() * 2.0 + -1.0;
    v7 = drand48() * 2.0 + -1.0;
    v8 = v7 * v7 + v6 * v6;
  }

  while (v8 >= 1.0);
  v9 = sqrt(log(v7 * v7 + v6 * v6) * -2.0 / v8);
  v10 = v7 * v9;
  v11 = x + v6 * v9 * a4;
  v12 = y + v10 * a4;
  result.y = v12;
  result.x = v11;
  return result;
}

+ (CGPoint)generateUniformPointWithMean:(CGPoint)a3 andRange:(unsigned int)a4
{
  [a1 generateUniformPointWithMean:a3.x andBounds:{a3.y, a4, a4}];
  result.y = v5;
  result.x = v4;
  return result;
}

+ (CGPoint)generateUniformPointWithMean:(CGPoint)a3 andBounds:(CGVector)a4
{
  dy = a4.dy;
  y = a3.y;
  x = a3.x;
  v7 = (arc4random_uniform((a4.dx + a4.dx)) - a4.dx);
  v8 = arc4random_uniform((dy + dy));
  v9 = x + v7;
  v10 = y + (v8 - dy);
  result.y = v10;
  result.x = v9;
  return result;
}

+ (id)validateProbability:(id)a3
{
  [a3 doubleValue];
  if (v3 >= 0.0)
  {
    if (v3 <= 1.0)
    {
      v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    }

    else
    {
      v4 = &unk_2880294E0;
    }
  }

  else
  {
    v4 = &unk_2880294D0;
  }

  return v4;
}

+ (void)waitFor:(double)a3
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v6 = [MEMORY[0x277CBEB88] currentRunLoop];
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
    [v6 runUntilDate:v4];
  }

  else
  {
    v5 = MEMORY[0x277CCACC8];

    [v5 sleepForTimeInterval:a3];
  }
}

+ (void)runOnMainThread:(id)a3
{
  v3 = MEMORY[0x277CCACC8];
  block = a3;
  if ([v3 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

+ (id)canonicalConversion:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 decomposedStringWithCanonicalMapping];

    v6 = [v5 precomposedStringWithCanonicalMapping];

    v7 = [v6 precomposedStringWithCompatibilityMapping];

    v4 = [v7 stringByReplacingOccurrencesOfString:@"–" withString:@"-"];
  }

  return v4;
}

+ (void)runCommandLineProcess:(char *)a3
{
  if (a3)
  {
    v3 = *a3;
    if (*a3)
    {
      v4 = 0;
      posix_spawn(&v4, v3, 0, 0, a3, *MEMORY[0x277D85DB0]);
      waitpid(v4, 0, 0);
    }
  }
}

+ (void)killKbd
{
  v10 = *MEMORY[0x277D85DE8];
  *__argv = xmmword_279DF46E8;
  v9 = *&off_279DF46F8;
  v7 = 0;
  posix_spawn(&v7, "/usr/bin/killall", 0, 0, __argv, *MEMORY[0x277D85DB0]);
  waitpid(v7, 0, 0);
  v2 = 19;
  do
  {
    v3 = v2;
    [TypistKeyboardUtilities waitFor:0.2];
    v4 = popen("/usr/local/bin/pidof kbd", "r");
    v5 = fgets(killKbd_buffer, 128, v4);
    pclose(v4);
    if (!v5)
    {
      break;
    }

    v2 = v3 - 1;
  }

  while (v3);
  v6 = *MEMORY[0x277D85DE8];
}

+ (id)generateKeyboardList
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = objc_opt_new();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__TypistKeyboardUtilities_generateKeyboardList__block_invoke;
  v4[3] = &unk_279DF4710;
  v4[4] = &v5;
  [TypistKeyboardUtilities runOnMainThread:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __47__TypistKeyboardUtilities_generateKeyboardList__block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  CurrentIdiom = UIKeyboardGetCurrentIdiom();
  obj = UIKeyboardGetSupportedInputModes();
  if ((CurrentIdiom + 1) > 4 || ((1 << (CurrentIdiom + 1)) & 0x19) == 0)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v29 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v29)
    {
      v31 = a1;
      v27 = *v37;
      v10 = MEMORY[0x277CBEBF8];
      v28 = CurrentIdiom;
      do
      {
        v11 = 0;
        do
        {
          if (*v37 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v36 + 1) + 8 * v11);
          v13 = UIKeyboardGetSupportedHardwareKeyboardsForInputMode();
          v14 = UIKeyboardGetSupportedSoftwareKeyboardsForInputModeAndIdiom();
          if (!v13 || ![v13 count])
          {

            v13 = &unk_28802A168;
          }

          v30 = v11;
          if (CurrentIdiom == 1)
          {
            v15 = [v10 arrayByAddingObjectsFromArray:&unk_28802A150];

            v10 = v15;
          }

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v16 = v14;
          v17 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v33;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v33 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v32 + 1) + 8 * i);
                v22 = [v13 objectAtIndexedSubscript:{0, obj}];
                v23 = UIKeyboardInputModeWithNewHWLayout();

                v24 = UIKeyboardInputModeWithNewSWLayout();
                if (([v10 containsObject:v24] & 1) == 0)
                {
                  [*(*(*(v31 + 32) + 8) + 40) addObject:v24];
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v18);
          }

          v11 = v30 + 1;
          CurrentIdiom = v28;
        }

        while (v30 + 1 != v29);
        v29 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v29);
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    TYLogl(OS_LOG_TYPE_ERROR, @"ERROR: The device under test does not appear to have software input support known to Typist", v3, v4, v5, v6, v7, v8, obj);
  }

  v25 = *MEMORY[0x277D85DE8];
}

+ (int)touchScanRate
{
  v2 = [MEMORY[0x277D44338] currentEnvironment];
  v3 = [v2 touchScanRate];

  return v3;
}

+ (id)getMobileGestalt:(id)a3
{
  v3 = a3;
  v4 = MGCopyAnswer();
  if (v4)
  {
    v5 = v4;
    if ([v3 isEqualToString:@"HWModelStr"])
    {
      v6 = [(__CFString *)v5 rangeOfString:@"AP" options:4];
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = [(__CFString *)v5 stringByReplacingCharactersInRange:v6 withString:v7, &stru_288014100];

        v5 = v8;
      }
    }
  }

  else
  {
    v5 = @"_Cannot_Obtain_";
  }

  return v5;
}

+ (id)getHwRevision
{
  v2 = MGCopyAnswer();
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [v2 objectForKeyedSubscript:@"CFG#"];
  v5 = [v3 initWithData:v4 encoding:4];

  v6 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"/-"];
  v7 = [v5 componentsSeparatedByCharactersInSet:v6];

  if ([v7 count] < 2)
  {
    v11 = @"MP";
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v7 objectAtIndexedSubscript:0];
    v10 = [v7 objectAtIndexedSubscript:1];
    v11 = [v8 stringWithFormat:@"%@/%@", v9, v10];
  }

  return v11;
}

+ (id)getNandCapacity
{
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceMatching("IOMedia");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"Controller Characteristics", *MEMORY[0x277CBECE8], 3u);
  if (v5)
  {
    v6 = v5;
    v7 = [CFDictionaryGetValue(v5 @"capacity")] / 1000000000;
    IOObjectRelease(MatchingService);
    CFRelease(v6);
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ldGB", v7];
  }

  else
  {
    v8 = @"_Cannot_Obtain_";
  }

  return v8;
}

+ (id)getTrainBuildVersion:(id)a3
{
  v3 = a3;
  v11 = 0;
  v4 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
  v5 = [MEMORY[0x277CCAC80] scannerWithString:v3];
  [v5 scanInteger:&v11];
  v10 = 0;
  [v5 scanCharactersFromSet:v4 intoString:&v10];
  [v5 scanInteger:&v11];
  if ([v3 hasPrefix:@"15A"])
  {
    v6 = @"Tigris";
  }

  else if ([v3 hasPrefix:@"15B"])
  {
    v6 = @"Bursa";
  }

  else if ([v3 hasPrefix:@"15C"])
  {
    v6 = @"Cinar";
  }

  else if ([v3 hasPrefix:@"15D"])
  {
    v6 = @"Dalaman";
  }

  else if ([v3 hasPrefix:@"15E"])
  {
    v6 = @"Emet";
  }

  else if ([v3 hasPrefix:@"15F"])
  {
    v6 = @"Fatsa";
  }

  else if ([v3 hasPrefix:@"15G"])
  {
    v6 = @"TigrisG";
  }

  else if ([v3 hasPrefix:@"16A"])
  {
    v6 = @"Peace";
  }

  else if ([v3 hasPrefix:@"16B"])
  {
    v6 = @"PeaceB";
  }

  else if ([v3 hasPrefix:@"16C"])
  {
    v6 = @"PeaceC";
  }

  else if ([v3 hasPrefix:@"16D"])
  {
    v6 = @"PeaceD";
  }

  else if ([v3 hasPrefix:@"16E"])
  {
    v6 = @"PeaceE";
  }

  else if ([v3 hasPrefix:@"17A"])
  {
    v6 = @"Yukon";
  }

  else if ([v3 hasPrefix:@"17B"])
  {
    v6 = @"YukonB";
  }

  else if ([v3 hasPrefix:@"17C"])
  {
    v6 = @"YukonC";
  }

  else if ([v3 hasPrefix:@"17D"])
  {
    v6 = @"YukonD";
  }

  else
  {
    v7 = [v3 hasPrefix:@"17E"];
    v6 = &stru_288014100;
    if (v7)
    {
      v6 = @"YukonE";
    }
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v6, v3];

  return v8;
}

+ (id)getSameScreenSizeModel
{
  v2 = [a1 getScreenSize];
  v3 = [&unk_28802A4D8 objectForKeyedSubscript:v2];

  return v3;
}

+ (id)deviceInfo
{
  v20[9] = *MEMORY[0x277D85DE8];
  v2 = [TypistKeyboardUtilities getMobileGestalt:@"BuildVersion"];
  v20[0] = v2;
  v19[0] = @"buildVersion";
  v19[1] = @"serialNumber";
  v18 = [TypistKeyboardUtilities getMobileGestalt:@"SerialNumber"];
  v20[1] = v18;
  v19[2] = @"hardwareModel";
  v17 = [TypistKeyboardUtilities getMobileGestalt:@"HWModelStr"];
  v20[2] = v17;
  v19[3] = @"regionInfo";
  v3 = [TypistKeyboardUtilities getMobileGestalt:@"RegionInfo"];
  v20[3] = v3;
  v19[4] = @"nandCapacity";
  v4 = +[TypistKeyboardUtilities getNandCapacity];
  v20[4] = v4;
  v19[5] = @"hardwareRevision";
  v5 = +[TypistKeyboardUtilities getHwRevision];
  v20[5] = v5;
  v19[6] = @"build";
  v6 = [TypistKeyboardUtilities getTrainBuildVersion:v2];
  v20[6] = v6;
  v19[7] = @"dateGenerated";
  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  v9 = [v7 stringWithFormat:@"%@", v8];
  v20[7] = v9;
  v19[8] = @"displaySize";
  v10 = [MEMORY[0x277D759A0] mainScreen];
  [v10 bounds];
  v22.width = v11;
  v22.height = v12;
  v13 = NSStringFromCGSize(v22);
  v20[8] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:9];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)getScreenSize
{
  v2 = MEMORY[0x277CCACA8];
  GSMainScreenPixelSize();
  v4 = v3;
  GSMainScreenPixelSize();
  v6 = [v2 stringWithFormat:@"%dx%d", v4, v5];
  if ([v6 isEqualToString:@"1536x2048"])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [TypistKeyboardUtilities getMobileGestalt:@"main-screen-pitch"];
    v9 = [v7 stringWithFormat:@"%@", v8];

    if ([v9 isEqualToString:@"326"])
    {
      v10 = [v6 stringByAppendingString:@"Mini"];

      v6 = v10;
    }
  }

  return v6;
}

+ (int64_t)toUIDeviceOrientation:(int64_t)a3
{
  if ((a3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)toUIInterfaceOrientation:(int64_t)a3
{
  if ((a3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (id)sharedFBSOrientationObserver
{
  if (sharedFBSOrientationObserver_sharedFBSOrientationObserverToken != -1)
  {
    +[TypistKeyboardUtilities(SystemSettings) sharedFBSOrientationObserver];
  }

  v3 = sharedFBSOrientationObserver_sharedFBSOrientationObserver;

  return v3;
}

uint64_t __71__TypistKeyboardUtilities_SystemSettings__sharedFBSOrientationObserver__block_invoke()
{
  sharedFBSOrientationObserver_sharedFBSOrientationObserver = objc_alloc_init(MEMORY[0x277D0AD80]);

  return MEMORY[0x2821F96F8]();
}

+ (int64_t)getUIInterfaceOrientation
{
  v2 = [a1 sharedFBSOrientationObserver];
  v3 = [v2 activeInterfaceOrientation];

  if ((v3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

+ (id)getUIDeviceOrientationAsString
{
  v2 = [a1 getUIInterfaceOrientation];
  if ((v2 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_279DF4730[v2 - 1];
  }
}

+ (int64_t)getUIDeviceOrientationFromString:(id)a3
{
  v3 = a3;
  if ([v3 caseInsensitiveCompare:@"Portrait"])
  {
    if ([v3 caseInsensitiveCompare:@"PortraitUpsideDown"])
    {
      if ([v3 caseInsensitiveCompare:@"LandscapeLeft"])
      {
        v4 = 4 * ([v3 caseInsensitiveCompare:@"LandscapeRight"] == 0);
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (void)setDoNotDisturb:(BOOL)a3
{
  v5[6] = *MEMORY[0x277D85DE8];
  v3 = "0";
  if (a3)
  {
    v3 = "1";
  }

  v5[0] = "/usr/local/bin/coreautomationd";
  v5[1] = "-command";
  v5[2] = "settings.setDNDManualEnabled:";
  v5[3] = "-int";
  v5[4] = v3;
  v5[5] = 0;
  [TypistKeyboardUtilities runCommandLineProcess:v5];
  v4 = *MEMORY[0x277D85DE8];
}

+ (void)setAirplaneMode:(BOOL)a3
{
  v5[6] = *MEMORY[0x277D85DE8];
  v3 = "NO";
  if (a3)
  {
    v3 = "YES";
  }

  v5[0] = "/usr/local/bin/coreautomationd";
  v5[1] = "-command";
  v5[2] = "networking.setAirplaneModeEnabled:";
  v5[3] = "-BOOL";
  v5[4] = v3;
  v5[5] = 0;
  [TypistKeyboardUtilities runCommandLineProcess:v5];
  v4 = *MEMORY[0x277D85DE8];
}

+ (id)sharedRecapInlinePlayer
{
  v8 = _inlinePlayer;
  if (!_inlinePlayer)
  {
    TYLog(@"Creating a new instance of Recap's inline player", a2, v2, v3, v4, v5, v6, v7, v12);
    v9 = objc_alloc_init(MEMORY[0x277D44348]);
    v10 = _inlinePlayer;
    _inlinePlayer = v9;

    v8 = _inlinePlayer;
  }

  return v8;
}

+ (void)tearDownRecapInlinePlayer
{
  if (_inlinePlayer)
  {
    TYLog(@"Tearing down Recap's inline player", a2, v2, v3, v4, v5, v6, v7, v9);
    [_inlinePlayer tearDown];
    v8 = _inlinePlayer;
    _inlinePlayer = 0;
  }
}

+ (void)launchRecap:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v29 = dispatch_semaphore_create(0);
  if (v5 && [v5 count])
  {
    v26 = v6;
    v7 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v27 = v5;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v32 + 1) + 8 * v11);
          v13 = +[TypistKeyboardUtilities formattedKeyplaneName];
          if ([v12 commandType])
          {
            TYLog(@"\n### Recap Command [%@]:\n%@\n###", v14, v15, v16, v17, v18, v19, v20, v13);
            v21 = +[TypistKeyboardUtilities sharedRecapInlinePlayer];
            v22 = [v12 eventStream];
            [v21 prewarmForEventStream:v22 completion:0];

            v23 = [v12 eventStream];
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __66__TypistKeyboardUtilities_RecapUtilities__launchRecap_completion___block_invoke;
            v30[3] = &unk_279DF4650;
            v24 = v29;
            v31 = v24;
            [v21 playEventStream:v23 options:v7 completion:v30];

            dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
          }

          else if (![TypistKeyboardUtilities waitForKeyboardPlane:v12])
          {

            v6 = v26;
            v5 = v27;
            goto LABEL_17;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = v26;
    v5 = v27;
  }

  if (v6)
  {
    v6[2](v6);
  }

LABEL_17:

  v25 = *MEMORY[0x277D85DE8];
}

+ (void)launchRecapWithSyntheticEventStream:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__TypistKeyboardUtilities_RecapUtilities__launchRecapWithSyntheticEventStream___block_invoke;
  v13[3] = &unk_279DF4710;
  v13[4] = v14;
  v6 = MEMORY[0x274398FD0](v13);
  v7 = +[TypistKeyboardUtilities sharedRecapInlinePlayer];
  [v7 prewarmForEventStream:v3 completion:0];

  v8 = +[TypistKeyboardUtilities sharedRecapInlinePlayer];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__TypistKeyboardUtilities_RecapUtilities__launchRecapWithSyntheticEventStream___block_invoke_2;
  v10[3] = &unk_279DF4758;
  v9 = v5;
  v11 = v9;
  v12 = v14;
  [v8 playEventStream:v3 options:v4 completion:v10];

  v6[2](v6);
  _Block_object_dispose(v14, 8);
}

uint64_t __79__TypistKeyboardUtilities_RecapUtilities__launchRecapWithSyntheticEventStream___block_invoke(uint64_t result)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    do
    {
      result = [TypistKeyboardUtilities waitFor:0.02];
    }

    while (*(*(*(v1 + 32) + 8) + 24) != 1);
  }

  return result;
}

uint64_t __79__TypistKeyboardUtilities_RecapUtilities__launchRecapWithSyntheticEventStream___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) tryLock];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v3 = *(a1 + 32);

    return [v3 unlock];
  }

  return result;
}

+ (id)convertRecapCommands:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  if ([v3 count])
  {
    v6 = 0;
    do
    {
      v7 = [v3 objectAtIndexedSubscript:v6];
      v8 = [v7 objectForKeyedSubscript:@"actions"];
      v9 = v8;
      if (v8 && [v8 count])
      {
        [v5 addObjectsFromArray:v9];
      }

      ++v6;
    }

    while ([v3 count] > v6);
  }

  v10 = [TypistKeyboardUtilities convertRecapCommandsFromListOfActions:v5];

  objc_autoreleasePoolPop(v4);

  return v10;
}

+ (id)convertRecapCommandsFromListOfActions:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = objc_opt_new();
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    v33 = objc_opt_new();
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__0;
    v26 = __Block_byref_object_dispose__0;
    v27 = objc_opt_new();
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v21 = 0;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __81__TypistKeyboardUtilities_RecapUtilities__convertRecapCommandsFromListOfActions___block_invoke;
    v15 = &unk_279DF4780;
    v17 = v20;
    v18 = &v28;
    v19 = &v22;
    v6 = v5;
    v16 = v6;
    [v4 enumerateObjectsUsingBlock:&v12];
    if ([v29[5] length])
    {
      v7 = [TYRecapCommand alloc];
      v8 = [(TYRecapCommand *)v7 initWithCommandType:1 commandString:v29[5] commandDescription:v23[5]];
      [v6 addObject:v8];
    }

    v9 = v16;
    v10 = v6;

    _Block_object_dispose(v20, 8);
    _Block_object_dispose(&v22, 8);

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __81__TypistKeyboardUtilities_RecapUtilities__convertRecapCommandsFromListOfActions___block_invoke(uint64_t a1, void *a2)
{
  v55 = a2;
  v3 = [v55 objectForKeyedSubscript:@"action"];
  if ([v3 isEqualToString:@"waitfor"])
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    if ([*(*(*(a1 + 48) + 8) + 40) length])
    {
      v4 = [[TYRecapCommand alloc] initWithCommandType:1 commandString:*(*(*(a1 + 48) + 8) + 40) commandDescription:*(*(*(a1 + 56) + 8) + 40)];
      [*(a1 + 32) addObject:v4];
      v5 = objc_opt_new();
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v8 = objc_opt_new();
      v9 = *(*(a1 + 56) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    v11 = [TYRecapCommand alloc];
    v12 = MEMORY[0x277CCACA8];
    v13 = [v55 objectForKeyedSubscript:@"plane"];
    v14 = [v12 stringWithFormat:@"%@ %@ ", v3, v13];
    v15 = MEMORY[0x277CCACA8];
    v16 = [v55 objectForKeyedSubscript:@"plane"];
    v17 = [v15 stringWithFormat:@"Waiting for plane: %@", v16];
    v18 = [(TYRecapCommand *)v11 initWithCommandType:0 commandString:v14 commandDescription:v17];

    [*(a1 + 32) addObject:v18];
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"wait"])
  {
    v19 = *(*(*(a1 + 48) + 8) + 40);
    v18 = [v55 objectForKeyedSubscript:@"time"];
    [v19 appendFormat:@"%@ %@ ", v3, v18];
LABEL_7:

    goto LABEL_26;
  }

  if ([v3 isEqualToString:@"drag"])
  {
    v20 = *(*(*(a1 + 48) + 8) + 40);
    v21 = [v55 objectForKeyedSubscript:@"x"];
    v22 = [v55 objectForKeyedSubscript:@"y"];
    v23 = [v55 objectForKeyedSubscript:@"time"];
    if (v23)
    {
      v24 = [v55 objectForKeyedSubscript:@"time"];
      [v20 appendFormat:@"d %@ %@ %@ ", v21, v22, v24];
    }

    else
    {
      [v20 appendFormat:@"d %@ %@ %@ ", v21, v22, @"0.7"];
    }

    v30 = *(*(*(a1 + 56) + 8) + 40);
    v31 = [v55 objectForKeyedSubscript:@"key"];
    [v30 appendFormat:@", dragging to %@", v31];
LABEL_24:

    goto LABEL_25;
  }

  if (([v3 isEqualToString:@"flick"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"flick-down") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"flick-down-left") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"flick-down-right") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"flick-up") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"flick-left") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"flick-right"))
  {
    v25 = *(*(*(a1 + 48) + 8) + 40);
    v26 = [v55 objectForKeyedSubscript:@"x"];
    v27 = [v55 objectForKeyedSubscript:@"y"];
    v28 = [v55 objectForKeyedSubscript:@"time"];
    if (v28)
    {
      v29 = [v55 objectForKeyedSubscript:@"time"];
      [v25 appendFormat:@"f %@ %@ %@ ", v26, v27, v29];
    }

    else
    {
      [v25 appendFormat:@"f %@ %@ %@ ", v26, v27, @"0.1"];
    }

    v32 = *(*(*(a1 + 56) + 8) + 40);
    v31 = [v55 objectForKeyedSubscript:@"key"];
    [v32 appendFormat:@", flicking to %@", v31];
    goto LABEL_24;
  }

  if ([v3 isEqualToString:@"taphold"])
  {
    if (_touchRadiusOverride)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"r %@ ", _touchRadiusOverride];
    }

    else
    {
      v18 = &stru_288014100;
    }

    v39 = *(*(*(a1 + 48) + 8) + 40);
    v40 = [v55 objectForKeyedSubscript:@"x"];
    v41 = [v55 objectForKeyedSubscript:@"y"];
    v42 = [v55 objectForKeyedSubscript:@"time"];
    v43 = v42;
    v44 = @"0.75";
    if (v42)
    {
      v44 = v42;
    }

    [v39 appendFormat:@"t %@ %@ %@%@ ", v40, v41, v18, v44];

    if ([*(*(*(a1 + 56) + 8) + 40) length])
    {
      [*(*(*(a1 + 56) + 8) + 40) appendString:{@", "}];
    }

    v45 = *(*(*(a1 + 56) + 8) + 40);
    v46 = [v55 objectForKeyedSubscript:@"key"];
    [v45 appendFormat:@"Tap+hold %@", v46];

    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"mt"])
  {
    v33 = *(*(*(a1 + 48) + 8) + 40);
    v34 = [v55 objectForKeyedSubscript:@"argumentList"];
    [v33 appendFormat:@"mt %@", v34];

    v35 = *(*(*(a1 + 56) + 8) + 40);
    v36 = @"multitouch: ";
  }

  else
  {
    if (![v3 isEqualToString:@"st"])
    {
      if (_touchRadiusOverride)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"r %@ ", _touchRadiusOverride];
      }

      else
      {
        v18 = &stru_288014100;
      }

      v47 = *(*(*(a1 + 48) + 8) + 40);
      v48 = [v55 objectForKeyedSubscript:@"x"];
      v49 = [v55 objectForKeyedSubscript:@"y"];
      [v47 appendFormat:@"t %@ %@ %@", v48, v49, v18];

      if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
      {
        v50 = *(*(*(a1 + 56) + 8) + 40);
        v51 = [v50 length];
        v52 = @", ";
        if (!v51)
        {
          v52 = &stru_288014100;
        }

        [v50 appendFormat:@"%@Tapping ", v52];
      }

      v53 = *(*(*(a1 + 56) + 8) + 40);
      v54 = [v55 objectForKeyedSubscript:@"key"];
      [v53 appendFormat:@"%@", v54];

      *(*(*(a1 + 40) + 8) + 24) = 1;
      goto LABEL_7;
    }

    v37 = *(*(*(a1 + 48) + 8) + 40);
    v38 = [v55 objectForKeyedSubscript:@"argumentList"];
    [v37 appendFormat:@"st %@", v38];

    v35 = *(*(*(a1 + 56) + 8) + 40);
    v36 = @"stylustouch: ";
  }

  [v35 appendFormat:v36];
LABEL_25:
  *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_26:
}

+ (BOOL)waitForKeyboardPlane:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v5 = [v3 commandString];
  v6 = [v5 stringByTrimmingCharactersInSet:v4];
  v7 = [v6 componentsSeparatedByCharactersInSet:v4];

  v8 = [v7 lastObject];
  [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData switchToPlane:"switchToPlane:", v8];
  v9 = 20;
  while (1)
  {
    [MEMORY[0x277CCACC8] sleepForTimeInterval:0.15];
    if (currentKeyboardPlaneIsSameAs(v8))
    {
      break;
    }

    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  TYLog(@"Waiting done. Expected keyboard plane has been detected.", v10, v11, v12, v13, v14, v15, v16, v26);
LABEL_6:
  IsSameAs = currentKeyboardPlaneIsSameAs(v8);
  if ((IsSameAs & 1) == 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:3.0];
    TYLogl(OS_LOG_TYPE_ERROR, @"### Expected keyboard plane not detected! Timeout after %@ seconds; Recap operation aborted!", v19, v20, v21, v22, v23, v24, v18);
  }

  return IsSameAs;
}

+ (id)replaceWaitForKeyboardPlane:(id)a3 withWait:(double)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [a3 copy];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if (![v10 commandType])
        {
          v11 = MEMORY[0x277CCACA8];
          v12 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
          v13 = [v11 stringWithFormat:@"wait %@ ", v12];
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Waiting %f in lieu of detecting keyplane availability", *&a4];
          [v10 updateCommand:1 commandString:v13 commandDescription:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (BOOL)setPrefSettings:(id)a3
{
  v3 = a3;
  v4 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData setTIPreferences:"setTIPreferences:", v3];
  v5 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData setKeyboardUISettings:"setKeyboardUISettings:", v3];

  return 1;
}

+ (id)getKeyboardsForKeyboardSetting
{
  v2 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v3 = [v2 valueForKey:0];

  return v3;
}

+ (id)setKeyboardForKeyboardSetting:(id)a3
{
  v3 = a3;
  v4 = +[TypistKeyboardData keyboardData];
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v3, 0}];

  v6 = [(objc_class *)v4 setKeyboards:v5];

  return v6;
}

+ (id)appendKeyboardForKeyboardSetting:(id)a3
{
  v3 = a3;
  v4 = +[TypistKeyboardData keyboardData];
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v3, 0}];

  v6 = [(objc_class *)v4 addKeyboards:v5];

  return v6;
}

+ (id)removeKeyboardForKeyboardSetting:(id)a3
{
  v3 = a3;
  v4 = +[TypistKeyboardData keyboardData];
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v3, 0}];

  v6 = [(objc_class *)v4 removeKeyboards:v5];

  return v6;
}

+ (BOOL)isDictationSupported:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  v5 = [v3 componentsSeparatedByString:@"@"];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 componentsSeparatedByString:@"_"];
  v8 = [v7 componentsJoinedByString:@"-"];

  if (v8)
  {
    v9 = [MEMORY[0x277CEF270] dictationIsSupportedForLanguageCode:v8 error:0];
  }

  else
  {
LABEL_4:
    v9 = 0;
  }

  return v9;
}

+ (BOOL)shouldShowDictationKey
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getKeyboardUISettings];
  v3 = [v2 objectForKeyedSubscript:@"shouldShowDictationKey"];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)shouldShowGlobeKey
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getKeyboardUISettings];
  v3 = [v2 objectForKeyedSubscript:@"shouldShowGlobeKey"];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)allOneTimeActionsAlreadyTriggered
{
  v2 = [MEMORY[0x277D6F470] sharedPreferencesController];
  if ([v2 oneTimeActionCompleted:*MEMORY[0x277D6F620]])
  {
    v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
    if ([v3 oneTimeActionCompleted:*MEMORY[0x277D6FD10]])
    {
      v4 = [MEMORY[0x277D6F470] sharedPreferencesController];
      if ([v4 oneTimeActionCompleted:*MEMORY[0x277D6F650]])
      {
        v5 = [MEMORY[0x277D6F470] sharedPreferencesController];
        v6 = [v5 oneTimeActionCompleted:*MEMORY[0x277D6F618]];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)triggerAllTIOneTimeActions
{
  TYLog(@"Triggering all one time actions to YES", a2, v2, v3, v4, v5, v6, v7, v15);
  v8 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v8 didTriggerOneTimeAction:*MEMORY[0x277D6F620]];

  v9 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v9 didTriggerOneTimeAction:*MEMORY[0x277D6FD10]];

  v10 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v10 didTriggerOneTimeAction:*MEMORY[0x277D6F650]];

  v11 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v11 didTriggerOneTimeAction:*MEMORY[0x277D6F618]];

  v12 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v12 didTriggerOneTimeAction:*MEMORY[0x277D6F9F0]];

  v13 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v13 didTriggerOneTimeAction:*MEMORY[0x277D6F9F8]];

  return +[TypistKeyboardUtilities allOneTimeActionsAlreadyTriggered];
}

+ (BOOL)inhibitGlobalAlerts:(BOOL)a3
{
  result = assertion;
  if (a3)
  {
    if (assertion)
    {
      return 1;
    }

    else
    {
      assertion = SBSAlertItemsSuppressionAssertionCreate();
      return assertion != 0;
    }
  }

  else if (assertion)
  {
    CFRelease(assertion);
    result = 0;
    assertion = 0;
  }

  return result;
}

+ (BOOL)getAutoCapitalizationPrefSetting
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getTIPreferences];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6F7B8]];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)getAutoCorrectionPrefSetting
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getTIPreferences];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6F7C0]];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)getCheckSpellingPrefSetting
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getTIPreferences];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6F820]];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)getPeriodShortcutPrefSetting
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getTIPreferences];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6F920]];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)getCapsLockPrefSetting
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getTIPreferences];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6F818]];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)getPredictivePrefSetting
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getTIPreferences];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6F928]];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)getFuzzyPinyinPrefSetting
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getTIPreferences];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6F630]];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)getKeyPaddlePrefSetting
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getTIPreferences];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6F7A0]];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)getSmartQuotesPrefSetting
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getTIPreferences];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6FA88]];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)getSmartDashesPrefSetting
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getTIPreferences];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6FA78]];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)getGestureKeyPrefSetting
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getKeyboardUISettings];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D76AA8]];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)getSmallDisplayPrefSetting
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getKeyboardUISettings];
  v3 = [v2 objectForKeyedSubscript:@"LowerCaseKeyboard"];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)getTypologyEnabled
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getTIPreferences];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6FD08]];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)getDictationEnabled
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getKeyboardUISettings];
  v3 = [v2 objectForKeyedSubscript:@"dictation"];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)getSmartFullWidthSetting
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getTIPreferences];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6FA80]];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (int)getShuangpinPrefSetting
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getTIPreferences];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6FA70]];
  v4 = [v3 intValue];

  return v4;
}

+ (BOOL)getHWKeyboardCapsLockRomanSwitchPrefSetting
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getTIPreferences];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6F640]];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (int)getWubiPrefSetting
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getTIPreferences];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6FD18]];
  v4 = [v3 intValue];

  return v4;
}

+ (id)getAggregatedTIPreferences
{
  v2 = +[TypistKeyboardData keyboardData];

  return [(objc_class *)v2 getTIPreferences];
}

+ (id)getOneHandedKeyboardHandBias
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getKeyboardUISettings];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6F7C8]];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"Unknown";
  }

  v6 = v5;

  return v5;
}

+ (id)setOneHandedKeyboardHandBias:(id)a3
{
  v3 = a3;
  v4 = +[TypistKeyboardData keyboardData];
  v5 = *MEMORY[0x277D6F7C8];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v3 forKey:*MEMORY[0x277D6F7C8]];

  v7 = [(objc_class *)v4 setKeyboardUISettings:v6];
  v8 = [v7 objectForKeyedSubscript:v5];

  return v8;
}

+ (BOOL)isFloating
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getKeyboardUISettings];
  v3 = [v2 objectForKeyedSubscript:@"floatingKeyboard"];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (CGPoint)floatingKeyboardDraggablePoint
{
  v2 = +[TypistKeyboardData keyboardData];

  [(objc_class *)v2 floatingKeyboardDraggablePoint];
  result.y = v4;
  result.x = v3;
  return result;
}

+ (id)getRegionCodeFromKeyboardID:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"@"];
  v4 = MEMORY[0x277CCACC0];
  v5 = [v3 objectAtIndexedSubscript:0];
  v6 = [v4 matchText:v5 withPattern:@"_[a-zA-Z]+-"];

  if (v6)
  {
    v7 = [v3 objectAtIndexedSubscript:0];
    v8 = [v6 range];
    v10 = [v7 substringWithRange:{v8, v9}];

    v11 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-_"];
    v12 = [v10 stringByTrimmingCharactersInSet:v11];
LABEL_5:

    goto LABEL_6;
  }

  v13 = MEMORY[0x277CCACC0];
  v14 = [v3 objectAtIndexedSubscript:0];
  v10 = [v13 matchText:v14 withPattern:@"[a-zA-Z]+_[a-zA-Z]+"];

  if (v10)
  {
    v15 = [v3 objectAtIndexedSubscript:0];
    v16 = [v10 range];
    v11 = [v15 substringWithRange:{v16, v17}];

    v18 = [v11 componentsSeparatedByString:@"_"];
    v12 = [v18 objectAtIndexedSubscript:1];

    goto LABEL_5;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

+ (void)correctForRotation:(CGVector *)a3 orientation:(int64_t)a4
{
  switch(a4)
  {
    case 4:
      dy = a3->dy;
      dx = -a3->dx;
      goto LABEL_7;
    case 3:
      dx = a3->dx;
      dy = -a3->dy;
LABEL_7:
      a3->dx = dy;
      a3->dy = dx;
      return;
    case 2:
      *a3 = vnegq_f64(*a3);
      break;
  }
}

+ (id)formattedKeyplaneName
{
  v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getVisibleKeyplaneName];
  if ([v2 containsString:@"_"])
  {
    v3 = [v2 componentsSeparatedByString:@"_"];
    v4 = [v3 lastObject];
    v5 = [v4 lowercaseString];

    v2 = v5;
  }

  return v2;
}

+ (id)searchForWindow:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__TypistKeyboardUtilities_KeyboardUI__searchForWindow___block_invoke;
  v7[3] = &unk_279DF4758;
  v4 = v3;
  v8 = v4;
  v9 = &v10;
  [TypistKeyboardUtilities runOnMainThread:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __55__TypistKeyboardUtilities_KeyboardUI__searchForWindow___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        NSClassFromString(*(a1 + 32));
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)searchForViewInKeyboardWindow:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  v4 = NSClassFromString(v3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__TypistKeyboardUtilities_KeyboardUI__searchForViewInKeyboardWindow___block_invoke;
  v7[3] = &unk_279DF4978;
  v7[4] = &v8;
  v7[5] = v4;
  [TypistKeyboardUtilities runOnMainThread:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __69__TypistKeyboardUtilities_KeyboardUI__searchForViewInKeyboardWindow___block_invoke(uint64_t a1)
{
  v2 = [TypistKeyboardUtilities searchForWindow:@"UIRemoteKeyboardWindow"];
  v7 = v2;
  if (!v2 || ([v2 firstSubviewOfClass:*(a1 + 40)], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [TypistKeyboardUtilities searchForWindow:@"UITextEffectsWindow"];

    if (v4)
    {
      v3 = [v4 firstSubviewOfClass:*(a1 + 40)];
      v7 = v4;
    }

    else
    {
      v7 = 0;
      v3 = 0;
    }
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

+ (CGRect)findKeyBoundsInKeyboard:(id)a3
{
  v3 = a3;
  [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData findKeyBoundsInKeyboard:"findKeyBoundsInKeyboard:", v3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

+ (id)getRootViewControllerViaScene
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 connectedScenes];

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__TypistKeyboardUtilities_KeyboardUI__getRootViewControllerViaScene__block_invoke;
  v6[3] = &unk_279DF49A0;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __68__TypistKeyboardUtilities_KeyboardUI__getRootViewControllerViaScene__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![v3 activationState] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 windows];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v17 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if ([v9 isKeyWindow])
          {
            v10 = [v9 rootViewController];
            v11 = *(*(a1 + 32) + 8);
            v12 = *(v11 + 40);
            *(v11 + 40) = v10;

            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)captureCurrentKeyboardImage
{
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__3;
  v60 = __Block_byref_object_dispose__3;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x4010000000;
  v53 = &unk_2701AD026;
  v54 = 0u;
  v55 = 0u;
  v44 = 0;
  v45 = &v44;
  v46 = 0x4010000000;
  v47 = &unk_2701AD026;
  v48 = 0u;
  v49 = 0u;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__3;
  v42 = __Block_byref_object_dispose__3;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3010000000;
  v36 = 0;
  v37 = 0;
  v35 = &unk_2701AD026;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __66__TypistKeyboardUtilities_KeyboardUI__captureCurrentKeyboardImage__block_invoke;
  v31[3] = &unk_279DF49C8;
  v31[4] = &v56;
  v31[5] = &v44;
  [TypistKeyboardUtilities runOnMainThread:v31];
  if (v57[5])
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __66__TypistKeyboardUtilities_KeyboardUI__captureCurrentKeyboardImage__block_invoke_2;
    v30[3] = &unk_279DF49F0;
    v30[4] = &v50;
    v30[5] = &v56;
    v30[6] = &v32;
    [TypistKeyboardUtilities runOnMainThread:v30];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __66__TypistKeyboardUtilities_KeyboardUI__captureCurrentKeyboardImage__block_invoke_3;
    v29[3] = &unk_279DF4710;
    v29[4] = &v38;
    [TypistKeyboardUtilities runOnMainThread:v29];
    [v39[5] size];
    v9 = v8;
    [v39[5] size];
    if (v9 >= v10)
    {
      v16 = [MEMORY[0x277D75418] currentDevice];
      v17 = [v16 model];
      v18 = [v17 isEqualToString:@"iPhone"];

      if (v18)
      {
        v19 = v33[4];
        [v39[5] size];
        v13 = v20;
        [v39[5] size];
        v12 = -v19;
        v14 = v21 - v33[4];
        v11 = 0.0;
      }

      else
      {
        v22 = v33[5];
        [v39[5] size];
        v11 = v22 - v23;
        v12 = -v33[4];
        v13 = v51[6];
        v14 = v51[7];
      }
    }

    else
    {
      v11 = -v33[4];
      v12 = -v33[5];
      v13 = v51[6];
      v14 = v51[7] + v45[6];
    }

    [v39[5] scale];
    v25 = v24;
    v63.width = v13;
    v63.height = v14;
    UIGraphicsBeginImageContextWithOptions(v63, 0, v25);
    [v39[5] drawAtPoint:{v11, v12}];
    v26 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v27 = UIImagePNGRepresentation(v26);
    if (v27)
    {
      v15 = UIImagePNGRepresentation(v26);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    TYLogl(OS_LOG_TYPE_ERROR, @"ERROR: No active keyboard found to capture", v2, v3, v4, v5, v6, v7, v29[0]);
    v15 = 0;
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  return v15;
}

void __66__TypistKeyboardUtilities_KeyboardUI__captureCurrentKeyboardImage__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75658] activeKeyboard];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v12 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v12 delegate];
  v6 = [v5 window];
  [v6 safeAreaInsets];
  v7 = *(*(a1 + 40) + 8);
  v7[4] = v8;
  v7[5] = v9;
  v7[6] = v10;
  v7[7] = v11;
}

void __66__TypistKeyboardUtilities_KeyboardUI__captureCurrentKeyboardImage__block_invoke_2(void *a1)
{
  [*(*(a1[5] + 8) + 40) bounds];
  v2 = *(a1[4] + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  v7 = *(*(a1[5] + 8) + 40);
  [v7 origin];
  v9 = v8;
  v11 = v10;
  v19 = [MEMORY[0x277D75128] sharedApplication];
  v12 = [v19 delegate];
  v13 = [v12 window];
  v14 = [v13 rootViewController];
  v15 = [v14 view];
  [v7 convertPoint:v15 toView:{v9, v11}];
  v16 = *(a1[6] + 8);
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
}

void __66__TypistKeyboardUtilities_KeyboardUI__captureCurrentKeyboardImage__block_invoke_3(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75568] defaultFormat];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        v8 = objc_alloc(MEMORY[0x277D75560]);
        v9 = [v7 layer];
        [v9 bounds];
        v12 = [v8 initWithSize:v2 format:{v10, v11}];

        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __66__TypistKeyboardUtilities_KeyboardUI__captureCurrentKeyboardImage__block_invoke_4;
        v18[3] = &unk_279DF4A18;
        v18[4] = v7;
        v13 = [v12 imageWithActions:v18];
        v14 = *(*(a1 + 32) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __66__TypistKeyboardUtilities_KeyboardUI__captureCurrentKeyboardImage__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 layer];
  [v2 bounds];
  [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

+ (BOOL)hasMarkedText
{
  v2 = +[TypistKeyboardData keyboardData];

  return [(objc_class *)v2 hasMarkedText];
}

+ (id)markedText
{
  v2 = +[TypistKeyboardData keyboardData];

  return [(objc_class *)v2 markedText];
}

@end