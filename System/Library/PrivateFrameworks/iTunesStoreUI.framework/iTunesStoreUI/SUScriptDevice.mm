@interface SUScriptDevice
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (NSArray)automaticDownloadMediaTypes;
- (NSNumber)diskSpaceAvailable;
- (NSNumber)mainScreenScale;
- (NSNumber)metricsPostFrequencyOverride;
- (SUScriptColor)accessibilitySingleColor;
- (SUScriptDevice)init;
- (SUScriptDictionary)diskUsageDictionary;
- (id)UTIForURL:(id)l;
- (id)accessibilityBoldTextEnabled;
- (id)accessibilityButtonShapesEnabled;
- (id)accessibilityDarkenSystemColors;
- (id)accessibilityEnhanceBackgroundContrast;
- (id)accessibilityMotionAutoPlayVideo;
- (id)accessibilitySingleColorSelected;
- (id)accessibilityUseDarkerKeyboard;
- (id)checkCapabilitiesPropertyListString:(id)string showFailureDialog:(BOOL)dialog;
- (id)getMachineIdentifierForAccountIdentifier:(id)identifier;
- (id)hasCapability:(id)capability;
- (id)isRestrictionLockedDown:(id)down;
- (id)needsToneRegrantOption;
- (id)restrictionLevelForType:(id)type;
- (id)scriptAttributeKeys;
- (id)valueForRestriction:(id)restriction;
- (int64_t)BOOLValueForRestriction:(id)restriction;
- (int64_t)_deviceCapabilityForString:(id)string;
- (int64_t)activeNetworkType;
- (int64_t)hardwareType;
- (unsigned)deviceTypeIdentifier;
- (void)_addScriptFunction:(id)function;
- (void)_removeScriptFunction:(id)function;
- (void)dealloc;
- (void)requestFreeSpaceWithBytes:(id)bytes options:(id)options completionHandler:(id)handler;
- (void)setAutomaticDownloadKinds:(id)kinds withCompletionHandler:(id)handler;
- (void)setDiskUsageDictionary:(id)dictionary;
- (void)setValueForRestriction:(id)restriction enabled:(id)enabled;
@end

@implementation SUScriptDevice

- (SUScriptDevice)init
{
  v5.receiver = self;
  v5.super_class = SUScriptDevice;
  v2 = [(SUScriptObject *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__autoDownloadKindsChangedNotification_ name:*MEMORY[0x1E69D4A68] object:0];
    [defaultCenter addObserver:v2 selector:sel__accessibilitySettingsChangedNotification_ name:*MEMORY[0x1E69DD8A0] object:0];
    [defaultCenter addObserver:v2 selector:sel__accessibilitySettingsChangedNotification_ name:*MEMORY[0x1E69DD8B8] object:0];
    [defaultCenter addObserver:v2 selector:sel__accessibilitySettingsChangedNotification_ name:*MEMORY[0x1E69DDA50] object:0];
    [defaultCenter addObserver:v2 selector:sel__accessibilitySettingsChangedNotification_ name:*MEMORY[0x1E69DD920] object:0];
    [defaultCenter addObserver:v2 selector:sel__accessibilitySettingsChangedNotification_ name:*MEMORY[0x1E69DD938] object:0];
    [defaultCenter addObserver:v2 selector:sel__accessibilitySettingsChangedNotification_ name:*MEMORY[0x1E69DDA48] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69D4A68] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DD8A0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DD8B8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDA50] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DD920] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DD938] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDA48] object:0];
  [(NSMutableArray *)self->_scriptFunctions makeObjectsPerformSelector:sel_setThisObject_ withObject:0];

  v4.receiver = self;
  v4.super_class = SUScriptDevice;
  [(SUScriptObject *)&v4 dealloc];
}

- (int64_t)BOOLValueForRestriction:(id)restriction
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [objc_msgSend(MEMORY[0x1E69ADFB8] "sharedConnection")];
  }

  [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  return 0;
}

- (id)checkCapabilitiesPropertyListString:(id)string showFailureDialog:(BOOL)dialog
{
  dialogCopy = dialog;
  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v7 = SUScriptPropertyListFromString(string);
  if (v7)
  {
    v11 = 0;
    v8 = [objc_msgSend(MEMORY[0x1E69E4748] "sharedInstance")];
    if ((v8 & 1) == 0 && dialogCopy)
    {
      WebThreadRunOnMainThread();
      v8 = 0;
    }

    v9 = MEMORY[0x1E695E4D0];
    if ((v8 & 1) == 0)
    {
      v9 = MEMORY[0x1E695E4C0];
    }
  }

  else
  {

    v9 = MEMORY[0x1E695E4C0];
  }

  return *v9;
}

