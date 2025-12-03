@interface UILinkConnectionAction
- (LNConnectionAction)action;
- (UILinkConnectionAction)initWithAction:(id)action responseQueue:(id)queue responseHandler:(id)handler;
- (id)keyDescriptionForSetting:(unint64_t)setting;
@end

@implementation UILinkConnectionAction

- (LNConnectionAction)action
{
  info = [(UILinkConnectionAction *)self info];
  v3 = [info objectForSetting:0];

  return v3;
}

- (UILinkConnectionAction)initWithAction:(id)action responseQueue:(id)queue responseHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v10 = MEMORY[0x1E698E700];
  actionCopy = action;
  v12 = objc_alloc_init(v10);
  [v12 setObject:actionCopy forSetting:0];

  if (handlerCopy)
  {
    v13 = MEMORY[0x1E698E5F8];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__UILinkConnectionAction_initWithAction_responseQueue_responseHandler___block_invoke;
    v18[3] = &unk_1E7108B40;
    v19 = handlerCopy;
    v14 = [v13 responderWithHandler:v18];
    v15 = v14;
    if (queueCopy)
    {
      [v14 setQueue:queueCopy];
    }

    [v15 setTimeout:{dispatch_time(0, 60000000000)}];

    v16 = [(UILinkConnectionAction *)self initWithInfo:v12 responder:v15];
  }

  else
  {
    v16 = [(UILinkConnectionAction *)self initWithInfo:v12 responder:0];
  }

  return v16;
}

void __71__UILinkConnectionAction_initWithAction_responseQueue_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [v5 actionResponse];
    (*(v3 + 16))(v3, v4);
  }
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting)
  {
    return 0;
  }

  else
  {
    return @"connection action";
  }
}

@end