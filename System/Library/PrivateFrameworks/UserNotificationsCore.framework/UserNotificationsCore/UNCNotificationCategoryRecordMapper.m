@interface UNCNotificationCategoryRecordMapper
- (UNCNotificationCategoryRecordMapper)initWithBundle:(id)a3;
- (id)notificationActionForNotificationActionRecord:(id)a3;
- (id)notificationCategoryForNotificationCategoryRecord:(id)a3;
@end

@implementation UNCNotificationCategoryRecordMapper

- (UNCNotificationCategoryRecordMapper)initWithBundle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UNCNotificationCategoryRecordMapper;
  v6 = [(UNCNotificationCategoryRecordMapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundle, a3);
  }

  return v7;
}

- (id)notificationCategoryForNotificationCategoryRecord:(id)a3
{
  v4 = a3;
  v24 = [v4 identifier];
  v5 = [v4 actions];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __89__UNCNotificationCategoryRecordMapper_notificationCategoryForNotificationCategoryRecord___block_invoke;
  v26[3] = &unk_1E85D8048;
  v26[4] = self;
  v23 = [v5 bs_map:v26];

  v6 = [v4 minimalActions];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __89__UNCNotificationCategoryRecordMapper_notificationCategoryForNotificationCategoryRecord___block_invoke_2;
  v25[3] = &unk_1E85D8048;
  v25[4] = self;
  v22 = [v6 bs_map:v25];

  v7 = [v4 intentIdentifiers];
  v8 = [v4 hasCustomDismissAction];
  v9 = [v4 hasFollowActivityAction];
  v10 = [v4 shouldAllowInCarPlay];
  v11 = [v4 privacyOptionShowTitle];
  v12 = [v4 privacyOptionShowSubtitle];
  v13 = [v4 hasCustomSilenceAction];
  v14 = [v4 backgroundStyle];
  if ([v14 isEqualToString:@"System"])
  {
    v15 = 1;
  }

  else if ([v14 isEqualToString:@"Dark"])
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  v16 = v8;
  if (v9)
  {
    v16 = v8 | 0x80000000;
  }

  if (v10)
  {
    v16 |= 2uLL;
  }

  if (v11)
  {
    v16 |= 4uLL;
  }

  if (v12)
  {
    v16 |= 8uLL;
  }

  if (v13)
  {
    v17 = v16 | 0x400000;
  }

  else
  {
    v17 = v16;
  }

  v18 = [objc_alloc(MEMORY[0x1E6983218]) initWithIdentifier:v24];
  [v18 setActions:v23];
  [v18 setMinimalActions:v22];
  [v18 setIntentIdentifiers:v7];
  v19 = [v4 privateBody];
  [v18 setHiddenPreviewsBodyPlaceholder:v19];

  v20 = [v4 summaryFormat];
  [v18 setCategorySummaryFormat:v20];

  [v18 setOptions:v17];
  [v18 setBackgroundStyle:v15];

  return v18;
}

- (id)notificationActionForNotificationActionRecord:(id)a3
{
  v4 = a3;
  v36 = [v4 identifier];
  v5 = MEMORY[0x1E6983200];
  v6 = [v4 titleLocalizationKey];
  v7 = [v4 titleLocalizationArguments];
  v8 = [(BSCFBundle *)self->_bundle cfBundle];
  v9 = [v4 title];
  v35 = [v5 localizedUserNotificationStringForKey:v6 arguments:v7 cfBundle:v8 defaultValue:v9];

  v10 = [v4 url];
  v11 = [v4 iconImageName];
  v12 = [v4 isAuthenticationRequired];
  if ([v4 isDestructive])
  {
    v12 |= 2uLL;
  }

  if ([v4 isForeground])
  {
    v12 |= 4uLL;
  }

  if ([v4 shouldPreventNotificationDismiss])
  {
    v13 = v12 | 0x10000;
  }

  else
  {
    v13 = v12;
  }

  [v11 length];
  if ([v4 hasSystemIcon])
  {
    [MEMORY[0x1E6983260] iconWithSystemImageName:v11];
  }

  else
  {
    [MEMORY[0x1E6983260] iconWithTemplateImageName:v11];
  }
  v14 = ;
  v15 = [v4 actionType];
  v16 = [v15 isEqualToString:@"TextInput"];

  if (v16)
  {
    v17 = MEMORY[0x1E6983200];
    v18 = [v4 textInputButtonTitleLocalizationKey];
    v19 = [v4 textInputButtonTitleLocalizationArguments];
    v20 = [(BSCFBundle *)self->_bundle cfBundle];
    [v4 textInputButtonTitle];
    v21 = v34 = v13;
    v22 = [v17 localizedUserNotificationStringForKey:v18 arguments:v19 cfBundle:v20 defaultValue:v21];

    v23 = MEMORY[0x1E6983200];
    v24 = [v4 textInputPlaceholderLocalizationKey];
    v25 = [v4 textInputPlaceholderLocalizationArguments];
    v26 = [(BSCFBundle *)self->_bundle cfBundle];
    v27 = [v4 textInputPlaceholder];
    v28 = [v23 localizedUserNotificationStringForKey:v24 arguments:v25 cfBundle:v26 defaultValue:v27];

    v30 = v35;
    v29 = v36;
    v31 = [MEMORY[0x1E69832F0] actionWithIdentifier:v36 title:v35 options:v34 icon:v14 textInputButtonTitle:v22 textInputPlaceholder:v28];
  }

  else
  {
    if (v10)
    {
      v30 = v35;
      v29 = v36;
      [MEMORY[0x1E6983250] actionWithIdentifier:v36 title:v35 url:v10 icon:v14];
    }

    else
    {
      v32 = v13;
      v30 = v35;
      v29 = v36;
      [MEMORY[0x1E6983250] actionWithIdentifier:v36 title:v35 options:v32 icon:v14];
    }
    v31 = ;
  }

  return v31;
}

@end