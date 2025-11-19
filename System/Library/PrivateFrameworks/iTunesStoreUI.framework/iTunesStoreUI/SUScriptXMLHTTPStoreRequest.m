@interface SUScriptXMLHTTPStoreRequest
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (NSString)responseText;
- (NSString)statusText;
- (SUScriptXMLHTTPStoreRequest)initWithDelegate:(id)a3;
- (SUScriptXMLHTTPStoreRequestDelegate)delegate;
- (id)_clientInfoHeader;
- (id)_gsTokenForAIDAAccount:(id)a3 accountStore:(id)a4;
- (id)_scriptObjectForFunctionName:(id)a3;
- (id)_uniqueDeviceID;
- (id)getAllResponseHeaders;
- (id)getResponseHeader:(id)a3;
- (id)isJSONEncoded;
- (id)scriptAttributeKeys;
- (id)shouldSendGUIDHeader;
- (unint64_t)readyState;
- (unint64_t)status;
- (unint64_t)timeout;
- (void)_callFunctionWithName:(id)a3 arguments:(id)a4;
- (void)_setScriptObject:(id)a3 forFunctionName:(id)a4;
- (void)abort;
- (void)dealloc;
- (void)openWithHTTPMethod:(id)a3 URL:(id)a4 isAsync:(id)a5 username:(id)a6 password:(id)a7;
- (void)sendWithBodyData:(id)a3;
- (void)setJSONEncoded:(id)a3;
- (void)setShouldSendGUIDHeader:(id)a3;
- (void)setTimeout:(unint64_t)a3;
@end

@implementation SUScriptXMLHTTPStoreRequest

- (SUScriptXMLHTTPStoreRequest)initWithDelegate:(id)a3
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
  [(NSMutableDictionary *)self->_functions enumerateKeysAndObjectsUsingBlock:&__block_literal_global_6];
  v3.receiver = self;
  v3.super_class = SUScriptXMLHTTPStoreRequest;
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

  self->_shouldSendGUIDHeader = 0;
  self->_status = 0;
  statusText = self->_statusText;
  self->_statusText = 0;

  [(SUScriptObject *)self unlock];
  v6 = v7;
  if (v7)
  {
    [(SUXMLHTTPStoreRequestOperation *)v7 cancel];
    [(SUScriptXMLHTTPStoreRequest *)self _callFunctionWithName:@"onreadystatechange" arguments:0];
    [(SUScriptXMLHTTPStoreRequest *)self _callFunctionWithName:@"onabort" arguments:0];
    [(SUScriptXMLHTTPStoreRequest *)self _callFunctionWithName:@"onloadend" arguments:0];
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
  v9 = __52__SUScriptXMLHTTPStoreRequest_getAllResponseHeaders__block_invoke;
  v10 = &unk_1E8165010;
  v12 = v13;
  v5 = v3;
  v11 = v5;
  [(NSDictionary *)responseHeaders enumerateKeysAndObjectsUsingBlock:&v7];
  [(SUScriptObject *)self unlock:v7];

  _Block_object_dispose(v13, 8);

  return v5;
}

