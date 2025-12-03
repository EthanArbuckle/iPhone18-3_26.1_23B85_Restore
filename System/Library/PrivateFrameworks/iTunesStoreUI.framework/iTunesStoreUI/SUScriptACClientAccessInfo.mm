@interface SUScriptACClientAccessInfo
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (NSDictionary)accessInfoDictionary;
- (SUScriptACClientAccessInfo)init;
- (SUScriptAppleAccountType)accountType;
- (id)scriptAttributeKeys;
- (id)valueForAccessKey:(id)key;
- (void)dealloc;
- (void)setAccountType:(id)type;
- (void)setValue:(id)value forAccessKey:(id)key;
@end

@implementation SUScriptACClientAccessInfo

- (SUScriptACClientAccessInfo)init
{
  v4.receiver = self;
  v4.super_class = SUScriptACClientAccessInfo;
  v2 = [(SUScriptObject *)&v4 init];
  if (v2)
  {
    v2->_dictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptACClientAccessInfo;
  [(SUScriptObject *)&v3 dealloc];
}

- (NSDictionary)accessInfoDictionary
{
  [(SUScriptObject *)self lock];
  v3 = [(NSMutableDictionary *)self->_dictionary copy];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (SUScriptAppleAccountType)accountType
{
  [(SUScriptObject *)self lock];
  v3 = self->_accountType;
  [(SUScriptObject *)self unlock];
  return v3;
}

- (void)setAccountType:(id)type
{
  [(SUScriptObject *)self lock];
  accountType = self->_accountType;
  if (accountType != type)
  {

    self->_accountType = type;
  }

  [(SUScriptObject *)self unlock];
}

- (void)setValue:(id)value forAccessKey:(id)key
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    valueCopy = value;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      globalContext = [(WebFrame *)[(SUScriptObject *)self webFrame] globalContext];

      valueCopy = [value copyArrayOrDictionaryWithContext:globalContext];
    }

    [(SUScriptObject *)self lock];
    [(NSMutableDictionary *)self->_dictionary setObject:valueCopy forKey:key];
    [(SUScriptObject *)self unlock];
  }

  else
  {
    v8 = MEMORY[0x1E69E2F88];

    [v8 throwException:@"Invalid argument"];
  }
}

- (id)valueForAccessKey:(id)key
{
  [(SUScriptObject *)self lock];
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:key];
  [(SUScriptObject *)self unlock];
  return v5;
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_70 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptACClientAccessInfo;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_52, 2);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptACClientAccessInfo;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptACClientAccessInfo;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_70 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_52 = sel_valueForAccessKey_;
    unk_1EBF3B7A0 = @"getAccessValue";
    qword_1EBF3B7A8 = sel_setValue_forAccessKey_;
    unk_1EBF3B7B0 = @"setAccessValue";
    __KeyMapping_70 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"ACCESS_KEY_FACEBOOK_APP_ID", @"accessKeyFacebookAppID", @"ACCESS_KEY_FACEBOOK_PERMISSIONS", @"accessKeyFacebookPermissions", @"ACCESS_KEY_PURPOSE_STATEMENT", @"accessKeyPurposeStatement", 0}];
  }
}

@end