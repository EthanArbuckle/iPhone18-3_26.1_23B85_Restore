@interface FBSSceneSettings(Frame)
- (uint64_t)convertFrameInRect:()Frame;
@end

@implementation FBSSceneSettings(Frame)

- (uint64_t)convertFrameInRect:()Frame
{
  [a1 bounds];
  [a1 frame];
  return [a1 interfaceOrientation];
}

@end