void __72__SUScriptDevice_checkCapabilitiesPropertyListString_showFailureDialog___block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E69E47C8]) initWithRequiredCapabilities:*(a1 + 32) mismatches:*(a1 + 40)];
  [objc_msgSend(MEMORY[0x1E69E4798] "mainQueue")];
}

- (id)getMachineIdentifierForAccountIdentifier:(id)identifier
{
  if (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(identifier, "unsignedLongLongValue")}];
  }

  else
  {
    v4 = 0;
  }

  v9 = 0;
  v5 = 0;
  if ([objc_msgSend(MEMORY[0x1E69D48B0] currentDevice])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v9)
    {
      [v6 setObject:objc_msgSend(v9 forKey:{"base64EncodedStringWithOptions:", 0), @"mid"}];
    }

    if (v8)
    {
      [v6 setObject:objc_msgSend(v8 forKey:{"base64EncodedStringWithOptions:", 0), @"otp"}];
    }

    v5 = [[SUScriptDictionary alloc] initWithDictionary:v6];
  }

  return v5;
}

- (id)hasCapability:(id)capability
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([capability isEqualToString:{-[SUScriptDevice capabilityNameEmail](self, "capabilityNameEmail")}])
    {
      if (!CPCanSendMail())
      {
        goto LABEL_6;
      }

LABEL_13:
      v5 = MEMORY[0x1E695E4D0];
      return *v5;
    }

    if ([capability isEqualToString:{-[SUScriptDevice capabilityNameExplicitMedia](self, "capabilityNameExplicitMedia")}])
    {
      if ((SSRestrictionsShouldRestrictExplicitContent() & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ([capability isEqualToString:{-[SUScriptDevice capabilityNamePodcasts](self, "capabilityNamePodcasts")}])
      {
        goto LABEL_13;
      }

      v6 = [(SUScriptDevice *)self _deviceCapabilityForString:capability];
      if (v6 == -1)
      {
        v8 = MGCopyAnswer();
        if (v8)
        {
          v9 = v8;
          v10 = CFGetTypeID(v8);
          if (v10 == CFBooleanGetTypeID())
          {
            Value = CFBooleanGetValue(v9);
            CFRelease(v9);
            if (!Value)
            {
              goto LABEL_6;
            }

            goto LABEL_13;
          }

          CFRelease(v9);
        }
      }

      else if ([objc_msgSend(MEMORY[0x1E69D48B0] "currentDevice")])
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

LABEL_6:
  v5 = MEMORY[0x1E695E4C0];
  return *v5;
}

- (id)isRestrictionLockedDown:(id)down
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_msgSend(MEMORY[0x1E69ADFB8] "sharedConnection")];
    v5 = MEMORY[0x1E695E4D0];
    if ((v4 & 1) == 0)
    {
      v5 = MEMORY[0x1E695E4C0];
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v5 = MEMORY[0x1E695E4C0];
  }

  return *v5;
}

- (void)requestFreeSpaceWithBytes:(id)bytes options:(id)options completionHandler:(id)handler
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    options = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v9 = 0;
    if (handler && (isKindOfClass & 1) == 0)
    {
      v9 = [[SUScriptFunction alloc] initWithScriptObject:handler];
    }
  }

  [(SUScriptDevice *)self _addScriptFunction:v9];
  if (options)
  {
    options = [options safeValueForKey:{-[SUScriptDevice freeSpaceOptionEffortLevel](self, "freeSpaceOptionEffortLevel")}];
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = objc_alloc(MEMORY[0x1E695DF20]);
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(options, "intValue")}];
    v13 = [v11 initWithObjectsAndKeys:{v12, *MEMORY[0x1E698B6C0], 0}];
  }

  else
  {
    v13 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [bytes unsignedLongLongValue];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      strtoull([bytes UTF8String], 0, 10);
    }
  }

  CPFreeSpaceRequestBytesAtPathWithCompletionBlock();
}

