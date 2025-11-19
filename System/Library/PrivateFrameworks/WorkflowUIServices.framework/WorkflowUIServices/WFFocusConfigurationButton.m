@interface WFFocusConfigurationButton
- (BOOL)isEqual:(id)a3;
- (WFFocusConfigurationButton)initWithCoder:(id)a3;
- (WFFocusConfigurationButton)initWithIdentifier:(id)a3 localizedTitle:(id)a4 isDestructive:(BOOL)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFFocusConfigurationButton

- (WFFocusConfigurationButton)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
  v7 = [v4 decodeBoolForKey:@"isDestructive"];

  v8 = [(WFFocusConfigurationButton *)self initWithIdentifier:v5 localizedTitle:v6 isDestructive:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(WFFocusConfigurationButton *)self identifier];
  [v6 encodeObject:v4 forKey:@"identifier"];

  v5 = [(WFFocusConfigurationButton *)self localizedTitle];
  [v6 encodeObject:v5 forKey:@"localizedTitle"];

  [v6 encodeBool:-[WFFocusConfigurationButton isDestructive](self forKey:{"isDestructive"), @"isDestructive"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(WFFocusConfigurationButton *)self identifier];
    v6 = [v4 identifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(WFFocusConfigurationButton *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (WFFocusConfigurationButton)initWithIdentifier:(id)a3 localizedTitle:(id)a4 isDestructive:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = WFFocusConfigurationButton;
  v11 = [(WFFocusConfigurationButton *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_localizedTitle, a4);
    v12->_isDestructive = a5;
    v13 = v12;
  }

  return v12;
}

@end