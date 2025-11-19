@interface NCNotificationSystemSettings(Bulletin)
+ (id)notificationSystemSettingsForBBGlobalSettings:()Bulletin;
+ (id)notificationSystemSettingsForScheduledDeliveryEnabled:()Bulletin scheduledDeliveryUninitialized:scheduledDeliveryShowNextSummary:scheduledDeliveryTimes:listDisplayStyleSetting:highlightsEnabled:;
+ (uint64_t)bbListDisplayStyleSettingForNCNotificationListDisplayStyleSetting:()Bulletin;
+ (uint64_t)listDisplayStyleSettingForBBNotificationListDisplayStyleSetting:()Bulletin;
@end

@implementation NCNotificationSystemSettings(Bulletin)

+ (id)notificationSystemSettingsForBBGlobalSettings:()Bulletin
{
  v3 = MEMORY[0x277D77E40];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setScheduledDeliveryEnabled:{objc_msgSend(v4, "globalScheduledDeliverySetting") == 2}];
  [v5 setScheduledDeliveryUninitialized:{objc_msgSend(v4, "globalScheduledDeliverySetting") == -1}];
  [v5 setScheduledDeliveryShowNextSummary:{objc_msgSend(v4, "globalScheduledDeliveryShowNextSummarySetting") == 2}];
  v6 = [v4 globalScheduledDeliveryTimes];
  [v5 setScheduledDeliveryTimes:v6];

  [v5 setListDisplayStyleSetting:{objc_msgSend(MEMORY[0x277D77E68], "listDisplayStyleSettingForBBNotificationListDisplayStyleSetting:", objc_msgSend(v4, "globalNotificationListDisplayStyleSetting"))}];
  v7 = [v4 globalHighlightsSetting];

  [v5 setHighlightsEnabled:v7 == 2];

  return v5;
}

+ (id)notificationSystemSettingsForScheduledDeliveryEnabled:()Bulletin scheduledDeliveryUninitialized:scheduledDeliveryShowNextSummary:scheduledDeliveryTimes:listDisplayStyleSetting:highlightsEnabled:
{
  v13 = MEMORY[0x277D77E40];
  v14 = a6;
  v15 = objc_alloc_init(v13);
  [v15 setScheduledDeliveryEnabled:a3];
  [v15 setScheduledDeliveryUninitialized:a4];
  [v15 setScheduledDeliveryShowNextSummary:a5];
  [v15 setScheduledDeliveryTimes:v14];

  [v15 setListDisplayStyleSetting:a7];
  [v15 setHighlightsEnabled:a8];

  return v15;
}

+ (uint64_t)listDisplayStyleSettingForBBNotificationListDisplayStyleSetting:()Bulletin
{
  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return a3 == 2;
  }
}

+ (uint64_t)bbListDisplayStyleSettingForNCNotificationListDisplayStyleSetting:()Bulletin
{
  v3 = 1;
  if (a3 == 1)
  {
    v3 = 2;
  }

  if (a3 == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

@end