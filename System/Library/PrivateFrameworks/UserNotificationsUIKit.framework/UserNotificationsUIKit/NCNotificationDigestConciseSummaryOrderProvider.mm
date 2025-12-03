@interface NCNotificationDigestConciseSummaryOrderProvider
- (id)leadingSummaryPlatterViewConfigureIfNecessary;
- (void)_updateSummaryContentProvider;
- (void)_updateSummaryPlatterView;
- (void)setDeviceAuthenticated:(BOOL)authenticated;
@end

@implementation NCNotificationDigestConciseSummaryOrderProvider

- (void)setDeviceAuthenticated:(BOOL)authenticated
{
  authenticatedCopy = authenticated;
  v5.receiver = self;
  v5.super_class = NCNotificationDigestConciseSummaryOrderProvider;
  [(NCNotificationSummaryOrderProvider *)&v5 setDeviceAuthenticated:?];
  [(NCNotificationSummaryContentProvider *)self->_summaryContentProvider setDeviceAuthenticated:authenticatedCopy];
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
    materialGroupNameBase = [(NCNotificationSummaryOrderProvider *)self materialGroupNameBase];
    [(PLPlatterView *)v6 setMaterialGroupNameBase:materialGroupNameBase];

    v8 = self->_summaryPlatterView;
    summaryPlatterViewTapGestureRecognizer = [(NCNotificationSummaryOrderProvider *)self summaryPlatterViewTapGestureRecognizer];
    [(NCNotificationSummaryPlatterView *)v8 addGestureRecognizer:summaryPlatterViewTapGestureRecognizer];

    [(NCNotificationDigestConciseSummaryOrderProvider *)self _updateSummaryPlatterView];
    summaryPlatterView = self->_summaryPlatterView;
  }

  return summaryPlatterView;
}

- (void)_updateSummaryPlatterView
{
  leadingSummaryPlatterViewConfigureIfNecessary = [(NCNotificationDigestConciseSummaryOrderProvider *)self leadingSummaryPlatterViewConfigureIfNecessary];
  [(NCNotificationDigestConciseSummaryOrderProvider *)self _updateSummaryContentProvider];
  [(NCNotificationSummaryOrderProvider *)self configureSummaryContentDisplaying:self->_summaryPlatterView withSummaryContentProviding:self->_summaryContentProvider];
  delegate = [(NCNotificationSummaryOrderProvider *)self delegate];
  [delegate notificationSummaryOrderProviderRequestsReloadingLeadingSummaryPlatterView:self];
}

- (void)_updateSummaryContentProvider
{
  cachedOrderedNotificationGroupLists = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];
  userNotificationDigest = [(NCNotificationDigestSummaryOrderProvider *)self userNotificationDigest];
  viewFlattenedGroups = [userNotificationDigest viewFlattenedGroups];

  v5 = [(NCNotificationSummaryOrderProvider *)self orderedNotificationGroupLists:cachedOrderedNotificationGroupLists forATXUserNotificationDigestNotificationGroup:viewFlattenedGroups orderGroupNotifications:0];
  if (![v5 count])
  {
    cachedOrderedNotificationGroupLists2 = [(NCNotificationSummaryOrderProvider *)self cachedOrderedNotificationGroupLists];

    v5 = cachedOrderedNotificationGroupLists2;
  }

  if ([v5 count])
  {
    v7 = [(NCNotificationSummaryOrderProvider *)self representativeNotificationRequestsForNotificationGroupLists:v5];
    v8 = [NCNotificationSummaryContentProvider summaryContentProviderOfType:3 notificationRequests:v7];
    summaryContentProvider = self->_summaryContentProvider;
    self->_summaryContentProvider = v8;

    [(NCNotificationSummaryContentProvider *)self->_summaryContentProvider setDeviceAuthenticated:[(NCNotificationSummaryOrderProvider *)self isDeviceAuthenticated]];
    v10 = self->_summaryContentProvider;
    summaryHeading = [(NCNotificationSummaryOrderProvider *)self summaryHeading];
    [(NCNotificationSummaryContentProvider *)v10 setSummaryTitle:summaryHeading];
  }

  else
  {
    v7 = self->_summaryContentProvider;
    self->_summaryContentProvider = 0;
  }
}

@end