@interface UIMainMenuDeferredElementRequestAction
@end

@implementation UIMainMenuDeferredElementRequestAction

void __82___UIMainMenuDeferredElementRequestAction_initWithDeferredElementRequest_handler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v6 deferredElementResponse];
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void __63___UIMainMenuDeferredElementRequestAction_handleMainMenuAction__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) canSendResponse])
  {
    v3 = *(a1 + 32);
    v4 = [_UIMainMenuDeferredElementRequestActionResponse _responseWithDeferredElementResponse:v5];
    [v3 sendResponse:v4];
  }
}

@end