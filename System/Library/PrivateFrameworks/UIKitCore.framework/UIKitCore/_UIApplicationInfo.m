@interface _UIApplicationInfo
+ (id)_genreNameForID:(int64_t)a3;
+ (id)_localizedFolderNameForName:(id)a3;
- (BOOL)statusBarForcedHiddenForInterfaceOrientation:(int64_t)a3 onDisplay:(id)a4;
- (BOOL)statusBarForcedHiddenForInterfaceOrientation:(int64_t)a3 onDisplay:(id)a4 withUserInterfaceIdiom:(int64_t)a5;
- (BOOL)statusBarHiddenForInterfaceOrientation:(int64_t)a3 onDisplay:(id)a4;
- (BOOL)statusBarHiddenForInterfaceOrientation:(int64_t)a3 onDisplay:(id)a4 withUserInterfaceIdiom:(int64_t)a5;
- (NSArray)folderNames;
- (NSString)fallbackFolderName;
- (void)_loadFromProxy:(id)a3;
- (void)_lock_loadFolderNamesIfNecessary;
@end

@implementation _UIApplicationInfo

- (void)_loadFromProxy:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v16.receiver = self;
  v16.super_class = _UIApplicationInfo;
  [(_UIApplicationInfo *)&v16 _loadFromProxy:v4];
  v6 = [[_UIApplicationInfoParser alloc] initWithApplicationProxy:v4];
  plistParser = self->_plistParser;
  self->_plistParser = v6;

  v8 = [(_UIApplicationInfoParser *)self->_plistParser launchImageFile];
  launchImageFile = self->_launchImageFile;
  self->_launchImageFile = v8;

  v10 = [(_UIApplicationInfoParser *)self->_plistParser keyColorAssetName];
  keyColorAssetName = self->_keyColorAssetName;
  self->_keyColorAssetName = v10;

  self->_canChangeBackgroundStyle = [(_UIApplicationInfoParser *)self->_plistParser canChangeBackgroundStyle];
  self->_backgroundStyle = [(_UIApplicationInfoParser *)self->_plistParser backgroundStyle];
  self->_statusBarHidden = [(_UIApplicationInfoParser *)self->_plistParser statusBarHidden];
  self->_requestedStatusBarStyle = [(_UIApplicationInfoParser *)self->_plistParser requestedStatusBarStyle];
  self->_statusBarHiddenWhenVerticallyCompact = [(_UIApplicationInfoParser *)self->_plistParser statusBarHiddenWhenVerticallyCompact];
  self->_ignoredOverrides = [(_UIApplicationInfoParser *)self->_plistParser ignoredOverrides];
  self->_viewControllerBasedStatusBarAppearance = [(_UIApplicationInfoParser *)self->_plistParser viewControllerBasedStatusBarAppearance];
  self->_systemWindowsSecure = [(_UIApplicationInfoParser *)self->_plistParser systemWindowsSecure];
  self->_optOutOfRTL = [(_UIApplicationInfoParser *)self->_plistParser optOutOfRTL];
  v12 = [(_UIApplicationInfoParser *)self->_plistParser interfaceOrientation];
  v15.receiver = self;
  v15.super_class = _UIApplicationInfo;
  [(_UIApplicationInfo *)&v15 setInterfaceOrientation:v12];
  v13 = [(_UIApplicationInfoParser *)self->_plistParser supportedInterfaceOrientations];
  v14.receiver = self;
  v14.super_class = _UIApplicationInfo;
  [(_UIApplicationInfo *)&v14 setSupportedInterfaceOrientations:v13];
  self->_launchingInterfaceOrientation = [(_UIApplicationInfoParser *)self->_plistParser launchingInterfaceOrientationForSpringBoard];
  self->_supportedUserInterfaceStyle = [(_UIApplicationInfoParser *)self->_plistParser supportedUserInterfaceStyle];
  objc_autoreleasePoolPop(v5);
}

+ (id)_localizedFolderNameForName:(id)a3
{
  v3 = a3;
  if (qword_1ED49A290 != -1)
  {
    dispatch_once(&qword_1ED49A290, &__block_literal_global_234_1);
  }

  v4 = [_MergedGlobals_3_10 objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = [MEMORY[0x1E6982C40] _typeWithIdentifier:v4 allowUndeclared:1];
    [v5 localizedDescription];
  }

  else
  {
    v5 = _UIKitBundle();
    [v5 localizedStringForKey:v3 value:v3 table:0];
  }
  v6 = ;

  return v6;
}

