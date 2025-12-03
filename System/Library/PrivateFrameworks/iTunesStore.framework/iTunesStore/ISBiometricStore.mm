@interface ISBiometricStore
+ (BOOL)isActionSupported:(int64_t)supported withBiometricAuthenticationContext:(id)context;
+ (BOOL)shouldUseApplePayClassic;
+ (BOOL)shouldUseAutoEnrollment;
+ (BOOL)shouldUseExtendedEnrollment;
+ (BOOL)shouldUseUpsellEnrollment;
+ (BOOL)shouldUseX509;
+ (BOOL)tokenUpdateShouldStartWithLogKey:(id)key;
+ (id)applePayClassicNetworks;
+ (id)countryCode;
+ (id)diskBasedPaymentSheet;
+ (id)keychainLabelForCertWithAccountID:(id)d purpose:(int64_t)purpose;
+ (id)keychainLabelForKeyWithAccountID:(id)d purpose:(int64_t)purpose;
+ (id)sharedInstance;
+ (int64_t)tokenUpdateState;
+ (void)tokenUpdateDidFinishWithLogKey:(id)key;
- (BOOL)canPerformBiometricOptIn;
- (BOOL)canPerformExtendedBiometricActionsForAccountIdentifier:(id)identifier;
- (BOOL)deleteKeychainTokensForAccountIdentifier:(id)identifier error:(id *)error;
- (BOOL)isIdentityMapValidForAccountIdentifier:(id)identifier;
- (ISBiometricStore)init;
- (NSNumber)lastRegisteredAccountIdentifier;
- (id)createAttestationDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error;
- (id)createX509CertChainDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error;
- (id)fetchContextFromCacheWithToken:(id)token evict:(BOOL)evict;
- (id)publicKeyDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error;
- (id)signData:(id)data context:(id)context error:(id *)error;
- (int64_t)biometricAvailabilityForAccountIdentifier:(id)identifier;
- (int64_t)biometricState;
- (unint64_t)identityMapCount;
- (unint64_t)keyCountForAccountIdentifier:(id)identifier;
- (void)addContextToCache:(id)cache withToken:(id)token;
- (void)clearLastRegisteredAccountIdentifier;
- (void)registerAccountIdentifier:(id)identifier;
- (void)saveIdentityMapForAccountIdentifier:(id)identifier;
- (void)setBiometricState:(int64_t)state;
@end

@implementation ISBiometricStore

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ISBiometricStore sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __34__ISBiometricStore_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(ISBiometricStore);

  return MEMORY[0x2821F96F8]();
}

- (ISBiometricStore)init
{
  v22 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = ISBiometricStore;
  v2 = [(ISBiometricStore *)&v17 init];
  if (v2)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v7 = objc_opt_class();
      v18 = 138543618;
      v19 = v7;
      v20 = 2050;
      v21 = v2;
      v8 = v7;
      LODWORD(v16) = 22;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
LABEL_13:

        v10 = objc_alloc_init(MEMORY[0x277CBEA78]);
        contextCache = v2->_contextCache;
        v2->_contextCache = v10;

        [(NSCache *)v2->_contextCache setCountLimit:5];
        v12 = objc_alloc_init(MEMORY[0x277CCAAF8]);
        lock = v2->_lock;
        v2->_lock = v12;

        goto LABEL_14;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:{4, &v18, v16}];
      free(v9);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)addContextToCache:(id)cache withToken:(id)token
{
  lock = self->_lock;
  tokenCopy = token;
  cacheCopy = cache;
  [(NSLock *)lock lock];
  [(NSCache *)self->_contextCache setObject:cacheCopy forKey:tokenCopy];

  v9 = self->_lock;

  [(NSLock *)v9 unlock];
}

+ (id)applePayClassicNetworks
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(ISLoadURLBagOperation);
  v4 = +[ISOperationQueue mainQueue];
  v31[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [v4 addOperations:v5 waitUntilFinished:1];

  if (![(ISOperation *)v3 success])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v27 = 138543362;
      v28 = objc_opt_class();
      v12 = v28;
      LODWORD(v23) = 12;
      v22 = &v27;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, &v27, v23}];
      free(v10);
      v22 = oSLogObject;
      SSFileLog();
    }

    v10 = 0;
    goto LABEL_14;
  }

  uRLBag = [(ISLoadURLBagOperation *)v3 URLBag];
  mEMORY[0x277D69B38] = [uRLBag valueForKey:@"apple-pay-classic-networks"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __43__ISBiometricStore_applePayClassicNetworks__block_invoke;
    v24[3] = &unk_27A670660;
    v25 = v8;
    selfCopy = self;
    oSLogObject = v8;
    [mEMORY[0x277D69B38] enumerateObjectsUsingBlock:v24];
    v10 = [oSLogObject copy];

LABEL_14:
    goto LABEL_16;
  }

  v10 = 0;
LABEL_16:

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v15 = shouldLog2 | 2;
  }

  else
  {
    v15 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v15 &= 2u;
  }

  if (v15)
  {
    v17 = objc_opt_class();
    v27 = 138543618;
    v28 = v17;
    v29 = 2114;
    v30 = v10;
    v18 = v17;
    LODWORD(v23) = 22;
    v19 = _os_log_send_and_compose_impl();

    if (!v19)
    {
      goto LABEL_27;
    }

    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v27, v23}];
    free(v19);
    SSFileLog();
  }

LABEL_27:
  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

void __43__ISBiometricStore_applePayClassicNetworks__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lowercaseString];
  if (([v4 isEqualToString:@"visa"] & 1) == 0)
  {
    v5 = [v3 isEqualToString:@"Visa"];

    if (v5)
    {
      goto LABEL_4;
    }

    v9 = [v3 lowercaseString];
    if ([v9 isEqualToString:@"discover"])
    {

LABEL_10:
      v6 = "PKPaymentNetworkDiscover";
      goto LABEL_5;
    }

    v10 = [v3 isEqualToString:@"Discover"];

    if (v10)
    {
      goto LABEL_10;
    }

    v11 = [v3 lowercaseString];
    if ([v11 isEqualToString:@"mastercard"])
    {

LABEL_14:
      v6 = "PKPaymentNetworkMasterCard";
      goto LABEL_5;
    }

    v12 = [v3 isEqualToString:@"MasterCard"];

    if (v12)
    {
      goto LABEL_14;
    }

    v13 = [v3 lowercaseString];
    if ([v13 isEqualToString:@"american express"])
    {

LABEL_18:
      v6 = "PKPaymentNetworkAmex";
      goto LABEL_5;
    }

    v14 = [v3 isEqualToString:@"AmEx"];

    if (v14)
    {
      goto LABEL_18;
    }

    v15 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v15)
    {
      v15 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v16 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v15 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v19 = *(a1 + 40);
      *v23 = 138543618;
      *&v23[4] = objc_opt_class();
      *&v23[12] = 2114;
      *&v23[14] = v3;
      v20 = *&v23[4];
      LODWORD(v22) = 22;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_30:

        [*(a1 + 32) addObject:v3];
        goto LABEL_6;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:{4, v23, v22, *v23, *&v23[16], v24}];
      free(v21);
      SSFileLog();
    }

    goto LABEL_30;
  }

LABEL_4:
  v6 = "PKPaymentNetworkVisa";
LABEL_5:
  v7 = ISWeakLinkedStringConstantForString(v6, 0x26);
  [*(a1 + 32) addObject:v7];

LABEL_6:
  v8 = *MEMORY[0x277D85DE8];
}

- (int64_t)biometricState
{
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"AMSDeviceBiometricsState", @"com.apple.AppleMediaServices", 0);
  if (AppIntegerValue == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (AppIntegerValue == 1);
  }
}

- (int64_t)biometricAvailabilityForAccountIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v15 = 4;
    goto LABEL_22;
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isPasscodeSet = [mEMORY[0x277D262A0] isPasscodeSet];

  if (!isPasscodeSet || ![(ISBiometricStore *)self identityMapCount])
  {
    v15 = 3;
    goto LABEL_22;
  }

  if (![(ISBiometricStore *)self isIdentityMapValidForAccountIdentifier:identifierCopy])
  {
    v15 = 2;
    goto LABEL_22;
  }

  lastRegisteredAccountIdentifier = [(ISBiometricStore *)self lastRegisteredAccountIdentifier];
  v8 = [lastRegisteredAccountIdentifier isEqualToNumber:identifierCopy];

  if ((v8 & 1) == 0)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      LODWORD(v19) = 138543362;
      *(&v19 + 4) = objc_opt_class();
      v13 = *(&v19 + 4);
      LODWORD(v18) = 12;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_17:

        goto LABEL_18;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v19, v18, v19}];
      free(v14);
      SSFileLog();
    }

    goto LABEL_17;
  }

LABEL_18:
  v15 = 0;
