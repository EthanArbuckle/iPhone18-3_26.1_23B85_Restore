@interface NCNotificationAction(Bulletin)
+ (id)_notificationActionForAction:()Bulletin bulletin:observer:;
+ (id)notificationActionForAction:()Bulletin bulletin:observer:;
+ (id)notificationActionForDefaultAction:()Bulletin bulletin:observer:;
+ (id)notificationActionForDismissAction:()Bulletin bulletin:observer:;
+ (id)notificationActionForFollowActivityAction:()Bulletin bulletin:observer:;
+ (id)notificationActionForSilenceAction:()Bulletin bulletin:observer:;
+ (id)notificationActionForUNNotificationAction:()Bulletin bulletin:observer:;
+ (id)userNotificationActionForNCNotificationAction:()Bulletin;
+ (uint64_t)isSiriActionCandidate:()Bulletin contentType:;
@end

@implementation NCNotificationAction(Bulletin)

+ (id)notificationActionForAction:()Bulletin bulletin:observer:
{
  v1 = [a1 _notificationActionForAction:? bulletin:? observer:?];
  v2 = [v1 copy];

  return v2;
}

+ (id)notificationActionForDefaultAction:()Bulletin bulletin:observer:
{
  if (a3)
  {
    v3 = [a1 _notificationActionForAction:? bulletin:? observer:?];
    [v3 setIdentifier:*MEMORY[0x277CE20E8]];
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)notificationActionForDismissAction:()Bulletin bulletin:observer:
{
  v8 = a3;
  v9 = [a1 _notificationActionForAction:v8 bulletin:a4 observer:a5];
  [v9 setIdentifier:*MEMORY[0x277CE20F0]];
  [v9 setActivationMode:0];
  if (v8)
  {
    v10 = [v8 shouldDismissBulletin];
  }

  else
  {
    v10 = 1;
  }

  [v9 setShouldDismissNotification:v10];
  v11 = [v9 copy];

  return v11;
}

+ (id)notificationActionForSilenceAction:()Bulletin bulletin:observer:
{
  v1 = [a1 _notificationActionForAction:? bulletin:? observer:?];
  [v1 setIdentifier:*MEMORY[0x277CE2120]];
  [v1 setActivationMode:0];
  v2 = [v1 copy];

  return v2;
}

+ (id)notificationActionForFollowActivityAction:()Bulletin bulletin:observer:
{
  if (a3)
  {
    v3 = [a1 _notificationActionForAction:? bulletin:? observer:?];
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_notificationActionForAction:()Bulletin bulletin:observer:
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v7 appearance];
  v11 = objc_alloc_init(MEMORY[0x277D77DF8]);
  v12 = [v7 identifier];
  [v11 setIdentifier:v12];

  v13 = [v10 title];
  [v11 setTitle:v13];

  v14 = [v7 activationMode];
  if (v14 == 1)
  {
    v15 = 2;
  }

  else
  {
    v15 = v14 == 0;
  }

  [v11 setActivationMode:v15];
  [v11 setRequiresAuthentication:{objc_msgSend(v7, "isAuthenticationRequired")}];
  v16 = [v7 launchURL];
  [v11 setLaunchURL:v16];

  v17 = [v7 launchBundleID];
  [v11 setLaunchBundleID:v17];

  [v11 setBehavior:{objc_msgSend(v7, "behavior") == 1}];
  v18 = [v7 behaviorParameters];
  [v11 setBehaviorParameters:v18];

  if (v7)
  {
    v19 = [v7 appearance];
    [v11 setDestructiveAction:{objc_msgSend(v19, "style") == 1}];
  }

  else
  {
    [v11 setDestructiveAction:0];
  }

  [v11 setShouldDismissNotification:{objc_msgSend(v7, "shouldDismissBulletin")}];
  v20 = [v10 image];
  v21 = [v20 name];
  [v11 setIconImageName:v21];

  v22 = [v20 bundlePath];
  [v11 setIconImageBundlePath:v22];

  v23 = MEMORY[0x277D77E30];
  v24 = [v9 contentType];
  [v11 setIsSiriActionCandidate:{objc_msgSend(v23, "isSiriActionCandidate:contentType:", v9, v24)}];

  v25 = [[NCBulletinActionRunner alloc] initWithAction:v7 bulletin:v9 observer:v8];
  [v11 setActionRunner:v25];

  return v11;
}

+ (uint64_t)isSiriActionCandidate:()Bulletin contentType:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if ([v6 isEqualToString:*MEMORY[0x277CF34D0]])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v7 isEqualToString:*MEMORY[0x277CF34C8]];
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v5 intentIDs];
    if ([v14 containsObject:v11])
    {
      v15 = [v5 intentIDs];
      v16 = [v15 containsObject:v13];
    }

    else
    {
      v16 = 0;
    }

    v9 = v8 & v16;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)notificationActionForUNNotificationAction:()Bulletin bulletin:observer:
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277D77DF8];
  v35 = a5;
  v10 = objc_alloc_init(v9);
  v11 = [v7 identifier];
  [v10 setIdentifier:v11];

  v12 = [v7 title];
  [v10 setTitle:v12];

  v34 = [v7 options] & 4;
  if (v34)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  [v10 setActivationMode:v13];
  v33 = [v7 options];
  [v10 setRequiresAuthentication:v33 & 1];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  [v10 setBehavior:isKindOfClass & 1];
  v15 = [v7 options];
  v16 = v15;
  [v10 setDestructiveAction:(v15 >> 1) & 1];
  v17 = [v7 options];
  v18 = v17;
  [v10 setShouldDismissNotification:(*&v17 & 0x10000) == 0];
  v19 = [v7 icon];
  v20 = [v19 imageName];
  [v10 setIconImageName:v20];

  v36 = v8;
  if ([v19 isSystemIcon])
  {
    v21 = 0;
  }

  else
  {
    v21 = [v8 sectionBundlePath];
  }

  [v10 setIconImageBundlePath:v21];
  v22 = MEMORY[0x277CF3500];
  v23 = [v7 identifier];
  v24 = [v7 title];
  v25 = [v22 actionWithIdentifier:v23 title:v24];

  [v25 setActionType:7];
  [v25 setActivationMode:(v34 >> 2) ^ 1];
  [v25 setAuthenticationRequired:v33 & 1];
  [v25 setBehavior:isKindOfClass & 1];
  [v25 setShouldDismissBulletin:(*&v18 & 0x10000) == 0];
  if ((v16 & 2) != 0)
  {
    v26 = [v25 appearance];
    [v26 setStyle:1];
  }

  if (v19)
  {
    v27 = [v25 appearance];
    v28 = MEMORY[0x277CF3538];
    v29 = [v19 imageName];
    v30 = [v28 imageWithName:v29 inBundlePath:v21];
    [v27 setImage:v30];
  }

  v31 = [[NCBulletinActionRunner alloc] initWithAction:v25 bulletin:v36 observer:v35];

  [v10 setActionRunner:v31];

  return v10;
}

