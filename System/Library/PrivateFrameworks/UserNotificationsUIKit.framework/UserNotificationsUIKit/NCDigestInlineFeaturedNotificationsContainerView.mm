@interface NCDigestInlineFeaturedNotificationsContainerView
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_configureDividerViewIfNecessary;
- (void)_configureInlineFeaturedSectionListIfNecessaryWithDelegate:(id)delegate;
- (void)_layoutDividerViewIfNecessary;
- (void)_visualStylingProviderDidChange:(id)change forCategory:(int64_t)category outgoingProvider:(id)provider;
- (void)layoutSubviews;
- (void)setFeaturedNotificationContentProviders:(id)providers;
- (void)updateContent;
@end

@implementation NCDigestInlineFeaturedNotificationsContainerView

- (void)setFeaturedNotificationContentProviders:(id)providers
{
  providersCopy = providers;
  if (BSEqualArrays())
  {
    [(NCDigestInlineFeaturedNotificationsContainerView *)self updateContent];
  }

  else
  {
    objc_storeStrong(&self->_featuredNotificationContentProviders, providers);
    firstObject = [providersCopy firstObject];
    listComponentDelegate = [firstObject listComponentDelegate];
    [(NCDigestInlineFeaturedNotificationsContainerView *)self _configureInlineFeaturedSectionListIfNecessaryWithDelegate:listComponentDelegate];

    inlineFeaturedSectionList = self->_inlineFeaturedSectionList;
    firstObject2 = [providersCopy firstObject];
    -[NCNotificationStructuredSectionList setDeviceAuthenticated:](inlineFeaturedSectionList, "setDeviceAuthenticated:", [firstObject2 isDeviceAuthenticated]);

    [(NCNotificationInlineFeaturedSectionList *)self->_inlineFeaturedSectionList setFeaturedNotificationContentProviders:providersCopy];
  }

  [(NCDigestInlineFeaturedNotificationsContainerView *)self setNeedsLayout];
}

- (void)updateContent
{
  [(NCNotificationInlineFeaturedSectionList *)self->_inlineFeaturedSectionList updateContent];

  [(NCDigestInlineFeaturedNotificationsContainerView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  listView = [(NCNotificationStructuredSectionList *)self->_inlineFeaturedSectionList listView];
  [listView sizeThatFits:{width, height}];
  v7 = v6;

  v8 = width;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NCDigestInlineFeaturedNotificationsContainerView;
  [(NCDigestInlineFeaturedNotificationsContainerView *)&v12 layoutSubviews];
  [(NCDigestInlineFeaturedNotificationsContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  listView = [(NCNotificationStructuredSectionList *)self->_inlineFeaturedSectionList listView];
  [listView setVisibleRect:{v4, v6, v8, v10}];
  [listView setFrame:{v4, v6, v8, v10}];
  [(NCDigestInlineFeaturedNotificationsContainerView *)self _configureDividerViewIfNecessary];
  [(NCDigestInlineFeaturedNotificationsContainerView *)self _layoutDividerViewIfNecessary];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];

  v5 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, self->_preferredContentSizeCategory);
  if (v5)
  {
    objc_storeStrong(&self->_preferredContentSizeCategory, preferredContentSizeCategory);
    [(NCNotificationStructuredSectionList *)self->_inlineFeaturedSectionList adjustForContentSizeCategoryChange];
    [(NCDigestInlineFeaturedNotificationsContainerView *)self setNeedsLayout];
  }

  return v5 != NSOrderedSame;
}

- (void)_configureInlineFeaturedSectionListIfNecessaryWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!self->_inlineFeaturedSectionList)
  {
    v10 = delegateCopy;
    v5 = [(NCNotificationStructuredSectionList *)[NCNotificationInlineFeaturedSectionList alloc] initWithTitle:0 sectionType:9];
    inlineFeaturedSectionList = self->_inlineFeaturedSectionList;
    self->_inlineFeaturedSectionList = v5;

    [(NCNotificationStructuredSectionList *)self->_inlineFeaturedSectionList setLogDescription:@"Inline Featured Digest"];
    v7 = self->_inlineFeaturedSectionList;
    v8 = objc_alloc_init(NCNotificationListCache);
    [(NCNotificationStructuredSectionList *)v7 setNotificationListCache:v8];

    if ([v10 conformsToProtocol:&unk_283025858])
    {
      [(NCNotificationStructuredSectionList *)self->_inlineFeaturedSectionList setDelegate:v10];
    }

    listView = [(NCNotificationStructuredSectionList *)self->_inlineFeaturedSectionList listView];
    [(NCDigestInlineFeaturedNotificationsContainerView *)self addSubview:listView];

    delegateCopy = v10;
  }
}

- (void)_configureDividerViewIfNecessary
{
  notificationCount = [(NCNotificationStructuredSectionList *)self->_inlineFeaturedSectionList notificationCount];
  dividerView = self->_dividerView;
  if (dividerView)
  {
    v5 = 0;
  }

  else
  {
    v5 = notificationCount >= 2;
  }

  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x277D75D18]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v9 = self->_dividerView;
    self->_dividerView = v8;

    v10 = self->_dividerView;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v10 setBackgroundColor:blackColor];

    v12 = self->_dividerView;
    v13 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
    [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:v12 style:3 visualStylingProvider:v13 outgoingProvider:0];

    v14 = self->_dividerView;

    [(NCDigestInlineFeaturedNotificationsContainerView *)self addSubview:v14];
  }

  else
  {
    if (dividerView)
    {
      v6 = notificationCount > 1;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      [(UIView *)dividerView removeFromSuperview];
      v15 = self->_dividerView;
      self->_dividerView = 0;
    }
  }
}

- (void)_layoutDividerViewIfNecessary
{
  if (self->_dividerView)
  {
    [(NCDigestInlineFeaturedNotificationsContainerView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UIView *)self->_dividerView frame];
    listView = [(NCNotificationStructuredSectionList *)self->_inlineFeaturedSectionList listView];
    [listView layoutOffsetForViewAtIndex:1];
    v13.origin.x = v4;
    v13.origin.y = v6;
    v13.size.width = v8;
    v13.size.height = v10;
    CGRectGetWidth(v13);
    UIRectIntegralWithScale();
    [(UIView *)self->_dividerView setFrame:?];
  }
}

- (void)_visualStylingProviderDidChange:(id)change forCategory:(int64_t)category outgoingProvider:(id)provider
{
  v10.receiver = self;
  v10.super_class = NCDigestInlineFeaturedNotificationsContainerView;
  providerCopy = provider;
  changeCopy = change;
  [(NCNotificationListBaseContentView *)&v10 _visualStylingProviderDidChange:changeCopy forCategory:category outgoingProvider:providerCopy];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_dividerView style:3 visualStylingProvider:changeCopy outgoingProvider:providerCopy, v10.receiver, v10.super_class];
}

@end