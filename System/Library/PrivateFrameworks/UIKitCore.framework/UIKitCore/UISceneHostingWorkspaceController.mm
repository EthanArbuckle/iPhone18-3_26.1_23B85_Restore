@interface UISceneHostingWorkspaceController
@end

@implementation UISceneHostingWorkspaceController

void __52___UISceneHostingWorkspaceController_sharedInstance__block_invoke()
{
  v0 = [_UISceneHostingWorkspaceController alloc];
  if (v0)
  {
    v11.receiver = v0;
    v11.super_class = _UISceneHostingWorkspaceController;
    v1 = objc_msgSendSuper2(&v11, sel_init);
    if (v1)
    {
      v2 = MEMORY[0x1E696AEC0];
      v3 = _UIMainBundleIdentifier();
      v4 = v3;
      if (v3)
      {
        v5 = [v2 stringWithFormat:@"UISceneHosting-%@", v3];
      }

      else
      {
        v6 = [MEMORY[0x1E696AFB0] UUID];
        v7 = [v6 UUIDString];
        v5 = [v2 stringWithFormat:@"UISceneHosting-%@", v7];
      }

      v8 = [objc_alloc(MEMORY[0x1E699F7F8]) initWithIdentifier:v5];
      v9 = *(v1 + 1);
      *(v1 + 1) = v8;

      [*(v1 + 1) setDelegate:v1];
    }
  }

  else
  {
    v1 = 0;
  }

  v10 = _MergedGlobals_992;
  _MergedGlobals_992 = v1;
}

void __64___UISceneHostingWorkspaceController_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 8) identifier];
  v4 = [v2 appendObject:v3 withName:0];

  v5 = *(a1 + 32);
  v7 = [*(*(a1 + 40) + 8) allScenes];
  v6 = [v5 appendInt:objc_msgSend(v7 withName:{"count"), @"scenes"}];
}

@end