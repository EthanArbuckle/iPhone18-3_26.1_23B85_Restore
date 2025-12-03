@interface TTRUndoManager
+ (void)withActionName:(id)name block:(id)block;
- (NSString)debug_redoStackDescription;
- (NSString)debug_undoStackDescription;
- (TTRUndoManager)initWithDebugIdentifier:(id)identifier;
- (id)description;
- (void)_prepareToRegisterUndo;
- (void)_registerLogUserAction:(id)action;
- (void)registerUndoWithTarget:(id)target handler:(id)handler;
- (void)registerUndoWithTarget:(id)target selector:(SEL)selector object:(id)object;
- (void)removeAllActions;
@end

@implementation TTRUndoManager

- (TTRUndoManager)initWithDebugIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = TTRUndoManager;
  v5 = [(TTRUndoManager *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    debugIdentifier = v5->_debugIdentifier;
    v5->_debugIdentifier = v6;
  }

  return v5;
}

+ (void)withActionName:(id)name block:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v6 = perThreadActionContext();
  v7 = *v6;
  v8 = objc_alloc_init(TTRUndoManagerActionContext);
  *v6 = v8;
  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

  *v6 = v7;
  undoManagerOfLastRegisteredUndo = [(TTRUndoManagerActionContext *)v8 undoManagerOfLastRegisteredUndo];
  v10 = undoManagerOfLastRegisteredUndo;
  if (undoManagerOfLastRegisteredUndo)
  {
    [undoManagerOfLastRegisteredUndo _registerLogUserAction:nameCopy];
    [v10 setActionName:nameCopy];
  }
}

- (void)registerUndoWithTarget:(id)target selector:(SEL)selector object:(id)object
{
  targetCopy = target;
  objectCopy = object;
  if ([(TTRUndoManager *)self isUndoRegistrationEnabled])
  {
    [(TTRUndoManager *)self _prepareToRegisterUndo];
    v10.receiver = self;
    v10.super_class = TTRUndoManager;
    [(TTRUndoManager *)&v10 registerUndoWithTarget:targetCopy selector:selector object:objectCopy];
  }
}

- (void)registerUndoWithTarget:(id)target handler:(id)handler
{
  targetCopy = target;
  handlerCopy = handler;
  if ([(TTRUndoManager *)self isUndoRegistrationEnabled])
  {
    [(TTRUndoManager *)self _prepareToRegisterUndo];
    v8.receiver = self;
    v8.super_class = TTRUndoManager;
    [(TTRUndoManager *)&v8 registerUndoWithTarget:targetCopy handler:handlerCopy];
  }
}

- (void)removeAllActions
{
  if (![(TTRUndoManager *)self disableRemoveAllActions])
  {
    v4.receiver = self;
    v4.super_class = TTRUndoManager;
    [(TTRUndoManager *)&v4 removeAllActions];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"TTRUndoManagerDidRemoveAllActionsNotification" object:self];
  }
}

- (void)_prepareToRegisterUndo
{
  v4 = *perThreadActionContext();
  if (v4)
  {
    [v4 setUndoManagerOfLastRegisteredUndo:self];
  }

  if (![(TTRUndoManager *)self shouldSuppressWillRegisterUndoNotifications])
  {
    [(TTRUndoManager *)self setShouldSuppressWillRegisterUndoNotifications:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"TTRUndoManagerWillRegisterUndoNotification" object:self];

    [(TTRUndoManager *)self setShouldSuppressWillRegisterUndoNotifications:0];
  }
}

- (void)_registerLogUserAction:(id)action
{
  actionCopy = action;
  if (_registerLogUserAction__onceToken != -1)
  {
    [TTRUndoManager _registerLogUserAction:];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__TTRUndoManager__registerLogUserAction___block_invoke_2;
  v6[3] = &unk_27832D628;
  v7 = actionCopy;
  v5 = actionCopy;
  [(TTRUndoManager *)self registerUndoWithTarget:self handler:v6];
}

void __41__TTRUndoManager__registerLogUserAction___block_invoke()
{
  v0 = os_log_create("com.apple.reminderkit", "userAction");
  v1 = _registerLogUserAction__logObject;
  _registerLogUserAction__logObject = v0;
}

void __41__TTRUndoManager__registerLogUserAction___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isUndoing])
  {
    v4 = _registerLogUserAction__logObject;
    if (os_log_type_enabled(_registerLogUserAction__logObject, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *v8 = 138412290;
      *&v8[4] = v5;
      v6 = "Undo %@";
LABEL_7:
      _os_log_impl(&dword_21D0C9000, v4, OS_LOG_TYPE_INFO, v6, v8, 0xCu);
    }
  }

  else if ([v3 isRedoing])
  {
    v4 = _registerLogUserAction__logObject;
    if (os_log_type_enabled(_registerLogUserAction__logObject, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *v8 = 138412290;
      *&v8[4] = v7;
      v6 = "Redo %@";
      goto LABEL_7;
    }
  }

  [v3 _registerLogUserAction:{*(a1 + 32), *v8}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  debugIdentifier = [(TTRUndoManager *)self debugIdentifier];
  v6 = [v3 stringWithFormat:@"<%@ %p: debugIdentifier=%@>", v4, self, debugIdentifier];

  return v6;
}

- (NSString)debug_undoStackDescription
{
  v2 = [(TTRUndoManager *)self valueForKey:@"_undoStack"];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 count];
  v5 = [v2 description];
  v6 = [v3 stringWithFormat:@"(%lu entries) %@", v4, v5];

  return v6;
}

- (NSString)debug_redoStackDescription
{
  v2 = [(TTRUndoManager *)self valueForKey:@"_redoStack"];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 count];
  v5 = [v2 description];
  v6 = [v3 stringWithFormat:@"(%lu entries) %@", v4, v5];

  return v6;
}

@end