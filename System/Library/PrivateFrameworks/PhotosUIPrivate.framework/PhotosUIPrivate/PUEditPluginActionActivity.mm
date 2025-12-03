@interface PUEditPluginActionActivity
- (PUEditPluginActionActivity)initWithPlugin:(id)plugin systemImageName:(id)name;
@end

@implementation PUEditPluginActionActivity

- (PUEditPluginActionActivity)initWithPlugin:(id)plugin systemImageName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = PUEditPluginActionActivity;
  v7 = [(PUEditPluginActivity *)&v11 initWithPlugin:plugin];
  if (v7)
  {
    v8 = [nameCopy copy];
    internalSystemImageName = v7->_internalSystemImageName;
    v7->_internalSystemImageName = v8;
  }

  return v7;
}

@end