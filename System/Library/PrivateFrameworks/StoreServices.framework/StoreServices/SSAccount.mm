@interface SSAccount
+ (BOOL)isManagedAppleIDFromAuthenticationResponseDictionary:(id)dictionary;
+ (BOOL)isNewCustomerFromAuthenticationResponseDictionary:(id)dictionary;
+ (id)DSIDFromAuthenticationResponseDictionary:(id)dictionary;
+ (id)_countryCodeFromStorefrontIdentifier:(id)identifier;
+ (id)_valueForFirstAvailableKeyPath:(id)path inDictionary:(id)dictionary;
+ (id)accountNameFromAuthenticationResponseDictionary:(id)dictionary;
+ (id)altDSIDFromAuthenticationResponseDictionary:(id)dictionary;
+ (id)creditsStringFromAuthenticationResponseDictionary:(id)dictionary;
+ (id)firstNameFromAuthenticationResponseDictionary:(id)dictionary;
+ (id)lastNameFromAuthenticationResponseDictionary:(id)dictionary;
+ (id)secureTokenForIdentifier:(id)identifier;
+ (id)serverValueForAccountPasswordSettingValue:(int64_t)value;
+ (id)storeFrontIdentifierFromURLResponse:(id)response;
+ (int64_t)accountKindFromAuthenticationResponseDictionary:(id)dictionary;
- (ACAccount)backingAccount;
- (BOOL)didFallbackToPassword;
- (BOOL)displayedServerPromptWithIdentifier:(id)identifier;
- (BOOL)hasBrokenDSID;
- (BOOL)isActive;
- (BOOL)isActiveLockerAccount;
- (BOOL)isAuthenticated;
- (BOOL)isDemoAccount;
- (BOOL)isDirty;
- (BOOL)isDuplicate:(id)duplicate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLocalAccount;
- (BOOL)isManagedAppleID;
- (BOOL)isNewCustomer;
- (BOOL)mergeValuesFromAccount:(id)account;
- (NSArray)automaticDownloadKinds;
- (NSNumber)uniqueIdentifier;
- (NSString)accountName;
- (NSString)description;
- (NSString)localizedName;
- (NSString)passwordEquivalentToken;
- (NSString)rawPassword;
- (NSString)secureToken;
- (SSAccount)init;
- (SSAccount)initWithBackingAccount:(id)account;
- (SSAccount)initWithXPCEncoding:(id)encoding;
- (id)_backingAccount;
- (id)accountPropertyForKey:(id)key;
- (id)copyLockdownRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)eligibilityForService:(int64_t)service;
- (id)hashedDescription;
- (id)lastAttemptDateForServerPromptWithIdentifier:(id)identifier;
- (id)popBiometricToken;
- (int64_t)accountKind;
- (int64_t)accountScope;
- (int64_t)accountSource;
- (int64_t)availableServiceTypes;
- (int64_t)enabledServiceTypes;
- (int64_t)freeDownloadsPasswordSetting;
- (int64_t)paidPurchasesPasswordSetting;
- (unint64_t)hash;
- (void)_addAccountPropertyBitmask:(int64_t)bitmask forKey:(id)key;
- (void)_removeAccountPropertyBitmask:(int64_t)bitmask forKey:(id)key;
- (void)_sendMessage:(id)message withReply:(id)reply;
- (void)_setAccountProperty:(id)property forKey:(id)key;
- (void)_setBackingAccount:(id)account;
- (void)acceptTermsAndConditions:(id)conditions withCompletionBlock:(id)block;
- (void)getDownloadKindsEligibleForContentRestoreWithBlock:(id)block;
- (void)getEligibilityForService:(int64_t)service completionBlock:(id)block;
- (void)getITunesMatchStatusWithCompletionBlock:(id)block;
- (void)getKeybagSyncDataWithType:(int64_t)type completionHandler:(id)handler;
- (void)getPurchasedItemsForItems:(id)items completionBlock:(id)block;
- (void)getTermsAndConditionsWithBlock:(id)block;
- (void)resetTransientData;
- (void)setAccountKind:(int64_t)kind;
- (void)setAccountName:(id)name;
- (void)setAccountScope:(int64_t)scope;
- (void)setAccountSource:(int64_t)source;
- (void)setActive:(BOOL)active;
- (void)setActiveLockerAccount:(BOOL)account;
- (void)setAuthenticated:(BOOL)authenticated;
- (void)setAutomaticDownloadKinds:(id)kinds;
- (void)setAvailableServiceTypes:(int64_t)types;
- (void)setBiometricToken:(id)token;
- (void)setDidFallbackToPassword:(BOOL)password;
- (void)setDisplayedServerPrompt:(BOOL)prompt withIdentifier:(id)identifier;
- (void)setEligibility:(id)eligibility forServiceType:(int64_t)type;
- (void)setEnabledServiceTypes:(int64_t)types;
- (void)setFreeDownloadsPasswordSetting:(int64_t)setting;
- (void)setLastAttemptDate:(id)date forServerPromptWithIdentifier:(id)identifier;
- (void)setLockdownDictionary:(id)dictionary;
- (void)setManagedAppleID:(BOOL)d;
- (void)setNewCustomer:(BOOL)customer;
- (void)setPaidPurchasesPasswordSetting:(int64_t)setting;
- (void)setPasswordEquivalentToken:(id)token;
- (void)setRawPassword:(id)password;
- (void)setSecureToken:(id)token;
- (void)setSocialEnabled:(BOOL)enabled;
- (void)setStoreFrontIdentifier:(id)identifier forRequest:(id)request response:(id)response;
- (void)updateAccountPasswordSettingsWithRequestProperties:(id)properties completionBlock:(id)block;
@end

@implementation SSAccount

void __27__SSAccount_isLocalAccount__block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(a1 + 32) _backingAccount];
  *(*(*(a1 + 40) + 8) + 24) = [v2 backingAccountIsLocalAccount:v3];
}

- (BOOL)hasBrokenDSID
{
  uniqueIdentifier = [(SSAccount *)self uniqueIdentifier];
  if (uniqueIdentifier)
  {
    uniqueIdentifier2 = [(SSAccount *)self uniqueIdentifier];
    v5 = [uniqueIdentifier2 isEqualToNumber:&unk_1F507A120];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (NSNumber)uniqueIdentifier
{
  if ([(SSAccount *)self isLocalAccount])
  {
    v3 = &unk_1F507A138;
  }

  else
  {
    backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
    dispatch_assert_queue_not_V2(backingAccountAccessQueue);

    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__15;
    v12 = __Block_byref_object_dispose__15;
    v13 = 0;
    backingAccountAccessQueue2 = [(SSAccount *)self backingAccountAccessQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __29__SSAccount_uniqueIdentifier__block_invoke;
    v7[3] = &unk_1E84ABF40;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(backingAccountAccessQueue2, v7);

    v3 = SSAccountGetUniqueIdentifierFromValue(v9[5]);
    _Block_object_dispose(&v8, 8);
  }

  return v3;
}

- (BOOL)isLocalAccount
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__SSAccount_isLocalAccount__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(backingAccountAccessQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)isActive
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __21__SSAccount_isActive__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(backingAccountAccessQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __21__SSAccount_isActive__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _backingAccount];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isActive];
}

- (id)_backingAccount
{
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  dispatch_assert_queue_V2(backingAccountAccessQueue);

  backingAccount = self->_backingAccount;

  return backingAccount;
}

- (SSAccount)init
{
  v3 = objc_alloc(MEMORY[0x1E6959A28]);
  v4 = +[SSAccountStore defaultStore];
  iTunesStoreAccountType = [v4 iTunesStoreAccountType];
  v6 = [v3 initWithAccountType:iTunesStoreAccountType];
  v7 = [(SSAccount *)self initWithBackingAccount:v6];

  if (v7)
  {
    [(SSAccount *)v7 setActive:0];
  }

  return v7;
}

- (SSAccount)initWithBackingAccount:(id)account
{
  accountCopy = account;
  v11.receiver = self;
  v11.super_class = SSAccount;
  v6 = [(SSAccount *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingAccount, account);
    v8 = dispatch_queue_create("com.apple.StoreServices.SSAccount.backingAccountAccessQueue", MEMORY[0x1E69E96A8]);
    backingAccountAccessQueue = v7->_backingAccountAccessQueue;
    v7->_backingAccountAccessQueue = v8;
  }

  return v7;
}

- (int64_t)accountKind
{
  v2 = [(SSAccount *)self accountPropertyForKey:@"kind"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (NSString)accountName
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__SSAccount_accountName__block_invoke;
  v6[3] = &unk_1E84ABF40;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(backingAccountAccessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __24__SSAccount_accountName__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _backingAccount];
  v2 = [v5 username];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (int64_t)accountScope
{
  v3 = [(SSAccount *)self accountPropertyForKey:@"scope"];
  if (!v3)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __25__SSAccount_accountScope__block_invoke;
    v8[3] = &unk_1E84ABF40;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(backingAccountAccessQueue, v8);

    if (*(v10 + 24))
    {
      v5 = &unk_1F507A108;
    }

    else
    {
      v5 = &unk_1F507A120;
    }

    v3 = v5;
    _Block_object_dispose(&v9, 8);
  }

  integerValue = [v3 integerValue];

  return integerValue;
}

void __25__SSAccount_accountScope__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _backingAccount];
  v2 = [v4 accountType];
  v3 = [v2 identifier];
  *(*(*(a1 + 40) + 8) + 24) = [v3 isEqualToString:*MEMORY[0x1E6959938]];
}

- (NSArray)automaticDownloadKinds
{
  v2 = [(SSAccount *)self accountPropertyForKey:@"automaticDownloadKinds"];
  v3 = [v2 copy];

  return v3;
}

- (int64_t)availableServiceTypes
{
  v2 = [(SSAccount *)self accountPropertyForKey:@"availableServiceTypes"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (ACAccount)backingAccount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__SSAccount_backingAccount__block_invoke;
  v6[3] = &unk_1E84ABF40;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(backingAccountAccessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __27__SSAccount_backingAccount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _backingAccount];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)didFallbackToPassword
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SSAccount_didFallbackToPassword__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(backingAccountAccessQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)displayedServerPromptWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (SSDebugShouldDisableServerPrompts())
  {
    bOOLValue = 1;
  }

  else
  {
    v6 = [objc_opt_class() _displayedServerPromptKeyWithIdentifier:identifierCopy];
    v7 = [(SSAccount *)self accountPropertyForKey:v6];
    bOOLValue = [v7 BOOLValue];
  }

  return bOOLValue;
}

- (BOOL)isDirty
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __20__SSAccount_isDirty__block_invoke;
  v5[3] = &unk_1E84ABFD8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(backingAccountAccessQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __20__SSAccount_isDirty__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _backingAccount];
  if ([v4 isDirty])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v2 = [v4 dirtyAccountProperties];
    if ([v2 count])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      v3 = [v4 dirtyDataclassProperties];
      *(*(*(a1 + 40) + 8) + 24) = [v3 count] != 0;
    }
  }
}

- (int64_t)enabledServiceTypes
{
  v2 = [(SSAccount *)self accountPropertyForKey:@"enabledServiceTypes"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)isAuthenticated
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__SSAccount_isAuthenticated__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(backingAccountAccessQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __28__SSAccount_isAuthenticated__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _backingAccount];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isAuthenticated];
}

- (id)lastAttemptDateForServerPromptWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_opt_class() _lastAttemptForServerPromptKeyWithIdentifier:identifierCopy];

  v6 = [(SSAccount *)self accountPropertyForKey:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (NSString)localizedName
{
  firstName = [(SSAccount *)self firstName];
  if (firstName)
  {

LABEL_4:
    v5 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    lastName = [(SSAccount *)self lastName];
    [v5 setFamilyName:lastName];

    firstName2 = [(SSAccount *)self firstName];
    [v5 setGivenName:firstName2];

    v8 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    v9 = [v8 stringFromPersonNameComponents:v5];

    goto LABEL_5;
  }

  lastName2 = [(SSAccount *)self lastName];

  if (lastName2)
  {
    goto LABEL_4;
  }

  v9 = 0;
LABEL_5:

  return v9;
}

void __29__SSAccount_uniqueIdentifier__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _backingAccount];
  v2 = [v5 _ss_DSID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (int64_t)accountSource
{
  v2 = [(SSAccount *)self accountPropertyForKey:@"accountSource"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)freeDownloadsPasswordSetting
{
  v2 = [(SSAccount *)self accountPropertyForKey:@"freeDownloadsPasswordSetting"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)isActiveLockerAccount
{
  v2 = [(SSAccount *)self accountPropertyForKey:@"isActiveLockerAccount"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isDemoAccount
{
  backingAccount = [(SSAccount *)self backingAccount];
  ams_isDemoAccount = [backingAccount ams_isDemoAccount];

  return ams_isDemoAccount;
}

- (BOOL)isDuplicate:(id)duplicate
{
  duplicateCopy = duplicate;
  backingAccount = [(SSAccount *)self backingAccount];
  backingAccount2 = [duplicateCopy backingAccount];

  LOBYTE(duplicateCopy) = [backingAccount _ss_isDuplicate:backingAccount2];
  return duplicateCopy;
}

- (BOOL)isManagedAppleID
{
  v2 = [(SSAccount *)self accountPropertyForKey:@"isManagedAppleID"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isNewCustomer
{
  v2 = [(SSAccount *)self accountPropertyForKey:@"isNewCustomer"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)paidPurchasesPasswordSetting
{
  v2 = [(SSAccount *)self accountPropertyForKey:@"paidPurchasesPasswordSetting"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (NSString)passwordEquivalentToken
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__SSAccount_passwordEquivalentToken__block_invoke;
  v6[3] = &unk_1E84ABFD8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(backingAccountAccessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __36__SSAccount_passwordEquivalentToken__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _backingAccount];
  v2 = [v6 credential];
  v3 = [v2 credentialItemForKey:*MEMORY[0x1E69599C0]];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (NSString)rawPassword
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__SSAccount_rawPassword__block_invoke;
  v6[3] = &unk_1E84ABFD8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(backingAccountAccessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __24__SSAccount_rawPassword__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _backingAccount];
  v2 = [v5 ams_rawPassword];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)secureToken
{
  v3 = objc_opt_class();
  backingAccount = [(SSAccount *)self backingAccount];
  identifier = [backingAccount identifier];
  v6 = [v3 secureTokenForIdentifier:identifier];

  return v6;
}

- (void)setPasswordEquivalentToken:(id)token
{
  location[3] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v5 = SSIsInternalBuild();
  if (tokenCopy && v5 && ([tokenCopy hasSuffix:@"PET"] & 1) == 0)
  {
    v6 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      [(SSAccount *)self hashedDescription];
      *(location + 4) = LODWORD(location[0]) = 138543362;
      LODWORD(v20) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (v10)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, location, v20}];
        free(v10);
        SSFileLog(v6, @"%@", v12, v13, v14, v15, v16, v17, v11);
      }
    }

    else
    {
    }
  }

  objc_initWeak(location, self);
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SSAccount_setPasswordEquivalentToken___block_invoke;
  block[3] = &unk_1E84AD870;
  objc_copyWeak(&v23, location);
  v22 = tokenCopy;
  v19 = tokenCopy;
  dispatch_barrier_async(backingAccountAccessQueue, block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(location);
}

void __40__SSAccount_setPasswordEquivalentToken___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _backingAccount];
  v3 = [v2 credential];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E6959A30]) initWithPassword:0];
    [v2 setCredential:v3];
  }

  v4 = *MEMORY[0x1E69599C0];
  v5 = [v3 credentialItemForKey:*MEMORY[0x1E69599C0]];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if ((v6 & 1) == 0)
  {
    [v3 setCredentialItem:*(a1 + 32) forKey:v4];
  }
}

