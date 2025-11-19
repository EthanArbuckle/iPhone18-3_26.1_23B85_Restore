@interface _UIViewServiceViewControllerOperator_XPCInterface
- (id)exportedInterface;
- (id)hostObjectInterface;
@end

@implementation _UIViewServiceViewControllerOperator_XPCInterface

- (id)exportedInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F00EB9B8];
  v3 = objc_opt_self();
  [v2 setClass:v3 forSelector:sel___createViewControllerWithOptions_completionBlock_ argumentIndex:0 ofReply:0];

  v4 = objc_opt_self();
  [v2 setClass:v4 forSelector:sel___createViewControllerWithOptions_completionBlock_ argumentIndex:0 ofReply:1];

  v5 = MEMORY[0x1E69E9E80];
  [v2 setXPCType:MEMORY[0x1E69E9E80] forSelector:sel___hostSceneDidUpdateWithDiff_ argumentIndex:0 ofReply:0];
  [v2 setXPCType:v5 forSelector:sel___hostDidMoveToParentSceneWithSettings_ argumentIndex:0 ofReply:0];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel___timelinesForDateInterval_completion_ argumentIndex:0 ofReply:1];

  [v2 setClass:+[_UIApplicationIntelligenceSupport remoteContextWrapperClass](_UIApplicationIntelligenceSupport forSelector:"remoteContextWrapperClass") argumentIndex:sel___intelligenceCollectRemoteContentInVisibleRect_withRemoteContextWrapper_ ofReply:{1, 0}];

  return v2;
}

- (id)hostObjectInterface
{
  v15[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F00E5668];
  v3 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel___viewServiceDidUpdateMultitaskingDragExclusionRects_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x1E695DFD8];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v8 = [v6 setWithArray:v7];
  [v2 setClasses:v8 forSelector:sel___viewServiceAddSceneForwardingLayersForOwners_ argumentIndex:0 ofReply:0];

  v9 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v11 = [v9 setWithArray:v10];
  [v2 setClasses:v11 forSelector:sel___viewServiceRemoveSceneForwardingLayersForOwners_ argumentIndex:0 ofReply:0];

  return v2;
}

@end