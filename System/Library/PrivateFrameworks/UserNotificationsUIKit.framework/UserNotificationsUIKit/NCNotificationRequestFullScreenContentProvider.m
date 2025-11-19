@interface NCNotificationRequestFullScreenContentProvider
- (id)copyWithZone:(_NSZone *)a3;
- (id)importantAttributedTextWithImageConfiguration:(id)a3 importantAdornmentEligibleOptions:(unint64_t)a4;
- (id)importantText;
- (id)thumbnail;
- (void)loadImageAssetsWithCompletion:(id)a3;
@end

@implementation NCNotificationRequestFullScreenContentProvider

- (void)loadImageAssetsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_imageAssetLoadingComplete)
  {
    v5->_imageAssetLoadingComplete = 1;
    Serial = BSDispatchQueueCreateSerial();
    objc_initWeak(&location, v5);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__NCNotificationRequestFullScreenContentProvider_loadImageAssetsWithCompletion___block_invoke;
    block[3] = &unk_27836F4C0;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    dispatch_async(Serial, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v5);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = NCNotificationRequestFullScreenContentProvider;
  v4 = [(NCNotificationRequestCoalescingContentProvider *)&v8 copyWithZone:a3];
  v4[104] = self->_imageAssetLoadingComplete;
  v5 = [(UIImage *)self->_fullScreenThumbnail copy];
  v6 = *(v4 + 14);
  *(v4 + 14) = v5;

  return v4;
}

- (id)importantText
{
  v3 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  v4 = [v3 interruptionLevel];

  if (v4 == 2)
  {
    v5 = @"TIME_SENSITIVE_TEXT";
LABEL_5:
    v8 = NCUserNotificationsUIKitFrameworkBundle();
    v9 = [v8 localizedStringForKey:v5 value:&stru_282FE84F8 table:0];
    v10 = [v9 localizedLowercaseString];

    goto LABEL_7;
  }

  v6 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  v7 = [v6 interruptionLevel];

  if (v7 == 3)
  {
    v5 = @"CRITICAL_TEXT";
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)importantAttributedTextWithImageConfiguration:(id)a3 importantAdornmentEligibleOptions:(unint64_t)a4
{
  v5 = a3;
  v6 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  v7 = [v6 interruptionLevel];

  if (v7 == 3)
  {
    v8 = [(NCNotificationRequestContentProvider *)self _criticalAlertIconAttributedStringWithImageConfiguration:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)thumbnail
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_imageAssetLoadingComplete)
  {
    v3 = v2->_fullScreenThumbnail;
  }

  else
  {
    v6.receiver = v2;
    v6.super_class = NCNotificationRequestFullScreenContentProvider;
    v3 = [(NCNotificationRequestCoalescingContentProvider *)&v6 thumbnail];
  }

  v4 = v3;
  objc_sync_exit(v2);

  return v4;
}

@end