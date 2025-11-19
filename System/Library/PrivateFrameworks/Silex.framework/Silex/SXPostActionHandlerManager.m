@interface SXPostActionHandlerManager
- (SXPostActionHandlerManager)init;
- (void)addPostActionHandler:(id)a3 forActionType:(id)a4;
- (void)handledAction:(id)a3 state:(unint64_t)a4;
- (void)removePostActionHandler:(id)a3 forActionType:(id)a4;
@end

@implementation SXPostActionHandlerManager

- (SXPostActionHandlerManager)init
{
  v6.receiver = self;
  v6.super_class = SXPostActionHandlerManager;
  v2 = [(SXPostActionHandlerManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    postActionHandlers = v2->_postActionHandlers;
    v2->_postActionHandlers = v3;
  }

  return v2;
}

- (void)addPostActionHandler:(id)a3 forActionType:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(SXPostActionHandlerManager *)self postActionHandlers];
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    v9 = [(SXPostActionHandlerManager *)self postActionHandlers];
    v10 = [MEMORY[0x1E695DFA8] set];
    [v9 setObject:v10 forKey:v6];

    v11 = [(SXPostActionHandlerManager *)self postActionHandlers];
    v8 = [v11 objectForKey:v6];
  }

  [v8 addObject:v12];
}

- (void)removePostActionHandler:(id)a3 forActionType:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(SXPostActionHandlerManager *)self postActionHandlers];
  v8 = [v7 objectForKey:v10];

  [v8 removeObject:v6];
  if (![v8 count])
  {
    v9 = [(SXPostActionHandlerManager *)self postActionHandlers];
    [v9 removeObjectForKey:v10];
  }
}

- (void)handledAction:(id)a3 state:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SXPostActionHandlerManager *)self postActionHandlers];
  v8 = [v6 type];
  v9 = [v7 objectForKey:v8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__SXPostActionHandlerManager_handledAction_state___block_invoke;
  v11[3] = &unk_1E8501F00;
  v12 = v6;
  v13 = a4;
  v10 = v6;
  [v9 enumerateObjectsUsingBlock:v11];
}

@end