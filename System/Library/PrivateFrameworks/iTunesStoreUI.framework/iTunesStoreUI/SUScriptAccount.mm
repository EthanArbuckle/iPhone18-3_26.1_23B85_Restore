@interface SUScriptAccount
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (BOOL)isPrimaryAccount;
- (NSNumber)dsID;
- (NSString)ITunesPassSerialNumber;
- (NSString)credits;
- (NSString)identifier;
- (NSString)kind;
- (SSAccount)account;
- (SUScriptAccount)init;
- (id)isPrimaryLockerAccount;
- (id)lockerEnabled;
- (id)purchaseHistoryEnabled;
- (id)scriptAttributeKeys;
- (id)socialEnabled;
- (void)_commitChanges;
- (void)_setServiceType:(int64_t)a3 enabled:(id)a4;
- (void)dealloc;
- (void)setAccount:(id)a3;
- (void)setCredits:(id)a3;
- (void)setDsID:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setKind:(id)a3;
- (void)setSecureToken:(id)a3;
@end

@implementation SUScriptAccount

- (SUScriptAccount)init
{
  v4.receiver = self;
  v4.super_class = SUScriptAccount;
  v2 = [(SUScriptObject *)&v4 init];
  if (v2)
  {
    v2->_account = objc_alloc_init(MEMORY[0x1E69D4888]);
  }

  return v2;
}

- (void)dealloc
{
  self->_account = 0;
  v3.receiver = self;
  v3.super_class = SUScriptAccount;
  [(SUScriptObject *)&v3 dealloc];
}

- (SSAccount)account
{
  [(SUScriptObject *)self lock];
  v3 = self->_account;
  [(SUScriptObject *)self unlock];
  return v3;
}

- (void)setAccount:(id)a3
{
  [(SUScriptObject *)self lock];
  account = self->_account;
  if (account != a3)
  {

    self->_account = a3;
  }

  [(SUScriptObject *)self unlock];
}

- (BOOL)isPrimaryAccount
{
  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69D4890] "defaultStore")];
  v4 = [(SUScriptAccount *)self dsID];

  return [v3 isEqual:v4];
}

- (void)setSecureToken:(id)a3
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
  if (!a3 || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v5 = a3, [a3 length]))
  {
LABEL_3:
    [(SSAccount *)[(SUScriptAccount *)self account] setSecureToken:v5];
    [MEMORY[0x1E69D4890] resetExpiration];

    [(SUScriptAccount *)self _commitChanges];
    return;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (NSString)credits
{
  v2 = [(SUScriptAccount *)self account];

  return [(SSAccount *)v2 creditsString];
}

- (NSNumber)dsID
{
  v2 = [(SUScriptAccount *)self account];

  return [(SSAccount *)v2 uniqueIdentifier];
}

- (NSString)identifier
{
  v2 = [(SUScriptAccount *)self account];

  return [(SSAccount *)v2 accountName];
}

- (id)isPrimaryLockerAccount
{
  v2 = [(SSAccount *)[(SUScriptAccount *)self account] isActiveLockerAccount];
  v3 = MEMORY[0x1E695E4D0];
  if (!v2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

- (NSString)kind
{
  v2 = [(SUScriptAccount *)self account];
  if ([(SSAccount *)v2 uniqueIdentifier])
  {
    if ([(SSAccount *)v2 accountKind]== 1)
    {
      return @"aol";
    }

    else
    {
      return @"apple";
    }
  }

  else
  {
    v4 = MEMORY[0x1E695DFB0];

    return [v4 null];
  }
}

- (NSString)ITunesPassSerialNumber
{
  v2 = [(SUScriptAccount *)self account];

  return [(SSAccount *)v2 ITunesPassSerialNumber];
}

- (id)lockerEnabled
{
  v2 = [(SSAccount *)[(SUScriptAccount *)self account] enabledServiceTypes];
  v3 = MEMORY[0x1E695E4D0];
  if ((v2 & 4) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

- (id)purchaseHistoryEnabled
{
  v2 = [(SSAccount *)[(SUScriptAccount *)self account] enabledServiceTypes];
  v3 = MEMORY[0x1E695E4D0];
  if ((v2 & 2) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

- (void)setCredits:(id)a3
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
    [(SSAccount *)[(SUScriptAccount *)self account] setCreditsString:v5];

    [(SUScriptAccount *)self _commitChanges];
    return;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (void)setDsID:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a3 = 0;
  }

  v5 = SSGetUnsignedLongLongFromValue();
  v6 = v5;
  if (a3 && !v5)
  {
    v7 = MEMORY[0x1E69E2F88];
    v8 = @"Invalid argument";
LABEL_11:

    [v7 throwException:v8];
    return;
  }

  v9 = [(SUScriptAccount *)self account];
  v10 = v9;
  if (a3)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6];
    v12 = [objc_msgSend(MEMORY[0x1E69D4890] "defaultStore")];
    if (v12 && v12 != v10)
    {
      v7 = MEMORY[0x1E69E2F88];
      v8 = @"A different account already exists for the DSID";
      goto LABEL_11;
    }

    v9 = v10;
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  [(SSAccount *)v9 setUniqueIdentifier:v13];

  [(SUScriptAccount *)self _commitChanges];
}

- (void)setIdentifier:(id)a3
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
    [(SSAccount *)[(SUScriptAccount *)self account] setAccountName:v5];

    [(SUScriptAccount *)self _commitChanges];
    return;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (void)setKind:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a3 isEqualToString:@"aol"])
    {
      v5 = [(SUScriptAccount *)self account];
      v6 = 1;
LABEL_10:
      [(SSAccount *)v5 setAccountKind:v6];

      [(SUScriptAccount *)self _commitChanges];
      return;
    }

    if ([a3 isEqualToString:@"apple"])
    {
      v5 = [(SUScriptAccount *)self account];
      v6 = 0;
      goto LABEL_10;
    }

    v7 = MEMORY[0x1E69E2F88];
    v8 = @"Unknown kind";
  }

  else
  {
    v7 = MEMORY[0x1E69E2F88];
    v8 = @"Invalid argument";
  }

  [v7 throwException:v8];
}

