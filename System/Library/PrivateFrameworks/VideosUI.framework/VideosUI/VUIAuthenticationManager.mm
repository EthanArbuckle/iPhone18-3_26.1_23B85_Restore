@interface VUIAuthenticationManager
+ (BOOL)_isLibraryOnlyCountry;
+ (BOOL)_isLibraryOnlyCountryResolved;
+ (BOOL)allowsAccountModification;
+ (BOOL)isLibraryOnlyCountry;
+ (BOOL)isLibraryOnlyCountryResolved;
+ (BOOL)lightWeightUserHasActiveAccount;
+ (BOOL)userHasActiveAccount;
+ (id)DSID;
+ (id)_profileImage;
+ (id)_userAccount;
+ (id)creditsString;
+ (id)identifier;
+ (id)monogramAvatarForSize:(CGSize)a3 scale:(double)a4 isRTL:(BOOL)a5;
+ (id)sharedInstance;
+ (id)storefrontId;
+ (id)userAccountName;
+ (id)userFirstName;
+ (id)userFullName;
+ (id)userLastName;
+ (id)userProfileImage;
+ (void)_performAuthenticationTask:(id)a3 isSilent:(BOOL)a4 completionHandler:(id)a5;
+ (void)_recordLog:(id)a3 isSignOut:(BOOL)a4 isSilent:(BOOL)a5;
+ (void)requestAuthenticationAlwaysPrompt:(BOOL)a3 withCompletionHandler:(id)a4;
+ (void)signInUserWithAppleID:(id)a3 password:(id)a4 completionHandler:(id)a5;
+ (void)signOutUserWithCompletionHandler:(id)a3;
- (BOOL)_shouldNotifyAccountChange:(id)a3 newAccount:(id)a4;
- (VUIAuthenticationManager)init;
- (void)_accountStoreDidChange:(id)a3;
- (void)_determineIfLibraryOnlyCountry;
- (void)_fetchProfileImage;
- (void)_setUpProfileImageStoreAndFetchProfileImage;
@end

@implementation VUIAuthenticationManager

+ (id)sharedInstance
{
  if (sharedInstance_once_0 != -1)
  {
    +[VUIAuthenticationManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_2;

  return v3;
}

- (void)_setUpProfileImageStoreAndFetchProfileImage
{
  v3 = objc_alloc_init(MEMORY[0x1E698BB40]);
  profilePictureStore = self->__profilePictureStore;
  self->__profilePictureStore = v3;

  [(VUIAuthenticationManager *)self _fetchProfileImage];
}

void __42__VUIAuthenticationManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIAuthenticationManager);
  v1 = sharedInstance_sharedInstance_2;
  sharedInstance_sharedInstance_2 = v0;
}

- (VUIAuthenticationManager)init
{
  v12.receiver = self;
  v12.super_class = VUIAuthenticationManager;
  v2 = [(VUIAuthenticationManager *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69D5920] activeAccount];
    activeUserAccount = v2->__activeUserAccount;
    v2->__activeUserAccount = v3;

    if (!v2->__activeUserAccount)
    {
      v5 = [MEMORY[0x1E69D5920] localAccount];
      localUserAccount = v2->__localUserAccount;
      v2->__localUserAccount = v5;
    }

    [(VUIAuthenticationManager *)v2 _setUpProfileImageStoreAndFetchProfileImage];
    if ([objc_opt_class() allowsAccountModification])
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 addObserver:v2 selector:sel__accountStoreDidChange_ name:*MEMORY[0x1E6959968] object:0];

      v8 = VUIDefaultLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "VUIAuthenticationManager: added observer to ACDAccountStoreDidChangeNotification", v11, 2u);
      }
    }

    *&v2->__isLibraryOnlyCountry = 0;
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_INFO, "VUIAuthenticationManager: resolving is library only country", v11, 2u);
    }

    [(VUIAuthenticationManager *)v2 _determineIfLibraryOnlyCountry];
  }

  return v2;
}

