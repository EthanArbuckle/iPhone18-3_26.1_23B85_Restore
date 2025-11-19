@interface SBSUIInCallRequestPresentationModeAction
- (BOOL)isUserInitiated;
- (NSString)analyticsSource;
- (SBSUIInCallRequestPresentationModeAction)initWithRequestedPresentationMode:(int64_t)a3 isUserInitiated:(BOOL)a4 analyticsSource:(id)a5 responseHandler:(id)a6;
- (int64_t)requestedPresentationMode;
- (void)sendCompletionResponseWithSuccess:(BOOL)a3;
@end

@implementation SBSUIInCallRequestPresentationModeAction

- (SBSUIInCallRequestPresentationModeAction)initWithRequestedPresentationMode:(int64_t)a3 isUserInitiated:(BOOL)a4 analyticsSource:(id)a5 responseHandler:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = objc_alloc_init(MEMORY[0x1E698E700]);
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v11 setObject:v12 forSetting:1];

  [v11 setFlag:BSSettingFlagForBool() forSetting:2];
  if (v9)
  {
    [v11 setObject:v9 forSetting:3];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __126__SBSUIInCallRequestPresentationModeAction_initWithRequestedPresentationMode_isUserInitiated_analyticsSource_responseHandler___block_invoke;
  v17[3] = &unk_1E789E448;
  v18 = v10;
  v16.receiver = self;
  v16.super_class = SBSUIInCallRequestPresentationModeAction;
  v13 = v10;
  v14 = [(SBSUIInCallRequestPresentationModeAction *)&v16 initWithInfo:v11 timeout:MEMORY[0x1E69E96A0] forResponseOnQueue:v17 withHandler:2.0];

  return v14;
}

void __126__SBSUIInCallRequestPresentationModeAction_initWithRequestedPresentationMode_isUserInitiated_analyticsSource_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  (*(v2 + 16))(v2, v3 == 0);
}

- (void)sendCompletionResponseWithSuccess:(BOOL)a3
{
  v3 = a3;
  if ([(SBSUIInCallRequestPresentationModeAction *)self canSendResponse])
  {
    if (v3)
    {
      v5 = [MEMORY[0x1E698E600] response];
      v8.receiver = self;
      v8.super_class = SBSUIInCallRequestPresentationModeAction;
      [(SBSUIInCallRequestPresentationModeAction *)&v8 sendResponse:v5];
    }

    else
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBSUIInCallErrorDomain" code:-1003 userInfo:0];
      v6 = [MEMORY[0x1E698E600] responseForError:v5];
      v7.receiver = self;
      v7.super_class = SBSUIInCallRequestPresentationModeAction;
      [(SBSUIInCallRequestPresentationModeAction *)&v7 sendResponse:v6];
    }
  }
}

- (NSString)analyticsSource
{
  v2 = [(SBSUIInCallRequestPresentationModeAction *)self info];
  v3 = [v2 objectForSetting:3];

  return v3;
}

- (int64_t)requestedPresentationMode
{
  v2 = [(SBSUIInCallRequestPresentationModeAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)isUserInitiated
{
  v2 = [(SBSUIInCallRequestPresentationModeAction *)self info];
  v3 = [v2 BOOLForSetting:2];

  return v3;
}

@end