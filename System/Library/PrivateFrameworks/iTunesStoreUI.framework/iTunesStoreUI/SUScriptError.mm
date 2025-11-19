@interface SUScriptError
+ (id)webScriptNameForKeyName:(id)a3;
+ (void)initialize;
- (SUScriptError)initWithError:(id)a3;
- (id)scriptAttributeKeys;
- (void)dealloc;
@end

@implementation SUScriptError

- (SUScriptError)initWithError:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUScriptError;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_error = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptError;
  [(SUScriptObject *)&v3 dealloc];
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_63 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptError;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptError;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_63 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __KeyMapping_63 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"code", @"domain", @"domain", @"localizedDescription", @"localizedDescription", @"localizedFailureReason", @"localizedFailureReason", @"localizedRecoverySuggestion", @"localizedRecoverySuggestion", 0}];
  }
}

@end