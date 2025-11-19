@interface PSUICoreTelephonyCallCache
+ (PSUICoreTelephonyCallCache)sharedInstance;
- (BOOL)isActiveCallSubtype:(const char *)a3;
- (BOOL)isAnyCallActive;
- (BOOL)isAnyCallActiveForProviderIdentifier:(id)a3;
- (BOOL)isAnyVOIPCallActive;
- (PSUICoreTelephonyCallCache)init;
- (id)initPrivate:(id)a3;
- (id)localizedPhoneNumber:(id)a3 context:(id)a4;
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

- (id)initPrivate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PSUICoreTelephonyCallCache;
  v6 = [(PSUICoreTelephonyCallCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callObserver, a3);
  }

  return v7;
}

- (PSUICoreTelephonyCallCache)init
{
  v2 = [(PSUICoreTelephonyCallCache *)self getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2658DE000, v2, OS_LOG_TYPE_ERROR, "Error: unsupported initializer called", v3, 2u);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (BOOL)isAnyCallActive
{
  v2 = [(PSUICoreTelephonyCallCache *)self callObserver];
  v3 = [v2 calls];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)isAnyVOIPCallActive
{
  v3 = [(PSUICoreTelephonyCallCache *)self isAnyCallActive];
  if (v3)
  {
    LOBYTE(v3) = ![(PSUICoreTelephonyCallCache *)self isAnyCallActiveForProviderIdentifier:@"com.apple.coretelephony"];
  }

  return v3;
}

- (BOOL)isAnyCallActiveForProviderIdentifier:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(PSUICoreTelephonyCallCache *)self callObserver];
  v6 = [v5 calls];

  v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [(PSUICoreTelephonyCallCache *)self getLogger];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [v11 providerIdentifier];
          *buf = v19;
          v25 = v13;
          _os_log_impl(&dword_2658DE000, v12, OS_LOG_TYPE_INFO, "Call provider identifier: %@", buf, 0xCu);
        }

        v14 = [v11 providerIdentifier];
        v15 = [v14 isEqualToString:v4];

        if (v15)
        {
          v16 = 1;
          goto LABEL_13;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
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

- (BOOL)isActiveCallSubtype:(const char *)a3
{
  v5 = [MEMORY[0x277D6EDF8] sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__PSUICoreTelephonyCallCache_isActiveCallSubtype___block_invoke;
  v8[3] = &unk_279BAA838;
  v8[4] = self;
  v8[5] = a3;
  v6 = [v5 callPassingTest:v8];

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

- (id)localizedPhoneNumber:(id)a3 context:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = +[PSUICoreTelephonySubscriberCache sharedInstance];
    v9 = [v8 isoCountryCode:v7];
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
      v13 = [(PSUICoreTelephonyCallCache *)self getLogger];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = 138412546;
        v21 = v6;
        v22 = 2112;
        v23 = v7;
        _os_log_error_impl(&dword_2658DE000, v13, OS_LOG_TYPE_ERROR, "Failed to localize CF phone number %@, %@", &v20, 0x16u);
      }
    }

    CFRelease(v11);
  }

  else
  {
    v14 = [(PSUICoreTelephonyCallCache *)self getLogger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_error_impl(&dword_2658DE000, v14, OS_LOG_TYPE_ERROR, "Failed to allocate CF phone number for %@, %@", &v20, 0x16u);
    }

    String = 0;
  }

  v15 = [(__CFString *)String length];
  v16 = &stru_287733598;
  if (v6)
  {
    v16 = v6;
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