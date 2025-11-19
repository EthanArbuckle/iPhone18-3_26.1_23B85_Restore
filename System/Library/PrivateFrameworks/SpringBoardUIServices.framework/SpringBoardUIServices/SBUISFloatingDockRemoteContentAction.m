@interface SBUISFloatingDockRemoteContentAction
- (SBUISFloatingDockFileStackActionContext)actionContext;
- (SBUISFloatingDockRemoteContentAction)initWithContext:(id)a3 handler:(id)a4;
@end

@implementation SBUISFloatingDockRemoteContentAction

- (SBUISFloatingDockRemoteContentAction)initWithContext:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    [SBUISFloatingDockRemoteContentAction initWithContext:a2 handler:self];
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    [SBUISFloatingDockRemoteContentAction initWithContext:a2 handler:self];
    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v10 setObject:v7 forSetting:1];
  v11 = MEMORY[0x1E698E5F8];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__SBUISFloatingDockRemoteContentAction_initWithContext_handler___block_invoke;
  v17[3] = &unk_1E789E448;
  v18 = v9;
  v12 = v9;
  v13 = [v11 responderWithHandler:v17];
  v16.receiver = self;
  v16.super_class = SBUISFloatingDockRemoteContentAction;
  v14 = [(SBUISFloatingDockRemoteContentAction *)&v16 initWithInfo:v10 responder:v13];

  return v14;
}

void __64__SBUISFloatingDockRemoteContentAction_initWithContext_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  (*(*(a1 + 32) + 16))();
}

- (SBUISFloatingDockFileStackActionContext)actionContext
{
  v2 = [(SBUISFloatingDockRemoteContentAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;

  return v4;
}

- (void)initWithContext:(uint64_t)a1 handler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUISFloatingDockRemoteContentAction.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"context"}];
}

- (void)initWithContext:(uint64_t)a1 handler:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUISFloatingDockRemoteContentAction.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
}

@end