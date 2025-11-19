@interface NCNotificationEventTracker
+ (id)createATXNotificationInterfaceFromRequest:(id)a3;
+ (id)sharedInstance;
- (BOOL)_eligibleToLogInSectionForNotification:(id)a3;
- (NCNotificationEventTracker)init;
- (id)notificationDestinationForState:(id)a3;
- (unint64_t)primaryAttachmentTypeForRequest:(id)a3;
- (void)_cleanUpForRequestIdentifier:(id)a3;
- (void)_displayedNotificationRequests:(id)a3 inUILocation:(int64_t)a4;
- (void)_invalidateTimer:(id)a3 forRequestIdentifier:(id)a4;
- (void)_processNotificationRequest:(id)a3;
- (void)digestAppeared:(id)a3;
- (void)digestDismissed:(id)a3;
- (void)digestExpanded:(id)a3;
- (void)digestExpired:(id)a3;
- (void)dismissedSectionType:(unint64_t)a3 withUUID:(id)a4;
- (void)executedActionWithIdentifier:(id)a3 forNotificationRequest:(id)a4;
- (void)expandedSectionType:(unint64_t)a3 withUUID:(id)a4;
- (void)hideNotificationRequest:(id)a3;
- (void)insertedNotificationRequest:(id)a3 toSectionType:(unint64_t)a4;
- (void)longLookCustomAction:(id)a3 forNotificationRequest:(id)a4 withState:(id)a5;
- (void)longLookDefaultActionInvokedWithTrigger:(int64_t)a3 forNotificationRequest:(id)a4 withState:(id)a5;
- (void)longLookDismissInvokedWithTrigger:(int64_t)a3 forNotificationRequest:(id)a4 withState:(id)a5;
- (void)longLookPresentedForNotificationRequest:(id)a3;
- (void)longLookReparkInvokedWithTrigger:(int64_t)a3 forNotificationRequest:(id)a4 withState:(id)a5;
- (void)missedBundleAppeared:(id)a3;
- (void)missedBundleDismissed:(id)a3;
- (void)missedBundleExpanded:(id)a3;
- (void)missedBundleExpired:(id)a3;
- (void)modifiedNotificationRequest:(id)a3;
- (void)notificationCenterAppeared;
- (void)notificationCenterClearAll;
- (void)notificationCenterDisappeared;
- (void)presentedNotificationRequest:(id)a3 forUILocation:(int64_t)a4;
- (void)presentedNotificationRequestAsBanner:(id)a3;
- (void)prioritySectionAppeared:(id)a3;
- (void)prioritySectionClearAll:(id)a3;
- (void)prioritySectionCollapsed:(id)a3;
- (void)prioritySectionDisappeared:(id)a3;
- (void)prioritySectionExpanded:(id)a3;
- (void)receivedNotification:(id)a3 withProminence:(BOOL)a4 sectionSettings:(id)a5;
- (void)removedNotificationRequest:(id)a3;
- (void)shortLookClearedForNotificationRequest:(id)a3 withState:(id)a4;
- (void)shortLookDefaultActionInvokedWithTrigger:(int64_t)a3 forNotificationRequest:(id)a4 withState:(id)a5;
- (void)shortLookDismissInvokedForNotificationRequest:(id)a3 withState:(id)a4;
- (void)toggledGroupState:(BOOL)a3 withLeadingNotificationRequest:(id)a4;
@end

@implementation NCNotificationEventTracker

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NCNotificationEventTracker_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
    v3 = [MEMORY[0x277CEB1B8] sharedInstance];
    logger = v2->_logger;
    v2->_logger = v3;

    v5 = objc_opt_new();
    logTimers = v2->_logTimers;
    v2->_logTimers = v5;

    v7 = objc_opt_new();
    pendingRequests = v2->_pendingRequests;
    v2->_pendingRequests = v7;
  }

  return v2;
}

- (unint64_t)primaryAttachmentTypeForRequest:(id)a3
{
  v3 = [a3 userNotification];
  v4 = [v3 request];
  v5 = [v4 content];
  v6 = [v5 attachments];
  v7 = [v6 firstObject];

  v8 = [v7 family];
  return v8;
}

