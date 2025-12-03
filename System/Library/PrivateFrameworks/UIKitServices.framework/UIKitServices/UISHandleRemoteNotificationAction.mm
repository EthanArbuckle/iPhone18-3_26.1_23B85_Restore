@interface UISHandleRemoteNotificationAction
- (id)_initWithRemoteNotificationPayload:(id)payload action:(id)action userResponse:(id)response type:(unint64_t)type withHandler:(id)handler;
- (id)action;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)payload;
- (id)userResponse;
- (unint64_t)UIActionType;
- (void)sendResponse:(id)response;
@end

@implementation UISHandleRemoteNotificationAction

- (id)_initWithRemoteNotificationPayload:(id)payload action:(id)action userResponse:(id)response type:(unint64_t)type withHandler:(id)handler
{
  payloadCopy = payload;
  actionCopy = action;
  responseCopy = response;
  handlerCopy = handler;
  if (!payloadCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISHandleRemoteNotificationAction.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"payload"}];
  }

  v17 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v17 setObject:payloadCopy forSetting:1];
  [v17 setObject:actionCopy forSetting:2];
  [v17 setObject:responseCopy forSetting:4];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [v17 setObject:v18 forSetting:3];

  if (handlerCopy)
  {
    v19 = [MEMORY[0x1E698E5F8] responderWithHandler:handlerCopy];
  }

  else
  {
    v19 = 0;
  }

  v23.receiver = self;
  v23.super_class = UISHandleRemoteNotificationAction;
  v20 = [(UISHandleRemoteNotificationAction *)&v23 initWithInfo:v17 responder:v19];

  return v20;
}

- (id)payload
{
  info = [(UISHandleRemoteNotificationAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (id)action
{
  if ([(UISHandleRemoteNotificationAction *)self UIActionType]!= 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISHandleRemoteNotificationAction.m" lineNumber:53 description:@"You're trying to get the action but this is just a simple remote notification"];
  }

  info = [(UISHandleRemoteNotificationAction *)self info];
  v5 = [info objectForSetting:2];

  return v5;
}

- (id)userResponse
{
  info = [(UISHandleRemoteNotificationAction *)self info];
  v3 = [info objectForSetting:4];

  return v3;
}

- (unint64_t)UIActionType
{
  info = [(UISHandleRemoteNotificationAction *)self info];
  v3 = [info objectForSetting:3];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)sendResponse:(id)response
{
  responseCopy = response;
  if ([(UISHandleRemoteNotificationAction *)self UIActionType]== 3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UISHandleRemoteNotificationAction.m" lineNumber:68 description:{@"You sent back the wrong response class -> %@", responseCopy}];
    }
  }

  v7.receiver = self;
  v7.super_class = UISHandleRemoteNotificationAction;
  [(UISHandleRemoteNotificationAction *)&v7 sendResponse:responseCopy];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7458FB8[setting - 1];
  }
}

@end