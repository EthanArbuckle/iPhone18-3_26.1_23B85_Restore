@interface SUScriptXMLHTTPRequest
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (NSString)responseText;
- (NSString)statusText;
- (SUScriptXMLHTTPRequest)initWithDelegate:(id)a3;
- (SUScriptXMLHTTPRequestDelegate)delegate;
- (id)_scriptObjectForFunctionName:(id)a3;
- (id)getAllResponseHeaders;
- (id)getResponseHeader:(id)a3;
- (id)scriptAttributeKeys;
- (unint64_t)readyState;
- (unint64_t)status;
- (unint64_t)timeout;
- (void)_callFunctionWithName:(id)a3 arguments:(id)a4;
- (void)_setScriptObject:(id)a3 forFunctionName:(id)a4;
- (void)abort;
- (void)dealloc;
- (void)openWithHTTPMethod:(id)a3 URL:(id)a4 isAsync:(id)a5 username:(id)a6 password:(id)a7;
- (void)sendWithBodyData:(id)a3;
- (void)setTimeout:(unint64_t)a3;
@end

@implementation SUScriptXMLHTTPRequest

- (SUScriptXMLHTTPRequest)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SUScriptObject *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)dealloc
{
  [(NSMutableDictionary *)self->_functions enumerateKeysAndObjectsUsingBlock:&__block_literal_global_8];
  v3.receiver = self;
  v3.super_class = SUScriptXMLHTTPRequest;
  [(SUScriptObject *)&v3 dealloc];
}

- (void)abort
{
  [(SUScriptObject *)self lock];
  v7 = self->_operation;
  operation = self->_operation;
  self->_operation = 0;

  self->_readyState = 4;
  responseText = self->_responseText;
  self->_responseText = 0;

  self->_status = 0;
  statusText = self->_statusText;
  self->_statusText = 0;

  [(SUScriptObject *)self unlock];
  v6 = v7;
  if (v7)
  {
    [(SUXMLHTTPRequestOperation *)v7 cancel];
    [(SUScriptXMLHTTPRequest *)self _callFunctionWithName:@"onreadystatechange" arguments:0];
    [(SUScriptXMLHTTPRequest *)self _callFunctionWithName:@"onabort" arguments:0];
    [(SUScriptXMLHTTPRequest *)self _callFunctionWithName:@"onloadend" arguments:0];
    v6 = v7;
  }
}

- (id)getAllResponseHeaders
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(SUScriptObject *)self lock];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  responseHeaders = self->_responseHeaders;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __47__SUScriptXMLHTTPRequest_getAllResponseHeaders__block_invoke;
  v10 = &unk_1E8165010;
  v12 = v13;
  v5 = v3;
  v11 = v5;
  [(NSDictionary *)responseHeaders enumerateKeysAndObjectsUsingBlock:&v7];
  [(SUScriptObject *)self unlock:v7];

  _Block_object_dispose(v13, 8);

  return v5;
}

void __47__SUScriptXMLHTTPRequest_getAllResponseHeaders__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(*(*(a1 + 40) + 8) + 24) >= 1)
  {
    [*(a1 + 32) appendString:@"\r\n"];
  }

  [*(a1 + 32) appendString:v6];
  [*(a1 + 32) appendString:@": "];
  [*(a1 + 32) appendString:v5];
  ++*(*(*(a1 + 40) + 8) + 24);
}

- (id)getResponseHeader:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptObject *)self lock];
    v5 = [(NSDictionary *)self->_responseHeaders objectForKey:v4];
    v6 = [v5 copy];

    [(SUScriptObject *)self unlock];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v6 = 0;
  }

  return v6;
}

- (void)openWithHTTPMethod:(id)a3 URL:(id)a4 isAsync:(id)a5 username:(id)a6 password:(id)a7
{
  v9 = a3;
  v10 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v9 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    v18 = [v9 uppercaseString];

    if (!v18 || ([v18 isEqualToString:@"GET"] & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"POST") & 1) != 0)
    {
      v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v10];
      v12 = [objc_alloc(MEMORY[0x1E69D4970]) initWithURL:v11];
      requestProperties = self->_requestProperties;
      self->_requestProperties = v12;

      [(SSMutableURLRequestProperties *)self->_requestProperties setITunesStoreRequest:0];
      if (v18)
      {
        [(SSMutableURLRequestProperties *)self->_requestProperties setHTTPMethod:v18];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = objc_loadWeakRetained(&self->_delegate);
        v17 = [v16 scriptXMLHTTPRequest:self requiresCellularForURL:v11];

        [(SSMutableURLRequestProperties *)self->_requestProperties setRequiresCellularDataNetwork:v17];
      }
    }

    else
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v18 = v9;
  }
}

- (void)sendWithBodyData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v4 = 0;
  }

  [(SUScriptObject *)self lock];
  if (!self->_operation)
  {
    requestProperties = self->_requestProperties;
    if (requestProperties)
    {
      timeout = self->_timeout;
      if (timeout)
      {
        [(SSMutableURLRequestProperties *)requestProperties setTimeoutInterval:timeout / 1000.0];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v4 dataUsingEncoding:4];
        [(SSMutableURLRequestProperties *)self->_requestProperties setHTTPBody:v7];
      }

      v8 = [[SUXMLHTTPRequestOperation alloc] initWithRequestProperties:self->_requestProperties];
      operation = self->_operation;
      self->_operation = v8;

      objc_initWeak(&location, self);
      v10 = self->_operation;
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __43__SUScriptXMLHTTPRequest_sendWithBodyData___block_invoke;
      v15 = &unk_1E81659B8;
      objc_copyWeak(&v16, &location);
      [(SUXMLHTTPRequestOperation *)v10 setOutputBlock:&v12];
      v11 = [MEMORY[0x1E69E4798] mainQueue];
      [v11 addOperation:self->_operation];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }

  [(SUScriptObject *)self unlock];
}

