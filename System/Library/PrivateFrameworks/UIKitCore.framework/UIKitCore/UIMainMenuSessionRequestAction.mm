@interface UIMainMenuSessionRequestAction
@end

@implementation UIMainMenuSessionRequestAction

void __66___UIMainMenuSessionRequestAction_initWithSessionRequest_handler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v6 sessionResponse];
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

@end