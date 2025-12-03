@interface NCNotificationEventTracker
+ (id)createATXNotificationInterfaceFromRequest:(id)request;
+ (id)sharedInstance;
- (BOOL)_eligibleToLogInSectionForNotification:(id)notification;
- (NCNotificationEventTracker)init;
- (id)notificationDestinationForState:(id)state;
- (unint64_t)primaryAttachmentTypeForRequest:(id)request;
- (void)_cleanUpForRequestIdentifier:(id)identifier;
- (void)_displayedNotificationRequests:(id)requests inUILocation:(int64_t)location;
- (void)_invalidateTimer:(id)timer forRequestIdentifier:(id)identifier;
- (void)_processNotificationRequest:(id)request;
- (void)digestAppeared:(id)appeared;
- (void)digestDismissed:(id)dismissed;
- (void)digestExpanded:(id)expanded;
- (void)digestExpired:(id)expired;
- (void)dismissedSectionType:(unint64_t)type withUUID:(id)d;
- (void)executedActionWithIdentifier:(id)identifier forNotificationRequest:(id)request;
- (void)expandedSectionType:(unint64_t)type withUUID:(id)d;
- (void)hideNotificationRequest:(id)request;
- (void)insertedNotificationRequest:(id)request toSectionType:(unint64_t)type;
- (void)longLookCustomAction:(id)action forNotificationRequest:(id)request withState:(id)state;
- (void)longLookDefaultActionInvokedWithTrigger:(int64_t)trigger forNotificationRequest:(id)request withState:(id)state;
- (void)longLookDismissInvokedWithTrigger:(int64_t)trigger forNotificationRequest:(id)request withState:(id)state;
- (void)longLookPresentedForNotificationRequest:(id)request;
- (void)longLookReparkInvokedWithTrigger:(int64_t)trigger forNotificationRequest:(id)request withState:(id)state;
- (void)missedBundleAppeared:(id)appeared;
- (void)missedBundleDismissed:(id)dismissed;
- (void)missedBundleExpanded:(id)expanded;
- (void)missedBundleExpired:(id)expired;
- (void)modifiedNotificationRequest:(id)request;
- (void)notificationCenterAppeared;
- (void)notificationCenterClearAll;
- (void)notificationCenterDisappeared;
- (void)presentedNotificationRequest:(id)request forUILocation:(int64_t)location;
- (void)presentedNotificationRequestAsBanner:(id)banner;
- (void)prioritySectionAppeared:(id)appeared;
- (void)prioritySectionClearAll:(id)all;
- (void)prioritySectionCollapsed:(id)collapsed;
- (void)prioritySectionDisappeared:(id)disappeared;
- (void)prioritySectionExpanded:(id)expanded;
- (void)receivedNotification:(id)notification withProminence:(BOOL)prominence sectionSettings:(id)settings;
- (void)removedNotificationRequest:(id)request;
- (void)shortLookClearedForNotificationRequest:(id)request withState:(id)state;
- (void)shortLookDefaultActionInvokedWithTrigger:(int64_t)trigger forNotificationRequest:(id)request withState:(id)state;
- (void)shortLookDismissInvokedForNotificationRequest:(id)request withState:(id)state;
- (void)toggledGroupState:(BOOL)state withLeadingNotificationRequest:(id)request;
@end

@implementation NCNotificationEventTracker

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NCNotificationEventTracker_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance___sharedInstance_0;

  return v2;
}

uint64_t __44__NCNotificationEventTracker_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance___sharedInstance_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (NCNotificationEventTracker)init
{
  v10.receiver = self;
  v10.super_class = NCNotificationEventTracker;
  v2 = [(NCNotificationEventTracker *)&v10 init];
  if (v2)
  {
    mEMORY[0x277CEB1B8] = [MEMORY[0x277CEB1B8] sharedInstance];
    logger = v2->_logger;
    v2->_logger = mEMORY[0x277CEB1B8];

    v5 = objc_opt_new();
    logTimers = v2->_logTimers;
    v2->_logTimers = v5;

    v7 = objc_opt_new();
    pendingRequests = v2->_pendingRequests;
    v2->_pendingRequests = v7;
  }

  return v2;
}

