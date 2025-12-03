@interface SearchUIUtilities
+ (BOOL)appIsValidForBundleIdentifier:(id)identifier;
+ (BOOL)bundleIdentifierIsBlockedForScreenTimeExpiration:(id)expiration;
+ (BOOL)canShowViewController:(id)controller;
+ (BOOL)deviceIsInBiometryLockout;
+ (BOOL)deviceIsPasscodeLockedForView:(id)view;
+ (BOOL)deviceSupportsRotation;
+ (BOOL)downloadDemotedAppIfNecessaryForBundleIdentifier:(id)identifier presentingViewControllerForExplanationAlert:(id)alert;
+ (BOOL)isAppInstalledWithBundleId:(id)id;
+ (BOOL)isAppIntentsSupportEnabled;
+ (BOOL)isLargeIpad;
+ (BOOL)isMinimizedHardwareKeyboardMode;
+ (BOOL)isPortraitForWindow:(id)window;
+ (BOOL)isSpotlightProcess;
+ (BOOL)resultBlockedForScreenTime:(id)time;
+ (BOOL)resultIsSiriAction:(id)action;
+ (BOOL)stringHasRegexMatch:(id)match regex:(id)regex;
+ (id)addAspectRatioConstraintForSize:(CGSize)size toView:(id)view;
+ (id)bundleIdentifierForApp:(unint64_t)app;
+ (id)cardForRenderingResult:(id)result;
+ (id)cardSectionsForRenderingResult:(id)result;
+ (id)environmentForDelegate:(id)delegate;
+ (id)fileProviderItemIDForCoreSpotlightIdentifier:(id)identifier fileProviderIdentifier:(id)providerIdentifier;
+ (id)fileProviderItemIDForFileResult:(id)result;
+ (id)fmfHandlesFromContact:(id)contact;
+ (id)hyphenatableStringForString:(id)string;
+ (id)imageForBlockedApp;
+ (id)localizedStringForKey:(id)key;
+ (id)openApplicationOptions;
+ (id)pointerKeyMapTable;
+ (id)skHandlesFromContact:(id)contact;
+ (id)stringForSFRichText:(id)text emphasizedOnly:(BOOL)only;
+ (id)stringForSFRichTextArray:(id)array;
+ (id)stringHandlesFromContact:(id)contact;
+ (unint64_t)deviceAuthenticationStateForView:(id)view;
+ (void)applyGaussianBlurToView:(id)view withRadius:(double)radius;
+ (void)fetchURLForCoreSpotlightIdentifier:(id)identifier fileProviderIdentifier:(id)providerIdentifier completionHandler:(id)handler;
+ (void)fetchURLForFileResult:(id)result completionHandler:(id)handler;
+ (void)imageDataFromImage:(id)image scale:(double)scale isDarkStyle:(BOOL)style completion:(id)completion;
+ (void)openPunchout:(id)punchout completion:(id)completion;
+ (void)openURL:(id)l withCompletion:(id)completion;
+ (void)playNegativeHaptic;
+ (void)purgeMemory;
+ (void)requestClipInstallWithURL:(id)l completion:(id)completion;
+ (void)requestDeviceUnlock:(id)unlock;
+ (void)requestDeviceUnlockWithSuccessHandler:(id)handler;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"VKDidReceiveMemoryWarningNotification" object:0];

  [SearchUIUtilities dispatchAsyncIfNecessary:&__block_literal_global_220];
}

+ (id)pointerKeyMapTable
{
  v2 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:512 capacity:0];

  return v2;
}

+ (BOOL)isLargeIpad
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen _referenceBounds];
  v3 = CGRectGetHeight(v5) > 1195.0;

  return v3;
}

