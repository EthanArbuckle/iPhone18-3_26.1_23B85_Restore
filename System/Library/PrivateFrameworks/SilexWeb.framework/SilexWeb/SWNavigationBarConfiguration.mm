@interface SWNavigationBarConfiguration
- (SWNavigationBarConfiguration)initWithTitle:(id)title shareConfiguration:(id)configuration;
@end

@implementation SWNavigationBarConfiguration

- (SWNavigationBarConfiguration)initWithTitle:(id)title shareConfiguration:(id)configuration
{
  titleCopy = title;
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = SWNavigationBarConfiguration;
  v8 = [(SWNavigationBarConfiguration *)&v12 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    objc_storeStrong(&v8->_shareConfiguration, configuration);
  }

  return v8;
}

@end