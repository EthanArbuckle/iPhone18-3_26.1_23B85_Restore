@interface SUScriptLookupRequest
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (NSString)keyProfile;
- (SUScriptLookupRequest)init;
- (id)authenticatesIfNeeded;
- (id)scriptAttributeKeys;
- (id)valueForRequestParameter:(id)a3;
- (int64_t)localizationStyle;
- (void)dealloc;
- (void)setAuthenticatesIfNeeded:(id)a3;
- (void)setKeyProfile:(id)a3;
- (void)setLocalizationStyle:(int64_t)a3;
- (void)setValue:(id)a3 forRequestParameter:(id)a4;
- (void)startWithLookupFunction:(id)a3;
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

- (void)setValue:(id)a3 forRequestParameter:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a3 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x1E69E2F88];
LABEL_11:

    [v9 throwException:@"Invalid argument"];
    return;
  }

  if (!a3)
  {
    [(SUScriptObject *)self lock];
    request = self->_request;
    v8 = 0;
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
    v8 = a3;
LABEL_15:
    [(SSLookupRequest *)request setValue:v8 forRequestParameter:a4];

    [(SUScriptObject *)self unlock];
    return;
  }

  v10 = [(WebFrame *)[(SUScriptObject *)self webFrame] globalContext];
  if (v10)
  {
    v11 = [a3 copyArrayOrDictionaryWithContext:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUScriptObject *)self lock];
      [(SSLookupRequest *)self->_request setValue:v11 forRequestParameter:a4];
      [(SUScriptObject *)self unlock];
    }

    else
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    }
  }
}

- (void)startWithLookupFunction:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
LABEL_3:
    v6 = [[SUScriptFunction alloc] initWithScriptObject:v5];
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
  v5 = 0;
  if (!a3)
  {
    goto LABEL_3;
  }

  if (isKindOfClass)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  v5 = a3;
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

- (id)valueForRequestParameter:(id)a3
{
  [(SUScriptObject *)self lock];
  v5 = [(SSLookupRequest *)self->_request valueForRequestParameter:a3];
  [(SUScriptObject *)self unlock];
  return v5;
}

- (id)authenticatesIfNeeded
{
  [(SUScriptObject *)self lock];
  v3 = [(SSLookupRequest *)self->_request personalizationStyle];
  [(SUScriptObject *)self unlock];
  v4 = MEMORY[0x1E695E4D0];
  if (v3 != 1)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  return *v4;
}

- (NSString)keyProfile
{
  [(SUScriptObject *)self lock];
  v3 = [(SSLookupRequest *)self->_request keyProfile];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (int64_t)localizationStyle
{
  [(SUScriptObject *)self lock];
  v3 = [(SSLookupRequest *)self->_request localizationStyle];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (void)setAuthenticatesIfNeeded:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    [(SUScriptObject *)self lock];
    -[SSLookupRequest setPersonalizationStyle:](self->_request, "setPersonalizationStyle:", [a3 BOOLValue]);

    [(SUScriptObject *)self unlock];
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

- (void)setKeyProfile:(id)a3
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
  if (!a3 || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = a3, (objc_opt_isKindOfClass() & 1) != 0))
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

- (void)setLocalizationStyle:(int64_t)a3
{
  [(SUScriptObject *)self lock];
  [(SSLookupRequest *)self->_request setLocalizationStyle:a3];

  [(SUScriptObject *)self unlock];
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_72 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptLookupRequest;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_54, 3);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptLookupRequest;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptLookupRequest;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_72 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
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