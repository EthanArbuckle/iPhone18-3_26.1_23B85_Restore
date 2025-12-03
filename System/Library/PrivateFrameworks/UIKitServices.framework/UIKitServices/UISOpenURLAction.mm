@interface UISOpenURLAction
- (BOOL)isKindOfClass:(Class)class;
- (BSProcessHandle)workspaceOriginatingProcess;
- (NSURL)url;
- (UISOpenURLAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (UISOpenURLAction)initWithURL:(id)l workspaceOriginatingProcess:(id)process responder:(id)responder;
- (id)keyDescriptionForSetting:(unint64_t)setting;
@end

@implementation UISOpenURLAction

- (NSURL)url
{
  info = [(UISOpenURLAction *)self info];
  v3 = [info objectForSetting:1];
  v4 = v3;

  return v3;
}

- (BSProcessHandle)workspaceOriginatingProcess
{
  info = [(UISOpenURLAction *)self info];
  v3 = [info objectForSetting:2];

  return v3;
}

- (UISOpenURLAction)initWithURL:(id)l workspaceOriginatingProcess:(id)process responder:(id)responder
{
  lCopy = l;
  processCopy = process;
  responderCopy = responder;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISOpenURLAction.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v12 = objc_alloc_init(MEMORY[0x1E698E700]);
  v13 = [lCopy copy];
  [v12 setObject:v13 forSetting:1];

  [v12 setObject:processCopy forSetting:2];
  v17.receiver = self;
  v17.super_class = UISOpenURLAction;
  v14 = [(UISOpenURLAction *)&v17 initWithInfo:v12 responder:responderCopy];

  return v14;
}

- (UISOpenURLAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v8 = [infoCopy objectForSetting:1];
  if (NSClassFromString(&cfstr_Nsurl.isa))
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = v10;
  if (v8 && !v10)
  {
    v12 = BSLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136446466;
      v21 = "[info objectForSetting:1]";
      v22 = 2082;
      v23 = "NSURL";
      _os_log_impl(&dword_195FF3000, v12, OS_LOG_TYPE_DEFAULT, "BSSafeCast: %{public}s was not of expected class %{public}s", &v20, 0x16u);
    }
  }

  v13 = [infoCopy objectForSetting:2];

  if (NSClassFromString(&cfstr_Bsprocesshandl.isa))
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = v15;
  if (v13 && !v15)
  {
    v17 = BSLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136446466;
      v21 = "[info objectForSetting:2]";
      v22 = 2082;
      v23 = "BSProcessHandle";
      _os_log_impl(&dword_195FF3000, v17, OS_LOG_TYPE_DEFAULT, "BSSafeCast: %{public}s was not of expected class %{public}s", &v20, 0x16u);
    }
  }

  v18 = [(UISOpenURLAction *)self initWithURL:v11 workspaceOriginatingProcess:v16];
  return v18;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"url";
  }

  else
  {
    return 0;
  }
}

- (BOOL)isKindOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = UISOpenURLAction;
  if ([(UISOpenURLAction *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)class isSubclassOfClass:objc_opt_class()];
  }
}

@end