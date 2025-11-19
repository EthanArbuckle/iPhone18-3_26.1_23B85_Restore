@interface PUEditPluginActionActivity
- (PUEditPluginActionActivity)initWithPlugin:(id)a3 systemImageName:(id)a4;
@end

@implementation PUEditPluginActionActivity

- (PUEditPluginActionActivity)initWithPlugin:(id)a3 systemImageName:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = PUEditPluginActionActivity;
  v7 = [(PUEditPluginActivity *)&v11 initWithPlugin:a3];
  if (v7)
  {
    v8 = [v6 copy];
    internalSystemImageName = v7->_internalSystemImageName;
    v7->_internalSystemImageName = v8;
  }

  return v7;
}

@end