LABEL_22:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)canPerformBiometricOptIn
{
  identityMapCount = [(ISBiometricStore *)self identityMapCount];
  if (identityMapCount)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    isPasscodeSet = [mEMORY[0x277D262A0] isPasscodeSet];

    LOBYTE(identityMapCount) = isPasscodeSet;
  }

  return identityMapCount;
}

- (BOOL)canPerformExtendedBiometricActionsForAccountIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [(ISBiometricStore *)self biometricAvailabilityForAccountIdentifier:identifier];
  biometricState = [(ISBiometricStore *)self biometricState];
  v6 = biometricState;
  if (!v4 || biometricState != 2)
  {
    goto LABEL_15;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_13;
  }

  v11 = objc_opt_class();
  v12 = MEMORY[0x277CCABB0];
  v13 = v11;
  [v12 numberWithInteger:v4];
  v19 = 138543618;
  v20 = v11;
  v22 = v21 = 2114;
  LODWORD(v18) = 22;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v19, v18}];
    free(v14);
    SSFileLog();
LABEL_13:
  }

LABEL_15:
  if (v4)
  {
    v15 = 0;
  }

  else
  {
    v15 = v6 == 2;
  }

  result = v15;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)clearLastRegisteredAccountIdentifier
{
  v11 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v4 = shouldLog | 2;
  }

  else
  {
    v4 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  LODWORD(v10) = 138543362;
  *(&v10 + 4) = objc_opt_class();
  v6 = *(&v10 + 4);
  LODWORD(v9) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:{4, &v10, v9, v10}];
    free(v7);
    SSFileLog();
LABEL_11:
  }

  CFPreferencesSetAppValue(@"BiometricAccountID", 0, *MEMORY[0x277D6A708]);
  v8 = *MEMORY[0x277D85DE8];
}

+ (id)countryCode
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(ISLoadURLBagOperation);
  v3 = +[ISOperationQueue mainQueue];
  v16[0] = v2;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v3 addOperations:v4 waitUntilFinished:1];

  if ([(ISOperation *)v2 success])
  {
    uRLBag = [(ISLoadURLBagOperation *)v2 URLBag];
    mEMORY[0x277D69B38] = [uRLBag valueForKey:@"countryCode"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mEMORY[0x277D69B38] = mEMORY[0x277D69B38];
      v7 = mEMORY[0x277D69B38];
      goto LABEL_16;
    }
  }

  else
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      LODWORD(v15) = 138543362;
      *(&v15 + 4) = objc_opt_class();
      v11 = *(&v15 + 4);
      LODWORD(v14) = 12;
      v7 = _os_log_send_and_compose_impl();

      if (!v7)
      {
        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:{4, &v15, v14, v15}];
      free(v7);
      SSFileLog();
    }
  }

  v7 = 0;
LABEL_16:

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)diskBasedPaymentSheet
{
  v29[2] = *MEMORY[0x277D85DE8];
  if (!SSDebugShouldUseFileBasedPaymentSheetProxy())
  {
    v7 = 0;
    goto LABEL_44;
  }

  v2 = CPSharedResourcesDirectory();
  if ([v2 length])
  {
    mEMORY[0x277D69B38]3 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v29[0] = v2;
    v29[1] = @"paymentSheet.plist";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v5 = [MEMORY[0x277CCACA8] pathWithComponents:v4];
    if ([v5 length] && objc_msgSend(mEMORY[0x277D69B38]3, "fileExistsAtPath:", v5))
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v5];
      if (mEMORY[0x277D69B38]2)
      {
        v7 = [objc_alloc(MEMORY[0x277D69BE8]) initWithServerResponse:mEMORY[0x277D69B38]2];
LABEL_42:

        goto LABEL_43;
      }

      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        v18 = shouldLog | 2;
      }

      else
      {
        v18 = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v18 &= 2u;
      }

      if (!v18)
      {
        goto LABEL_40;
      }

      v25 = 138543618;
      v26 = objc_opt_class();
      v27 = 2114;
      v28 = v5;
      v24 = v26;
      LODWORD(v23) = 22;
      v20 = _os_log_send_and_compose_impl();

      if (v20)
      {
        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:{4, &v25, v23}];
        free(v20);
        SSFileLog();
LABEL_40:
      }
    }

    else
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]2)
      {
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
      if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
      {
        v9 = shouldLog2 | 2;
      }

      else
      {
        v9 = shouldLog2;
      }

      mEMORY[0x277D69B38] = [mEMORY[0x277D69B38]2 OSLogObject];
      if (!os_log_type_enabled(mEMORY[0x277D69B38], OS_LOG_TYPE_ERROR))
      {
        v9 &= 2u;
      }

      if (v9)
      {
        v25 = 138543618;
        v26 = objc_opt_class();
        v27 = 2114;
        v28 = v5;
        v11 = v26;
        LODWORD(v23) = 22;
        v7 = _os_log_send_and_compose_impl();

        if (!v7)
        {
          goto LABEL_42;
        }

        mEMORY[0x277D69B38] = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:{4, &v25, v23}];
        free(v7);
        SSFileLog();
      }
    }

    v7 = 0;
    goto LABEL_42;
  }

  mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]3)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
  if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
  {
    v13 = shouldLog3 | 2;
  }

  else
  {
    v13 = shouldLog3;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v25 = 138543362;
  v26 = objc_opt_class();
  v15 = v26;
  LODWORD(v23) = 12;
  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:{4, &v25, v23}];
    free(v16);
    SSFileLog();
LABEL_28:
  }

  v7 = 0;
LABEL_43:

LABEL_44:
  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)fetchContextFromCacheWithToken:(id)token evict:(BOOL)evict
{
  evictCopy = evict;
  tokenCopy = token;
  [(NSLock *)self->_lock lock];
  v7 = [(NSCache *)self->_contextCache objectForKey:tokenCopy];
  if (evictCopy)
  {
    [(NSCache *)self->_contextCache removeObjectForKey:tokenCopy];
  }

  [(NSLock *)self->_lock unlock];

  return v7;
}

- (unint64_t)identityMapCount
{
  v36 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__0;
  v28[4] = __Block_byref_object_dispose__0;
  v29 = 0;
  if (!SSIsDaemon())
  {
    v6 = dispatch_semaphore_create(0);
    identityMap = objc_opt_new();
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __36__ISBiometricStore_identityMapCount__block_invoke;
    v23 = &unk_27A670688;
    v26 = v28;
    selfCopy = self;
    v27 = &v30;
    v3 = v6;
    v25 = v3;
    [identityMap getIdentityMapCountWithCompletionBlock:&v20];
    v7 = dispatch_time(0, 3000000000);
    if (!dispatch_semaphore_wait(v3, v7))
    {
LABEL_15:

      goto LABEL_16;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v12 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v13 = objc_opt_class();
      v34 = 138543362;
      v35 = v13;
      v14 = v13;
      LODWORD(v19) = 12;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_14:

        goto LABEL_15;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, &v34, v19, v20, v21, v22, v23, selfCopy}];
      free(v15);
      SSFileLog();
    }

    goto LABEL_14;
  }

  NSClassFromString(&cfstr_Daemonbiometri.isa);
  v3 = objc_opt_new();
  identityMap = [v3 identityMap];
  v5 = [identityMap count];
  v31[3] = v5;
LABEL_16:

  v16 = v31[3];
  _Block_object_dispose(v28, 8);

  _Block_object_dispose(&v30, 8);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void __36__ISBiometricStore_identityMapCount__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = a2;
    goto LABEL_15;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v11 = *(a1 + 32);
  v12 = objc_opt_class();
  v13 = *(*(*(a1 + 48) + 8) + 40);
  *v18 = 138543618;
  *&v18[4] = v12;
  *&v18[12] = 2114;
  *&v18[14] = v13;
  v14 = v12;
  LODWORD(v17) = 22;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, v18, v17, *v18, *&v18[16], v19}];
    free(v15);
    SSFileLog();
LABEL_12:
  }

