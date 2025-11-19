@interface STOrganizationControllerConfigurationChangeContent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOrganizationControllerConfigurationChangeContent:(id)a3;
- (NSString)description;
- (STOrganizationControllerConfigurationChangeContent)initWithCoder:(id)a3;
- (STOrganizationControllerConfigurationChangeContent)initWithConfigurationChange:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STOrganizationControllerConfigurationChangeContent

- (STOrganizationControllerConfigurationChangeContent)initWithConfigurationChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = STOrganizationControllerConfigurationChangeContent;
  v3 = a3;
  v4 = [(STOrganizationControllerConfigurationChangeContent *)&v8 init];
  v5 = [v3 copy];

  configurationChange = v4->_configurationChange;
  v4->_configurationChange = v5;

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(STOrganizationControllerConfigurationChangeContent *)self configurationChange];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ { Configuration Change: %@, Type: %ld }>", v3, v4, [objc_opt_class() contentType]);

  return v5;
}

- (STOrganizationControllerConfigurationChangeContent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configurationChange"];

  v6 = [(STOrganizationControllerConfigurationChangeContent *)self initWithConfigurationChange:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(STOrganizationControllerConfigurationChangeContent *)self configurationChange];
  [v4 encodeObject:v5 forKey:@"configurationChange"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  configurationChange = self->_configurationChange;

  return [v4 initWithConfigurationChange:configurationChange];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STOrganizationControllerConfigurationChangeContent *)self isEqualToOrganizationControllerConfigurationChangeContent:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToOrganizationControllerConfigurationChangeContent:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(STOrganizationControllerConfigurationChangeContent *)self configurationChange];
  v6 = [v4 configurationChange];

  LOBYTE(v4) = [v5 isEqualToConfigurationChange:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(STOrganizationControllerConfigurationChangeContent *)self configurationChange];
  v3 = [v2 hash];

  return v3;
}

@end