- (id)notificationDestinationForState:(id)a3
{
  v3 = [a3 objectForKey:@"destination"];
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

- (void)shortLookDefaultActionInvokedWithTrigger:(int64_t)a3 forNotificationRequest:(id)a4 withState:(id)a5
{
  logger = self->_logger;
  v6 = [a4 atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:20 notification:v6 reason:0 interactionUI:5];
}

- (void)shortLookDismissInvokedForNotificationRequest:(id)a3 withState:(id)a4
{
  logger = self->_logger;
  v5 = [a3 atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:21 notification:v5 reason:0 interactionUI:5];
}

- (void)shortLookClearedForNotificationRequest:(id)a3 withState:(id)a4
{
  logger = self->_logger;
  v5 = [a3 atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:22 notification:v5 reason:0 interactionUI:5];
}

- (void)longLookDefaultActionInvokedWithTrigger:(int64_t)a3 forNotificationRequest:(id)a4 withState:(id)a5
{
  logger = self->_logger;
  v6 = [a4 atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:23 notification:v6 reason:0 interactionUI:5];
}

- (void)longLookCustomAction:(id)a3 forNotificationRequest:(id)a4 withState:(id)a5
{
  logger = self->_logger;
  v6 = [a4 atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:24 notification:v6 reason:0 interactionUI:5];
}

- (void)longLookDismissInvokedWithTrigger:(int64_t)a3 forNotificationRequest:(id)a4 withState:(id)a5
{
  logger = self->_logger;
  v6 = [a4 atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:25 notification:v6 reason:0 interactionUI:5];
}

- (void)longLookReparkInvokedWithTrigger:(int64_t)a3 forNotificationRequest:(id)a4 withState:(id)a5
{
  logger = self->_logger;
  v6 = [a4 atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:26 notification:v6 reason:0 interactionUI:5];
}

- (void)receivedNotification:(id)a3 withProminence:(BOOL)a4 sectionSettings:(id)a5
{
  v6 = a4;
  v26 = a3;
  v8 = a5;
  v9 = [v26 alertOptions];
  v10 = [v9 suppression];

  v11 = 0;
  v12 = 17;
  if (!v10 && v6)
  {
    v13 = [v26 alertOptions];
    v11 = [v13 reason];

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        v15 = [v26 content];
        v16 = [v15 communicationContext];
        v17 = [v16 sender];

        v18 = [MEMORY[0x277D77F58] sharedInstance];
        v19 = [v26 topLevelSectionIdentifier];
        v20 = [v18 curatedContactMatchDetailsForContact:v17 bundleIdentifier:v19];

        if (v20)
        {
          if ([v20 isSuggestedMatch])
          {
            v11 = 4;
          }

          else
          {
            v11 = 3;
          }
        }

        else
        {
          v11 = 3;
        }
      }

      else if (v11 == 4)
      {
        v11 = 5;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      if (v11 == 2)
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      if (v11 != 1)
      {
        v11 = v14;
      }
    }

    if ([v8 isScheduledDeliveryEnabled])
    {
      v21 = [v26 content];
      v22 = [v21 communicationContext];

      if (v22)
      {
        v11 = 6;
      }
    }

    v12 = 16;
  }

  if ([v26 isHighlight])
  {
    v23 = 6;
  }

  else
  {
    v23 = 5;
  }

  logger = self->_logger;
  v25 = [v26 atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:v12 notification:v25 reason:v11 interactionUI:v23];
}

- (void)insertedNotificationRequest:(id)a3 toSectionType:(unint64_t)a4
{
  if (a4 - 1 > 0xB)
  {
    v4 = 2;
  }

  else
  {
    v4 = qword_21E9463E0[a4 - 1];
  }

  [(NCNotificationEventTracker *)self presentedNotificationRequest:a3 forUILocation:v4];
}

- (void)presentedNotificationRequestAsBanner:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  pendingRequests = v5->_pendingRequests;
  v7 = [v4 uuid];
  v8 = [(NSMutableDictionary *)pendingRequests objectForKeyedSubscript:v7];

  if (v8)
  {
    [v8 setIsPresentedAsBanner:1];
  }

  v10[0] = v4;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [(NCNotificationEventTracker *)v5 _displayedNotificationRequests:v9 inUILocation:3];

  objc_sync_exit(v5);
}