- (id)socialEnabled
{
  v2 = [(SSAccount *)[(SUScriptAccount *)self account] enabledServiceTypes];
  v3 = MEMORY[0x1E695E4D0];
  if ((v2 & 1) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

- (void)_commitChanges
{
  v2 = [(SUScriptAccount *)self account];
  if ([(SSAccount *)v2 uniqueIdentifier])
  {
    v3 = [MEMORY[0x1E69D4890] defaultStore];

    [v3 addAccount:v2];
  }
}

- (void)_setServiceType:(int64_t)a3 enabled:(id)a4
{
  if (objc_opt_respondsToSelector())
  {
    v7 = [a4 BOOLValue];
    v8 = [(SUScriptAccount *)self account];
    if (v7)
    {
      [(SSAccount *)v8 addEnabledServiceTypes:a3];
    }

    else
    {
      [(SSAccount *)v8 removeEnabledServiceTypes:a3];
    }

    [(SUScriptAccount *)self _commitChanges];
  }

  else
  {
    v9 = MEMORY[0x1E69E2F88];

    [v9 throwException:@"Invalid argument"];
  }
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_14 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptAccount;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_11, 4);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptAccount;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptAccount;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_14 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_11 = sel_isManagedAppleID;
    *algn_1EBF3AA28 = @"isManagedAppleID";
    qword_1EBF3AA30 = sel_isPrimaryAccount;
    unk_1EBF3AA38 = @"isPrimaryAccount";
    qword_1EBF3AA40 = sel_isSecureTokenValid;
    unk_1EBF3AA48 = @"isSecureTokenValid";
    qword_1EBF3AA50 = sel_setSecureToken_;
    unk_1EBF3AA58 = @"setSecureToken";
    __KeyMapping_14 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"credits", @"dsID", @"dsID", @"identifier", @"identifier", @"isPrimaryLockerAccount", @"isPrimaryLockerAccount", @"ITunesPassSerialNumber", @"ITunesPassSerialNumber", @"kind", @"kind", @"lockerEnabled", @"lockerEnabled", @"purchaseHistoryEnabled", @"purchaseHistoryEnabled", @"socialEnabled", @"socialEnabled", 0}];
  }
}

@end