void __43__SUScriptXMLHTTPRequest_sendWithBodyData___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = [v8 statusCode];
    if (ISErrorIsEqual())
    {
      v11 = 408;
    }

    [WeakRetained lock];
    if (v9)
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
      v13 = WeakRetained[15];
      WeakRetained[15] = v12;
    }

    v14 = WeakRetained[11];
    WeakRetained[11] = 0;

    WeakRetained[12] = 4;
    WeakRetained[16] = v11;
    v15 = [MEMORY[0x1E695AC08] localizedStringForStatusCode:v11];
    v16 = WeakRetained[17];
    WeakRetained[17] = v15;

    [WeakRetained unlock];
    [WeakRetained _callFunctionWithName:@"onreadystatechange" arguments:0];
    if ((v11 - 200) >= 0x64)
    {
      v17 = @"onerror";
    }

    else
    {
      v17 = @"onload";
    }

    if (v11 == 408)
    {
      v18 = @"ontimeout";
    }

    else
    {
      v18 = v17;
    }

    [WeakRetained _callFunctionWithName:v18 arguments:0];
    [WeakRetained _callFunctionWithName:@"onloadend" arguments:0];
  }
}

- (unint64_t)readyState
{
  [(SUScriptObject *)self lock];
  readyState = self->_readyState;
  [(SUScriptObject *)self unlock];
  return readyState;
}

- (NSString)responseText
{
  [(SUScriptObject *)self lock];
  v3 = [(NSString *)self->_responseText copy];
  [(SUScriptObject *)self unlock];

  return v3;
}

- (void)setTimeout:(unint64_t)a3
{
  [(SUScriptObject *)self lock];
  self->_timeout = a3;

  [(SUScriptObject *)self unlock];
}

- (unint64_t)status
{
  [(SUScriptObject *)self lock];
  status = self->_status;
  [(SUScriptObject *)self unlock];
  return status;
}

- (NSString)statusText
{
  [(SUScriptObject *)self lock];
  v3 = [(NSString *)self->_statusText copy];
  [(SUScriptObject *)self unlock];

  return v3;
}

- (unint64_t)timeout
{
  [(SUScriptObject *)self lock];
  timeout = self->_timeout;
  [(SUScriptObject *)self unlock];
  return timeout;
}

- (void)_callFunctionWithName:(id)a3 arguments:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SUScriptObject *)self lock];
  v8 = [(NSMutableDictionary *)self->_functions objectForKey:v7];

  [(SUScriptObject *)self unlock];
  [v8 callWithArguments:v6];
}

- (id)_scriptObjectForFunctionName:(id)a3
{
  v4 = a3;
  [(SUScriptObject *)self lock];
  v5 = [(NSMutableDictionary *)self->_functions objectForKey:v4];

  v6 = [v5 scriptObject];
  [(SUScriptObject *)self unlock];

  return v6;
}

- (void)_setScriptObject:(id)a3 forFunctionName:(id)a4
{
  v6 = a3;
  v11 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    [(SUScriptObject *)self lock];
LABEL_4:
    v6 = [(NSMutableDictionary *)self->_functions objectForKey:v11];
    [v6 setThisObject:0];
    [(NSMutableDictionary *)self->_functions removeObjectForKey:v11];
    goto LABEL_5;
  }

  [(SUScriptObject *)self lock];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = [[SUScriptFunction alloc] initWithScriptObject:v6];
  [(SUScriptFunction *)v7 setThisObject:self];
  functions = self->_functions;
  if (!functions)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = self->_functions;
    self->_functions = v9;

    functions = self->_functions;
  }

  [(NSMutableDictionary *)functions setObject:v7 forKey:v11];

LABEL_5:
  [(SUScriptObject *)self unlock];
}

+ (id)webScriptNameForKeyName:(id)a3
{
  v4 = a3;
  v5 = [__KeyMapping_26 objectForKey:v4];
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SUScriptXMLHTTPRequest;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, v4);
  }

  return v5;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  v5 = SUWebScriptNameForSelector2(a3, &__SelectorMapping_21, 6);
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SUScriptXMLHTTPRequest;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, a3);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptXMLHTTPRequest;
  v2 = [(SUScriptObject *)&v5 scriptAttributeKeys];
  v3 = [__KeyMapping_26 allKeys];
  [v2 addObjectsFromArray:v3];

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_21 = sel_abort;
    *algn_1EBF3AC98 = @"abort";
    qword_1EBF3ACA0 = sel_getAllResponseHeaders;
    unk_1EBF3ACA8 = @"getAllResponseHeaders";
    qword_1EBF3ACB0 = sel_getResponseHeader_;
    unk_1EBF3ACB8 = @"getResponseHeader";
    qword_1EBF3ACC0 = sel_openWithHTTPMethod_URL_isAsync_username_password_;
    unk_1EBF3ACC8 = @"open";
    qword_1EBF3ACD0 = sel_sendWithBodyData_;
    unk_1EBF3ACD8 = @"send";
    qword_1EBF3ACE0 = sel_setValue_forHTTPHeaderField_;
    unk_1EBF3ACE8 = @"setRequestHeader";
    __KeyMapping_26 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"onabort", @"onerror", @"onerror", @"onload", @"onload", @"onloadend", @"onloadend", @"onreadystatechange", @"onreadystatechange", @"ontimeout", @"ontimeout", @"readyState", @"readyState", @"responseText", @"responseText", @"status", @"status", @"statusText", @"statusText", @"timeout", @"timeout", 0}];

    MEMORY[0x1EEE66BB8]();
  }
}

- (SUScriptXMLHTTPRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end