- (unint64_t)primaryAttachmentTypeForRequest:(id)request
{
  userNotification = [request userNotification];
  request = [userNotification request];
  content = [request content];
  attachments = [content attachments];
  firstObject = [attachments firstObject];

  family = [firstObject family];
  return family;
}

- (id)notificationDestinationForState:(id)state
{
  v3 = [state objectForKey:@"destination"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_282FE84F8;
  }

  v6 = v5;

  return v5;
}

- (void)shortLookDefaultActionInvokedWithTrigger:(int64_t)trigger forNotificationRequest:(id)request withState:(id)state
{
  logger = self->_logger;
  atxUserNotification = [request atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:20 notification:atxUserNotification reason:0 interactionUI:5];
}

- (void)shortLookDismissInvokedForNotificationRequest:(id)request withState:(id)state
{
  logger = self->_logger;
  atxUserNotification = [request atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:21 notification:atxUserNotification reason:0 interactionUI:5];
}

- (void)shortLookClearedForNotificationRequest:(id)request withState:(id)state
{
  logger = self->_logger;
  atxUserNotification = [request atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:22 notification:atxUserNotification reason:0 interactionUI:5];
}

- (void)longLookDefaultActionInvokedWithTrigger:(int64_t)trigger forNotificationRequest:(id)request withState:(id)state
{
  logger = self->_logger;
  atxUserNotification = [request atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:23 notification:atxUserNotification reason:0 interactionUI:5];
}

- (void)longLookCustomAction:(id)action forNotificationRequest:(id)request withState:(id)state
{
  logger = self->_logger;
  atxUserNotification = [request atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:24 notification:atxUserNotification reason:0 interactionUI:5];
}

- (void)longLookDismissInvokedWithTrigger:(int64_t)trigger forNotificationRequest:(id)request withState:(id)state
{
  logger = self->_logger;
  atxUserNotification = [request atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:25 notification:atxUserNotification reason:0 interactionUI:5];
}

- (void)longLookReparkInvokedWithTrigger:(int64_t)trigger forNotificationRequest:(id)request withState:(id)state
{
  logger = self->_logger;
  atxUserNotification = [request atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:26 notification:atxUserNotification reason:0 interactionUI:5];
}

- (void)receivedNotification:(id)notification withProminence:(BOOL)prominence sectionSettings:(id)settings
{
  prominenceCopy = prominence;
  notificationCopy = notification;
  settingsCopy = settings;
  alertOptions = [notificationCopy alertOptions];
  suppression = [alertOptions suppression];

  reason = 0;
  v12 = 17;
  if (!suppression && prominenceCopy)
  {
    alertOptions2 = [notificationCopy alertOptions];
    reason = [alertOptions2 reason];

    if (reason > 2)
    {
      if (reason == 3)
      {
        content = [notificationCopy content];
        communicationContext = [content communicationContext];
        sender = [communicationContext sender];

        mEMORY[0x277D77F58] = [MEMORY[0x277D77F58] sharedInstance];
        topLevelSectionIdentifier = [notificationCopy topLevelSectionIdentifier];
        v20 = [mEMORY[0x277D77F58] curatedContactMatchDetailsForContact:sender bundleIdentifier:topLevelSectionIdentifier];

        if (v20)
        {
          if ([v20 isSuggestedMatch])
          {
            reason = 4;
          }

          else
          {
            reason = 3;
          }
        }

        else
        {
          reason = 3;
        }
      }

      else if (reason == 4)
      {
        reason = 5;
      }

      else
      {
        reason = 0;
      }
    }

    else
    {
      if (reason == 2)
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      if (reason != 1)
      {
        reason = v14;
      }
    }

    if ([settingsCopy isScheduledDeliveryEnabled])
    {
      content2 = [notificationCopy content];
      communicationContext2 = [content2 communicationContext];

      if (communicationContext2)
      {
        reason = 6;
      }
    }

    v12 = 16;
  }

  if ([notificationCopy isHighlight])
  {
    v23 = 6;
  }

  else
  {
    v23 = 5;
  }

  logger = self->_logger;
  atxUserNotification = [notificationCopy atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:v12 notification:atxUserNotification reason:reason interactionUI:v23];
}