void __52__SUScriptXMLHTTPStoreRequest_getAllResponseHeaders__block_invoke(uint64_t a1, void *a2, void *a3)
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

      [(SSMutableURLRequestProperties *)self->_requestProperties setITunesStoreRequest:1];
      if (v18)
      {
        [(SSMutableURLRequestProperties *)self->_requestProperties setHTTPMethod:v18];
      }

      if (self->_useJSONEncoding)
      {
        [(SSMutableURLRequestProperties *)self->_requestProperties setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = objc_loadWeakRetained(&self->_delegate);
        v17 = [v16 scriptXMLHTTPStoreRequest:self requiresCellularForURL:v11];

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
  location[3] = *MEMORY[0x1E69E9840];
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

      if (self->_shouldSendGUIDHeader)
      {
        v8 = self->_requestProperties;
        v9 = [MEMORY[0x1E69E4748] sharedInstance];
        v10 = [v9 guid];
        [(SSMutableURLRequestProperties *)v8 setValue:v10 forHTTPHeaderField:*MEMORY[0x1E69D4C38]];
      }

      v11 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      v12 = [v11 ams_activeiCloudAccount];
      v42 = [v11 aida_accountForiCloudAccount:v12];
      if (v12)
      {
        if (v42)
        {
          v13 = [(SUScriptXMLHTTPStoreRequest *)self _gsTokenForAIDAAccount:v42 accountStore:v11];
          if (v13)
          {
            [(SSMutableURLRequestProperties *)self->_requestProperties setValue:v13 forHTTPHeaderField:*MEMORY[0x1E69D4C58]];
          }
        }

        else
        {
          v22 = [MEMORY[0x1E69D4938] sharedConfig];
          v23 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v24 = v23 | 2;
          }

          else
          {
            v24 = v23;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = v24;
          }

          else
          {
            v26 = v24 & 2;
          }

          if (v26)
          {
            LODWORD(location[0]) = 138412290;
            *(location + 4) = objc_opt_class();
            v27 = *(location + 4);
            LODWORD(v41) = 12;
            v40 = location;
            v28 = _os_log_send_and_compose_impl();

            if (v28)
            {
              v29 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:{4, location, v41}];
              free(v28);
              v40 = v29;
              SSFileLog();
            }
          }

          else
          {
          }
        }

        v14 = [v12 ams_altDSID];
        if (v14)
        {
          [(SSMutableURLRequestProperties *)self->_requestProperties setValue:v14 forHTTPHeaderField:*MEMORY[0x1E69D4C48]];
        }
      }

      else
      {
        v14 = [MEMORY[0x1E69D4938] sharedConfig];
        v15 = [v14 shouldLog];
        if ([v14 shouldLogToDisk])
        {
          v16 = v15 | 2;
        }

        else
        {
          v16 = v15;
        }

        v17 = [v14 OSLogObject];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v16;
        }

        else
        {
          v18 = v16 & 2;
        }

        if (v18)
        {
          LODWORD(location[0]) = 138543362;
          *(location + 4) = objc_opt_class();
          v19 = *(location + 4);
          LODWORD(v41) = 12;
          v40 = location;
          v20 = _os_log_send_and_compose_impl();

          if (v20)
          {
            v21 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, location, v41}];
            free(v20);
            v40 = v21;
            SSFileLog();
          }
        }

        else
        {
        }
      }

      v30 = [(SUScriptXMLHTTPStoreRequest *)self _clientInfoHeader];
      if (v30)
      {
        [(SSMutableURLRequestProperties *)self->_requestProperties setValue:v30 forHTTPHeaderField:*MEMORY[0x1E69D4C60]];
      }

      v31 = [(SUScriptXMLHTTPStoreRequest *)self _uniqueDeviceID];
      if (v31)
      {
        [(SSMutableURLRequestProperties *)self->_requestProperties setValue:v31 forHTTPHeaderField:*MEMORY[0x1E69D4C68]];
      }

      v32 = [[SUXMLHTTPStoreRequestOperation alloc] initWithRequestProperties:self->_requestProperties];
      operation = self->_operation;
      self->_operation = v32;

      v34 = self->_operation;
      v35 = [(SUScriptXMLHTTPStoreRequest *)self authenticationContext];
      [(SUXMLHTTPStoreRequestOperation *)v34 setAuthenticationContext:v35];

      v36 = self->_operation;
      v37 = [(SUScriptXMLHTTPStoreRequest *)self dataProvider];
      [(SUXMLHTTPStoreRequestOperation *)v36 setDataProvider:v37];

      objc_initWeak(location, self);
      v38 = self->_operation;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __48__SUScriptXMLHTTPStoreRequest_sendWithBodyData___block_invoke;
      v43[3] = &unk_1E8165038;
      objc_copyWeak(&v44, location);
      [(SUXMLHTTPStoreRequestOperation *)v38 setOutputBlock:v43];
      v39 = [MEMORY[0x1E69E4798] mainQueue];
      [v39 addOperation:self->_operation];

      objc_destroyWeak(&v44);
      objc_destroyWeak(location);
    }
  }

  [(SUScriptObject *)self unlock];
}

void __48__SUScriptXMLHTTPStoreRequest_sendWithBodyData___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v22 = a3;
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
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
        v13 = WeakRetained[15];
        WeakRetained[15] = v12;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v13 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v9 options:0 error:0];
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v13 encoding:4];
          v15 = WeakRetained[15];
          WeakRetained[15] = v14;
        }

        else
        {
          v16 = v9;
          v13 = WeakRetained[15];
          WeakRetained[15] = v16;
        }
      }
    }

    v17 = WeakRetained[11];
    WeakRetained[11] = 0;

    WeakRetained[12] = 4;
    WeakRetained[17] = v11;
    v18 = [MEMORY[0x1E695AC08] localizedStringForStatusCode:v11];
    v19 = WeakRetained[18];
    WeakRetained[18] = v18;

    [WeakRetained unlock];
    [WeakRetained _callFunctionWithName:@"onreadystatechange" arguments:0];
    if ((v11 - 200) >= 0x64)
    {
      v20 = @"onerror";
    }

    else
    {
      v20 = @"onload";
    }

    if (v11 == 408)
    {
      v21 = @"ontimeout";
    }

    else
    {
      v21 = v20;
    }

    [WeakRetained _callFunctionWithName:v21 arguments:0];
    [WeakRetained _callFunctionWithName:@"onloadend" arguments:0];
  }
}

