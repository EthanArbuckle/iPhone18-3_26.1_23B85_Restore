@interface UNNotificationSystemSettings
- (BOOL)isEqual:(id)a3;
- (UNNotificationSystemSettings)initWithCoder:(id)a3;
- (UNNotificationSystemSettings)initWithShowPreviewsSetting:(int64_t)a3 announcementSetting:(int64_t)a4 announcementHeadphonesSetting:(int64_t)a5 announcementCarPlaySetting:(int64_t)a6 scheduledDeliverySetting:(int64_t)a7 scheduledDeliveryTimes:(id)a8 scheduledDeliveryShowNextSummarySetting:(int64_t)a9 notificationListDisplayStyleSetting:(int64_t)a10 remoteNotificationsSetting:(int64_t)a11 summarizationSetting:(int64_t)a12 prioritizationSetting:(int64_t)a13 modifiedSettings:(unint64_t)a14;
- (id)_stringForNotificationListDisplayStyleSetting:(int64_t)a3;
- (id)_stringForScheduledDeliveryTimes:(id)a3;
- (id)_stringforAnnouncementCarPlaySetting:(int64_t)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotificationSystemSettings

- (id)description
{
  v17 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  [(UNNotificationSystemSettings *)self showPreviewsSetting];
  v15 = UNShowPreviewsSettingString();
  [(UNNotificationSystemSettings *)self announcementSetting];
  v18 = UNNotificationSettingString();
  [(UNNotificationSystemSettings *)self announcementHeadphonesSetting];
  v12 = UNNotificationSettingString();
  v3 = [(UNNotificationSystemSettings *)self _stringforAnnouncementCarPlaySetting:[(UNNotificationSystemSettings *)self announcementCarPlaySetting]];
  [(UNNotificationSystemSettings *)self scheduledDeliverySetting];
  v13 = UNNotificationSettingString();
  v14 = [(UNNotificationSystemSettings *)self scheduledDeliveryTimes];
  v4 = [(UNNotificationSystemSettings *)self _stringForScheduledDeliveryTimes:v14];
  [(UNNotificationSystemSettings *)self scheduledDeliveryShowNextSummarySetting];
  v5 = UNNotificationSettingString();
  v6 = [(UNNotificationSystemSettings *)self _stringForNotificationListDisplayStyleSetting:self->_notificationListDisplayStyleSetting];
  [(UNNotificationSystemSettings *)self remoteNotificationsSetting];
  v7 = UNNotificationSettingString();
  [(UNNotificationSystemSettings *)self summarizationSetting];
  v8 = UNNotificationSettingString();
  [(UNNotificationSystemSettings *)self prioritizationSetting];
  v9 = UNNotificationSettingString();
  v10 = [v17 stringWithFormat:@"<%@: %p showPreviewsSetting: %@; announcementSetting: %@; announcementHeadphonesSetting: %@; announcementCarPlaySetting: %@; scheduledDeliverySetting: %@; scheduledDeliveryTimes: %@; scheduledDeliveryShowNextSummarySetting: %@; notificationListDisplayStyleSetting: %@; remoteNotificationsSetting: %@, summarizationSetting: %@, prioritizationSetting: %@>", v16, self, v15, v18, v12, v3, v13, v4, v5, v6, v7, v8, v9];;

  return v10;
}

