@interface SearchUIUtilities
+ (BOOL)appIsValidForBundleIdentifier:(id)a3;
+ (BOOL)bundleIdentifierIsBlockedForScreenTimeExpiration:(id)a3;
+ (BOOL)canShowViewController:(id)a3;
+ (BOOL)deviceIsInBiometryLockout;
+ (BOOL)deviceIsPasscodeLockedForView:(id)a3;
+ (BOOL)deviceSupportsRotation;
+ (BOOL)downloadDemotedAppIfNecessaryForBundleIdentifier:(id)a3 presentingViewControllerForExplanationAlert:(id)a4;
+ (BOOL)isAppInstalledWithBundleId:(id)a3;
+ (BOOL)isAppIntentsSupportEnabled;
+ (BOOL)isLargeIpad;
+ (BOOL)isMinimizedHardwareKeyboardMode;
+ (BOOL)isPortraitForWindow:(id)a3;
+ (BOOL)isSpotlightProcess;
+ (BOOL)resultBlockedForScreenTime:(id)a3;
+ (BOOL)resultIsSiriAction:(id)a3;
+ (BOOL)stringHasRegexMatch:(id)a3 regex:(id)a4;
+ (id)addAspectRatioConstraintForSize:(CGSize)a3 toView:(id)a4;
+ (id)bundleIdentifierForApp:(unint64_t)a3;
+ (id)cardForRenderingResult:(id)a3;
+ (id)cardSectionsForRenderingResult:(id)a3;
+ (id)environmentForDelegate:(id)a3;
+ (id)fileProviderItemIDForCoreSpotlightIdentifier:(id)a3 fileProviderIdentifier:(id)a4;
+ (id)fileProviderItemIDForFileResult:(id)a3;
+ (id)fmfHandlesFromContact:(id)a3;
+ (id)hyphenatableStringForString:(id)a3;
+ (id)imageForBlockedApp;
+ (id)localizedStringForKey:(id)a3;
+ (id)openApplicationOptions;
+ (id)pointerKeyMapTable;
+ (id)skHandlesFromContact:(id)a3;
+ (id)stringForSFRichText:(id)a3 emphasizedOnly:(BOOL)a4;
+ (id)stringForSFRichTextArray:(id)a3;
+ (id)stringHandlesFromContact:(id)a3;
+ (unint64_t)deviceAuthenticationStateForView:(id)a3;
+ (void)applyGaussianBlurToView:(id)a3 withRadius:(double)a4;
+ (void)fetchURLForCoreSpotlightIdentifier:(id)a3 fileProviderIdentifier:(id)a4 completionHandler:(id)a5;
+ (void)fetchURLForFileResult:(id)a3 completionHandler:(id)a4;
+ (void)imageDataFromImage:(id)a3 scale:(double)a4 isDarkStyle:(BOOL)a5 completion:(id)a6;
+ (void)openPunchout:(id)a3 completion:(id)a4;
+ (void)openURL:(id)a3 withCompletion:(id)a4;
+ (void)playNegativeHaptic;
+ (void)purgeMemory;
+ (void)requestClipInstallWithURL:(id)a3 completion:(id)a4;
+ (void)requestDeviceUnlock:(id)a3;
+ (void)requestDeviceUnlockWithSuccessHandler:(id)a3;
@end

@implementation SearchUIUtilities

+ (BOOL)isAppIntentsSupportEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v3 = MEMORY[0x1E69D9240];

    LOBYTE(v2) = [v3 isSpotlightApp];
  }

  return v2;
}

+ (void)purgeMemory
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"VKDidReceiveMemoryWarningNotification" object:0];

  [SearchUIUtilities dispatchAsyncIfNecessary:&__block_literal_global_220];
}

+ (id)pointerKeyMapTable
{
  v2 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:512 capacity:0];

  return v2;
}

+ (BOOL)isLargeIpad
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 _referenceBounds];
  v3 = CGRectGetHeight(v5) > 1195.0;

  return v3;
}