uint64_t __70__SUScriptDevice_requestFreeSpaceWithBytes_options_completionHandler___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E695DEC8];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:a2 != 0];
  [v5 callWithArguments:{objc_msgSend(v6, "arrayWithObjects:", v7, objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", a3), 0)}];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);

  return [v8 _removeScriptFunction:v9];
}

- (id)restrictionLevelForType:(id)type
{
  if ([type isEqual:{-[SUScriptDevice restrictionTypeApplications](self, "restrictionTypeApplications")}] || objc_msgSend(type, "isEqual:", -[SUScriptDevice restrictionTypeMovies](self, "restrictionTypeMovies")) || objc_msgSend(type, "isEqual:", -[SUScriptDevice restrictionTypeTelevision](self, "restrictionTypeTelevision")))
  {
    v5 = SSRestrictionsCopyRankForMediaType();

    return v5;
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    return 0;
  }
}

- (void)setAutomaticDownloadKinds:(id)kinds withCompletionHandler:(id)handler
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    kinds = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    handler = 0;
  }

  v7 = [kinds copyArrayValueWithValidator:SUISAValidator context:objc_opt_class()];
  if (v7)
  {
    v8 = v7;
    if (handler)
    {
      handler = [[SUScriptFunction alloc] initWithScriptObject:handler];
    }

    [(SUScriptDevice *)self _addScriptFunction:handler];
    currentDevice = [MEMORY[0x1E69D48B0] currentDevice];
    v10 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__SUScriptDevice_setAutomaticDownloadKinds_withCompletionHandler___block_invoke;
    v12[3] = &unk_1E8166050;
    v12[4] = handler;
    v12[5] = self;
    [currentDevice setAutomaticDownloadKinds:v10 withCompletionBlock:v12];
  }

  else
  {
    v11 = MEMORY[0x1E69E2F88];

    [v11 throwException:@"Invalid argument"];
  }
}

uint64_t __66__SUScriptDevice_setAutomaticDownloadKinds_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) callWithArguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a2))}];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 _removeScriptFunction:v4];
}

- (void)setValueForRestriction:(id)restriction enabled:(id)enabled
{
  if (objc_opt_respondsToSelector())
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    bOOLValue = [enabled BOOLValue];

    [mEMORY[0x1E69ADFB8] setBoolValue:bOOLValue forSetting:restriction];
  }

  else
  {
    v8 = MEMORY[0x1E69E2F88];

    [v8 throwException:@"Invalid argument"];
  }
}

- (id)UTIForURL:(id)l
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:l]) != 0)
  {
    v5 = v4;
    v6 = SUCopyUTIForFilePath([v4 path], 1);

    return v6;
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    return 0;
  }
}

- (id)valueForRestriction:(id)restriction
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];

    return [mEMORY[0x1E69ADFB8] effectiveValueForSetting:restriction];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    return 0;
  }
}

- (id)accessibilityBoldTextEnabled
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = MEMORY[0x1E695E4D0];
  if (!IsBoldTextEnabled)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

