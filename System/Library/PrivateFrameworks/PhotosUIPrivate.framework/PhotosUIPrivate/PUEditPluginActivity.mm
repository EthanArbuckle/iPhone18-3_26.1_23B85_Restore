@interface PUEditPluginActivity
- (PUEditPluginActivity)initWithPlugin:(id)plugin;
- (id)_activityImage;
- (id)_activitySettingsImage;
- (id)activityTitle;
- (id)activityType;
@end

@implementation PUEditPluginActivity

- (id)_activitySettingsImage
{
  plugin = [(PUEditPluginActivity *)self plugin];
  smallIcon = [plugin smallIcon];

  return smallIcon;
}

- (id)_activityImage
{
  plugin = [(PUEditPluginActivity *)self plugin];
  icon = [plugin icon];

  return icon;
}

- (id)activityTitle
{
  plugin = [(PUEditPluginActivity *)self plugin];
  title = [plugin title];

  return title;
}

- (id)activityType
{
  plugin = [(PUEditPluginActivity *)self plugin];
  extension = [plugin extension];
  identifier = [extension identifier];

  return identifier;
}

- (PUEditPluginActivity)initWithPlugin:(id)plugin
{
  pluginCopy = plugin;
  v9.receiver = self;
  v9.super_class = PUEditPluginActivity;
  v6 = [(UIActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_plugin, plugin);
  }

  return v7;
}

@end