@interface ICInAppMessageUserNotificationCoordinator
+ (BOOL)scheduleNotificationWithPayload:(id)a3 forBundleIdentifier:(id)a4;
+ (id)_amsPushHandler;
+ (id)_centerForBundleIdentifier:(id)a3;
+ (id)_musicCenter;
+ (void)addBadgeIconForBundleIdentifier:(id)a3 completion:(id)a4;
+ (void)removeBadgeIconForBundleIdentifier:(id)a3 completion:(id)a4;
+ (void)removeNotificationWithIdentifier:(id)a3 forBundleIdentifier:(id)a4;
@end

@implementation ICInAppMessageUserNotificationCoordinator

+ (id)_centerForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 isEqualToString:@"com.apple.Music"])
    {
      v6 = [a1 _musicCenter];
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:v5];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)removeNotificationWithIdentifier:(id)a3 forBundleIdentifier:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 _centerForBundleIdentifier:a4];
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v7 removePendingNotificationRequestsWithIdentifiers:v8];

  v10 = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];

  [v7 removeDeliveredNotificationsWithIdentifiers:v9];
}

+ (BOOL)scheduleNotificationWithPayload:(id)a3 forBundleIdentifier:(id)a4
{
  v5 = a3;
  v6 = [a1 _amsPushHandler];
  v7 = [v6 shouldHandleNotification:v5];
  if (v7)
  {
    [v6 handleNotification:v5];
  }

  return v7;
}

+ (void)removeBadgeIconForBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a1 _centerForBundleIdentifier:a3];
  v8 = [v7 badgeNumber];
  v9 = [v8 unsignedIntegerValue];

  if (v9)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9 - 1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __91__ICInAppMessageUserNotificationCoordinator_removeBadgeIconForBundleIdentifier_completion___block_invoke;
    v11[3] = &unk_1E7BF77C0;
    v12 = v6;
    [v7 setBadgeNumber:v10 withCompletionHandler:v11];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

+ (void)addBadgeIconForBundleIdentifier:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a1 _centerForBundleIdentifier:a3];
  v8 = [a1 _musicCenter];
  v9 = [v7 isEqual:v8];

  v10 = [v7 badgeNumber];
  v11 = [v10 unsignedIntegerValue];

  if (v9 && v11 == 1)
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = a1;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Recieved a message to increment the badge count of the Music app when it already is badged with the number 1. The count will not be incremented.", buf, 0xCu);
    }

    v6[2](v6, 0);
  }

  else
  {
    if (v9)
    {
      v13 = &unk_1F2C92158;
    }

    else
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11 + 1];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__ICInAppMessageUserNotificationCoordinator_addBadgeIconForBundleIdentifier_completion___block_invoke;
    v14[3] = &unk_1E7BF77C0;
    v15 = v6;
    [v7 setBadgeNumber:v13 withCompletionHandler:v14];
  }
}

+ (id)_amsPushHandler
{
  if (_amsPushHandler_sOnceToken != -1)
  {
    dispatch_once(&_amsPushHandler_sOnceToken, &__block_literal_global_3);
  }

  v3 = _amsPushHandler_sharedPushHandler;

  return v3;
}

void __60__ICInAppMessageUserNotificationCoordinator__amsPushHandler__block_invoke()
{
  v3 = objc_alloc_init(MEMORY[0x1E698CB00]);
  [v3 setUserNotificationExtensionId:@"music-notification-default"];
  v0 = [MEMORY[0x1E698C7D8] bagForProfile:@"Music" profileVersion:@"1"];
  v1 = [objc_alloc(MEMORY[0x1E698CB08]) initWithConfiguration:v3 bag:v0];
  v2 = _amsPushHandler_sharedPushHandler;
  _amsPushHandler_sharedPushHandler = v1;
}

+ (id)_musicCenter
{
  if (_musicCenter_sOnceToken != -1)
  {
    dispatch_once(&_musicCenter_sOnceToken, &__block_literal_global_13232);
  }

  v3 = _musicCenter_sharedMusicCenter;

  return v3;
}

uint64_t __57__ICInAppMessageUserNotificationCoordinator__musicCenter__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:@"com.apple.Music"];
  v1 = _musicCenter_sharedMusicCenter;
  _musicCenter_sharedMusicCenter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end