@interface UISHandleBackgroundURLSessionAction
- (BOOL)isKindOfClass:(Class)class;
- (NSString)sessionIdentifier;
- (UISHandleBackgroundURLSessionAction)initWithSessionIdentifier:(id)identifier timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (id)keyDescriptionForSetting:(unint64_t)setting;
@end

@implementation UISHandleBackgroundURLSessionAction

- (UISHandleBackgroundURLSessionAction)initWithSessionIdentifier:(id)identifier timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
{
  identifierCopy = identifier;
  queueCopy = queue;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISHandleBackgroundURLSessionAction.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"sessionIdentifier"}];
  }

  v13 = objc_alloc_init(MEMORY[0x1E698E700]);
  v14 = [identifierCopy copy];
  [v13 setObject:v14 forSetting:1];

  if (handlerCopy)
  {
    v15 = [MEMORY[0x1E698E5F8] responderWithHandler:handlerCopy];
    v16 = v15;
    if (v15)
    {
      [v15 setQueue:queueCopy];
    }
  }

  else
  {
    v16 = 0;
  }

  v20.receiver = self;
  v20.super_class = UISHandleBackgroundURLSessionAction;
  v17 = [(UISHandleBackgroundURLSessionAction *)&v20 initWithInfo:v13 responder:v16];

  return v17;
}

- (NSString)sessionIdentifier
{
  info = [(UISHandleBackgroundURLSessionAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"sessionIdentifier";
  }

  else
  {
    return 0;
  }
}

- (BOOL)isKindOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = UISHandleBackgroundURLSessionAction;
  if ([(UISHandleBackgroundURLSessionAction *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)class isSubclassOfClass:objc_opt_class()];
  }
}

@end