- (void)_determineIfLibraryOnlyCountry
{
  self->__isLibraryOnlyCountryResolved = 0;
  if (_os_feature_enabled_impl())
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __58__VUIAuthenticationManager__determineIfLibraryOnlyCountry__block_invoke;
    v4[3] = &unk_1E872F730;
    v4[4] = self;
    [_TtC8VideosUI22VUIBagServiceProxyObjC isFullTVAppEnabledWithCompletionHandler:v4];
  }

  else
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __58__VUIAuthenticationManager__determineIfLibraryOnlyCountry__block_invoke_68;
    v3[3] = &unk_1E872F758;
    v3[4] = self;
    [MEMORY[0x1E69E15F8] isFullTVAppEnabledwithCompletion:v3];
  }
}

- (void)_fetchProfileImage
{
  v3 = WLKIsRegulatedSKU();
  v4 = [MEMORY[0x1E69D5920] activeiCloudAccount];
  v5 = [MEMORY[0x1E69D5920] activeAccount];
  v6 = v5;
  if (!v3 || v4)
  {
    v11 = [v5 username];
    v12 = [v4 username];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      objc_initWeak(buf, self);
      profilePictureStore = self->__profilePictureStore;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __46__VUIAuthenticationManager__fetchProfileImage__block_invoke;
      v16[3] = &unk_1E872F780;
      objc_copyWeak(&v17, buf);
      [(AAUIProfilePictureStore *)profilePictureStore profilePictureForAccountOwnerWithCompletion:v16];
      objc_destroyWeak(&v17);
      objc_destroyWeak(buf);
    }

    else
    {
      profileImage = self->__profileImage;
      self->__profileImage = 0;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle"];
    v8 = self->__profileImage;
    self->__profileImage = v7;

    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_INFO, "VUIAuthenticationManager: used fallback profile image for China region without iCloud signed in, posting VUIAuthenticationManagerProfileImageDidChangeNotification", buf, 2u);
    }

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 postNotificationName:@"VUIAuthenticationManagerProfileImageDidChangeNotification" object:self userInfo:0];
  }
}

+ (BOOL)allowsAccountModification
{
  v2 = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
  v3 = [v2 allowsAccountModification];

  return v3;
}

+ (id)DSID
{
  v2 = [objc_opt_class() _userAccount];
  v3 = [v2 ams_DSID];

  return v3;
}

+ (id)_userAccount
{
  v2 = [objc_opt_class() sharedInstance];
  v3 = [v2 _activeUserAccount];
  objc_sync_enter(v3);
  v4 = [v2 _activeUserAccount];
  objc_sync_exit(v3);

  return v4;
}

+ (BOOL)isLibraryOnlyCountry
{
  v2 = objc_opt_class();

  return [v2 _isLibraryOnlyCountry];
}

+ (BOOL)_isLibraryOnlyCountry
{
  v2 = [objc_opt_class() sharedInstance];
  v3 = [v2 _isLibraryOnlyCountry];

  return v3;
}

void __58__VUIAuthenticationManager__determineIfLibraryOnlyCountry__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  WeakRetained[8] = *(a1 + 40) ^ 1;
  WeakRetained[9] = 1;
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40) ^ 1;
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "VUIAuthenticationManager: resolved is library only country to %d", v6, 8u);
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"VUIAuthenticationManagerIsLibraryOnlyCountryDidChangeNotification" object:WeakRetained userInfo:0];
}

+ (BOOL)isLibraryOnlyCountryResolved
{
  v2 = objc_opt_class();

  return [v2 _isLibraryOnlyCountryResolved];
}

+ (BOOL)_isLibraryOnlyCountryResolved
{
  v2 = [objc_opt_class() sharedInstance];
  v3 = [v2 _isLibraryOnlyCountryResolved];

  return v3;
}

+ (BOOL)lightWeightUserHasActiveAccount
{
  v2 = [MEMORY[0x1E69D5920] activeAccount];
  v3 = v2 != 0;

  return v3;
}

