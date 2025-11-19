@interface NCNotificationRichShortLookView
- (BOOL)isAttachmentImageFeatured;
- (id)_richContentView;
- (void)_layoutNotificationContentView;
- (void)setAttachmentImageFeatured:(BOOL)a3;
@end

@implementation NCNotificationRichShortLookView

- (BOOL)isAttachmentImageFeatured
{
  v2 = [(NCNotificationRichShortLookView *)self _richContentView];
  v3 = [v2 isAttachmentImageFeatured];

  return v3;
}

- (void)setAttachmentImageFeatured:(BOOL)a3
{
  v3 = a3;
  v4 = [(NCNotificationRichShortLookView *)self _richContentView];
  [v4 setAttachmentImageFeatured:v3];
}

- (void)_layoutNotificationContentView
{
  v3 = [(NCNotificationRichShortLookView *)self _richContentView];

  if (v3)
  {
    v4 = [(NCNotificationShortLookView *)self customContentView];
    [v4 bounds];

    v5 = [(NCNotificationRichShortLookView *)self _richContentView];
    _NCMainScreenScale();
    UIRectIntegralWithScale();
    [v5 setFrame:?];
  }
}

- (id)_richContentView
{
  v2 = [(NCNotificationShortLookView *)self notificationContentView];
  v3 = objc_opt_class();
  v4 = v2;
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