@interface STOrganizationControllerConfigurationChangeContent
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOrganizationControllerConfigurationChangeContent:(id)content;
- (NSString)description;
- (STOrganizationControllerConfigurationChangeContent)initWithCoder:(id)coder;
- (STOrganizationControllerConfigurationChangeContent)initWithConfigurationChange:(id)change;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STOrganizationControllerConfigurationChangeContent

- (STOrganizationControllerConfigurationChangeContent)initWithConfigurationChange:(id)change
{
  v8.receiver = self;
  v8.super_class = STOrganizationControllerConfigurationChangeContent;
  changeCopy = change;
  v4 = [(STOrganizationControllerConfigurationChangeContent *)&v8 init];
  v5 = [changeCopy copy];

  configurationChange = v4->_configurationChange;
  v4->_configurationChange = v5;

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  configurationChange = [(STOrganizationControllerConfigurationChangeContent *)self configurationChange];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ { Configuration Change: %@, Type: %ld }>", v3, configurationChange, [objc_opt_class() contentType]);

  return v5;
}

- (STOrganizationControllerConfigurationChangeContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configurationChange"];

  v6 = [(STOrganizationControllerConfigurationChangeContent *)self initWithConfigurationChange:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  configurationChange = [(STOrganizationControllerConfigurationChangeContent *)self configurationChange];
  [coderCopy encodeObject:configurationChange forKey:@"configurationChange"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  configurationChange = self->_configurationChange;

  return [v4 initWithConfigurationChange:configurationChange];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STOrganizationControllerConfigurationChangeContent *)self isEqualToOrganizationControllerConfigurationChangeContent:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToOrganizationControllerConfigurationChangeContent:(id)content
{
  if (content == self)
  {
    return 1;
  }

  contentCopy = content;
  configurationChange = [(STOrganizationControllerConfigurationChangeContent *)self configurationChange];
  configurationChange2 = [contentCopy configurationChange];

  LOBYTE(contentCopy) = [configurationChange isEqualToConfigurationChange:configurationChange2];
  return contentCopy;
}

- (unint64_t)hash
{
  configurationChange = [(STOrganizationControllerConfigurationChangeContent *)self configurationChange];
  v3 = [configurationChange hash];

  return v3;
}

@end