@interface SBSUIHardwareButtonEventSceneAction
- (SBSUIHardwareButtonEventSceneAction)initWithButtonEventType:(int64_t)type timeout:(double)timeout withResponseHandler:(id)handler;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)buttonEventType;
- (void)sendResponse:(id)response;
@end

@implementation SBSUIHardwareButtonEventSceneAction

- (SBSUIHardwareButtonEventSceneAction)initWithButtonEventType:(int64_t)type timeout:(double)timeout withResponseHandler:(id)handler
{
  handlerCopy = handler;
  v9 = objc_alloc_init(MEMORY[0x1E698E700]);
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [v9 setObject:v10 forSetting:1];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__SBSUIHardwareButtonEventSceneAction_initWithButtonEventType_timeout_withResponseHandler___block_invoke;
  v15[3] = &unk_1E789E448;
  v16 = handlerCopy;
  v14.receiver = self;
  v14.super_class = SBSUIHardwareButtonEventSceneAction;
  v11 = handlerCopy;
  v12 = [(SBSUIHardwareButtonEventSceneAction *)&v14 initWithInfo:v9 timeout:MEMORY[0x1E69E96A0] forResponseOnQueue:v15 withHandler:timeout];

  return v12;
}

void __91__SBSUIHardwareButtonEventSceneAction_initWithButtonEventType_timeout_withResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v6;
    if ((isKindOfClass & 1) == 0)
    {
      v5 = 0;
    }

    (*(v4 + 16))(v4, v5);
  }
}

- (void)sendResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBSUIHardwareButtonEventSceneAction *)a2 sendResponse:responseCopy];
  }

  v6.receiver = self;
  v6.super_class = SBSUIHardwareButtonEventSceneAction;
  [(SBSUIHardwareButtonEventSceneAction *)&v6 sendResponse:responseCopy];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"buttonEventType";
  }

  else
  {
    return 0;
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    v7 = SBSUIHardwareButtonEventTypeDescription([object integerValue]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)buttonEventType
{
  info = [(SBSUIHardwareButtonEventSceneAction *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)sendResponse:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSUIHardwareButtonEventSceneAction.m" lineNumber:40 description:{@"SBSUIHardwareButtonEventSceneActionResponse is the only supported response class.", a3}];
}

@end