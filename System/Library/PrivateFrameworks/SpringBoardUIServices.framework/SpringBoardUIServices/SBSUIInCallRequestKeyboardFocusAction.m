@interface SBSUIInCallRequestKeyboardFocusAction
- (BOOL)isUserInitiated;
- (SBSUIInCallRequestKeyboardFocusAction)initWithUserInitiated:(BOOL)a3 responseHandler:(id)a4;
- (void)sendCompletionResponseWithSuccess:(BOOL)a3;
@end

@implementation SBSUIInCallRequestKeyboardFocusAction

- (SBSUIInCallRequestKeyboardFocusAction)initWithUserInitiated:(BOOL)a3 responseHandler:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v6 setFlag:BSSettingFlagForBool() forSetting:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__SBSUIInCallRequestKeyboardFocusAction_initWithUserInitiated_responseHandler___block_invoke;
  v11[3] = &unk_1E789E448;
  v12 = v5;
  v10.receiver = self;
  v10.super_class = SBSUIInCallRequestKeyboardFocusAction;
  v7 = v5;
  v8 = [(SBSUIInCallRequestKeyboardFocusAction *)&v10 initWithInfo:v6 timeout:MEMORY[0x1E69E96A0] forResponseOnQueue:v11 withHandler:2.0];

  return v8;
}

void __79__SBSUIInCallRequestKeyboardFocusAction_initWithUserInitiated_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  (*(v2 + 16))(v2, v3 == 0);
}

- (void)sendCompletionResponseWithSuccess:(BOOL)a3
{
  v3 = a3;
  if ([(SBSUIInCallRequestKeyboardFocusAction *)self canSendResponse])
  {
    if (v3)
    {
      v5 = [MEMORY[0x1E698E600] response];
      v8.receiver = self;
      v8.super_class = SBSUIInCallRequestKeyboardFocusAction;
      [(SBSUIInCallRequestKeyboardFocusAction *)&v8 sendResponse:v5];
    }

    else
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBSUIInCallErrorDomain" code:-1003 userInfo:0];
      v6 = [MEMORY[0x1E698E600] responseForError:v5];
      v7.receiver = self;
      v7.super_class = SBSUIInCallRequestKeyboardFocusAction;
      [(SBSUIInCallRequestKeyboardFocusAction *)&v7 sendResponse:v6];
    }
  }
}

- (BOOL)isUserInitiated
{
  v2 = [(SBSUIInCallRequestKeyboardFocusAction *)self info];
  v3 = [v2 BOOLForSetting:1];

  return v3;
}

@end