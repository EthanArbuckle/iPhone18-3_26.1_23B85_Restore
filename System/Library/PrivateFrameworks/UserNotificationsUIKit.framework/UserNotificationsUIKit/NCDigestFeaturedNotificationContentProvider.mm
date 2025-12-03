@interface NCDigestFeaturedNotificationContentProvider
+ (id)featuredImageFetchQueue;
- (BOOL)_shouldShowContent;
- (BOOL)hasAttachmentImage;
- (NCDigestFeaturedNotificationContentProvider)initWithNotificationRequest:(id)request groupCount:(unint64_t)count;
- (NCNotificationListComponentDelegate)listComponentDelegate;
- (id)primaryText;
- (id)thumbnail;
- (void)fetchFeaturedAttachmentImageWithSizeRatio:(double)ratio completion:(id)completion;
@end

@implementation NCDigestFeaturedNotificationContentProvider

- (NCDigestFeaturedNotificationContentProvider)initWithNotificationRequest:(id)request groupCount:(unint64_t)count
{
  v6.receiver = self;
  v6.super_class = NCDigestFeaturedNotificationContentProvider;
  result = [(NCNotificationRequestCoalescingContentProvider *)&v6 initWithNotificationRequest:request];
  if (result)
  {
    result->_groupCount = count;
  }

  return result;
}

+ (id)featuredImageFetchQueue
{
  if (featuredImageFetchQueue_onceToken_0 != -1)
  {
    +[NCDigestFeaturedNotificationContentProvider featuredImageFetchQueue];
  }

  v3 = featuredImageFetchQueue___queue_0;

  return v3;
}

void __70__NCDigestFeaturedNotificationContentProvider_featuredImageFetchQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.UserNotificationsUI.NCDigestFeaturedNotificationContentProvider", v2);
  v1 = featuredImageFetchQueue___queue_0;
  featuredImageFetchQueue___queue_0 = v0;
}

- (id)primaryText
{
  v9.receiver = self;
  v9.super_class = NCDigestFeaturedNotificationContentProvider;
  primaryText = [(NCNotificationRequestCoalescingContentProvider *)&v9 primaryText];
  v4 = primaryText;
  if (primaryText)
  {
    defaultHeader = primaryText;
  }

  else
  {
    notificationRequest = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
    content = [notificationRequest content];
    defaultHeader = [content defaultHeader];
  }

  return defaultHeader;
}

- (id)thumbnail
{
  cachedFeaturedAttachmentImage = self->_cachedFeaturedAttachmentImage;
  if (cachedFeaturedAttachmentImage)
  {
    thumbnail = cachedFeaturedAttachmentImage;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NCDigestFeaturedNotificationContentProvider;
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

- (void)fetchFeaturedAttachmentImageWithSizeRatio:(double)ratio completion:(id)completion
{
  completionCopy = completion;
  if ([(NCDigestFeaturedNotificationContentProvider *)self _shouldShowContent])
  {
    if (self->_cachedFeaturedAttachmentImage && ([(NCDigestFeaturedNotificationContentProvider *)self cachedImageSizeRatio], v7 == ratio))
    {
      completionCopy[2](completionCopy, self->_cachedFeaturedAttachmentImage);
    }

    else
    {
      objc_initWeak(&location, self);
      featuredImageFetchQueue = [objc_opt_class() featuredImageFetchQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __100__NCDigestFeaturedNotificationContentProvider_fetchFeaturedAttachmentImageWithSizeRatio_completion___block_invoke;
      block[3] = &unk_278370D20;
      v11[1] = *&ratio;
      block[4] = self;
      objc_copyWeak(v11, &location);
      v10 = completionCopy;
      dispatch_async(featuredImageFetchQueue, block);

      objc_destroyWeak(v11);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

void __100__NCDigestFeaturedNotificationContentProvider_fetchFeaturedAttachmentImageWithSizeRatio_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56) * 300.0;
  v3 = [*(a1 + 32) notificationRequest];
  v4 = [v3 bulletin];
  v5 = _NCQuickLooksAttachmentImageForNotificationRequest(v4, 300.0, v2, 5.0);

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (v5)
  {
    [WeakRetained setCachedImageSizeRatio:*(a1 + 56)];
    objc_storeStrong(v7 + 14, v5);
  }

  else
  {
    v8 = WeakRetained[14];
    if (v8)
    {
      v5 = v8;
    }

    else
    {
      v9 = [WeakRetained notificationRequest];
      v10 = [v9 content];
      v5 = [v10 attachmentImage];
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__NCDigestFeaturedNotificationContentProvider_fetchFeaturedAttachmentImageWithSizeRatio_completion___block_invoke_2;
  v13[3] = &unk_278370CF8;
  v11 = *(a1 + 40);
  v14 = v5;
  v15 = v11;
  v12 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v13);
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

- (NCNotificationListComponentDelegate)listComponentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_listComponentDelegate);

  return WeakRetained;
}

@end