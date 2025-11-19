@interface SBApplicationIcon
- (SBApplication)application;
- (SBApplicationPlaceholder)applicationPlaceholder;
@end

@implementation SBApplicationIcon

- (SBApplication)application
{
  v4.receiver = self;
  v4.super_class = SBApplicationIcon;
  v2 = [(SBHApplicationIcon *)&v4 application];

  return v2;
}

- (SBApplicationPlaceholder)applicationPlaceholder
{
  v4.receiver = self;
  v4.super_class = SBApplicationIcon;
  v2 = [(SBHApplicationIcon *)&v4 applicationPlaceholder];

  return v2;
}

@end