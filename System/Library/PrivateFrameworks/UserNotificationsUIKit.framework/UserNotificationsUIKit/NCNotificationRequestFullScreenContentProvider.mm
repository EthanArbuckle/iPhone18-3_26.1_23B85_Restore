@interface NCNotificationRequestFullScreenContentProvider
- (id)copyWithZone:(_NSZone *)zone;
- (id)importantAttributedTextWithImageConfiguration:(id)configuration importantAdornmentEligibleOptions:(unint64_t)options;
- (id)importantText;
- (id)thumbnail;
- (void)loadImageAssetsWithCompletion:(id)completion;
@end

@implementation NCNotificationRequestFullScreenContentProvider

- (void)loadImageAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_imageAssetLoadingComplete)
  {
    selfCopy->_imageAssetLoadingComplete = 1;
    Serial = BSDispatchQueueCreateSerial();
    objc_initWeak(&location, selfCopy);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__NCNotificationRequestFullScreenContentProvider_loadImageAssetsWithCompletion___block_invoke;
    block[3] = &unk_27836F4C0;
    objc_copyWeak(&v9, &location);
    v8 = completionCopy;
    dispatch_async(Serial, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

void __80__NCNotificationRequestFullScreenContentProvider_loadImageAssetsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained notificationRequest];
  v4 = [v3 attachmentImageWithDimension:84.0];
  [WeakRetained _setFullScreenThumbnail:v4];

  if (*(a1 + 32))
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __80__NCNotificationRequestFullScreenContentProvider_loadImageAssetsWithCompletion___block_invoke_2;
    v6[3] = &unk_278370CF8;
    v5 = *(a1 + 32);
    v6[4] = WeakRetained;
    v7 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __80__NCNotificationRequestFullScreenContentProvider_loadImageAssetsWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _fullScreenThumbnail];
  (*(v1 + 16))(v1, v2 != 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = NCNotificationRequestFullScreenContentProvider;
  v4 = [(NCNotificationRequestCoalescingContentProvider *)&v8 copyWithZone:zone];
  v4[104] = self->_imageAssetLoadingComplete;
  v5 = [(UIImage *)self->_fullScreenThumbnail copy];
  v6 = *(v4 + 14);
  *(v4 + 14) = v5;

  return v4;
}

- (id)importantText
{
  notificationRequest = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  interruptionLevel = [notificationRequest interruptionLevel];

  if (interruptionLevel == 2)
  {
    v5 = @"TIME_SENSITIVE_TEXT";
LABEL_5:
    v8 = NCUserNotificationsUIKitFrameworkBundle();
    v9 = [v8 localizedStringForKey:v5 value:&stru_282FE84F8 table:0];
    localizedLowercaseString = [v9 localizedLowercaseString];

    goto LABEL_7;
  }

  notificationRequest2 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  interruptionLevel2 = [notificationRequest2 interruptionLevel];

  if (interruptionLevel2 == 3)
  {
    v5 = @"CRITICAL_TEXT";
    goto LABEL_5;
  }

  localizedLowercaseString = 0;
LABEL_7:

  return localizedLowercaseString;
}

- (id)importantAttributedTextWithImageConfiguration:(id)configuration importantAdornmentEligibleOptions:(unint64_t)options
{
  configurationCopy = configuration;
  notificationRequest = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  interruptionLevel = [notificationRequest interruptionLevel];

  if (interruptionLevel == 3)
  {
    v8 = [(NCNotificationRequestContentProvider *)self _criticalAlertIconAttributedStringWithImageConfiguration:configurationCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)thumbnail
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_imageAssetLoadingComplete)
  {
    thumbnail = selfCopy->_fullScreenThumbnail;
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = NCNotificationRequestFullScreenContentProvider;
    thumbnail = [(NCNotificationRequestCoalescingContentProvider *)&v6 thumbnail];
  }

  v4 = thumbnail;
  objc_sync_exit(selfCopy);

  return v4;
}

@end