+ (id)hyphenatableStringForString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (hyphenatableStringForString__onceToken == -1)
  {
    if (stringCopy)
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

+ (id)addAspectRatioConstraintForSize:(CGSize)size toView:(id)view
{
  width = size.width;
  v9 = 1.0;
  if (width != *MEMORY[0x1E69DE788] && size.height > 0.0 && size.height != *MEMORY[0x1E69DE788])
  {
    v9 = width / size.height;
  }

  v11 = [MEMORY[0x1E696ACD8] constraintWithItem:view attribute:7 relatedBy:0 toItem:view attribute:8 multiplier:v9 constant:{0.0, v5, v4, v6}];
  [v11 setActive:1];

  return v11;
}

+ (BOOL)deviceSupportsRotation
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen _referenceBounds];
  v3 = CGRectGetHeight(v5) > 667.0;

  return v3;
}

+ (BOOL)isPortraitForWindow:(id)window
{
  windowCopy = window;
  if ([windowCopy isRotating])
  {
    _toWindowOrientation = [windowCopy _toWindowOrientation];
  }

  else
  {
    _toWindowOrientation = [windowCopy _windowInterfaceOrientation];
  }

  v5 = _toWindowOrientation;

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  interfaceOrientation = [mEMORY[0x1E69DC668] interfaceOrientation];

  if (v5)
  {
    v8 = windowCopy == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = interfaceOrientation;
  }

  else
  {
    v9 = v5;
  }

  return (v9 - 1) < 2;
}

+ (void)openPunchout:(id)punchout completion:(id)completion
{
  completionCopy = completion;
  punchoutCopy = punchout;
  preferredOpenableURL = [punchoutCopy preferredOpenableURL];
  hasClip = [punchoutCopy hasClip];

  if (hasClip)
  {
    [self requestClipInstallWithURL:preferredOpenableURL completion:completionCopy];
  }

  else
  {
    [self openURL:preferredOpenableURL withCompletion:completionCopy];
  }
}

+ (void)requestClipInstallWithURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = SearchUIGeneralLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA169000, v8, OS_LOG_TYPE_DEFAULT, "Punchout via clip services", buf, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x1E6994680]) initWithURL:lCopy];
  v10 = *MEMORY[0x1E6994670];
  sessionProxy = [v9 sessionProxy];
  configuration = [sessionProxy configuration];
  [configuration setLaunchReason:v10];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__SearchUIUtilities_requestClipInstallWithURL_completion___block_invoke;
  v15[3] = &unk_1E85B4940;
  v17 = completionCopy;
  selfCopy = self;
  v16 = lCopy;
  v13 = completionCopy;
  v14 = lCopy;
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

+ (void)openURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__SearchUIUtilities_openURL_withCompletion___block_invoke;
  v9[3] = &unk_1E85B3438;
  v8 = lCopy;
  v10 = v8;
  selfCopy = self;
  [SearchUIUtilities dispatchAsyncIfNecessary:v9];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
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
  block[4] = self;
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

+ (unint64_t)deviceAuthenticationStateForView:(id)view
{
  if (![self deviceIsPasscodeLockedForView:view])
  {
    return 0;
  }

  if ([self deviceIsInBiometryLockout])
  {
    return 2;
  }

  return 1;
}

+ (BOOL)deviceIsPasscodeLockedForView:(id)view
{
  v20 = *MEMORY[0x1E69E9840];
  window = [view window];
  windowScene = [window windowScene];
  _FBSScene = [windowScene _FBSScene];
  settings = [_FBSScene settings];
  displayConfiguration = [settings displayConfiguration];
  identity = [displayConfiguration identity];
  isContinuityDisplay = [identity isContinuityDisplay];

  v10 = SearchUIGeneralLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:isContinuityDisplay];
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
    v12 = v14 == 6 && !isContinuityDisplay || v14 == 2;
  }

  return v12;
}

+ (BOOL)deviceIsInBiometryLockout
{
  currentUser = [MEMORY[0x1E696EE60] currentUser];
  state = [currentUser state];
  biometry = [state biometry];
  isLockedOut = [biometry isLockedOut];

  return isLockedOut;
}