LABEL_15:
  dispatch_semaphore_signal(*(a1 + 40));

  v16 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isActionSupported:(int64_t)supported withBiometricAuthenticationContext:(id)context
{
  v46 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (SSIsDaemon())
  {
    nSClassFromString(&cfstr_Daemonbiometri_0.isa) = [NSClassFromString(&cfstr_Daemonbiometri_0.isa) sharedInstance];
    v39 = 0;
    v8 = [nSClassFromString(&cfstr_Daemonbiometri_0.isa) copyAccessControlListForPrivateKeyWithBiometricAuthenticationContext:contextCopy error:&v39];
    v9 = v39;

    if (v8)
    {
      v10 = [MEMORY[0x277CEE428] isActionSupported:supported withAccessControl:v8];
      CFRelease(v8);
      goto LABEL_32;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v24 = shouldLog | 2;
    }

    else
    {
      v24 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v26 = objc_opt_class();
      *v42 = 138543618;
      *&v42[4] = v26;
      *&v42[12] = 2114;
      *&v42[14] = v9;
      v27 = v26;
      LODWORD(v31) = 22;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
LABEL_29:

        v10 = 0;
        goto LABEL_32;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, v42, v31}];
      free(v28);
      SSFileLog();
    }

    goto LABEL_29;
  }

  v11 = dispatch_semaphore_create(0);
  *v42 = 0;
  *&v42[8] = v42;
  *&v42[16] = 0x3032000000;
  v43 = __Block_byref_object_copy__0;
  v44 = __Block_byref_object_dispose__0;
  v45 = 0;
  v12 = objc_alloc_init(MEMORY[0x277D69A70]);
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __73__ISBiometricStore_isActionSupported_withBiometricAuthenticationContext___block_invoke;
  v35 = &unk_27A6706B0;
  v37 = v42;
  selfCopy = self;
  v9 = v11;
  v36 = v9;
  [v12 getConstraintsDictionaryForPurpose:supported > 99 completion:&v32];
  v13 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v9, v13))
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38]2 shouldLogToDisk];
    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    v18 = oSLogObject2;
    if (shouldLogToDisk)
    {
      shouldLog2 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      shouldLog2 &= 2u;
    }

    if (shouldLog2)
    {
      v19 = objc_opt_class();
      v40 = 138543362;
      v41 = v19;
      v20 = v19;
      LODWORD(v31) = 12;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_15:

        goto LABEL_16;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:{4, &v40, v31, v32, v33, v34, v35}];
      free(v21);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:
  if (*(*&v42[8] + 40))
  {
    v10 = [MEMORY[0x277CEE428] isActionSupported:supported withConstraints:?];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(v42, 8);
LABEL_32:

  v29 = *MEMORY[0x277D85DE8];
  return v10;
}

void __73__ISBiometricStore_isActionSupported_withBiometricAuthenticationContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (!v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    goto LABEL_15;
  }

  v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v8)
  {
    v8 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v12 = *(a1 + 48);
  *v17 = 138543618;
  *&v17[4] = objc_opt_class();
  *&v17[12] = 2114;
  *&v17[14] = v7;
  v13 = *&v17[4];
  LODWORD(v16) = 22;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, v17, v16, *v17, *&v17[16], v18}];
    free(v14);
    SSFileLog();
LABEL_12:
  }

LABEL_15:
  dispatch_semaphore_signal(*(a1 + 32));

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)isIdentityMapValidForAccountIdentifier:(id)identifier
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__0;
  v27[4] = __Block_byref_object_dispose__0;
  v28 = 0;
  if (!SSIsDaemon())
  {
    v7 = dispatch_semaphore_create(0);
    v8 = objc_opt_new();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __59__ISBiometricStore_isIdentityMapValidForAccountIdentifier___block_invoke;
    v22[3] = &unk_27A6706D8;
    v25 = v27;
    v22[4] = self;
    v23 = identifierCopy;
    v26 = &v29;
    v5 = v7;
    v24 = v5;
    [v8 isIdentityMapValidForAccountIdentifier:v23 completionBlock:v22];
    v9 = dispatch_time(0, 5000000000);
    if (!dispatch_semaphore_wait(v5, v9))
    {
LABEL_15:

      goto LABEL_16;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v14 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v15 = objc_opt_class();
      v33 = 138543362;
      v34 = v15;
      v16 = v15;
      LODWORD(v21) = 12;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
LABEL_14:

        goto LABEL_15;
      }

      v14 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:{4, &v33, v21}];
      free(v17);
      SSFileLog();
    }

    goto LABEL_14;
  }

  NSClassFromString(&cfstr_Daemonbiometri.isa);
  v5 = objc_opt_new();
  v6 = [v5 isIdentityMapValidForAccountIdentifier:identifierCopy];
  *(v30 + 24) = v6;
LABEL_16:

  v18 = *(v30 + 24);
  _Block_object_dispose(v27, 8);

  _Block_object_dispose(&v29, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

void __59__ISBiometricStore_isIdentityMapValidForAccountIdentifier___block_invoke(uint64_t a1, char a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = *(a1 + 40);
      v14 = *(*(*(a1 + 56) + 8) + 40);
      *v19 = 138543874;
      *&v19[4] = v12;
      *&v19[12] = 2112;
      *&v19[14] = v13;
      *&v19[22] = 2114;
      v20 = v14;
      v15 = v12;
      LODWORD(v18) = 32;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_13:

        goto LABEL_14;
      }

      v10 = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:{4, v19, v18, *v19, *&v19[16], v20}];
      free(v16);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  *(*(*(a1 + 64) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 48));

  v17 = *MEMORY[0x277D85DE8];
}

- (unint64_t)keyCountForAccountIdentifier:(id)identifier
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (!SSIsDaemon())
  {
    v7 = dispatch_semaphore_create(0);
    v8 = objc_alloc_init(MEMORY[0x277D69B20]);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __49__ISBiometricStore_keyCountForAccountIdentifier___block_invoke;
    v22[3] = &unk_27A670700;
    v22[4] = self;
    v24 = &v25;
    v5 = v7;
    v23 = v5;
    [v8 keyCountForAccountIdentifier:identifierCopy completionBlock:v22];
    v9 = dispatch_time(0, 3000000000);
    if (!dispatch_semaphore_wait(v5, v9))
    {
LABEL_15:

      goto LABEL_16;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v14 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v15 = objc_opt_class();
      v29 = 138543362;
      v30 = v15;
      v16 = v15;
      LODWORD(v21) = 12;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
LABEL_14:

        goto LABEL_15;
      }

      v14 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:{4, &v29, v21}];
      free(v17);
      SSFileLog();
    }

    goto LABEL_14;
  }

  NSClassFromString(&cfstr_Daemonbiometri.isa);
  v5 = objc_opt_new();
  v6 = [v5 keyCountForAccountIdentifier:identifierCopy];
  v26[3] = v6;
LABEL_16:

  v18 = v26[3];
  _Block_object_dispose(&v25, 8);

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void __49__ISBiometricStore_keyCountForAccountIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v6)
    {
      v6 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = *(a1 + 32);
      *v15 = 138543618;
      *&v15[4] = objc_opt_class();
      *&v15[12] = 2114;
      *&v15[14] = v5;
      v11 = *&v15[4];
      LODWORD(v14) = 22;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_13:

        goto LABEL_14;
      }

      v9 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, v15, v14, *v15, *&v15[16], v16}];
      free(v12);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 40));

  v13 = *MEMORY[0x277D85DE8];
}

- (NSNumber)lastRegisteredAccountIdentifier
{
  v2 = CFPreferencesCopyAppValue(@"BiometricAccountID", *MEMORY[0x277D6A708]);

  return v2;
}

- (void)registerAccountIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  *v13 = 138543618;
  *&v13[4] = objc_opt_class();
  *&v13[12] = 2114;
  *&v13[14] = identifierCopy;
  v8 = *&v13[4];
  LODWORD(v12) = 22;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:{4, v13, v12, *v13, *&v13[16], v14}];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  v10 = *MEMORY[0x277D6A708];
  CFPreferencesSetAppValue(@"BiometricAccountID", identifierCopy, *MEMORY[0x277D6A708]);
  CFPreferencesAppSynchronize(v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)saveIdentityMapForAccountIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!SSIsDaemon())
  {
    v7 = dispatch_semaphore_create(0);
    v8 = objc_opt_new();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __56__ISBiometricStore_saveIdentityMapForAccountIdentifier___block_invoke;
    v21[3] = &unk_27A670728;
    v21[4] = self;
    v9 = v7;
    v22 = v9;
    [v8 saveIdentityMapForAccountIdentifier:identifierCopy completionBlock:v21];

    v10 = dispatch_time(0, 5000000000);
    if (!dispatch_semaphore_wait(v9, v10))
    {
LABEL_18:

      v18 = *MEMORY[0x277D85DE8];
      return;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v15 = objc_opt_class();
      v23 = 138543362;
      v24 = v15;
      v16 = v15;
      LODWORD(v19) = 12;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
LABEL_17:

        goto LABEL_18;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:{4, &v23, v19}];
      free(v17);
      SSFileLog();
    }

    goto LABEL_17;
  }

  NSClassFromString(&cfstr_Daemonbiometri.isa);
  v20 = objc_opt_new();
  identityMap = [v20 identityMap];
  [v20 saveIdentityMap:identityMap forAccountIdentifier:identifierCopy];

  v6 = *MEMORY[0x277D85DE8];
}

