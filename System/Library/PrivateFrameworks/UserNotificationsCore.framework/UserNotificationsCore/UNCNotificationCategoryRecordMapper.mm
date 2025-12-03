@interface UNCNotificationCategoryRecordMapper
- (UNCNotificationCategoryRecordMapper)initWithBundle:(id)bundle;
- (id)notificationActionForNotificationActionRecord:(id)record;
- (id)notificationCategoryForNotificationCategoryRecord:(id)record;
@end

@implementation UNCNotificationCategoryRecordMapper

- (UNCNotificationCategoryRecordMapper)initWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v9.receiver = self;
  v9.super_class = UNCNotificationCategoryRecordMapper;
  v6 = [(UNCNotificationCategoryRecordMapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundle, bundle);
  }

  return v7;
}

- (id)notificationCategoryForNotificationCategoryRecord:(id)record
{
  recordCopy = record;
  identifier = [recordCopy identifier];
  actions = [recordCopy actions];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __89__UNCNotificationCategoryRecordMapper_notificationCategoryForNotificationCategoryRecord___block_invoke;
  v26[3] = &unk_1E85D8048;
  v26[4] = self;
  v23 = [actions bs_map:v26];

  minimalActions = [recordCopy minimalActions];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __89__UNCNotificationCategoryRecordMapper_notificationCategoryForNotificationCategoryRecord___block_invoke_2;
  v25[3] = &unk_1E85D8048;
  v25[4] = self;
  v22 = [minimalActions bs_map:v25];

  intentIdentifiers = [recordCopy intentIdentifiers];
  hasCustomDismissAction = [recordCopy hasCustomDismissAction];
  hasFollowActivityAction = [recordCopy hasFollowActivityAction];
  shouldAllowInCarPlay = [recordCopy shouldAllowInCarPlay];
  privacyOptionShowTitle = [recordCopy privacyOptionShowTitle];
  privacyOptionShowSubtitle = [recordCopy privacyOptionShowSubtitle];
  hasCustomSilenceAction = [recordCopy hasCustomSilenceAction];
  backgroundStyle = [recordCopy backgroundStyle];
  if ([backgroundStyle isEqualToString:@"System"])
  {
    v15 = 1;
  }

  else if ([backgroundStyle isEqualToString:@"Dark"])
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  v16 = hasCustomDismissAction;
  if (hasFollowActivityAction)
  {
    v16 = hasCustomDismissAction | 0x80000000;
  }

  if (shouldAllowInCarPlay)
  {
    v16 |= 2uLL;
  }

  if (privacyOptionShowTitle)
  {
    v16 |= 4uLL;
  }

  if (privacyOptionShowSubtitle)
  {
    v16 |= 8uLL;
  }

  if (hasCustomSilenceAction)
  {
    v17 = v16 | 0x400000;
  }

  else
  {
    v17 = v16;
  }

  v18 = [objc_alloc(MEMORY[0x1E6983218]) initWithIdentifier:identifier];
  [v18 setActions:v23];
  [v18 setMinimalActions:v22];
  [v18 setIntentIdentifiers:intentIdentifiers];
  privateBody = [recordCopy privateBody];
  [v18 setHiddenPreviewsBodyPlaceholder:privateBody];

  summaryFormat = [recordCopy summaryFormat];
  [v18 setCategorySummaryFormat:summaryFormat];

  [v18 setOptions:v17];
  [v18 setBackgroundStyle:v15];

  return v18;
}

- (id)notificationActionForNotificationActionRecord:(id)record
{
  recordCopy = record;
  identifier = [recordCopy identifier];
  v5 = MEMORY[0x1E6983200];
  titleLocalizationKey = [recordCopy titleLocalizationKey];
  titleLocalizationArguments = [recordCopy titleLocalizationArguments];
  cfBundle = [(BSCFBundle *)self->_bundle cfBundle];
  title = [recordCopy title];
  v35 = [v5 localizedUserNotificationStringForKey:titleLocalizationKey arguments:titleLocalizationArguments cfBundle:cfBundle defaultValue:title];

  v10 = [recordCopy url];
  iconImageName = [recordCopy iconImageName];
  isAuthenticationRequired = [recordCopy isAuthenticationRequired];
  if ([recordCopy isDestructive])
  {
    isAuthenticationRequired |= 2uLL;
  }

  if ([recordCopy isForeground])
  {
    isAuthenticationRequired |= 4uLL;
  }

  if ([recordCopy shouldPreventNotificationDismiss])
  {
    v13 = isAuthenticationRequired | 0x10000;
  }

  else
  {
    v13 = isAuthenticationRequired;
  }

  [iconImageName length];
  if ([recordCopy hasSystemIcon])
  {
    [MEMORY[0x1E6983260] iconWithSystemImageName:iconImageName];
  }

  else
  {
    [MEMORY[0x1E6983260] iconWithTemplateImageName:iconImageName];
  }
  v14 = ;
  actionType = [recordCopy actionType];
  v16 = [actionType isEqualToString:@"TextInput"];

  if (v16)
  {
    v17 = MEMORY[0x1E6983200];
    textInputButtonTitleLocalizationKey = [recordCopy textInputButtonTitleLocalizationKey];
    textInputButtonTitleLocalizationArguments = [recordCopy textInputButtonTitleLocalizationArguments];
    cfBundle2 = [(BSCFBundle *)self->_bundle cfBundle];
    [recordCopy textInputButtonTitle];
    v21 = v34 = v13;
    v22 = [v17 localizedUserNotificationStringForKey:textInputButtonTitleLocalizationKey arguments:textInputButtonTitleLocalizationArguments cfBundle:cfBundle2 defaultValue:v21];

    v23 = MEMORY[0x1E6983200];
    textInputPlaceholderLocalizationKey = [recordCopy textInputPlaceholderLocalizationKey];
    textInputPlaceholderLocalizationArguments = [recordCopy textInputPlaceholderLocalizationArguments];
    cfBundle3 = [(BSCFBundle *)self->_bundle cfBundle];
    textInputPlaceholder = [recordCopy textInputPlaceholder];
    v28 = [v23 localizedUserNotificationStringForKey:textInputPlaceholderLocalizationKey arguments:textInputPlaceholderLocalizationArguments cfBundle:cfBundle3 defaultValue:textInputPlaceholder];

    v30 = v35;
    v29 = identifier;
    v31 = [MEMORY[0x1E69832F0] actionWithIdentifier:identifier title:v35 options:v34 icon:v14 textInputButtonTitle:v22 textInputPlaceholder:v28];
  }

  else
  {
    if (v10)
    {
      v30 = v35;
      v29 = identifier;
      [MEMORY[0x1E6983250] actionWithIdentifier:identifier title:v35 url:v10 icon:v14];
    }

    else
    {
      v32 = v13;
      v30 = v35;
      v29 = identifier;
      [MEMORY[0x1E6983250] actionWithIdentifier:identifier title:v35 options:v32 icon:v14];
    }
    v31 = ;
  }

  return v31;
}

@end