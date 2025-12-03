@interface CALayer(Configuration)
- (uint64_t)_configureUsingLayer:()Configuration;
@end

@implementation CALayer(Configuration)

- (uint64_t)_configureUsingLayer:()Configuration
{
  v4 = a3;
  contentsGravity = [v4 contentsGravity];
  [self setContentsGravity:contentsGravity];

  [self setNeedsDisplayOnBoundsChange:{objc_msgSend(v4, "needsDisplayOnBoundsChange")}];
  contentsFormat = [v4 contentsFormat];
  [self setContentsFormat:contentsFormat];

  [self setContentsMultiplyColor:{objc_msgSend(v4, "contentsMultiplyColor")}];
  [v4 contentsScale];
  v8 = v7;

  return [self setContentsScale:v8];
}

@end