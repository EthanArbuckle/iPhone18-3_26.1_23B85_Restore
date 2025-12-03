@interface _UIApplicationInfo
+ (id)_genreNameForID:(int64_t)d;
+ (id)_localizedFolderNameForName:(id)name;
- (BOOL)statusBarForcedHiddenForInterfaceOrientation:(int64_t)orientation onDisplay:(id)display;
- (BOOL)statusBarForcedHiddenForInterfaceOrientation:(int64_t)orientation onDisplay:(id)display withUserInterfaceIdiom:(int64_t)idiom;
- (BOOL)statusBarHiddenForInterfaceOrientation:(int64_t)orientation onDisplay:(id)display;
- (BOOL)statusBarHiddenForInterfaceOrientation:(int64_t)orientation onDisplay:(id)display withUserInterfaceIdiom:(int64_t)idiom;
- (NSArray)folderNames;
- (NSString)fallbackFolderName;
- (void)_loadFromProxy:(id)proxy;
- (void)_lock_loadFolderNamesIfNecessary;
@end

@implementation _UIApplicationInfo

- (void)_loadFromProxy:(id)proxy
{
  proxyCopy = proxy;
  v5 = objc_autoreleasePoolPush();
  v16.receiver = self;
  v16.super_class = _UIApplicationInfo;
  [(_UIApplicationInfo *)&v16 _loadFromProxy:proxyCopy];
  v6 = [[_UIApplicationInfoParser alloc] initWithApplicationProxy:proxyCopy];
  plistParser = self->_plistParser;
  self->_plistParser = v6;

  launchImageFile = [(_UIApplicationInfoParser *)self->_plistParser launchImageFile];
  launchImageFile = self->_launchImageFile;
  self->_launchImageFile = launchImageFile;

  keyColorAssetName = [(_UIApplicationInfoParser *)self->_plistParser keyColorAssetName];
  keyColorAssetName = self->_keyColorAssetName;
  self->_keyColorAssetName = keyColorAssetName;

  self->_canChangeBackgroundStyle = [(_UIApplicationInfoParser *)self->_plistParser canChangeBackgroundStyle];
  self->_backgroundStyle = [(_UIApplicationInfoParser *)self->_plistParser backgroundStyle];
  self->_statusBarHidden = [(_UIApplicationInfoParser *)self->_plistParser statusBarHidden];
  self->_requestedStatusBarStyle = [(_UIApplicationInfoParser *)self->_plistParser requestedStatusBarStyle];
  self->_statusBarHiddenWhenVerticallyCompact = [(_UIApplicationInfoParser *)self->_plistParser statusBarHiddenWhenVerticallyCompact];
  self->_ignoredOverrides = [(_UIApplicationInfoParser *)self->_plistParser ignoredOverrides];
  self->_viewControllerBasedStatusBarAppearance = [(_UIApplicationInfoParser *)self->_plistParser viewControllerBasedStatusBarAppearance];
  self->_systemWindowsSecure = [(_UIApplicationInfoParser *)self->_plistParser systemWindowsSecure];
  self->_optOutOfRTL = [(_UIApplicationInfoParser *)self->_plistParser optOutOfRTL];
  interfaceOrientation = [(_UIApplicationInfoParser *)self->_plistParser interfaceOrientation];
  v15.receiver = self;
  v15.super_class = _UIApplicationInfo;
  [(_UIApplicationInfo *)&v15 setInterfaceOrientation:interfaceOrientation];
  supportedInterfaceOrientations = [(_UIApplicationInfoParser *)self->_plistParser supportedInterfaceOrientations];
  v14.receiver = self;
  v14.super_class = _UIApplicationInfo;
  [(_UIApplicationInfo *)&v14 setSupportedInterfaceOrientations:supportedInterfaceOrientations];
  self->_launchingInterfaceOrientation = [(_UIApplicationInfoParser *)self->_plistParser launchingInterfaceOrientationForSpringBoard];
  self->_supportedUserInterfaceStyle = [(_UIApplicationInfoParser *)self->_plistParser supportedUserInterfaceStyle];
  objc_autoreleasePoolPop(v5);
}

