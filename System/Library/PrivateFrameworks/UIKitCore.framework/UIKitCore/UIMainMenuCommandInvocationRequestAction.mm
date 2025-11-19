@interface UIMainMenuCommandInvocationRequestAction
@end

@implementation UIMainMenuCommandInvocationRequestAction

void __87___UIMainMenuCommandInvocationRequestAction_initWithInvocationRequest_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v6 invocationResponse];
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void __65___UIMainMenuCommandInvocationRequestAction_handleMainMenuAction__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if ([*(a1 + 32) canSendResponse])
  {
    v3 = *(a1 + 32);
    v4 = [_UIMainMenuCommandInvocationRequestActionResponse _responseWithInvocationResponse:v11];
    [v3 sendResponse:v4];
  }

  else
  {
    v5 = [v11 sessionResponse];
    v6 = [v5 session];

    if (!v6)
    {
      goto LABEL_6;
    }

    v4 = objc_opt_new();
    v7 = [v11 sessionResponse];
    v8 = [v7 session];
    [v4 setSessionToEnd:v8];

    v9 = +[_UIMainMenuManager sharedManager];
    v10 = [v9 performSessionRequest:v4];
  }

LABEL_6:
}

@end