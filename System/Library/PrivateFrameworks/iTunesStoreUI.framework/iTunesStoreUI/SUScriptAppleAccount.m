@interface SUScriptAppleAccount
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (ACAccount)nativeAccount;
- (ACAccountStore)nativeAccountStore;
- (SUScriptAppleAccount)initWithACAccount:(id)a3 accountStore:(id)a4;
- (SUScriptAppleAccountCredential)credential;
- (SUScriptAppleAccountType)accountType;
- (id)scriptAttributeKeys;
- (void)dealloc;
- (void)setAgeVerificationExpirationDate:(id)a3 completionHandler:(id)a4;
@end

@implementation SUScriptAppleAccount

- (SUScriptAppleAccount)initWithACAccount:(id)a3 accountStore:(id)a4
{
  v8.receiver = self;
  v8.super_class = SUScriptAppleAccount;
  v6 = [(SUScriptObject *)&v8 init];
  if (v6)
  {
    v6->_account = a3;
    v6->_accountStore = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptAppleAccount;
  [(SUScriptObject *)&v3 dealloc];
}

- (ACAccount)nativeAccount
{
  v2 = self->_account;

  return v2;
}

- (ACAccountStore)nativeAccountStore
{
  v2 = self->_accountStore;

  return v2;
}

- (void)setAgeVerificationExpirationDate:(id)a3 completionHandler:(id)a4
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
      v7 = [a3 copyDate];
      [v7 timeIntervalSince1970];
      account = self->_account;
      v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v8];
      [(ACAccount *)account ams_setAccountFlagValue:v10 forAccountFlag:*MEMORY[0x1E698C498]];
      v11 = [(ACAccountStore *)self->_accountStore ams_saveAccount:self->_account verifyCredentials:0];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __75__SUScriptAppleAccount_setAgeVerificationExpirationDate_completionHandler___block_invoke;
      v13[3] = &unk_1E8166000;
      v13[4] = self;
      v13[5] = a4;
      [v11 addFinishBlock:v13];

      return;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a4 = [[SUScriptFunction alloc] initWithScriptObject:a4];
      goto LABEL_8;
    }
  }

  v12 = MEMORY[0x1E69E2F88];

  [v12 throwException:@"Invalid argument"];
}

void __75__SUScriptAppleAccount_setAgeVerificationExpirationDate_completionHandler___block_invoke(uint64_t a1, uint64_t a2, SUScriptError *a3)
{
  v18 = *MEMORY[0x1E69E9840];
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
      v14 = 138412546;
      v15 = objc_opt_class();
      v16 = 2112;
      v17 = a3;
      LODWORD(v13) = 22;
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
  }

  if (a3)
  {
    a3 = [[SUScriptError alloc] initWithError:a3];
  }

  [*(a1 + 40) callWithArguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a2, v12), a3, 0)}];
  [*(a1 + 40) setThisObject:0];
}

- (SUScriptAppleAccountType)accountType
{
  v3 = [(ACAccount *)self->_account accountType];
  if (v3)
  {
    v3 = [[SUScriptAppleAccountType alloc] initWithACAccountType:v3];
    [(SUScriptObject *)self checkInScriptObject:v3];
  }

  return v3;
}

- (SUScriptAppleAccountCredential)credential
{
  v3 = [(ACAccount *)self->_account credential];
  if (v3)
  {
    v3 = [[SUScriptAppleAccountCredential alloc] initWithACAccountCredential:v3];
    [(SUScriptObject *)self checkInScriptObject:v3];
  }

  return v3;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_68 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptAppleAccount;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_51, 2);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptAppleAccount;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptAppleAccount;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_68 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_51 = sel_reload;
    unk_1EBF3B770 = @"reload";
    qword_1EBF3B778 = sel_setAgeVerificationExpirationDate_completionHandler_;
    unk_1EBF3B780 = @"setAgeVerificationExpirationDate";
    __KeyMapping_68 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"accountDescription", @"accountType", @"accountType", @"credential", @"credential", @"dsID", @"dsID", @"identifier", @"identifier", @"username", @"username", 0}];
  }
}

@end