@interface NCNotificationDigestConciseSummaryOrderProvider
- (id)leadingSummaryPlatterViewConfigureIfNecessary;
- (void)_updateSummaryContentProvider;
- (void)_updateSummaryPlatterView;
- (void)setDeviceAuthenticated:(BOOL)a3;
@end

@implementation NCNotificationDigestConciseSummaryOrderProvider

- (void)setDeviceAuthenticated:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = NCNotificationDigestConciseSummaryOrderProvider;
  [(NCNotificationSummaryOrderProvider *)&v5 setDeviceAuthenticated:?];
  [(NCNotificationSummaryContentProvider *)self->_summaryContentProvider setDeviceAuthenticated:v3];
  [(NCNotificationSummaryOrderProvider *)self configureSummaryContentDisplaying:self->_summaryPlatterView withSummaryContentProviding:self->_summaryContentProvider];
}

- (id)leadingSummaryPlatterViewConfigureIfNecessary
{
  summaryPlatterView = self->_summaryPlatterView;
  if (!summaryPlatterView)
  {
    v4 = [[NCNotificationSummaryPlatterView alloc] initWithRecipe:1];
    v5 = self->_summaryPlatterView;
    self->_summaryPlatterView = v4;

    [(NCNotificationSummaryPlatterView *)self->_summaryPlatterView setFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_summaryPlatterView;
    v7 = [(NCNotificationSummaryOrderProvider *)self materialGroupNameBase];
    [(PLPlatterView *)v6 setMaterialGroupNameBase:v7];

    v8 = self->_summaryPlatterView;
    v9 = [(NCNotificationSummaryOrderProvider *)self summaryPlatterViewTapGestureRecognizer];
    [(NCNotificationSummaryPlatterView *)v8 addGestureRecognizer:v9];

    [(NCNotificationDigestConciseSummaryOrderProvider *)self _updateSummaryPlatterView];
    summaryPlatterView = self->_summaryPlatterView;
  }

  return summaryPlatterView;
}

- (void)_updateSummaryPlatterView
{
  v3 = [(NCNotificationDigestConciseSummaryOrderProvider *)self leadingSummaryPlatterViewConfigureIfNecessary];
  [(NCNotificationDigestConciseSummaryOrderProvider *)self _updateSummaryContentProvider];
  [(NCNotificationSummaryOrderProvider *)self configureSummaryContentDisplaying:self->_summaryPlatterView withSummaryContentProviding:self->_summaryContentProvider];
  v4 = [(NCNotificationSummaryOrderProvider *)self delegate];
  [v4 notificationSummaryOrderProviderRequestsReloadingLeadingSummaryPlatterView:self];
}

- (void)_updateSummaryContentProvider
{
  v12 = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];
  v3 = [(NCNotificationDigestSummaryOrderProvider *)self userNotificationDigest];
  v4 = [v3 viewFlattenedGroups];

  v5 = [(NCNotificationSummaryOrderProvider *)self orderedNotificationGroupLists:v12 forATXUserNotificationDigestNotificationGroup:v4 orderGroupNotifications:0];
  if (![v5 count])
  {
    v6 = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];

    v5 = v6;
  }

  if ([v5 count])
  {
    v7 = [(NCNotificationSummaryOrderProvider *)self representativeNotificationRequestsForNotificationGroupLists:v5];
    v8 = [NCNotificationSummaryContentProvider summaryContentProviderOfType:3 notificationRequests:v7];
    summaryContentProvider = self->_summaryContentProvider;
    self->_summaryContentProvider = v8;

    [(NCNotificationSummaryContentProvider *)self->_summaryContentProvider setDeviceAuthenticated:[(NCNotificationSummaryOrderProvider *)self isDeviceAuthenticated]];
    v10 = self->_summaryContentProvider;
    v11 = [(NCNotificationSummaryOrderProvider *)self summaryHeading];
    [(NCNotificationSummaryContentProvider *)v10 setSummaryTitle:v11];
  }

  else
  {
    v7 = self->_summaryContentProvider;
    self->_summaryContentProvider = 0;
  }
}

@end