@interface UIOHypogeanViewRequestAction
@end

@implementation UIOHypogeanViewRequestAction

void __66___UIOHypogeanViewRequestAction_TestingOnly__overlay_viewRegistry__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1ED49FC40;
  qword_1ED49FC40 = v0;
}

void __83___UIOHypogeanViewRequestAction_TestingOnly_initWithConfiguration_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = a2;
  v5 = objc_opt_class();
  v6 = [v4 info];

  v7 = [v6 objectForSetting:1];
  v8 = [v3 unarchivedObjectOfClass:v5 fromData:v7 error:0];

  (*(*(a1 + 32) + 16))();
}

void __79___UIOHypogeanViewRequestAction_TestingOnly__performActionWithDisplayDelegate___block_invoke()
{
  v0 = UIOLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_debug_impl(&dword_188A29000, v0, OS_LOG_TYPE_DEBUG, "Hypogean Button Pressed!", v1, 2u);
  }
}

@end