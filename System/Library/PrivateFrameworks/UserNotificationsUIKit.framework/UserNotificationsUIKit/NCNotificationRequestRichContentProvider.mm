@interface NCNotificationRequestRichContentProvider
+ (id)featuredImageFetchQueue;
- (BOOL)_shouldShowContent;
- (BOOL)hasAttachmentImage;
- (id)thumbnail;
- (void)fetchRichAttachmentImageIsFeatured:(BOOL)featured withCompletion:(id)completion;
@end

@implementation NCNotificationRequestRichContentProvider

+ (id)featuredImageFetchQueue
{
  if (featuredImageFetchQueue_onceToken != -1)
  {
    +[NCNotificationRequestRichContentProvider featuredImageFetchQueue];
  }

  v3 = featuredImageFetchQueue___queue;

  return v3;
}

void __67__NCNotificationRequestRichContentProvider_featuredImageFetchQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.UserNotificationsUI.NCNotificationRequestRichContentProvider", v2);
  v1 = featuredImageFetchQueue___queue;
  featuredImageFetchQueue___queue = v0;
}

- (id)thumbnail
{
  cachedAttachmentImage = self->_cachedAttachmentImage;
  if (cachedAttachmentImage)
  {
    thumbnail = cachedAttachmentImage;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NCNotificationRequestRichContentProvider;
    thumbnail = [(NCNotificationRequestCoalescingContentProvider *)&v5 thumbnail];
  }

  return thumbnail;
}

- (BOOL)hasAttachmentImage
{
  notificationRequest = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  content = [notificationRequest content];
  attachmentImage = [content attachmentImage];

  if (attachmentImage)
  {
    v5 = [attachmentImage isSymbolImage] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)fetchRichAttachmentImageIsFeatured:(BOOL)featured withCompletion:(id)completion
{
  featuredCopy = featured;
  completionCopy = completion;
  if ([(NCNotificationRequestRichContentProvider *)self _shouldShowContent])
  {
    if (self->_cachedAttachmentImage && [(NCNotificationRequestRichContentProvider *)self isCachedAttachmentedImageFeatured]== featuredCopy)
    {
      completionCopy[2](completionCopy, self->_cachedAttachmentImage, 1);
    }

    else
    {
      objc_initWeak(&location, self);
      if (featuredCopy)
      {
        v7 = 300.0;
      }

      else
      {
        v7 = 200.0;
      }

      featuredImageFetchQueue = [objc_opt_class() featuredImageFetchQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __94__NCNotificationRequestRichContentProvider_fetchRichAttachmentImageIsFeatured_withCompletion___block_invoke;
      block[3] = &unk_27836F5E8;
      block[4] = self;
      v11[1] = *&v7;
      v11[2] = 0x4069000000000000;
      objc_copyWeak(v11, &location);
      v12 = featuredCopy;
      v10 = completionCopy;
      dispatch_async(featuredImageFetchQueue, block);

      objc_destroyWeak(v11);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

void __94__NCNotificationRequestRichContentProvider_fetchRichAttachmentImageIsFeatured_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationRequest];
  v3 = [v2 bulletin];
  v4 = _NCQuickLooksAttachmentImageForNotificationRequest(v3, *(a1 + 56), *(a1 + 64), 5.0);

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (v4)
  {
    objc_storeStrong(WeakRetained + 13, v4);
    [v6 setCachedAttachmentImageFeatured:*(a1 + 72)];
    v7 = v4;
  }

  else
  {
    v8 = WeakRetained[13];
    if (v8)
    {
      v7 = v8;
    }

    else
    {
      v9 = [WeakRetained notificationRequest];
      v10 = [v9 content];
      v7 = [v10 attachmentImage];
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__NCNotificationRequestRichContentProvider_fetchRichAttachmentImageIsFeatured_withCompletion___block_invoke_2;
  block[3] = &unk_27836F5C0;
  v11 = *(a1 + 40);
  v14 = v7;
  v15 = v11;
  v16 = v4 != 0;
  v12 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)_shouldShowContent
{
  notificationRequest = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  options = [notificationRequest options];
  contentPreviewSetting = [options contentPreviewSetting];

  if (!contentPreviewSetting)
  {
    return 1;
  }

  if (contentPreviewSetting != 1)
  {
    return 0;
  }

  return [(NCNotificationRequestCoalescingContentProvider *)self isDeviceAuthenticated];
}

@end