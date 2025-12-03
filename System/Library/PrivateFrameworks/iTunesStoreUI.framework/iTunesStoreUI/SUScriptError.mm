@interface SUScriptError
+ (id)webScriptNameForKeyName:(id)name;
+ (void)initialize;
- (SUScriptError)initWithError:(id)error;
- (id)scriptAttributeKeys;
- (void)dealloc;
@end

@implementation SUScriptError

- (SUScriptError)initWithError:(id)error
{
  v6.receiver = self;
  v6.super_class = SUScriptError;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_error = [error copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptError;
  [(SUScriptObject *)&v3 dealloc];
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_63 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptError;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptError;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_63 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __KeyMapping_63 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"code", @"domain", @"domain", @"localizedDescription", @"localizedDescription", @"localizedFailureReason", @"localizedFailureReason", @"localizedRecoverySuggestion", @"localizedRecoverySuggestion", 0}];
  }
}

@end