- (void)insertedNotificationRequest:(id)request toSectionType:(unint64_t)type
{
  if (type - 1 > 0xB)
  {
    v4 = 2;
  }

  else
  {
    v4 = qword_21E9463E0[type - 1];
  }

  [(NCNotificationEventTracker *)self presentedNotificationRequest:request forUILocation:v4];
}

- (void)presentedNotificationRequestAsBanner:(id)banner
{
  v10[1] = *MEMORY[0x277D85DE8];
  bannerCopy = banner;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingRequests = selfCopy->_pendingRequests;
  uuid = [bannerCopy uuid];
  v8 = [(NSMutableDictionary *)pendingRequests objectForKeyedSubscript:uuid];

  if (v8)
  {
    [v8 setIsPresentedAsBanner:1];
  }

  v10[0] = bannerCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [(NCNotificationEventTracker *)selfCopy _displayedNotificationRequests:v9 inUILocation:3];

  objc_sync_exit(selfCopy);
}

- (void)_displayedNotificationRequests:(id)requests inUILocation:(int64_t)location
{
  v22 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  if (location > 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = qword_21E946440[location];
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = requestsCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        uuid = [v14 uuid];

        if (uuid)
        {
          uuid2 = [v14 uuid];
          [v8 addObject:uuid2];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [(ATXNotificationsLoggingClient *)self->_logger logNotificationDeliveryUI:v7 notificationUUIDs:v8];
}

- (void)modifiedNotificationRequest:(id)request
{
  logger = self->_logger;
  atxUserNotification = [request atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:18 notification:atxUserNotification reason:0 interactionUI:5];
}

- (void)removedNotificationRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingRequests = selfCopy->_pendingRequests;
  uuid = [requestCopy uuid];
  v7 = [(NSMutableDictionary *)pendingRequests objectForKeyedSubscript:uuid];

  if (v7)
  {
    [v7 setIsRemoved:1];
  }

  logger = selfCopy->_logger;
  atxUserNotification = [requestCopy atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:5 notification:atxUserNotification reason:0 interactionUI:5];

  objc_sync_exit(selfCopy);
}

- (void)hideNotificationRequest:(id)request
{
  logger = self->_logger;
  atxUserNotification = [request atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:6 notification:atxUserNotification reason:0 interactionUI:5];
}

- (void)longLookPresentedForNotificationRequest:(id)request
{
  logger = self->_logger;
  atxUserNotification = [request atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:7 notification:atxUserNotification reason:0 interactionUI:5];
}

- (void)toggledGroupState:(BOOL)state withLeadingNotificationRequest:(id)request
{
  stateCopy = state;
  logger = self->_logger;
  atxUserNotification = [request atxUserNotification];
  v8 = atxUserNotification;
  if (stateCopy)
  {
    v7 = 12;
  }

  else
  {
    v7 = 19;
  }

  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:v7 notification:atxUserNotification reason:0 interactionUI:5];
}

- (void)executedActionWithIdentifier:(id)identifier forNotificationRequest:(id)request
{
  identifierCopy = identifier;
  atxUserNotification = [request atxUserNotification];
  if (atxUserNotification)
  {
    if ([identifierCopy isEqualToString:*MEMORY[0x277CE20E8]])
    {
      v7 = 1;
    }

    else if ([identifierCopy isEqualToString:*MEMORY[0x277CE20F0]])
    {
      v7 = 3;
    }

    else if ([identifierCopy isEqualToString:*MEMORY[0x277CE2120]])
    {
      v7 = 8;
    }

    else
    {
      if (!identifierCopy)
      {
        goto LABEL_11;
      }

      v7 = 2;
    }

    [(ATXNotificationsLoggingClient *)self->_logger logNotificationEvent:v7 notification:atxUserNotification reason:0 interactionUI:5];
  }

LABEL_11:
}

