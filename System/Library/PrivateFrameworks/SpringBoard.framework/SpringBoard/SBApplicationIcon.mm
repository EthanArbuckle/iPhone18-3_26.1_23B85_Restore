@interface SBApplicationIcon
- (SBApplication)application;
- (SBApplicationPlaceholder)applicationPlaceholder;
@end

@implementation SBApplicationIcon

- (SBApplication)application
{
  v4.receiver = self;
  v4.super_class = SBApplicationIcon;
  application = [(SBHApplicationIcon *)&v4 application];

  return application;
}

- (SBApplicationPlaceholder)applicationPlaceholder
{
  v4.receiver = self;
  v4.super_class = SBApplicationIcon;
  applicationPlaceholder = [(SBHApplicationIcon *)&v4 applicationPlaceholder];

  return applicationPlaceholder;
}

@end