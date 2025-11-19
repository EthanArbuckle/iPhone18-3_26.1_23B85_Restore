@interface VSWebAuthenticationAppDocumentController
- (BOOL)_updateViewModel:(id)a3 error:(id *)a4;
- (BOOL)_updateWebAuthenticationViewModel:(id)a3 error:(id *)a4;
- (BOOL)_updateWebAuthenticationViewModel:(id)a3 withTemplate:(id)a4 error:(id *)a5;
- (VSWebAuthenticationAppDocumentController)initWithAppDocument:(id)a3;
- (id)_webAuthenticationViewModelWithViewModel:(id)a3;
- (void)_sendMessage:(id)a3;
- (void)_startObservingViewModel:(id)a3;
- (void)_stopObservingViewModel:(id)a3;
- (void)didAddMessagesToMessageQueue:(id)a3;
- (void)messagePort:(id)a3 didReceiveMessage:(id)a4;
@end

@implementation VSWebAuthenticationAppDocumentController

- (VSWebAuthenticationAppDocumentController)initWithAppDocument:(id)a3
{
  v12.receiver = self;
  v12.super_class = VSWebAuthenticationAppDocumentController;
  v3 = [(VSAppDocumentController *)&v12 initWithAppDocument:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(VSAppDocumentController *)v3 templateElement];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = MEMORY[0x277CBEAD8];
        v7 = *MEMORY[0x277CBE660];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        [v6 raise:v7 format:{@"Unexpectedly, template was %@, instead of VSWebAuthenticationTemplateElement.", v9}];
      }

      v10 = [v5 messagePort];
      [v10 setDelegate:v4];
    }
  }

  return v4;
}

- (id)_webAuthenticationViewModelWithViewModel:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewModel parameter must not be nil."];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = *MEMORY[0x277CBE660];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v4 raise:v5 format:{@"Unexpectedly, viewModel was %@, instead of VSWebAuthenticationViewModel.", v7}];
  }

  return v3;
}

- (BOOL)_updateWebAuthenticationViewModel:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VSAppDocumentController *)self templateElement];
  if ([v7 vs_elementType] == 163)
  {
    v12 = 0;
    v8 = [(VSWebAuthenticationAppDocumentController *)self _updateWebAuthenticationViewModel:v6 withTemplate:v7 error:&v12];
    v9 = v12;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = VSPrivateError();
  v8 = 0;
  if (a4)
  {
LABEL_5:
    v10 = v9;
    *a4 = v9;
  }

LABEL_6:

  return v8;
}

- (BOOL)_updateWebAuthenticationViewModel:(id)a3 withTemplate:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [a4 attributes];
  v9 = [v8 objectForKey:@"src"];

  if (v9 && (v10 = MEMORY[0x277CBEBC0], v11 = v9, v12 = [[v10 alloc] initWithString:v11], v11, v12))
  {
    [v7 setSourceURL:v12];

    v13 = 1;
  }

  else if (a5)
  {
    VSPrivateError();
    *a5 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_sendMessage:(id)a3
{
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Will dispatch message event.", buf, 2u);
  }

  v6 = [(VSAppDocumentController *)self templateElement];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = *MEMORY[0x277CBE660];
    v10 = [(VSAppDocumentController *)self templateElement];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v8 raise:v9 format:{@"Unexpectedly, [self templateElement] was %@, instead of VSWebAuthenticationTemplateElement.", v12}];
  }

  v13 = [(VSAppDocumentController *)self templateElement];
  v14 = [v13 messagePort];
  v15 = [v14 appContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__VSWebAuthenticationAppDocumentController__sendMessage___block_invoke;
  v18[3] = &unk_279E19CB0;
  v19 = v4;
  v16 = v4;
  [v15 evaluate:v18 completionBlock:&__block_literal_global_14];
  v17 = VSDefaultLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270DD4000, v17, OS_LOG_TYPE_DEFAULT, "Did dispatch message event.", buf, 2u);
  }
}

void __57__VSWebAuthenticationAppDocumentController__sendMessage___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = VSScriptMessageDispatchInjection(*(a1 + 32));
  v4 = [v5 evaluateScript:v3];
}

void __57__VSWebAuthenticationAppDocumentController__sendMessage___block_invoke_2()
{
  v0 = VSDefaultLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_270DD4000, v0, OS_LOG_TYPE_DEFAULT, "Did finish message event.", v1, 2u);
  }
}

