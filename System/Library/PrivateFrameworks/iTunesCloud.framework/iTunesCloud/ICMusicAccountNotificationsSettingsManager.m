@interface ICMusicAccountNotificationsSettingsManager
+ (ICMusicAccountNotificationsSettingsManager)sharedManager;
- (id)_getSwitchesDependingOnSubscriptionStatus:(id)a3 withResponse:(id)a4 togglingSwitchesToValue:(BOOL)a5;
- (id)cachedAccountNotificationsNewMusicSwitch;
- (id)cachedAccountNotificationsShowInLibrarySwitch;
- (id)storeRequestContext;
- (void)getAccountNotificationsWithCompletionHandler:(id)a3;
- (void)setAccountNotificationsArtistContentFeature:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)setCachedAccountNotificationsNewMusicEnabled:(BOOL)a3;
- (void)setCachedAccountNotificationsShowInLibraryEnabled:(BOOL)a3;
@end

@implementation ICMusicAccountNotificationsSettingsManager

- (id)storeRequestContext
{
  v2 = [[ICStoreRequestContext alloc] initWithBlock:&__block_literal_global_13];

  return v2;
}

void __65__ICMusicAccountNotificationsSettingsManager_storeRequestContext__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = +[ICUserIdentity activeAccount];
  [v2 setIdentity:v5];
  v3 = [[ICURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [v2 setAuthenticationProvider:v3];

  [v2 setAllowsExpiredBags:1];
  v4 = [[ICClientInfo alloc] initWithBundleIdentifier:@"com.apple.Music"];
  [v2 setClientInfo:v4];
}

- (id)_getSwitchesDependingOnSubscriptionStatus:(id)a3 withResponse:(id)a4 togglingSwitchesToValue:(BOOL)a5
{
  v5 = a5;
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [a4 settingsSwitches];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      v14 = 0;
      v25 = v12;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        if (([v7 hasCapability:128] & 1) == 0)
        {
          v16 = [v15 identifier];
          if ([v16 isEqualToString:ICMusicAccountNotificationsSettingsSwitchArtistsAndShows])
          {
          }

          else
          {
            [v15 identifier];
            v17 = v13;
            v18 = v5;
            v19 = v7;
            v20 = v9;
            v22 = v21 = v10;
            v23 = [v22 isEqualToString:ICMusicAccountNotificationsSettingsSwitchShowInLibrary];

            v10 = v21;
            v9 = v20;
            v7 = v19;
            v5 = v18;
            v13 = v17;
            v12 = v25;

            if (!v23)
            {
              goto LABEL_11;
            }
          }
        }

        [v9 addObject:v15];
LABEL_11:
        [v15 setIsToggled:v5];
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  return v9;
}

- (id)cachedAccountNotificationsNewMusicSwitch
{
  v2 = +[ICDefaults standardDefaults];
  v3 = [v2 accountNotificationsShowInLibraryDictionary];

  v4 = [[ICMusicAccountNotificationsSettingsSwitch alloc] initWithItemResponseDictionary:v3];

  return v4;
}

- (void)setCachedAccountNotificationsNewMusicEnabled:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "AccountNotifications");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = self;
    v12 = 1024;
    v13 = v3;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Caching new music switch as %{BOOL}u.", &v10, 0x12u);
  }

  v6 = [ICMusicAccountNotificationsSettingsSwitch alloc];
  v7 = [(ICMusicAccountNotificationsSettingsSwitch *)v6 initWithToggleState:v3 hasBeenToggled:1 identifier:ICMusicAccountNotificationsSettingsSwitchArtistsAndShows];
  v8 = +[ICDefaults standardDefaults];
  v9 = [(ICMusicAccountNotificationsSettingsSwitch *)v7 itemResponseDictionary];
  [v8 setAccountNotificationsShowInLibraryDictionary:v9];
}

- (id)cachedAccountNotificationsShowInLibrarySwitch
{
  v2 = +[ICDefaults standardDefaults];
  v3 = [v2 accountNotificationsShowInLibraryDictionary];

  v4 = [[ICMusicAccountNotificationsSettingsSwitch alloc] initWithItemResponseDictionary:v3];

  return v4;
}

- (void)setCachedAccountNotificationsShowInLibraryEnabled:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "AccountNotifications");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = self;
    v12 = 1024;
    v13 = v3;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Caching show in library switch as %{BOOL}u.", &v10, 0x12u);
  }

  v6 = [ICMusicAccountNotificationsSettingsSwitch alloc];
  v7 = [(ICMusicAccountNotificationsSettingsSwitch *)v6 initWithToggleState:v3 hasBeenToggled:1 identifier:ICMusicAccountNotificationsSettingsSwitchShowInLibrary];
  v8 = +[ICDefaults standardDefaults];
  v9 = [(ICMusicAccountNotificationsSettingsSwitch *)v7 itemResponseDictionary];
  [v8 setAccountNotificationsShowInLibraryDictionary:v9];
}