- (void)setRawPassword:(id)password
{
  location[3] = *MEMORY[0x1E69E9840];
  passwordCopy = password;
  v5 = SSIsInternalBuild();
  if (passwordCopy && v5 && [passwordCopy hasSuffix:@"PET"])
  {
    v6 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      [(SSAccount *)self hashedDescription];
      *(location + 4) = LODWORD(location[0]) = 138543362;
      LODWORD(v20) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (v10)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, location, v20}];
        free(v10);
        SSFileLog(v6, @"%@", v12, v13, v14, v15, v16, v17, v11);
      }
    }

    else
    {
    }
  }

  objc_initWeak(location, self);
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SSAccount_setRawPassword___block_invoke;
  block[3] = &unk_1E84AD870;
  objc_copyWeak(&v23, location);
  v22 = passwordCopy;
  v19 = passwordCopy;
  dispatch_barrier_async(backingAccountAccessQueue, block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(location);
}

void __28__SSAccount_setRawPassword___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _backingAccount];
  v3 = [v2 credential];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E6959A30]) initWithPassword:0];
    [v2 setCredential:v3];
  }

  v4 = *MEMORY[0x1E6959A00];
  v5 = [v3 credentialItemForKey:*MEMORY[0x1E6959A00]];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if ((v6 & 1) == 0)
  {
    [v3 setCredentialItem:*(a1 + 32) forKey:v4];
  }
}

- (void)setAccountKind:(int64_t)kind
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:kind];
  [(SSAccount *)self _setAccountProperty:v4 forKey:@"kind"];
}

- (void)setAccountName:(id)name
{
  nameCopy = name;
  objc_initWeak(&location, self);
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SSAccount_setAccountName___block_invoke;
  block[3] = &unk_1E84AD870;
  objc_copyWeak(&v9, &location);
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_barrier_async(backingAccountAccessQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __28__SSAccount_setAccountName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _backingAccount];
  v3 = [v2 username];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if ((v4 & 1) == 0)
  {
    v5 = [WeakRetained _backingAccount];
    [v5 setUsername:*(a1 + 32)];
  }
}

- (void)setAccountScope:(int64_t)scope
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [(SSAccount *)self _setAccountProperty:v5 forKey:@"scope"];

  if (scope == 1)
  {
    backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__SSAccount_setAccountScope___block_invoke;
    block[3] = &unk_1E84AC050;
    block[4] = self;
    dispatch_barrier_sync(backingAccountAccessQueue, block);
  }
}

void __29__SSAccount_setAccountScope___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:*MEMORY[0x1E698C4C8]];
  v4 = [v2 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959938]];

  v3 = [*(a1 + 32) _backingAccount];
  [v3 setAccountType:v4];
}

- (void)setAccountSource:(int64_t)source
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:source];
  [(SSAccount *)self _setAccountProperty:v4 forKey:@"accountSource"];
}

- (void)setActive:(BOOL)active
{
  objc_initWeak(&location, self);
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__SSAccount_setActive___block_invoke;
  block[3] = &unk_1E84AE238;
  objc_copyWeak(&v7, &location);
  activeCopy = active;
  dispatch_barrier_async(backingAccountAccessQueue, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __23__SSAccount_setActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _backingAccount];
  v3 = [v2 isActive];
  v4 = *(a1 + 40);

  if (v4 != v3)
  {
    v5 = [WeakRetained _backingAccount];
    [v5 setActive:*(a1 + 40)];
  }
}

- (void)setActiveLockerAccount:(BOOL)account
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:account];
  [(SSAccount *)self _setAccountProperty:v4 forKey:@"isActiveLockerAccount"];
}

- (void)setAuthenticated:(BOOL)authenticated
{
  objc_initWeak(&location, self);
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SSAccount_setAuthenticated___block_invoke;
  block[3] = &unk_1E84AE238;
  objc_copyWeak(&v7, &location);
  authenticatedCopy = authenticated;
  dispatch_barrier_async(backingAccountAccessQueue, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __30__SSAccount_setAuthenticated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _backingAccount];
  v3 = [v2 isAuthenticated];
  v4 = *(a1 + 40);

  if (v4 != v3)
  {
    v5 = [WeakRetained _backingAccount];
    [v5 setAuthenticated:*(a1 + 40)];
  }
}

- (void)setAutomaticDownloadKinds:(id)kinds
{
  v4 = [kinds copy];
  [(SSAccount *)self _setAccountProperty:v4 forKey:@"automaticDownloadKinds"];
}

- (void)setAvailableServiceTypes:(int64_t)types
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:types];
  [(SSAccount *)self _setAccountProperty:v4 forKey:@"availableServiceTypes"];
}

- (void)setDidFallbackToPassword:(BOOL)password
{
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__SSAccount_setDidFallbackToPassword___block_invoke;
  v6[3] = &unk_1E84AD070;
  v6[4] = self;
  passwordCopy = password;
  dispatch_barrier_async(backingAccountAccessQueue, v6);
}

- (void)setDisplayedServerPrompt:(BOOL)prompt withIdentifier:(id)identifier
{
  promptCopy = prompt;
  identifierCopy = identifier;
  v8 = [objc_opt_class() _displayedServerPromptKeyWithIdentifier:identifierCopy];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:promptCopy];
  [(SSAccount *)self _setAccountProperty:v7 forKey:v8];
}

- (void)setEnabledServiceTypes:(int64_t)types
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:types];
  [(SSAccount *)self _setAccountProperty:v4 forKey:@"enabledServiceTypes"];
}

- (void)setFreeDownloadsPasswordSetting:(int64_t)setting
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:setting];
  [(SSAccount *)self _setAccountProperty:v4 forKey:@"freeDownloadsPasswordSetting"];
}

- (void)setLastAttemptDate:(id)date forServerPromptWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dateCopy = date;
  v8 = [objc_opt_class() _lastAttemptForServerPromptKeyWithIdentifier:identifierCopy];

  [(SSAccount *)self _setAccountProperty:dateCopy forKey:v8];
}

- (void)setManagedAppleID:(BOOL)d
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:d];
  [(SSAccount *)self _setAccountProperty:v4 forKey:@"isManagedAppleID"];
}

- (void)setNewCustomer:(BOOL)customer
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:customer];
  [(SSAccount *)self _setAccountProperty:v4 forKey:@"isNewCustomer"];
}

- (void)setPaidPurchasesPasswordSetting:(int64_t)setting
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:setting];
  [(SSAccount *)self _setAccountProperty:v4 forKey:@"paidPurchasesPasswordSetting"];
}

- (void)setSecureToken:(id)token
{
  v73 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  backingAccount = [(SSAccount *)self backingAccount];
  identifier = [backingAccount identifier];

  v7 = [identifier length];
  v8 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      *result = 138543618;
      *&result[4] = objc_opt_class();
      v71 = 2112;
      v72 = identifier;
      v13 = *&result[4];
      LODWORD(v68) = 22;
      v67 = result;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
        goto LABEL_13;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, result, v68}];
      free(v14);
      SSFileLog(v9, @"%@", v15, v16, v17, v18, v19, v20, oSLogObject);
    }

LABEL_13:
    v21 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], identifier);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], @"com.apple.itunesstored.token");
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    v9 = [tokenCopy dataUsingEncoding:4];
    secureToken = [(SSAccount *)self secureToken];
    v24 = secureToken;
    if (secureToken)
    {
      if (([secureToken isEqualToString:tokenCopy] & 1) == 0)
      {
        v69 = tokenCopy;
        v25 = +[SSLogConfig sharedAccountsAuthenticationConfig];
        if (!v25)
        {
          v25 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v25 shouldLog];
        if ([v25 shouldLogToDisk])
        {
          v27 = shouldLog2 | 2;
        }

        else
        {
          v27 = shouldLog2;
        }

        oSLogObject2 = [v25 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v27;
        }

        else
        {
          v29 = v27 & 2;
        }

        if (v29)
        {
          v30 = objc_opt_class();
          *result = 138543362;
          *&result[4] = v30;
          v31 = v30;
          LODWORD(v68) = 12;
          v32 = _os_log_send_and_compose_impl();

          tokenCopy = v69;
          if (!v32)
          {
LABEL_52:

            v66 = CFDictionaryCreateMutable(v21, 0, 0, 0);
            CFDictionaryAddValue(v66, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697ABE8]);
            CFDictionaryAddValue(v66, *MEMORY[0x1E697B3C0], v9);
            SecItemUpdate(Mutable, v66);
            CFRelease(v66);
            goto LABEL_53;
          }

          oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v32 encoding:{4, result, v68}];
          free(v32);
          SSFileLog(v25, @"%@", v33, v34, v35, v36, v37, v38, oSLogObject2);
        }

        else
        {
          tokenCopy = v69;
        }

        goto LABEL_52;
      }

LABEL_53:
      CFRelease(Mutable);

      goto LABEL_54;
    }

    v51 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v51)
    {
      v51 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v51 shouldLog];
    if ([v51 shouldLogToDisk])
    {
      v53 = shouldLog3 | 2;
    }

    else
    {
      v53 = shouldLog3;
    }

    oSLogObject3 = [v51 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v55 = v53;
    }

    else
    {
      v55 = v53 & 2;
    }

    if (v55)
    {
      v56 = objc_opt_class();
      *result = 138543362;
      *&result[4] = v56;
      v57 = tokenCopy;
      v58 = v56;
      LODWORD(v68) = 12;
      v59 = _os_log_send_and_compose_impl();

      tokenCopy = v57;
      if (!v59)
      {
LABEL_48:

        *result = 0;
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697ABE8]);
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3C0], v9);
        SecItemAdd(Mutable, result);
        goto LABEL_53;
      }

      oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v59 encoding:{4, result, v68}];
      free(v59);
      SSFileLog(v51, @"%@", v60, v61, v62, v63, v64, v65, oSLogObject3);
    }

    goto LABEL_48;
  }

  if (!v8)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    shouldLog4 |= 2u;
  }

  oSLogObject4 = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
  {
    v41 = shouldLog4;
  }

  else
  {
    v41 = shouldLog4 & 2;
  }

  if (v41)
  {
    *result = 138543362;
    *&result[4] = objc_opt_class();
    v42 = *&result[4];
    LODWORD(v68) = 12;
    v43 = _os_log_send_and_compose_impl();

    if (v43)
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithCString:v43 encoding:{4, result, v68}];
      free(v43);
      SSFileLog(v9, @"%@", v45, v46, v47, v48, v49, v50, v44);
    }
  }

  else
  {
  }

LABEL_54:
}

- (void)setSocialEnabled:(BOOL)enabled
{
  if (enabled)
  {
    [(SSAccount *)self _addAccountPropertyBitmask:1 forKey:@"enabledServiceTypes"];
  }

  else
  {
    [(SSAccount *)self _removeAccountPropertyBitmask:1 forKey:@"enabledServiceTypes"];
  }
}

