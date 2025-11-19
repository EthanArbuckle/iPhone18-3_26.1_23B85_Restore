@interface PUEditPluginActivity
- (PUEditPluginActivity)initWithPlugin:(id)a3;
- (id)_activityImage;
- (id)_activitySettingsImage;
- (id)activityTitle;
- (id)activityType;
@end

@implementation PUEditPluginActivity

- (id)_activitySettingsImage
{
  v2 = [(PUEditPluginActivity *)self plugin];
  v3 = [v2 smallIcon];

  return v3;
}

- (id)_activityImage
{
  v2 = [(PUEditPluginActivity *)self plugin];
  v3 = [v2 icon];

  return v3;
}

- (id)activityTitle
{
  v2 = [(PUEditPluginActivity *)self plugin];
  v3 = [v2 title];

  return v3;
}

- (id)activityType
{
  v2 = [(PUEditPluginActivity *)self plugin];
  v3 = [v2 extension];
  v4 = [v3 identifier];

  return v4;
}

- (PUEditPluginActivity)initWithPlugin:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PUEditPluginActivity;
  v6 = [(UIActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_plugin, a3);
  }

  return v7;
}

@end