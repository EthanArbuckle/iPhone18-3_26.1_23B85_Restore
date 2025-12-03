@interface UNNotificationSystemSettings
- (BOOL)isEqual:(id)equal;
- (UNNotificationSystemSettings)initWithCoder:(id)coder;
- (UNNotificationSystemSettings)initWithShowPreviewsSetting:(int64_t)setting announcementSetting:(int64_t)announcementSetting announcementHeadphonesSetting:(int64_t)headphonesSetting announcementCarPlaySetting:(int64_t)playSetting scheduledDeliverySetting:(int64_t)deliverySetting scheduledDeliveryTimes:(id)times scheduledDeliveryShowNextSummarySetting:(int64_t)summarySetting notificationListDisplayStyleSetting:(int64_t)self0 remoteNotificationsSetting:(int64_t)self1 summarizationSetting:(int64_t)self2 prioritizationSetting:(int64_t)self3 modifiedSettings:(unint64_t)self4;
- (id)_stringForNotificationListDisplayStyleSetting:(int64_t)setting;
- (id)_stringForScheduledDeliveryTimes:(id)times;
- (id)_stringforAnnouncementCarPlaySetting:(int64_t)setting;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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
  scheduledDeliveryTimes = [(UNNotificationSystemSettings *)self scheduledDeliveryTimes];
  v4 = [(UNNotificationSystemSettings *)self _stringForScheduledDeliveryTimes:scheduledDeliveryTimes];
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