- (void)_displayedNotificationRequests:(id)a3 inUILocation:(int64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4 > 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = qword_21E946440[a4];
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
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
        v15 = [v14 uuid];

        if (v15)
        {
          v16 = [v14 uuid];
          [v8 addObject:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [(ATXNotificationsLoggingClient *)self->_logger logNotificationDeliveryUI:v7 notificationUUIDs:v8];
}

- (void)modifiedNotificationRequest:(id)a3
{
  logger = self->_logger;
  v4 = [a3 atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:18 notification:v4 reason:0 interactionUI:5];
}

- (void)removedNotificationRequest:(id)a3
{
  v10 = a3;
  v4 = self;
  objc_sync_enter(v4);
  pendingRequests = v4->_pendingRequests;
  v6 = [v10 uuid];
  v7 = [(NSMutableDictionary *)pendingRequests objectForKeyedSubscript:v6];

  if (v7)
  {
    [v7 setIsRemoved:1];
  }

  logger = v4->_logger;
  v9 = [v10 atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:5 notification:v9 reason:0 interactionUI:5];

  objc_sync_exit(v4);
}

- (void)hideNotificationRequest:(id)a3
{
  logger = self->_logger;
  v4 = [a3 atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:6 notification:v4 reason:0 interactionUI:5];
}

- (void)longLookPresentedForNotificationRequest:(id)a3
{
  logger = self->_logger;
  v4 = [a3 atxUserNotification];
  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:7 notification:v4 reason:0 interactionUI:5];
}

- (void)toggledGroupState:(BOOL)a3 withLeadingNotificationRequest:(id)a4
{
  v4 = a3;
  logger = self->_logger;
  v6 = [a4 atxUserNotification];
  v8 = v6;
  if (v4)
  {
    v7 = 12;
  }

  else
  {
    v7 = 19;
  }

  [(ATXNotificationsLoggingClient *)logger logNotificationEvent:v7 notification:v6 reason:0 interactionUI:5];
}

- (void)executedActionWithIdentifier:(id)a3 forNotificationRequest:(id)a4
{
  v8 = a3;
  v6 = [a4 atxUserNotification];
  if (v6)
  {
    if ([v8 isEqualToString:*MEMORY[0x277CE20E8]])
    {
      v7 = 1;
    }

    else if ([v8 isEqualToString:*MEMORY[0x277CE20F0]])
    {
      v7 = 3;
    }

    else if ([v8 isEqualToString:*MEMORY[0x277CE2120]])
    {
      v7 = 8;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_11;
      }

      v7 = 2;
    }

    [(ATXNotificationsLoggingClient *)self->_logger logNotificationEvent:v7 notification:v6 reason:0 interactionUI:5];
  }

LABEL_11:
}

+ (id)createATXNotificationInterfaceFromRequest:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 sectionIdentifier];
  [v4 setSectionID:v5];

  v6 = [v3 content];
  v7 = [v6 title];
  [v4 setTitle:v7];

  v8 = [v3 content];
  v9 = [v8 subtitle];
  [v4 setSubtitle:v9];

  v10 = [v3 content];
  v11 = [v10 message];
  [v4 setMessage:v11];

  v12 = [v3 categoryIdentifier];
  [v4 setTopic:v12];

  v13 = [v3 supplementaryActions];
  v14 = *MEMORY[0x277D77DA0];
  v15 = [v13 objectForKeyedSubscript:*MEMORY[0x277D77DA0]];

  if (v15)
  {
    v16 = [v3 supplementaryActions];
    v17 = [v16 objectForKeyedSubscript:v14];
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

- (void)missedBundleAppeared:(id)a3
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:4 eventIdentifier:v5 timestamp:v6];
}

- (void)missedBundleExpired:(id)a3
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:5 eventIdentifier:v5 timestamp:v6];
}

- (void)missedBundleDismissed:(id)a3
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:7 eventIdentifier:v5 timestamp:v6];
}

- (void)missedBundleExpanded:(id)a3
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:6 eventIdentifier:v5 timestamp:v6];
}

- (void)digestAppeared:(id)a3
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:8 eventIdentifier:v5 timestamp:v6];
}

- (void)digestExpired:(id)a3
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:9 eventIdentifier:v5 timestamp:v6];
}

- (void)digestDismissed:(id)a3
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:11 eventIdentifier:v5 timestamp:v6];
}

- (void)digestExpanded:(id)a3
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:10 eventIdentifier:v5 timestamp:v6];
}