+ (BOOL)canShowViewController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy _canShowWhileLocked])
  {
    v4 = 1;
  }

  else
  {
    view = [controllerCopy view];
    v4 = [SearchUIUtilities deviceIsAuthenticatedForView:view];
  }

  return v4;
}

+ (void)requestDeviceUnlockWithSuccessHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__SearchUIUtilities_requestDeviceUnlockWithSuccessHandler___block_invoke;
  v6[3] = &unk_1E85B2F88;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [self requestDeviceUnlock:v6];
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

+ (void)requestDeviceUnlock:(id)unlock
{
  unlockCopy = unlock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__SearchUIUtilities_requestDeviceUnlock___block_invoke;
  v5[3] = &unk_1E85B2680;
  v6 = unlockCopy;
  v4 = unlockCopy;
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  _tapticEngine = [currentDevice _tapticEngine];
  [_tapticEngine actuateFeedback:2];
}

+ (id)localizedStringForKey:(id)key
{
  v3 = MEMORY[0x1E696AAE8];
  keyCopy = key;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:keyCopy value:&stru_1F55BC4E8 table:0];

  return v6;
}

+ (id)stringForSFRichText:(id)text emphasizedOnly:(BOOL)only
{
  onlyCopy = only;
  v24 = *MEMORY[0x1E69E9840];
  textCopy = text;
  text = [textCopy text];
  v7 = [text mutableCopy];

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
    formattedTextPieces = [textCopy formattedTextPieces];
    v10 = [formattedTextPieces countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      v13 = !onlyCopy;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(formattedTextPieces);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          text2 = [v15 text];
          if ([text2 length] && (objc_msgSend(v15, "isEmphasized") | v13) == 1)
          {
            text3 = [v15 text];
            [v8 appendString:text3];
          }
        }

        v11 = [formattedTextPieces countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  return v8;
}

+ (id)stringForSFRichTextArray:(id)array
{
  v17 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = arrayCopy;
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

+ (BOOL)appIsValidForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  isValid2 = 1;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:0];
  applicationState = [v5 applicationState];
  isValid = [applicationState isValid];

  if ((isValid & 1) == 0)
  {
    v8 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifierOfSystemPlaceholder:identifierCopy error:0];
    applicationState2 = [v8 applicationState];
    isValid2 = [applicationState2 isValid];
  }

  return isValid2;
}

+ (BOOL)resultIsSiriAction:(id)action
{
  contentType = [action contentType];
  v4 = [contentType hasPrefix:*MEMORY[0x1E696E598]];

  return v4;
}

+ (BOOL)bundleIdentifierIsBlockedForScreenTimeExpiration:(id)expiration
{
  expirationCopy = expiration;
  v4 = +[SearchUIScreenTimeManager sharedInstance];
  v5 = [v4 getCachedObjectIfAvailableForKey:expirationCopy];

  LOBYTE(v4) = [v5 BOOLValue];
  return v4;
}

+ (BOOL)resultBlockedForScreenTime:(id)time
{
  timeCopy = time;
  applicationBundleIdentifier = [timeCopy applicationBundleIdentifier];
  v5 = [SearchUIUtilities bundleIdentifierIsBlockedForScreenTimeExpiration:applicationBundleIdentifier];

  sectionBundleIdentifier = [timeCopy sectionBundleIdentifier];
  LOBYTE(applicationBundleIdentifier) = [SearchUIUtilities bundleIdentifierIsBlockedForScreenTimeExpiration:sectionBundleIdentifier];

  sectionBundleIdentifier2 = [timeCopy sectionBundleIdentifier];

  v8 = [SearchUIUtilities bundleIdentifierForApp:15];
  v9 = [sectionBundleIdentifier2 isEqualToString:v8];

  if (applicationBundleIdentifier)
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

+ (BOOL)downloadDemotedAppIfNecessaryForBundleIdentifier:(id)identifier presentingViewControllerForExplanationAlert:(id)alert
{
  identifierCopy = identifier;
  alertCopy = alert;
  v7 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:0];
  isPlaceholder = [v7 isPlaceholder];
  if (isPlaceholder)
  {
    v9 = MEMORY[0x1E69A8CE8];
    v10 = [objc_alloc(MEMORY[0x1E69A8CF0]) initWithBundleID:identifierCopy];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __114__SearchUIUtilities_downloadDemotedAppIfNecessaryForBundleIdentifier_presentingViewControllerForExplanationAlert___block_invoke;
    v12[3] = &unk_1E85B3510;
    v13 = alertCopy;
    v14 = v7;
    [v9 prioritizeCoordinatorForAppWithIdentity:v10 completion:v12];
  }

  return isPlaceholder;
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

+ (id)bundleIdentifierForApp:(unint64_t)app
{
  if (app > 0x1A)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.%@", off_1E85B49D8[app]];
  }

  return v4;
}

