@interface _UISceneIntelligenceSupportHostComponent
- (BOOL)collectAsRemoteElement;
- (void)collectRemoteContentInVisibleRect:(void *)rect withRemoteContextWrapper:(uint64_t)wrapper;
- (void)setCollectAsRemoteElement:(BOOL)element;
@end

@implementation _UISceneIntelligenceSupportHostComponent

- (void)collectRemoteContentInVisibleRect:(void *)rect withRemoteContextWrapper:(uint64_t)wrapper
{
  if (rect)
  {
    v5 = [_UISceneIntelligenceSupportActionToClient actionForCollectRemoteContentInVisibleRect:wrapper withRemoteContextWrapper:?];
    scene = [rect scene];
    v4 = [MEMORY[0x1E695DFD8] setWithObject:v5];
    [scene sendPrivateActions:v4];
  }
}

- (void)setCollectAsRemoteElement:(BOOL)element
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70___UISceneIntelligenceSupportHostComponent_setCollectAsRemoteElement___block_invoke;
  v6[3] = &__block_descriptor_33_e70_v16__0__FBSMutableSceneSettings__UISceneIntelligenceSupportSettings__8l;
  elementCopy = element;
  if (self)
  {
    v4 = v6;
    hostScene = [(FBSSceneComponent *)self hostScene];
    [hostScene updateSettings:v4];
  }
}

- (BOOL)collectAsRemoteElement
{
  if (self)
  {
    scene = [(FBSSceneComponent *)self scene];
    settings = [scene settings];
  }

  else
  {
    settings = 0;
  }

  collectAsRemoteElement = [settings collectAsRemoteElement];

  return collectAsRemoteElement;
}

@end