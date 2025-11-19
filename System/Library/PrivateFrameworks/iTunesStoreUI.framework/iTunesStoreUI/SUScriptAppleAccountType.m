@interface SUScriptAppleAccountType
+ (id)webScriptNameForKeyName:(id)a3;
+ (void)initialize;
- (SUScriptAppleAccountType)initWithACAccountType:(id)a3;
- (id)accessGranted;
- (id)scriptAttributeKeys;
- (void)dealloc;
@end

@implementation SUScriptAppleAccountType

- (SUScriptAppleAccountType)initWithACAccountType:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUScriptAppleAccountType;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_accountType = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptAppleAccountType;
  [(SUScriptObject *)&v3 dealloc];
}

- (id)accessGranted
{
  v2 = [(ACAccountType *)self->_accountType accessGranted];
  v3 = MEMORY[0x1E695E4D0];
  if (!v2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_67 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptAppleAccountType;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptAppleAccountType;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_67 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __KeyMapping_67 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"accessGranted", @"accountTypeDescription", @"accountTypeDescription", @"identifier", @"identifier", 0}];
  }
}

@end