+ (id)hyphenatableStringForString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (hyphenatableStringForString__onceToken == -1)
  {
    if (v3)
    {
LABEL_3:
      v5 = objc_alloc(MEMORY[0x1E696AAB0]);
      v6 = [v5 initWithString:v4 attributes:hyphenatableStringForString__s_attributes];
      goto LABEL_6;
    }
  }

  else
  {
    +[SearchUIUtilities hyphenatableStringForString:];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

void __49__SearchUIUtilities_hyphenatableStringForString___block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v1 = [v0 mutableCopy];

  [v1 setAlignment:1];
  [v1 setLineBreakMode:4];
  LODWORD(v2) = 1.0;
  [v1 setHyphenationFactor:v2];
  [v1 setAllowsDefaultTighteningForTruncation:1];
  v5 = *MEMORY[0x1E69DB688];
  v6[0] = v1;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = hyphenatableStringForString__s_attributes;
  hyphenatableStringForString__s_attributes = v3;
}

+ (id)addAspectRatioConstraintForSize:(CGSize)a3 toView:(id)a4
{
  width = a3.width;
  v9 = 1.0;
  if (width != *MEMORY[0x1E69DE788] && a3.height > 0.0 && a3.height != *MEMORY[0x1E69DE788])
  {
    v9 = width / a3.height;
  }

  v11 = [MEMORY[0x1E696ACD8] constraintWithItem:a4 attribute:7 relatedBy:0 toItem:a4 attribute:8 multiplier:v9 constant:{0.0, v5, v4, v6}];
  [v11 setActive:1];

  return v11;
}

+ (BOOL)deviceSupportsRotation
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 _referenceBounds];
  v3 = CGRectGetHeight(v5) > 667.0;

  return v3;
}

+ (BOOL)isPortraitForWindow:(id)a3
{
  v3 = a3;
  if ([v3 isRotating])
  {
    v4 = [v3 _toWindowOrientation];
  }

  else
  {
    v4 = [v3 _windowInterfaceOrientation];
  }

  v5 = v4;

  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  v7 = [v6 interfaceOrientation];

  if (v5)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  return (v9 - 1) < 2;
}

+ (void)openPunchout:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [v7 preferredOpenableURL];
  v8 = [v7 hasClip];

  if (v8)
  {
    [a1 requestClipInstallWithURL:v9 completion:v6];
  }

  else
  {
    [a1 openURL:v9 withCompletion:v6];
  }
}

+ (void)requestClipInstallWithURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SearchUIGeneralLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA169000, v8, OS_LOG_TYPE_DEFAULT, "Punchout via clip services", buf, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x1E6994680]) initWithURL:v6];
  v10 = *MEMORY[0x1E6994670];
  v11 = [v9 sessionProxy];
  v12 = [v11 configuration];
  [v12 setLaunchReason:v10];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__SearchUIUtilities_requestClipInstallWithURL_completion___block_invoke;
  v15[3] = &unk_1E85B4940;
  v17 = v7;
  v18 = a1;
  v16 = v6;
  v13 = v7;
  v14 = v6;
  [v9 requestClipWithCompletion:v15];
}

void __58__SearchUIUtilities_requestClipInstallWithURL_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (!v5 && (a2 & 1) != 0)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))();
    }

    goto LABEL_14;
  }

  v7 = SearchUIGeneralLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (!v5)
  {
    if (v8)
    {
      __58__SearchUIUtilities_requestClipInstallWithURL_completion___block_invoke_cold_2(v7);
    }

    goto LABEL_13;
  }

  if (v8)
  {
    __58__SearchUIUtilities_requestClipInstallWithURL_completion___block_invoke_cold_1(v5, v7, v9, v10, v11, v12, v13, v14);
  }

  if ([v5 code] != 8)
  {
LABEL_13:
    [*(a1 + 48) openURL:*(a1 + 32) withCompletion:*(a1 + 40)];
  }

LABEL_14:
}

+ (void)openURL:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__SearchUIUtilities_openURL_withCompletion___block_invoke;
  v9[3] = &unk_1E85B3438;
  v8 = v6;
  v10 = v8;
  v11 = a1;
  [SearchUIUtilities dispatchAsyncIfNecessary:v9];
  if (v7)
  {
    v7[2](v7);
  }
}