- (void)setStoreFrontIdentifier:(id)identifier forRequest:(id)request response:(id)response
{
  v56 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [(SSAccount *)self accountPropertyForKey:@"storefrontID"];
  if (v7 && +[SSDevice deviceIsInternalBuild]&& ![(SSAccount *)self isLocalAccount])
  {
    if (identifierCopy)
    {
      v8 = [objc_opt_class() _countryCodeFromStorefrontIdentifier:v7];
      oSLogObject2 = [objc_opt_class() _countryCodeFromStorefrontIdentifier:identifierCopy];
      if (([v8 isEqualToString:oSLogObject2] & 1) == 0)
      {
        v10 = +[SSLogConfig sharedAccountsStorefrontConfig];
        if (!v10)
        {
          v10 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v10 shouldLog];
        if ([v10 shouldLogToDisk])
        {
          v12 = shouldLog | 2;
        }

        else
        {
          v12 = shouldLog;
        }

        oSLogObject = [v10 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v14 = v12;
        }

        else
        {
          v14 = v12 & 2;
        }

        if (v14)
        {
          v15 = objc_opt_class();
          v45 = v15;
          [(SSAccount *)self hashedDescription];
          v42 = v44 = oSLogObject2;
          SSHashIfNeeded(v7);
          v16 = v43 = oSLogObject;
          v17 = SSHashIfNeeded(identifierCopy);
          +[SSStackShot generateSymbolicatedStackShot];
          v46 = 138544386;
          v47 = v15;
          v48 = 2114;
          v49 = v42;
          v50 = 2114;
          v51 = v16;
          v52 = 2114;
          v53 = v17;
          v55 = v54 = 2114;
          v18 = v55;
          LODWORD(v41) = 52;
          v40 = &v46;
          v19 = _os_log_send_and_compose_impl();

          oSLogObject2 = v44;
          if (!v19)
          {
LABEL_18:

            goto LABEL_30;
          }

          oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:{4, &v46, v41}];
          free(v19);
          SSFileLog(v10, @"%@", v20, v21, v22, v23, v24, v25, oSLogObject);
        }

        goto LABEL_18;
      }
    }

    else
    {
      v8 = +[SSLogConfig sharedAccountsStorefrontConfig];
      if (!v8)
      {
        v8 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        v27 = shouldLog2 | 2;
      }

      else
      {
        v27 = shouldLog2;
      }

      oSLogObject2 = [v8 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 2;
      }

      if (v28)
      {
        v29 = objc_opt_class();
        v30 = v29;
        hashedDescription = [(SSAccount *)self hashedDescription];
        v32 = +[SSStackShot generateSymbolicatedStackShot];
        v46 = 138543874;
        v47 = v29;
        v48 = 2114;
        v49 = hashedDescription;
        v50 = 2114;
        v51 = v32;
        LODWORD(v41) = 32;
        v40 = &v46;
        v33 = _os_log_send_and_compose_impl();

        if (!v33)
        {
LABEL_31:

          goto LABEL_32;
        }

        oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v33 encoding:{4, &v46, v41}];
        free(v33);
        SSFileLog(v8, @"%@", v34, v35, v36, v37, v38, v39, oSLogObject2);
      }
    }

LABEL_30:

    goto LABEL_31;
  }

LABEL_32:
  [(SSAccount *)self _setAccountProperty:identifierCopy forKey:@"storefrontID", v40];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__SSAccount_copyXPCEncoding__block_invoke;
  v8[3] = &unk_1E84AC028;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  dispatch_sync(backingAccountAccessQueue, v8);

  v6 = v5;
  return v6;
}

void __28__SSAccount_copyXPCEncoding__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _backingAccount];
  SSXPCDictionarySetObject(v1, "0", v2);
}

- (SSAccount)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v6 = encodingCopy;
  if (!encodingCopy || MEMORY[0x1DA6E0380](encodingCopy) != MEMORY[0x1E69E9E80])
  {
    [(SSAccount *)a2 initWithXPCEncoding:?];
  }

  v7 = [(SSAccount *)self init];
  if (v7)
  {
    v8 = objc_opt_class();
    v9 = SSXPCDictionaryCopyObjectWithClass(v6, "0", v8);
    backingAccount = v7->_backingAccount;
    v7->_backingAccount = v9;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__SSAccount_copyWithZone___block_invoke;
  block[3] = &unk_1E84AD6E0;
  block[4] = self;
  zoneCopy = zone;
  v7 = v5;
  v12 = v7;
  dispatch_sync(backingAccountAccessQueue, block);

  v8 = v12;
  v9 = v7;

  return v9;
}

void __26__SSAccount_copyWithZone___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _backingAccount];
  v3 = [v2 copyWithZone:*(a1 + 48)];

  v4 = [*(a1 + 40) backingAccountAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__SSAccount_copyWithZone___block_invoke_2;
  v6[3] = &unk_1E84AC028;
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_barrier_async(v4, v6);
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v16.receiver = self;
  v16.super_class = SSAccount;
  v4 = [(SSAccount *)&v16 description];
  v5 = [v3 stringWithFormat:@"%@:", v4];

  if ([(SSAccount *)self isLocalAccount])
  {
    [v5 appendFormat:@" Local Account"];
  }

  else
  {
    altDSID = [(SSAccount *)self altDSID];
    uniqueIdentifier = [(SSAccount *)self uniqueIdentifier];
    accountName = [(SSAccount *)self accountName];
    backingAccount = [(SSAccount *)self backingAccount];
    identifier = [backingAccount identifier];
    accountScope = [(SSAccount *)self accountScope];
    if ([(SSAccount *)self isActive])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    if ([(SSAccount *)self isAuthenticated])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    [v5 appendFormat:@" altDSID = %@ | DSID = %@ | username = %@ | backingIdentifier = %@ | scope = %ld | active = %@ | authenticated = %@", altDSID, uniqueIdentifier, accountName, identifier, accountScope, v11, v12];
  }

  storeFrontIdentifier = [(SSAccount *)self storeFrontIdentifier];
  [v5 appendFormat:@" | storefront = %@>", storeFrontIdentifier];

  return v5;
}

- (unint64_t)hash
{
  uniqueIdentifier = [(SSAccount *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_2;
  }

  if (-[SSAccount isLocalAccount](self, "isLocalAccount") && ([equalCopy isLocalAccount] & 1) != 0)
  {
    v6 = 1;
    goto LABEL_3;
  }

  altDSID = [(SSAccount *)self altDSID];
  if (altDSID)
  {
    v9 = 1;
  }

  else
  {
    altDSID2 = [equalCopy altDSID];
    v9 = altDSID2 != 0;
  }

  uniqueIdentifier = [(SSAccount *)self uniqueIdentifier];
  if (uniqueIdentifier)
  {
    identifier = 1;
  }

  else
  {
    uniqueIdentifier2 = [equalCopy uniqueIdentifier];
    v14 = uniqueIdentifier2 != 0;

    identifier = v14 | v9;
  }

  accountName = [(SSAccount *)self accountName];
  if (accountName)
  {
  }

  else
  {
    accountName2 = [equalCopy accountName];
    v17 = (accountName2 != 0) | identifier;

    if ((v17 & 1) == 0)
    {
      backingAccount = [(SSAccount *)self backingAccount];
      identifier = [backingAccount identifier];
      backingAccount2 = [equalCopy backingAccount];
      identifier2 = [backingAccount2 identifier];
      v6 = [identifier isEqualToString:identifier2];

      goto LABEL_23;
    }
  }

  accountScope = [(SSAccount *)self accountScope];
  if (accountScope != [equalCopy accountScope])
  {
    goto LABEL_2;
  }

  altDSID3 = [(SSAccount *)self altDSID];
  if (altDSID3 || ([equalCopy altDSID], (identifier = objc_claimAutoreleasedReturnValue()) != 0))
  {
    altDSID4 = [(SSAccount *)self altDSID];
    altDSID5 = [equalCopy altDSID];
    v22 = [altDSID4 isEqual:altDSID5];

    if (altDSID3)
    {

      if (!v22)
      {
        goto LABEL_2;
      }
    }

    else
    {

      if ((v22 & 1) == 0)
      {
        goto LABEL_2;
      }
    }
  }

  uniqueIdentifier3 = [(SSAccount *)self uniqueIdentifier];
  if (!uniqueIdentifier3)
  {
    identifier = [equalCopy uniqueIdentifier];
    if (!identifier)
    {
LABEL_31:
      backingAccount = [(SSAccount *)self accountName];
      if (backingAccount || ([equalCopy accountName], (identifier = objc_claimAutoreleasedReturnValue()) != 0))
      {
        accountName3 = [(SSAccount *)self accountName];
        accountName4 = [equalCopy accountName];
        v6 = [accountName3 isEqual:accountName4];

        if (backingAccount)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v6 = 1;
      }

LABEL_23:

LABEL_34:
      goto LABEL_3;
    }
  }

  uniqueIdentifier4 = [(SSAccount *)self uniqueIdentifier];
  uniqueIdentifier5 = [equalCopy uniqueIdentifier];
  v29 = [uniqueIdentifier4 isEqual:uniqueIdentifier5];

  if (!uniqueIdentifier3)
  {

    if ((v29 & 1) == 0)
    {
      goto LABEL_2;
    }

    goto LABEL_31;
  }

  if (v29)
  {
    goto LABEL_31;
  }

LABEL_2:
  v6 = 0;
LABEL_3:

  return v6;
}

- (void)acceptTermsAndConditions:(id)conditions withCompletionBlock:(id)block
{
  blockCopy = block;
  conditionsCopy = conditions;
  v8 = objc_alloc_init(SSMutableURLRequestProperties);
  [(SSMutableURLRequestProperties *)v8 setITunesStoreRequest:1];
  [(SSMutableURLRequestProperties *)v8 setURLBagKey:@"terms-check"];
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = MEMORY[0x1E696AD98];
  currentVersionIdentifier = [conditionsCopy currentVersionIdentifier];

  v12 = [v10 numberWithLongLong:currentVersionIdentifier];
  [v9 setObject:v12 forKey:@"accepted"];

  v13 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v9 options:0 error:0];
  [(SSMutableURLRequestProperties *)v8 setHTTPBody:v13];

  [(SSMutableURLRequestProperties *)v8 setHTTPMethod:@"POST"];
  v14 = [[SSURLConnectionRequest alloc] initWithRequestProperties:v8];
  v15 = [[SSAuthenticationContext alloc] initWithAccount:self];
  [(SSURLConnectionRequest *)v14 setAuthenticationContext:v15];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__SSAccount_acceptTermsAndConditions_withCompletionBlock___block_invoke;
  v17[3] = &unk_1E84AE260;
  v18 = blockCopy;
  v16 = blockCopy;
  [(SSURLConnectionRequest *)v14 startWithConnectionResponseBlock:v17];
}

void __58__SSAccount_acceptTermsAndConditions_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v5)
    {
      v8 = [SSTermsAndConditions alloc];
      v9 = [v5 bodyData];
      v12 = v6;
      v10 = [(SSTermsAndConditions *)v8 initWithResponseData:v9 error:&v12];
      v11 = v12;

      v7 = *(a1 + 32);
      v6 = v11;
    }

    else
    {
      v10 = 0;
    }

    (*(v7 + 16))(v7, [(SSTermsAndConditions *)v10 isUserAccepted], v6);
  }
}

- (id)eligibilityForService:(int64_t)service
{
  v4 = [(SSAccount *)self accountPropertyForKey:@"eligibleServices"];
  service = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", service];
  v6 = [v4 objectForKeyedSubscript:service];

  return v6;
}

- (void)getDownloadKindsEligibleForContentRestoreWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil completionBlock"];
  }

  v5 = objc_alloc_init(SSURLBagContext);
  [(SSURLBagContext *)v5 setBagType:SSURLBagTypeForAccountScope([(SSAccount *)self accountScope])];
  uniqueIdentifier = [(SSAccount *)self uniqueIdentifier];
  [(SSURLBagContext *)v5 setUserIdentifier:uniqueIdentifier];

  v7 = [[SSURLBag alloc] initWithURLBagContext:v5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__SSAccount_getDownloadKindsEligibleForContentRestoreWithBlock___block_invoke;
  v9[3] = &unk_1E84AE288;
  v10 = blockCopy;
  v8 = blockCopy;
  [(SSURLBag *)v7 loadValueForKey:@"p2-content-restore" completionBlock:v9];
}

void __64__SSAccount_getDownloadKindsEligibleForContentRestoreWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v7 objectForKey:@"allowed-kinds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_5:
  (*(*(a1 + 32) + 16))();
}

- (void)getEligibilityForService:(int64_t)service completionBlock:(id)block
{
  blockCopy = block;
  v6 = objc_alloc_init(SSVSubscriptionStatusRequest);
  [(SSVSubscriptionStatusRequest *)v6 setCarrierBundleProvisioningStyle:0];
  v7 = [[SSAuthenticationContext alloc] initWithAccount:self];
  [(SSVSubscriptionStatusRequest *)v6 setAuthenticationContext:v7];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__SSAccount_getEligibilityForService_completionBlock___block_invoke;
  v9[3] = &unk_1E84AE2B0;
  v8 = blockCopy;
  v10 = v8;
  v11 = v12;
  [(SSVSubscriptionStatusRequest *)v6 startWithStatusResponseBlock:v9];

  _Block_object_dispose(v12, 8);
}

void __54__SSAccount_getEligibilityForService_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  if (*(a1 + 32) && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    if (v10)
    {
      v7 = [v10 accountStatus];
      if (v7 == 2)
      {
        v8 = 0;
        goto LABEL_9;
      }

      if (v7 == 3)
      {
        v8 = 1;
LABEL_9:
        v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v8];
        goto LABEL_10;
      }
    }

    v9 = 0;
LABEL_10:
    (*(*(a1 + 32) + 16))();
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)getPurchasedItemsForItems:(id)items completionBlock:(id)block
{
  v29 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  itemsCopy = items;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v27 = 136446210;
      v28 = "[SSAccount getPurchasedItemsForItems:completionBlock:]";
      LODWORD(v24) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v27, v24}];
      free(v13);
      SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  if (!blockCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil completionBlock"];
  }

  v20 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v20, "0", 67);
  SSXPCDictionarySetObject(v20, "2", itemsCopy);

  v21 = [[SSAuthenticationContext alloc] initWithAccount:self];
  SSXPCDictionarySetObject(v20, "1", v21);
  v22 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __55__SSAccount_getPurchasedItemsForItems_completionBlock___block_invoke;
  v25[3] = &unk_1E84AE2D8;
  v26 = blockCopy;
  v23 = blockCopy;
  [(SSXPCConnection *)v22 sendMessage:v20 withReply:v25];
}

