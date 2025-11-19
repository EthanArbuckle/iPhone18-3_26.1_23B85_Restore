@interface SUScriptAMSViewController
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (NSString)DSID;
- (NSString)URL;
- (SUScriptAMSViewController)initWithPrimaryAccount:(id)a3;
- (id)newNativeViewController;
- (id)scriptAttributeKeys;
- (void)setDSID:(id)a3;
- (void)setURL:(id)a3;
@end

@implementation SUScriptAMSViewController

- (SUScriptAMSViewController)initWithPrimaryAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUScriptAMSViewController;
  v6 = [(SUScriptObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_primaryAccount, a3);
  }

  return v7;
}

- (id)newNativeViewController
{
  v40 = *MEMORY[0x1E69E9840];
  [(SUScriptObject *)self lock];
  v3 = [(objc_class *)getAMSUIWebViewControllerClass() bagSubProfile];
  v4 = [(objc_class *)getAMSUIWebViewControllerClass() bagSubProfileVersion];
  v5 = MEMORY[0x1E698C7E0];
  v6 = [(objc_class *)getAMSUIWebViewControllerClass() bagKeySet];
  [v5 registerBagKeySet:v6 forProfile:v3 profileVersion:v4];

  v7 = [MEMORY[0x1E698C7D8] bagForProfile:v3 profileVersion:v4];
  DSID = self->_DSID;
  if (!DSID || ([MEMORY[0x1E696AD98] numberWithInteger:{-[NSString integerValue](DSID, "integerValue")}], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E6959A48], "ams_sharedAccountStore"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "ams_iTunesAccountWithDSID:", v9), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, !v11))
  {
    v12 = [(SUScriptAMSViewController *)self primaryAccount];
    v13 = [v12 account];
    v14 = [v13 uniqueIdentifier];

    if (!v14 || ([MEMORY[0x1E6959A48] ams_sharedAccountStore], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "ams_iTunesAccountWithDSID:", v14), v11 = objc_claimAutoreleasedReturnValue(), v15, v14, !v11))
    {
      v16 = [MEMORY[0x1E69D4938] sharedConfig];
      if (!v16)
      {
        v16 = [MEMORY[0x1E69D4938] sharedConfig];
      }

      v17 = [v16 shouldLog];
      if ([v16 shouldLogToDisk])
      {
        v18 = v17 | 2;
      }

      else
      {
        v18 = v17;
      }

      v19 = [v16 OSLogObject];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v20 = objc_opt_class();
        v21 = self->_DSID;
        *v38 = 138543618;
        *&v38[4] = v20;
        *&v38[12] = 2112;
        *&v38[14] = v21;
        v22 = v20;
        LODWORD(v37) = 22;
        v36 = v38;
        v23 = _os_log_send_and_compose_impl();

        if (!v23)
        {
LABEL_16:

          v11 = 0;
          goto LABEL_17;
        }

        v19 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, v38, v37, *v38, *&v38[16]}];
        free(v23);
        v36 = v19;
        SSFileLog();
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  v24 = [MEMORY[0x1E69D4938] sharedConfig];
  if (!v24)
  {
    v24 = [MEMORY[0x1E69D4938] sharedConfig];
  }

  v25 = [v24 shouldLog];
  if ([v24 shouldLogToDisk])
  {
    v26 = v25 | 2;
  }

  else
  {
    v26 = v25;
  }

  v27 = [v24 OSLogObject];
  if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v26 &= 2u;
  }

  if (!v26)
  {
    goto LABEL_27;
  }

  v28 = objc_opt_class();
  URL = self->_URL;
  *v38 = 138543874;
  *&v38[4] = v28;
  *&v38[12] = 2112;
  *&v38[14] = URL;
  *&v38[22] = 2112;
  v39 = v11;
  v30 = v28;
  LODWORD(v37) = 32;
  v31 = _os_log_send_and_compose_impl();

  if (v31)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithCString:v31 encoding:{4, v38, v37}];
    free(v31);
    SSFileLog();
LABEL_27:
  }

  v32 = [objc_alloc(getAMSUIWebViewControllerClass()) initWithBag:v7 account:v11 clientInfo:0];
  v33 = [MEMORY[0x1E695DFF8] URLWithString:self->_URL];
  v34 = [v32 loadURL:v33];

  [(SUScriptObject *)self unlock];
  return v32;
}

- (NSString)DSID
{
  [(SUScriptObject *)self lock];
  v3 = self->_DSID;
  [(SUScriptObject *)self unlock];

  return v3;
}

- (void)setDSID:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v6 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptObject *)self lock];
    v4 = [v6 copy];
    DSID = self->_DSID;
    self->_DSID = v4;

    [(SUScriptObject *)self unlock];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

- (void)setURL:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v6 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptObject *)self lock];
    v4 = [v6 copy];
    URL = self->_URL;
    self->_URL = v4;

    [(SUScriptObject *)self unlock];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

- (NSString)URL
{
  [(SUScriptObject *)self lock];
  v3 = self->_URL;
  [(SUScriptObject *)self unlock];

  return v3;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  v4 = a3;
  v5 = [__KeyMapping_81 objectForKey:v4];
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SUScriptAMSViewController;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, v4);
  }

  return v5;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  v5 = SUWebScriptNameForSelector2(a3, &__SelectorMapping_61, 0);
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SUScriptAMSViewController;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, a3);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptAMSViewController;
  v2 = [(SUScriptViewController *)&v5 scriptAttributeKeys];
  v3 = [__KeyMapping_81 allKeys];
  [v2 addObjectsFromArray:v3];

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __KeyMapping_81 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"DSID", @"URL", @"URL", 0}];

    MEMORY[0x1EEE66BB8]();
  }
}

@end