+ (BOOL)userHasActiveAccount
{
  v2 = [objc_opt_class() _userAccount];
  v3 = v2 != 0;

  return v3;
}

+ (id)userAccountName
{
  v2 = [objc_opt_class() _userAccount];
  v3 = [v2 username];

  return v3;
}

+ (id)userFirstName
{
  v2 = [objc_opt_class() _userAccount];
  v3 = [v2 accountPropertyForKey:*MEMORY[0x1E6959750]];

  return v3;
}

+ (id)userLastName
{
  v2 = [objc_opt_class() _userAccount];
  v3 = [v2 accountPropertyForKey:*MEMORY[0x1E6959788]];

  return v3;
}

+ (id)userFullName
{
  v2 = [objc_opt_class() _userAccount];
  v3 = [v2 userFullName];

  return v3;
}

+ (id)userProfileImage
{
  v2 = objc_opt_class();

  return [v2 _profileImage];
}

+ (id)identifier
{
  v2 = [objc_opt_class() _userAccount];
  v3 = [v2 identifier];

  return v3;
}

+ (id)creditsString
{
  v2 = [objc_opt_class() _userAccount];
  v3 = [v2 ams_creditsString];

  return v3;
}

+ (void)requestAuthenticationAlwaysPrompt:(BOOL)a3 withCompletionHandler:(id)a4
{
  v4 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v17[0] = 67109120;
    v17[1] = v4;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "VUIAuthenticationManager: requestAuthenticationAlwaysPrompt %d", v17, 8u);
  }

  v8 = objc_alloc_init(MEMORY[0x1E698C7B0]);
  v9 = !v4;
  [v8 setAuthenticationType:v9];
  [v8 setDebugReason:@"VideosUI requesting a prompted AMSAuthenticateRequest"];
  v10 = [a1 _userAccount];
  v11 = [objc_alloc(MEMORY[0x1E698C7B8]) initWithAccount:v10 options:v8];
  v12 = +[VUIApplicationRouter topMostVisibleViewController];
  if (!v12)
  {
    v13 = +[VUITVAppLauncher sharedInstance];
    v14 = [v13 appWindow];
    v12 = [v14 rootViewController];
  }

  v15 = [objc_alloc(MEMORY[0x1E698CC58]) initWithRequest:v11 presentingViewController:v12];
  v16 = [MEMORY[0x1E698C7D8] vui_defaultBag];
  [v15 setBag:v16];
  [a1 _performAuthenticationTask:v15 isSilent:v9 completionHandler:v6];
}

+ (void)signInUserWithAppleID:(id)a3 password:(id)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = VUIDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v18 = 138412290;
    v19 = v8;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_INFO, "VUIAuthenticationManager: signInUserWithAppleID %@", &v18, 0xCu);
  }

  v12 = objc_alloc_init(MEMORY[0x1E698C7B0]);
  [v12 setAuthenticationType:0];
  [v12 setDebugReason:@"VideosUI requesting a AMSAuthenticateRequest with appleID and password"];
  v13 = [objc_alloc(MEMORY[0x1E698C7B8]) initWithDSID:0 altDSID:0 username:v8 options:v12];
  v14 = +[VUIApplicationRouter topMostVisibleViewController];
  if (!v14)
  {
    v15 = +[VUITVAppLauncher sharedInstance];
    v16 = [v15 appWindow];
    v14 = [v16 rootViewController];
  }

  v17 = [objc_alloc(MEMORY[0x1E698CC58]) initWithRequest:v13 presentingViewController:v14];
  [v17 setRawPassword:v10];

  [a1 _performAuthenticationTask:v17 isSilent:0 completionHandler:v9];
}

