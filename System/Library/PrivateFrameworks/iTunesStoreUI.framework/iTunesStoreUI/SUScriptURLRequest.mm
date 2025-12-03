@interface SUScriptURLRequest
+ (id)webScriptNameForKeyName:(id)name;
+ (void)initialize;
- (NSNumber)timeoutInterval;
- (NSString)URLBagKey;
- (SUScriptURLRequest)initWithNativeRequestProperties:(id)properties;
- (id)URLs;
- (id)copyNativeRequestProperties;
- (id)scriptAttributeKeys;
- (void)dealloc;
- (void)setTimeoutInterval:(id)interval;
- (void)setURLBagKey:(id)key;
- (void)setURLs:(id)ls;
@end

@implementation SUScriptURLRequest

- (SUScriptURLRequest)initWithNativeRequestProperties:(id)properties
{
  v7.receiver = self;
  v7.super_class = SUScriptURLRequest;
  v4 = [(SUScriptObject *)&v7 init];
  if (v4)
  {
    if (properties)
    {
      v5 = [properties mutableCopy];
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E69D4970]);
    }

    v4->_requestProperties = v5;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptURLRequest;
  [(SUScriptObject *)&v3 dealloc];
}

- (id)copyNativeRequestProperties
{
  [(SUScriptObject *)self lock];
  v3 = [(SSMutableURLRequestProperties *)self->_requestProperties copy];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (void)setTimeoutInterval:(id)interval
{
  if (objc_opt_respondsToSelector())
  {
    [(SUScriptObject *)self lock];
    requestProperties = self->_requestProperties;
    [interval doubleValue];
    [(SSMutableURLRequestProperties *)requestProperties setTimeoutInterval:?];

    [(SUScriptObject *)self unlock];
  }

  else
  {
    v6 = MEMORY[0x1E69E2F88];

    [v6 throwException:@"Invalid argument"];
  }
}

- (void)setURLBagKey:(id)key
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!key || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = key, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    [(SUScriptObject *)self lock];
    [(SSMutableURLRequestProperties *)self->_requestProperties setURLBagKey:v5];

    [(SUScriptObject *)self unlock];
    return;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (void)setURLs:(id)ls
{
  v19 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = 0;
    if (ls && (isKindOfClass & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{ls, 0}];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
          v5 = 0;
          goto LABEL_13;
        }

        v5 = [ls copyArrayValueWithValidator:SUURLValidator context:0];
        if (!v5)
        {
          [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
          goto LABEL_13;
        }
      }
    }
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:*(*(&v14 + 1) + 8 * i)];
        if (v11)
        {
          v12 = v11;
          [v6 addObject:v11];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(SUScriptObject *)self lock];
  [(SSMutableURLRequestProperties *)self->_requestProperties setURLs:v6];
  [(SUScriptObject *)self unlock];

LABEL_13:
}

- (NSNumber)timeoutInterval
{
  [(SUScriptObject *)self lock];
  v3 = MEMORY[0x1E696AD98];
  [(SSMutableURLRequestProperties *)self->_requestProperties timeoutInterval];
  v4 = [v3 numberWithDouble:?];
  [(SUScriptObject *)self unlock];
  return v4;
}

- (NSString)URLBagKey
{
  [(SUScriptObject *)self lock];
  uRLBagKey = [(SSMutableURLRequestProperties *)self->_requestProperties URLBagKey];
  [(SUScriptObject *)self unlock];
  return uRLBagKey;
}

- (id)URLs
{
  [(SUScriptObject *)self lock];
  uRLs = [(SSMutableURLRequestProperties *)self->_requestProperties URLs];
  [(SUScriptObject *)self unlock];
  return uRLs;
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_48 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptURLRequest;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptURLRequest;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_48 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __KeyMapping_48 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"timeoutInterval", @"URLBagKey", @"URLBagKey", @"urls", @"URLs", 0}];
  }
}

@end