- (void)setAccountNotificationsArtistContentFeature:(BOOL)a3 withCompletionHandler:(id)a4
{
  v4 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [ICMusicAccountNotificationsSettingsSwitch alloc];
  v8 = [(ICMusicAccountNotificationsSettingsSwitch *)v7 initWithToggleState:v4 hasBeenToggled:1 identifier:ICMusicAccountNotificationsSettingsSwitchShowInLibrary];
  v9 = os_log_create("com.apple.amp.iTunesCloud", "AccountNotifications");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = self;
    v22 = 1024;
    v23 = v4;
    _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting account notifications switches to: %{BOOL}u.", buf, 0x12u);
  }

  v10 = +[ICDefaults standardDefaults];
  v11 = [(ICMusicAccountNotificationsSettingsSwitch *)v8 itemResponseDictionary];
  [v10 setAccountNotificationsShowInLibraryDictionary:v11];

  v12 = [(ICMusicAccountNotificationsSettingsManager *)self storeRequestContext];
  v13 = [[ICMusicAccountNotificationsSettingsRequestOperation alloc] initWithRequestContext:v12 withRequestMethod:0];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __112__ICMusicAccountNotificationsSettingsManager_setAccountNotificationsArtistContentFeature_withCompletionHandler___block_invoke;
  v16[3] = &unk_1E7BF6168;
  v19 = v4;
  v16[4] = self;
  v17 = v12;
  v18 = v6;
  v14 = v6;
  v15 = v12;
  [(ICMusicAccountNotificationsSettingsRequestOperation *)v13 performRequestWithResponseHandler:v16];
}

void __112__ICMusicAccountNotificationsSettingsManager_setAccountNotificationsArtistContentFeature_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ICMusicSubscriptionStatusController sharedStatusController];
  v5 = +[ICUserIdentity activeAccount];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __112__ICMusicAccountNotificationsSettingsManager_setAccountNotificationsArtistContentFeature_withCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E7BF6140;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v3;
  v12 = *(a1 + 56);
  v10 = v6;
  v11 = *(a1 + 48);
  v7 = v3;
  [v4 getSubscriptionStatusForUserIdentity:v5 bypassingCache:1 withCompletionHandler:v8];
}

void __112__ICMusicAccountNotificationsSettingsManager_setAccountNotificationsArtistContentFeature_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _getSwitchesDependingOnSubscriptionStatus:a2 withResponse:*(a1 + 40) togglingSwitchesToValue:*(a1 + 64)];
  if ([v3 count])
  {
    v4 = [ICMusicAccountNotificationsSettingsResponse createResponseBodyWithSwitches:v3];
    v5 = [[ICMusicAccountNotificationsSettingsRequestOperation alloc] initWithRequestContext:*(a1 + 48) withRequestMethod:1 andBodyDictionary:v4];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __112__ICMusicAccountNotificationsSettingsManager_setAccountNotificationsArtistContentFeature_withCompletionHandler___block_invoke_3;
    v8[3] = &unk_1E7BF6118;
    v6 = *(a1 + 56);
    v8[4] = *(a1 + 32);
    v9 = v6;
    [(ICMusicAccountNotificationsSettingsRequestOperation *)v5 performRequestWithResponseHandler:v8];
  }

  else
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }
}

void __112__ICMusicAccountNotificationsSettingsManager_setAccountNotificationsArtistContentFeature_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, [v5 wasSuccessful]);
  }

  v8 = os_log_create("com.apple.amp.iTunesCloud", "AccountNotifications");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully retrieved account notifications switches response.", &v10, 0xCu);
  }
}

- (void)getAccountNotificationsWithCompletionHandler:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "AccountNotifications");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = self;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Retrieving account notifications switches.", buf, 0xCu);
  }

  v6 = [ICMusicAccountNotificationsSettingsRequestOperation alloc];
  v7 = [(ICMusicAccountNotificationsSettingsManager *)self storeRequestContext];
  v8 = [(ICMusicAccountNotificationsSettingsRequestOperation *)v6 initWithRequestContext:v7 withRequestMethod:0];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91__ICMusicAccountNotificationsSettingsManager_getAccountNotificationsWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E7BF6118;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [(ICMusicAccountNotificationsSettingsRequestOperation *)v8 performRequestWithResponseHandler:v10];
}

void __91__ICMusicAccountNotificationsSettingsManager_getAccountNotificationsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v20 = a3;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "AccountNotifications");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138543362;
    v28 = v7;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully retrieved account notifications switches.", buf, 0xCu);
  }

  v21 = v5;
  v8 = [v5 settingsSwitches];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 identifier];
        v15 = [v14 isEqualToString:ICMusicAccountNotificationsSettingsSwitchShowInLibrary];

        if (v15)
        {
          v16 = +[ICDefaults standardDefaults];
          v17 = [v13 itemResponseDictionary];
          [v16 setAccountNotificationsShowInLibraryDictionary:v17];
        }

        else
        {
          v18 = [v13 identifier];
          v19 = [v18 isEqualToString:ICMusicAccountNotificationsSettingsSwitchArtistsAndShows];

          if (!v19)
          {
            continue;
          }

          v16 = +[ICDefaults standardDefaults];
          v17 = [v13 itemResponseDictionary];
          [v16 setAccountNotificationsNewMusicDictionary:v17];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 40) + 16))();
}

+ (ICMusicAccountNotificationsSettingsManager)sharedManager
{
  if (sharedManager_sOnceToken_19212 != -1)
  {
    dispatch_once(&sharedManager_sOnceToken_19212, &__block_literal_global_19213);
  }

  v3 = sharedManager_sSharedManager_19214;

  return v3;
}

uint64_t __59__ICMusicAccountNotificationsSettingsManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(ICMusicAccountNotificationsSettingsManager);
  v1 = sharedManager_sSharedManager_19214;
  sharedManager_sSharedManager_19214 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end