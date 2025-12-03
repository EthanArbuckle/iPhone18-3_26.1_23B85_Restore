@interface UISNotificationResponseAction
- (BOOL)isDefaultAction;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)isRemote;
- (UISNotificationResponseAction)initWithResponse:(id)response withHandler:(id)handler;
- (UISNotificationResponseAction)initWithXPCDictionary:(id)dictionary;
- (id)_trigger;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
@end

@implementation UISNotificationResponseAction

- (UISNotificationResponseAction)initWithResponse:(id)response withHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  if (!responseCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISNotificationResponseAction.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"response"}];
  }

  v9 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v9 setObject:responseCopy forSetting:1];
  if (handlerCopy)
  {
    v10 = [MEMORY[0x1E698E5F8] responderWithHandler:handlerCopy];
    v11 = v10;
    if (v10)
    {
      [v10 setQueue:MEMORY[0x1E69E96A0]];
    }
  }

  else
  {
    v11 = 0;
  }

  v17.receiver = self;
  v17.super_class = UISNotificationResponseAction;
  v12 = [(UISNotificationResponseAction *)&v17 initWithInfo:v9 responder:v11];
  if (v12)
  {
    v13 = [responseCopy copy];
    response = v12->_response;
    v12->_response = v13;
  }

  return v12;
}

- (BOOL)isRemote
{
  _trigger = [(UISNotificationResponseAction *)self _trigger];
  NSClassFromString(&cfstr_Unpushnotifica.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isDefaultAction
{
  response = [(UISNotificationResponseAction *)self response];
  actionIdentifier = [response actionIdentifier];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v4 = _MergedGlobals_6;
  v13 = _MergedGlobals_6;
  if (!_MergedGlobals_6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getUNNotificationDefaultActionIdentifierSymbolLoc_block_invoke;
    v9[3] = &unk_1E7459080;
    v9[4] = &v10;
    __getUNNotificationDefaultActionIdentifierSymbolLoc_block_invoke(v9);
    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v4)
  {
    v5 = [actionIdentifier isEqualToString:*v4];

    return v5;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *const getUNNotificationDefaultActionIdentifier(void)"];
    [currentHandler handleFailureInFunction:v8 file:@"UISNotificationResponseAction.m" lineNumber:19 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (id)_trigger
{
  response = [(UISNotificationResponseAction *)self response];
  notification = [response notification];
  request = [notification request];
  trigger = [request trigger];

  return trigger;
}

- (UISNotificationResponseAction)initWithXPCDictionary:(id)dictionary
{
  v9.receiver = self;
  v9.super_class = UISNotificationResponseAction;
  v3 = [(UISNotificationResponseAction *)&v9 initWithXPCDictionary:dictionary];
  v4 = v3;
  if (v3)
  {
    info = [(UISNotificationResponseAction *)v3 info];
    v6 = [info objectForSetting:1];

    response = v4->_response;
    v4->_response = v6;
  }

  return v4;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"response";
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
    v7 = [(UNNotificationResponse *)self->_response description:flag];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isKindOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = UISNotificationResponseAction;
  if ([(UISNotificationResponseAction *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)class isSubclassOfClass:objc_opt_class()];
  }
}

@end