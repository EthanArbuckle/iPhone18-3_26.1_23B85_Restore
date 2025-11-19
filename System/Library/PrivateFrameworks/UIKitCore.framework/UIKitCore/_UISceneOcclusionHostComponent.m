@interface _UISceneOcclusionHostComponent
- (NSArray)applicationOcclusionRects;
- (NSArray)systemOcclusionRects;
- (void)setApplicationOcclusionRects:(id)a3;
- (void)setSystemOcclusionRects:(id)a3;
@end

@implementation _UISceneOcclusionHostComponent

- (NSArray)applicationOcclusionRects
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 settings];
  v4 = [v3 applicationOcclusionRects];

  return v4;
}

- (void)setApplicationOcclusionRects:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self hostScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63___UISceneOcclusionHostComponent_setApplicationOcclusionRects___block_invoke;
  v7[3] = &unk_1E70F4520;
  v8 = v4;
  v6 = v4;
  [v5 updateSettingsWithBlock:v7];
}

- (NSArray)systemOcclusionRects
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 settings];
  v4 = [v3 systemOcclusionRects];

  return v4;
}

- (void)setSystemOcclusionRects:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self hostScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58___UISceneOcclusionHostComponent_setSystemOcclusionRects___block_invoke;
  v7[3] = &unk_1E70F4520;
  v8 = v4;
  v6 = v4;
  [v5 updateSettingsWithBlock:v7];
}

@end