void __56__ISBiometricStore_saveIdentityMapForAccountIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v6)
    {
      v6 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = *(a1 + 32);
      *v26 = 138543618;
      *&v26[4] = objc_opt_class();
      *&v26[12] = 2114;
      *&v26[14] = v5;
      v11 = *&v26[4];
      LODWORD(v25) = 22;
      v24 = v26;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_13:

        goto LABEL_14;
      }

      v9 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, v26, v25, *v26, *&v26[16], v27}];
      free(v12);
      v24 = v9;
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  v13 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v13)
  {
    v13 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v14 = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    v15 = v14 | 2;
  }

  else
  {
    v15 = v14;
  }

  v16 = [v13 OSLogObject];
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v15 &= 2u;
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  v17 = *(a1 + 32);
  v18 = objc_opt_class();
  v19 = MEMORY[0x277CCABB0];
  v20 = v18;
  v21 = [v19 numberWithBool:a2];
  *v26 = 138543618;
  *&v26[4] = v18;
  *&v26[12] = 2114;
  *&v26[14] = v21;
  LODWORD(v25) = 22;
  v22 = _os_log_send_and_compose_impl();

  if (v22)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:{4, v26, v25}];
    free(v22);
    SSFileLog();
LABEL_24:
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v23 = *MEMORY[0x277D85DE8];
}

- (void)setBiometricState:(int64_t)state
{
  v43 = *MEMORY[0x277D85DE8];
  if ([(ISBiometricStore *)self biometricState]!= state)
  {
    v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:state];
    v6 = *MEMORY[0x277D6A708];
    CFPreferencesSetAppValue(@"BiometricState", v5, *MEMORY[0x277D6A708]);
    if ((state - 1) <= 1)
    {
      CFPreferencesSetAppValue(@"BiometricStateEnabled", v5, v6);
    }

    CFPreferencesAppSynchronize(v6);
    if (!state)
    {
      v7 = MEMORY[0x277CEE470];
      v8 = 0;
      goto LABEL_23;
    }

    if (state != 1)
    {
      if (state != 2)
      {
LABEL_29:
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D6A6B0], 0, 0, 1u);

        goto LABEL_30;
      }

      v7 = MEMORY[0x277CEE470];
      v8 = 1;
LABEL_23:
      [v7 setBiometricState:v8];
      goto LABEL_29;
    }

    [MEMORY[0x277CEE470] setBiometricState:2];
    lastRegisteredAccountIdentifier = [(ISBiometricStore *)self lastRegisteredAccountIdentifier];
    if (!lastRegisteredAccountIdentifier)
    {
      v11 = 0;
      goto LABEL_25;
    }

    v36 = 0;
    v10 = [(ISBiometricStore *)self deleteKeychainTokensForAccountIdentifier:lastRegisteredAccountIdentifier error:&v36];
    v11 = v36;
    if (v10)
    {
LABEL_25:
      defaultStore = [MEMORY[0x277D69A20] defaultStore];
      activeAccount = [defaultStore activeAccount];
      uniqueIdentifier = [activeAccount uniqueIdentifier];

      if (!uniqueIdentifier || ([uniqueIdentifier isEqualToNumber:lastRegisteredAccountIdentifier] & 1) != 0)
      {
        v22 = v11;
LABEL_28:

        goto LABEL_29;
      }

      v35 = v11;
      v25 = [(ISBiometricStore *)self deleteKeychainTokensForAccountIdentifier:uniqueIdentifier error:&v35];
      v22 = v35;

      if (v25)
      {
        goto LABEL_28;
      }

      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        v28 = shouldLog | 2;
      }

      else
      {
        v28 = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v28 &= 2u;
      }

      if (v28)
      {
        v30 = objc_opt_class();
        v37 = 138543874;
        v38 = v30;
        v39 = 2112;
        v40 = lastRegisteredAccountIdentifier;
        v41 = 2114;
        v42 = v22;
        v31 = v30;
        LODWORD(v34) = 32;
        v32 = _os_log_send_and_compose_impl();

        if (!v32)
        {
LABEL_43:

          goto LABEL_28;
        }

        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v32 encoding:{4, &v37, v34}];
        free(v32);
        SSFileLog();
      }

      goto LABEL_43;
    }

    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v14 = shouldLog2 | 2;
    }

    else
    {
      v14 = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = objc_opt_class();
      v37 = 138543874;
      v38 = v16;
      v39 = 2112;
      v40 = lastRegisteredAccountIdentifier;
      v41 = 2114;
      v42 = v11;
      v17 = v16;
      LODWORD(v34) = 32;
      v33 = &v37;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_21:

        goto LABEL_25;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, &v37, v34}];
      free(v18);
      v33 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_21;
  }

LABEL_30:
  v24 = *MEMORY[0x277D85DE8];
}

+ (void)tokenUpdateDidFinishWithLogKey:(id)key
{
  v32 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (!SSIsDaemon())
  {
    objc_initWeak(&location, self);
    v5 = dispatch_semaphore_create(0);
    v6 = objc_alloc_init(MEMORY[0x277D69A70]);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __51__ISBiometricStore_tokenUpdateDidFinishWithLogKey___block_invoke;
    v23 = &unk_27A670750;
    objc_copyWeak(&v26, &location);
    v7 = keyCopy;
    v24 = v7;
    v8 = v5;
    v25 = v8;
    [v6 tokenUpdateDidFinishWithLogKey:v7 completion:&v20];
    v9 = dispatch_time(0, 2500000000);
    if (!dispatch_semaphore_wait(v8, v9))
    {
LABEL_15:

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
      goto LABEL_16;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v14 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v15 = objc_opt_class();
      v28 = 138543618;
      v29 = v15;
      v30 = 2114;
      v31 = v7;
      v16 = v15;
      LODWORD(v19) = 22;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
LABEL_14:

        goto LABEL_15;
      }

      v14 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:{4, &v28, v19, v20, v21, v22, v23, v24}];
      free(v17);
      SSFileLog();
    }

    goto LABEL_14;
  }

  [NSClassFromString(&cfstr_Daemonbiometri.isa) tokenUpdateDidFinishWithLogKey:keyCopy];
LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
}

void __51__ISBiometricStore_tokenUpdateDidFinishWithLogKey___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v3)
  {
    v5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      *v15 = 138543874;
      *&v15[4] = v9;
      *&v15[12] = 2114;
      *&v15[14] = v10;
      *&v15[22] = 2114;
      v16 = v3;
      v11 = v9;
      LODWORD(v14) = 32;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_13:

        goto LABEL_14;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, v15, v14, *v15, *&v15[16], v16}];
      free(v12);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  dispatch_semaphore_signal(*(a1 + 40));

  v13 = *MEMORY[0x277D85DE8];
}

+ (BOOL)tokenUpdateShouldStartWithLogKey:(id)key
{
  v36 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  if (!SSIsDaemon())
  {
    objc_initWeak(&location, self);
    v6 = dispatch_semaphore_create(0);
    v7 = objc_alloc_init(MEMORY[0x277D69A70]);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __53__ISBiometricStore_tokenUpdateShouldStartWithLogKey___block_invoke;
    v22[3] = &unk_27A670778;
    objc_copyWeak(&v26, &location);
    v8 = keyCopy;
    v23 = v8;
    v25 = &v28;
    v9 = v6;
    v24 = v9;
    [v7 tokenUpdateShouldStartWithLogKey:v8 completion:v22];
    v10 = dispatch_time(0, 2500000000);
    if (!dispatch_semaphore_wait(v9, v10))
    {
LABEL_15:

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
      v5 = *(v29 + 24);
      goto LABEL_16;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v15 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v16 = objc_opt_class();
      v32 = 138543618;
      v33 = v16;
      v34 = 2114;
      v35 = v8;
      v17 = v16;
      LODWORD(v21) = 22;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_14:

        goto LABEL_15;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, &v32, v21}];
      free(v18);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v5 = [NSClassFromString(&cfstr_Daemonbiometri.isa) tokenUpdateShouldStartWithLogKey:keyCopy];
  *(v29 + 24) = v5;
LABEL_16:
  _Block_object_dispose(&v28, 8);

  v19 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

void __53__ISBiometricStore_tokenUpdateShouldStartWithLogKey___block_invoke(uint64_t a1, char a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = a2;
    goto LABEL_15;
  }

  v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v11 = objc_opt_class();
  v12 = *(a1 + 32);
  *v17 = 138543874;
  *&v17[4] = v11;
  *&v17[12] = 2114;
  *&v17[14] = v12;
  *&v17[22] = 2114;
  v18 = v5;
  v13 = v11;
  LODWORD(v16) = 32;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, v17, v16, *v17, *&v17[16], v18}];
    free(v14);
    SSFileLog();
LABEL_12:
  }

LABEL_15:
  dispatch_semaphore_signal(*(a1 + 40));

  v15 = *MEMORY[0x277D85DE8];
}

