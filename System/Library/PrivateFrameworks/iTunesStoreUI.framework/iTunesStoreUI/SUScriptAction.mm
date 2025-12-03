@interface SUScriptAction
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (NSString)actionType;
- (SUScriptAction)initWithActionType:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)scriptAttributeKeys;
- (void)dealloc;
- (void)performAction;
- (void)setActionType:(id)type;
@end

@implementation SUScriptAction

- (SUScriptAction)initWithActionType:(id)type
{
  v6.receiver = self;
  v6.super_class = SUScriptAction;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_actionType = [type copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptAction;
  [(SUScriptObject *)&v3 dealloc];
}

- (void)performAction
{
  actionType = [(SUScriptAction *)self actionType];
  IsCurrent = WebThreadIsCurrent();
  if (IsCurrent)
  {
    v5 = &__block_literal_global_14;
  }

  else
  {
    v5 = &__block_literal_global_4;
  }

  if ([(NSString *)actionType isEqualToString:@"SUScriptActionTypeReturnToLibrary"])
  {
    if (IsCurrent)
    {
      v6 = &__block_literal_global_14;
    }

    else
    {
      v6 = &__block_literal_global_4;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __31__SUScriptAction_performAction__block_invoke_3;
    v11[3] = &unk_1E8164348;
    v11[4] = self;
    v6[2](v5, v11);
  }

  else if ([(NSString *)actionType isEqualToString:@"SUScriptActionTypeDismissWindows"])
  {
    if (IsCurrent)
    {
      v7 = &__block_literal_global_14;
    }

    else
    {
      v7 = &__block_literal_global_4;
    }

    v8 = v7[2];

    v8(v5, &__block_literal_global_7);
  }

  else if ([(NSString *)actionType isEqualToString:@"SUScriptActionTypeDismissSheet"])
  {
    if (IsCurrent)
    {
      v9 = &__block_literal_global_14;
    }

    else
    {
      v9 = &__block_literal_global_4;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __31__SUScriptAction_performAction__block_invoke_5;
    v10[3] = &unk_1E8164348;
    v10[4] = self;
    v9[2](v5, v10);
  }
}

uint64_t __31__SUScriptAction_performAction__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) clientInterface];

  return [v1 _returnToLibrary];
}

uint64_t __31__SUScriptAction_performAction__block_invoke_4()
{
  v0 = [+[SUClientDispatch tabBarController](SUClientDispatch "tabBarController")];

  return [v0 dismissAnimated:1];
}

uint64_t __31__SUScriptAction_performAction__block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) parentViewController];

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

- (NSString)actionType
{
  [(SUScriptObject *)self lock];
  v3 = self->_actionType;
  [(SUScriptObject *)self unlock];
  return v3;
}

- (void)setActionType:(id)type
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    type = 0;
  }

  [(SUScriptObject *)self lock];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    actionType = self->_actionType;
    if (actionType != type)
    {

      self->_actionType = [type copy];
    }
  }

  [(SUScriptObject *)self unlock];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(SUScriptObject *)self lock];
  v5[9] = [(NSString *)self->_actionType copyWithZone:zone];
  [(SUScriptObject *)self unlock];
  return v5;
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_57 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptAction;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_42, 1);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptAction;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptAction;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_57 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_42 = sel_performAction;
    *algn_1EBF3B528 = @"performAction";
    __KeyMapping_57 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"actionType", 0}];
  }
}

@end