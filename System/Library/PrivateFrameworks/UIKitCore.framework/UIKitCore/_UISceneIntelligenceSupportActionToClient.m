@interface _UISceneIntelligenceSupportActionToClient
+ (id)actionForCollectRemoteContentInVisibleRect:(CGRect)a3 withRemoteContextWrapper:(id)a4;
- (void)executeActionForWindowHostingScene:(id)a3;
@end

@implementation _UISceneIntelligenceSupportActionToClient

+ (id)actionForCollectRemoteContentInVisibleRect:(CGRect)a3 withRemoteContextWrapper:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = MEMORY[0x1E698E700];
  v10 = a4;
  v11 = objc_alloc_init(v9);
  [v11 setObject:&unk_1EFE33730 forSetting:0];
  v12 = [MEMORY[0x1E696B098] bs_valueWithCGRect:{x, y, width, height}];
  [v11 setObject:v12 forSetting:1];

  v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];

  [v11 setObject:v13 forSetting:2];
  v14 = [[a1 alloc] initWithInfo:v11 responder:0];

  return v14;
}

- (void)executeActionForWindowHostingScene:(id)a3
{
  v21 = a3;
  v4 = [(_UISceneIntelligenceSupportActionToClient *)self info];
  v5 = [v4 objectForSetting:0];
  v6 = [v5 unsignedIntegerValue];

  v7 = v21;
  if (!v6)
  {
    v8 = [(_UISceneIntelligenceSupportActionToClient *)self info];
    v9 = [v8 objectForSetting:1];
    [v9 bs_CGRectValue];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [(_UISceneIntelligenceSupportActionToClient *)self info];
    v19 = [v18 objectForSetting:2];

    if (v19)
    {
      v20 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:+[_UIApplicationIntelligenceSupport remoteContextWrapperClass](_UIApplicationIntelligenceSupport fromData:"remoteContextWrapperClass") error:{v19, 0}];
      v23.origin.x = v11;
      v23.origin.y = v13;
      v23.size.width = v15;
      v23.size.height = v17;
      if (!CGRectIsNull(v23) && v20)
      {
        [_UIApplicationIntelligenceSupport collectRemoteContentForWindowHostingScene:v21 inVisibleRect:v20 withRemoteContextWrapper:v11, v13, v15, v17];
      }
    }

    v7 = v21;
  }
}

@end