@interface UIObjectPerScreen
@end

@implementation UIObjectPerScreen

void __76___UIObjectPerScreen_objectOfClass_forScreen_withOptions_createIfNecessary___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v3 = _MergedGlobals_1358;
  _MergedGlobals_1358 = v2;

  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:2];
  v5 = qword_1ED4A2760;
  qword_1ED4A2760 = v4;

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:sel_screenDisconnected_ name:@"_UIScreenDidDisconnectNotification" object:0];
}

@end