- (void)prioritySectionAppeared:(id)a3
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:16 eventIdentifier:v5 timestamp:v6];
}

- (void)prioritySectionExpanded:(id)a3
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:18 eventIdentifier:v5 timestamp:v6];
}

- (void)prioritySectionCollapsed:(id)a3
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:19 eventIdentifier:v5 timestamp:v6];
}

- (void)prioritySectionClearAll:(id)a3
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:20 eventIdentifier:v5 timestamp:v6];
}

- (void)prioritySectionDisappeared:(id)a3
{
  logger = self->_logger;
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  [(ATXNotificationsLoggingClient *)logger logNotificationGroupEvent:17 eventIdentifier:v5 timestamp:v6];
}

- (void)dismissedSectionType:(unint64_t)a3 withUUID:(id)a4
{
  v6 = a4;
  if (a3 - 4 >= 3)
  {
    if (a3 == 10)
    {
      v6 = [(NCNotificationEventTracker *)self prioritySectionDisappeared:v6];
    }

    else if (a3 == 3)
    {
      v6 = [(NCNotificationEventTracker *)self missedBundleDismissed:v6];
    }
  }

  else
  {
    v6 = [(NCNotificationEventTracker *)self digestDismissed:v6];
  }

  MEMORY[0x2821F96F8](v6);
}

- (void)expandedSectionType:(unint64_t)a3 withUUID:(id)a4
{
  v6 = a4;
  if (a3 - 4 >= 3)
  {
    if (a3 == 10)
    {
      v6 = [(NCNotificationEventTracker *)self prioritySectionExpanded:v6];
    }

    else if (a3 == 3)
    {
      v6 = [(NCNotificationEventTracker *)self missedBundleExpanded:v6];
    }
  }

  else
  {
    v6 = [(NCNotificationEventTracker *)self digestExpanded:v6];
  }

  MEMORY[0x2821F96F8](v6);
}

- (void)presentedNotificationRequest:(id)a3 forUILocation:(int64_t)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 uuid];
  v8 = [v7 copy];

  if (v8)
  {
    v9 = self;
    objc_sync_enter(v9);
    [(NCNotificationEventTracker *)v9 _invalidateTimer:v9->_logTimers forRequestIdentifier:v8];
    [(NSMutableDictionary *)v9->_pendingRequests setObject:v6 forKeyedSubscript:v8];
    v13[0] = @"requestIdentifier";
    v13[1] = @"location";
    v14[0] = v8;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v14[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

    v12 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:v9 target:sel__processNotificationRequest_ selector:v11 userInfo:0 repeats:6.0];
    [(NSMutableDictionary *)v9->_logTimers setObject:v12 forKeyedSubscript:v8];

    objc_sync_exit(v9);
  }
}

- (void)_processNotificationRequest:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"requestIdentifier"];
  v7 = [v5 objectForKeyedSubscript:@"location"];
  v8 = [v7 unsignedIntegerValue];

  v9 = self;
  objc_sync_enter(v9);
  v10 = [(NSMutableDictionary *)v9->_pendingRequests objectForKeyedSubscript:v6];
  if ([(NCNotificationEventTracker *)v9 _eligibleToLogInSectionForNotification:v10])
  {
    v12[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [(NCNotificationEventTracker *)v9 _displayedNotificationRequests:v11 inUILocation:v8];
  }

  [(NCNotificationEventTracker *)v9 _invalidateTimer:v9->_logTimers forRequestIdentifier:v6];
  [(NCNotificationEventTracker *)v9 _cleanUpForRequestIdentifier:v6];

  objc_sync_exit(v9);
}

- (void)_invalidateTimer:(id)a3 forRequestIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [v10 objectForKeyedSubscript:v6];
  v9 = v8;
  if (v8)
  {
    [v8 invalidate];
    [v10 removeObjectForKey:v6];
  }

  objc_sync_exit(v7);
}

- (void)_cleanUpForRequestIdentifier:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)v4->_pendingRequests removeObjectForKey:v5];
  [(NSMutableDictionary *)v4->_logTimers removeObjectForKey:v5];
  objc_sync_exit(v4);
}

- (BOOL)_eligibleToLogInSectionForNotification:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = !v3 || ![v3 isPresentedAsBanner] || (objc_msgSend(v4, "isRemoved") & 1) == 0;

  return v5;
}

@end