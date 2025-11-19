@interface USWebpageUsage
+ (id)getProcessIdentifier;
- (USWebpageUsage)initWithURL:(id)a3 bundleIdentifier:(id)a4 auditToken:(id *)a5;
- (USWebpageUsage)initWithURL:(id)a3 bundleIdentifier:(id)a4 profileIdentifier:(id)a5;
- (USWebpageUsage)initWithURL:(id)a3 bundleIdentifier:(id)a4 profileIdentifier:(id)a5 auditToken:(id *)a6;
- (USWebpageUsage)initWithURL:(id)a3 context:(id)a4 eventStorage:(id)a5 source:(id)a6 bundleIdentifier:(id)a7 profileIdentifier:(id)a8 usageTrusted:(BOOL)a9;
- (id)description;
- (void)changeState:(int64_t)a3 completionHandler:(id)a4;
- (void)dealloc;
@end

@implementation USWebpageUsage

- (USWebpageUsage)initWithURL:(id)a3 context:(id)a4 eventStorage:(id)a5 source:(id)a6 bundleIdentifier:(id)a7 profileIdentifier:(id)a8 usageTrusted:(BOOL)a9
{
  v38 = a4;
  v37 = a5;
  v36 = a6;
  v16 = a7;
  v39.receiver = self;
  v39.super_class = USWebpageUsage;
  v17 = a8;
  v18 = a3;
  v19 = [(USWebpageUsage *)&v39 init];
  v20 = objc_opt_new();
  v21 = [v20 normalizeURL:v18];

  v22 = [v21 copy];
  URL = v19->_URL;
  v19->_URL = v22;

  v24 = objc_opt_new();
  v25 = [v24 UUIDString];
  uniqueIdentifier = v19->_uniqueIdentifier;
  v19->_uniqueIdentifier = v25;

  v27 = [v17 copy];
  profileIdentifier = v19->_profileIdentifier;
  v19->_profileIdentifier = v27;

  objc_storeStrong(&v19->_context, a4);
  objc_storeStrong(&v19->_eventStorage, a5);
  objc_storeStrong(&v19->_source, a6);
  v19->_state = 0;
  v19->_usageTrusted = a9;
  v29 = objc_opt_new();
  contextUsageRecord = v19->_contextUsageRecord;
  v19->_contextUsageRecord = v29;

  v31 = +[USWebpageUsage getProcessIdentifier];
  v32 = v31;
  if (!v16)
  {
    v16 = v31;
  }

  if ([v32 isEqualToString:@"com.apple.SafariViewService"])
  {

    v16 = @"com.apple.mobilesafari";
  }

  v33 = [(__CFString *)v16 copy];
  bundleIdentifier = v19->_bundleIdentifier;
  v19->_bundleIdentifier = v33;

  return v19;
}

- (USWebpageUsage)initWithURL:(id)a3 bundleIdentifier:(id)a4 auditToken:(id *)a5
{
  v5 = *&a5->var0[4];
  v7[0] = *a5->var0;
  v7[1] = v5;
  return [(USWebpageUsage *)self initWithURL:a3 bundleIdentifier:a4 profileIdentifier:0 auditToken:v7];
}

- (USWebpageUsage)initWithURL:(id)a3 bundleIdentifier:(id)a4 profileIdentifier:(id)a5 auditToken:(id *)a6
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [USUsageTrust validateTrustForSecTask:0];
  v12 = [MEMORY[0x277CFE318] userContext];
  v13 = [MEMORY[0x277CFE208] userKnowledgeStore];
  v14 = BiomeLibrary();
  v15 = [v14 App];
  v16 = [v15 WebUsage];
  v17 = [v16 source];
  LOBYTE(v20) = v11;
  v18 = [(USWebpageUsage *)self initWithURL:v10 context:v12 eventStorage:v13 source:v17 bundleIdentifier:v9 profileIdentifier:v8 usageTrusted:v20];

  return v18;
}

