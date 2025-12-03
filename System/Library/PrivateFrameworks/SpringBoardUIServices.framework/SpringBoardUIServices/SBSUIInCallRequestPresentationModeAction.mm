@interface SBSUIInCallRequestPresentationModeAction
- (BOOL)isUserInitiated;
- (NSString)analyticsSource;
- (SBSUIInCallRequestPresentationModeAction)initWithRequestedPresentationMode:(int64_t)mode isUserInitiated:(BOOL)initiated analyticsSource:(id)source responseHandler:(id)handler;
- (int64_t)requestedPresentationMode;
- (void)sendCompletionResponseWithSuccess:(BOOL)success;
@end

@implementation SBSUIInCallRequestPresentationModeAction

- (SBSUIInCallRequestPresentationModeAction)initWithRequestedPresentationMode:(int64_t)mode isUserInitiated:(BOOL)initiated analyticsSource:(id)source responseHandler:(id)handler
{
  sourceCopy = source;
  handlerCopy = handler;
  v11 = objc_alloc_init(MEMORY[0x1E698E700]);
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  [v11 setObject:v12 forSetting:1];

  [v11 setFlag:BSSettingFlagForBool() forSetting:2];
  if (sourceCopy)
  {
    [v11 setObject:sourceCopy forSetting:3];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __126__SBSUIInCallRequestPresentationModeAction_initWithRequestedPresentationMode_isUserInitiated_analyticsSource_responseHandler___block_invoke;
  v17[3] = &unk_1E789E448;
  v18 = handlerCopy;
  v16.receiver = self;
  v16.super_class = SBSUIInCallRequestPresentationModeAction;
  v13 = handlerCopy;
  v14 = [(SBSUIInCallRequestPresentationModeAction *)&v16 initWithInfo:v11 timeout:MEMORY[0x1E69E96A0] forResponseOnQueue:v17 withHandler:2.0];

  return v14;
}

void __126__SBSUIInCallRequestPresentationModeAction_initWithRequestedPresentationMode_isUserInitiated_analyticsSource_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  (*(v2 + 16))(v2, v3 == 0);
}

- (void)sendCompletionResponseWithSuccess:(BOOL)success
{
  successCopy = success;
  if ([(SBSUIInCallRequestPresentationModeAction *)self canSendResponse])
  {
    if (successCopy)
    {
      response = [MEMORY[0x1E698E600] response];
      v8.receiver = self;
      v8.super_class = SBSUIInCallRequestPresentationModeAction;
      [(SBSUIInCallRequestPresentationModeAction *)&v8 sendResponse:response];
    }

    else
    {
      response = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBSUIInCallErrorDomain" code:-1003 userInfo:0];
      v6 = [MEMORY[0x1E698E600] responseForError:response];
      v7.receiver = self;
      v7.super_class = SBSUIInCallRequestPresentationModeAction;
      [(SBSUIInCallRequestPresentationModeAction *)&v7 sendResponse:v6];
    }
  }
}

- (NSString)analyticsSource
{
  info = [(SBSUIInCallRequestPresentationModeAction *)self info];
  v3 = [info objectForSetting:3];

  return v3;
}

- (int64_t)requestedPresentationMode
{
  info = [(SBSUIInCallRequestPresentationModeAction *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)isUserInitiated
{
  info = [(SBSUIInCallRequestPresentationModeAction *)self info];
  v3 = [info BOOLForSetting:2];

  return v3;
}

@end