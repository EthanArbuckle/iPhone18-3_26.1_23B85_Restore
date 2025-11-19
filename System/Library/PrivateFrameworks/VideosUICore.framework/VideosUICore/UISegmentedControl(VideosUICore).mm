@interface UISegmentedControl(VideosUICore)
- (void)vuiSetAccessibilityIdentifier:()VideosUICore forSegment:;
@end

@implementation UISegmentedControl(VideosUICore)

- (void)vuiSetAccessibilityIdentifier:()VideosUICore forSegment:
{
  v8 = a3;
  v6 = [a1 valueForKey:@"_segments"];
  if ([v6 count] > a4)
  {
    v7 = [v6 objectAtIndex:a4];
    [v7 setAccessibilityIdentifier:v8];
  }
}

@end