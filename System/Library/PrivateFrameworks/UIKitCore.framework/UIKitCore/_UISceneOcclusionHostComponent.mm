@interface _UISceneOcclusionHostComponent
- (NSArray)applicationOcclusionRects;
- (NSArray)systemOcclusionRects;
- (void)setApplicationOcclusionRects:(id)rects;
- (void)setSystemOcclusionRects:(id)rects;
@end

@implementation _UISceneOcclusionHostComponent

- (NSArray)applicationOcclusionRects
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  settings = [hostScene settings];
  applicationOcclusionRects = [settings applicationOcclusionRects];

  return applicationOcclusionRects;
}

- (void)setApplicationOcclusionRects:(id)rects
{
  rectsCopy = rects;
  hostScene = [(FBSSceneComponent *)self hostScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63___UISceneOcclusionHostComponent_setApplicationOcclusionRects___block_invoke;
  v7[3] = &unk_1E70F4520;
  v8 = rectsCopy;
  v6 = rectsCopy;
  [hostScene updateSettingsWithBlock:v7];
}

- (NSArray)systemOcclusionRects
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  settings = [hostScene settings];
  systemOcclusionRects = [settings systemOcclusionRects];

  return systemOcclusionRects;
}

- (void)setSystemOcclusionRects:(id)rects
{
  rectsCopy = rects;
  hostScene = [(FBSSceneComponent *)self hostScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58___UISceneOcclusionHostComponent_setSystemOcclusionRects___block_invoke;
  v7[3] = &unk_1E70F4520;
  v8 = rectsCopy;
  v6 = rectsCopy;
  [hostScene updateSettingsWithBlock:v7];
}

@end