@interface UISHandleBackgroundURLSessionAction
- (BOOL)isKindOfClass:(Class)a3;
- (NSString)sessionIdentifier;
- (UISHandleBackgroundURLSessionAction)initWithSessionIdentifier:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
- (id)keyDescriptionForSetting:(unint64_t)a3;
@end

@implementation UISHandleBackgroundURLSessionAction

- (UISHandleBackgroundURLSessionAction)initWithSessionIdentifier:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!v10)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"UISHandleBackgroundURLSessionAction.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"sessionIdentifier"}];
  }

  v13 = objc_alloc_init(MEMORY[0x1E698E700]);
  v14 = [v10 copy];
  [v13 setObject:v14 forSetting:1];

  if (v12)
  {
    v15 = [MEMORY[0x1E698E5F8] responderWithHandler:v12];
    v16 = v15;
    if (v15)
    {
      [v15 setQueue:v11];
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
  v2 = [(UISHandleBackgroundURLSessionAction *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"sessionIdentifier";
  }

  else
  {
    return 0;
  }
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = UISHandleBackgroundURLSessionAction;
  if ([(UISHandleBackgroundURLSessionAction *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isSubclassOfClass:objc_opt_class()];
  }
}

@end