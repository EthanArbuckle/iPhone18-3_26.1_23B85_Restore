@interface SUScriptLookupRequest
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (NSString)keyProfile;
- (SUScriptLookupRequest)init;
- (id)authenticatesIfNeeded;
- (id)scriptAttributeKeys;
- (id)valueForRequestParameter:(id)parameter;
- (int64_t)localizationStyle;
- (void)dealloc;
- (void)setAuthenticatesIfNeeded:(id)needed;
- (void)setKeyProfile:(id)profile;
- (void)setLocalizationStyle:(int64_t)style;
- (void)setValue:(id)value forRequestParameter:(id)parameter;
- (void)startWithLookupFunction:(id)function;
@end

@implementation SUScriptLookupRequest

- (SUScriptLookupRequest)init
{
  v4.receiver = self;
  v4.super_class = SUScriptLookupRequest;
  v2 = [(SUScriptObject *)&v4 init];
  if (v2)
  {
    v2->_request = objc_alloc_init(MEMORY[0x1E69D4948]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptLookupRequest;
  [(SUScriptObject *)&v3 dealloc];
}

- (void)setValue:(id)value forRequestParameter:(id)parameter
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    value = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x1E69E2F88];
LABEL_11:

    [v9 throwException:@"Invalid argument"];
    return;
  }

  if (!value)
  {
    [(SUScriptObject *)self lock];
    request = self->_request;
    valueCopy = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = MEMORY[0x1E69E2F88];
      goto LABEL_11;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptObject *)self lock];
    request = self->_request;
    valueCopy = value;
LABEL_15:
    [(SSLookupRequest *)request setValue:valueCopy forRequestParameter:parameter];

    [(SUScriptObject *)self unlock];
    return;
  }

  globalContext = [(WebFrame *)[(SUScriptObject *)self webFrame] globalContext];
  if (globalContext)
  {
    v11 = [value copyArrayOrDictionaryWithContext:globalContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUScriptObject *)self lock];
      [(SSLookupRequest *)self->_request setValue:v11 forRequestParameter:parameter];
      [(SUScriptObject *)self unlock];
    }

    else
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    }
  }
}

- (void)startWithLookupFunction:(id)function
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    functionCopy = 0;
LABEL_3:
    v6 = [[SUScriptFunction alloc] initWithScriptObject:functionCopy];
    [(SUScriptFunction *)v6 setThisObject:self];
    request = self->_request;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__SUScriptLookupRequest_startWithLookupFunction___block_invoke;
    v10[3] = &unk_1E8167188;
    v10[4] = v6;
    [(SSLookupRequest *)request startWithLookupBlock:v10];

    return;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  functionCopy = 0;
  if (!function)
  {
    goto LABEL_3;
  }

  if (isKindOfClass)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  functionCopy = function;
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  v9 = MEMORY[0x1E69E2F88];

  [v9 throwException:@"Invalid argument"];
}

void __49__SUScriptLookupRequest_startWithLookupFunction___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v8 = [[SUScriptError alloc] initWithError:a3];
  }

  else
  {
    v8 = 0;
  }

  v5 = [a2 responseDictionary];
  if (!v5 || (v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:0 error:0]) == 0 || (v7 = objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithData:encoding:", v6, 4)) == 0)
  {
    v7 = [MEMORY[0x1E69E2FB0] undefined];
  }

  [*(a1 + 32) callWithArguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", v7, v8, 0)}];
  [*(a1 + 32) setThisObject:0];
}

- (id)valueForRequestParameter:(id)parameter
{
  [(SUScriptObject *)self lock];
  v5 = [(SSLookupRequest *)self->_request valueForRequestParameter:parameter];
  [(SUScriptObject *)self unlock];
  return v5;
}

- (id)authenticatesIfNeeded
{
  [(SUScriptObject *)self lock];
  personalizationStyle = [(SSLookupRequest *)self->_request personalizationStyle];
  [(SUScriptObject *)self unlock];
  v4 = MEMORY[0x1E695E4D0];
  if (personalizationStyle != 1)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  return *v4;
}

- (NSString)keyProfile
{
  [(SUScriptObject *)self lock];
  keyProfile = [(SSLookupRequest *)self->_request keyProfile];
  [(SUScriptObject *)self unlock];
  return keyProfile;
}

- (int64_t)localizationStyle
{
  [(SUScriptObject *)self lock];
  localizationStyle = [(SSLookupRequest *)self->_request localizationStyle];
  [(SUScriptObject *)self unlock];
  return localizationStyle;
}

- (void)setAuthenticatesIfNeeded:(id)needed
{
  if (objc_opt_respondsToSelector())
  {
    [(SUScriptObject *)self lock];
    -[SSLookupRequest setPersonalizationStyle:](self->_request, "setPersonalizationStyle:", [needed BOOLValue]);

    [(SUScriptObject *)self unlock];
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

- (void)setKeyProfile:(id)profile
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
  if (!profile || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = profile, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    [(SUScriptObject *)self lock];
    [(SSLookupRequest *)self->_request setKeyProfile:v5];

    [(SUScriptObject *)self unlock];
    return;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (void)setLocalizationStyle:(int64_t)style
{
  [(SUScriptObject *)self lock];
  [(SSLookupRequest *)self->_request setLocalizationStyle:style];

  [(SUScriptObject *)self unlock];
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_72 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptLookupRequest;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_54, 3);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptLookupRequest;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptLookupRequest;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_72 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_54 = sel_valueForRequestParameter_;
    unk_1EBF3B840 = @"getRequestParameter";
    qword_1EBF3B848 = sel_setValue_forRequestParameter_;
    unk_1EBF3B850 = @"setRequestParameter";
    qword_1EBF3B858 = sel_startWithLookupFunction_;
    unk_1EBF3B860 = @"start";
    __KeyMapping_72 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"authenticatesIfNeeded", @"keyProfile", @"keyProfile", @"localizationStyle", @"localizationStyle", @"LOCALIZATION_STYLE_DEVICE", @"localizationStyleDevice", @"LOCALIZATION_STYLE_SERVER", @"localizationStyleServer", 0}];
  }
}

@end