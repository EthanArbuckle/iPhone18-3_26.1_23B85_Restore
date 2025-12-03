@interface REMTemplatePublicLinkConfiguration_Codable
- (REMTemplatePublicLinkConfiguration_Codable)initWithShouldIncludeHashtags:(BOOL)hashtags shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:(BOOL)interval shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:(BOOL)vehicle;
@end

@implementation REMTemplatePublicLinkConfiguration_Codable

- (REMTemplatePublicLinkConfiguration_Codable)initWithShouldIncludeHashtags:(BOOL)hashtags shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:(BOOL)interval shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:(BOOL)vehicle
{
  vehicleCopy = vehicle;
  intervalCopy = interval;
  hashtagsCopy = hashtags;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  return [(REMTemplatePublicLinkConfiguration *)&v9 initWithShouldIncludeHashtags:hashtagsCopy shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:intervalCopy shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:vehicleCopy];
}

@end