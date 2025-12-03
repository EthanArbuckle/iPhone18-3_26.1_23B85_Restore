@interface SUScriptFacebookFriend
+ (id)webScriptNameForKeyName:(id)name;
+ (void)initialize;
- (NSString)identifier;
- (NSString)name;
- (SUScriptFacebookFriend)initWithFriendDictionary:(id)dictionary;
- (SUScriptFacebookFriend)initWithName:(id)name;
- (id)scriptAttributeKeys;
- (void)dealloc;
@end

@implementation SUScriptFacebookFriend

- (SUScriptFacebookFriend)initWithFriendDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = SUScriptFacebookFriend;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_dictionary = [dictionary copy];
  }

  return v4;
}

- (SUScriptFacebookFriend)initWithName:(id)name
{
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{name, @"name", 0}];
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

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_77 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptFacebookFriend;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptFacebookFriend;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_77 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __KeyMapping_77 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"identifier", @"name", @"name", 0}];
  }
}

@end