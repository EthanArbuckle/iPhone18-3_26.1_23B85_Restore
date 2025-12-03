@interface _UISceneIntelligenceSupportActionToClient
+ (id)actionForCollectRemoteContentInVisibleRect:(CGRect)rect withRemoteContextWrapper:(id)wrapper;
- (void)executeActionForWindowHostingScene:(id)scene;
@end

@implementation _UISceneIntelligenceSupportActionToClient

+ (id)actionForCollectRemoteContentInVisibleRect:(CGRect)rect withRemoteContextWrapper:(id)wrapper
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = MEMORY[0x1E698E700];
  wrapperCopy = wrapper;
  v11 = objc_alloc_init(v9);
  [v11 setObject:&unk_1EFE33730 forSetting:0];
  v12 = [MEMORY[0x1E696B098] bs_valueWithCGRect:{x, y, width, height}];
  [v11 setObject:v12 forSetting:1];

  v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:wrapperCopy requiringSecureCoding:1 error:0];

  [v11 setObject:v13 forSetting:2];
  v14 = [[self alloc] initWithInfo:v11 responder:0];

  return v14;
}

- (void)executeActionForWindowHostingScene:(id)scene
{
  sceneCopy = scene;
  info = [(_UISceneIntelligenceSupportActionToClient *)self info];
  v5 = [info objectForSetting:0];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = sceneCopy;
  if (!unsignedIntegerValue)
  {
    info2 = [(_UISceneIntelligenceSupportActionToClient *)self info];
    v9 = [info2 objectForSetting:1];
    [v9 bs_CGRectValue];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    info3 = [(_UISceneIntelligenceSupportActionToClient *)self info];
    v19 = [info3 objectForSetting:2];

    if (v19)
    {
      v20 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:+[_UIApplicationIntelligenceSupport remoteContextWrapperClass](_UIApplicationIntelligenceSupport fromData:"remoteContextWrapperClass") error:{v19, 0}];
      v23.origin.x = v11;
      v23.origin.y = v13;
      v23.size.width = v15;
      v23.size.height = v17;
      if (!CGRectIsNull(v23) && v20)
      {
        [_UIApplicationIntelligenceSupport collectRemoteContentForWindowHostingScene:sceneCopy inVisibleRect:v20 withRemoteContextWrapper:v11, v13, v15, v17];
      }
    }

    v7 = sceneCopy;
  }
}

@end