+ (void)fetchURLForFileResult:(id)result completionHandler:(id)handler
{
  handlerCopy = handler;
  resultCopy = result;
  identifier = [resultCopy identifier];
  fileProviderIdentifier = [resultCopy fileProviderIdentifier];

  [self fetchURLForCoreSpotlightIdentifier:identifier fileProviderIdentifier:fileProviderIdentifier completionHandler:handlerCopy];
}

+ (id)fileProviderItemIDForFileResult:(id)result
{
  resultCopy = result;
  identifier = [resultCopy identifier];
  fileProviderIdentifier = [resultCopy fileProviderIdentifier];

  v7 = [self fileProviderItemIDForCoreSpotlightIdentifier:identifier fileProviderIdentifier:fileProviderIdentifier];

  return v7;
}

+ (void)fetchURLForCoreSpotlightIdentifier:(id)identifier fileProviderIdentifier:(id)providerIdentifier completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = [self fileProviderItemIDForCoreSpotlightIdentifier:identifier fileProviderIdentifier:providerIdentifier];
  if (v9)
  {
    defaultManager = [MEMORY[0x1E69673B0] defaultManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __97__SearchUIUtilities_fetchURLForCoreSpotlightIdentifier_fileProviderIdentifier_completionHandler___block_invoke;
    v11[3] = &unk_1E85B3BC8;
    v12 = handlerCopy;
    [defaultManager fetchURLForItemID:v9 completionHandler:v11];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

+ (id)fileProviderItemIDForCoreSpotlightIdentifier:(id)identifier fileProviderIdentifier:(id)providerIdentifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  providerIdentifierCopy = providerIdentifier;
  v7 = providerIdentifierCopy;
  if (identifierCopy && providerIdentifierCopy)
  {
    v13 = 0;
    v14 = 0;
    [MEMORY[0x1E69673A0] getDomainIdentifier:&v14 andIdentifier:&v13 fromCoreSpotlightIdentifier:identifierCopy];
    v8 = v14;
    v9 = v13;
    v10 = SearchUIGeneralLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v16 = identifierCopy;
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

+ (id)environmentForDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (objc_opt_respondsToSelector())
  {
    searchUICommandEnvironment = [delegateCopy searchUICommandEnvironment];
  }

  else
  {
    searchUICommandEnvironment = objc_opt_new();
    [searchUICommandEnvironment setFeedbackDelegate:delegateCopy];
  }

  return searchUICommandEnvironment;
}

+ (BOOL)isMinimizedHardwareKeyboardMode
{
  isInHardwareKeyboardMode = [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode];
  if (isInHardwareKeyboardMode)
  {
    activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
    isMinimized = [activeKeyboard isMinimized];

    LOBYTE(isInHardwareKeyboardMode) = isMinimized;
  }

  return isInHardwareKeyboardMode;
}

+ (id)fmfHandlesFromContact:(id)contact
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [self stringHandlesFromContact:contact];
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

+ (id)stringHandlesFromContact:(id)contact
{
  v29 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v4 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  emailAddresses = [contactCopy emailAddresses];
  v6 = [emailAddresses countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(emailAddresses);
        }

        value = [*(*(&v23 + 1) + 8 * i) value];
        [v4 addObject:value];
      }

      v7 = [emailAddresses countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  phoneNumbers = [contactCopy phoneNumbers];
  v12 = [phoneNumbers countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(phoneNumbers);
        }

        value2 = [*(*(&v19 + 1) + 8 * j) value];
        unformattedInternationalStringValue = [value2 unformattedInternationalStringValue];
        [v4 addObject:unformattedInternationalStringValue];
      }

      v13 = [phoneNumbers countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  return v4;
}

+ (id)skHandlesFromContact:(id)contact
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [self stringHandlesFromContact:contact];
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

+ (BOOL)isAppInstalledWithBundleId:(id)id
{
  idCopy = id;
  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:idCopy allowPlaceholder:0 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = SearchUIGeneralLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[SearchUIUtilities isAppInstalledWithBundleId:];
    }
  }

  applicationState = [v4 applicationState];
  isInstalled = [applicationState isInstalled];

  return isInstalled;
}

