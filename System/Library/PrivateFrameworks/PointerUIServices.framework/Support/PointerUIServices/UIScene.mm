@interface UIScene
- (PSDisplay)psDisplay;
@end

@implementation UIScene

- (PSDisplay)psDisplay
{
  _FBSScene = [(UIScene *)self _FBSScene];
  psDisplay = [_FBSScene psDisplay];

  return psDisplay;
}

@end