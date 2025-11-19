@interface REMTemplatePublicLinkConfiguration_Codable
- (REMTemplatePublicLinkConfiguration_Codable)initWithShouldIncludeHashtags:(BOOL)a3 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:(BOOL)a4 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:(BOOL)a5;
@end

@implementation REMTemplatePublicLinkConfiguration_Codable

- (REMTemplatePublicLinkConfiguration_Codable)initWithShouldIncludeHashtags:(BOOL)a3 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:(BOOL)a4 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  return [(REMTemplatePublicLinkConfiguration *)&v9 initWithShouldIncludeHashtags:v7 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:v6 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:v5];
}

@end