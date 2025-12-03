@interface DNDEventBehaviorResolutionService(Notifications)
- (BOOL)nc_shouldSuppressNotificationRequest:()Notifications;
- (id)nc_behaviorForNotificationRequest:()Notifications;
- (uint64_t)nc_dndClientEventTypeFromNotificationRequestType:()Notifications;
@end

@implementation DNDEventBehaviorResolutionService(Notifications)

- (id)nc_behaviorForNotificationRequest:()Notifications
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D05A18]);
  notificationIdentifier = [v4 notificationIdentifier];
  [v5 setIdentifier:notificationIdentifier];

  sectionIdentifier = [v4 sectionIdentifier];
  [v5 setBundleIdentifier:sectionIdentifier];

  threadIdentifier = [v4 threadIdentifier];
  [v5 setThreadIdentifier:threadIdentifier];

  filterCriteria = [v4 filterCriteria];
  [v5 setFilterCriteria:filterCriteria];

  v10 = DNDContactHandleFromNotificationRequest(v4);
  [v5 setSender:v10];
  options = [v4 options];
  if ([options overridesQuietMode])
  {

LABEL_4:
    v13 = 2;
LABEL_5:
    [v5 setUrgency:v13];
    goto LABEL_6;
  }

  interruptionLevel = [v4 interruptionLevel];

  if (interruptionLevel == 3)
  {
    goto LABEL_4;
  }

  if ([v4 interruptionLevel] == 2)
  {
    v13 = 1;
    goto LABEL_5;
  }

LABEL_6:
  content = [v4 content];
  communicationContext = [content communicationContext];
  notifyRecipientAnyway = [communicationContext notifyRecipientAnyway];

  if (notifyRecipientAnyway)
  {
    [v5 setNotifyAnyway:1];
  }

  content2 = [v4 content];
  contentType = [content2 contentType];
  v19 = [self nc_dndClientEventTypeFromNotificationRequestType:contentType];

  [v5 setType:v19];
  content3 = [v4 content];
  title = [content3 title];
  [v5 setTitle:title];

  content4 = [v4 content];
  subtitle = [content4 subtitle];
  [v5 setSubtitle:subtitle];

  content5 = [v4 content];
  message = [content5 message];
  [v5 setBody:message];

  v26 = [self resolveBehaviorForEventDetails:v5 error:0];

  return v26;
}

- (BOOL)nc_shouldSuppressNotificationRequest:()Notifications
{
  v4 = a3;
  eventBehavior = [v4 eventBehavior];
  v6 = eventBehavior;
  if (eventBehavior)
  {
    v7 = eventBehavior;
  }

  else
  {
    v7 = [self nc_behaviorForNotificationRequest:v4];
  }

  v8 = v7;

  v9 = [v8 interruptionSuppression] != 0;
  return v9;
}

- (uint64_t)nc_dndClientEventTypeFromNotificationRequestType:()Notifications
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277CE2158]])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CE2160]])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CE2170]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CE2168]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CE2138]))
  {
    v4 = 2;
  }

  else
  {
    v4 = [v3 isEqualToString:*MEMORY[0x277CE2148]];
  }

  return v4;
}

@end