@interface PSUICoreTelephonyCallCache
+ (PSUICoreTelephonyCallCache)sharedInstance;
- (BOOL)isActiveCallSubtype:(const char *)subtype;
- (BOOL)isAnyCallActive;
- (BOOL)isAnyCallActiveForProviderIdentifier:(id)identifier;
- (BOOL)isAnyVOIPCallActive;
- (PSUICoreTelephonyCallCache)init;
- (id)initPrivate:(id)private;
- (id)localizedPhoneNumber:(id)number context:(id)context;
@end

@implementation PSUICoreTelephonyCallCache

+ (PSUICoreTelephonyCallCache)sharedInstance
{
  if (qword_28156A7A0 != -1)
  {
    dispatch_once(&qword_28156A7A0, &__block_literal_global_17);
  }

  v3 = _MergedGlobals_73;

  return v3;
}

void __44__PSUICoreTelephonyCallCache_sharedInstance__block_invoke()
{
  v0 = [PSUICoreTelephonyCallCache alloc];
  v3 = objc_alloc_init(MEMORY[0x277CBAF70]);
  v1 = [(PSUICoreTelephonyCallCache *)v0 initPrivate:?];
  v2 = _MergedGlobals_73;
  _MergedGlobals_73 = v1;
}

- (id)initPrivate:(id)private
{
  privateCopy = private;
  v9.receiver = self;
  v9.super_class = PSUICoreTelephonyCallCache;
  v6 = [(PSUICoreTelephonyCallCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callObserver, private);
  }

  return v7;
}

- (PSUICoreTelephonyCallCache)init
{
  getLogger = [(PSUICoreTelephonyCallCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Error: unsupported initializer called", v3, 2u);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (BOOL)isAnyCallActive
{
  callObserver = [(PSUICoreTelephonyCallCache *)self callObserver];
  calls = [callObserver calls];
  v4 = [calls count] != 0;

  return v4;
}

- (BOOL)isAnyVOIPCallActive
{
  isAnyCallActive = [(PSUICoreTelephonyCallCache *)self isAnyCallActive];
  if (isAnyCallActive)
  {
    LOBYTE(isAnyCallActive) = ![(PSUICoreTelephonyCallCache *)self isAnyCallActiveForProviderIdentifier:@"com.apple.coretelephony"];
  }

  return isAnyCallActive;
}

- (BOOL)isAnyCallActiveForProviderIdentifier:(id)identifier
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  callObserver = [(PSUICoreTelephonyCallCache *)self callObserver];
  calls = [callObserver calls];

  v7 = [calls countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v9 = *v21;
    *&v8 = 138412290;
    v19 = v8;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(calls);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        getLogger = [(PSUICoreTelephonyCallCache *)self getLogger];
        if (os_log_type_enabled(getLogger, OS_LOG_TYPE_INFO))
        {
          providerIdentifier = [v11 providerIdentifier];
          *buf = v19;
          v25 = providerIdentifier;
          _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_INFO, "Call provider identifier: %@", buf, 0xCu);
        }

        providerIdentifier2 = [v11 providerIdentifier];
        v15 = [providerIdentifier2 isEqualToString:identifierCopy];

        if (v15)
        {
          v16 = 1;
          goto LABEL_13;
        }
      }

      v7 = [calls countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)isActiveCallSubtype:(const char *)subtype
{
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__PSUICoreTelephonyCallCache_isActiveCallSubtype___block_invoke;
  v8[3] = &unk_279BAA838;
  v8[4] = self;
  v8[5] = subtype;
  v6 = [mEMORY[0x277D6EDF8] callPassingTest:v8];

  return v6 != 0;
}

uint64_t __50__PSUICoreTelephonyCallCache_isActiveCallSubtype___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 providerContext];
  v5 = [v4 objectForKey:@"kCallSubType"];

  v6 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "Call subtype: %@", &v11, 0xCu);
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a1 + 40)];
  v8 = [v5 isEqualToString:v7];

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)localizedPhoneNumber:(id)number context:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  contextCopy = context;
  if (contextCopy)
  {
    v8 = +[PSUICoreTelephonySubscriberCache sharedInstance];
    v9 = [v8 isoCountryCode:contextCopy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277CBECE8];
  v11 = CFPhoneNumberCreate();
  if (v11)
  {
    String = CFPhoneNumberCreateString();
    if (!String)
    {
      getLogger = [(PSUICoreTelephonyCallCache *)self getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
      {
        v20 = 138412546;
        v21 = numberCopy;
        v22 = 2112;
        v23 = contextCopy;
        _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Failed to localize CF phone number %@, %@", &v20, 0x16u);
      }
    }

    CFRelease(v11);
  }

  else
  {
    getLogger2 = [(PSUICoreTelephonyCallCache *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412546;
      v21 = numberCopy;
      v22 = 2112;
      v23 = contextCopy;
      _os_log_error_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_ERROR, "Failed to allocate CF phone number for %@, %@", &v20, 0x16u);
    }

    String = 0;
  }

  v15 = [(__CFString *)String length];
  v16 = &stru_287733598;
  if (numberCopy)
  {
    v16 = numberCopy;
  }

  if (v15)
  {
    v16 = String;
  }

  v17 = v16;

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end