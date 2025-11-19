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
  v6 = [v4 notificationIdentifier];
  [v5 setIdentifier:v6];

  v7 = [v4 sectionIdentifier];
  [v5 setBundleIdentifier:v7];

  v8 = [v4 threadIdentifier];
  [v5 setThreadIdentifier:v8];

  v9 = [v4 filterCriteria];
  [v5 setFilterCriteria:v9];

  v10 = DNDContactHandleFromNotificationRequest(v4);
  [v5 setSender:v10];
  v11 = [v4 options];
  if ([v11 overridesQuietMode])
  {

LABEL_4:
    v13 = 2;
LABEL_5:
    [v5 setUrgency:v13];
    goto LABEL_6;
  }

  v12 = [v4 interruptionLevel];

  if (v12 == 3)
  {
    goto LABEL_4;
  }

  if ([v4 interruptionLevel] == 2)
  {
    v13 = 1;
    goto LABEL_5;
  }

LABEL_6:
  v14 = [v4 content];
  v15 = [v14 communicationContext];
  v16 = [v15 notifyRecipientAnyway];

  if (v16)
  {
    [v5 setNotifyAnyway:1];
  }

  v17 = [v4 content];
  v18 = [v17 contentType];
  v19 = [a1 nc_dndClientEventTypeFromNotificationRequestType:v18];

  [v5 setType:v19];
  v20 = [v4 content];
  v21 = [v20 title];
  [v5 setTitle:v21];

  v22 = [v4 content];
  v23 = [v22 subtitle];
  [v5 setSubtitle:v23];

  v24 = [v4 content];
  v25 = [v24 message];
  [v5 setBody:v25];

  v26 = [a1 resolveBehaviorForEventDetails:v5 error:0];

  return v26;
}

- (BOOL)nc_shouldSuppressNotificationRequest:()Notifications
{
  v4 = a3;
  v5 = [v4 eventBehavior];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [a1 nc_behaviorForNotificationRequest:v4];
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