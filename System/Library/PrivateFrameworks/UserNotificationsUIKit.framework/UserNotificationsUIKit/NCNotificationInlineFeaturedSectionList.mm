@interface NCNotificationInlineFeaturedSectionList
- (id)notificationGroupList:(id)list requestsContentProviderForNotificationRequest:(id)request;
- (void)_configureSectionListView:(id)view;
- (void)notificationListComponent:(id)component requestsExecuteAction:(id)action forNotificationRequest:(id)request requestAuthentication:(BOOL)authentication withParameters:(id)parameters completion:(id)completion;
- (void)setFeaturedNotificationContentProviders:(id)providers;
- (void)updateContent;
@end

@implementation NCNotificationInlineFeaturedSectionList

- (void)setFeaturedNotificationContentProviders:(id)providers
{
  providersCopy = providers;
  if (BSEqualArrays())
  {
    [(NCNotificationInlineFeaturedSectionList *)self updateContent];
  }

  else
  {
    featuredNotificationContentProviders = self->_featuredNotificationContentProviders;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __83__NCNotificationInlineFeaturedSectionList_setFeaturedNotificationContentProviders___block_invoke;
    v9[3] = &unk_2783722E0;
    v9[4] = self;
    [(NSArray *)featuredNotificationContentProviders enumerateObjectsUsingBlock:v9];
    richContentProviders = self->_richContentProviders;
    self->_richContentProviders = 0;

    objc_storeStrong(&self->_featuredNotificationContentProviders, providers);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __83__NCNotificationInlineFeaturedSectionList_setFeaturedNotificationContentProviders___block_invoke_2;
    v8[3] = &unk_2783722E0;
    v8[4] = self;
    [providersCopy enumerateObjectsUsingBlock:v8];
  }
}

void __83__NCNotificationInlineFeaturedSectionList_setFeaturedNotificationContentProviders___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 notificationRequest];
  [v2 removeNotificationRequest:v3];
}

void __83__NCNotificationInlineFeaturedSectionList_setFeaturedNotificationContentProviders___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 notificationRequest];
  [v2 insertNotificationRequest:v3];
}

- (void)updateContent
{
  firstObject = [(NSArray *)self->_featuredNotificationContentProviders firstObject];
  isDeviceAuthenticated = [firstObject isDeviceAuthenticated];

  [(NCNotificationStructuredSectionList *)self setDeviceAuthenticated:isDeviceAuthenticated];
  richContentProviders = self->_richContentProviders;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__NCNotificationInlineFeaturedSectionList_updateContent__block_invoke;
  v9[3] = &__block_descriptor_33_e80_v32__0__NCNotificationRequest_8__NCNotificationRequestRichContentProvider_16_B24l;
  v10 = isDeviceAuthenticated;
  [(NSMutableDictionary *)richContentProviders enumerateKeysAndObjectsUsingBlock:v9];
  featuredNotificationContentProviders = self->_featuredNotificationContentProviders;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__NCNotificationInlineFeaturedSectionList_updateContent__block_invoke_2;
  v8[3] = &unk_2783722E0;
  v8[4] = self;
  [(NSArray *)featuredNotificationContentProviders enumerateObjectsUsingBlock:v8];
  listView = [(NCNotificationStructuredSectionList *)self listView];
  [listView invalidateHeight];
}

void __56__NCNotificationInlineFeaturedSectionList_updateContent__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 notificationRequest];
  [v2 reloadNotificationRequest:v3];
}

- (id)notificationGroupList:(id)list requestsContentProviderForNotificationRequest:(id)request
{
  listCopy = list;
  requestCopy = request;
  richContentProviders = self->_richContentProviders;
  if (!richContentProviders)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = self->_richContentProviders;
    self->_richContentProviders = v9;

    richContentProviders = self->_richContentProviders;
  }

  v11 = [(NSMutableDictionary *)richContentProviders objectForKey:requestCopy];
  if (!v11)
  {
    v11 = [(NCNotificationRequestCoalescingContentProvider *)[NCNotificationRequestRichContentProvider alloc] initWithNotificationRequest:requestCopy];
    [(NCNotificationRequestRichContentProvider *)v11 setIconVisible:1];
    firstObject = [(NSArray *)self->_featuredNotificationContentProviders firstObject];
    -[NCNotificationRequestCoalescingContentProvider setDeviceAuthenticated:](v11, "setDeviceAuthenticated:", [firstObject isDeviceAuthenticated]);

    [(NSMutableDictionary *)self->_richContentProviders bs_setSafeObject:v11 forKey:requestCopy];
  }

  return v11;
}

- (void)notificationListComponent:(id)component requestsExecuteAction:(id)action forNotificationRequest:(id)request requestAuthentication:(BOOL)authentication withParameters:(id)parameters completion:(id)completion
{
  authenticationCopy = authentication;
  actionCopy = action;
  parametersCopy = parameters;
  completionCopy = completion;
  requestCopy = request;
  defaultAction = [requestCopy defaultAction];

  if (defaultAction == actionCopy)
  {
    v17 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:parametersCopy];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v17 setObject:v18 forKey:@"NCNotificationActionDeferClearForNotificationSummaryKey"];

    parametersCopy = v17;
  }

  delegate = [(NCNotificationStructuredSectionList *)self delegate];
  [delegate notificationListComponent:self requestsExecuteAction:actionCopy forNotificationRequest:requestCopy requestAuthentication:authenticationCopy withParameters:parametersCopy completion:completionCopy];
}

- (void)_configureSectionListView:(id)view
{
  v4.receiver = self;
  v4.super_class = NCNotificationInlineFeaturedSectionList;
  viewCopy = view;
  [(NCNotificationStructuredSectionList *)&v4 _configureSectionListView:viewCopy];
  [viewCopy setRevealed:{1, v4.receiver, v4.super_class}];
  [viewCopy setRevealPercentage:1.0];
  [viewCopy setGroupingAnimationStyle:1];
}

@end