void __44__SearchUIUtilities_openURL_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) openApplicationOptions];
  v13 = 0;
  [v2 openSensitiveURL:v3 withOptions:v4 error:&v13];
  v5 = v13;

  if (v5)
  {
    v6 = SearchUIGeneralLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__SearchUIUtilities_openURL_withCompletion___block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

+ (BOOL)isSpotlightProcess
{
  if (isSpotlightProcess_onceToken != -1)
  {
    +[SearchUIUtilities isSpotlightProcess];
  }

  return isSpotlightProcess_isSpotlightProcess;
}

void __39__SearchUIUtilities_isSpotlightProcess__block_invoke()
{
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v1 processName];
  isSpotlightProcess_isSpotlightProcess = [v0 isEqualToString:@"com.apple.Spotlight"];
}

+ (id)openApplicationOptions
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SearchUIUtilities_openApplicationOptions__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (openApplicationOptions_onceToken != -1)
  {
    dispatch_once(&openApplicationOptions_onceToken, block);
  }

  v2 = openApplicationOptions_options;

  return v2;
}

void __43__SearchUIUtilities_openApplicationOptions__block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E699F970]];
  if ([*(a1 + 32) isSpotlightProcess])
  {
    [v4 setObject:*MEMORY[0x1E69D4438] forKey:*MEMORY[0x1E699F940]];
  }

  v2 = [v4 copy];
  v3 = openApplicationOptions_options;
  openApplicationOptions_options = v2;
}

+ (unint64_t)deviceAuthenticationStateForView:(id)a3
{
  if (![a1 deviceIsPasscodeLockedForView:a3])
  {
    return 0;
  }

  if ([a1 deviceIsInBiometryLockout])
  {
    return 2;
  }

  return 1;
}

+ (BOOL)deviceIsPasscodeLockedForView:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a3 window];
  v4 = [v3 windowScene];
  v5 = [v4 _FBSScene];
  v6 = [v5 settings];
  v7 = [v6 displayConfiguration];
  v8 = [v7 identity];
  v9 = [v8 isContinuityDisplay];

  v10 = SearchUIGeneralLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:v9];
    *buf = 138412290;
    v19 = v11;
    _os_log_impl(&dword_1DA169000, v10, OS_LOG_TYPE_DEFAULT, "SearchUI isInOneness: %@", buf, 0xCu);
  }

  v16 = @"ExtendedDeviceLockState";
  v17 = *MEMORY[0x1E695E4D0];
  v12 = 1;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v14 = MKBGetDeviceLockState();
  if (v14 != 1)
  {
    v12 = v14 == 6 && !v9 || v14 == 2;
  }

  return v12;
}

+ (BOOL)deviceIsInBiometryLockout
{
  v2 = [MEMORY[0x1E696EE60] currentUser];
  v3 = [v2 state];
  v4 = [v3 biometry];
  v5 = [v4 isLockedOut];

  return v5;
}

+ (BOOL)canShowViewController:(id)a3
{
  v3 = a3;
  if ([v3 _canShowWhileLocked])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 view];
    v4 = [SearchUIUtilities deviceIsAuthenticatedForView:v5];
  }

  return v4;
}

+ (void)requestDeviceUnlockWithSuccessHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__SearchUIUtilities_requestDeviceUnlockWithSuccessHandler___block_invoke;
  v6[3] = &unk_1E85B2F88;
  v7 = v4;
  v5 = v4;
  [a1 requestDeviceUnlock:v6];
}

uint64_t __59__SearchUIUtilities_requestDeviceUnlockWithSuccessHandler___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

+ (void)requestDeviceUnlock:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__SearchUIUtilities_requestDeviceUnlock___block_invoke;
  v5[3] = &unk_1E85B2680;
  v6 = v3;
  v4 = v3;
  [SearchUIUtilities dispatchAsyncIfNecessary:v5];
}

void __41__SearchUIUtilities_requestDeviceUnlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  SBSRequestPasscodeUnlockUI();
}

void __41__SearchUIUtilities_requestDeviceUnlock___block_invoke_2(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __41__SearchUIUtilities_requestDeviceUnlock___block_invoke_3;
    v4[3] = &unk_1E85B4968;
    v5 = v2;
    v6 = a2;
    [SearchUIUtilities dispatchMainIfNecessary:v4];
  }
}