+ (id)userNotificationActionForNCNotificationAction:()Bulletin
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v3 title];
  v6 = v5;
  v7 = &stru_282FE84F8;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  [v3 activationMode];
  [v3 requiresAuthentication];
  [v3 isDestructiveAction];
  v9 = [v3 iconImageName];
  if (v9)
  {
    v10 = [v3 iconImageBundlePath];
    if ([v10 length])
    {
      [MEMORY[0x277CE1F88] iconWithTemplateImageName:v9];
    }

    else
    {
      [MEMORY[0x277CE1F88] iconWithSystemImageName:v9];
    }
    v11 = ;
  }

  else
  {
    v11 = 0;
  }

  if ([v3 behavior] == 1)
  {
    v12 = [v3 behaviorParameters];
    v13 = [v12 objectForKey:*MEMORY[0x277CE20B8]];

    v14 = [v3 behaviorParameters];
    v15 = [v14 objectForKey:*MEMORY[0x277CE20C0]];

    v16 = [MEMORY[0x277CE2010] actionWithIdentifier:v4 title:v8 options:0 icon:v11 textInputButtonTitle:v13 textInputPlaceholder:v15];
  }

  else
  {
    v16 = [MEMORY[0x277CE1F80] actionWithIdentifier:v4 title:v8 options:0 icon:v11];
  }

  return v16;
}

@end