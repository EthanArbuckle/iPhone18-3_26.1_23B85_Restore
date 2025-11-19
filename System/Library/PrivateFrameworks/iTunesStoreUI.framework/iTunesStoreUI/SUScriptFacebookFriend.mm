@interface SUScriptFacebookFriend
+ (id)webScriptNameForKeyName:(id)a3;
+ (void)initialize;
- (NSString)identifier;
- (NSString)name;
- (SUScriptFacebookFriend)initWithFriendDictionary:(id)a3;
- (SUScriptFacebookFriend)initWithName:(id)a3;
- (id)scriptAttributeKeys;
- (void)dealloc;
@end

@implementation SUScriptFacebookFriend

- (SUScriptFacebookFriend)initWithFriendDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUScriptFacebookFriend;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_dictionary = [a3 copy];
  }

  return v4;
}

- (SUScriptFacebookFriend)initWithName:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{a3, @"name", 0}];
  v5 = [(SUScriptFacebookFriend *)self initWithFriendDictionary:v4];

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptFacebookFriend;
  [(SUScriptObject *)&v3 dealloc];
}

- (NSString)identifier
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"id"];

  return v2;
}

- (NSString)name
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"name"];

  return v2;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_77 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptFacebookFriend;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptFacebookFriend;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_77 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __KeyMapping_77 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"identifier", @"name", @"name", 0}];
  }
}

@end