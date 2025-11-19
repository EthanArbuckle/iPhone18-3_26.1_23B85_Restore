@interface UISOpenURLAction
- (BOOL)isKindOfClass:(Class)a3;
- (BSProcessHandle)workspaceOriginatingProcess;
- (NSURL)url;
- (UISOpenURLAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
- (UISOpenURLAction)initWithURL:(id)a3 workspaceOriginatingProcess:(id)a4 responder:(id)a5;
- (id)keyDescriptionForSetting:(unint64_t)a3;
@end

@implementation UISOpenURLAction

- (NSURL)url
{
  v2 = [(UISOpenURLAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = v3;

  return v3;
}

- (BSProcessHandle)workspaceOriginatingProcess
{
  v2 = [(UISOpenURLAction *)self info];
  v3 = [v2 objectForSetting:2];

  return v3;
}

- (UISOpenURLAction)initWithURL:(id)a3 workspaceOriginatingProcess:(id)a4 responder:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"UISOpenURLAction.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v12 = objc_alloc_init(MEMORY[0x1E698E700]);
  v13 = [v9 copy];
  [v12 setObject:v13 forSetting:1];

  [v12 setObject:v10 forSetting:2];
  v17.receiver = self;
  v17.super_class = UISOpenURLAction;
  v14 = [(UISOpenURLAction *)&v17 initWithInfo:v12 responder:v11];

  return v14;
}

- (UISOpenURLAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 objectForSetting:1];
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

  v13 = [v7 objectForSetting:2];

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

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"url";
  }

  else
  {
    return 0;
  }
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = UISOpenURLAction;
  if ([(UISOpenURLAction *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isSubclassOfClass:objc_opt_class()];
  }
}

@end