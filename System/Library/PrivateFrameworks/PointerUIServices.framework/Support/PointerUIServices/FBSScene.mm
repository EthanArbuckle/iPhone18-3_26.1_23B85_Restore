@interface FBSScene
- (PSDisplay)psDisplay;
@end

@implementation FBSScene

- (PSDisplay)psDisplay
{
  v2 = [(FBSScene *)self settings];
  v3 = [v2 displayConfiguration];
  v4 = [v3 hardwareIdentifier];
  v5 = [PSDisplay displayWithHardwareIdentifier:v4];

  return v5;
}

@end