- (USWebpageUsage)initWithURL:(id)a3 bundleIdentifier:(id)a4 profileIdentifier:(id)a5
{
  v8 = initWithURL_bundleIdentifier_profileIdentifier__onceToken;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  if (v8 != -1)
  {
    [USWebpageUsage initWithURL:bundleIdentifier:profileIdentifier:];
  }

  v12 = [MEMORY[0x277CFE318] userContext];
  v13 = [MEMORY[0x277CFE208] userKnowledgeStore];
  v14 = BiomeLibrary();
  v15 = [v14 App];
  v16 = [v15 WebUsage];
  v17 = [v16 source];
  LOBYTE(v20) = initWithURL_bundleIdentifier_profileIdentifier__trusted;
  v18 = [(USWebpageUsage *)self initWithURL:v11 context:v12 eventStorage:v13 source:v17 bundleIdentifier:v10 profileIdentifier:v9 usageTrusted:v20];

  return v18;
}

BOOL __65__USWebpageUsage_initWithURL_bundleIdentifier_profileIdentifier___block_invoke()
{
  result = [USUsageTrust validateTrustForSecTask:0];
  initWithURL_bundleIdentifier_profileIdentifier__trusted = result;
  return result;
}

- (void)dealloc
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Tried to create Duet event with start date %@ later than end date %@", v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

void __25__USWebpageUsage_dealloc__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __25__USWebpageUsage_dealloc__block_invoke_cold_1(a1, v5);
  }
}

- (id)description
{
  v3 = self->_contextUsageRecord;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_contextUsageRecord copy];
  objc_sync_exit(v3);

  v5 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = USWebpageUsage;
  v6 = [(USWebpageUsage *)&v10 description];
  v7 = [(USWebpageUsage *)self URL];
  v8 = [v5 stringWithFormat:@"%@ %@ %@", v6, v7, v4];

  return v8;
}

+ (id)getProcessIdentifier
{
  MainBundle = CFBundleGetMainBundle();
  Identifier = CFBundleGetIdentifier(MainBundle);
  if (Identifier)
  {
    v4 = Identifier;
  }

  else
  {
    v5 = [MEMORY[0x277CCAC38] processInfo];
    v4 = [v5 processName];
  }

  return v4;
}