+ (void)signOutUserWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "VUIAuthenticationManager: sign out", buf, 2u);
  }

  v6 = [objc_opt_class() _userAccount];
  v7 = v6;
  if (v6)
  {
    [v6 setActive:0];
    v8 = [MEMORY[0x1E69D5920] shared];
    v9 = [v8 ams_saveAccount:v7];

    v10 = [a1 sharedInstance];
    v11 = [v10 _signoutPromise];

    if (v11)
    {
      [v11 cancel];
    }

    v12 = [a1 sharedInstance];
    [v12 set_signoutPromise:v9];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__VUIAuthenticationManager_signOutUserWithCompletionHandler___block_invoke;
    v13[3] = &unk_1E872F690;
    v15 = a1;
    v14 = v4;
    [v9 addFinishBlock:v13];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 1, 0);
  }
}

void __61__VUIAuthenticationManager_signOutUserWithCompletionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v11 = __61__VUIAuthenticationManager_signOutUserWithCompletionHandler___block_invoke_2;
  v12 = &unk_1E872F668;
  v15 = a2;
  v13 = v5;
  v9 = *(a1 + 32);
  v6 = v9;
  v14 = v9;
  v7 = MEMORY[0x1E696AF00];
  v8 = v5;
  if ([v7 isMainThread])
  {
    v11(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __61__VUIAuthenticationManager_signOutUserWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = VUIDefaultLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __61__VUIAuthenticationManager_signOutUserWithCompletionHandler___block_invoke_2_cold_1(a1, v2);
    }

    [*(a1 + 48) _recordLog:*(a1 + 32) isSignOut:1 isSilent:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

+ (id)_profileImage
{
  v2 = [objc_opt_class() sharedInstance];
  v3 = [v2 _profileImage];

  return v3;
}

+ (void)_performAuthenticationTask:(id)a3 isSilent:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [a3 performAuthentication];
  if (v9)
  {
    v10 = [a1 sharedInstance];
    v11 = [v10 _authPromise];

    if (v11 && ([v11 isCancelled] & 1) == 0 && (objc_msgSend(v11, "isFinished") & 1) == 0)
    {
      [v11 cancel];
    }

    v12 = [a1 sharedInstance];
    [v12 set_authPromise:v9];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __82__VUIAuthenticationManager__performAuthenticationTask_isSilent_completionHandler___block_invoke;
    v14[3] = &unk_1E872F6E0;
    v16 = a1;
    v17 = a4;
    v15 = v8;
    [v9 addFinishBlock:v14];
  }

  else
  {
    v13 = VUIDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [VUIAuthenticationManager _performAuthenticationTask:v13 isSilent:? completionHandler:?];
    }

    if (v8)
    {
      (*(v8 + 2))(v8, 0, 0);
    }
  }
}

void __82__VUIAuthenticationManager__performAuthenticationTask_isSilent_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v13 = __82__VUIAuthenticationManager__performAuthenticationTask_isSilent_completionHandler___block_invoke_2;
  v14 = &unk_1E872F6B8;
  v15 = v5;
  v16 = v6;
  v18 = *(a1 + 48);
  v11 = *(a1 + 32);
  v7 = v11;
  v17 = v11;
  v8 = MEMORY[0x1E696AF00];
  v9 = v6;
  v10 = v5;
  if ([v8 isMainThread])
  {
    v13(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __82__VUIAuthenticationManager__performAuthenticationTask_isSilent_completionHandler___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && ([v2 account], (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = *(a1 + 40), v3, !v4))
  {
    v5 = 1;
  }

  else
  {
    [*(a1 + 56) _recordLog:*(a1 + 40) isSignOut:0 isSilent:*(a1 + 64)];
    v5 = 0;
  }

  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    v9[0] = 67109378;
    v9[1] = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_INFO, "VUIAuthenticationManager: finished auth with success %d, error: %@", v9, 0x12u);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, v5, *(a1 + 40));
  }

  return result;
}

