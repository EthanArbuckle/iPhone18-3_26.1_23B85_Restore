@interface NCDigestInlineFeaturedNotificationsContainerView
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_configureDividerViewIfNecessary;
- (void)_configureInlineFeaturedSectionListIfNecessaryWithDelegate:(id)a3;
- (void)_layoutDividerViewIfNecessary;
- (void)_visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5;
- (void)layoutSubviews;
- (void)setFeaturedNotificationContentProviders:(id)a3;
- (void)updateContent;
@end

@implementation NCDigestInlineFeaturedNotificationsContainerView

- (void)setFeaturedNotificationContentProviders:(id)a3
{
  v9 = a3;
  if (BSEqualArrays())
  {
    [(NCDigestInlineFeaturedNotificationsContainerView *)self updateContent];
  }

  else
  {
    objc_storeStrong(&self->_featuredNotificationContentProviders, a3);
    v5 = [v9 firstObject];
    v6 = [v5 listComponentDelegate];
    [(NCDigestInlineFeaturedNotificationsContainerView *)self _configureInlineFeaturedSectionListIfNecessaryWithDelegate:v6];

    inlineFeaturedSectionList = self->_inlineFeaturedSectionList;
    v8 = [v9 firstObject];
    -[NCNotificationStructuredSectionList setDeviceAuthenticated:](inlineFeaturedSectionList, "setDeviceAuthenticated:", [v8 isDeviceAuthenticated]);

    [(NCNotificationInlineFeaturedSectionList *)self->_inlineFeaturedSectionList setFeaturedNotificationContentProviders:v9];
  }

  [(NCDigestInlineFeaturedNotificationsContainerView *)self setNeedsLayout];
}

- (void)updateContent
{
  [(NCNotificationInlineFeaturedSectionList *)self->_inlineFeaturedSectionList updateContent];

  [(NCDigestInlineFeaturedNotificationsContainerView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(NCNotificationStructuredSectionList *)self->_inlineFeaturedSectionList listView];
  [v5 sizeThatFits:{width, height}];
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
  v11 = [(NCNotificationStructuredSectionList *)self->_inlineFeaturedSectionList listView];
  [v11 setVisibleRect:{v4, v6, v8, v10}];
  [v11 setFrame:{v4, v6, v8, v10}];
  [(NCDigestInlineFeaturedNotificationsContainerView *)self _configureDividerViewIfNecessary];
  [(NCDigestInlineFeaturedNotificationsContainerView *)self _layoutDividerViewIfNecessary];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  v5 = UIContentSizeCategoryCompareToCategory(v4, self->_preferredContentSizeCategory);
  if (v5)
  {
    objc_storeStrong(&self->_preferredContentSizeCategory, v4);
    [(NCNotificationStructuredSectionList *)self->_inlineFeaturedSectionList adjustForContentSizeCategoryChange];
    [(NCDigestInlineFeaturedNotificationsContainerView *)self setNeedsLayout];
  }

  return v5 != NSOrderedSame;
}

- (void)_configureInlineFeaturedSectionListIfNecessaryWithDelegate:(id)a3
{
  v4 = a3;
  if (!self->_inlineFeaturedSectionList)
  {
    v10 = v4;
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

    v9 = [(NCNotificationStructuredSectionList *)self->_inlineFeaturedSectionList listView];
    [(NCDigestInlineFeaturedNotificationsContainerView *)self addSubview:v9];

    v4 = v10;
  }
}

- (void)_configureDividerViewIfNecessary
{
  v3 = [(NCNotificationStructuredSectionList *)self->_inlineFeaturedSectionList notificationCount];
  dividerView = self->_dividerView;
  if (dividerView)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 >= 2;
  }

  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x277D75D18]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v9 = self->_dividerView;
    self->_dividerView = v8;

    v10 = self->_dividerView;
    v11 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v10 setBackgroundColor:v11];

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
      v6 = v3 > 1;
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
    v11 = [(NCNotificationStructuredSectionList *)self->_inlineFeaturedSectionList listView];
    [v11 layoutOffsetForViewAtIndex:1];
    v13.origin.x = v4;
    v13.origin.y = v6;
    v13.size.width = v8;
    v13.size.height = v10;
    CGRectGetWidth(v13);
    UIRectIntegralWithScale();
    [(UIView *)self->_dividerView setFrame:?];
  }
}

- (void)_visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5
{
  v10.receiver = self;
  v10.super_class = NCDigestInlineFeaturedNotificationsContainerView;
  v8 = a5;
  v9 = a3;
  [(NCNotificationListBaseContentView *)&v10 _visualStylingProviderDidChange:v9 forCategory:a4 outgoingProvider:v8];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_dividerView style:3 visualStylingProvider:v9 outgoingProvider:v8, v10.receiver, v10.super_class];
}

@end