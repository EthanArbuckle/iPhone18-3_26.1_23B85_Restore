@interface SUScriptAccount
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
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
- (void)_setServiceType:(int64_t)type enabled:(id)enabled;
- (void)dealloc;
- (void)setAccount:(id)account;
- (void)setCredits:(id)credits;
- (void)setDsID:(id)d;
- (void)setIdentifier:(id)identifier;
- (void)setKind:(id)kind;
- (void)setSecureToken:(id)token;
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

- (void)setAccount:(id)account
{
  [(SUScriptObject *)self lock];
  account = self->_account;
  if (account != account)
  {

    self->_account = account;
  }

  [(SUScriptObject *)self unlock];
}

- (BOOL)isPrimaryAccount
{
  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69D4890] "defaultStore")];
  dsID = [(SUScriptAccount *)self dsID];

  return [v3 isEqual:dsID];
}

- (void)setSecureToken:(id)token
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
  if (!token || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v5 = token, [token length]))
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
  account = [(SUScriptAccount *)self account];

  return [(SSAccount *)account creditsString];
}

- (NSNumber)dsID
{
  account = [(SUScriptAccount *)self account];

  return [(SSAccount *)account uniqueIdentifier];
}

- (NSString)identifier
{
  account = [(SUScriptAccount *)self account];

  return [(SSAccount *)account accountName];
}

- (id)isPrimaryLockerAccount
{
  isActiveLockerAccount = [(SSAccount *)[(SUScriptAccount *)self account] isActiveLockerAccount];
  v3 = MEMORY[0x1E695E4D0];
  if (!isActiveLockerAccount)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

- (NSString)kind
{
  account = [(SUScriptAccount *)self account];
  if ([(SSAccount *)account uniqueIdentifier])
  {
    if ([(SSAccount *)account accountKind]== 1)
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
  account = [(SUScriptAccount *)self account];

  return [(SSAccount *)account ITunesPassSerialNumber];
}

- (id)lockerEnabled
{
  enabledServiceTypes = [(SSAccount *)[(SUScriptAccount *)self account] enabledServiceTypes];
  v3 = MEMORY[0x1E695E4D0];
  if ((enabledServiceTypes & 4) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

- (id)purchaseHistoryEnabled
{
  enabledServiceTypes = [(SSAccount *)[(SUScriptAccount *)self account] enabledServiceTypes];
  v3 = MEMORY[0x1E695E4D0];
  if ((enabledServiceTypes & 2) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

- (void)setCredits:(id)credits
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
  if (!credits || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = credits, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    [(SSAccount *)[(SUScriptAccount *)self account] setCreditsString:v5];

    [(SUScriptAccount *)self _commitChanges];
    return;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (void)setDsID:(id)d
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    d = 0;
  }

  v5 = SSGetUnsignedLongLongFromValue();
  v6 = v5;
  if (d && !v5)
  {
    v7 = MEMORY[0x1E69E2F88];
    v8 = @"Invalid argument";
LABEL_11:

    [v7 throwException:v8];
    return;
  }

  account = [(SUScriptAccount *)self account];
  v10 = account;
  if (d)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6];
    v12 = [objc_msgSend(MEMORY[0x1E69D4890] "defaultStore")];
    if (v12 && v12 != v10)
    {
      v7 = MEMORY[0x1E69E2F88];
      v8 = @"A different account already exists for the DSID";
      goto LABEL_11;
    }

    account = v10;
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  [(SSAccount *)account setUniqueIdentifier:v13];

  [(SUScriptAccount *)self _commitChanges];
}

- (void)setIdentifier:(id)identifier
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
  if (!identifier || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = identifier, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    [(SSAccount *)[(SUScriptAccount *)self account] setAccountName:v5];

    [(SUScriptAccount *)self _commitChanges];
    return;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (void)setKind:(id)kind
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([kind isEqualToString:@"aol"])
    {
      account = [(SUScriptAccount *)self account];
      v6 = 1;
LABEL_10:
      [(SSAccount *)account setAccountKind:v6];

      [(SUScriptAccount *)self _commitChanges];
      return;
    }

    if ([kind isEqualToString:@"apple"])
    {
      account = [(SUScriptAccount *)self account];
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
  enabledServiceTypes = [(SSAccount *)[(SUScriptAccount *)self account] enabledServiceTypes];
  v3 = MEMORY[0x1E695E4D0];
  if ((enabledServiceTypes & 1) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

- (void)_commitChanges
{
  account = [(SUScriptAccount *)self account];
  if ([(SSAccount *)account uniqueIdentifier])
  {
    defaultStore = [MEMORY[0x1E69D4890] defaultStore];

    [defaultStore addAccount:account];
  }
}

- (void)_setServiceType:(int64_t)type enabled:(id)enabled
{
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [enabled BOOLValue];
    account = [(SUScriptAccount *)self account];
    if (bOOLValue)
    {
      [(SSAccount *)account addEnabledServiceTypes:type];
    }

    else
    {
      [(SSAccount *)account removeEnabledServiceTypes:type];
    }

    [(SUScriptAccount *)self _commitChanges];
  }

  else
  {
    v9 = MEMORY[0x1E69E2F88];

    [v9 throwException:@"Invalid argument"];
  }
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_14 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptAccount;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_11, 4);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptAccount;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptAccount;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_14 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
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