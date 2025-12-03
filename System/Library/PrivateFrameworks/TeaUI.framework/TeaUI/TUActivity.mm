@interface TUActivity
- (id)_bundleIdentifierForActivityImageCreation;
- (id)_systemImageName;
@end

@implementation TUActivity

- (id)_systemImageName
{
  v4.receiver = self;
  v4.super_class = TUActivity;
  _systemImageName = [(UIActivity *)&v4 _systemImageName];

  return _systemImageName;
}

- (id)_bundleIdentifierForActivityImageCreation
{
  v4.receiver = self;
  v4.super_class = TUActivity;
  _bundleIdentifierForActivityImageCreation = [(UIActivity *)&v4 _bundleIdentifierForActivityImageCreation];

  return _bundleIdentifierForActivityImageCreation;
}

@end