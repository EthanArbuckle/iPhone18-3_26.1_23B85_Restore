@interface UNMutableNotificationSystemSettings
- (id)copyWithZone:(_NSZone *)zone;
- (void)setScheduledDeliveryShowNextSummarySetting:(int64_t)setting;
@end

@implementation UNMutableNotificationSystemSettings

- (void)setScheduledDeliveryShowNextSummarySetting:(int64_t)setting
{
  v3 = self->super._modifiedSettings | 0x40;
  self->super._scheduledDeliveryShowNextSummarySetting = setting;
  self->super._modifiedSettings = v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  prioritizationSetting = self->super._prioritizationSetting;
  return [v4 initWithShowPreviewsSetting:self->super._showPreviewsSetting announcementSetting:self->super._announcementSetting announcementHeadphonesSetting:self->super._announcementHeadphonesSetting announcementCarPlaySetting:self->super._announcementCarPlaySetting scheduledDeliverySetting:self->super._scheduledDeliverySetting scheduledDeliveryTimes:self->super._scheduledDeliveryTimes scheduledDeliveryShowNextSummarySetting:self->super._scheduledDeliveryShowNextSummarySetting notificationListDisplayStyleSetting:self->super._notificationListDisplayStyleSetting remoteNotificationsSetting:self->super._remoteNotificationsSetting summarizationSetting:self->super._summarizationSetting prioritizationSetting:prioritizationSetting modifiedSettings:self->super._modifiedSettings];
}

@end