+ (void)playNegativeHaptic
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v2 = [v3 _tapticEngine];
  [v2 actuateFeedback:2];
}

+ (id)localizedStringForKey:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:&stru_1F55BC4E8 table:0];

  return v6;
}

+ (id)stringForSFRichText:(id)a3 emphasizedOnly:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 text];
  v7 = [v6 mutableCopy];

  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = objc_opt_new();

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v5 formattedTextPieces];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      v13 = !v4;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [v15 text];
          if ([v16 length] && (objc_msgSend(v15, "isEmphasized") | v13) == 1)
          {
            v17 = [v15 text];
            [v8 appendString:v17];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  return v8;
}

+ (id)stringForSFRichTextArray:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [SearchUIUtilities stringForSFRichText:*(*(&v12 + 1) + 8 * i), v12];
        if ([v10 length])
        {
          if ([v4 length])
          {
            [v4 appendString:@"\n"];
          }

          [v4 appendString:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (BOOL)appIsValidForBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = 1;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v3 allowPlaceholder:1 error:0];
  v6 = [v5 applicationState];
  v7 = [v6 isValid];

  if ((v7 & 1) == 0)
  {
    v8 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifierOfSystemPlaceholder:v3 error:0];
    v9 = [v8 applicationState];
    v4 = [v9 isValid];
  }

  return v4;
}

+ (BOOL)resultIsSiriAction:(id)a3
{
  v3 = [a3 contentType];
  v4 = [v3 hasPrefix:*MEMORY[0x1E696E598]];

  return v4;
}

+ (BOOL)bundleIdentifierIsBlockedForScreenTimeExpiration:(id)a3
{
  v3 = a3;
  v4 = +[SearchUIScreenTimeManager sharedInstance];
  v5 = [v4 getCachedObjectIfAvailableForKey:v3];

  LOBYTE(v4) = [v5 BOOLValue];
  return v4;
}

+ (BOOL)resultBlockedForScreenTime:(id)a3
{
  v3 = a3;
  v4 = [v3 applicationBundleIdentifier];
  v5 = [SearchUIUtilities bundleIdentifierIsBlockedForScreenTimeExpiration:v4];

  v6 = [v3 sectionBundleIdentifier];
  LOBYTE(v4) = [SearchUIUtilities bundleIdentifierIsBlockedForScreenTimeExpiration:v6];

  v7 = [v3 sectionBundleIdentifier];

  v8 = [SearchUIUtilities bundleIdentifierForApp:15];
  v9 = [v7 isEqualToString:v8];

  if (v4)
  {
    return 1;
  }

  else
  {
    return (v9 ^ 1) & v5;
  }
}

+ (id)imageForBlockedApp
{
  v2 = [[SearchUISymbolImage alloc] initWithSymbolName:@"hourglass.tophalf.fill"];

  return v2;
}

+ (BOOL)downloadDemotedAppIfNecessaryForBundleIdentifier:(id)a3 presentingViewControllerForExplanationAlert:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v5 allowPlaceholder:1 error:0];
  v8 = [v7 isPlaceholder];
  if (v8)
  {
    v9 = MEMORY[0x1E69A8CE8];
    v10 = [objc_alloc(MEMORY[0x1E69A8CF0]) initWithBundleID:v5];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __114__SearchUIUtilities_downloadDemotedAppIfNecessaryForBundleIdentifier_presentingViewControllerForExplanationAlert___block_invoke;
    v12[3] = &unk_1E85B3510;
    v13 = v6;
    v14 = v7;
    [v9 prioritizeCoordinatorForAppWithIdentity:v10 completion:v12];
  }

  return v8;
}

void __114__SearchUIUtilities_downloadDemotedAppIfNecessaryForBundleIdentifier_presentingViewControllerForExplanationAlert___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __114__SearchUIUtilities_downloadDemotedAppIfNecessaryForBundleIdentifier_presentingViewControllerForExplanationAlert___block_invoke_2;
  v5[3] = &unk_1E85B26A8;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  [SearchUIUtilities dispatchMainIfNecessary:v5];
}