void __55__SSAccount_getPurchasedItemsForItems_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    goto LABEL_7;
  }

  v12 = objc_alloc(MEMORY[0x1E696ABC0]);
  v13 = xpc_dictionary_get_value(v4, "2");
  v6 = [v12 initWithXPCEncoding:v13];

  v14 = xpc_dictionary_get_value(v4, "1");
  v15 = objc_opt_class();
  v7 = SSXPCCreateNSArrayFromXPCEncodedArray(v14, v15);

LABEL_7:
  if (!(v6 | v7))
  {
    v6 = SSError(@"SSErrorDomain", 100, 0, 0);
  }

  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SSAccount_getPurchasedItemsForItems_completionBlock___block_invoke_2;
  block[3] = &unk_1E84ABEC8;
  v9 = *(a1 + 32);
  v18 = v6;
  v19 = v9;
  v17 = v7;
  v10 = v6;
  v11 = v7;
  dispatch_async(v8, block);
}

- (void)getTermsAndConditionsWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(SSMutableURLRequestProperties);
  [(SSMutableURLRequestProperties *)v5 setITunesStoreRequest:1];
  [(SSMutableURLRequestProperties *)v5 setURLBagKey:@"terms-check"];
  v6 = [[SSURLConnectionRequest alloc] initWithRequestProperties:v5];
  v7 = [[SSAuthenticationContext alloc] initWithAccount:self];
  [(SSURLConnectionRequest *)v6 setAuthenticationContext:v7];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__SSAccount_getTermsAndConditionsWithBlock___block_invoke;
  v9[3] = &unk_1E84AE260;
  v10 = blockCopy;
  v8 = blockCopy;
  [(SSURLConnectionRequest *)v6 startWithConnectionResponseBlock:v9];
}

void __44__SSAccount_getTermsAndConditionsWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v5)
    {
      v8 = [SSTermsAndConditions alloc];
      v9 = [v5 bodyData];
      v12 = v6;
      v10 = [(SSTermsAndConditions *)v8 initWithResponseData:v9 error:&v12];
      v11 = v12;

      v7 = *(a1 + 32);
      v6 = v11;
    }

    else
    {
      v10 = 0;
    }

    (*(v7 + 16))(v7, v10, v6);
  }
}

+ (int64_t)accountKindFromAuthenticationResponseDictionary:(id)dictionary
{
  v3 = [dictionary valueForKeyPath:@"accountInfo.accountKind"];
  v4 = (objc_opt_respondsToSelector() & 1) != 0 && [v3 intValue] == 1;

  return v4;
}

+ (id)accountNameFromAuthenticationResponseDictionary:(id)dictionary
{
  v3 = [self _valueForFirstAvailableKeyPath:&unk_1F507A2D0 inDictionary:dictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)accountPropertyForKey:(id)key
{
  keyCopy = key;
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  dispatch_assert_queue_not_V2(backingAccountAccessQueue);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__15;
  v17 = __Block_byref_object_dispose__15;
  v18 = 0;
  backingAccountAccessQueue2 = [(SSAccount *)self backingAccountAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SSAccount_accountPropertyForKey___block_invoke;
  block[3] = &unk_1E84ABF90;
  v11 = keyCopy;
  v12 = &v13;
  block[4] = self;
  v7 = keyCopy;
  dispatch_sync(backingAccountAccessQueue2, block);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __35__SSAccount_accountPropertyForKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _backingAccount];
  v2 = [v5 accountPropertyForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)altDSIDFromAuthenticationResponseDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"altDsPersonId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)creditsStringFromAuthenticationResponseDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"creditDisplay"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)DSIDFromAuthenticationResponseDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"dsPersonId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "longLongValue")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)firstNameFromAuthenticationResponseDictionary:(id)dictionary
{
  v3 = [dictionary valueForKeyPath:@"accountInfo.address.firstName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)getITunesMatchStatusWithCompletionBlock:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v24 = 136446210;
      v25 = "[SSAccount getITunesMatchStatusWithCompletionBlock:]";
      LODWORD(v21) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v24, v21}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v17 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v18 = SSXPCCreateMessageDictionary(130);
  uniqueIdentifier = [(SSAccount *)self uniqueIdentifier];
  SSXPCDictionarySetObject(v18, "1", uniqueIdentifier);

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __53__SSAccount_getITunesMatchStatusWithCompletionBlock___block_invoke;
  v22[3] = &unk_1E84AE2D8;
  v23 = blockCopy;
  v20 = blockCopy;
  [(SSXPCConnection *)v17 sendMessage:v18 withReply:v22];
}

void __53__SSAccount_getITunesMatchStatusWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  xdict = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v4 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v4 = 111;
LABEL_6:
    v5 = SSError(@"SSErrorDomain", v4, 0, 0);
    int64 = 0;
    goto LABEL_7;
  }

  v8 = objc_alloc(MEMORY[0x1E696ABC0]);
  v9 = xpc_dictionary_get_value(xdict, "1");
  v5 = [v8 initWithXPCEncoding:v9];

  int64 = xpc_dictionary_get_int64(xdict, "0");
LABEL_7:
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, int64, v5);
  }
}

- (void)getKeybagSyncDataWithType:(int64_t)type completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v26 = 136446210;
      v27 = "[SSAccount getKeybagSyncDataWithType:completionHandler:]";
      LODWORD(v23) = 12;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v26, v23}];
      free(v12);
      SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v19 = SSXPCCreateMessageDictionary(139);
  xpc_dictionary_set_int64(v19, "1", type);
  uniqueIdentifier = [(SSAccount *)self uniqueIdentifier];
  SSXPCDictionarySetObject(v19, "2", uniqueIdentifier);

  v21 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __57__SSAccount_getKeybagSyncDataWithType_completionHandler___block_invoke;
  v24[3] = &unk_1E84AE2D8;
  v25 = handlerCopy;
  v22 = handlerCopy;
  [(SSXPCConnection *)v21 sendMessage:v19 withReply:v24];
}

void __57__SSAccount_getKeybagSyncDataWithType_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    xdict = v3;
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v6 = SSError(@"SSErrorDomain", 121, 0, 0);
      v8 = 0;
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x1E696ABC0]);
      v5 = xpc_dictionary_get_value(xdict, "2");
      v6 = [v4 initWithXPCEncoding:v5];

      v7 = objc_opt_class();
      v8 = SSXPCDictionaryCopyObjectWithClass(xdict, "1", v7);
    }

    if (!(v8 | v6))
    {
      v6 = SSError(@"SSErrorDomain", 100, 0, 0);
    }

    (*(*(a1 + 32) + 16))();

    v3 = xdict;
  }
}

- (id)hashedDescription
{
  v3 = MEMORY[0x1E696AD60];
  v21.receiver = self;
  v21.super_class = SSAccount;
  v4 = [(SSAccount *)&v21 description];
  v5 = [v3 stringWithFormat:@"%@:", v4];

  if ([(SSAccount *)self isLocalAccount])
  {
    [v5 appendFormat:@" Local Account"];
  }

  else
  {
    altDSID = [(SSAccount *)self altDSID];
    v17 = SSHashIfNeeded(altDSID);
    uniqueIdentifier = [(SSAccount *)self uniqueIdentifier];
    stringValue = [uniqueIdentifier stringValue];
    v16 = SSHashIfNeeded(stringValue);
    accountName = [(SSAccount *)self accountName];
    v7 = SSHashIfNeeded(accountName);
    backingAccount = [(SSAccount *)self backingAccount];
    identifier = [backingAccount identifier];
    accountScope = [(SSAccount *)self accountScope];
    if ([(SSAccount *)self isActive])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    if ([(SSAccount *)self isAuthenticated])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    [v5 appendFormat:@" altDSID = %@ | DSID = %@ | username = %@ | backingIdentifier = %@ | scope = %ld | active = %@ | authenticated = %@", v17, v16, v7, identifier, accountScope, v11, v12];
  }

  storeFrontIdentifier = [(SSAccount *)self storeFrontIdentifier];
  v14 = SSHashIfNeeded(storeFrontIdentifier);
  [v5 appendFormat:@" | storefront = %@>", v14];

  return v5;
}

+ (BOOL)isManagedAppleIDFromAuthenticationResponseDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"isManagedStudent"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)isNewCustomerFromAuthenticationResponseDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"newCustomer"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)lastNameFromAuthenticationResponseDictionary:(id)dictionary
{
  v3 = [dictionary valueForKeyPath:@"accountInfo.address.lastName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)resetTransientData
{
  v28 = *MEMORY[0x1E69E9840];
  [(SSAccount *)self setAuthenticated:0];
  [(SSAccount *)self setPasswordEquivalentToken:0];
  [(SSAccount *)self setRawPassword:0];
  [(SSAccount *)self setSecureToken:0];
  v3 = +[SSAccountStore defaultStore];
  v21 = 0;
  v4 = [v3 saveAccount:self verifyCredentials:0 error:&v21];
  v5 = v21;

  if ((v4 & 1) == 0)
  {
    v6 = +[SSLogConfig sharedAccountsConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      v11 = v10;
      hashedDescription = [(SSAccount *)self hashedDescription];
      v22 = 138543874;
      v23 = v10;
      v24 = 2114;
      v25 = hashedDescription;
      v26 = 2114;
      v27 = v5;
      LODWORD(v20) = 32;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_13:

        goto LABEL_14;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v22, v20}];
      free(v13);
      SSFileLog(v6, @"%@", v14, v15, v16, v17, v18, v19, oSLogObject);
    }

    goto LABEL_13;
  }

LABEL_14:
}

+ (id)secureTokenForIdentifier:(id)identifier
{
  v46 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (![identifierCopy length])
  {
    v17 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = shouldLog | 2;
    }

    else
    {
      v19 = shouldLog;
    }

    oSLogObject = [v17 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v42 = 138543362;
      v43 = objc_opt_class();
      v21 = v43;
      LODWORD(v40) = 12;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
LABEL_24:

        v16 = 0;
        goto LABEL_39;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, &v42, v40}];
      free(v22);
      SSFileLog(v17, @"%@", v23, v24, v25, v26, v27, v28, oSLogObject);
    }

    goto LABEL_24;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], identifierCopy);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], @"com.apple.itunesstored.token");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
  result = 0;
  v5 = SecItemCopyMatching(Mutable, &result);
  v6 = result;
  if (v5 || ![result length])
  {
    v7 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog2 | 2;
    }

    else
    {
      v9 = shouldLog2;
    }

    oSLogObject2 = [v7 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (!v9)
    {
      v16 = 0;
      goto LABEL_37;
    }

    v11 = objc_opt_class();
    v12 = MEMORY[0x1E696AD98];
    v13 = v11;
    v14 = [v12 numberWithInt:v5];
    v42 = 138543618;
    v43 = v11;
    v44 = 2114;
    v45 = v14;
    LODWORD(v40) = 22;
    v15 = _os_log_send_and_compose_impl();

    v16 = 0;
    if (!v15)
    {
      goto LABEL_38;
    }

LABEL_35:
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v42, v40}];
    free(v15);
    SSFileLog(v7, @"%@", v33, v34, v35, v36, v37, v38, oSLogObject2);
LABEL_37:

    goto LABEL_38;
  }

  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
  v7 = +[SSLogConfig sharedAccountsAuthenticationConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v30 = shouldLog3 | 2;
  }

  else
  {
    v30 = shouldLog3;
  }

  oSLogObject2 = [v7 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v30 &= 2u;
  }

  if (!v30)
  {
    goto LABEL_37;
  }

  v31 = objc_opt_class();
  v42 = 138543362;
  v43 = v31;
  v32 = v31;
  LODWORD(v40) = 12;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    goto LABEL_35;
  }

LABEL_38:

  CFRelease(Mutable);
LABEL_39:

  return v16;
}

- (void)setEligibility:(id)eligibility forServiceType:(int64_t)type
{
  eligibilityCopy = eligibility;
  objc_initWeak(&location, self);
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__SSAccount_setEligibility_forServiceType___block_invoke;
  v9[3] = &unk_1E84AE300;
  objc_copyWeak(v11, &location);
  v11[1] = type;
  v10 = eligibilityCopy;
  v8 = eligibilityCopy;
  dispatch_barrier_async(backingAccountAccessQueue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __43__SSAccount_setEligibility_forServiceType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _backingAccount];
  v3 = [v2 accountPropertyForKey:@"eligibleServices"];

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v3];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v5 = v4;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", *(a1 + 48)];
  v7 = *(a1 + 32);
  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:v6];
  }

  else
  {
    [v5 removeObjectForKey:v6];
  }

  if (![v5 count])
  {

    v5 = 0;
  }

  v8 = [WeakRetained _backingAccount];
  [v8 setAccountProperty:v5 forKey:@"eligibleServices"];
}