- (void)_accountStoreDidChange:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "VUIAuthenticationManager: _accountStoreDidChange - notification %@", buf, 0xCu);
  }

  v6 = [v4 userInfo];
  v7 = [v6 vui_stringForKey:*MEMORY[0x1E69598B8]];
  v8 = [v7 isEqualToString:*MEMORY[0x1E6959930]];

  if (v8)
  {
    v9 = self;
    objc_sync_enter(v9);
    v10 = [MEMORY[0x1E69D5920] activeAccount];
    v11 = VUIDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_INFO, "VUIAuthenticationManager: _accountStoreDidChange - changedAccount %@", buf, 0xCu);
    }

    v12 = [objc_opt_class() _userAccount];
    objc_storeStrong(&v9->__activeUserAccount, v10);
    if ([(VUIAuthenticationManager *)v9 _shouldNotifyAccountChange:v12 newAccount:v10])
    {
      [(VUIAuthenticationManager *)v9 _setUpProfileImageStoreAndFetchProfileImage];

      objc_sync_exit(v9);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      v14 = __51__VUIAuthenticationManager__accountStoreDidChange___block_invoke;
      v15 = &unk_1E872D768;
      v16 = v9;
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        v14(block);
      }

      else
      {
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }

    else
    {

      objc_sync_exit(v9);
    }
  }
}

void __51__VUIAuthenticationManager__accountStoreDidChange___block_invoke(uint64_t a1)
{
  v2 = VUIDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_INFO, "VUIAuthenticationManager: ACDAccountStoreDidChangeNotification received, posting VUIAuthenticationManagerAccountStoreDidChangeNotification", v4, 2u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"VUIAuthenticationManagerAccountStoreDidChangeNotification" object:*(a1 + 32) userInfo:0];
}

- (BOOL)_shouldNotifyAccountChange:(id)a3 newAccount:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v18 = 0;
      v9 = "User logged out";
      v10 = &v18;
LABEL_9:
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, v9, v10, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (!v5 && v6)
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "User logged in";
      v10 = buf;
      goto LABEL_9;
    }

LABEL_10:

    v11 = 1;
    goto LABEL_11;
  }

  v11 = 0;
  if (v5 && v6)
  {
    v13 = [v5 identifier];
    v14 = [v7 identifier];
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      v11 = 0;
      goto LABEL_11;
    }

    v8 = VUIDefaultLogObject();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v16 = 0;
    v9 = "Account changed";
    v10 = &v16;
    goto LABEL_9;
  }

LABEL_11:

  return v11;
}

void __58__VUIAuthenticationManager__determineIfLibraryOnlyCountry__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  objc_initWeak(&location, *(a1 + 32));
  if (v5)
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __58__VUIAuthenticationManager__determineIfLibraryOnlyCountry__block_invoke_cold_1(a2, v5, v6);
    }
  }

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __58__VUIAuthenticationManager__determineIfLibraryOnlyCountry__block_invoke_66;
  v12 = &unk_1E872F708;
  objc_copyWeak(&v14, &location);
  v15 = a2;
  v7 = v5;
  v13 = v7;
  v8 = &v9;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v11(v8);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __58__VUIAuthenticationManager__determineIfLibraryOnlyCountry__block_invoke_66(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  WeakRetained[8] = *(a1 + 48) ^ 1;
  WeakRetained[9] = 1;
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 48) ^ 1;
    v5 = *(a1 + 32);
    v7[0] = 67109378;
    v7[1] = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "VUIAuthenticationManager: resolved is library only country to %d, error: %@", v7, 0x12u);
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"VUIAuthenticationManagerIsLibraryOnlyCountryDidChangeNotification" object:WeakRetained userInfo:0];
}

void __58__VUIAuthenticationManager__determineIfLibraryOnlyCountry__block_invoke_68(uint64_t a1, char a2)
{
  objc_initWeak(&location, *(a1 + 32));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = __58__VUIAuthenticationManager__determineIfLibraryOnlyCountry__block_invoke_2;
  v6 = &unk_1E872EDE0;
  objc_copyWeak(&v7, &location);
  v8 = a2;
  v3 = v4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5(v3);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v3);
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __46__VUIAuthenticationManager__fetchProfileImage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__VUIAuthenticationManager__fetchProfileImage__block_invoke_2;
  v5[3] = &unk_1E872F038;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __46__VUIAuthenticationManager__fetchProfileImage__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 7, *(a1 + 32));
    if (*(a1 + 32))
    {
      v4 = VUIDefaultLogObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6[0] = 0;
        _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_INFO, "VUIAuthenticationManager: recieved profile image, posting VUIAuthenticationManagerProfileImageDidChangeNotification", v6, 2u);
      }

      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 postNotificationName:@"VUIAuthenticationManagerProfileImageDidChangeNotification" object:v3 userInfo:0];
    }
  }
}

