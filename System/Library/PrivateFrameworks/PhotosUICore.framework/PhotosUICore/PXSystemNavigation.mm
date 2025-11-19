@interface PXSystemNavigation
+ (id)_urlForDestination:(int64_t)a3;
+ (void)navigateToDestination:(int64_t)a3 completion:(id)a4;
@end

@implementation PXSystemNavigation

+ (void)navigateToDestination:(int64_t)a3 completion:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (a3 <= 0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PXSystemNavigation.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"destination > PXSystemNavigationDestinationInvalid"}];
  }

  else
  {
    if (a3 < 0xE)
    {
      goto LABEL_3;
    }

    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PXSystemNavigation.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"destination < PXSystemNavigationDestinationEndMarker"}];
  }

LABEL_3:
  v8 = [objc_opt_class() _urlForDestination:a3];
  v9 = [MEMORY[0x1E6963608] defaultWorkspace];
  v10 = *MEMORY[0x1E699F970];
  v22[0] = *MEMORY[0x1E699F990];
  v22[1] = v10;
  v23[0] = MEMORY[0x1E695E118];
  v23[1] = MEMORY[0x1E695E118];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v21 = 0;
  v12 = [v9 openSensitiveURL:v8 withOptions:v11 error:&v21];
  v13 = v21;

  if ((v12 & 1) == 0)
  {
    v14 = v8;
    v15 = v13;
    v16 = PLUIGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = PXSystemNavigationDestinationDescription(a3);
      v18 = [v15 domain];
      v19 = [v15 code];
      *buf = 138544386;
      v25 = v17;
      v26 = 2114;
      v27 = v14;
      v28 = 2114;
      v29 = v18;
      v30 = 2048;
      v31 = v19;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "Failed to navigate to destination: %{public}@, url: %{public}@, error: <%{public}@:%ld> (%@)", buf, 0x34u);
    }
  }

  if (v7)
  {
    v7[2](v7, v12, v13);
  }
}

+ (id)_urlForDestination:(int64_t)a3
{
  switch(a3)
  {
    case 0:
    case 14:
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:a1 file:@"PXSystemNavigation.m" lineNumber:184 description:@"Code which should be unreachable has been reached"];

      abort();
    case 1:
      v6 = @"prefs:";
      break;
    case 2:
      v6 = @"prefs:root=General&path=STORAGE_MGMT";
      break;
    case 3:
      v6 = @"prefs:root=APPLE_ACCOUNT";
      break;
    case 4:
      v6 = @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE";
      break;
    case 5:
      v6 = @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/STORAGE_AND_BACKUP/PHOTOS";
      break;
    case 6:
      v6 = @"settings-navigation://com.apple.Settings.Apps/com.apple.mobileslideshow/SharedLibrarySettingsButton";
      break;
    case 7:
      v6 = @"settings-navigation://com.apple.Settings.Apps/com.apple.mobileslideshow";
      break;
    case 8:
      v6 = @"prefs:root=ACCOUNTS_AND_PASSWORDS&path=ADD_ACCOUNT";
      break;
    case 9:
      v6 = @"prefs:root=MOBILE_DATA_SETTINGS_ID&path=SHOW_ALL";
      break;
    case 10:
      v6 = @"prefs:root=ROOT#AIRPLANE_MODE";
      break;
    case 11:
      v6 = @"https://icq.icloud.com?context=ZXh0ZXJuYWxBcHBfY29tLmFwcGxlLm1vYmlsZXNsaWRlc2hvdw==";
      break;
    case 12:
      v6 = @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/BACKUP";
      break;
    case 13:
      v6 = @"prefs:root=Privacy&path=MEDIALIBRARY";
      break;
    default:
      v6 = 0;
      break;
  }

  v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = PXSystemNavigationDestinationDescription(a3);
    [v9 handleFailureInMethod:a2 object:a1 file:@"PXSystemNavigation.m" lineNumber:223 description:{@"No URL for destination: %@", v10}];
  }

  return v7;
}

@end