+ (id)createATXNotificationInterfaceFromRequest:(id)request
{
  requestCopy = request;
  v4 = objc_opt_new();
  sectionIdentifier = [requestCopy sectionIdentifier];
  [v4 setSectionID:sectionIdentifier];

  content = [requestCopy content];
  title = [content title];
  [v4 setTitle:title];

  content2 = [requestCopy content];
  subtitle = [content2 subtitle];
  [v4 setSubtitle:subtitle];

  content3 = [requestCopy content];
  message = [content3 message];
  [v4 setMessage:message];

  categoryIdentifier = [requestCopy categoryIdentifier];
  [v4 setTopic:categoryIdentifier];

  supplementaryActions = [requestCopy supplementaryActions];
  v14 = *MEMORY[0x277D77DA0];
  v15 = [supplementaryActions objectForKeyedSubscript:*MEMORY[0x277D77DA0]];

  if (v15)
  {
    supplementaryActions2 = [requestCopy supplementaryActions];
    v17 = [supplementaryActions2 objectForKeyedSubscript:v14];
    v18 = [v17 count];
  }

  else
  {
    v18 = 0;
  }

  [v4 setNumSuppActions:v18];

  return v4;
}

- (void)notificationCenterAppeared
{
  logger = self->_logger;
  v3 = [MEMORY[0x277CBEAA8] now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:1 eventIdentifier:0 timestamp:v3];
}

- (void)notificationCenterDisappeared
{
  logger = self->_logger;
  v3 = [MEMORY[0x277CBEAA8] now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:2 eventIdentifier:0 timestamp:v3];
}

- (void)notificationCenterClearAll
{
  logger = self->_logger;
  v3 = [MEMORY[0x277CBEAA8] now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:3 eventIdentifier:0 timestamp:v3];
}

- (void)missedBundleAppeared:(id)appeared
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  appearedCopy = appeared;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:4 eventIdentifier:appearedCopy timestamp:v6];
}

- (void)missedBundleExpired:(id)expired
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  expiredCopy = expired;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:5 eventIdentifier:expiredCopy timestamp:v6];
}

- (void)missedBundleDismissed:(id)dismissed
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  dismissedCopy = dismissed;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:7 eventIdentifier:dismissedCopy timestamp:v6];
}

- (void)missedBundleExpanded:(id)expanded
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  expandedCopy = expanded;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:6 eventIdentifier:expandedCopy timestamp:v6];
}

- (void)digestAppeared:(id)appeared
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  appearedCopy = appeared;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:8 eventIdentifier:appearedCopy timestamp:v6];
}

- (void)digestExpired:(id)expired
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  expiredCopy = expired;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:9 eventIdentifier:expiredCopy timestamp:v6];
}

- (void)digestDismissed:(id)dismissed
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  dismissedCopy = dismissed;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:11 eventIdentifier:dismissedCopy timestamp:v6];
}

- (void)digestExpanded:(id)expanded
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  expandedCopy = expanded;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:10 eventIdentifier:expandedCopy timestamp:v6];
}

- (void)prioritySectionAppeared:(id)appeared
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  appearedCopy = appeared;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:16 eventIdentifier:appearedCopy timestamp:v6];
}

- (void)prioritySectionExpanded:(id)expanded
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  expandedCopy = expanded;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:18 eventIdentifier:expandedCopy timestamp:v6];
}

- (void)prioritySectionCollapsed:(id)collapsed
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  collapsedCopy = collapsed;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:19 eventIdentifier:collapsedCopy timestamp:v6];
}

- (void)prioritySectionClearAll:(id)all
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  allCopy = all;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:20 eventIdentifier:allCopy timestamp:v6];
}