+ (id)monogramAvatarForSize:(CGSize)a3 scale:(double)a4 isRTL:(BOOL)a5
{
  v5 = a5;
  height = a3.height;
  width = a3.width;
  v19[1] = *MEMORY[0x1E69E9840];
  v9 = +[VUIAuthenticationManager userFirstName];
  v10 = +[VUIAuthenticationManager userLastName];
  v11 = objc_alloc_init(MEMORY[0x1E695CF18]);
  [v11 setGivenName:v9];
  [v11 setFamilyName:v10];
  v12 = objc_alloc(MEMORY[0x1E695D098]);
  v13 = [MEMORY[0x1E695D0A8] defaultSettings];
  v14 = [v12 initWithSettings:v13];

  v15 = [MEMORY[0x1E695D0B0] scopeWithPointSize:v5 scale:0 rightToLeft:width style:{height, a4}];
  v19[0] = v11;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v17 = [v14 avatarImageForContacts:v16 scope:v15];

  return v17;
}

+ (void)_recordLog:(id)a3 isSignOut:(BOOL)a4 isSilent:(BOOL)a5
{
  v31[4] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v6 = VUIMetricsLogAuthTypeValueSilentSignIn;
  }

  else
  {
    v6 = VUIMetricsLogAuthTypeValueSignIn;
  }

  if (a4)
  {
    v6 = VUIMetricsLogAuthTypeValueSignOut;
  }

  v7 = *v6;
  v31[0] = @"auth task failure";
  v30[0] = @"message";
  v30[1] = @"errorCode";
  v8 = MEMORY[0x1E696AD98];
  v9 = a3;
  v10 = [v8 numberWithLong:{objc_msgSend(v9, "code")}];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_1F5DB25C0;
  }

  v31[1] = v12;
  v30[2] = @"errorDomain";
  v13 = [v9 domain];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_1F5DB25C0;
  }

  v30[3] = @"authType";
  v31[2] = v15;
  v31[3] = v7;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];

  v17 = [v9 ams_underlyingError];

  if (v17)
  {
    v28[0] = @"underlyingErrorCode";
    v18 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(v17, "code")}];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_1F5DB25C0;
    }

    v29[0] = v20;
    v28[1] = @"underlyingErrorDomain";
    v21 = [v17 domain];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &stru_1F5DB25C0;
    }

    v29[1] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

    v25 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v16];
    [v25 addEntriesFromDictionary:v24];
    v26 = [v25 copy];

    v16 = v26;
  }

  v27 = +[VUIMetricsController sharedInstance];
  [v27 recordLog:v16];
}

+ (id)storefrontId
{
  v3 = [objc_opt_class() _userAccount];
  v4 = [v3 ams_storefront];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [a1 sharedInstance];
    v8 = [v7 _localUserAccount];
    v6 = [v8 ams_storefront];
  }

  return v6;
}

void __61__VUIAuthenticationManager_signOutUserWithCompletionHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "VUIAuthenticationManager: failed to sign out %@", &v3, 0xCu);
}

void __58__VUIAuthenticationManager__determineIfLibraryOnlyCountry__block_invoke_cold_1(char a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109378;
  v3[1] = a1 & 1;
  v4 = 2112;
  v5 = a2;
  _os_log_error_impl(&dword_1E323F000, log, OS_LOG_TYPE_ERROR, "[VUIAuthenticationManager]- isFullTVAppEnabled: %d, error: %@", v3, 0x12u);
}

@end