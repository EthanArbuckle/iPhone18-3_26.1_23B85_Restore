@interface REMTemplatePublicLinkConfiguration
- (BOOL)isEqual:(id)a3;
- (REMTemplatePublicLinkConfiguration)initWithCoder:(id)a3;
- (REMTemplatePublicLinkConfiguration)initWithShouldIncludeHashtags:(BOOL)a3 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:(BOOL)a4 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMTemplatePublicLinkConfiguration

- (REMTemplatePublicLinkConfiguration)initWithShouldIncludeHashtags:(BOOL)a3 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:(BOOL)a4 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = REMTemplatePublicLinkConfiguration;
  result = [(REMTemplatePublicLinkConfiguration *)&v9 init];
  if (result)
  {
    result->_shouldIncludeHashtags = a3;
    result->_shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval = a4;
    result->_shouldIncludeAlarmTriggersBasedOnLocationOrVehicle = a5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[REMTemplatePublicLinkConfiguration shouldIncludeHashtags](self, "shouldIncludeHashtags"), v5 == [v4 shouldIncludeHashtags]) && (v6 = -[REMTemplatePublicLinkConfiguration shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval](self, "shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval"), v6 == objc_msgSend(v4, "shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval")))
  {
    v9 = [(REMTemplatePublicLinkConfiguration *)self shouldIncludeAlarmTriggersBasedOnLocationOrVehicle];
    v7 = v9 ^ [v4 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [REMTemplatePublicLinkConfiguration alloc];
  v5 = [(REMTemplatePublicLinkConfiguration *)self shouldIncludeHashtags];
  v6 = [(REMTemplatePublicLinkConfiguration *)self shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval];
  v7 = [(REMTemplatePublicLinkConfiguration *)self shouldIncludeAlarmTriggersBasedOnLocationOrVehicle];

  return [(REMTemplatePublicLinkConfiguration *)v4 initWithShouldIncludeHashtags:v5 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:v6 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:v7];
}

- (REMTemplatePublicLinkConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"shouldIncludeHashtags"];
  v6 = [v4 decodeBoolForKey:@"shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval"];
  v7 = [v4 decodeBoolForKey:@"shouldIncludeAlarmTriggersBasedOnLocationOrVehicle"];

  return [(REMTemplatePublicLinkConfiguration *)self initWithShouldIncludeHashtags:v5 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:v6 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:v7];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[REMTemplatePublicLinkConfiguration shouldIncludeHashtags](self forKey:{"shouldIncludeHashtags"), @"shouldIncludeHashtags"}];
  [v4 encodeBool:-[REMTemplatePublicLinkConfiguration shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval](self forKey:{"shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval"), @"shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval"}];
  [v4 encodeBool:-[REMTemplatePublicLinkConfiguration shouldIncludeAlarmTriggersBasedOnLocationOrVehicle](self forKey:{"shouldIncludeAlarmTriggersBasedOnLocationOrVehicle"), @"shouldIncludeAlarmTriggersBasedOnLocationOrVehicle"}];
}

@end