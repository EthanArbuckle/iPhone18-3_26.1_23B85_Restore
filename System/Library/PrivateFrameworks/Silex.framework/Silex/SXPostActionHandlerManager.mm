@interface SXPostActionHandlerManager
- (SXPostActionHandlerManager)init;
- (void)addPostActionHandler:(id)handler forActionType:(id)type;
- (void)handledAction:(id)action state:(unint64_t)state;
- (void)removePostActionHandler:(id)handler forActionType:(id)type;
@end

@implementation SXPostActionHandlerManager

- (SXPostActionHandlerManager)init
{
  v6.receiver = self;
  v6.super_class = SXPostActionHandlerManager;
  v2 = [(SXPostActionHandlerManager *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    postActionHandlers = v2->_postActionHandlers;
    v2->_postActionHandlers = dictionary;
  }

  return v2;
}

- (void)addPostActionHandler:(id)handler forActionType:(id)type
{
  handlerCopy = handler;
  typeCopy = type;
  postActionHandlers = [(SXPostActionHandlerManager *)self postActionHandlers];
  v8 = [postActionHandlers objectForKey:typeCopy];

  if (!v8)
  {
    postActionHandlers2 = [(SXPostActionHandlerManager *)self postActionHandlers];
    v10 = [MEMORY[0x1E695DFA8] set];
    [postActionHandlers2 setObject:v10 forKey:typeCopy];

    postActionHandlers3 = [(SXPostActionHandlerManager *)self postActionHandlers];
    v8 = [postActionHandlers3 objectForKey:typeCopy];
  }

  [v8 addObject:handlerCopy];
}

- (void)removePostActionHandler:(id)handler forActionType:(id)type
{
  typeCopy = type;
  handlerCopy = handler;
  postActionHandlers = [(SXPostActionHandlerManager *)self postActionHandlers];
  v8 = [postActionHandlers objectForKey:typeCopy];

  [v8 removeObject:handlerCopy];
  if (![v8 count])
  {
    postActionHandlers2 = [(SXPostActionHandlerManager *)self postActionHandlers];
    [postActionHandlers2 removeObjectForKey:typeCopy];
  }
}

- (void)handledAction:(id)action state:(unint64_t)state
{
  actionCopy = action;
  postActionHandlers = [(SXPostActionHandlerManager *)self postActionHandlers];
  type = [actionCopy type];
  v9 = [postActionHandlers objectForKey:type];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__SXPostActionHandlerManager_handledAction_state___block_invoke;
  v11[3] = &unk_1E8501F00;
  v12 = actionCopy;
  stateCopy = state;
  v10 = actionCopy;
  [v9 enumerateObjectsUsingBlock:v11];
}

@end