- (void)changeState:(int64_t)a3 completionHandler:(id)a4
{
  v70 = *MEMORY[0x277D85DE8];
  v50 = a4;
  v49 = objc_opt_new();
  v52 = [(USWebpageUsage *)self URL];
  v51 = [v52 host];
  if (v51)
  {
    v48 = [MEMORY[0x277CFE338] appWebUsageType];
    v6 = self->_contextUsageRecord;
    objc_sync_enter(v6);
    obj = v6;
    v7 = [(NSMutableDictionary *)self->_contextUsageRecord objectForKeyedSubscript:v48];
    v8 = 0x277CFE000;
    v44 = v7;
    switch(a3)
    {
      case 0:
        if (v7)
        {
          v46 = [(NSMutableDictionary *)self->_contextUsageRecord copy];
          [(NSMutableDictionary *)self->_contextUsageRecord removeAllObjects];
          v9 = 0;
        }

        else
        {
          v9 = 0;
          v46 = 0;
        }

        v11 = 1;
        v10 = 1;
        goto LABEL_26;
      case 1:
        if (v7)
        {
          if (![v7 integerValue])
          {
            v9 = 0;
            v46 = 0;
            v10 = 2;
            goto LABEL_18;
          }

          v46 = [(NSMutableDictionary *)self->_contextUsageRecord copy];
          v11 = 0;
        }

        else
        {
          v11 = 0;
          v46 = 0;
        }

        v10 = 2;
        v9 = &unk_288087210;
        goto LABEL_26;
      case 2:
        if (v7)
        {
          if ([v7 integerValue] == 1)
          {
            v9 = 0;
            v46 = 0;
            v10 = 3;
LABEL_18:
            v11 = 1;
LABEL_26:
            v47 = [(USWebpageUsage *)self bundleIdentifier];
            v43 = v9;
            v12 = [(USWebpageUsage *)self profileIdentifier];
            v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[USWebpageUsage usageTrusted](self, "usageTrusted")}];
            if ([(USWebpageUsage *)self state]!= v10)
            {
              v14 = objc_alloc(MEMORY[0x277CF1010]);
              v15 = [(USWebpageUsage *)self uniqueIdentifier];
              v16 = v52;
              v17 = [v16 absoluteString];
              v18 = v17;
              if (v17)
              {
                v19 = v17;
              }

              else
              {
                v19 = [v16 relativeString];
              }

              v20 = v19;

              v21 = [v14 initWithUniqueID:v15 absoluteTimestamp:v49 usageState:v10 webpageURL:v20 webDomain:v51 applicationID:v47 deviceID:0 isUsageTrusted:v13 safariProfileID:v12];
              v22 = [(USWebpageUsage *)self source];
              [v22 sendEvent:v21];

              [(USWebpageUsage *)self setState:v10];
              v8 = 0x277CFE000uLL;
            }

            if (v11)
            {
              v23 = 0;
            }

            else
            {
              v24 = [*(v8 + 824) appWebUsageWepageURL];
              v25 = [*(v8 + 824) appWebUsageWebDomain];
              v26 = [*(v8 + 824) appWebUsageStartDate];
              v27 = [*(v8 + 824) appWebUsageBundleID];
              v28 = v8;
              v29 = v27;
              v30 = [*(v28 + 824) isUsageTrusted];
              v31 = v30;
              if (v12)
              {
                v32 = [MEMORY[0x277CFE338] appUsageSafariProfileID];
                v64[0] = v24;
                v64[1] = v25;
                v65[0] = v52;
                v65[1] = v51;
                v64[2] = v48;
                v64[3] = v26;
                v65[2] = v43;
                v65[3] = v49;
                v64[4] = v29;
                v64[5] = v32;
                v65[4] = v47;
                v65[5] = v12;
                v64[6] = v31;
                v65[6] = v13;
                v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:7];
              }

              else
              {
                v66[0] = v24;
                v66[1] = v25;
                v67[0] = v52;
                v67[1] = v51;
                v66[2] = v48;
                v66[3] = v26;
                v67[2] = v43;
                v67[3] = v49;
                v66[4] = v29;
                v66[5] = v30;
                v67[4] = v47;
                v67[5] = v13;
                v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:6];
              }

              [(NSMutableDictionary *)self->_contextUsageRecord setDictionary:v23];
            }

            objc_sync_exit(obj);
            if (v46)
            {
              v55[0] = MEMORY[0x277D85DD0];
              v55[1] = 3221225472;
              v55[2] = __48__USWebpageUsage_changeState_completionHandler___block_invoke;
              v55[3] = &unk_279E0A690;
              v33 = v46;
              v56 = v33;
              v57 = v49;
              v58 = self;
              v59 = v50;
              v34 = MEMORY[0x2743AAC50](v55);
              v35 = [(USWebpageUsage *)self context];
              if (v23)
              {
                v63 = v23;
                v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
                v62 = v33;
                v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
                v38 = [MEMORY[0x277CFE338] keyPathForAppWebUsageDataDictionaries];
                [v35 addObjects:v36 andRemoveObjects:v37 fromArrayAtKeyPath:v38 responseQueue:0 withCompletion:v34];
              }

              else
              {
                v61 = v33;
                v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
                v37 = [MEMORY[0x277CFE338] keyPathForAppWebUsageDataDictionaries];
                [v35 removeObjects:v36 fromArrayAtKeyPath:v37 responseQueue:0 withCompletion:v34];
              }
            }

            else if (v23)
            {
              v39 = [(USWebpageUsage *)self context];
              v60 = v23;
              v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
              v41 = [MEMORY[0x277CFE338] keyPathForAppWebUsageDataDictionaries];
              v53[0] = MEMORY[0x277D85DD0];
              v53[1] = 3221225472;
              v53[2] = __48__USWebpageUsage_changeState_completionHandler___block_invoke_3;
              v53[3] = &unk_279E0A6B8;
              v54 = v50;
              [v39 addObjects:v40 toArrayAtKeyPath:v41 responseQueue:0 withCompletion:v53];
            }

            else if (v50)
            {
              (*(v50 + 2))(v50, 0);
            }

            goto LABEL_45;
          }

          v46 = [(NSMutableDictionary *)self->_contextUsageRecord copy];
          v11 = 0;
        }

        else
        {
          v11 = 0;
          v46 = 0;
        }

        v10 = 3;
        v9 = &unk_288087228;
        goto LABEL_26;
    }

    v9 = 0;
    v10 = 0;
    v46 = 0;
    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138739971;
    v69 = v52;
    _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "No hostname for URL %{sensitive}@", buf, 0xCu);
  }

  if (v50)
  {
    (*(v50 + 2))(v50, 0);
  }