+ (id)storeFrontIdentifierFromURLResponse:(id)response
{
  v12[4] = *MEMORY[0x1E69E9840];
  v12[0] = @"X-Set-Apple-Store-Front";
  responseCopy = response;
  lowercaseString = [@"X-Set-Apple-Store-Front" lowercaseString];
  v12[1] = lowercaseString;
  v12[2] = @"X-Apple-Request-Store-Front";
  v12[3] = @"x-apple-request-store-front";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
  allHeaderFields = [responseCopy allHeaderFields];

  v8 = [self _valueForFirstAvailableKeyPath:v6 inDictionary:allHeaderFields];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (id)copyLockdownRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  altDSID = [(SSAccount *)self altDSID];
  if (altDSID)
  {
    [v3 setObject:altDSID forKey:@"AltDSID"];
  }

  creditsString = [(SSAccount *)self creditsString];

  if (creditsString)
  {
    [v3 setObject:creditsString forKey:@"CreditDisplayString"];
  }

  uniqueIdentifier = [(SSAccount *)self uniqueIdentifier];

  if (uniqueIdentifier)
  {
    [v3 setObject:uniqueIdentifier forKey:@"DSPersonID"];
  }

  accountName = [(SSAccount *)self accountName];

  if (accountName)
  {
    [v3 setObject:accountName forKey:@"AppleID"];
  }

  iTunesPassSerialNumber = [(SSAccount *)self ITunesPassSerialNumber];

  if (iTunesPassSerialNumber)
  {
    [v3 setObject:iTunesPassSerialNumber forKey:@"AccountITunesPassSerial"];
  }

  storeFrontIdentifier = [(SSAccount *)self storeFrontIdentifier];

  if (storeFrontIdentifier)
  {
    [v3 setObject:storeFrontIdentifier forKey:@"AccountStoreFront"];
  }

  firstName = [(SSAccount *)self firstName];

  if (firstName)
  {
    [v3 setObject:firstName forKey:@"FirstName"];
  }

  lastName = [(SSAccount *)self lastName];

  if (lastName)
  {
    [v3 setObject:lastName forKey:@"LastName"];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SSAccount accountKind](self, "accountKind")}];
  [v3 setObject:v12 forKey:@"AccountKind"];

  if ([(SSAccount *)self accountScope]== 1)
  {
    v13 = @"sandbox";
  }

  else
  {
    v13 = @"production";
  }

  [v3 setObject:v13 forKey:@"AccountURLBagType"];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SSAccount availableServiceTypes](self, "availableServiceTypes")}];
  [v3 setObject:v14 forKey:@"AccountAvailableServiceTypes"];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SSAccount enabledServiceTypes](self, "enabledServiceTypes")}];
  [v3 setObject:v15 forKey:@"AccountServiceTypes"];

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SSAccount freeDownloadsPasswordSetting](self, "freeDownloadsPasswordSetting")}];
  [v3 setObject:v16 forKey:@"AccountFreeDownloadsPasswordSetting"];

  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SSAccount paidPurchasesPasswordSetting](self, "paidPurchasesPasswordSetting")}];
  [v3 setObject:v17 forKey:@"AccountPaidPurchasesPasswordSetting"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[SSAccount isNewCustomer](self, "isNewCustomer")}];
  [v3 setObject:v18 forKey:@"AccountIsNewCustomer"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[SSAccount didFallbackToPassword](self, "didFallbackToPassword")}];
  [v3 setObject:v19 forKey:@"DidFallbackToPassword"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[SSAccount isSocialEnabled](self, "isSocialEnabled")}];
  [v3 setObject:v20 forKey:@"AccountSocialEnabled"];

  if ([(SSAccount *)self accountSource]== 1)
  {
    v21 = @"iTunes";
  }

  else
  {
    v21 = @"device";
  }

  [v3 setObject:v21 forKey:@"AccountSource"];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[SSAccount isManagedAppleID](self, "isManagedAppleID")}];
  [v3 setObject:v22 forKey:@"AccountIsManagedAppleID"];

  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __39__SSAccount_copyLockdownRepresentation__block_invoke;
  v28[3] = &unk_1E84AC028;
  v28[4] = self;
  v24 = v3;
  v29 = v24;
  dispatch_sync(backingAccountAccessQueue, v28);

  v25 = v29;
  v26 = v24;

  return v26;
}

void __39__SSAccount_copyLockdownRepresentation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _backingAccount];
  v3 = [v2 accountPropertyForKey:@"eligibleServices"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SSAccount_copyLockdownRepresentation__block_invoke_2;
  v4[3] = &unk_1E84AC258;
  v5 = *(a1 + 40);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __39__SSAccount_copyLockdownRepresentation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  if ([a3 BOOLValue])
  {
    v5 = *(a1 + 32);
    [v7 integerValue];
    v6 = SSVLockdownAccountServiceEligibilityKey();
    [v5 setObject:MEMORY[0x1E695E118] forKey:v6];
  }
}

- (BOOL)mergeValuesFromAccount:(id)account
{
  v449 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  creditsString = [accountCopy creditsString];
  v442 = accountCopy;
  if (creditsString)
  {
    creditsString2 = [(SSAccount *)self creditsString];
    v7 = creditsString2;
    if (creditsString == creditsString2)
    {
    }

    else
    {
      creditsString3 = [(SSAccount *)self creditsString];
      v9 = [creditsString isEqual:creditsString3];

      if ((v9 & 1) == 0)
      {
        v10 = +[SSLogConfig sharedAccountsConfig];
        if (!v10)
        {
          v10 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v10 shouldLog];
        if ([v10 shouldLogToDisk])
        {
          v12 = shouldLog | 2;
        }

        else
        {
          v12 = shouldLog;
        }

        oSLogObject = [v10 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v12;
        }

        else
        {
          v14 = v12 & 2;
        }

        if (v14)
        {
          v15 = objc_opt_class();
          accountName = [(SSAccount *)self accountName];
          v17 = SSHashIfNeeded(accountName);
          accountName2 = [accountCopy accountName];
          v19 = SSHashIfNeeded(accountName2);
          v443 = 138543874;
          v444 = v15;
          v445 = 2114;
          v446 = v17;
          v447 = 2114;
          v448 = v19;
          LODWORD(v440) = 32;
          v421 = &v443;
          v20 = _os_log_send_and_compose_impl();

          accountCopy = v442;
          if (!v20)
          {
LABEL_16:

            [(SSAccount *)self setCreditsString:creditsString];
            v27 = 1;
            goto LABEL_19;
          }

          oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v443, v440}];
          free(v20);
          SSFileLog(v10, @"%@", v21, v22, v23, v24, v25, v26, oSLogObject);
        }

        goto LABEL_16;
      }
    }
  }

  v27 = 0;
LABEL_19:
  uniqueIdentifier = [accountCopy uniqueIdentifier];

  if (!uniqueIdentifier)
  {
    goto LABEL_36;
  }

  uniqueIdentifier2 = [(SSAccount *)self uniqueIdentifier];
  v30 = uniqueIdentifier2;
  if (uniqueIdentifier != uniqueIdentifier2)
  {
    uniqueIdentifier3 = [(SSAccount *)self uniqueIdentifier];
    v32 = [uniqueIdentifier isEqual:uniqueIdentifier3];

    if (v32)
    {
      goto LABEL_36;
    }

    v33 = +[SSLogConfig sharedAccountsConfig];
    if (!v33)
    {
      v33 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v33 shouldLog];
    if ([v33 shouldLogToDisk])
    {
      v35 = shouldLog2 | 2;
    }

    else
    {
      v35 = shouldLog2;
    }

    oSLogObject2 = [v33 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v35;
    }

    else
    {
      v37 = v35 & 2;
    }

    if (v37)
    {
      v38 = objc_opt_class();
      accountName3 = [(SSAccount *)self accountName];
      v40 = SSHashIfNeeded(accountName3);
      accountName4 = [accountCopy accountName];
      v42 = SSHashIfNeeded(accountName4);
      v443 = 138543874;
      v444 = v38;
      v445 = 2114;
      v446 = v40;
      v447 = 2114;
      v448 = v42;
      LODWORD(v440) = 32;
      v422 = &v443;
      v43 = _os_log_send_and_compose_impl();

      accountCopy = v442;
      if (!v43)
      {
LABEL_34:

        [(SSAccount *)self setUniqueIdentifier:uniqueIdentifier];
        v27 = 1;
        goto LABEL_36;
      }

      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v43 encoding:{4, &v443, v440}];
      free(v43);
      SSFileLog(v33, @"%@", v44, v45, v46, v47, v48, v49, oSLogObject2);
    }

    goto LABEL_34;
  }

LABEL_36:
  accountName5 = [accountCopy accountName];

  if (!accountName5)
  {
    goto LABEL_53;
  }

  accountName6 = [(SSAccount *)self accountName];
  v52 = accountName6;
  if (accountName5 != accountName6)
  {
    accountName7 = [(SSAccount *)self accountName];
    v54 = [accountName5 isEqual:accountName7];

    if (v54)
    {
      goto LABEL_53;
    }

    v55 = +[SSLogConfig sharedAccountsConfig];
    if (!v55)
    {
      v55 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v55 shouldLog];
    if ([v55 shouldLogToDisk])
    {
      v57 = shouldLog3 | 2;
    }

    else
    {
      v57 = shouldLog3;
    }

    oSLogObject3 = [v55 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v59 = v57;
    }

    else
    {
      v59 = v57 & 2;
    }

    if (v59)
    {
      v60 = objc_opt_class();
      accountName8 = [(SSAccount *)self accountName];
      v62 = SSHashIfNeeded(accountName8);
      accountName9 = [accountCopy accountName];
      v64 = SSHashIfNeeded(accountName9);
      v443 = 138543874;
      v444 = v60;
      v445 = 2114;
      v446 = v62;
      v447 = 2114;
      v448 = v64;
      LODWORD(v440) = 32;
      v423 = &v443;
      v65 = _os_log_send_and_compose_impl();

      accountCopy = v442;
      if (!v65)
      {
LABEL_51:

        [(SSAccount *)self setAccountName:accountName5];
        v27 = 1;
        goto LABEL_53;
      }

      oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v65 encoding:{4, &v443, v440}];
      free(v65);
      SSFileLog(v55, @"%@", v66, v67, v68, v69, v70, v71, oSLogObject3);
    }

    goto LABEL_51;
  }

LABEL_53:
  altDSID = [accountCopy altDSID];

  if (!altDSID)
  {
    goto LABEL_70;
  }

  altDSID2 = [(SSAccount *)self altDSID];
  v74 = altDSID2;
  if (altDSID != altDSID2)
  {
    altDSID3 = [(SSAccount *)self altDSID];
    v76 = [altDSID isEqual:altDSID3];

    if (v76)
    {
      goto LABEL_70;
    }

    v77 = +[SSLogConfig sharedAccountsConfig];
    if (!v77)
    {
      v77 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v77 shouldLog];
    if ([v77 shouldLogToDisk])
    {
      v79 = shouldLog4 | 2;
    }

    else
    {
      v79 = shouldLog4;
    }

    oSLogObject4 = [v77 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v81 = v79;
    }

    else
    {
      v81 = v79 & 2;
    }

    if (v81)
    {
      v82 = objc_opt_class();
      accountName10 = [(SSAccount *)self accountName];
      v84 = SSHashIfNeeded(accountName10);
      accountName11 = [accountCopy accountName];
      v86 = SSHashIfNeeded(accountName11);
      v443 = 138543874;
      v444 = v82;
      v445 = 2114;
      v446 = v84;
      v447 = 2114;
      v448 = v86;
      LODWORD(v440) = 32;
      v424 = &v443;
      v87 = _os_log_send_and_compose_impl();

      accountCopy = v442;
      if (!v87)
      {
LABEL_68:

        [(SSAccount *)self setAltDSID:altDSID];
        v27 = 1;
        goto LABEL_70;
      }

      oSLogObject4 = [MEMORY[0x1E696AEC0] stringWithCString:v87 encoding:{4, &v443, v440}];
      free(v87);
      SSFileLog(v77, @"%@", v88, v89, v90, v91, v92, v93, oSLogObject4);
    }

    goto LABEL_68;
  }

LABEL_70:
  iTunesPassSerialNumber = [accountCopy ITunesPassSerialNumber];

  if (!iTunesPassSerialNumber)
  {
    goto LABEL_87;
  }

  iTunesPassSerialNumber2 = [(SSAccount *)self ITunesPassSerialNumber];
  v96 = iTunesPassSerialNumber2;
  if (iTunesPassSerialNumber != iTunesPassSerialNumber2)
  {
    iTunesPassSerialNumber3 = [(SSAccount *)self ITunesPassSerialNumber];
    v98 = [iTunesPassSerialNumber isEqual:iTunesPassSerialNumber3];

    if (v98)
    {
      goto LABEL_87;
    }

    v99 = +[SSLogConfig sharedAccountsConfig];
    if (!v99)
    {
      v99 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v99 shouldLog];
    if ([v99 shouldLogToDisk])
    {
      v101 = shouldLog5 | 2;
    }

    else
    {
      v101 = shouldLog5;
    }

    oSLogObject5 = [v99 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v103 = v101;
    }

    else
    {
      v103 = v101 & 2;
    }

    if (v103)
    {
      v104 = objc_opt_class();
      accountName12 = [(SSAccount *)self accountName];
      v106 = SSHashIfNeeded(accountName12);
      accountName13 = [accountCopy accountName];
      v108 = SSHashIfNeeded(accountName13);
      v443 = 138543874;
      v444 = v104;
      v445 = 2114;
      v446 = v106;
      v447 = 2114;
      v448 = v108;
      LODWORD(v440) = 32;
      v425 = &v443;
      v109 = _os_log_send_and_compose_impl();

      accountCopy = v442;
      if (!v109)
      {
LABEL_85:

        [(SSAccount *)self setITunesPassSerialNumber:iTunesPassSerialNumber];
        v27 = 1;
        goto LABEL_87;
      }

      oSLogObject5 = [MEMORY[0x1E696AEC0] stringWithCString:v109 encoding:{4, &v443, v440}];
      free(v109);
      SSFileLog(v99, @"%@", v110, v111, v112, v113, v114, v115, oSLogObject5);
    }

    goto LABEL_85;
  }