- (void)messagePort:(id)a3 didReceiveMessage:(id)a4
{
  v5 = a4;
  v6 = [(VSAppDocumentController *)self viewModel];

  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self viewModel] parameter must not be nil."];
  }

  v9 = [(VSAppDocumentController *)self viewModel];
  v7 = [(VSWebAuthenticationAppDocumentController *)self _webAuthenticationViewModelWithViewModel:v9];
  v8 = [v7 messagesToWeb];
  [v8 addMessage:v5];
}

- (void)didAddMessagesToMessageQueue:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Messages from web did change.", buf, 2u);
  }

  v6 = objc_alloc_init(VSScriptSecurityOrigin);
  v7 = [(VSAppDocumentController *)self templateElement];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = *MEMORY[0x277CBE660];
    v11 = [(VSAppDocumentController *)self templateElement];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v9 raise:v10 format:{@"Unexpectedly, [self templateElement] was %@, instead of VSWebAuthenticationTemplateElement.", v13}];
  }

  v36 = [(VSAppDocumentController *)self templateElement];
  v35 = [v36 messagePort];
  v14 = [v35 appContext];
  v15 = objc_alloc(MEMORY[0x277CCACE0]);
  v34 = v14;
  v16 = [v14 app];
  v17 = [v16 appJSURL];
  v18 = [v15 initWithURL:v17 resolvingAgainstBaseURL:1];

  v19 = [v18 scheme];
  [(VSScriptSecurityOrigin *)v6 setScheme:v19];

  v20 = [v18 host];
  [(VSScriptSecurityOrigin *)v6 setHost:v20];

  v33 = v18;
  v21 = [v18 port];
  -[VSScriptSecurityOrigin setPort:](v6, "setPort:", [v21 integerValue]);

  v37 = v4;
  v22 = [v4 removeAllMessages];
  v23 = VSDefaultLogObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v22 count];
    *buf = 134217984;
    v43 = v24;
    _os_log_impl(&dword_270DD4000, v23, OS_LOG_TYPE_DEFAULT, "Will process %lld messages", buf, 0xCu);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = v22;
  v26 = [v25 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v39;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v38 + 1) + 8 * i);
        if (VSShouldSendScriptMessageToContextWithOrigin(v30, v6))
        {
          [(VSWebAuthenticationAppDocumentController *)self _sendMessage:v30];
        }

        else
        {
          v31 = VSErrorLogObject();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v43 = v30;
            v44 = 2112;
            v45 = v6;
            _os_log_error_impl(&dword_270DD4000, v31, OS_LOG_TYPE_ERROR, "Discarding message %@ to origin %@", buf, 0x16u);
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v27);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_startObservingViewModel:(id)a3
{
  v7.receiver = self;
  v7.super_class = VSWebAuthenticationAppDocumentController;
  v4 = a3;
  [(VSAppDocumentController *)&v7 _startObservingViewModel:v4];
  v5 = [(VSWebAuthenticationAppDocumentController *)self _webAuthenticationViewModelWithViewModel:v4, v7.receiver, v7.super_class];

  v6 = [v5 messagesFromWeb];
  [v6 setDelegate:self];
}

- (void)_stopObservingViewModel:(id)a3
{
  v7.receiver = self;
  v7.super_class = VSWebAuthenticationAppDocumentController;
  v4 = a3;
  [(VSAppDocumentController *)&v7 _stopObservingViewModel:v4];
  v5 = [(VSWebAuthenticationAppDocumentController *)self _webAuthenticationViewModelWithViewModel:v4, v7.receiver, v7.super_class];

  v6 = [v5 messagesFromWeb];
  [v6 setDelegate:0];
}

- (BOOL)_updateViewModel:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = VSWebAuthenticationAppDocumentController;
  [(VSAppDocumentController *)&v14 _updateViewModel:v6 error:a4];
  v7 = [(VSAppDocumentController *)self appDocument];
  v8 = [v7 error];

  if (!v8)
  {
    v12 = [(VSWebAuthenticationAppDocumentController *)self _webAuthenticationViewModelWithViewModel:v6];
    v13 = 0;
    v9 = [(VSWebAuthenticationAppDocumentController *)self _updateWebAuthenticationViewModel:v12 error:&v13];
    v8 = v13;

    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (a4)
  {
LABEL_3:
    v10 = v8;
    *a4 = v8;
  }

LABEL_4:

  return v9;
}

@end