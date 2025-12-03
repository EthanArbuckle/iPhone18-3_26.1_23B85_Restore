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
  v1 = [self _notificationActionForAction:? bulletin:? observer:?];
  v2 = [v1 copy];

  return v2;
}

+ (id)notificationActionForDefaultAction:()Bulletin bulletin:observer:
{
  if (a3)
  {
    v3 = [self _notificationActionForAction:? bulletin:? observer:?];
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
  v9 = [self _notificationActionForAction:v8 bulletin:a4 observer:a5];
  [v9 setIdentifier:*MEMORY[0x277CE20F0]];
  [v9 setActivationMode:0];
  if (v8)
  {
    shouldDismissBulletin = [v8 shouldDismissBulletin];
  }

  else
  {
    shouldDismissBulletin = 1;
  }

  [v9 setShouldDismissNotification:shouldDismissBulletin];
  v11 = [v9 copy];

  return v11;
}

+ (id)notificationActionForSilenceAction:()Bulletin bulletin:observer:
{
  v1 = [self _notificationActionForAction:? bulletin:? observer:?];
  [v1 setIdentifier:*MEMORY[0x277CE2120]];
  [v1 setActivationMode:0];
  v2 = [v1 copy];

  return v2;
}

+ (id)notificationActionForFollowActivityAction:()Bulletin bulletin:observer:
{
  if (a3)
  {
    v3 = [self _notificationActionForAction:? bulletin:? observer:?];
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
  appearance = [v7 appearance];
  v11 = objc_alloc_init(MEMORY[0x277D77DF8]);
  identifier = [v7 identifier];
  [v11 setIdentifier:identifier];

  title = [appearance title];
  [v11 setTitle:title];

  activationMode = [v7 activationMode];
  if (activationMode == 1)
  {
    v15 = 2;
  }

  else
  {
    v15 = activationMode == 0;
  }

  [v11 setActivationMode:v15];
  [v11 setRequiresAuthentication:{objc_msgSend(v7, "isAuthenticationRequired")}];
  launchURL = [v7 launchURL];
  [v11 setLaunchURL:launchURL];

  launchBundleID = [v7 launchBundleID];
  [v11 setLaunchBundleID:launchBundleID];

  [v11 setBehavior:{objc_msgSend(v7, "behavior") == 1}];
  behaviorParameters = [v7 behaviorParameters];
  [v11 setBehaviorParameters:behaviorParameters];

  if (v7)
  {
    appearance2 = [v7 appearance];
    [v11 setDestructiveAction:{objc_msgSend(appearance2, "style") == 1}];
  }

  else
  {
    [v11 setDestructiveAction:0];
  }

  [v11 setShouldDismissNotification:{objc_msgSend(v7, "shouldDismissBulletin")}];
  image = [appearance image];
  name = [image name];
  [v11 setIconImageName:name];

  bundlePath = [image bundlePath];
  [v11 setIconImageBundlePath:bundlePath];

  v23 = MEMORY[0x277D77E30];
  contentType = [v9 contentType];
  [v11 setIsSiriActionCandidate:{objc_msgSend(v23, "isSiriActionCandidate:contentType:", v9, contentType)}];

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
    intentIDs = [v5 intentIDs];
    if ([intentIDs containsObject:v11])
    {
      intentIDs2 = [v5 intentIDs];
      v16 = [intentIDs2 containsObject:v13];
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
  identifier = [v7 identifier];
  [v10 setIdentifier:identifier];

  title = [v7 title];
  [v10 setTitle:title];

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
  options = [v7 options];
  [v10 setRequiresAuthentication:options & 1];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  [v10 setBehavior:isKindOfClass & 1];
  options2 = [v7 options];
  v16 = options2;
  [v10 setDestructiveAction:(options2 >> 1) & 1];
  options3 = [v7 options];
  v18 = options3;
  [v10 setShouldDismissNotification:(*&options3 & 0x10000) == 0];
  icon = [v7 icon];
  imageName = [icon imageName];
  [v10 setIconImageName:imageName];

  v36 = v8;
  if ([icon isSystemIcon])
  {
    sectionBundlePath = 0;
  }

  else
  {
    sectionBundlePath = [v8 sectionBundlePath];
  }

  [v10 setIconImageBundlePath:sectionBundlePath];
  v22 = MEMORY[0x277CF3500];
  identifier2 = [v7 identifier];
  title2 = [v7 title];
  v25 = [v22 actionWithIdentifier:identifier2 title:title2];

  [v25 setActionType:7];
  [v25 setActivationMode:(v34 >> 2) ^ 1];
  [v25 setAuthenticationRequired:options & 1];
  [v25 setBehavior:isKindOfClass & 1];
  [v25 setShouldDismissBulletin:(*&v18 & 0x10000) == 0];
  if ((v16 & 2) != 0)
  {
    appearance = [v25 appearance];
    [appearance setStyle:1];
  }

  if (icon)
  {
    appearance2 = [v25 appearance];
    v28 = MEMORY[0x277CF3538];
    imageName2 = [icon imageName];
    v30 = [v28 imageWithName:imageName2 inBundlePath:sectionBundlePath];
    [appearance2 setImage:v30];
  }

  v31 = [[NCBulletinActionRunner alloc] initWithAction:v25 bulletin:v36 observer:v35];

  [v10 setActionRunner:v31];

  return v10;
}

+ (id)userNotificationActionForNCNotificationAction:()Bulletin
{
  v3 = a3;
  identifier = [v3 identifier];
  title = [v3 title];
  v6 = title;
  v7 = &stru_282FE84F8;
  if (title)
  {
    v7 = title;
  }

  v8 = v7;

  [v3 activationMode];
  [v3 requiresAuthentication];
  [v3 isDestructiveAction];
  iconImageName = [v3 iconImageName];
  if (iconImageName)
  {
    iconImageBundlePath = [v3 iconImageBundlePath];
    if ([iconImageBundlePath length])
    {
      [MEMORY[0x277CE1F88] iconWithTemplateImageName:iconImageName];
    }

    else
    {
      [MEMORY[0x277CE1F88] iconWithSystemImageName:iconImageName];
    }
    v11 = ;
  }

  else
  {
    v11 = 0;
  }

  if ([v3 behavior] == 1)
  {
    behaviorParameters = [v3 behaviorParameters];
    v13 = [behaviorParameters objectForKey:*MEMORY[0x277CE20B8]];

    behaviorParameters2 = [v3 behaviorParameters];
    v15 = [behaviorParameters2 objectForKey:*MEMORY[0x277CE20C0]];

    v16 = [MEMORY[0x277CE2010] actionWithIdentifier:identifier title:v8 options:0 icon:v11 textInputButtonTitle:v13 textInputPlaceholder:v15];
  }

  else
  {
    v16 = [MEMORY[0x277CE1F80] actionWithIdentifier:identifier title:v8 options:0 icon:v11];
  }

  return v16;
}

@end