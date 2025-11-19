@interface UITextItemActionSheet
@end

@implementation UITextItemActionSheet

void __54___UITextItemActionSheet__alertActionsWithController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = _MergedGlobals_1101;
  v14 = _MergedGlobals_1101;
  if (!_MergedGlobals_1101)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getDDDetectionControllerClass_block_invoke_0;
    v10[3] = &unk_1E70F2F20;
    v10[4] = &v11;
    __getDDDetectionControllerClass_block_invoke_0(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = [v4 sharedController];
  v7 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = objc_loadWeakRetained((a1 + 48));
  [v6 performAction:v7 fromView:WeakRetained alertController:v9 interactionDelegate:0];
}

@end