LABEL_45:

  v42 = *MEMORY[0x277D85DE8];
}

void __48__USWebpageUsage_changeState_completionHandler___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  v4 = [MEMORY[0x277CFE338] appWebUsageWepageURL];
  v43 = [MEMORY[0x277CFE338] appWebUsageWebDomain];
  v5 = [MEMORY[0x277CFE338] appWebUsageType];
  v42 = [MEMORY[0x277CFE338] isUsageTrusted];
  v6 = [MEMORY[0x277CFE338] appWebUsageStartDate];
  v7 = [MEMORY[0x277CFE338] appWebUsageBundleID];
  v8 = [MEMORY[0x277CFE338] appUsageSafariProfileID];
  v9 = [MEMORY[0x277CFE1D0] webpageURL];
  v10 = [MEMORY[0x277CFE1D0] webDomain];
  v41 = [MEMORY[0x277CFE1D0] usageType];
  v39 = [MEMORY[0x277CFE1D0] safariProfileID];
  v40 = [MEMORY[0x277CFE1D0] isUsageTrusted];
  v35 = [MEMORY[0x277CFE298] appWebUsageStream];
  v38 = v6;
  v11 = [v2 objectForKeyedSubscript:v6];
  v37 = v7;
  if ([v11 compare:v3] == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [USWebpageUsage dealloc];
    }

    v12 = 0;
    v13 = v8;
    v14 = v35;
  }

  else
  {
    v33 = v3;
    v34 = v5;
    v15 = MEMORY[0x277CFE1A8];
    v16 = [v2 objectForKeyedSubscript:v7];
    v30 = [v15 withBundle:v16];

    v31 = v8;
    v17 = [v2 objectForKeyedSubscript:v8];
    v32 = v4;
    if (v17)
    {
      v47 = v9;
      v18 = [v2 objectForKeyedSubscript:v4];
      v52 = v18;
      v48 = v10;
      v19 = [v2 objectForKeyedSubscript:v43];
      v53 = v19;
      v49 = v41;
      v20 = [v2 objectForKeyedSubscript:v34];
      v54 = v20;
      v55 = v17;
      v50 = v39;
      v51 = v40;
      v21 = [v2 objectForKeyedSubscript:v42];
      v56 = v21;
      v22 = MEMORY[0x277CBEAC0];
      v23 = 5;
    }

    else
    {
      v47 = v9;
      v18 = [v2 objectForKeyedSubscript:v4];
      v52 = v18;
      v48 = v10;
      v19 = [v2 objectForKeyedSubscript:v43];
      v53 = v19;
      v49 = v41;
      v20 = [v2 objectForKeyedSubscript:v34];
      v54 = v20;
      v50 = v40;
      v21 = [v2 objectForKeyedSubscript:v42];
      v55 = v21;
      v22 = MEMORY[0x277CBEAC0];
      v23 = 4;
    }

    v24 = [v22 dictionaryWithObjects:&v52 forKeys:&v47 count:{v23, v10}];

    v14 = v35;
    v3 = v33;
    v12 = [MEMORY[0x277CFE1D8] eventWithStream:v35 startDate:v11 endDate:v33 value:v30 metadata:v24];

    v13 = v31;
    v4 = v32;
    v5 = v34;
    v10 = v29;
  }

  if (v12)
  {
    v25 = [*(a1 + 48) eventStorage];
    v46 = v12;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __48__USWebpageUsage_changeState_completionHandler___block_invoke_2;
    v44[3] = &unk_279E0A668;
    v45 = *(a1 + 56);
    [v25 saveObjects:v26 responseQueue:0 withCompletion:v44];
  }

  else
  {
    v27 = *(a1 + 56);
    if (v27)
    {
      (*(v27 + 16))(v27, 0);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __48__USWebpageUsage_changeState_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

uint64_t __48__USWebpageUsage_changeState_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __25__USWebpageUsage_dealloc__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = 138740483;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to reset web page usage to not-in-use on dealloc for URL %{sensitive}@ and bundle identifier %@ with error: %@", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

@end