- (id)accessibilityButtonShapesEnabled
{
  v2 = _UIAccessibilityButtonShapesEnabled();
  v3 = MEMORY[0x1E695E4D0];
  if (!v2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

- (id)accessibilityDarkenSystemColors
{
  v2 = UIAccessibilityDarkerSystemColorsEnabled();
  v3 = MEMORY[0x1E695E4D0];
  if (!v2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

- (id)accessibilityEnhanceBackgroundContrast
{
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v3 = MEMORY[0x1E695E4D0];
  if (!IsReduceTransparencyEnabled)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

- (id)accessibilityMotionAutoPlayVideo
{
  IsVideoAutoplayEnabled = UIAccessibilityIsVideoAutoplayEnabled();
  v3 = MEMORY[0x1E695E4D0];
  if (!IsVideoAutoplayEnabled)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

- (id)accessibilitySingleColorSelected
{
  IsSingleColorSelected = _UIAccessibilityIsSingleColorSelected();
  v3 = MEMORY[0x1E695E4D0];
  if (!IsSingleColorSelected)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

- (SUScriptColor)accessibilitySingleColor
{
  v2 = [[SUScriptColor alloc] initWithUIColor:_UIAccessibilitySingleSystemColor()];

  return v2;
}

- (id)accessibilityUseDarkerKeyboard
{
  v2 = _UIAccessibilityUseDarkerKeyboard();
  v3 = MEMORY[0x1E695E4D0];
  if (!v2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

- (int64_t)activeNetworkType
{
  v3 = [objc_msgSend(MEMORY[0x1E69E4778] "sharedInstance")];
  if (v3 <= 4)
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {

        return [(SUScriptDevice *)self networkType4G];
      }

      else
      {

        return [(SUScriptDevice *)self networkType5G];
      }
    }

    else if (v3 == 1)
    {

      return [(SUScriptDevice *)self networkType2G];
    }

    else
    {
      if (v3 != 2)
      {
LABEL_38:

        return [(SUScriptDevice *)self networkTypeNone];
      }

      return [(SUScriptDevice *)self networkType3G];
    }
  }

  else if (v3 <= 6)
  {
    if (v3 == 5)
    {

      return [(SUScriptDevice *)self networkType6G];
    }

    else
    {

      return [(SUScriptDevice *)self networkType7G];
    }
  }

  else
  {
    switch(v3)
    {
      case 7:

        return [(SUScriptDevice *)self networkType8G];
      case 8:

        return [(SUScriptDevice *)self networkType9G];
      case 1000:

        return [(SUScriptDevice *)self networkTypeWiFi];
      default:
        goto LABEL_38;
    }
  }
}

- (NSArray)automaticDownloadMediaTypes
{
  v2 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69D48B0] "currentDevice")];

  return [v2 sortedArrayUsingSelector:sel_compare_];
}

- (unsigned)deviceTypeIdentifier
{
  currentDevice = [MEMORY[0x1E69D48B0] currentDevice];

  return [currentDevice deviceTypeIdentifier];
}

- (NSNumber)diskSpaceAvailable
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__38;
  v13 = __Block_byref_object_dispose__38;
  v14 = 0;
  v2 = objc_alloc(MEMORY[0x1E695DF20]);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v4 = [v2 initWithObjectsAndKeys:{v3, *MEMORY[0x1E698B6C0], 0}];
  v5 = dispatch_semaphore_create(0);
  CPFreeSpaceRequestBytesAtPathWithCompletionBlock();
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v5);

  v6 = v10[5];
  v7 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v7;
}

intptr_t __36__SUScriptDevice_diskSpaceAvailable__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 40) + 8) + 40) = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:a3];
  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (SUScriptDictionary)diskUsageDictionary
{
  v15[10] = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = v2;
    v4 = *MEMORY[0x1E69E5138];
    v15[0] = @"totalSystemCapacity";
    v15[1] = v4;
    v5 = *MEMORY[0x1E69E5130];
    v15[2] = @"totalSystemAvailable";
    v15[3] = v5;
    v6 = *MEMORY[0x1E69E5120];
    v15[4] = @"totalDataCapacity";
    v15[5] = v6;
    v7 = *MEMORY[0x1E69E5118];
    v15[6] = @"totalDataAvailable";
    v15[7] = v7;
    v8 = *MEMORY[0x1E69E5128];
    v15[8] = @"totalDiskCapacity";
    v15[9] = v8;
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    for (i = 0; i != 10; i += 2)
    {
      v11 = v15[i];
      v12 = [v3 objectForKey:v15[i + 1]];
      if (v12)
      {
        [v9 setObject:v12 forKey:v11];
      }
    }

    v13 = [[SUScriptDictionary alloc] initWithDictionary:v9];

    CFRelease(v3);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)hardwareType
{
  v3 = [objc_msgSend(MEMORY[0x1E69D48B0] "currentDevice")];
  if (v3 > 2002)
  {
    if (v3 > 3002)
    {
      if (v3 <= 3004)
      {
        if (v3 == 3003)
        {

          return [(SUScriptDevice *)self hardwareTypeIPodTouchN18];
        }

        else
        {

          return [(SUScriptDevice *)self hardwareTypeIPodTouchN81];
        }
      }

      switch(v3)
      {
        case 3005:

          return [(SUScriptDevice *)self hardwareTypeIPodTouchN81a];
        case 4000:

          return [(SUScriptDevice *)self hardwareTypeAppleTVK66];
        case 4001:

          return [(SUScriptDevice *)self hardwareTypeAppleTVJ33];
      }
    }

    else if (v3 > 2999)
    {
      if ((v3 - 3001) < 2)
      {

        return [(SUScriptDevice *)self hardwareTypeIPodTouchN72];
      }

      if (v3 == 3000)
      {

        return [(SUScriptDevice *)self hardwareTypeIPodTouchN45];
      }
    }

    else
    {
      switch(v3)
      {
        case 2003:

          return [(SUScriptDevice *)self hardwareTypeIPhoneN90];
        case 2005:

          return [(SUScriptDevice *)self hardwareTypeIPhoneN92];
        case 2006:

          return [(SUScriptDevice *)self hardwareTypeIPhoneN94];
      }
    }

LABEL_89:

    return [(SUScriptDevice *)self hardwareTypeUnknown];
  }

  if (v3 <= 1004)
  {
    if (v3 > 1001)
    {
      if (v3 == 1002)
      {

        return [(SUScriptDevice *)self hardwareTypeIPadK93a];
      }

      else if (v3 == 1003)
      {

        return [(SUScriptDevice *)self hardwareTypeIPadK94];
      }

      else
      {

        return [(SUScriptDevice *)self hardwareTypeIPadK95];
      }
    }

    if (v3 == 1000)
    {

      return [(SUScriptDevice *)self hardwareTypeWildcatK48];
    }

    if (v3 == 1001)
    {

      return [(SUScriptDevice *)self hardwareTypeIPadK93];
    }

    goto LABEL_89;
  }

  if (v3 > 1999)
  {
    if (v3 == 2000)
    {

      return [(SUScriptDevice *)self hardwareTypeIPhoneM68];
    }

    else if (v3 == 2001)
    {

      return [(SUScriptDevice *)self hardwareTypeIPhoneN82];
    }

    else
    {

      return [(SUScriptDevice *)self hardwareTypeIPhoneN88];
    }
  }

  else
  {
    switch(v3)
    {
      case 1005:

        return [(SUScriptDevice *)self hardwareTypeIPadJ1];
      case 1006:

        return [(SUScriptDevice *)self hardwareTypeIPadJ2];
      case 1007:

        return [(SUScriptDevice *)self hardwareTypeIPadJ2a];
      default:
        goto LABEL_89;
    }
  }
}

