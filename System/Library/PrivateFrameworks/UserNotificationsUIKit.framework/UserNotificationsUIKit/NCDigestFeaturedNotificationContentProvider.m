@interface NCDigestFeaturedNotificationContentProvider
+ (id)featuredImageFetchQueue;
- (BOOL)_shouldShowContent;
- (BOOL)hasAttachmentImage;
- (NCDigestFeaturedNotificationContentProvider)initWithNotificationRequest:(id)a3 groupCount:(unint64_t)a4;
- (NCNotificationListComponentDelegate)listComponentDelegate;
- (id)primaryText;
- (id)thumbnail;
- (void)fetchFeaturedAttachmentImageWithSizeRatio:(double)a3 completion:(id)a4;
@end

@implementation NCDigestFeaturedNotificationContentProvider

- (NCDigestFeaturedNotificationContentProvider)initWithNotificationRequest:(id)a3 groupCount:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = NCDigestFeaturedNotificationContentProvider;
  result = [(NCNotificationRequestCoalescingContentProvider *)&v6 initWithNotificationRequest:a3];
  if (result)
  {
    result->_groupCount = a4;
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
  v3 = [(NCNotificationRequestCoalescingContentProvider *)&v9 primaryText];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
    v7 = [v6 content];
    v5 = [v7 defaultHeader];
  }

  return v5;
}

- (id)thumbnail
{
  cachedFeaturedAttachmentImage = self->_cachedFeaturedAttachmentImage;
  if (cachedFeaturedAttachmentImage)
  {
    v3 = cachedFeaturedAttachmentImage;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NCDigestFeaturedNotificationContentProvider;
    v3 = [(NCNotificationRequestCoalescingContentProvider *)&v5 thumbnail];
  }

  return v3;
}

- (BOOL)hasAttachmentImage
{
  v2 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  v3 = [v2 content];
  v4 = [v3 attachmentImage];

  if (v4)
  {
    v5 = [v4 isSymbolImage] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)fetchFeaturedAttachmentImageWithSizeRatio:(double)a3 completion:(id)a4
{
  v6 = a4;
  if ([(NCDigestFeaturedNotificationContentProvider *)self _shouldShowContent])
  {
    if (self->_cachedFeaturedAttachmentImage && ([(NCDigestFeaturedNotificationContentProvider *)self cachedImageSizeRatio], v7 == a3))
    {
      v6[2](v6, self->_cachedFeaturedAttachmentImage);
    }

    else
    {
      objc_initWeak(&location, self);
      v8 = [objc_opt_class() featuredImageFetchQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __100__NCDigestFeaturedNotificationContentProvider_fetchFeaturedAttachmentImageWithSizeRatio_completion___block_invoke;
      block[3] = &unk_278370D20;
      v11[1] = *&a3;
      block[4] = self;
      objc_copyWeak(v11, &location);
      v10 = v6;
      dispatch_async(v8, block);

      objc_destroyWeak(v11);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v6[2](v6, 0);
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
  v3 = [(NCNotificationRequestCoalescingContentProvider *)self notificationRequest];
  v4 = [v3 options];
  v5 = [v4 contentPreviewSetting];

  if (!v5)
  {
    return 1;
  }

  if (v5 != 1)
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