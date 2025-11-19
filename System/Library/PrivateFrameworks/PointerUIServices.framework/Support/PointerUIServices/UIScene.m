@interface UIScene
- (PSDisplay)psDisplay;
@end

@implementation UIScene

- (PSDisplay)psDisplay
{
  v2 = [(UIScene *)self _FBSScene];
  v3 = [v2 psDisplay];

  return v3;
}

@end