- (void)prioritySectionDisappeared:(id)disappeared
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  disappearedCopy = disappeared;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:17 eventIdentifier:disappearedCopy timestamp:v6];
}

- (void)dismissedSectionType:(unint64_t)type withUUID:(id)d
{
  dCopy = d;
  if (type - 4 >= 3)
  {
    if (type == 10)
    {
      dCopy = [(NCNotificationEventTracker *)self prioritySectionDisappeared:dCopy];
    }

    else if (type == 3)
    {
      dCopy = [(NCNotificationEventTracker *)self missedBundleDismissed:dCopy];
    }
  }

  else
  {
    dCopy = [(NCNotificationEventTracker *)self digestDismissed:dCopy];
  }

  MEMORY[0x2821F96F8](dCopy);
}

- (void)expandedSectionType:(unint64_t)type withUUID:(id)d
{
  dCopy = d;
  if (type - 4 >= 3)
  {
    if (type == 10)
    {
      dCopy = [(NCNotificationEventTracker *)self prioritySectionExpanded:dCopy];
    }

    else if (type == 3)
    {
      dCopy = [(NCNotificationEventTracker *)self missedBundleExpanded:dCopy];
    }
  }

  else
  {
    dCopy = [(NCNotificationEventTracker *)self digestExpanded:dCopy];
  }

  MEMORY[0x2821F96F8](dCopy);
}

- (void)presentedNotificationRequest:(id)request forUILocation:(int64_t)location
{
  v14[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  uuid = [requestCopy uuid];
  v8 = [uuid copy];

  if (v8)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NCNotificationEventTracker *)selfCopy _invalidateTimer:selfCopy->_logTimers forRequestIdentifier:v8];
    [(NSMutableDictionary *)selfCopy->_pendingRequests setObject:requestCopy forKeyedSubscript:v8];
    v13[0] = @"requestIdentifier";
    v13[1] = @"location";
    v14[0] = v8;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:location];
    v14[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

    v12 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:selfCopy target:sel__processNotificationRequest_ selector:v11 userInfo:0 repeats:6.0];
    [(NSMutableDictionary *)selfCopy->_logTimers setObject:v12 forKeyedSubscript:v8];

    objc_sync_exit(selfCopy);
  }
}

- (void)_processNotificationRequest:(id)request
{
  v12[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  userInfo = [requestCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"requestIdentifier"];
  v7 = [userInfo objectForKeyedSubscript:@"location"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = [(NSMutableDictionary *)selfCopy->_pendingRequests objectForKeyedSubscript:v6];
  if ([(NCNotificationEventTracker *)selfCopy _eligibleToLogInSectionForNotification:v10])
  {
    v12[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [(NCNotificationEventTracker *)selfCopy _displayedNotificationRequests:v11 inUILocation:unsignedIntegerValue];
  }

  [(NCNotificationEventTracker *)selfCopy _invalidateTimer:selfCopy->_logTimers forRequestIdentifier:v6];
  [(NCNotificationEventTracker *)selfCopy _cleanUpForRequestIdentifier:v6];

  objc_sync_exit(selfCopy);
}

- (void)_invalidateTimer:(id)timer forRequestIdentifier:(id)identifier
{
  timerCopy = timer;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [timerCopy objectForKeyedSubscript:identifierCopy];
  v9 = v8;
  if (v8)
  {
    [v8 invalidate];
    [timerCopy removeObjectForKey:identifierCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)_cleanUpForRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_pendingRequests removeObjectForKey:identifierCopy];
  [(NSMutableDictionary *)selfCopy->_logTimers removeObjectForKey:identifierCopy];
  objc_sync_exit(selfCopy);
}

- (BOOL)_eligibleToLogInSectionForNotification:(id)notification
{
  notificationCopy = notification;
  v4 = notificationCopy;
  v5 = !notificationCopy || ![notificationCopy isPresentedAsBanner] || (objc_msgSend(v4, "isRemoved") & 1) == 0;

  return v5;
}

@end