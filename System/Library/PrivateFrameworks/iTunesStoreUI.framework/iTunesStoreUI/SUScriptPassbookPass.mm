@interface SUScriptPassbookPass
+ (id)webScriptNameForKeyName:(id)name;
+ (void)initialize;
- (NSString)passURL;
- (SUScriptPassbookPass)initWithPass:(id)pass;
- (id)scriptAttributeKeys;
- (void)dealloc;
@end

@implementation SUScriptPassbookPass

- (SUScriptPassbookPass)initWithPass:(id)pass
{
  v6.receiver = self;
  v6.super_class = SUScriptPassbookPass;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_pass = pass;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptPassbookPass;
  [(SUScriptObject *)&v3 dealloc];
}

- (NSString)passURL
{
  passURL = [(PKPass *)self->_pass passURL];

  return [(NSURL *)passURL absoluteString];
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_45 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptPassbookPass;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptPassbookPass;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_45 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __KeyMapping_45 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"passTypeIdentifier", @"passURL", @"passURL", @"serialNumber", @"serialNumber", 0}];
  }
}

@end