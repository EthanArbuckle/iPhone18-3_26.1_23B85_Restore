@interface SUScriptExecutionContext
- (BOOL)evaluateData:(id)a3 MIMEType:(id)a4 textEncodingName:(id)a5 baseURL:(id)a6;
- (OpaqueJSContext)globalExecutionContext;
- (id)_newLoadOperation;
- (id)_webView;
- (id)parentViewControllerForWebView:(id)a3;
- (void)_cancelLoadOperation;
- (void)dealloc;
- (void)evaluateScriptAtURL:(id)a3;
- (void)evaluateScriptWithURLBagKey:(id)a3;
- (void)operation:(id)a3 failedWithError:(id)a4;
- (void)operation:(id)a3 finishedWithOutput:(id)a4;
@end

@implementation SUScriptExecutionContext

- (void)dealloc
{
  [(ISStoreURLOperation *)self->_loadOperation setDelegate:0];

  [(SUWebView *)self->_webView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUScriptExecutionContext;
  [(SUScriptExecutionContext *)&v3 dealloc];
}

- (BOOL)evaluateData:(id)a3 MIMEType:(id)a4 textEncodingName:(id)a5 baseURL:(id)a6
{
  if ([a4 rangeOfString:@"javascript" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [-[SUScriptExecutionContext _webView](self "_webView")];
  }

  else
  {
    if (a5)
    {
      v11 = CFStringConvertIANACharSetNameToEncoding(a5);
    }

    else
    {
      v11 = 134217984;
    }

    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:a3 encoding:CFStringConvertEncodingToNSStringEncoding(v11)];
    if (v12)
    {
      v13 = v12;
      [-[SUScriptExecutionContext _webView](self "_webView")];
    }
  }

  return 1;
}

uint64_t __62__SUScriptExecutionContext_callWebScriptMethod_withArguments___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32) "_webView")];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 callWebScriptMethod:v3 withArguments:v4];
}

- (void)evaluateScriptAtURL:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69D4938] sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v14 = 138412546;
    v15 = objc_opt_class();
    v16 = 2112;
    v17 = a3;
    LODWORD(v13) = 22;
    v12 = &v14;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v14, v13}];
      free(v9);
      v12 = v10;
      SSFileLog();
    }
  }

  [(SUScriptExecutionContext *)self _cancelLoadOperation];
  self->_loadOperation = [(SUScriptExecutionContext *)self _newLoadOperation];
  v11 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:a3];
  [(ISStoreURLOperation *)self->_loadOperation setRequestProperties:v11];

  [objc_msgSend(MEMORY[0x1E69E4798] "mainQueue")];
}

- (void)evaluateScriptWithURLBagKey:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69D4938] sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v14 = 138412546;
    v15 = objc_opt_class();
    v16 = 2112;
    v17 = a3;
    LODWORD(v13) = 22;
    v12 = &v14;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v14, v13}];
      free(v9);
      v12 = v10;
      SSFileLog();
    }
  }

  [(SUScriptExecutionContext *)self _cancelLoadOperation];
  self->_loadOperation = [(SUScriptExecutionContext *)self _newLoadOperation];
  v11 = objc_alloc_init(MEMORY[0x1E69D4970]);
  [v11 setURLBagKey:a3];
  [(ISStoreURLOperation *)self->_loadOperation setRequestProperties:v11];

  [objc_msgSend(MEMORY[0x1E69E4798] "mainQueue")];
}

- (OpaqueJSContext)globalExecutionContext
{
  v2 = [objc_msgSend(-[SUWebView _browserView](self->_webView "_browserView")];

  return [v2 globalContext];
}

- (void)operation:(id)a3 failedWithError:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69D4938] sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v13 = 138412290;
    v14 = objc_opt_class();
    LODWORD(v12) = 12;
    v11 = &v13;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v13, v12}];
      free(v9);
      v11 = v10;
      SSFileLog();
    }
  }

  [(SUScriptExecutionContext *)self _cancelLoadOperation];
}

- (void)operation:(id)a3 finishedWithOutput:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if ([a4 length])
  {
    v7 = [a3 response];
    v8 = [v7 textEncodingName];
    if (!v8)
    {
      v8 = CFStringConvertEncodingToIANACharSetName(0x8000100u);
    }

    -[SUScriptExecutionContext evaluateData:MIMEType:textEncodingName:baseURL:](self, "evaluateData:MIMEType:textEncodingName:baseURL:", a4, [v7 MIMEType], v8, objc_msgSend(objc_msgSend(a3, "response"), "URL"));
  }

  else
  {
    v9 = [MEMORY[0x1E69D4938] sharedConfig];
    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v17 = 138412290;
      v18 = objc_opt_class();
      LODWORD(v16) = 12;
      v15 = &v17;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v17, v16}];
        free(v13);
        v15 = v14;
        SSFileLog();
      }
    }
  }

  [(SUScriptExecutionContext *)self _cancelLoadOperation];
}

- (id)parentViewControllerForWebView:(id)a3
{
  v3 = +[SUClientDispatch tabBarController];
  v4 = [v3 presentedViewController];
  if (!v4)
  {
    v4 = [v3 selectedViewController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v4 topViewController];
  }

  if (v4)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

- (void)_cancelLoadOperation
{
  [(ISStoreURLOperation *)self->_loadOperation setDelegate:0];
  [(ISStoreURLOperation *)self->_loadOperation cancel];

  self->_loadOperation = 0;
}

- (id)_newLoadOperation
{
  v3 = objc_alloc_init(MEMORY[0x1E69E47E0]);
  [v3 setDelegate:self];
  [v3 setShouldMessageMainThread:1];
  return v3;
}

- (id)_webView
{
  result = self->_webView;
  if (!result)
  {
    v4 = objc_alloc_init(SUWebView);
    self->_webView = v4;
    [(SUWebView *)v4 setDelegate:self];
    return self->_webView;
  }

  return result;
}

@end