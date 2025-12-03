@interface NCNotificationRichShortLookView
- (BOOL)isAttachmentImageFeatured;
- (id)_richContentView;
- (void)_layoutNotificationContentView;
- (void)setAttachmentImageFeatured:(BOOL)featured;
@end

@implementation NCNotificationRichShortLookView

- (BOOL)isAttachmentImageFeatured
{
  _richContentView = [(NCNotificationRichShortLookView *)self _richContentView];
  isAttachmentImageFeatured = [_richContentView isAttachmentImageFeatured];

  return isAttachmentImageFeatured;
}

- (void)setAttachmentImageFeatured:(BOOL)featured
{
  featuredCopy = featured;
  _richContentView = [(NCNotificationRichShortLookView *)self _richContentView];
  [_richContentView setAttachmentImageFeatured:featuredCopy];
}

- (void)_layoutNotificationContentView
{
  _richContentView = [(NCNotificationRichShortLookView *)self _richContentView];

  if (_richContentView)
  {
    customContentView = [(NCNotificationShortLookView *)self customContentView];
    [customContentView bounds];

    _richContentView2 = [(NCNotificationRichShortLookView *)self _richContentView];
    _NCMainScreenScale();
    UIRectIntegralWithScale();
    [_richContentView2 setFrame:?];
  }
}

- (id)_richContentView
{
  notificationContentView = [(NCNotificationShortLookView *)self notificationContentView];
  v3 = objc_opt_class();
  v4 = notificationContentView;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

@end