void __114__SearchUIUtilities_downloadDemotedAppIfNecessaryForBundleIdentifier_presentingViewControllerForExplanationAlert___block_invoke_2(uint64_t a1)
{
  v2 = a1 + 32;
  if (*(a1 + 32))
  {
    v3 = SearchUIGeneralLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __114__SearchUIUtilities_downloadDemotedAppIfNecessaryForBundleIdentifier_presentingViewControllerForExplanationAlert___block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 40))
  {
    v10 = MEMORY[0x1E69DC650];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [SearchUIUtilities localizedStringForKey:@"REINSTALLING_APP_ALERT_TITLE_FORMAT"];
    v13 = [*(a1 + 48) localizedName];
    v14 = [v11 stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:0, v13];
    v15 = [SearchUIUtilities localizedStringForKey:@"REINSTALLING_APP_EXPLANATION"];
    v16 = [v10 alertControllerWithTitle:v14 message:v15 preferredStyle:1];

    v17 = MEMORY[0x1E69DC648];
    v18 = [SearchUIUtilities localizedStringForKey:@"CONFIRMATION_ACTION_TITLE"];
    v19 = [v17 actionWithTitle:v18 style:0 handler:0];

    [v16 addAction:v19];
    [v16 setPreferredAction:v19];
    [*(a1 + 40) presentViewController:v16 animated:1 completion:0];
  }
}

+ (id)bundleIdentifierForApp:(unint64_t)a3
{
  if (a3 > 0x1A)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.%@", off_1E85B49D8[a3]];
  }

  return v4;
}

+ (void)fetchURLForFileResult:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [v7 identifier];
  v8 = [v7 fileProviderIdentifier];

  [a1 fetchURLForCoreSpotlightIdentifier:v9 fileProviderIdentifier:v8 completionHandler:v6];
}

+ (id)fileProviderItemIDForFileResult:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 fileProviderIdentifier];

  v7 = [a1 fileProviderItemIDForCoreSpotlightIdentifier:v5 fileProviderIdentifier:v6];

  return v7;
}

+ (void)fetchURLForCoreSpotlightIdentifier:(id)a3 fileProviderIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [a1 fileProviderItemIDForCoreSpotlightIdentifier:a3 fileProviderIdentifier:a4];
  if (v9)
  {
    v10 = [MEMORY[0x1E69673B0] defaultManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __97__SearchUIUtilities_fetchURLForCoreSpotlightIdentifier_fileProviderIdentifier_completionHandler___block_invoke;
    v11[3] = &unk_1E85B3BC8;
    v12 = v8;
    [v10 fetchURLForItemID:v9 completionHandler:v11];
  }

  else
  {
    (*(v8 + 2))(v8, 0);
  }
}

+ (id)fileProviderItemIDForCoreSpotlightIdentifier:(id)a3 fileProviderIdentifier:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v13 = 0;
    v14 = 0;
    [MEMORY[0x1E69673A0] getDomainIdentifier:&v14 andIdentifier:&v13 fromCoreSpotlightIdentifier:v5];
    v8 = v14;
    v9 = v13;
    v10 = SearchUIGeneralLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v16 = v5;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_1DA169000, v10, OS_LOG_TYPE_DEFAULT, "SearchUIUtilities fileProviderItemIDForCoreSpotlightIdentifier: %@ fileProviderIdentifier: fileProviderIdentifier: %@ domainIdentifier: %@ itemIdentifier: %@", buf, 0x2Au);
    }

    v11 = [objc_alloc(MEMORY[0x1E69673A0]) initWithProviderID:v7 domainIdentifier:v8 itemIdentifier:v9];
  }

  else
  {
    v8 = SearchUIGeneralLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[SearchUIUtilities fileProviderItemIDForCoreSpotlightIdentifier:fileProviderIdentifier:];
    }

    v11 = 0;
  }

  return v11;
}

+ (id)environmentForDelegate:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 searchUICommandEnvironment];
  }

  else
  {
    v4 = objc_opt_new();
    [v4 setFeedbackDelegate:v3];
  }

  return v4;
}