+ (id)_localizedFolderNameForName:(id)name
{
  nameCopy = name;
  if (qword_1ED49A290 != -1)
  {
    dispatch_once(&qword_1ED49A290, &__block_literal_global_234_1);
  }

  v4 = [_MergedGlobals_3_10 objectForKeyedSubscript:nameCopy];
  if (v4)
  {
    v5 = [MEMORY[0x1E6982C40] _typeWithIdentifier:v4 allowUndeclared:1];
    [v5 localizedDescription];
  }

  else
  {
    v5 = _UIKitBundle();
    [v5 localizedStringForKey:nameCopy value:nameCopy table:0];
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

- (BOOL)statusBarHiddenForInterfaceOrientation:(int64_t)orientation onDisplay:(id)display withUserInterfaceIdiom:(int64_t)idiom
{
  displayCopy = display;
  if ([displayCopy isMainDisplay])
  {
    v9 = [(_UIApplicationInfo *)self statusBarHidden]|| [(_UIApplicationInfo *)self statusBarForcedHiddenForInterfaceOrientation:orientation onDisplay:displayCopy withUserInterfaceIdiom:idiom];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)statusBarForcedHiddenForInterfaceOrientation:(int64_t)orientation onDisplay:(id)display withUserInterfaceIdiom:(int64_t)idiom
{
  displayCopy = display;
  if ([displayCopy isMainDisplay] && -[_UIApplicationInfo statusBarHiddenWhenVerticallyCompact](self, "statusBarHiddenWhenVerticallyCompact") && (objc_msgSend(displayCopy, "bounds"), !idiom))
  {
    if ((orientation - 3) >= 2)
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

- (BOOL)statusBarHiddenForInterfaceOrientation:(int64_t)orientation onDisplay:(id)display
{
  displayCopy = display;
  v7 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v7 userInterfaceIdiom];

  v9 = +[UIDevice currentDevice];
  userInterfaceIdiom2 = [v9 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1 && ![(_UIApplicationInfo *)self supportsDeviceFamily:2])
  {
    userInterfaceIdiom = 0;
  }

  v11 = [(_UIApplicationInfo *)self statusBarHiddenForInterfaceOrientation:orientation onDisplay:displayCopy withUserInterfaceIdiom:userInterfaceIdiom];

  return v11;
}

- (BOOL)statusBarForcedHiddenForInterfaceOrientation:(int64_t)orientation onDisplay:(id)display
{
  displayCopy = display;
  v7 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v7 userInterfaceIdiom];

  v9 = +[UIDevice currentDevice];
  userInterfaceIdiom2 = [v9 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1 && ![(_UIApplicationInfo *)self supportsDeviceFamily:2])
  {
    userInterfaceIdiom = 0;
  }

  v11 = [(_UIApplicationInfo *)self statusBarForcedHiddenForInterfaceOrientation:orientation onDisplay:displayCopy withUserInterfaceIdiom:userInterfaceIdiom];

  return v11;
}

+ (id)_genreNameForID:(int64_t)d
{
  result = 0;
  switch(d)
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
      switch(d)
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
    selfCopy = self;
    v3 = objc_autoreleasePoolPush();
    v4 = MEMORY[0x1E69635E0];
    bundleIdentifier = [(_UIApplicationInfo *)selfCopy bundleIdentifier];
    v6 = [v4 applicationProxyForIdentifier:bundleIdentifier];

    if (v6)
    {
      array = [MEMORY[0x1E695DF70] array];
      if ([(_UIApplicationInfo *)selfCopy type]> 1)
      {
        v35 = v3;
        v38 = selfCopy;
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
        subgenres = [v6 subgenres];
        v19 = [subgenres bs_objectsOfClass:objc_opt_class()];

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
                [array addObject:v27];
              }
            }

            v21 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
          }

          while (v21);
        }

        v6 = v36;
        genreID = [v36 genreID];
        genre = [v36 genre];
        v30 = v17[2](v17, genreID, genre);

        if ([v30 length])
        {
          [array addObject:v30];
          firstObject = v30;
        }

        else
        {
          firstObject = 0;
        }

        v3 = v35;

        v9 = v45;
        selfCopy = v38;
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
          v37 = selfCopy;
          firstObject = 0;
          v13 = *v47;
          do
          {
            v14 = 0;
            v15 = firstObject;
            do
            {
              if (*v47 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v16 = [_UIApplicationInfo _localizedFolderNameForName:*(*(&v46 + 1) + 8 * v14)];
              if (v16)
              {
                [array addObject:v16];
              }

              firstObject = [array firstObject];

              ++v14;
              v15 = firstObject;
            }

            while (v11 != v14);
            v11 = [v9 countByEnumeratingWithState:&v46 objects:v51 count:16];
          }

          while (v11);
          selfCopy = v37;
        }

        else
        {
          firstObject = 0;
        }
      }

      if ([array count])
      {
        v31 = [array copy];
      }

      else
      {
        v31 = MEMORY[0x1E695E0F0];
      }

      lazy_folderNames = selfCopy->_lazy_folderNames;
      selfCopy->_lazy_folderNames = v31;

      v33 = [firstObject copy];
      lazy_fallbackFolderName = selfCopy->_lazy_fallbackFolderName;
      selfCopy->_lazy_fallbackFolderName = v33;
    }

    objc_autoreleasePoolPop(v3);
  }
}

@end