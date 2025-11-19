@interface UIDragManager
@end

@implementation UIDragManager

void __42___UIDragManager_initializeDraggingSystem__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MergedGlobals_1199;
  _MergedGlobals_1199 = v0;
}

void __52___UIDragManager_beginDragWithSessionConfiguration___block_invoke(uint64_t a1)
{
  v2 = dyld_program_sdk_at_least();
  v3 = *(*(a1 + 32) + 16);
  if (v2)
  {
    if (v3 <= 0)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"_UIDragManager.m" lineNumber:232 description:@"Pending session request count is not valid."];
    }
  }

  else if (v3 <= 0)
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &_block_invoke___s_category_3) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Pending session request count is not valid.", buf, 2u);
    }
  }

  if (--*(*(a1 + 32) + 16) <= 0)
  {
    v5 = +[UIApplication _systemAnimationFenceExemptQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52___UIDragManager_beginDragWithSessionConfiguration___block_invoke_33;
    v7[3] = &unk_1E70F3590;
    v7[4] = *(a1 + 32);
    [v5 performAsync:v7];
  }
}

@end