- (NSArray)folderNames
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33___UIApplicationInfo_folderNames__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [(_UIApplicationInfo *)self _synchronize:v4];
  return self->_lazy_folderNames;
}

- (NSString)fallbackFolderName
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40___UIApplicationInfo_fallbackFolderName__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [(_UIApplicationInfo *)self _synchronize:v4];
  return self->_lazy_fallbackFolderName;
}

- (BOOL)statusBarHiddenForInterfaceOrientation:(int64_t)a3 onDisplay:(id)a4 withUserInterfaceIdiom:(int64_t)a5
{
  v8 = a4;
  if ([v8 isMainDisplay])
  {
    v9 = [(_UIApplicationInfo *)self statusBarHidden]|| [(_UIApplicationInfo *)self statusBarForcedHiddenForInterfaceOrientation:a3 onDisplay:v8 withUserInterfaceIdiom:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)statusBarForcedHiddenForInterfaceOrientation:(int64_t)a3 onDisplay:(id)a4 withUserInterfaceIdiom:(int64_t)a5
{
  v8 = a4;
  if ([v8 isMainDisplay] && -[_UIApplicationInfo statusBarHiddenWhenVerticallyCompact](self, "statusBarHiddenWhenVerticallyCompact") && (objc_msgSend(v8, "bounds"), !a5))
  {
    if ((a3 - 3) >= 2)
    {
      v13 = v10;
    }

    else
    {
      v13 = v9;
    }

    _UIScreenReferenceBoundsSizeForType(1uLL);
    v11 = v14 > v13;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)statusBarHiddenForInterfaceOrientation:(int64_t)a3 onDisplay:(id)a4
{
  v6 = a4;
  v7 = +[UIDevice currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = +[UIDevice currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 1 && ![(_UIApplicationInfo *)self supportsDeviceFamily:2])
  {
    v8 = 0;
  }

  v11 = [(_UIApplicationInfo *)self statusBarHiddenForInterfaceOrientation:a3 onDisplay:v6 withUserInterfaceIdiom:v8];

  return v11;
}

- (BOOL)statusBarForcedHiddenForInterfaceOrientation:(int64_t)a3 onDisplay:(id)a4
{
  v6 = a4;
  v7 = +[UIDevice currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = +[UIDevice currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 1 && ![(_UIApplicationInfo *)self supportsDeviceFamily:2])
  {
    v8 = 0;
  }

  v11 = [(_UIApplicationInfo *)self statusBarForcedHiddenForInterfaceOrientation:a3 onDisplay:v6 withUserInterfaceIdiom:v8];

  return v11;
}

+ (id)_genreNameForID:(int64_t)a3
{
  result = 0;
  switch(a3)
  {
    case 6000:
      result = @"Business";
      break;
    case 6001:
      result = @"Weather";
      break;
    case 6002:
      result = @"Utilities";
      break;
    case 6003:
      result = @"Travel";
      break;
    case 6004:
      result = @"Sports";
      break;
    case 6005:
      result = @"Social Networking";
      break;
    case 6006:
      result = @"Reference";
      break;
    case 6007:
      result = @"Productivity";
      break;
    case 6008:
      result = @"Photo & Video";
      break;
    case 6009:
      result = @"News";
      break;
    case 6010:
      result = @"Navigation";
      break;
    case 6011:
      result = @"Music";
      break;
    case 6012:
      result = @"Lifestyle";
      break;
    case 6013:
      result = @"Healthcare & Fitness";
      break;
    case 6014:
      result = @"Games";
      break;
    case 6015:
      result = @"Finance";
      break;
    case 6016:
      result = @"Entertainment";
      break;
    case 6017:
      result = @"Education";
      break;
    case 6018:
      result = @"Books";
      break;
    case 6019:
      return result;
    case 6020:
      result = @"Medical";
      break;
    default:
      switch(a3)
      {
        case 7001:
          result = @"Action Games";
          break;
        case 7002:
          result = @"Adventure Games";
          break;
        case 7003:
          result = @"Arcade Games";
          break;
        case 7004:
          result = @"Board Games";
          break;
        case 7005:
          result = @"Card Games";
          break;
        case 7006:
          result = @"Casino Games";
          break;
        case 7007:
          result = @"Dice Games";
          break;
        case 7008:
          result = @"Educational Games";
          break;
        case 7009:
          result = @"Family Games";
          break;
        case 7010:
          result = @"Kids Games";
          break;
        case 7011:
          result = @"Music Games";
          break;
        case 7012:
          result = @"Puzzle Games";
          break;
        case 7013:
          result = @"Racing Games";
          break;
        case 7014:
          result = @"Role Playing Games";
          break;
        case 7015:
          result = @"Simulation Games";
          break;
        case 7016:
          result = @"Sports Games";
          break;
        case 7017:
          result = @"Strategy Games";
          break;
        case 7018:
          result = @"Trivia Games";
          break;
        case 7019:
          result = @"Word Games";
          break;
        default:
          return result;
      }

      break;
  }

  return result;
}

- (void)_lock_loadFolderNamesIfNecessary
{
  v52 = *MEMORY[0x1E69E9840];
  if (!self->_lazy_folderNames)
  {
    v2 = self;
    v3 = objc_autoreleasePoolPush();
    v4 = MEMORY[0x1E69635E0];
    v5 = [(_UIApplicationInfo *)v2 bundleIdentifier];
    v6 = [v4 applicationProxyForIdentifier:v5];

    if (v6)
    {
      v7 = [MEMORY[0x1E695DF70] array];
      if ([(_UIApplicationInfo *)v2 type]> 1)
      {
        v35 = v3;
        v38 = v2;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __54___UIApplicationInfo__lock_loadFolderNamesIfNecessary__block_invoke_2;
        aBlock[3] = &unk_1E7109B00;
        v45 = &__block_literal_global_252;
        v17 = _Block_copy(aBlock);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v36 = v6;
        v18 = [v6 subgenres];
        v19 = [v18 bs_objectsOfClass:objc_opt_class()];

        obj = v19;
        v20 = [v19 countByEnumeratingWithState:&v40 objects:v50 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v41;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v41 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v40 + 1) + 8 * i);
              v25 = [v24 bs_safeNumberForKey:@"genreId"];
              v26 = [v24 bs_safeStringForKey:@"genre"];
              v27 = v17[2](v17, v25, v26);

              if ([v27 length])
              {
                [v7 addObject:v27];
              }
            }

            v21 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
          }

          while (v21);
        }

        v6 = v36;
        v28 = [v36 genreID];
        v29 = [v36 genre];
        v30 = v17[2](v17, v28, v29);

        if ([v30 length])
        {
          [v7 addObject:v30];
          v12 = v30;
        }

        else
        {
          v12 = 0;
        }

        v3 = v35;

        v9 = v45;
        v2 = v38;
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v8 = objc_opt_class();
        v9 = [v6 objectForInfoDictionaryKey:@"SBMatchingApplicationGenres" ofClass:v8 valuesOfClass:objc_opt_class()];
        v10 = [v9 countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v10)
        {
          v11 = v10;
          v37 = v2;
          v12 = 0;
          v13 = *v47;
          do
          {
            v14 = 0;
            v15 = v12;
            do
            {
              if (*v47 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v16 = [_UIApplicationInfo _localizedFolderNameForName:*(*(&v46 + 1) + 8 * v14)];
              if (v16)
              {
                [v7 addObject:v16];
              }

              v12 = [v7 firstObject];

              ++v14;
              v15 = v12;
            }

            while (v11 != v14);
            v11 = [v9 countByEnumeratingWithState:&v46 objects:v51 count:16];
          }

          while (v11);
          v2 = v37;
        }

        else
        {
          v12 = 0;
        }
      }

      if ([v7 count])
      {
        v31 = [v7 copy];
      }

      else
      {
        v31 = MEMORY[0x1E695E0F0];
      }

      lazy_folderNames = v2->_lazy_folderNames;
      v2->_lazy_folderNames = v31;

      v33 = [v12 copy];
      lazy_fallbackFolderName = v2->_lazy_fallbackFolderName;
      v2->_lazy_fallbackFolderName = v33;
    }

    objc_autoreleasePoolPop(v3);
  }
}

@end