+ (BOOL)isMinimizedHardwareKeyboardMode
{
  v2 = [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DCBB8] activeKeyboard];
    v4 = [v3 isMinimized];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (id)fmfHandlesFromContact:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [a1 stringHandlesFromContact:a3];
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x1E699BE18] handleWithId:{*(*(&v12 + 1) + 8 * i), v12}];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)stringHandlesFromContact:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [v3 emailAddresses];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v23 + 1) + 8 * i) value];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v3 phoneNumbers];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * j) value];
        v17 = [v16 unformattedInternationalStringValue];
        [v4 addObject:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  return v4;
}

+ (id)skHandlesFromContact:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [a1 stringHandlesFromContact:a3];
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x1E69D45E8]);
        v12 = [v11 initWithString:{v10, v14}];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (BOOL)isAppInstalledWithBundleId:(id)a3
{
  v3 = a3;
  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = SearchUIGeneralLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[SearchUIUtilities isAppInstalledWithBundleId:];
    }
  }

  v7 = [v4 applicationState];
  v8 = [v7 isInstalled];

  return v8;
}

+ (id)cardSectionsForRenderingResult:(id)a3
{
  v3 = [a1 cardForRenderingResult:a3];
  v4 = [v3 cardSections];

  return v4;
}

+ (id)cardForRenderingResult:(id)a3
{
  v4 = a3;
  v5 = [v4 inlineCard];
  v6 = [v5 cardSections];
  if (v6)
  {
    v7 = [v4 inlineCard];
  }

  else
  {
    v7 = 0;
  }

  if (([v4 usesCompactDisplay] & 1) != 0 || objc_msgSend(v4, "shouldUseCompactDisplay") && objc_msgSend(v4, "type") == 1 || !v7)
  {
    v8 = [v4 compactCard];
    v9 = [v8 cardSections];
    if (v9)
    {
      v10 = [v4 compactCard];
      goto LABEL_13;
    }

LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  if ([v4 usesTopHitDisplay])
  {
    goto LABEL_9;
  }

  v8 = [v4 sectionBundleIdentifier];
  if (![v8 isEqual:@"com.apple.spotlight.tophits"])
  {
    goto LABEL_15;
  }

  v13 = [a1 isSpotlightProcess];

  if (v13)
  {
LABEL_9:
    v8 = [v4 tophitCard];
    v9 = [v8 cardSections];
    if (v9)
    {
      v10 = [v4 tophitCard];
LABEL_13:
      v11 = v10;

      v7 = v11;
      goto LABEL_14;
    }

    goto LABEL_14;
  }

LABEL_16:

  return v7;
}

+ (void)applyGaussianBlurToView:(id)a3 withRadius:(double)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6979378];
  v6 = *MEMORY[0x1E6979928];
  v7 = a3;
  v8 = [v5 filterWithType:v6];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [v8 setValue:v9 forKey:@"inputRadius"];

  v12[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v11 = [v7 layer];

  [v11 setFilters:v10];
}

+ (BOOL)stringHasRegexMatch:(id)a3 regex:(id)a4
{
  v5 = a3;
  v11 = 0;
  v6 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:a4 options:0 error:&v11];
  if (v6)
  {
    v7 = v11 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = [v6 firstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
    v8 = v9 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)imageDataFromImage:(id)a3 scale:(double)a4 isDarkStyle:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = [SearchUIImage imageWithSFImage:a3];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__SearchUIUtilities_imageDataFromImage_scale_isDarkStyle_completion___block_invoke;
  v12[3] = &unk_1E85B49B8;
  v13 = v9;
  v11 = v9;
  [v10 loadImageWithScale:v6 isDarkStyle:v12 completionHandler:a4];
}

void __69__SearchUIUtilities_imageDataFromImage_scale_isDarkStyle_completion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    image = v5;
    v6 = UIImageHEICRepresentation(v5);
    if (!v6)
    {
      v6 = UIImageJPEGRepresentation(image, 1.0);
      if (!v6)
      {
        v6 = UIImagePNGRepresentation(image);
      }
    }

    v7 = v6;
    (*(*(a1 + 32) + 16))();

    v5 = image;
  }
}

@end