LABEL_87:
  secureToken = [accountCopy secureToken];

  if (!secureToken)
  {
    goto LABEL_104;
  }

  secureToken2 = [(SSAccount *)self secureToken];
  v118 = secureToken2;
  if (secureToken != secureToken2)
  {
    secureToken3 = [(SSAccount *)self secureToken];
    v120 = [secureToken isEqual:secureToken3];

    if (v120)
    {
      goto LABEL_104;
    }

    v121 = +[SSLogConfig sharedAccountsConfig];
    if (!v121)
    {
      v121 = +[SSLogConfig sharedConfig];
    }

    shouldLog6 = [v121 shouldLog];
    if ([v121 shouldLogToDisk])
    {
      v123 = shouldLog6 | 2;
    }

    else
    {
      v123 = shouldLog6;
    }

    oSLogObject6 = [v121 OSLogObject];
    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
    {
      v125 = v123;
    }

    else
    {
      v125 = v123 & 2;
    }

    if (v125)
    {
      v126 = objc_opt_class();
      accountName14 = [(SSAccount *)self accountName];
      v128 = SSHashIfNeeded(accountName14);
      accountName15 = [accountCopy accountName];
      v130 = SSHashIfNeeded(accountName15);
      v443 = 138543874;
      v444 = v126;
      v445 = 2114;
      v446 = v128;
      v447 = 2114;
      v448 = v130;
      LODWORD(v440) = 32;
      v426 = &v443;
      v131 = _os_log_send_and_compose_impl();

      accountCopy = v442;
      if (!v131)
      {
LABEL_102:

        [(SSAccount *)self setSecureToken:secureToken];
        v27 = 1;
        goto LABEL_104;
      }

      oSLogObject6 = [MEMORY[0x1E696AEC0] stringWithCString:v131 encoding:{4, &v443, v440}];
      free(v131);
      SSFileLog(v121, @"%@", v132, v133, v134, v135, v136, v137, oSLogObject6);
    }

    goto LABEL_102;
  }

LABEL_104:
  storeFrontIdentifier = [accountCopy storeFrontIdentifier];

  if (!storeFrontIdentifier)
  {
    goto LABEL_121;
  }

  storeFrontIdentifier2 = [(SSAccount *)self storeFrontIdentifier];
  v140 = storeFrontIdentifier2;
  if (storeFrontIdentifier != storeFrontIdentifier2)
  {
    storeFrontIdentifier3 = [(SSAccount *)self storeFrontIdentifier];
    v142 = [storeFrontIdentifier isEqual:storeFrontIdentifier3];

    if (v142)
    {
      goto LABEL_121;
    }

    v143 = +[SSLogConfig sharedAccountsConfig];
    if (!v143)
    {
      v143 = +[SSLogConfig sharedConfig];
    }

    shouldLog7 = [v143 shouldLog];
    if ([v143 shouldLogToDisk])
    {
      v145 = shouldLog7 | 2;
    }

    else
    {
      v145 = shouldLog7;
    }

    oSLogObject7 = [v143 OSLogObject];
    if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
    {
      v147 = v145;
    }

    else
    {
      v147 = v145 & 2;
    }

    if (v147)
    {
      v148 = objc_opt_class();
      accountName16 = [(SSAccount *)self accountName];
      v150 = SSHashIfNeeded(accountName16);
      accountName17 = [accountCopy accountName];
      v152 = SSHashIfNeeded(accountName17);
      v443 = 138543874;
      v444 = v148;
      v445 = 2114;
      v446 = v150;
      v447 = 2114;
      v448 = v152;
      LODWORD(v440) = 32;
      v427 = &v443;
      v153 = _os_log_send_and_compose_impl();

      accountCopy = v442;
      if (!v153)
      {
LABEL_119:

        [(SSAccount *)self setStoreFrontIdentifier:storeFrontIdentifier];
        v27 = 1;
        goto LABEL_121;
      }

      oSLogObject7 = [MEMORY[0x1E696AEC0] stringWithCString:v153 encoding:{4, &v443, v440}];
      free(v153);
      SSFileLog(v143, @"%@", v154, v155, v156, v157, v158, v159, oSLogObject7);
    }

    goto LABEL_119;
  }

LABEL_121:
  firstName = [accountCopy firstName];

  if (!firstName)
  {
    goto LABEL_138;
  }

  firstName2 = [(SSAccount *)self firstName];
  v162 = firstName2;
  if (firstName != firstName2)
  {
    firstName3 = [(SSAccount *)self firstName];
    v164 = [firstName isEqual:firstName3];

    if (v164)
    {
      goto LABEL_138;
    }

    v165 = +[SSLogConfig sharedAccountsConfig];
    if (!v165)
    {
      v165 = +[SSLogConfig sharedConfig];
    }

    shouldLog8 = [v165 shouldLog];
    if ([v165 shouldLogToDisk])
    {
      v167 = shouldLog8 | 2;
    }

    else
    {
      v167 = shouldLog8;
    }

    oSLogObject8 = [v165 OSLogObject];
    if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
    {
      v169 = v167;
    }

    else
    {
      v169 = v167 & 2;
    }

    if (v169)
    {
      v170 = objc_opt_class();
      accountName18 = [(SSAccount *)self accountName];
      v172 = SSHashIfNeeded(accountName18);
      accountName19 = [accountCopy accountName];
      v174 = SSHashIfNeeded(accountName19);
      v443 = 138543874;
      v444 = v170;
      v445 = 2114;
      v446 = v172;
      v447 = 2114;
      v448 = v174;
      LODWORD(v440) = 32;
      v428 = &v443;
      v175 = _os_log_send_and_compose_impl();

      accountCopy = v442;
      if (!v175)
      {
LABEL_136:

        [(SSAccount *)self setFirstName:firstName];
        v27 = 1;
        goto LABEL_138;
      }

      oSLogObject8 = [MEMORY[0x1E696AEC0] stringWithCString:v175 encoding:{4, &v443, v440}];
      free(v175);
      SSFileLog(v165, @"%@", v176, v177, v178, v179, v180, v181, oSLogObject8);
    }

    goto LABEL_136;
  }

LABEL_138:
  lastName = [accountCopy lastName];

  v441 = lastName;
  if (!lastName)
  {
    goto LABEL_155;
  }

  lastName2 = [(SSAccount *)self lastName];
  v184 = lastName2;
  if (lastName == lastName2)
  {

    goto LABEL_155;
  }

  lastName3 = [(SSAccount *)self lastName];
  v186 = [lastName isEqual:lastName3];

  if (v186)
  {
    goto LABEL_155;
  }

  v187 = +[SSLogConfig sharedAccountsConfig];
  if (!v187)
  {
    v187 = +[SSLogConfig sharedConfig];
  }

  shouldLog9 = [v187 shouldLog];
  if ([v187 shouldLogToDisk])
  {
    v189 = shouldLog9 | 2;
  }

  else
  {
    v189 = shouldLog9;
  }

  oSLogObject9 = [v187 OSLogObject];
  if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_DEFAULT))
  {
    v191 = v189;
  }

  else
  {
    v191 = v189 & 2;
  }

  if (!v191)
  {
    goto LABEL_153;
  }

  v192 = objc_opt_class();
  accountName20 = [(SSAccount *)self accountName];
  v194 = SSHashIfNeeded(accountName20);
  accountName21 = [accountCopy accountName];
  v196 = SSHashIfNeeded(accountName21);
  v443 = 138543874;
  v444 = v192;
  v445 = 2114;
  v446 = v194;
  v447 = 2114;
  v448 = v196;
  LODWORD(v440) = 32;
  v429 = &v443;
  v197 = _os_log_send_and_compose_impl();

  accountCopy = v442;
  lastName = v441;
  if (v197)
  {
    oSLogObject9 = [MEMORY[0x1E696AEC0] stringWithCString:v197 encoding:{4, &v443, v440}];
    free(v197);
    SSFileLog(v187, @"%@", v198, v199, v200, v201, v202, v203, oSLogObject9);
LABEL_153:
  }

  [(SSAccount *)self setLastName:lastName];
  v27 = 1;
LABEL_155:
  if (![accountCopy isActiveLockerAccount])
  {
    goto LABEL_170;
  }

  v204 = +[SSLogConfig sharedAccountsConfig];
  if (!v204)
  {
    v204 = +[SSLogConfig sharedConfig];
  }

  shouldLog10 = [v204 shouldLog];
  if ([v204 shouldLogToDisk])
  {
    v206 = shouldLog10 | 2;
  }

  else
  {
    v206 = shouldLog10;
  }

  oSLogObject10 = [v204 OSLogObject];
  if (os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_DEFAULT))
  {
    v208 = v206;
  }

  else
  {
    v208 = v206 & 2;
  }

  if (!v208)
  {
    lastName = v441;
    goto LABEL_168;
  }

  v209 = objc_opt_class();
  accountName22 = [(SSAccount *)self accountName];
  v211 = SSHashIfNeeded(accountName22);
  accountName23 = [accountCopy accountName];
  v213 = SSHashIfNeeded(accountName23);
  v443 = 138543874;
  v444 = v209;
  v445 = 2114;
  v446 = v211;
  v447 = 2114;
  v448 = v213;
  LODWORD(v440) = 32;
  v430 = &v443;
  v214 = _os_log_send_and_compose_impl();

  accountCopy = v442;
  lastName = v441;
  if (v214)
  {
    oSLogObject10 = [MEMORY[0x1E696AEC0] stringWithCString:v214 encoding:{4, &v443, v440}];
    free(v214);
    SSFileLog(v204, @"%@", v215, v216, v217, v218, v219, v220, oSLogObject10);
LABEL_168:
  }

  v27 = 1;
  [(SSAccount *)self setActiveLockerAccount:1];
