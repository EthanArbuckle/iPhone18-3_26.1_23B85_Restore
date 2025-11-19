@interface UIObjectPerScene
@end

@implementation UIObjectPerScene

void __74___UIObjectPerScene_objectOfClass_forScene_withOptions_createIfNecessary___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v3 = qword_1ED4A2768;
  qword_1ED4A2768 = v2;

  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:2];
  v5 = qword_1ED4A2778;
  qword_1ED4A2778 = v4;

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:sel_sceneDisconnected_ name:@"UISceneDidDisconnectNotification" object:0];
}

@end