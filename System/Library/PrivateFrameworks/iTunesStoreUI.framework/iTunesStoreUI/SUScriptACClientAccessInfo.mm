@interface SUScriptACClientAccessInfo
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (NSDictionary)accessInfoDictionary;
- (SUScriptACClientAccessInfo)init;
- (SUScriptAppleAccountType)accountType;
- (id)scriptAttributeKeys;
- (id)valueForAccessKey:(id)a3;
- (void)dealloc;
- (void)setAccountType:(id)a3;
- (void)setValue:(id)a3 forAccessKey:(id)a4;
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

- (void)setAccountType:(id)a3
{
  [(SUScriptObject *)self lock];
  accountType = self->_accountType;
  if (accountType != a3)
  {

    self->_accountType = a3;
  }

  [(SUScriptObject *)self unlock];
}

- (void)setValue:(id)a3 forAccessKey:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = a3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(WebFrame *)[(SUScriptObject *)self webFrame] globalContext];

      v9 = [a3 copyArrayOrDictionaryWithContext:v7];
    }

    [(SUScriptObject *)self lock];
    [(NSMutableDictionary *)self->_dictionary setObject:v9 forKey:a4];
    [(SUScriptObject *)self unlock];
  }

  else
  {
    v8 = MEMORY[0x1E69E2F88];

    [v8 throwException:@"Invalid argument"];
  }
}

- (id)valueForAccessKey:(id)a3
{
  [(SUScriptObject *)self lock];
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:a3];
  [(SUScriptObject *)self unlock];
  return v5;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_70 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptACClientAccessInfo;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_52, 2);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptACClientAccessInfo;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptACClientAccessInfo;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_70 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_52 = sel_valueForAccessKey_;
    unk_1EBF3B7A0 = @"getAccessValue";
    qword_1EBF3B7A8 = sel_setValue_forAccessKey_;
    unk_1EBF3B7B0 = @"setAccessValue";
    __KeyMapping_70 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"ACCESS_KEY_FACEBOOK_APP_ID", @"accessKeyFacebookAppID", @"ACCESS_KEY_FACEBOOK_PERMISSIONS", @"accessKeyFacebookPermissions", @"ACCESS_KEY_PURPOSE_STATEMENT", @"accessKeyPurposeStatement", 0}];
  }
}

@end