+ (int64_t)tokenUpdateState
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (!SSIsDaemon())
  {
    objc_initWeak(&location, self);
    v4 = dispatch_semaphore_create(0);
    v5 = objc_alloc_init(MEMORY[0x277D69A70]);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __36__ISBiometricStore_tokenUpdateState__block_invoke;
    v23 = &unk_27A6707A0;
    objc_copyWeak(&v26, &location);
    v25 = &v28;
    v6 = v4;
    v24 = v6;
    [v5 tokenUpdateStateWithCompletionBlock:&v20];
    v7 = dispatch_time(0, 2500000000);
    if (!dispatch_semaphore_wait(v6, v7))
    {
LABEL_17:

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
      goto LABEL_19;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v12 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v13 = objc_opt_class();
      v32 = 138543362;
      v33 = v13;
      v14 = v13;
      LODWORD(v19) = 12;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_16:

        goto LABEL_17;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, &v32, v19, v20, v21, v22, v23}];
      free(v15);
      SSFileLog();
    }

    goto LABEL_16;
  }

  tokenUpdateState = [NSClassFromString(&cfstr_Daemonbiometri.isa) tokenUpdateState];
  if (tokenUpdateState)
  {
    if (tokenUpdateState == 1)
    {
      v29[3] = 1;
    }
  }

  else
  {
    v29[3] = 0;
  }

LABEL_19:
  v16 = v29[3];
  _Block_object_dispose(&v28, 8);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void __36__ISBiometricStore_tokenUpdateState__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v5)
  {
    v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      *v15 = 138543618;
      *&v15[4] = objc_opt_class();
      *&v15[12] = 2114;
      *&v15[14] = v5;
      v11 = *&v15[4];
      LODWORD(v14) = 22;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_13:

        goto LABEL_14;
      }

      v10 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, v15, v14, *v15, *&v15[16], v16}];
      free(v12);
      SSFileLog();
    }

    goto LABEL_13;
  }

  if (a2 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else if (!a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

LABEL_14:
  dispatch_semaphore_signal(*(a1 + 32));

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)keychainLabelForKeyWithAccountID:(id)d purpose:(int64_t)purpose
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = +[ISClient currentClient];
  identifier = [v6 identifier];

  if (purpose)
  {
    if (purpose != 1)
    {
      goto LABEL_6;
    }

    v8 = @"%@:%@-ext";
  }

  else
  {
    v8 = @"%@:%@";
  }

  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:v8, identifier, dCopy];
  if (dCopy)
  {
    goto LABEL_18;
  }

LABEL_6:
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v12 = shouldLog | 2;
  }

  else
  {
    v12 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    goto LABEL_16;
  }

  [MEMORY[0x277CCABB0] numberWithInteger:purpose];
  v18 = 138412546;
  v19 = dCopy;
  v21 = v20 = 2114;
  LODWORD(v17) = 22;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v18, v17}];
    free(v14);
    SSFileLog();
LABEL_16:
  }

  dCopy = 0;
LABEL_18:

  v15 = *MEMORY[0x277D85DE8];

  return dCopy;
}

+ (id)keychainLabelForCertWithAccountID:(id)d purpose:(int64_t)purpose
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = [ISBiometricStore keychainLabelForKeyWithAccountID:dCopy purpose:purpose];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-cert", v6];
  if (!v7)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      [MEMORY[0x277CCABB0] numberWithInteger:purpose];
      v16 = 138412546;
      v17 = dCopy;
      v19 = v18 = 2112;
      LODWORD(v15) = 22;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_13:

        goto LABEL_14;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, &v16, v15}];
      free(v12);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createAttestationDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__0;
  v50 = __Block_byref_object_dispose__0;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__0;
  v44 = __Block_byref_object_dispose__0;
  v45 = 0;
  if (SSIsDaemon())
  {
    nSClassFromString(&cfstr_Daemonbiometri_0.isa) = [NSClassFromString(&cfstr_Daemonbiometri_0.isa) sharedInstance];
    v10 = (v41 + 5);
    obj = v41[5];
    v11 = [nSClassFromString(&cfstr_Daemonbiometri_0.isa) createAttestationDataForAccountIdentifier_:identifierCopy purpose:purpose error:&obj];
    objc_storeStrong(v10, obj);
    v12 = v47[5];
    v47[5] = v11;
    goto LABEL_16;
  }

  v13 = dispatch_semaphore_create(0);
  v12 = objc_opt_new();
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __76__ISBiometricStore_createAttestationDataForAccountIdentifier_purpose_error___block_invoke;
  v33 = &unk_27A6707C8;
  v37 = &v40;
  selfCopy = self;
  v35 = identifierCopy;
  v38 = &v46;
  nSClassFromString(&cfstr_Daemonbiometri_0.isa) = v13;
  v36 = nSClassFromString(&cfstr_Daemonbiometri_0.isa);
  [v12 createAttestationDataForAccountIdentifier:v35 purpose:purpose completionBlock:&v30];
  v14 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(nSClassFromString(&cfstr_Daemonbiometri_0.isa), v14))
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v19 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v20 = objc_opt_class();
      v52 = 138543362;
      v53 = v20;
      v21 = v20;
      LODWORD(v29) = 12;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
LABEL_14:

        v23 = *MEMORY[0x277D6A110];
        v24 = SSError();
        v25 = v41[5];
        v41[5] = v24;

        goto LABEL_15;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:{4, &v52, v29, v30, v31, v32, v33, selfCopy, v35}];
      free(v22);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
  if (error)
  {
    *error = v41[5];
  }

  v26 = v47[5];
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

void __76__ISBiometricStore_createAttestationDataForAccountIdentifier_purpose_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (!v10)
    {
      goto LABEL_13;
    }

    v12 = *(a1 + 32);
    v13 = objc_opt_class();
    v14 = *(a1 + 40);
    v15 = *(*(*(a1 + 56) + 8) + 40);
    *v25 = 138543874;
    *&v25[4] = v13;
    *&v25[12] = 2112;
    *&v25[14] = v14;
    *&v25[22] = 2114;
    v26 = v15;
    v16 = v13;
    LODWORD(v24) = 32;
  }

  else
  {
    if (v6)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      goto LABEL_17;
    }

    v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v19 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 &= 2u;
    }

    if (!v20)
    {
      goto LABEL_13;
    }

    v21 = *(a1 + 32);
    v22 = objc_opt_class();
    v23 = *(a1 + 40);
    *v25 = 138543618;
    *&v25[4] = v22;
    *&v25[12] = 2112;
    *&v25[14] = v23;
    v16 = v22;
    LODWORD(v24) = 22;
  }

  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:{4, v25, v24, *v25, *&v25[16]}];
    free(v17);
    SSFileLog();
LABEL_13:
  }

LABEL_17:
  dispatch_semaphore_signal(*(a1 + 48));

  v18 = *MEMORY[0x277D85DE8];
}

- (id)createX509CertChainDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__0;
  v50 = __Block_byref_object_dispose__0;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__0;
  v44 = __Block_byref_object_dispose__0;
  v45 = 0;
  if (SSIsDaemon())
  {
    nSClassFromString(&cfstr_Daemonbiometri_0.isa) = [NSClassFromString(&cfstr_Daemonbiometri_0.isa) sharedInstance];
    v10 = (v41 + 5);
    obj = v41[5];
    v11 = [nSClassFromString(&cfstr_Daemonbiometri_0.isa) createX509CertChainDataForAccountIdentifier_:identifierCopy purpose:purpose error:&obj];
    objc_storeStrong(v10, obj);
    v12 = v47[5];
    v47[5] = v11;
    goto LABEL_16;
  }

  v13 = dispatch_semaphore_create(0);
  v12 = objc_alloc_init(MEMORY[0x277D69B20]);
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __78__ISBiometricStore_createX509CertChainDataForAccountIdentifier_purpose_error___block_invoke;
  v33 = &unk_27A6707F0;
  v37 = &v40;
  selfCopy = self;
  v35 = identifierCopy;
  v38 = &v46;
  nSClassFromString(&cfstr_Daemonbiometri_0.isa) = v13;
  v36 = nSClassFromString(&cfstr_Daemonbiometri_0.isa);
  [v12 createX509CertChainDataForAccountIdentifier:v35 purpose:purpose completionBlock:&v30];
  v14 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(nSClassFromString(&cfstr_Daemonbiometri_0.isa), v14))
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v19 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v20 = objc_opt_class();
      v52 = 138543362;
      v53 = v20;
      v21 = v20;
      LODWORD(v29) = 12;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
LABEL_14:

        v23 = *MEMORY[0x277D6A110];
        v24 = SSError();
        v25 = v41[5];
        v41[5] = v24;

        goto LABEL_15;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:{4, &v52, v29, v30, v31, v32, v33, selfCopy, v35}];
      free(v22);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
  if (error)
  {
    *error = v41[5];
  }

  v26 = v47[5];
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

