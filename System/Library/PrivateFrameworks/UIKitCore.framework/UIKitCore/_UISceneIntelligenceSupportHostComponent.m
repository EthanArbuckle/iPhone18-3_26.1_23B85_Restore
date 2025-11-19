@interface _UISceneIntelligenceSupportHostComponent
- (BOOL)collectAsRemoteElement;
- (void)collectRemoteContentInVisibleRect:(void *)a1 withRemoteContextWrapper:(uint64_t)a2;
- (void)setCollectAsRemoteElement:(BOOL)a3;
@end

@implementation _UISceneIntelligenceSupportHostComponent

- (void)collectRemoteContentInVisibleRect:(void *)a1 withRemoteContextWrapper:(uint64_t)a2
{
  if (a1)
  {
    v5 = [_UISceneIntelligenceSupportActionToClient actionForCollectRemoteContentInVisibleRect:a2 withRemoteContextWrapper:?];
    v3 = [a1 scene];
    v4 = [MEMORY[0x1E695DFD8] setWithObject:v5];
    [v3 sendPrivateActions:v4];
  }
}

- (void)setCollectAsRemoteElement:(BOOL)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70___UISceneIntelligenceSupportHostComponent_setCollectAsRemoteElement___block_invoke;
  v6[3] = &__block_descriptor_33_e70_v16__0__FBSMutableSceneSettings__UISceneIntelligenceSupportSettings__8l;
  v7 = a3;
  if (self)
  {
    v4 = v6;
    v5 = [(FBSSceneComponent *)self hostScene];
    [v5 updateSettings:v4];
  }
}

- (BOOL)collectAsRemoteElement
{
  if (self)
  {
    v2 = [(FBSSceneComponent *)self scene];
    v3 = [v2 settings];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 collectAsRemoteElement];

  return v4;
}

@end