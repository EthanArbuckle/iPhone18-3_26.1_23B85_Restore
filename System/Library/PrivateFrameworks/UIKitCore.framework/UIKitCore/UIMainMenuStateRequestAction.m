@interface UIMainMenuStateRequestAction
@end

@implementation UIMainMenuStateRequestAction

void __66___UIMainMenuStateRequestAction_initWithMenuStateRequest_handler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v6 menuStateResponse];
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

@end