void __78__ISBiometricStore_createX509CertChainDataForAccountIdentifier_purpose_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (!v10)
    {
      goto LABEL_13;
    }

    v12 = *(a1 + 32);
    v13 = objc_opt_class();
    v14 = *(a1 + 40);
    *v24 = 138543874;
    *&v24[4] = v13;
    *&v24[12] = 2112;
    *&v24[14] = v14;
    *&v24[22] = 2114;
    v25 = v7;
    v15 = v13;
    LODWORD(v23) = 32;
  }

  else
  {
    if (v6)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      goto LABEL_17;
    }

    v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v18 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 &= 2u;
    }

    if (!v19)
    {
      goto LABEL_13;
    }

    v20 = *(a1 + 32);
    v21 = objc_opt_class();
    v22 = *(a1 + 40);
    *v24 = 138543618;
    *&v24[4] = v21;
    *&v24[12] = 2112;
    *&v24[14] = v22;
    v15 = v21;
    LODWORD(v23) = 22;
  }

  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:{4, v24, v23, *v24, *&v24[16]}];
    free(v16);
    SSFileLog();
LABEL_13:
  }

LABEL_17:
  dispatch_semaphore_signal(*(a1 + 48));

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)deleteKeychainTokensForAccountIdentifier:(id)identifier error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  if (SSIsDaemon())
  {
    nSClassFromString(&cfstr_Daemonbiometri_0.isa) = [NSClassFromString(&cfstr_Daemonbiometri_0.isa) sharedInstance];
    v8 = (v39 + 5);
    obj = v39[5];
    v9 = [nSClassFromString(&cfstr_Daemonbiometri_0.isa) deleteKeychainTokensForAccountIdentifier_:identifierCopy error:&obj];
    objc_storeStrong(v8, obj);
    *(v45 + 24) = v9;
    goto LABEL_16;
  }

  v10 = dispatch_semaphore_create(0);
  v11 = objc_opt_new();
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __67__ISBiometricStore_deleteKeychainTokensForAccountIdentifier_error___block_invoke;
  v31 = &unk_27A6706D8;
  v35 = &v38;
  selfCopy = self;
  v33 = identifierCopy;
  v36 = &v44;
  nSClassFromString(&cfstr_Daemonbiometri_0.isa) = v10;
  v34 = nSClassFromString(&cfstr_Daemonbiometri_0.isa);
  [v11 deleteKeychainTokensForAccountIdentifier:v33 completionBlock:&v28];
  v12 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(nSClassFromString(&cfstr_Daemonbiometri_0.isa), v12))
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v17 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v18 = objc_opt_class();
      v48 = 138543362;
      v49 = v18;
      v19 = v18;
      LODWORD(v27) = 12;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_14:

        v21 = *MEMORY[0x277D6A110];
        v22 = SSError();
        v23 = v39[5];
        v39[5] = v22;

        goto LABEL_15;
      }

      v17 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:{4, &v48, v27, v28, v29, v30, v31, selfCopy, v33}];
      free(v20);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
  if (error)
  {
    *error = v39[5];
  }

  v24 = *(v45 + 24);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
  v25 = *MEMORY[0x277D85DE8];
  return v24 & 1;
}

void __67__ISBiometricStore_deleteKeychainTokensForAccountIdentifier_error___block_invoke(uint64_t a1, char a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (!v9)
    {
      goto LABEL_23;
    }

    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v13 = *(a1 + 40);
    v14 = *(*(*(a1 + 56) + 8) + 40);
    *v24 = 138543874;
    *&v24[4] = v12;
    *&v24[12] = 2112;
    *&v24[14] = v13;
    *&v24[22] = 2114;
    v25 = v14;
    v15 = v12;
    LODWORD(v23) = 32;
LABEL_21:
    v21 = _os_log_send_and_compose_impl();

    if (!v21)
    {
LABEL_24:

      goto LABEL_25;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:{4, v24, v23, *v24, *&v24[16]}];
    free(v21);
    SSFileLog();
LABEL_23:

    goto LABEL_24;
  }

  if ((a2 & 1) == 0)
  {
    v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v16 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 &= 2u;
    }

    if (!v17)
    {
      goto LABEL_23;
    }

    v18 = *(a1 + 32);
    v19 = objc_opt_class();
    v20 = *(a1 + 40);
    *v24 = 138543618;
    *&v24[4] = v19;
    *&v24[12] = 2112;
    *&v24[14] = v20;
    v15 = v19;
    LODWORD(v23) = 22;
    goto LABEL_21;
  }

LABEL_25:
  *(*(*(a1 + 64) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 48));

  v22 = *MEMORY[0x277D85DE8];
}

- (id)publicKeyDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__0;
  v50 = __Block_byref_object_dispose__0;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__0;
  v44 = __Block_byref_object_dispose__0;
  v45 = 0;
  if (SSIsDaemon())
  {
    nSClassFromString(&cfstr_Daemonbiometri_0.isa) = [NSClassFromString(&cfstr_Daemonbiometri_0.isa) sharedInstance];
    v10 = (v41 + 5);
    obj = v41[5];
    v11 = [nSClassFromString(&cfstr_Daemonbiometri_0.isa) publicKeyDataForAccountIdentifier_:identifierCopy purpose:purpose error:&obj];
    objc_storeStrong(v10, obj);
    v12 = v47[5];
    v47[5] = v11;
    goto LABEL_16;
  }

  v13 = dispatch_semaphore_create(0);
  v12 = objc_opt_new();
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __68__ISBiometricStore_publicKeyDataForAccountIdentifier_purpose_error___block_invoke;
  v33 = &unk_27A6707C8;
  v37 = &v40;
  selfCopy = self;
  v35 = identifierCopy;
  v38 = &v46;
  nSClassFromString(&cfstr_Daemonbiometri_0.isa) = v13;
  v36 = nSClassFromString(&cfstr_Daemonbiometri_0.isa);
  [v12 getPublicKeyDataForAccountIdentifier:v35 purpose:purpose completionBlock:&v30];
  v14 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(nSClassFromString(&cfstr_Daemonbiometri_0.isa), v14))
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v19 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v20 = objc_opt_class();
      v52 = 138543362;
      v53 = v20;
      v21 = v20;
      LODWORD(v29) = 12;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
LABEL_14:

        v23 = *MEMORY[0x277D6A110];
        v24 = SSError();
        v25 = v41[5];
        v41[5] = v24;

        goto LABEL_15;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:{4, &v52, v29, v30, v31, v32, v33, selfCopy, v35}];
      free(v22);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
  if (error)
  {
    *error = v41[5];
  }

  v26 = v47[5];
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

void __68__ISBiometricStore_publicKeyDataForAccountIdentifier_purpose_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (!v10)
    {
      goto LABEL_13;
    }

    v12 = *(a1 + 32);
    v13 = objc_opt_class();
    v14 = *(a1 + 40);
    v15 = *(*(*(a1 + 56) + 8) + 40);
    *v25 = 138543874;
    *&v25[4] = v13;
    *&v25[12] = 2112;
    *&v25[14] = v14;
    *&v25[22] = 2114;
    v26 = v15;
    v16 = v13;
    LODWORD(v24) = 32;
  }

  else
  {
    if (v6)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      goto LABEL_17;
    }

    v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v19 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 &= 2u;
    }

    if (!v20)
    {
      goto LABEL_13;
    }

    v21 = *(a1 + 32);
    v22 = objc_opt_class();
    v23 = *(a1 + 40);
    *v25 = 138543618;
    *&v25[4] = v22;
    *&v25[12] = 2112;
    *&v25[14] = v23;
    v16 = v22;
    LODWORD(v24) = 22;
  }

  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:{4, v25, v24, *v25, *&v25[16]}];
    free(v17);
    SSFileLog();
LABEL_13:
  }

LABEL_17:
  dispatch_semaphore_signal(*(a1 + 48));

  v18 = *MEMORY[0x277D85DE8];
}