- (UNNotificationSystemSettings)initWithShowPreviewsSetting:(int64_t)a3 announcementSetting:(int64_t)a4 announcementHeadphonesSetting:(int64_t)a5 announcementCarPlaySetting:(int64_t)a6 scheduledDeliverySetting:(int64_t)a7 scheduledDeliveryTimes:(id)a8 scheduledDeliveryShowNextSummarySetting:(int64_t)a9 notificationListDisplayStyleSetting:(int64_t)a10 remoteNotificationsSetting:(int64_t)a11 summarizationSetting:(int64_t)a12 prioritizationSetting:(int64_t)a13 modifiedSettings:(unint64_t)a14
{
  v21 = a8;
  v25.receiver = self;
  v25.super_class = UNNotificationSystemSettings;
  v22 = [(UNNotificationSystemSettings *)&v25 init];
  v23 = v22;
  if (v22)
  {
    v22->_showPreviewsSetting = a3;
    v22->_announcementSetting = a4;
    v22->_announcementHeadphonesSetting = a5;
    v22->_announcementCarPlaySetting = a6;
    v22->_scheduledDeliverySetting = a7;
    objc_storeStrong(&v22->_scheduledDeliveryTimes, a8);
    v23->_notificationListDisplayStyleSetting = a10;
    v23->_remoteNotificationsSetting = a11;
    v23->_summarizationSetting = a12;
    v23->_prioritizationSetting = a13;
    v23->_scheduledDeliveryShowNextSummarySetting = a9;
    v23->_modifiedSettings = a14;
  }

  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[UNNotificationSystemSettings showPreviewsSetting](self forKey:{"showPreviewsSetting"), @"showPreviewsSetting"}];
  [v5 encodeInteger:-[UNNotificationSystemSettings announcementSetting](self forKey:{"announcementSetting"), @"announcementSetting"}];
  [v5 encodeInteger:-[UNNotificationSystemSettings announcementHeadphonesSetting](self forKey:{"announcementHeadphonesSetting"), @"announcementHeadphonesSetting"}];
  [v5 encodeInteger:-[UNNotificationSystemSettings announcementCarPlaySetting](self forKey:{"announcementCarPlaySetting"), @"announcementCarPlaySetting"}];
  [v5 encodeInteger:-[UNNotificationSystemSettings scheduledDeliverySetting](self forKey:{"scheduledDeliverySetting"), @"scheduledDeliverySetting"}];
  v4 = [(UNNotificationSystemSettings *)self scheduledDeliveryTimes];
  [v5 encodeObject:v4 forKey:@"scheduledDeliveryTimes"];

  [v5 encodeInteger:-[UNNotificationSystemSettings scheduledDeliveryShowNextSummarySetting](self forKey:{"scheduledDeliveryShowNextSummarySetting"), @"scheduledDeliveryShowNextSummarySetting"}];
  [v5 encodeInteger:self->_notificationListDisplayStyleSetting forKey:@"notificationListDisplayStyleSetting"];
  [v5 encodeInteger:-[UNNotificationSystemSettings remoteNotificationsSetting](self forKey:{"remoteNotificationsSetting"), @"remoteNotificationsSetting"}];
  [v5 encodeInteger:-[UNNotificationSystemSettings summarizationSetting](self forKey:{"summarizationSetting"), @"summarizationSetting"}];
  [v5 encodeInteger:-[UNNotificationSystemSettings prioritizationSetting](self forKey:{"prioritizationSetting"), @"prioritizationSetting"}];
  [v5 encodeInteger:-[UNNotificationSystemSettings modifiedSettings](self forKey:{"modifiedSettings"), @"modifiedSettings"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(UNNotificationSystemSettings *)self showPreviewsSetting];
    if (v6 == [v5 showPreviewsSetting] && (v7 = -[UNNotificationSystemSettings announcementSetting](self, "announcementSetting"), v7 == objc_msgSend(v5, "announcementSetting")) && (v8 = -[UNNotificationSystemSettings announcementHeadphonesSetting](self, "announcementHeadphonesSetting"), v8 == objc_msgSend(v5, "announcementHeadphonesSetting")) && (v9 = -[UNNotificationSystemSettings announcementCarPlaySetting](self, "announcementCarPlaySetting"), v9 == objc_msgSend(v5, "announcementCarPlaySetting")) && (v10 = -[UNNotificationSystemSettings scheduledDeliverySetting](self, "scheduledDeliverySetting"), v10 == objc_msgSend(v5, "scheduledDeliverySetting")))
    {
      v11 = [(UNNotificationSystemSettings *)self scheduledDeliveryTimes];
      v12 = [v5 scheduledDeliveryTimes];
      if ([v11 isEqual:v12] && (v13 = -[UNNotificationSystemSettings scheduledDeliveryShowNextSummarySetting](self, "scheduledDeliveryShowNextSummarySetting"), v13 == objc_msgSend(v5, "scheduledDeliveryShowNextSummarySetting")) && (v14 = -[UNNotificationSystemSettings notificationListDisplayStyleSetting](self, "notificationListDisplayStyleSetting"), v14 == objc_msgSend(v5, "notificationListDisplayStyleSetting")) && (v15 = -[UNNotificationSystemSettings remoteNotificationsSetting](self, "remoteNotificationsSetting"), v15 == objc_msgSend(v5, "remoteNotificationsSetting")) && (v16 = -[UNNotificationSystemSettings summarizationSetting](self, "summarizationSetting"), v16 == objc_msgSend(v5, "summarizationSetting")) && (v17 = -[UNNotificationSystemSettings prioritizationSetting](self, "prioritizationSetting"), v17 == objc_msgSend(v5, "prioritizationSetting")))
      {
        v18 = [(UNNotificationSystemSettings *)self modifiedSettings];
        v19 = v18 == [v5 modifiedSettings];
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (UNNotificationSystemSettings)initWithCoder:(id)a3
{
  v3 = a3;
  v20 = [v3 decodeIntegerForKey:@"showPreviewsSetting"];
  v19 = [v3 decodeIntegerForKey:@"announcementSetting"];
  v18 = [v3 decodeIntegerForKey:@"announcementHeadphonesSetting"];
  v4 = [v3 decodeIntegerForKey:@"announcementCarPlaySetting"];
  v5 = [v3 decodeIntegerForKey:@"scheduledDeliverySetting"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v3 decodeObjectOfClasses:v8 forKey:@"scheduledDeliveryTimes"];

  v10 = [v3 decodeIntegerForKey:@"scheduledDeliveryShowNextSummarySetting"];
  v11 = [v3 decodeIntegerForKey:@"notificationListDisplayStyleSetting"];
  v12 = [v3 decodeIntegerForKey:@"remoteNotificationsSetting"];
  v13 = [v3 decodeIntegerForKey:@"summarizationSetting"];
  v14 = [v3 decodeIntegerForKey:@"prioritizationSetting"];
  v15 = [v3 decodeIntegerForKey:@"modifiedSettings"];

  v16 = [(UNNotificationSystemSettings *)self initWithShowPreviewsSetting:v20 announcementSetting:v19 announcementHeadphonesSetting:v18 announcementCarPlaySetting:v4 scheduledDeliverySetting:v5 scheduledDeliveryTimes:v9 scheduledDeliveryShowNextSummarySetting:v10 notificationListDisplayStyleSetting:v11 remoteNotificationsSetting:v12 summarizationSetting:v13 prioritizationSetting:v14 modifiedSettings:v15];
  return v16;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v12 = [UNMutableNotificationSystemSettings alloc];
  v11 = [(UNNotificationSystemSettings *)self showPreviewsSetting];
  v10 = [(UNNotificationSystemSettings *)self announcementSetting];
  v4 = [(UNNotificationSystemSettings *)self announcementHeadphonesSetting];
  v5 = [(UNNotificationSystemSettings *)self announcementCarPlaySetting];
  v6 = [(UNNotificationSystemSettings *)self scheduledDeliverySetting];
  v7 = [(UNNotificationSystemSettings *)self scheduledDeliveryTimes];
  v8 = [(UNNotificationSystemSettings *)v12 initWithShowPreviewsSetting:v11 announcementSetting:v10 announcementHeadphonesSetting:v4 announcementCarPlaySetting:v5 scheduledDeliverySetting:v6 scheduledDeliveryTimes:v7 scheduledDeliveryShowNextSummarySetting:[(UNNotificationSystemSettings *)self scheduledDeliveryShowNextSummarySetting] notificationListDisplayStyleSetting:self->_notificationListDisplayStyleSetting remoteNotificationsSetting:[(UNNotificationSystemSettings *)self remoteNotificationsSetting] summarizationSetting:[(UNNotificationSystemSettings *)self summarizationSetting] prioritizationSetting:[(UNNotificationSystemSettings *)self prioritizationSetting] modifiedSettings:[(UNNotificationSystemSettings *)self modifiedSettings]];

  return v8;
}

- (id)_stringforAnnouncementCarPlaySetting:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_279E14DC0[a3];
  }
}

- (id)_stringForScheduledDeliveryTimes:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setDateFormat:@"HH:mm"];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = @"[";
    do
    {
      v10 = 0;
      v11 = v9;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [v4 dateFromComponents:*(*(&v20 + 1) + 8 * v10)];
        v13 = MEMORY[0x277CCACA8];
        v14 = [v5 stringFromDate:v12];
        v15 = [v13 stringWithFormat:@" %@, ", v14];

        v9 = [(__CFString *)v11 stringByAppendingString:v15];

        ++v10;
        v11 = v9;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = @"[";
  }

  v16 = [(__CFString *)v9 stringByAppendingString:@" ]"];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_stringForNotificationListDisplayStyleSetting:(int64_t)a3
{
  v3 = @"Standard";
  if (a3 == 1)
  {
    v3 = @"Stack";
  }

  if (a3 == 2)
  {
    return @"Hidden";
  }

  else
  {
    return v3;
  }
}

@end