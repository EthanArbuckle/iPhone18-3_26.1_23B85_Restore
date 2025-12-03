@interface FBSSceneSettings(Frame)
- (uint64_t)convertFrameInRect:()Frame;
@end

@implementation FBSSceneSettings(Frame)

- (uint64_t)convertFrameInRect:()Frame
{
  [self bounds];
  [self frame];
  return [self interfaceOrientation];
}

@end