LABEL_170:
  if (accountCopy)
  {
    accountKind = [(SSAccount *)self accountKind];
    if (accountKind == [accountCopy accountKind])
    {
      goto LABEL_185;
    }

    v222 = +[SSLogConfig sharedAccountsConfig];
    if (!v222)
    {
      v222 = +[SSLogConfig sharedConfig];
    }

    shouldLog11 = [v222 shouldLog];
    if ([v222 shouldLogToDisk])
    {
      v224 = shouldLog11 | 2;
    }

    else
    {
      v224 = shouldLog11;
    }

    oSLogObject11 = [v222 OSLogObject];
    if (os_log_type_enabled(oSLogObject11, OS_LOG_TYPE_DEFAULT))
    {
      v226 = v224;
    }

    else
    {
      v226 = v224 & 2;
    }

    if (v226)
    {
      v227 = objc_opt_class();
      accountName24 = [(SSAccount *)self accountName];
      v229 = SSHashIfNeeded(accountName24);
      accountName25 = [accountCopy accountName];
      v231 = SSHashIfNeeded(accountName25);
      v443 = 138543874;
      v444 = v227;
      v445 = 2114;
      v446 = v229;
      v447 = 2114;
      v448 = v231;
      LODWORD(v440) = 32;
      v430 = &v443;
      v232 = _os_log_send_and_compose_impl();

      accountCopy = v442;
      if (!v232)
      {
LABEL_184:

        -[SSAccount setAccountKind:](self, "setAccountKind:", [accountCopy accountKind]);
        v27 = 1;
LABEL_185:
        accountScope = [(SSAccount *)self accountScope];
        if (accountScope == [accountCopy accountScope])
        {
          goto LABEL_199;
        }

        v240 = +[SSLogConfig sharedAccountsConfig];
        if (!v240)
        {
          v240 = +[SSLogConfig sharedConfig];
        }

        shouldLog12 = [v240 shouldLog];
        if ([v240 shouldLogToDisk])
        {
          v242 = shouldLog12 | 2;
        }

        else
        {
          v242 = shouldLog12;
        }

        oSLogObject12 = [v240 OSLogObject];
        if (os_log_type_enabled(oSLogObject12, OS_LOG_TYPE_DEFAULT))
        {
          v244 = v242;
        }

        else
        {
          v244 = v242 & 2;
        }

        if (v244)
        {
          v245 = objc_opt_class();
          accountName26 = [(SSAccount *)self accountName];
          v247 = SSHashIfNeeded(accountName26);
          accountName27 = [accountCopy accountName];
          v249 = SSHashIfNeeded(accountName27);
          v443 = 138543874;
          v444 = v245;
          v445 = 2114;
          v446 = v247;
          v447 = 2114;
          v448 = v249;
          LODWORD(v440) = 32;
          v431 = &v443;
          v250 = _os_log_send_and_compose_impl();

          accountCopy = v442;
          if (!v250)
          {
LABEL_198:

            -[SSAccount setAccountScope:](self, "setAccountScope:", [accountCopy accountScope]);
            v27 = 1;
LABEL_199:
            accountSource = [(SSAccount *)self accountSource];
            if (accountSource == [accountCopy accountSource])
            {
              goto LABEL_213;
            }

            v258 = +[SSLogConfig sharedAccountsConfig];
            if (!v258)
            {
              v258 = +[SSLogConfig sharedConfig];
            }

            shouldLog13 = [v258 shouldLog];
            if ([v258 shouldLogToDisk])
            {
              v260 = shouldLog13 | 2;
            }

            else
            {
              v260 = shouldLog13;
            }

            oSLogObject13 = [v258 OSLogObject];
            if (os_log_type_enabled(oSLogObject13, OS_LOG_TYPE_DEFAULT))
            {
              v262 = v260;
            }

            else
            {
              v262 = v260 & 2;
            }

            if (v262)
            {
              v263 = objc_opt_class();
              accountName28 = [(SSAccount *)self accountName];
              v265 = SSHashIfNeeded(accountName28);
              accountName29 = [accountCopy accountName];
              v267 = SSHashIfNeeded(accountName29);
              v443 = 138543874;
              v444 = v263;
              v445 = 2114;
              v446 = v265;
              v447 = 2114;
              v448 = v267;
              LODWORD(v440) = 32;
              v432 = &v443;
              v268 = _os_log_send_and_compose_impl();

              accountCopy = v442;
              if (!v268)
              {
LABEL_212:

                -[SSAccount setAccountSource:](self, "setAccountSource:", [accountCopy accountSource]);
                v27 = 1;
LABEL_213:
                didFallbackToPassword = [(SSAccount *)self didFallbackToPassword];
                if (didFallbackToPassword == [accountCopy didFallbackToPassword])
                {
                  goto LABEL_227;
                }

                v276 = +[SSLogConfig sharedAccountsConfig];
                if (!v276)
                {
                  v276 = +[SSLogConfig sharedConfig];
                }

                shouldLog14 = [v276 shouldLog];
                if ([v276 shouldLogToDisk])
                {
                  v278 = shouldLog14 | 2;
                }

                else
                {
                  v278 = shouldLog14;
                }

                oSLogObject14 = [v276 OSLogObject];
                if (os_log_type_enabled(oSLogObject14, OS_LOG_TYPE_DEFAULT))
                {
                  v280 = v278;
                }

                else
                {
                  v280 = v278 & 2;
                }

                if (v280)
                {
                  v281 = objc_opt_class();
                  accountName30 = [(SSAccount *)self accountName];
                  v283 = SSHashIfNeeded(accountName30);
                  accountName31 = [accountCopy accountName];
                  v285 = SSHashIfNeeded(accountName31);
                  v443 = 138543874;
                  v444 = v281;
                  v445 = 2114;
                  v446 = v283;
                  v447 = 2114;
                  v448 = v285;
                  LODWORD(v440) = 32;
                  v433 = &v443;
                  v286 = _os_log_send_and_compose_impl();

                  accountCopy = v442;
                  if (!v286)
                  {
LABEL_226:

                    -[SSAccount setDidFallbackToPassword:](self, "setDidFallbackToPassword:", [accountCopy didFallbackToPassword]);
                    v27 = 1;
LABEL_227:
                    freeDownloadsPasswordSetting = [(SSAccount *)self freeDownloadsPasswordSetting];
                    if (freeDownloadsPasswordSetting == [accountCopy freeDownloadsPasswordSetting])
                    {
                      goto LABEL_241;
                    }

                    v294 = +[SSLogConfig sharedAccountsConfig];
                    if (!v294)
                    {
                      v294 = +[SSLogConfig sharedConfig];
                    }

                    shouldLog15 = [v294 shouldLog];
                    if ([v294 shouldLogToDisk])
                    {
                      v296 = shouldLog15 | 2;
                    }

                    else
                    {
                      v296 = shouldLog15;
                    }

                    oSLogObject15 = [v294 OSLogObject];
                    if (os_log_type_enabled(oSLogObject15, OS_LOG_TYPE_DEFAULT))
                    {
                      v298 = v296;
                    }

                    else
                    {
                      v298 = v296 & 2;
                    }

                    if (v298)
                    {
                      v299 = objc_opt_class();
                      accountName32 = [(SSAccount *)self accountName];
                      v301 = SSHashIfNeeded(accountName32);
                      accountName33 = [accountCopy accountName];
                      v303 = SSHashIfNeeded(accountName33);
                      v443 = 138543874;
                      v444 = v299;
                      v445 = 2114;
                      v446 = v301;
                      v447 = 2114;
                      v448 = v303;
                      LODWORD(v440) = 32;
                      v434 = &v443;
                      v304 = _os_log_send_and_compose_impl();

                      accountCopy = v442;
                      if (!v304)
                      {
LABEL_240:

                        -[SSAccount setFreeDownloadsPasswordSetting:](self, "setFreeDownloadsPasswordSetting:", [accountCopy freeDownloadsPasswordSetting]);
                        v27 = 1;
LABEL_241:
                        isManagedAppleID = [(SSAccount *)self isManagedAppleID];
                        if (isManagedAppleID == [accountCopy isManagedAppleID])
                        {
                          goto LABEL_255;
                        }

                        v312 = +[SSLogConfig sharedAccountsConfig];
                        if (!v312)
                        {
                          v312 = +[SSLogConfig sharedConfig];
                        }

                        shouldLog16 = [v312 shouldLog];
                        if ([v312 shouldLogToDisk])
                        {
                          v314 = shouldLog16 | 2;
                        }

                        else
                        {
                          v314 = shouldLog16;
                        }

                        oSLogObject16 = [v312 OSLogObject];
                        if (os_log_type_enabled(oSLogObject16, OS_LOG_TYPE_DEFAULT))
                        {
                          v316 = v314;
                        }

                        else
                        {
                          v316 = v314 & 2;
                        }

                        if (v316)
                        {
                          v317 = objc_opt_class();
                          accountName34 = [(SSAccount *)self accountName];
                          v319 = SSHashIfNeeded(accountName34);
                          accountName35 = [accountCopy accountName];
                          v321 = SSHashIfNeeded(accountName35);
                          v443 = 138543874;
                          v444 = v317;
                          v445 = 2114;
                          v446 = v319;
                          v447 = 2114;
                          v448 = v321;
                          LODWORD(v440) = 32;
                          v435 = &v443;
                          v322 = _os_log_send_and_compose_impl();

                          accountCopy = v442;
                          if (!v322)
                          {
LABEL_254:

                            -[SSAccount setManagedAppleID:](self, "setManagedAppleID:", [accountCopy isManagedAppleID]);
                            v27 = 1;
LABEL_255:
                            isNewCustomer = [(SSAccount *)self isNewCustomer];
                            if (isNewCustomer == [accountCopy isNewCustomer])
                            {
                              goto LABEL_269;
                            }

                            v330 = +[SSLogConfig sharedAccountsConfig];
                            if (!v330)
                            {
                              v330 = +[SSLogConfig sharedConfig];
                            }

                            shouldLog17 = [v330 shouldLog];
                            if ([v330 shouldLogToDisk])
                            {
                              v332 = shouldLog17 | 2;
                            }

                            else
                            {
                              v332 = shouldLog17;
                            }

                            oSLogObject17 = [v330 OSLogObject];
                            if (os_log_type_enabled(oSLogObject17, OS_LOG_TYPE_DEFAULT))
                            {
                              v334 = v332;
                            }

                            else
                            {
                              v334 = v332 & 2;
                            }

                            if (v334)
                            {
                              v335 = objc_opt_class();
                              accountName36 = [(SSAccount *)self accountName];
                              v337 = SSHashIfNeeded(accountName36);
                              accountName37 = [accountCopy accountName];
                              v339 = SSHashIfNeeded(accountName37);
                              v443 = 138543874;
                              v444 = v335;
                              v445 = 2114;
                              v446 = v337;
                              v447 = 2114;
                              v448 = v339;
                              LODWORD(v440) = 32;
                              v436 = &v443;
                              v340 = _os_log_send_and_compose_impl();

                              accountCopy = v442;
                              if (!v340)
                              {
LABEL_268:

                                -[SSAccount setNewCustomer:](self, "setNewCustomer:", [accountCopy isNewCustomer]);
                                v27 = 1;
LABEL_269:
                                paidPurchasesPasswordSetting = [(SSAccount *)self paidPurchasesPasswordSetting];
                                if (paidPurchasesPasswordSetting == [accountCopy paidPurchasesPasswordSetting])
                                {
                                  goto LABEL_283;
                                }

                                v348 = +[SSLogConfig sharedAccountsConfig];
                                if (!v348)
                                {
                                  v348 = +[SSLogConfig sharedConfig];
                                }

                                shouldLog18 = [v348 shouldLog];
                                if ([v348 shouldLogToDisk])
                                {
                                  v350 = shouldLog18 | 2;
                                }

                                else
                                {
                                  v350 = shouldLog18;
                                }

                                oSLogObject18 = [v348 OSLogObject];
                                if (os_log_type_enabled(oSLogObject18, OS_LOG_TYPE_DEFAULT))
                                {
                                  v352 = v350;
                                }

                                else
                                {
                                  v352 = v350 & 2;
                                }

                                if (v352)
                                {
                                  v353 = objc_opt_class();
                                  accountName38 = [(SSAccount *)self accountName];
                                  v355 = SSHashIfNeeded(accountName38);
                                  accountName39 = [accountCopy accountName];
                                  v357 = SSHashIfNeeded(accountName39);
                                  v443 = 138543874;
                                  v444 = v353;
                                  v445 = 2114;
                                  v446 = v355;
                                  v447 = 2114;
                                  v448 = v357;
                                  LODWORD(v440) = 32;
                                  v437 = &v443;
                                  v358 = _os_log_send_and_compose_impl();

                                  accountCopy = v442;
                                  if (!v358)
                                  {
LABEL_282:

                                    -[SSAccount setPaidPurchasesPasswordSetting:](self, "setPaidPurchasesPasswordSetting:", [accountCopy paidPurchasesPasswordSetting]);
                                    v27 = 1;
LABEL_283:
                                    availableServiceTypes = [accountCopy availableServiceTypes];
                                    if (availableServiceTypes == [(SSAccount *)self availableServiceTypes])
                                    {
                                      goto LABEL_297;
                                    }

                                    v366 = +[SSLogConfig sharedAccountsConfig];
                                    if (!v366)
                                    {
                                      v366 = +[SSLogConfig sharedConfig];
                                    }

                                    shouldLog19 = [v366 shouldLog];
                                    if ([v366 shouldLogToDisk])
                                    {
                                      v368 = shouldLog19 | 2;
                                    }

                                    else
                                    {
                                      v368 = shouldLog19;
                                    }

                                    oSLogObject19 = [v366 OSLogObject];
                                    if (os_log_type_enabled(oSLogObject19, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v370 = v368;
                                    }

                                    else
                                    {
                                      v370 = v368 & 2;
                                    }

                                    if (v370)
                                    {
                                      v371 = objc_opt_class();
                                      accountName40 = [(SSAccount *)self accountName];
                                      v373 = SSHashIfNeeded(accountName40);
                                      accountName41 = [v442 accountName];
                                      v375 = SSHashIfNeeded(accountName41);
                                      v443 = 138543874;
                                      v444 = v371;
                                      v445 = 2114;
                                      v446 = v373;
                                      v447 = 2114;
                                      v448 = v375;
                                      LODWORD(v440) = 32;
                                      v438 = &v443;
                                      v376 = _os_log_send_and_compose_impl();

                                      if (!v376)
                                      {
LABEL_296:

                                        [(SSAccount *)self setAvailableServiceTypes:availableServiceTypes];
                                        v27 = 1;
                                        accountCopy = v442;
LABEL_297:
                                        enabledServiceTypes = [accountCopy enabledServiceTypes];
                                        if (enabledServiceTypes == [(SSAccount *)self enabledServiceTypes])
                                        {
                                          goto LABEL_310;
                                        }

                                        v384 = +[SSLogConfig sharedAccountsConfig];
                                        if (!v384)
                                        {
                                          v384 = +[SSLogConfig sharedConfig];
                                        }

                                        shouldLog20 = [v384 shouldLog];
                                        if ([v384 shouldLogToDisk])
                                        {
                                          shouldLog20 |= 2u;
                                        }

                                        oSLogObject20 = [v384 OSLogObject];
                                        if (os_log_type_enabled(oSLogObject20, OS_LOG_TYPE_DEFAULT))
                                        {
                                          v387 = shouldLog20;
                                        }

                                        else
                                        {
                                          v387 = shouldLog20 & 2;
                                        }

                                        if (v387)
                                        {
                                          v388 = objc_opt_class();
                                          accountName42 = [(SSAccount *)self accountName];
                                          v390 = SSHashIfNeeded(accountName42);
                                          accountName43 = [v442 accountName];
                                          v392 = SSHashIfNeeded(accountName43);
                                          v443 = 138543874;
                                          v444 = v388;
                                          v445 = 2114;
                                          v446 = v390;
                                          v447 = 2114;
                                          v448 = v392;
                                          LODWORD(v440) = 32;
                                          v439 = &v443;
                                          v393 = _os_log_send_and_compose_impl();

                                          if (!v393)
                                          {
LABEL_309:

                                            [(SSAccount *)self setEnabledServiceTypes:enabledServiceTypes];
                                            v27 = 1;
                                            accountCopy = v442;
LABEL_310:
                                            v400 = [accountCopy eligibilityForService:{0, v439}];
                                            bOOLValue = [v400 BOOLValue];
                                            v402 = [(SSAccount *)self eligibilityForService:0];
                                            bOOLValue2 = [v402 BOOLValue];

                                            lastName = v441;
                                            if (bOOLValue == bOOLValue2)
                                            {
LABEL_323:

                                              goto LABEL_324;
                                            }

                                            v404 = +[SSLogConfig sharedAccountsConfig];
                                            if (!v404)
                                            {
                                              v404 = +[SSLogConfig sharedConfig];
                                            }

                                            shouldLog21 = [v404 shouldLog];
                                            if ([v404 shouldLogToDisk])
                                            {
                                              shouldLog21 |= 2u;
                                            }

                                            oSLogObject21 = [v404 OSLogObject];
                                            if (os_log_type_enabled(oSLogObject21, OS_LOG_TYPE_DEFAULT))
                                            {
                                              v407 = shouldLog21;
                                            }

                                            else
                                            {
                                              v407 = shouldLog21 & 2;
                                            }

                                            if (v407)
                                            {
                                              v408 = objc_opt_class();
                                              accountName44 = [(SSAccount *)self accountName];
                                              v410 = SSHashIfNeeded(accountName44);
                                              accountName45 = [v442 accountName];
                                              v412 = SSHashIfNeeded(accountName45);
                                              v443 = 138543874;
                                              v444 = v408;
                                              v445 = 2114;
                                              v446 = v410;
                                              v447 = 2114;
                                              v448 = v412;
                                              LODWORD(v440) = 32;
                                              v413 = _os_log_send_and_compose_impl();

                                              lastName = v441;
                                              if (!v413)
                                              {
LABEL_322:

                                                [(SSAccount *)self setEligibility:v400 forServiceType:0];
                                                v27 = 1;
                                                accountCopy = v442;
                                                goto LABEL_323;
                                              }

                                              oSLogObject21 = [MEMORY[0x1E696AEC0] stringWithCString:v413 encoding:{4, &v443, v440}];
                                              free(v413);
                                              SSFileLog(v404, @"%@", v414, v415, v416, v417, v418, v419, oSLogObject21);
                                            }

                                            goto LABEL_322;
                                          }

                                          oSLogObject20 = [MEMORY[0x1E696AEC0] stringWithCString:v393 encoding:{4, &v443, v440}];
                                          free(v393);
                                          SSFileLog(v384, @"%@", v394, v395, v396, v397, v398, v399, oSLogObject20);
                                        }

                                        goto LABEL_309;
                                      }

                                      oSLogObject19 = [MEMORY[0x1E696AEC0] stringWithCString:v376 encoding:{4, &v443, v440}];
                                      free(v376);
                                      SSFileLog(v366, @"%@", v377, v378, v379, v380, v381, v382, oSLogObject19);
                                    }

                                    goto LABEL_296;
                                  }

                                  oSLogObject18 = [MEMORY[0x1E696AEC0] stringWithCString:v358 encoding:{4, &v443, v440}];
                                  free(v358);
                                  SSFileLog(v348, @"%@", v359, v360, v361, v362, v363, v364, oSLogObject18);
                                }

                                goto LABEL_282;
                              }

                              oSLogObject17 = [MEMORY[0x1E696AEC0] stringWithCString:v340 encoding:{4, &v443, v440}];
                              free(v340);
                              SSFileLog(v330, @"%@", v341, v342, v343, v344, v345, v346, oSLogObject17);
                            }

                            goto LABEL_268;
                          }

                          oSLogObject16 = [MEMORY[0x1E696AEC0] stringWithCString:v322 encoding:{4, &v443, v440}];
                          free(v322);
                          SSFileLog(v312, @"%@", v323, v324, v325, v326, v327, v328, oSLogObject16);
                        }

                        goto LABEL_254;
                      }

                      oSLogObject15 = [MEMORY[0x1E696AEC0] stringWithCString:v304 encoding:{4, &v443, v440}];
                      free(v304);
                      SSFileLog(v294, @"%@", v305, v306, v307, v308, v309, v310, oSLogObject15);
                    }

                    goto LABEL_240;
                  }

                  oSLogObject14 = [MEMORY[0x1E696AEC0] stringWithCString:v286 encoding:{4, &v443, v440}];
                  free(v286);
                  SSFileLog(v276, @"%@", v287, v288, v289, v290, v291, v292, oSLogObject14);
                }

                goto LABEL_226;
              }

              oSLogObject13 = [MEMORY[0x1E696AEC0] stringWithCString:v268 encoding:{4, &v443, v440}];
              free(v268);
              SSFileLog(v258, @"%@", v269, v270, v271, v272, v273, v274, oSLogObject13);
            }

            goto LABEL_212;
          }

          oSLogObject12 = [MEMORY[0x1E696AEC0] stringWithCString:v250 encoding:{4, &v443, v440}];
          free(v250);
          SSFileLog(v240, @"%@", v251, v252, v253, v254, v255, v256, oSLogObject12);
        }

        goto LABEL_198;
      }

      oSLogObject11 = [MEMORY[0x1E696AEC0] stringWithCString:v232 encoding:{4, &v443, v440}];
      free(v232);
      SSFileLog(v222, @"%@", v233, v234, v235, v236, v237, v238, oSLogObject11);
    }

    goto LABEL_184;
  }

LABEL_324:

  return v27;
}