- (UNNotificationSystemSettings)initWithShowPreviewsSetting:(int64_t)setting announcementSetting:(int64_t)announcementSetting announcementHeadphonesSetting:(int64_t)headphonesSetting announcementCarPlaySetting:(int64_t)playSetting scheduledDeliverySetting:(int64_t)deliverySetting scheduledDeliveryTimes:(id)times scheduledDeliveryShowNextSummarySetting:(int64_t)summarySetting notificationListDisplayStyleSetting:(int64_t)self0 remoteNotificationsSetting:(int64_t)self1 summarizationSetting:(int64_t)self2 prioritizationSetting:(int64_t)self3 modifiedSettings:(unint64_t)self4
{
  timesCopy = times;
  v25.receiver = self;
  v25.super_class = UNNotificationSystemSettings;
  v22 = [(UNNotificationSystemSettings *)&v25 init];
  v23 = v22;
  if (v22)
  {
    v22->_showPreviewsSetting = setting;
    v22->_announcementSetting = announcementSetting;
    v22->_announcementHeadphonesSetting = headphonesSetting;
    v22->_announcementCarPlaySetting = playSetting;
    v22->_scheduledDeliverySetting = deliverySetting;
    objc_storeStrong(&v22->_scheduledDeliveryTimes, times);
    v23->_notificationListDisplayStyleSetting = styleSetting;
    v23->_remoteNotificationsSetting = notificationsSetting;
    v23->_summarizationSetting = summarizationSetting;
    v23->_prioritizationSetting = prioritizationSetting;
    v23->_scheduledDeliveryShowNextSummarySetting = summarySetting;
    v23->_modifiedSettings = settings;
  }

  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[UNNotificationSystemSettings showPreviewsSetting](self forKey:{"showPreviewsSetting"), @"showPreviewsSetting"}];
  [coderCopy encodeInteger:-[UNNotificationSystemSettings announcementSetting](self forKey:{"announcementSetting"), @"announcementSetting"}];
  [coderCopy encodeInteger:-[UNNotificationSystemSettings announcementHeadphonesSetting](self forKey:{"announcementHeadphonesSetting"), @"announcementHeadphonesSetting"}];
  [coderCopy encodeInteger:-[UNNotificationSystemSettings announcementCarPlaySetting](self forKey:{"announcementCarPlaySetting"), @"announcementCarPlaySetting"}];
  [coderCopy encodeInteger:-[UNNotificationSystemSettings scheduledDeliverySetting](self forKey:{"scheduledDeliverySetting"), @"scheduledDeliverySetting"}];
  scheduledDeliveryTimes = [(UNNotificationSystemSettings *)self scheduledDeliveryTimes];
  [coderCopy encodeObject:scheduledDeliveryTimes forKey:@"scheduledDeliveryTimes"];

  [coderCopy encodeInteger:-[UNNotificationSystemSettings scheduledDeliveryShowNextSummarySetting](self forKey:{"scheduledDeliveryShowNextSummarySetting"), @"scheduledDeliveryShowNextSummarySetting"}];
  [coderCopy encodeInteger:self->_notificationListDisplayStyleSetting forKey:@"notificationListDisplayStyleSetting"];
  [coderCopy encodeInteger:-[UNNotificationSystemSettings remoteNotificationsSetting](self forKey:{"remoteNotificationsSetting"), @"remoteNotificationsSetting"}];
  [coderCopy encodeInteger:-[UNNotificationSystemSettings summarizationSetting](self forKey:{"summarizationSetting"), @"summarizationSetting"}];
  [coderCopy encodeInteger:-[UNNotificationSystemSettings prioritizationSetting](self forKey:{"prioritizationSetting"), @"prioritizationSetting"}];
  [coderCopy encodeInteger:-[UNNotificationSystemSettings modifiedSettings](self forKey:{"modifiedSettings"), @"modifiedSettings"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    showPreviewsSetting = [(UNNotificationSystemSettings *)self showPreviewsSetting];
    if (showPreviewsSetting == [v5 showPreviewsSetting] && (v7 = -[UNNotificationSystemSettings announcementSetting](self, "announcementSetting"), v7 == objc_msgSend(v5, "announcementSetting")) && (v8 = -[UNNotificationSystemSettings announcementHeadphonesSetting](self, "announcementHeadphonesSetting"), v8 == objc_msgSend(v5, "announcementHeadphonesSetting")) && (v9 = -[UNNotificationSystemSettings announcementCarPlaySetting](self, "announcementCarPlaySetting"), v9 == objc_msgSend(v5, "announcementCarPlaySetting")) && (v10 = -[UNNotificationSystemSettings scheduledDeliverySetting](self, "scheduledDeliverySetting"), v10 == objc_msgSend(v5, "scheduledDeliverySetting")))
    {
      scheduledDeliveryTimes = [(UNNotificationSystemSettings *)self scheduledDeliveryTimes];
      scheduledDeliveryTimes2 = [v5 scheduledDeliveryTimes];
      if ([scheduledDeliveryTimes isEqual:scheduledDeliveryTimes2] && (v13 = -[UNNotificationSystemSettings scheduledDeliveryShowNextSummarySetting](self, "scheduledDeliveryShowNextSummarySetting"), v13 == objc_msgSend(v5, "scheduledDeliveryShowNextSummarySetting")) && (v14 = -[UNNotificationSystemSettings notificationListDisplayStyleSetting](self, "notificationListDisplayStyleSetting"), v14 == objc_msgSend(v5, "notificationListDisplayStyleSetting")) && (v15 = -[UNNotificationSystemSettings remoteNotificationsSetting](self, "remoteNotificationsSetting"), v15 == objc_msgSend(v5, "remoteNotificationsSetting")) && (v16 = -[UNNotificationSystemSettings summarizationSetting](self, "summarizationSetting"), v16 == objc_msgSend(v5, "summarizationSetting")) && (v17 = -[UNNotificationSystemSettings prioritizationSetting](self, "prioritizationSetting"), v17 == objc_msgSend(v5, "prioritizationSetting")))
      {
        modifiedSettings = [(UNNotificationSystemSettings *)self modifiedSettings];
        v19 = modifiedSettings == [v5 modifiedSettings];
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

- (UNNotificationSystemSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20 = [coderCopy decodeIntegerForKey:@"showPreviewsSetting"];
  v19 = [coderCopy decodeIntegerForKey:@"announcementSetting"];
  v18 = [coderCopy decodeIntegerForKey:@"announcementHeadphonesSetting"];
  v4 = [coderCopy decodeIntegerForKey:@"announcementCarPlaySetting"];
  v5 = [coderCopy decodeIntegerForKey:@"scheduledDeliverySetting"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"scheduledDeliveryTimes"];

  v10 = [coderCopy decodeIntegerForKey:@"scheduledDeliveryShowNextSummarySetting"];
  v11 = [coderCopy decodeIntegerForKey:@"notificationListDisplayStyleSetting"];
  v12 = [coderCopy decodeIntegerForKey:@"remoteNotificationsSetting"];
  v13 = [coderCopy decodeIntegerForKey:@"summarizationSetting"];
  v14 = [coderCopy decodeIntegerForKey:@"prioritizationSetting"];
  v15 = [coderCopy decodeIntegerForKey:@"modifiedSettings"];

  v16 = [(UNNotificationSystemSettings *)self initWithShowPreviewsSetting:v20 announcementSetting:v19 announcementHeadphonesSetting:v18 announcementCarPlaySetting:v4 scheduledDeliverySetting:v5 scheduledDeliveryTimes:v9 scheduledDeliveryShowNextSummarySetting:v10 notificationListDisplayStyleSetting:v11 remoteNotificationsSetting:v12 summarizationSetting:v13 prioritizationSetting:v14 modifiedSettings:v15];
  return v16;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v12 = [UNMutableNotificationSystemSettings alloc];
  showPreviewsSetting = [(UNNotificationSystemSettings *)self showPreviewsSetting];
  announcementSetting = [(UNNotificationSystemSettings *)self announcementSetting];
  announcementHeadphonesSetting = [(UNNotificationSystemSettings *)self announcementHeadphonesSetting];
  announcementCarPlaySetting = [(UNNotificationSystemSettings *)self announcementCarPlaySetting];
  scheduledDeliverySetting = [(UNNotificationSystemSettings *)self scheduledDeliverySetting];
  scheduledDeliveryTimes = [(UNNotificationSystemSettings *)self scheduledDeliveryTimes];
  v8 = [(UNNotificationSystemSettings *)v12 initWithShowPreviewsSetting:showPreviewsSetting announcementSetting:announcementSetting announcementHeadphonesSetting:announcementHeadphonesSetting announcementCarPlaySetting:announcementCarPlaySetting scheduledDeliverySetting:scheduledDeliverySetting scheduledDeliveryTimes:scheduledDeliveryTimes scheduledDeliveryShowNextSummarySetting:[(UNNotificationSystemSettings *)self scheduledDeliveryShowNextSummarySetting] notificationListDisplayStyleSetting:self->_notificationListDisplayStyleSetting remoteNotificationsSetting:[(UNNotificationSystemSettings *)self remoteNotificationsSetting] summarizationSetting:[(UNNotificationSystemSettings *)self summarizationSetting] prioritizationSetting:[(UNNotificationSystemSettings *)self prioritizationSetting] modifiedSettings:[(UNNotificationSystemSettings *)self modifiedSettings]];

  return v8;
}

- (id)_stringforAnnouncementCarPlaySetting:(int64_t)setting
{
  if (setting > 3)
  {
    return 0;
  }

  else
  {
    return off_279E14DC0[setting];
  }
}

- (id)_stringForScheduledDeliveryTimes:(id)times
{
  v25 = *MEMORY[0x277D85DE8];
  timesCopy = times;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setDateFormat:@"HH:mm"];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = timesCopy;
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

        v12 = [currentCalendar dateFromComponents:*(*(&v20 + 1) + 8 * v10)];
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

- (id)_stringForNotificationListDisplayStyleSetting:(int64_t)setting
{
  v3 = @"Standard";
  if (setting == 1)
  {
    v3 = @"Stack";
  }

  if (setting == 2)
  {
    return @"Hidden";
  }

  else
  {
    return v3;
  }
}

@end