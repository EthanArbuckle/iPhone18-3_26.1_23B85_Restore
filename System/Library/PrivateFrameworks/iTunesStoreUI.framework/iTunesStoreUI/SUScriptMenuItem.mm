@interface SUScriptMenuItem
+ (id)webScriptNameForKeyName:(id)name;
+ (void)initialize;
- (BOOL)enabled;
- (NSString)title;
- (SUScriptMenuItem)init;
- (id)scriptAttributeKeys;
- (id)userInfo;
- (void)_sendDidChange;
- (void)dealloc;
- (void)setEnabled:(BOOL)enabled;
- (void)setTitle:(id)title;
- (void)setUserInfo:(id)info;
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

- (void)setEnabled:(BOOL)enabled
{
  [(SUScriptObject *)self lock];
  self->_enabled = enabled;
  [(SUScriptObject *)self unlock];

  [(SUScriptMenuItem *)self _sendDidChange];
}

- (void)setTitle:(id)title
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    titleCopy = 0;
LABEL_3:
    [(SUScriptObject *)self lock];
    title = self->_title;
    if (title != titleCopy)
    {

      self->_title = titleCopy;
    }

    [(SUScriptObject *)self unlock];

    [(SUScriptMenuItem *)self _sendDidChange];
    return;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  titleCopy = 0;
  if (!title)
  {
    goto LABEL_3;
  }

  if (isKindOfClass)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  titleCopy = title;
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  v8 = MEMORY[0x1E69E2F88];

  [v8 throwException:@"Invalid title"];
}

- (void)setUserInfo:(id)info
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    info = 0;
  }

  [(SUScriptObject *)self lock];
  userInfo = self->_userInfo;
  if (userInfo != info)
  {

    self->_userInfo = info;
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
  parentViewController = [(SUScriptObject *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [parentViewController reload];
  }
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_9 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptMenuItem;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptMenuItem;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_9 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __KeyMapping_9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"enabled", @"title", @"title", @"userInfo", @"userInfo", 0}];
  }
}

@end