- (id)popBiometricToken
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__SSAccount_popBiometricToken__block_invoke;
  v6[3] = &unk_1E84ABF40;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(backingAccountAccessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __30__SSAccount_popBiometricToken__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

- (void)setBiometricToken:(id)token
{
  tokenCopy = token;
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__SSAccount_setBiometricToken___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = tokenCopy;
  v6 = tokenCopy;
  dispatch_barrier_async(backingAccountAccessQueue, v7);
}

void __31__SSAccount_setBiometricToken___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 16);
  v4 = (v2 + 16);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

- (void)setLockdownDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"AltDSID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SSAccount *)self setAltDSID:v4];
  }

  v5 = [dictionaryCopy objectForKey:@"DSPersonID"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SSAccount *)self setUniqueIdentifier:v5];
  }

  v6 = [dictionaryCopy objectForKey:@"AppleID"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SSAccount *)self setAccountName:v6];
  }

  v7 = [dictionaryCopy objectForKey:@"AccountKind"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SSAccount setAccountKind:](self, "setAccountKind:", [v7 integerValue]);
  }

  v8 = [dictionaryCopy objectForKey:@"CreditDisplayString"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SSAccount *)self setCreditsString:v8];
  }

  v9 = [dictionaryCopy objectForKey:@"AccountURLBagType"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SSAccount setAccountScope:](self, "setAccountScope:", [v9 isEqualToString:@"sandbox"]);
  }

  v10 = [dictionaryCopy objectForKey:@"AccountAvailableServiceTypes"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SSAccount setAvailableServiceTypes:](self, "setAvailableServiceTypes:", [v10 integerValue]);
  }

  v11 = [dictionaryCopy objectForKey:@"AccountServiceTypes"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SSAccount setEnabledServiceTypes:](self, "setEnabledServiceTypes:", [v11 integerValue]);
  }

  else
  {
    v12 = [dictionaryCopy objectForKey:@"AccountSocialEnabled"];

    if (objc_opt_respondsToSelector())
    {
      -[SSAccount setSocialEnabled:](self, "setSocialEnabled:", [v12 BOOLValue]);
    }

    v11 = v12;
  }

  v13 = [dictionaryCopy objectForKey:@"DidFallbackToPassword"];

  if (objc_opt_respondsToSelector())
  {
    -[SSAccount setDidFallbackToPassword:](self, "setDidFallbackToPassword:", [v13 BOOLValue]);
  }

  v14 = [dictionaryCopy objectForKey:@"AccountIsNewCustomer"];

  if (objc_opt_respondsToSelector())
  {
    -[SSAccount setNewCustomer:](self, "setNewCustomer:", [v14 BOOLValue]);
  }

  v15 = [dictionaryCopy objectForKey:@"AccountSource"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SSAccount setAccountSource:](self, "setAccountSource:", [v15 isEqualToString:@"iTunes"]);
  }

  v16 = [dictionaryCopy objectForKey:@"AccountStoreFront"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SSAccount *)self setStoreFrontIdentifier:v16];
  }

  v17 = [dictionaryCopy objectForKey:@"AccountITunesPassSerial"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SSAccount *)self setITunesPassSerialNumber:v17];
  }

  v18 = [dictionaryCopy objectForKey:@"FirstName"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SSAccount *)self setFirstName:v18];
  }

  v19 = [dictionaryCopy objectForKey:@"LastName"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SSAccount *)self setLastName:v19];
  }

  v20 = SSVLockdownAccountServiceEligibilityKey();
  v21 = [dictionaryCopy objectForKey:v20];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SSAccount *)self setEligibility:v21 forServiceType:0];
  }

  v22 = [dictionaryCopy objectForKey:@"AccountFreeDownloadsPasswordSetting"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SSAccount setFreeDownloadsPasswordSetting:](self, "setFreeDownloadsPasswordSetting:", [v22 integerValue]);
  }

  v23 = [dictionaryCopy objectForKey:@"AccountPaidPurchasesPasswordSetting"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SSAccount setPaidPurchasesPasswordSetting:](self, "setPaidPurchasesPasswordSetting:", [v23 integerValue]);
  }

  v24 = [dictionaryCopy objectForKey:@"AccountIsManagedAppleID"];

  if (objc_opt_respondsToSelector())
  {
    -[SSAccount setManagedAppleID:](self, "setManagedAppleID:", [v24 BOOLValue]);
  }
}

+ (id)serverValueForAccountPasswordSettingValue:(int64_t)value
{
  v3 = @"always";
  if (value == 2)
  {
    v3 = @"sometimes";
  }

  if (value == 3)
  {
    return @"never";
  }

  else
  {
    return v3;
  }
}

- (void)updateAccountPasswordSettingsWithRequestProperties:(id)properties completionBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  blockCopy = block;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v29 = 136446210;
      v30 = "[SSAccount updateAccountPasswordSettingsWithRequestProperties:completionBlock:]";
      LODWORD(v26) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v29, v26}];
      free(v13);
      SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  if ((SSIsDaemon() & 1) == 0)
  {
    v20 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v20, "0", 151);
    uniqueIdentifier = [(SSAccount *)self uniqueIdentifier];
    SSXPCDictionarySetObject(v20, "1", uniqueIdentifier);

    v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[SSAccount freeDownloadsPasswordSetting](self, "freeDownloadsPasswordSetting")}];
    SSXPCDictionarySetObject(v20, "2", v22);

    v23 = [MEMORY[0x1E696AD98] numberWithInt:{-[SSAccount paidPurchasesPasswordSetting](self, "paidPurchasesPasswordSetting")}];
    SSXPCDictionarySetObject(v20, "3", v23);

    if (propertiesCopy)
    {
      copyXPCEncoding = [propertiesCopy copyXPCEncoding];
      if (copyXPCEncoding)
      {
        xpc_dictionary_set_value(v20, "4", copyXPCEncoding);
      }
    }

    v25 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __80__SSAccount_updateAccountPasswordSettingsWithRequestProperties_completionBlock___block_invoke;
    v27[3] = &unk_1E84AE2D8;
    v28 = blockCopy;
    [(SSXPCConnection *)v25 sendMessage:v20 withReply:v27];
  }
}

void __80__SSAccount_updateAccountPasswordSettingsWithRequestProperties_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
  }

  else
  {
    if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
    {
      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      v11 = xpc_dictionary_get_value(v4, "2");
      v6 = [v10 initWithXPCEncoding:v11];

      goto LABEL_7;
    }

    v5 = 111;
  }

  v6 = SSError(@"SSErrorDomain", v5, 0, 0);
LABEL_7:
  v7 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__SSAccount_updateAccountPasswordSettingsWithRequestProperties_completionBlock___block_invoke_2;
  v12[3] = &unk_1E84AC338;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v9 = v6;
  dispatch_async(v7, v12);
}

- (void)_addAccountPropertyBitmask:(int64_t)bitmask forKey:(id)key
{
  keyCopy = key;
  objc_initWeak(&location, self);
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__SSAccount__addAccountPropertyBitmask_forKey___block_invoke;
  v9[3] = &unk_1E84AE300;
  objc_copyWeak(v11, &location);
  v10 = keyCopy;
  v11[1] = bitmask;
  v8 = keyCopy;
  dispatch_barrier_async(backingAccountAccessQueue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __47__SSAccount__addAccountPropertyBitmask_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _backingAccount];
  v3 = [v2 accountPropertyForKey:*(a1 + 32)];
  v4 = [v3 integerValue];

  if (v4 != (*(a1 + 48) | v4))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v2 setAccountProperty:v5 forKey:*(a1 + 32)];
  }
}

+ (id)_countryCodeFromStorefrontIdentifier:(id)identifier
{
  v3 = [identifier componentsSeparatedByString:{@", "}];
  firstObject = [v3 firstObject];

  v5 = [firstObject componentsSeparatedByString:@"-"];
  firstObject2 = [v5 firstObject];

  return firstObject2;
}

- (void)_removeAccountPropertyBitmask:(int64_t)bitmask forKey:(id)key
{
  keyCopy = key;
  objc_initWeak(&location, self);
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__SSAccount__removeAccountPropertyBitmask_forKey___block_invoke;
  v9[3] = &unk_1E84AE300;
  objc_copyWeak(v11, &location);
  v10 = keyCopy;
  v11[1] = bitmask;
  v8 = keyCopy;
  dispatch_barrier_async(backingAccountAccessQueue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __50__SSAccount__removeAccountPropertyBitmask_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _backingAccount];
  v3 = [v2 accountPropertyForKey:*(a1 + 32)];
  v4 = [v3 integerValue];

  if (v4 != (v4 & ~*(a1 + 48)))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v2 setAccountProperty:v5 forKey:*(a1 + 32)];
  }
}

- (void)_sendMessage:(id)message withReply:(id)reply
{
  replyCopy = reply;
  messageCopy = message;
  v7 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__SSAccount__sendMessage_withReply___block_invoke;
  v9[3] = &unk_1E84AE2D8;
  v10 = replyCopy;
  v8 = replyCopy;
  [(SSXPCConnection *)v7 sendMessage:messageCopy withReply:v9];
}

void __36__SSAccount__sendMessage_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v4 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v4 = 111;
LABEL_6:
    v5 = SSError(@"SSErrorDomain", v4, 0, 0);
    v6 = 0;
    goto LABEL_7;
  }

  v6 = v7;
  v5 = 0;
LABEL_7:
  (*(*(a1 + 32) + 16))();
}

- (void)_setAccountProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  objc_initWeak(&location, self);
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__SSAccount__setAccountProperty_forKey___block_invoke;
  v11[3] = &unk_1E84AE328;
  objc_copyWeak(&v14, &location);
  v12 = keyCopy;
  v13 = propertyCopy;
  v9 = propertyCopy;
  v10 = keyCopy;
  dispatch_barrier_async(backingAccountAccessQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __40__SSAccount__setAccountProperty_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained _backingAccount];
  v3 = [v2 accountPropertyForKey:*(a1 + 32)];
  v4 = [v3 isEqual:*(a1 + 40)];

  if ((v4 & 1) == 0)
  {
    v5 = [WeakRetained _backingAccount];
    [v5 setAccountProperty:*(a1 + 40) forKey:*(a1 + 32)];
  }
}

- (void)_setBackingAccount:(id)account
{
  accountCopy = account;
  backingAccountAccessQueue = [(SSAccount *)self backingAccountAccessQueue];
  dispatch_assert_queue_V2(backingAccountAccessQueue);

  backingAccount = self->_backingAccount;
  self->_backingAccount = accountCopy;
}

+ (id)_valueForFirstAvailableKeyPath:(id)path inDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dictionaryCopy = dictionary;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = pathCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [dictionaryCopy valueForKeyPath:{*(*(&v15 + 1) + 8 * i), v15}];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)initWithXPCEncoding:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SSAccount.m" lineNumber:606 description:@"-[SSAccount initWithXPCEncoding:] provided with an invalid xpc_object_t object."];
}

@end