- (id)isJSONEncoded
{
  [(SUScriptObject *)self lock];
  if (self->_useJSONEncoding)
  {
    v3 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *v3;
  [(SUScriptObject *)self unlock];

  return v4;
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

- (void)setJSONEncoded:(id)a3
{
  v4 = a3;
  [(SUScriptObject *)self lock];
  v5 = [v4 BOOLValue];

  self->_useJSONEncoding = v5;

  [(SUScriptObject *)self unlock];
}

- (void)setShouldSendGUIDHeader:(id)a3
{
  v4 = a3;
  [(SUScriptObject *)self lock];
  v5 = [v4 BOOLValue];

  self->_shouldSendGUIDHeader = v5;

  [(SUScriptObject *)self unlock];
}

- (void)setTimeout:(unint64_t)a3
{
  [(SUScriptObject *)self lock];
  self->_timeout = a3;

  [(SUScriptObject *)self unlock];
}

- (id)shouldSendGUIDHeader
{
  if (self->_shouldSendGUIDHeader)
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  return *v2;
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

- (id)_clientInfoHeader
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698B890] clientInfoHeader];
  if (!v2)
  {
    v3 = [MEMORY[0x1E69D4938] sharedConfig];
    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    v6 = [v3 OSLogObject];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      LODWORD(v11) = 138543362;
      *(&v11 + 4) = objc_opt_class();
      v7 = *(&v11 + 4);
      LODWORD(v10) = 12;
      v8 = _os_log_send_and_compose_impl();

      if (!v8)
      {
LABEL_11:

        goto LABEL_12;
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v11, v10, v11}];
      free(v8);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:

  return v2;
}

- (id)_gsTokenForAIDAAccount:(id)a3 accountStore:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698C240];
  v18 = 0;
  v6 = [a4 credentialForAccount:a3 serviceID:v5 error:&v18];
  v7 = v18;
  if (v7)
  {
    v8 = [MEMORY[0x1E69D4938] sharedConfig];
    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      v19 = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v7;
      v13 = v12;
      LODWORD(v17) = 22;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_11:

        v15 = 0;
        goto LABEL_13;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v19, v17}];
      free(v14);
      SSFileLog();
    }

    goto LABEL_11;
  }

  v15 = [v6 token];
LABEL_13:

  return v15;
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
  v11 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v11 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptObject *)self lock];
    if (v11)
    {
      v7 = [[SUScriptFunction alloc] initWithScriptObject:v11];
      [(SUScriptFunction *)v7 setThisObject:self];
      functions = self->_functions;
      if (!functions)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v10 = self->_functions;
        self->_functions = v9;

        functions = self->_functions;
      }

      [(NSMutableDictionary *)functions setObject:v7 forKey:v6];
    }

    else
    {
      v7 = [(NSMutableDictionary *)self->_functions objectForKey:v6];
      [(SUScriptFunction *)v7 setThisObject:0];
      [(NSMutableDictionary *)self->_functions removeObjectForKey:v6];
    }

    [(SUScriptObject *)self unlock];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

- (id)_uniqueDeviceID
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C8A8] uniqueDeviceId];
  if (!v2)
  {
    v3 = [MEMORY[0x1E69D4938] sharedConfig];
    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    v6 = [v3 OSLogObject];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      LODWORD(v11) = 138543362;
      *(&v11 + 4) = objc_opt_class();
      v7 = *(&v11 + 4);
      LODWORD(v10) = 12;
      v8 = _os_log_send_and_compose_impl();

      if (!v8)
      {
LABEL_11:

        goto LABEL_12;
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v11, v10, v11}];
      free(v8);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:

  return v2;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  v4 = a3;
  v5 = [__KeyMapping_4 objectForKey:v4];
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SUScriptXMLHTTPStoreRequest;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, v4);
  }

  return v5;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  v5 = SUWebScriptNameForSelector2(a3, &__SelectorMapping_2, 6);
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SUScriptXMLHTTPStoreRequest;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, a3);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptXMLHTTPStoreRequest;
  v2 = [(SUScriptObject *)&v5 scriptAttributeKeys];
  v3 = [__KeyMapping_4 allKeys];
  [v2 addObjectsFromArray:v3];

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_2 = sel_abort;
    unk_1EBF3A750 = @"abort";
    qword_1EBF3A758 = sel_getAllResponseHeaders;
    unk_1EBF3A760 = @"getAllResponseHeaders";
    qword_1EBF3A768 = sel_getResponseHeader_;
    unk_1EBF3A770 = @"getResponseHeader";
    qword_1EBF3A778 = sel_openWithHTTPMethod_URL_isAsync_username_password_;
    unk_1EBF3A780 = @"open";
    qword_1EBF3A788 = sel_sendWithBodyData_;
    unk_1EBF3A790 = @"send";
    qword_1EBF3A798 = sel_setValue_forHTTPHeaderField_;
    unk_1EBF3A7A0 = @"setRequestHeader";
    __KeyMapping_4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"isJSONEncoded", @"JSONEncoded", @"onabort", @"onabort", @"onerror", @"onerror", @"onload", @"onload", @"onloadend", @"onloadend", @"onreadystatechange", @"onreadystatechange", @"ontimeout", @"ontimeout", @"readyState", @"readyState", @"responseText", @"responseText", @"shouldSendGUIDHeader", @"shouldSendGUIDHeader", @"status", @"status", @"statusText", @"statusText", @"timeout", @"timeout", 0}];

    MEMORY[0x1EEE66BB8]();
  }
}

- (SUScriptXMLHTTPStoreRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end