- (NSNumber)mainScreenScale
{
  v2 = MEMORY[0x1E696AD98];
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  *&v3 = v3;

  return [v2 numberWithFloat:v3];
}

- (NSNumber)metricsPostFrequencyOverride
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__38;
  v10 = __Block_byref_object_dispose__38;
  v11 = 0;
  v2 = dispatch_semaphore_create(0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__SUScriptDevice_metricsPostFrequencyOverride__block_invoke;
  v5[3] = &unk_1E8166358;
  v5[4] = v2;
  v5[5] = &v6;
  [MEMORY[0x1E69D4950] getReportingFrequencyOverrideWithCompletionBlock:v5];
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v2);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

intptr_t __46__SUScriptDevice_metricsPostFrequencyOverride__block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = a2;
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

- (id)needsToneRegrantOption
{
  v2 = objc_alloc_init(ISWeakLinkedClassForString());
  _wasAffectedByAccidentalToneDeletion = [v2 _wasAffectedByAccidentalToneDeletion];

  v4 = MEMORY[0x1E695E4D0];
  if (!_wasAffectedByAccidentalToneDeletion)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  return *v4;
}

- (void)setDiskUsageDictionary:(id)dictionary
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"diskUsage"];

  [v3 throwException:v4];
}

- (void)_addScriptFunction:(id)function
{
  if (function)
  {
    [function setThisObject:self];
    [(SUScriptObject *)self lock];
    scriptFunctions = self->_scriptFunctions;
    if (!scriptFunctions)
    {
      scriptFunctions = objc_alloc_init(MEMORY[0x1E695DF70]);
      self->_scriptFunctions = scriptFunctions;
    }

    [(NSMutableArray *)scriptFunctions addObject:function];

    [(SUScriptObject *)self unlock];
  }
}

- (int64_t)_deviceCapabilityForString:(id)string
{
  if ([string isEqualToString:{-[SUScriptDevice capabilityNameHDVideo](self, "capabilityNameHDVideo")}])
  {
    return 1;
  }

  if ([string isEqualToString:{-[SUScriptDevice capabilityNameHDVideo1080p](self, "capabilityNameHDVideo1080p")}])
  {
    return 2;
  }

  if ([string isEqualToString:{-[SUScriptDevice capabilityNameHDVideo720p](self, "capabilityNameHDVideo720p")}])
  {
    return 1;
  }

  return [string isEqualToString:{-[SUScriptDevice capabilityNameWiFi](self, "capabilityNameWiFi")}] - 1;
}

