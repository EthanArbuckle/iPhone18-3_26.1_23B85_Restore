@interface SUScriptAppleAccountStore
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (NSString)effectiveBundleID;
- (SUScriptAppleAccount)activeStoreAccount;
- (SUScriptAppleAccount)primaryAppleAccount;
- (SUScriptAppleAccountStore)init;
- (id)_accountStore;
- (id)accountTypeWithIdentifier:(id)a3;
- (id)accountsWithAccountType:(id)a3;
- (id)makeClientAccessInfoWithAccountType:(id)a3;
- (id)scriptAttributeKeys;
- (void)dealloc;
- (void)renewCredentialsForAccount:(id)a3 completionHandler:(id)a4;
- (void)requestAccessWithInfo:(id)a3 completionHandler:(id)a4;
- (void)setEffectiveBundleID:(id)a3;
@end

@implementation SUScriptAppleAccountStore

- (SUScriptAppleAccountStore)init
{
  v4.receiver = self;
  v4.super_class = SUScriptAppleAccountStore;
  v2 = [(SUScriptObject *)&v4 init];
  if (v2)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  return v2;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = SUScriptAppleAccountStore;
  [(SUScriptObject *)&v3 dealloc];
}

- (id)accountsWithAccountType:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(SUScriptAppleAccountStore *)self _accountStore];
    v7 = [v6 accountsWithAccountType:{objc_msgSend(a3, "nativeAccountType")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [[SUScriptAppleAccount alloc] initWithACAccount:*(*(&v14 + 1) + 8 * v11) accountStore:v6];
          [v5 addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [(SUScriptObject *)self checkInScriptObjects:v5];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  return v5;
}

- (id)accountTypeWithIdentifier:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [-[SUScriptAppleAccountStore _accountStore](self "_accountStore")];
    if (v5)
    {
      v5 = [[SUScriptAppleAccountType alloc] initWithACAccountType:v5];
      [(SUScriptObject *)self checkInScriptObject:v5];
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v5 = 0;
  }

  return v5;
}

- (id)makeClientAccessInfoWithAccountType:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(SUScriptACClientAccessInfo);
    [(SUScriptACClientAccessInfo *)v5 setAccountType:a3];
    [(SUScriptObject *)self checkInScriptObject:v5];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v5 = 0;
  }

  return v5;
}

- (void)renewCredentialsForAccount:(id)a3 completionHandler:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a4 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!a4)
    {
LABEL_8:
      [a4 setThisObject:self];
      v7 = [(SUScriptAppleAccountStore *)self _accountStore];
      v8 = [a3 nativeAccount];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __74__SUScriptAppleAccountStore_renewCredentialsForAccount_completionHandler___block_invoke;
      v10[3] = &unk_1E81670A0;
      v10[4] = self;
      v10[5] = a4;
      [v7 renewCredentialsForAccount:v8 completion:v10];

      return;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a4 = [[SUScriptFunction alloc] initWithScriptObject:a4];
      goto LABEL_8;
    }

    v9 = MEMORY[0x1E69E2F88];
  }

  else
  {
    v9 = MEMORY[0x1E69E2F88];
  }

  [v9 throwException:@"Invalid argument"];
}

void __74__SUScriptAppleAccountStore_renewCredentialsForAccount_completionHandler___block_invoke(uint64_t a1, uint64_t a2, SUScriptError *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69D4938] sharedConfig];
  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v14 = 138412802;
    v15 = objc_opt_class();
    v16 = 2048;
    v17 = a2;
    v18 = 2112;
    v19 = a3;
    LODWORD(v13) = 32;
    v12 = &v14;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v14, v13}];
      free(v10);
      v12 = v11;
      SSFileLog();
    }
  }

  if (a3)
  {
    a3 = [[SUScriptError alloc] initWithError:a3];
  }

  [*(a1 + 40) callWithArguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a2, v12), a3, 0)}];
  [*(a1 + 40) setThisObject:0];
}

- (void)requestAccessWithInfo:(id)a3 completionHandler:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a4 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!a4)
    {
LABEL_8:
      [a4 setThisObject:self];
      v7 = [a3 accountType];
      v8 = [(SUScriptAppleAccountStore *)self _accountStore];
      v9 = [v7 nativeAccountType];
      v10 = [a3 accessInfoDictionary];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __69__SUScriptAppleAccountStore_requestAccessWithInfo_completionHandler___block_invoke;
      v12[3] = &unk_1E8166000;
      v12[4] = self;
      v12[5] = a4;
      [v8 requestAccessToAccountsWithType:v9 options:v10 completion:v12];

      return;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a4 = [[SUScriptFunction alloc] initWithScriptObject:a4];
      goto LABEL_8;
    }

    v11 = MEMORY[0x1E69E2F88];
  }

  else
  {
    v11 = MEMORY[0x1E69E2F88];
  }

  [v11 throwException:@"Invalid argument"];
}

