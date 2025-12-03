@interface SUScriptAMSViewController
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (NSString)DSID;
- (NSString)URL;
- (SUScriptAMSViewController)initWithPrimaryAccount:(id)account;
- (id)newNativeViewController;
- (id)scriptAttributeKeys;
- (void)setDSID:(id)d;
- (void)setURL:(id)l;
@end

@implementation SUScriptAMSViewController

- (SUScriptAMSViewController)initWithPrimaryAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = SUScriptAMSViewController;
  v6 = [(SUScriptObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_primaryAccount, account);
  }

  return v7;
}

- (id)newNativeViewController
{
  v40 = *MEMORY[0x1E69E9840];
  [(SUScriptObject *)self lock];
  bagSubProfile = [(objc_class *)getAMSUIWebViewControllerClass() bagSubProfile];
  bagSubProfileVersion = [(objc_class *)getAMSUIWebViewControllerClass() bagSubProfileVersion];
  v5 = MEMORY[0x1E698C7E0];
  bagKeySet = [(objc_class *)getAMSUIWebViewControllerClass() bagKeySet];
  [v5 registerBagKeySet:bagKeySet forProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  v7 = [MEMORY[0x1E698C7D8] bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];
  DSID = self->_DSID;
  if (!DSID || ([MEMORY[0x1E696AD98] numberWithInteger:{-[NSString integerValue](DSID, "integerValue")}], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E6959A48], "ams_sharedAccountStore"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "ams_iTunesAccountWithDSID:", v9), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, !v11))
  {
    primaryAccount = [(SUScriptAMSViewController *)self primaryAccount];
    account = [primaryAccount account];
    uniqueIdentifier = [account uniqueIdentifier];

    if (!uniqueIdentifier || ([MEMORY[0x1E6959A48] ams_sharedAccountStore], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "ams_iTunesAccountWithDSID:", uniqueIdentifier), v11 = objc_claimAutoreleasedReturnValue(), v15, uniqueIdentifier, !v11))
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      if (!mEMORY[0x1E69D4938])
      {
        mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      }

      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        v18 = shouldLog | 2;
      }

      else
      {
        v18 = shouldLog;
      }

      oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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

        oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, v38, v37, *v38, *&v38[16]}];
        free(v23);
        v36 = oSLogObject;
        SSFileLog();
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
  if (!mEMORY[0x1E69D4938]2)
  {
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
  if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
  {
    v26 = shouldLog2 | 2;
  }

  else
  {
    v26 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v31 encoding:{4, v38, v37}];
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

- (void)setDSID:(id)d
{
  dCopy = d;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    dCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptObject *)self lock];
    v4 = [dCopy copy];
    DSID = self->_DSID;
    self->_DSID = v4;

    [(SUScriptObject *)self unlock];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

- (void)setURL:(id)l
{
  lCopy = l;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    lCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptObject *)self lock];
    v4 = [lCopy copy];
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

+ (id)webScriptNameForKeyName:(id)name
{
  nameCopy = name;
  v5 = [__KeyMapping_81 objectForKey:nameCopy];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SUScriptAMSViewController;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, nameCopy);
  }

  return v5;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  v5 = SUWebScriptNameForSelector2(selector, &__SelectorMapping_61, 0);
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SUScriptAMSViewController;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, selector);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptAMSViewController;
  scriptAttributeKeys = [(SUScriptViewController *)&v5 scriptAttributeKeys];
  allKeys = [__KeyMapping_81 allKeys];
  [scriptAttributeKeys addObjectsFromArray:allKeys];

  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __KeyMapping_81 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"DSID", @"URL", @"URL", 0}];

    MEMORY[0x1EEE66BB8]();
  }
}

@end