- (void)_removeScriptFunction:(id)function
{
  if (function)
  {
    [function setThisObject:0];
    [(SUScriptObject *)self lock];
    [(NSMutableArray *)self->_scriptFunctions removeObjectIdenticalTo:function];

    [(SUScriptObject *)self unlock];
  }
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_50 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptDevice;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_38, 11);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptDevice;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptDevice;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_50 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_38 = sel_BOOLValueForRestriction_;
    *algn_1EBF3B368 = @"BOOLValueForRestriction";
    qword_1EBF3B370 = sel_checkCapabilitiesPropertyListString_showFailureDialog_;
    unk_1EBF3B378 = @"checkApplicationCapabilities";
    qword_1EBF3B380 = sel_getMachineIdentifierForAccountIdentifier_;
    unk_1EBF3B388 = @"getMachineID";
    qword_1EBF3B390 = sel_hasCapability_;
    unk_1EBF3B398 = @"hasCapability";
    qword_1EBF3B3A0 = sel_isRestrictionLockedDown_;
    unk_1EBF3B3A8 = @"isRestrictionLockedDown";
    qword_1EBF3B3B0 = sel_requestFreeSpaceWithBytes_options_completionHandler_;
    unk_1EBF3B3B8 = @"requestFreeSpace";
    qword_1EBF3B3C0 = sel_restrictionLevelForType_;
    unk_1EBF3B3C8 = @"restrictionLevelForType";
    qword_1EBF3B3D0 = sel_setAutomaticDownloadKinds_withCompletionHandler_;
    unk_1EBF3B3D8 = @"setAutomaticDownloadMediaTypes";
    qword_1EBF3B3E0 = sel_setValueForRestriction_enabled_;
    unk_1EBF3B3E8 = @"setValueForRestriction";
    qword_1EBF3B3F0 = sel_UTIForURL_;
    unk_1EBF3B3F8 = @"UTIForURL";
    qword_1EBF3B400 = sel_valueForRestriction_;
    unk_1EBF3B408 = @"valueForRestriction";
    __KeyMapping_50 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"accessibilityBoldTextEnabled", @"accessibilityButtonShapesEnabled", @"accessibilityButtonShapesEnabled", @"accessibilityDarkenSystemColors", @"accessibilityDarkenSystemColors", @"accessibilityEnhanceBackgroundContrast", @"accessibilityEnhanceBackgroundContrast", @"accessibilityMotionAutoPlayVideo", @"accessibilityMotionAutoPlayVideo", @"accessibilitySingleColorSelected", @"accessibilitySingleColorSelected", @"accessibilitySingleColor", @"accessibilitySingleColor", @"accessibilityUseDarkerKeyboard", @"accessibilityUseDarkerKeyboard", @"activeNetworkType", @"activeNetworkType", @"automaticDownloadMediaTypes", @"automaticDownloadMediaTypes", @"deviceTypeIdentifier", @"deviceTypeIdentifier", @"diskSpaceAvailable", @"diskSpaceAvailable", @"diskUsage", @"diskUsageDictionary", @"hardwareType", @"hardwareType", @"mainScreenScale", @"mainScreenScale", @"metricsPostFrequencyOverride", @"metricsPostFrequencyOverride", @"needsToneRegrantOption", @"needsToneRegrantOption", @"CAPABILITY_EMAIL", @"capabilityNameEmail", @"CAPABILITY_EXPLICIT_MEDIA", @"capabilityNameExplicitMedia", @"CAPABILITY_HD_VIDEO", @"capabilityNameHDVideo", @"CAPABILITY_HD_VIDEO_1080P", @"capabilityNameHDVideo1080p", @"CAPABILITY_HD_VIDEO_720P", @"capabilityNameHDVideo720p", @"CAPABILITY_PODCASTS", @"capabilityNamePodcasts", @"CAPABILITY_WIFI", @"capabilityNameWiFi", @"FREE_SPACE_EFFORT_DO_NOTHING", @"freeSpaceEffortLevelDoNothing", @"FREE_SPACE_EFFORT_AUTOMATIC_ONLY", @"freeSpaceEffortLevelAutomaticOnly", @"FREE_SPACE_EFFORT_MANUAL", @"freeSpaceEffortLevelManualSpaceManagement", @"FREE_SPACE_EFFORT_PROMPT_USER", @"freeSpaceEffortLevelPromptUser", @"FREE_SPACE_OPTION_EFFORT_LEVEL", @"freeSpaceOptionEffortLevel", @"HARDWARE_TYPE_APPLETV_J33", @"hardwareTypeAppleTVJ33", @"HARDWARE_TYPE_APPLETV_K66", @"hardwareTypeAppleTVK66"}];
  }
}

@end