void __69__SUScriptAppleAccountStore_requestAccessWithInfo_completionHandler___block_invoke(uint64_t a1, int a2, SUScriptError *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v6 = [MEMORY[0x1E69D4938] sharedConfig];
    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v13 = 138412546;
      v14 = objc_opt_class();
      v15 = 2112;
      v16 = a3;
      LODWORD(v12) = 22;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v13, v12}];
        free(v10);
        SSFileLog();
      }
    }
  }

  if (a3)
  {
    a3 = [[SUScriptError alloc] initWithError:a3];
  }

  v11 = MEMORY[0x1E695E4C0];
  if (a2)
  {
    v11 = MEMORY[0x1E695E4D0];
  }

  [*(a1 + 40) callWithArguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", *v11, a3, 0)}];
  [*(a1 + 40) setThisObject:0];
}

- (SUScriptAppleAccount)activeStoreAccount
{
  v3 = [(SUScriptAppleAccountStore *)self _accountStore];
  result = [v3 ams_activeiTunesAccount];
  if (result)
  {
    v5 = [[SUScriptAppleAccount alloc] initWithACAccount:result accountStore:v3];
    [(SUScriptObject *)self checkInScriptObject:v5];

    return v5;
  }

  return result;
}

- (SUScriptAppleAccount)primaryAppleAccount
{
  v2 = [(SUScriptAppleAccountStore *)self _accountStore];
  result = [v2 aa_primaryAppleAccount];
  if (result)
  {
    v4 = [[SUScriptAppleAccount alloc] initWithACAccount:result accountStore:v2];

    return v4;
  }

  return result;
}

- (NSString)effectiveBundleID
{
  [(SUScriptObject *)self lock];
  v3 = self->_effectiveBundleID;
  [(SUScriptObject *)self unlock];
  return v3;
}

- (void)setEffectiveBundleID:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
LABEL_3:
    [(SUScriptObject *)self lock];
    effectiveBundleID = self->_effectiveBundleID;
    if (effectiveBundleID != v5 && ![(NSString *)effectiveBundleID isEqualToString:v5])
    {

      self->_effectiveBundleID = [(NSString *)v5 copy];
      self->_accountStore = 0;
    }

    [(SUScriptObject *)self unlock];
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

  v8 = MEMORY[0x1E69E2F88];

  [v8 throwException:@"Invalid argument"];
}

- (id)_accountStore
{
  [(SUScriptObject *)self lock];
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    effectiveBundleID = self->_effectiveBundleID;
    v5 = ISWeakLinkedClassForString();
    if (effectiveBundleID)
    {
      accountStore = [[v5 alloc] initWithEffectiveBundleID:self->_effectiveBundleID];
    }

    else
    {
      accountStore = objc_alloc_init(v5);
    }

    self->_accountStore = accountStore;
  }

  v6 = accountStore;
  [(SUScriptObject *)self unlock];
  return v6;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_66 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptAppleAccountStore;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_50, 5);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptAppleAccountStore;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptAppleAccountStore;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_66 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_50 = sel_accountsWithAccountType_;
    unk_1EBF3B710 = @"getAccountsWithAccountType";
    qword_1EBF3B718 = sel_accountTypeWithIdentifier_;
    unk_1EBF3B720 = @"getAccountTypeWithIdentifier";
    qword_1EBF3B728 = sel_makeClientAccessInfoWithAccountType_;
    unk_1EBF3B730 = @"createAccessInfo";
    qword_1EBF3B738 = sel_renewCredentialsForAccount_completionHandler_;
    unk_1EBF3B740 = @"renewCredentials";
    qword_1EBF3B748 = sel_requestAccessWithInfo_completionHandler_;
    unk_1EBF3B750 = @"requestAccess";
    __KeyMapping_66 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"activeStoreAccount", @"effectiveBundleID", @"effectiveBundleID", @"primaryAppleAccount", @"primaryAppleAccount", @"ACCESS_PURPOSE_READ", @"accessPurposeRead", @"ACCESS_PURPOSE_READ_WRITE", @"accessPurposeReadWrite", @"ACCESS_PURPOSE_WRITE", @"accessPurposeWrite", @"ACCOUNT_TYPE_IDENTIFIER_FACEBOOK", @"accountTypeIdentifierFacebook", @"ACCOUNT_TYPE_IDENTIFIER_SINA_WEIBO", @"accountTypeIdentifierSinaWeibo", @"ACCOUNT_TYPE_IDENTIFIER_TWITTER", @"accountTypeIdentifierTwitter", @"RENEW_RESULT_FAILED", @"renewResultFailed", @"RENEW_RESULT_REJECTED", @"renewResultRejected", @"RENEW_RESULT_RENEWED", @"renewResultRenewed", 0}];
  }
}

@end