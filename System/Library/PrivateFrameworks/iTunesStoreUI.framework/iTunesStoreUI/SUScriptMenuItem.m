@interface SUScriptMenuItem
+ (id)webScriptNameForKeyName:(id)a3;
+ (void)initialize;
- (BOOL)enabled;
- (NSString)title;
- (SUScriptMenuItem)init;
- (id)scriptAttributeKeys;
- (id)userInfo;
- (void)_sendDidChange;
- (void)dealloc;
- (void)setEnabled:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setUserInfo:(id)a3;
@end

@implementation SUScriptMenuItem

- (SUScriptMenuItem)init
{
  v3.receiver = self;
  v3.super_class = SUScriptMenuItem;
  result = [(SUScriptObject *)&v3 init];
  if (result)
  {
    result->_enabled = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptMenuItem;
  [(SUScriptObject *)&v3 dealloc];
}

- (BOOL)enabled
{
  [(SUScriptObject *)self lock];
  enabled = self->_enabled;
  [(SUScriptObject *)self unlock];
  return enabled;
}

- (void)setEnabled:(BOOL)a3
{
  [(SUScriptObject *)self lock];
  self->_enabled = a3;
  [(SUScriptObject *)self unlock];

  [(SUScriptMenuItem *)self _sendDidChange];
}

- (void)setTitle:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
LABEL_3:
    [(SUScriptObject *)self lock];
    title = self->_title;
    if (title != v5)
    {

      self->_title = v5;
    }

    [(SUScriptObject *)self unlock];

    [(SUScriptMenuItem *)self _sendDidChange];
    return;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!a3)
  {
    goto LABEL_3;
  }

  if (isKindOfClass)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  v5 = a3;
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  v8 = MEMORY[0x1E69E2F88];

  [v8 throwException:@"Invalid title"];
}

- (void)setUserInfo:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a3 = 0;
  }

  [(SUScriptObject *)self lock];
  userInfo = self->_userInfo;
  if (userInfo != a3)
  {

    self->_userInfo = a3;
  }

  [(SUScriptObject *)self unlock];
}

- (NSString)title
{
  [(SUScriptObject *)self lock];
  v3 = self->_title;
  [(SUScriptObject *)self unlock];
  return v3;
}

- (id)userInfo
{
  [(SUScriptObject *)self lock];
  v3 = self->_userInfo;
  [(SUScriptObject *)self unlock];
  return v3;
}

- (void)_sendDidChange
{
  v2 = [(SUScriptObject *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [v2 reload];
  }
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_9 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptMenuItem;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptMenuItem;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_9 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __KeyMapping_9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"enabled", @"title", @"title", @"userInfo", @"userInfo", 0}];
  }
}

@end