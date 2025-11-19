@interface SUScriptPassbookPass
+ (id)webScriptNameForKeyName:(id)a3;
+ (void)initialize;
- (NSString)passURL;
- (SUScriptPassbookPass)initWithPass:(id)a3;
- (id)scriptAttributeKeys;
- (void)dealloc;
@end

@implementation SUScriptPassbookPass

- (SUScriptPassbookPass)initWithPass:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUScriptPassbookPass;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_pass = a3;
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
  v2 = [(PKPass *)self->_pass passURL];

  return [(NSURL *)v2 absoluteString];
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_45 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptPassbookPass;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptPassbookPass;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_45 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __KeyMapping_45 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"passTypeIdentifier", @"passURL", @"passURL", @"serialNumber", @"serialNumber", 0}];
  }
}

@end