+ (BOOL)shouldUseApplePayClassic
{
  v36 = *MEMORY[0x277D85DE8];
  if (![MEMORY[0x277D69A80] deviceIsInternalBuild])
  {
    goto LABEL_40;
  }

  applePayClassic = [MEMORY[0x277CEE468] applePayClassic];
  if (!applePayClassic)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v34 = 138543362;
      v35 = objc_opt_class();
      v18 = v35;
      LODWORD(v32) = 12;
      v31 = &v34;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_39:

        goto LABEL_40;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v34, v32}];
      free(v19);
      v31 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_39;
  }

  if (applePayClassic == 2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLog];
    if ([(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v11 = shouldLog2 | 2;
    }

    else
    {
      v11 = shouldLog2;
    }

    oSLogObject2 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v34 = 138543362;
      v35 = objc_opt_class();
      v13 = v35;
      LODWORD(v32) = 12;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
        goto LABEL_56;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:{4, &v34, v32}];
      free(v9);
      SSFileLog();
    }

    LOBYTE(v9) = 0;
    goto LABEL_56;
  }

  if (applePayClassic != 1)
  {
LABEL_40:
    mEMORY[0x277D69B38]2 = objc_alloc_init(ISLoadURLBagOperation);
    v20 = +[ISOperationQueue mainQueue];
    v33 = mEMORY[0x277D69B38]2;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [v20 addOperations:v21 waitUntilFinished:1];

    if ([(ISOperation *)mEMORY[0x277D69B38]2 success])
    {
      uRLBag = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 URLBag];
      mEMORY[0x277D69B38]3 = [uRLBag valueForKey:@"use-apple-pay-classic"];

      if (objc_opt_respondsToSelector())
      {
        LOBYTE(v9) = [mEMORY[0x277D69B38]3 BOOLValue];
LABEL_55:

        goto LABEL_56;
      }
    }

    else
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedDaemonConfig];
      if (!mEMORY[0x277D69B38]3)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        v25 = shouldLog3 | 2;
      }

      else
      {
        v25 = shouldLog3;
      }

      oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v25 &= 2u;
      }

      if (v25)
      {
        v27 = objc_opt_class();
        v34 = 138543362;
        v35 = v27;
        v28 = v27;
        LODWORD(v32) = 12;
        v9 = _os_log_send_and_compose_impl();

        if (!v9)
        {
          goto LABEL_55;
        }

        oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:{4, &v34, v32}];
        free(v9);
        SSFileLog();
      }
    }

    LOBYTE(v9) = 0;
    goto LABEL_55;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog4 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLog];
  if ([(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v5 = shouldLog4 | 2;
  }

  else
  {
    v5 = shouldLog4;
  }

  oSLogObject4 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_15;
  }

  v34 = 138543362;
  v35 = objc_opt_class();
  v7 = v35;
  LODWORD(v32) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{4, &v34, v32}];
    free(v8);
    SSFileLog();
LABEL_15:
  }

  LOBYTE(v9) = 1;
LABEL_56:

  v29 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)shouldUseAutoEnrollment
{
  v36 = *MEMORY[0x277D85DE8];
  if (![MEMORY[0x277D69A80] deviceIsInternalBuild])
  {
    goto LABEL_39;
  }

  cardEnrollmentAutomatic = [MEMORY[0x277CEE468] cardEnrollmentAutomatic];
  if (!cardEnrollmentAutomatic)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v34 = 138543362;
      v35 = objc_opt_class();
      v18 = v35;
      LODWORD(v32) = 12;
      v31 = &v34;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_38:

        goto LABEL_39;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v34, v32}];
      free(v19);
      v31 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_38;
  }

  if (cardEnrollmentAutomatic == 2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLog];
    if ([(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v11 = shouldLog2 | 2;
    }

    else
    {
      v11 = shouldLog2;
    }

    oSLogObject2 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v34 = 138543362;
      v35 = objc_opt_class();
      v13 = v35;
      LODWORD(v32) = 12;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
        goto LABEL_56;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:{4, &v34, v32}];
      free(v9);
      SSFileLog();
    }

    goto LABEL_55;
  }

  if (cardEnrollmentAutomatic != 1)
  {
LABEL_39:
    mEMORY[0x277D69B38]2 = objc_alloc_init(ISLoadURLBagOperation);
    v20 = +[ISOperationQueue mainQueue];
    v33 = mEMORY[0x277D69B38]2;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [v20 addOperations:v21 waitUntilFinished:1];

    if ([(ISOperation *)mEMORY[0x277D69B38]2 success])
    {
      oSLogObject2 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 URLBag];
      v22 = [oSLogObject2 valueForKey:@"auto-enrollment-percentage"];
      if (objc_opt_respondsToSelector())
      {
        [v22 doubleValue];
      }

      v12OSLogObject = [oSLogObject2 valueForKey:@"auto-enrollment-session-duration", v31];

      if (objc_opt_respondsToSelector())
      {
        [v12OSLogObject integerValue];
      }

      goto LABEL_54;
    }

    oSLogObject2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!oSLogObject2)
    {
      oSLogObject2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [oSLogObject2 shouldLog];
    if ([oSLogObject2 shouldLogToDisk])
    {
      v25 = shouldLog3 | 2;
    }

    else
    {
      v25 = shouldLog3;
    }

    v12OSLogObject = [oSLogObject2 OSLogObject];
    if (!os_log_type_enabled(v12OSLogObject, OS_LOG_TYPE_ERROR))
    {
      v25 &= 2u;
    }

    if (!v25)
    {
      goto LABEL_54;
    }

    v26 = objc_opt_class();
    v34 = 138543362;
    v35 = v26;
    v27 = v26;
    LODWORD(v32) = 12;
    v28 = _os_log_send_and_compose_impl();

    if (v28)
    {
      v12OSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, &v34, v32}];
      free(v28);
      SSFileLog();
LABEL_54:
    }

LABEL_55:

    LOBYTE(v9) = 0;
    goto LABEL_56;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog4 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLog];
  if ([(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v5 = shouldLog4 | 2;
  }

  else
  {
    v5 = shouldLog4;
  }

  oSLogObject3 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_15;
  }

  v34 = 138543362;
  v35 = objc_opt_class();
  v7 = v35;
  LODWORD(v32) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{4, &v34, v32}];
    free(v8);
    SSFileLog();
LABEL_15:
  }

  LOBYTE(v9) = 1;
LABEL_56:

  v29 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)shouldUseExtendedEnrollment
{
  v36 = *MEMORY[0x277D85DE8];
  if (![MEMORY[0x277D69A80] deviceIsInternalBuild])
  {
    goto LABEL_40;
  }

  cardEnrollmentManual = [MEMORY[0x277CEE468] cardEnrollmentManual];
  if (!cardEnrollmentManual)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v34 = 138543362;
      v35 = objc_opt_class();
      v18 = v35;
      LODWORD(v32) = 12;
      v31 = &v34;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_39:

        goto LABEL_40;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v34, v32}];
      free(v19);
      v31 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_39;
  }

  if (cardEnrollmentManual == 2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLog];
    if ([(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v11 = shouldLog2 | 2;
    }

    else
    {
      v11 = shouldLog2;
    }

    oSLogObject2 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v34 = 138543362;
      v35 = objc_opt_class();
      v13 = v35;
      LODWORD(v32) = 12;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
        goto LABEL_56;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:{4, &v34, v32}];
      free(v9);
      SSFileLog();
    }

    LOBYTE(v9) = 0;
    goto LABEL_56;
  }

  if (cardEnrollmentManual != 1)
  {
LABEL_40:
    mEMORY[0x277D69B38]2 = objc_alloc_init(ISLoadURLBagOperation);
    v20 = +[ISOperationQueue mainQueue];
    v33 = mEMORY[0x277D69B38]2;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [v20 addOperations:v21 waitUntilFinished:1];

    if ([(ISOperation *)mEMORY[0x277D69B38]2 success])
    {
      uRLBag = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 URLBag];
      mEMORY[0x277D69B38]3 = [uRLBag valueForKey:@"use-extended-enrollment"];

      if (objc_opt_respondsToSelector())
      {
        LOBYTE(v9) = [mEMORY[0x277D69B38]3 BOOLValue];
LABEL_55:

        goto LABEL_56;
      }
    }

    else
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedDaemonConfig];
      if (!mEMORY[0x277D69B38]3)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        v25 = shouldLog3 | 2;
      }

      else
      {
        v25 = shouldLog3;
      }

      oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v25 &= 2u;
      }

      if (v25)
      {
        v27 = objc_opt_class();
        v34 = 138543362;
        v35 = v27;
        v28 = v27;
        LODWORD(v32) = 12;
        v9 = _os_log_send_and_compose_impl();

        if (!v9)
        {
          goto LABEL_55;
        }

        oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:{4, &v34, v32}];
        free(v9);
        SSFileLog();
      }
    }

    LOBYTE(v9) = 0;
    goto LABEL_55;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog4 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLog];
  if ([(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v5 = shouldLog4 | 2;
  }

  else
  {
    v5 = shouldLog4;
  }

  oSLogObject4 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_15;
  }

  v34 = 138543362;
  v35 = objc_opt_class();
  v7 = v35;
  LODWORD(v32) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{4, &v34, v32}];
    free(v8);
    SSFileLog();
LABEL_15:
  }

  LOBYTE(v9) = 1;