+ (id)cardSectionsForRenderingResult:(id)result
{
  v3 = [self cardForRenderingResult:result];
  cardSections = [v3 cardSections];

  return cardSections;
}

+ (id)cardForRenderingResult:(id)result
{
  resultCopy = result;
  inlineCard = [resultCopy inlineCard];
  cardSections = [inlineCard cardSections];
  if (cardSections)
  {
    inlineCard2 = [resultCopy inlineCard];
  }

  else
  {
    inlineCard2 = 0;
  }

  if (([resultCopy usesCompactDisplay] & 1) != 0 || objc_msgSend(resultCopy, "shouldUseCompactDisplay") && objc_msgSend(resultCopy, "type") == 1 || !inlineCard2)
  {
    compactCard = [resultCopy compactCard];
    cardSections2 = [compactCard cardSections];
    if (cardSections2)
    {
      compactCard2 = [resultCopy compactCard];
      goto LABEL_13;
    }

LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  if ([resultCopy usesTopHitDisplay])
  {
    goto LABEL_9;
  }

  compactCard = [resultCopy sectionBundleIdentifier];
  if (![compactCard isEqual:@"com.apple.spotlight.tophits"])
  {
    goto LABEL_15;
  }

  isSpotlightProcess = [self isSpotlightProcess];

  if (isSpotlightProcess)
  {
LABEL_9:
    compactCard = [resultCopy tophitCard];
    cardSections2 = [compactCard cardSections];
    if (cardSections2)
    {
      compactCard2 = [resultCopy tophitCard];
LABEL_13:
      v11 = compactCard2;

      inlineCard2 = v11;
      goto LABEL_14;
    }

    goto LABEL_14;
  }

LABEL_16:

  return inlineCard2;
}

+ (void)applyGaussianBlurToView:(id)view withRadius:(double)radius
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6979378];
  v6 = *MEMORY[0x1E6979928];
  viewCopy = view;
  v8 = [v5 filterWithType:v6];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:radius];
  [v8 setValue:v9 forKey:@"inputRadius"];

  v12[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  layer = [viewCopy layer];

  [layer setFilters:v10];
}

+ (BOOL)stringHasRegexMatch:(id)match regex:(id)regex
{
  matchCopy = match;
  v11 = 0;
  v6 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:regex options:0 error:&v11];
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
    v9 = [v6 firstMatchInString:matchCopy options:0 range:{0, objc_msgSend(matchCopy, "length")}];
    v8 = v9 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)imageDataFromImage:(id)image scale:(double)scale isDarkStyle:(BOOL)style completion:(id)completion
{
  styleCopy = style;
  completionCopy = completion;
  v10 = [SearchUIImage imageWithSFImage:image];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__SearchUIUtilities_imageDataFromImage_scale_isDarkStyle_completion___block_invoke;
  v12[3] = &unk_1E85B49B8;
  v13 = completionCopy;
  v11 = completionCopy;
  [v10 loadImageWithScale:styleCopy isDarkStyle:v12 completionHandler:scale];
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