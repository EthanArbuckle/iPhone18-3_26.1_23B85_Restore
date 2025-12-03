@interface FBSScene
- (PSDisplay)psDisplay;
@end

@implementation FBSScene

- (PSDisplay)psDisplay
{
  settings = [(FBSScene *)self settings];
  displayConfiguration = [settings displayConfiguration];
  hardwareIdentifier = [displayConfiguration hardwareIdentifier];
  v5 = [PSDisplay displayWithHardwareIdentifier:hardwareIdentifier];

  return v5;
}

@end