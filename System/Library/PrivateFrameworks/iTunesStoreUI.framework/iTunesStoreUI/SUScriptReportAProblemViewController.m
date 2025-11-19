@interface SUScriptReportAProblemViewController
+ (id)webScriptNameForKeyName:(id)a3;
+ (void)initialize;
- (NSNumber)adamID;
- (SUScriptReportAProblemViewController)initWithAdamID:(id)a3 clientInterface:(id)a4;
- (id)newNativeViewController;
- (id)scriptAttributeKeys;
- (void)setAdamID:(id)a3;
@end

@implementation SUScriptReportAProblemViewController

- (SUScriptReportAProblemViewController)initWithAdamID:(id)a3 clientInterface:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = SUScriptReportAProblemViewController;
  v6 = [(SUScriptObject *)&v25 init];
  v7 = v6;
  if (v6)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v17 = MEMORY[0x1E69E9820];
    v18 = a3;
    v19 = a4;
    v20 = v6;
    WebThreadRunOnMainThread();
    if ((v22[3] & 1) == 0)
    {
      v8 = [MEMORY[0x1E69D4938] sharedConfig];
      v9 = [v8 shouldLog];
      v10 = [v8 shouldLogToDisk];
      v11 = [v8 OSLogObject];
      if (v10)
      {
        v9 |= 2u;
      }

      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v9 &= 2u;
      }

      if (v9)
      {
        v12 = [(SUScriptReportAProblemViewController *)v7 _className];
        v26 = 138412290;
        v27 = v12;
        LODWORD(v16) = 12;
        v13 = _os_log_send_and_compose_impl();
        if (v13)
        {
          v14 = v13;
          [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v26, v16, v17, 3221225472, __71__SUScriptReportAProblemViewController_initWithAdamID_clientInterface___block_invoke, &unk_1E8165CC8, v18, v19, v20, &v21}];
          free(v14);
          SSFileLog();
        }
      }

      v7 = 0;
    }

    _Block_object_dispose(&v21, 8);
  }

  return v7;
}

void __71__SUScriptReportAProblemViewController_initWithAdamID_clientInterface___block_invoke(uint64_t a1)
{
  v2 = -[SUReportConcernViewController initWithItemIdentifier:]([SUReportConcernViewController alloc], "initWithItemIdentifier:", [*(a1 + 32) itemIdentifierValue]);
  [(SUViewController *)v2 setClientInterface:*(a1 + 40)];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 48) setNativeViewController:v2];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (id)newNativeViewController
{
  v3 = [[SUReportConcernViewController alloc] initWithItemIdentifier:0];
  [(SUViewController *)v3 setClientInterface:[(SUScriptObject *)self clientInterface]];
  return v3;
}

- (NSNumber)adamID
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__37;
  v8 = __Block_byref_object_dispose__37;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __46__SUScriptReportAProblemViewController_adamID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [objc_alloc(MEMORY[0x1E696AD98]) initWithItemIdentifier:{objc_msgSend(v2, "itemIdentifier")}];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (void)setAdamID:(id)a3
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"adamID"];

  [v3 throwException:v4];
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_49 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptReportAProblemViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptReportAProblemViewController;
  v2 = [(SUScriptViewController *)&v4 scriptAttributeKeys];
  [v2 addObjectsFromArray:{objc_msgSend(__KeyMapping_49, "allKeys")}];
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __KeyMapping_49 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"adamID", 0}];
  }
}

@end