LABEL_56:

  v29 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)shouldUseUpsellEnrollment
{
  v36 = *MEMORY[0x277D85DE8];
  if (![MEMORY[0x277D69A80] deviceIsInternalBuild])
  {
    goto LABEL_40;
  }

  cardEnrollmentUpsell = [MEMORY[0x277CEE468] cardEnrollmentUpsell];
  if (!cardEnrollmentUpsell)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v34 = 138543362;
      v35 = objc_opt_class();
      v18 = v35;
      LODWORD(v32) = 12;
      v31 = &v34;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_39:

        goto LABEL_40;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v34, v32}];
      free(v19);
      v31 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_39;
  }

  if (cardEnrollmentUpsell == 2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLog];
    if ([(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v11 = shouldLog2 | 2;
    }

    else
    {
      v11 = shouldLog2;
    }

    oSLogObject2 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v34 = 138543362;
      v35 = objc_opt_class();
      v13 = v35;
      LODWORD(v32) = 12;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
        goto LABEL_56;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:{4, &v34, v32}];
      free(v9);
      SSFileLog();
    }

    LOBYTE(v9) = 0;
    goto LABEL_56;
  }

  if (cardEnrollmentUpsell != 1)
  {
LABEL_40:
    mEMORY[0x277D69B38]2 = objc_alloc_init(ISLoadURLBagOperation);
    v20 = +[ISOperationQueue mainQueue];
    v33 = mEMORY[0x277D69B38]2;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [v20 addOperations:v21 waitUntilFinished:1];

    if ([(ISOperation *)mEMORY[0x277D69B38]2 success])
    {
      uRLBag = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 URLBag];
      mEMORY[0x277D69B38]3 = [uRLBag valueForKey:@"use-enrollment-upsell"];

      if (objc_opt_respondsToSelector())
      {
        LOBYTE(v9) = [mEMORY[0x277D69B38]3 BOOLValue];
LABEL_55:

        goto LABEL_56;
      }
    }

    else
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedDaemonConfig];
      if (!mEMORY[0x277D69B38]3)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        v25 = shouldLog3 | 2;
      }

      else
      {
        v25 = shouldLog3;
      }

      oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v25 &= 2u;
      }

      if (v25)
      {
        v27 = objc_opt_class();
        v34 = 138543362;
        v35 = v27;
        v28 = v27;
        LODWORD(v32) = 12;
        v9 = _os_log_send_and_compose_impl();

        if (!v9)
        {
          goto LABEL_55;
        }

        oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:{4, &v34, v32}];
        free(v9);
        SSFileLog();
      }
    }

    LOBYTE(v9) = 0;
    goto LABEL_55;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog4 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLog];
  if ([(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v5 = shouldLog4 | 2;
  }

  else
  {
    v5 = shouldLog4;
  }

  oSLogObject4 = [(ISLoadURLBagOperation *)mEMORY[0x277D69B38]2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_15;
  }

  v34 = 138543362;
  v35 = objc_opt_class();
  v7 = v35;
  LODWORD(v32) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{4, &v34, v32}];
    free(v8);
    SSFileLog();
LABEL_15:
  }

  LOBYTE(v9) = 1;
LABEL_56:

  v29 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)shouldUseX509
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = MGGetBoolAnswer();
  hardwarePlatform = [MEMORY[0x277CEE470] hardwarePlatform];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  v8 = objc_opt_class();
  v9 = MEMORY[0x277CCABB0];
  v10 = v8;
  v11 = [v9 numberWithBool:v2];
  v25 = 138543874;
  v26 = v8;
  v27 = 2114;
  v28 = hardwarePlatform;
  v29 = 2114;
  v30 = v11;
  LODWORD(v24) = 32;
  v23 = &v25;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, &v25, v24}];
    free(v12);
    v23 = oSLogObject;
    SSFileLog();
LABEL_11:
  }

  if (v2 && ([hardwarePlatform isEqualToString:@"t8015"] & 1) == 0)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v16 = shouldLog2 | 2;
    }

    else
    {
      v16 = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v18 = objc_opt_class();
      v25 = 138543362;
      v26 = v18;
      v19 = v18;
      LODWORD(v24) = 12;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_26:

        v13 = 1;
        goto LABEL_27;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:{4, &v25, v24}];
      free(v20);
      SSFileLog();
    }

    goto LABEL_26;
  }

  v13 = 0;
LABEL_27:

  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)signData:(id)data context:(id)context error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__0;
  v51 = __Block_byref_object_dispose__0;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__0;
  v45 = __Block_byref_object_dispose__0;
  v46 = 0;
  if (SSIsDaemon())
  {
    nSClassFromString(&cfstr_Daemonbiometri_0.isa) = [NSClassFromString(&cfstr_Daemonbiometri_0.isa) sharedInstance];
    v11 = (v42 + 5);
    obj = v42[5];
    v12 = [nSClassFromString(&cfstr_Daemonbiometri_0.isa) signData_:dataCopy context:contextCopy error:&obj];
    objc_storeStrong(v11, obj);
    v13 = v48[5];
    v48[5] = v12;
    goto LABEL_16;
  }

  v14 = dispatch_semaphore_create(0);
  v13 = objc_alloc_init(MEMORY[0x277D69B20]);
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __43__ISBiometricStore_signData_context_error___block_invoke;
  v34 = &unk_27A6707C8;
  v38 = &v41;
  selfCopy = self;
  v36 = contextCopy;
  v39 = &v47;
  nSClassFromString(&cfstr_Daemonbiometri_0.isa) = v14;
  v37 = nSClassFromString(&cfstr_Daemonbiometri_0.isa);
  [v13 signData:dataCopy context:v36 completionBlock:&v31];
  v15 = dispatch_time(0, 180000000000);
  if (dispatch_semaphore_wait(nSClassFromString(&cfstr_Daemonbiometri_0.isa), v15))
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v20 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v21 = objc_opt_class();
      v53 = 138543362;
      v54 = v21;
      v22 = v21;
      LODWORD(v30) = 12;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_14:

        v24 = *MEMORY[0x277D6A110];
        v25 = SSError();
        v26 = v42[5];
        v42[5] = v25;

        goto LABEL_15;
      }

      v20 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:{4, &v53, v30, v31, v32, v33, v34, selfCopy, v36}];
      free(v23);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
  if (error)
  {
    *error = v42[5];
  }

  v27 = v48[5];
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);
  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

void __43__ISBiometricStore_signData_context_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v8 = [MEMORY[0x277D69B38] sharedConfig];
    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (!v10)
    {
      goto LABEL_11;
    }

    v12 = *(a1 + 32);
    v13 = objc_opt_class();
    v14 = *(a1 + 40);
    v15 = v13;
    v16 = [v14 accountIdentifier];
    *v25 = 138412802;
    *&v25[4] = v13;
    *&v25[12] = 2112;
    *&v25[14] = v16;
    *&v25[22] = 2114;
    v26 = v7;
    LODWORD(v24) = 32;
  }

  else
  {
    if (v6)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      goto LABEL_15;
    }

    v8 = [MEMORY[0x277D69B38] sharedConfig];
    v19 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 &= 2u;
    }

    if (!v20)
    {
      goto LABEL_11;
    }

    v21 = *(a1 + 32);
    v22 = objc_opt_class();
    v23 = *(a1 + 40);
    v15 = v22;
    v16 = [v23 accountIdentifier];
    *v25 = 138543618;
    *&v25[4] = v22;
    *&v25[12] = 2112;
    *&v25[14] = v16;
    LODWORD(v24) = 22;
  }

  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:{4, v25, v24, *v25, *&v25[16]}];
    free(v17);
    SSFileLog();
LABEL_11:
  }

LABEL_15:
  dispatch_semaphore_signal(*(a1 + 48));

  v18 = *MEMORY[0x277D85DE8];
}

void __88__ISBiometricStore_x509CertChainDataForAccountIdentifier_purpose_regenerateCerts_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (!v10)
    {
      goto LABEL_13;
    }

    v12 = *(a1 + 32);
    v13 = objc_opt_class();
    v14 = *(a1 + 40);
    *v24 = 138543874;
    *&v24[4] = v13;
    *&v24[12] = 2112;
    *&v24[14] = v14;
    *&v24[22] = 2114;
    v25 = v7;
    v15 = v13;
    LODWORD(v23) = 32;
  }

  else
  {
    if (v6)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      goto LABEL_17;
    }

    v8 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v18 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 &= 2u;
    }

    if (!v19)
    {
      goto LABEL_13;
    }

    v20 = *(a1 + 32);
    v21 = objc_opt_class();
    v22 = *(a1 + 40);
    *v24 = 138543618;
    *&v24[4] = v21;
    *&v24[12] = 2112;
    *&v24[14] = v22;
    v15 = v21;
    LODWORD(v23) = 22;
  }

  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:{4, v24, v23, *v24, *&v24[16]}];
    free(v16);
    SSFileLog();
LABEL_13:
  }

LABEL_17:
  dispatch_semaphore_signal(*(a1 + 48));

  v17 = *MEMORY[0x277D85DE8];
}

@end