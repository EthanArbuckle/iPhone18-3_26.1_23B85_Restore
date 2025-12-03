@interface WFFocusConfigurationButton
- (BOOL)isEqual:(id)equal;
- (WFFocusConfigurationButton)initWithCoder:(id)coder;
- (WFFocusConfigurationButton)initWithIdentifier:(id)identifier localizedTitle:(id)title isDestructive:(BOOL)destructive;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFocusConfigurationButton

- (WFFocusConfigurationButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
  v7 = [coderCopy decodeBoolForKey:@"isDestructive"];

  v8 = [(WFFocusConfigurationButton *)self initWithIdentifier:v5 localizedTitle:v6 isDestructive:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFFocusConfigurationButton *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  localizedTitle = [(WFFocusConfigurationButton *)self localizedTitle];
  [coderCopy encodeObject:localizedTitle forKey:@"localizedTitle"];

  [coderCopy encodeBool:-[WFFocusConfigurationButton isDestructive](self forKey:{"isDestructive"), @"isDestructive"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    identifier = [(WFFocusConfigurationButton *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  identifier = [(WFFocusConfigurationButton *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (WFFocusConfigurationButton)initWithIdentifier:(id)identifier localizedTitle:(id)title isDestructive:(BOOL)destructive
{
  identifierCopy = identifier;
  titleCopy = title;
  v15.receiver = self;
  v15.super_class = WFFocusConfigurationButton;
  v11 = [(WFFocusConfigurationButton *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    objc_storeStrong(&v12->_localizedTitle, title);
    v12->_isDestructive = destructive;
    v13 = v12;
  }

  return v12;
}

@end