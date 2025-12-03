@interface REMTemplatePublicLinkConfiguration
- (BOOL)isEqual:(id)equal;
- (REMTemplatePublicLinkConfiguration)initWithCoder:(id)coder;
- (REMTemplatePublicLinkConfiguration)initWithShouldIncludeHashtags:(BOOL)hashtags shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:(BOOL)interval shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:(BOOL)vehicle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMTemplatePublicLinkConfiguration

- (REMTemplatePublicLinkConfiguration)initWithShouldIncludeHashtags:(BOOL)hashtags shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:(BOOL)interval shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:(BOOL)vehicle
{
  v9.receiver = self;
  v9.super_class = REMTemplatePublicLinkConfiguration;
  result = [(REMTemplatePublicLinkConfiguration *)&v9 init];
  if (result)
  {
    result->_shouldIncludeHashtags = hashtags;
    result->_shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval = interval;
    result->_shouldIncludeAlarmTriggersBasedOnLocationOrVehicle = vehicle;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMTemplatePublicLinkConfiguration shouldIncludeHashtags](self, "shouldIncludeHashtags")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMTemplatePublicLinkConfiguration shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval](self, "shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMTemplatePublicLinkConfiguration shouldIncludeAlarmTriggersBasedOnLocationOrVehicle](self, "shouldIncludeAlarmTriggersBasedOnLocationOrVehicle")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMTemplatePublicLinkConfiguration shouldIncludeContactsHandleData](self, "shouldIncludeContactsHandleData")}];
  v9 = [v3 stringWithFormat:@"<%@: %p shouldIncludeHashtags: %@, shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval: %@, shouldIncludeAlarmTriggersBasedOnLocationOrVehicle: %@, shouldIncludeContactsHandleData: %@>", v4, self, v5, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[REMTemplatePublicLinkConfiguration shouldIncludeHashtags](self, "shouldIncludeHashtags"), v5 == [equalCopy shouldIncludeHashtags]) && (v6 = -[REMTemplatePublicLinkConfiguration shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval](self, "shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval"), v6 == objc_msgSend(equalCopy, "shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval")))
  {
    shouldIncludeAlarmTriggersBasedOnLocationOrVehicle = [(REMTemplatePublicLinkConfiguration *)self shouldIncludeAlarmTriggersBasedOnLocationOrVehicle];
    v7 = shouldIncludeAlarmTriggersBasedOnLocationOrVehicle ^ [equalCopy shouldIncludeAlarmTriggersBasedOnLocationOrVehicle] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [REMTemplatePublicLinkConfiguration alloc];
  shouldIncludeHashtags = [(REMTemplatePublicLinkConfiguration *)self shouldIncludeHashtags];
  shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval = [(REMTemplatePublicLinkConfiguration *)self shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval];
  shouldIncludeAlarmTriggersBasedOnLocationOrVehicle = [(REMTemplatePublicLinkConfiguration *)self shouldIncludeAlarmTriggersBasedOnLocationOrVehicle];

  return [(REMTemplatePublicLinkConfiguration *)v4 initWithShouldIncludeHashtags:shouldIncludeHashtags shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:shouldIncludeAlarmTriggersBasedOnLocationOrVehicle];
}

- (REMTemplatePublicLinkConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"shouldIncludeHashtags"];
  v6 = [coderCopy decodeBoolForKey:@"shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval"];
  v7 = [coderCopy decodeBoolForKey:@"shouldIncludeAlarmTriggersBasedOnLocationOrVehicle"];

  return [(REMTemplatePublicLinkConfiguration *)self initWithShouldIncludeHashtags:v5 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:v6 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:v7];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[REMTemplatePublicLinkConfiguration shouldIncludeHashtags](self forKey:{"shouldIncludeHashtags"), @"shouldIncludeHashtags"}];
  [coderCopy encodeBool:-[REMTemplatePublicLinkConfiguration shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval](self forKey:{"shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval"), @"shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval"}];
  [coderCopy encodeBool:-[REMTemplatePublicLinkConfiguration shouldIncludeAlarmTriggersBasedOnLocationOrVehicle](self forKey:{"shouldIncludeAlarmTriggersBasedOnLocationOrVehicle"), @"shouldIncludeAlarmTriggersBasedOnLocationOrVehicle"}];
}

@end