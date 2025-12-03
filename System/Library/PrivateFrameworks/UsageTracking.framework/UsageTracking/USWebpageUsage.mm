@interface USWebpageUsage
+ (id)getProcessIdentifier;
- (USWebpageUsage)initWithURL:(id)l bundleIdentifier:(id)identifier auditToken:(id *)token;
- (USWebpageUsage)initWithURL:(id)l bundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier;
- (USWebpageUsage)initWithURL:(id)l bundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier auditToken:(id *)token;
- (USWebpageUsage)initWithURL:(id)l context:(id)context eventStorage:(id)storage source:(id)source bundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier usageTrusted:(BOOL)trusted;
- (id)description;
- (void)changeState:(int64_t)state completionHandler:(id)handler;
- (void)dealloc;
@end

@implementation USWebpageUsage

- (USWebpageUsage)initWithURL:(id)l context:(id)context eventStorage:(id)storage source:(id)source bundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier usageTrusted:(BOOL)trusted
{
  contextCopy = context;
  storageCopy = storage;
  sourceCopy = source;
  identifierCopy = identifier;
  v39.receiver = self;
  v39.super_class = USWebpageUsage;
  profileIdentifierCopy = profileIdentifier;
  lCopy = l;
  v19 = [(USWebpageUsage *)&v39 init];
  v20 = objc_opt_new();
  v21 = [v20 normalizeURL:lCopy];

  v22 = [v21 copy];
  URL = v19->_URL;
  v19->_URL = v22;

  v24 = objc_opt_new();
  uUIDString = [v24 UUIDString];
  uniqueIdentifier = v19->_uniqueIdentifier;
  v19->_uniqueIdentifier = uUIDString;

  v27 = [profileIdentifierCopy copy];
  profileIdentifier = v19->_profileIdentifier;
  v19->_profileIdentifier = v27;

  objc_storeStrong(&v19->_context, context);
  objc_storeStrong(&v19->_eventStorage, storage);
  objc_storeStrong(&v19->_source, source);
  v19->_state = 0;
  v19->_usageTrusted = trusted;
  v29 = objc_opt_new();
  contextUsageRecord = v19->_contextUsageRecord;
  v19->_contextUsageRecord = v29;

  v31 = +[USWebpageUsage getProcessIdentifier];
  v32 = v31;
  if (!identifierCopy)
  {
    identifierCopy = v31;
  }

  if ([v32 isEqualToString:@"com.apple.SafariViewService"])
  {

    identifierCopy = @"com.apple.mobilesafari";
  }

  v33 = [(__CFString *)identifierCopy copy];
  bundleIdentifier = v19->_bundleIdentifier;
  v19->_bundleIdentifier = v33;

  return v19;
}

- (USWebpageUsage)initWithURL:(id)l bundleIdentifier:(id)identifier auditToken:(id *)token
{
  v5 = *&token->var0[4];
  v7[0] = *token->var0;
  v7[1] = v5;
  return [(USWebpageUsage *)self initWithURL:l bundleIdentifier:identifier profileIdentifier:0 auditToken:v7];
}

- (USWebpageUsage)initWithURL:(id)l bundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier auditToken:(id *)token
{
  profileIdentifierCopy = profileIdentifier;
  identifierCopy = identifier;
  lCopy = l;
  v11 = [USUsageTrust validateTrustForSecTask:0];
  userContext = [MEMORY[0x277CFE318] userContext];
  userKnowledgeStore = [MEMORY[0x277CFE208] userKnowledgeStore];
  v14 = BiomeLibrary();
  v15 = [v14 App];
  webUsage = [v15 WebUsage];
  source = [webUsage source];
  LOBYTE(v20) = v11;
  v18 = [(USWebpageUsage *)self initWithURL:lCopy context:userContext eventStorage:userKnowledgeStore source:source bundleIdentifier:identifierCopy profileIdentifier:profileIdentifierCopy usageTrusted:v20];

  return v18;
}

- (USWebpageUsage)initWithURL:(id)l bundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier
{
  v8 = initWithURL_bundleIdentifier_profileIdentifier__onceToken;
  profileIdentifierCopy = profileIdentifier;
  identifierCopy = identifier;
  lCopy = l;
  if (v8 != -1)
  {
    [USWebpageUsage initWithURL:bundleIdentifier:profileIdentifier:];
  }

  userContext = [MEMORY[0x277CFE318] userContext];
  userKnowledgeStore = [MEMORY[0x277CFE208] userKnowledgeStore];
  v14 = BiomeLibrary();
  v15 = [v14 App];
  webUsage = [v15 WebUsage];
  source = [webUsage source];
  LOBYTE(v20) = initWithURL_bundleIdentifier_profileIdentifier__trusted;
  v18 = [(USWebpageUsage *)self initWithURL:lCopy context:userContext eventStorage:userKnowledgeStore source:source bundleIdentifier:identifierCopy profileIdentifier:profileIdentifierCopy usageTrusted:v20];

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
    processName = Identifier;
  }

  else
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
  }

  return processName;
}

- (void)changeState:(int64_t)state completionHandler:(id)handler
{
  v70 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v49 = objc_opt_new();
  v52 = [(USWebpageUsage *)self URL];
  host = [v52 host];
  if (host)
  {
    appWebUsageType = [MEMORY[0x277CFE338] appWebUsageType];
    v6 = self->_contextUsageRecord;
    objc_sync_enter(v6);
    obj = v6;
    v7 = [(NSMutableDictionary *)self->_contextUsageRecord objectForKeyedSubscript:appWebUsageType];
    v8 = 0x277CFE000;
    v44 = v7;
    switch(state)
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
            bundleIdentifier = [(USWebpageUsage *)self bundleIdentifier];
            v43 = v9;
            profileIdentifier = [(USWebpageUsage *)self profileIdentifier];
            v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[USWebpageUsage usageTrusted](self, "usageTrusted")}];
            if ([(USWebpageUsage *)self state]!= v10)
            {
              v14 = objc_alloc(MEMORY[0x277CF1010]);
              uniqueIdentifier = [(USWebpageUsage *)self uniqueIdentifier];
              v16 = v52;
              absoluteString = [v16 absoluteString];
              v18 = absoluteString;
              if (absoluteString)
              {
                relativeString = absoluteString;
              }

              else
              {
                relativeString = [v16 relativeString];
              }

              v20 = relativeString;

              v21 = [v14 initWithUniqueID:uniqueIdentifier absoluteTimestamp:v49 usageState:v10 webpageURL:v20 webDomain:host applicationID:bundleIdentifier deviceID:0 isUsageTrusted:v13 safariProfileID:profileIdentifier];
              source = [(USWebpageUsage *)self source];
              [source sendEvent:v21];

              [(USWebpageUsage *)self setState:v10];
              v8 = 0x277CFE000uLL;
            }

            if (v11)
            {
              v23 = 0;
            }

            else
            {
              appWebUsageWepageURL = [*(v8 + 824) appWebUsageWepageURL];
              appWebUsageWebDomain = [*(v8 + 824) appWebUsageWebDomain];
              appWebUsageStartDate = [*(v8 + 824) appWebUsageStartDate];
              appWebUsageBundleID = [*(v8 + 824) appWebUsageBundleID];
              v28 = v8;
              v29 = appWebUsageBundleID;
              isUsageTrusted = [*(v28 + 824) isUsageTrusted];
              v31 = isUsageTrusted;
              if (profileIdentifier)
              {
                appUsageSafariProfileID = [MEMORY[0x277CFE338] appUsageSafariProfileID];
                v64[0] = appWebUsageWepageURL;
                v64[1] = appWebUsageWebDomain;
                v65[0] = v52;
                v65[1] = host;
                v64[2] = appWebUsageType;
                v64[3] = appWebUsageStartDate;
                v65[2] = v43;
                v65[3] = v49;
                v64[4] = v29;
                v64[5] = appUsageSafariProfileID;
                v65[4] = bundleIdentifier;
                v65[5] = profileIdentifier;
                v64[6] = v31;
                v65[6] = v13;
                v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:7];
              }

              else
              {
                v66[0] = appWebUsageWepageURL;
                v66[1] = appWebUsageWebDomain;
                v67[0] = v52;
                v67[1] = host;
                v66[2] = appWebUsageType;
                v66[3] = appWebUsageStartDate;
                v67[2] = v43;
                v67[3] = v49;
                v66[4] = v29;
                v66[5] = isUsageTrusted;
                v67[4] = bundleIdentifier;
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
              selfCopy = self;
              v59 = handlerCopy;
              v34 = MEMORY[0x2743AAC50](v55);
              context = [(USWebpageUsage *)self context];
              if (v23)
              {
                v63 = v23;
                v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
                v62 = v33;
                keyPathForAppWebUsageDataDictionaries2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
                keyPathForAppWebUsageDataDictionaries = [MEMORY[0x277CFE338] keyPathForAppWebUsageDataDictionaries];
                [context addObjects:v36 andRemoveObjects:keyPathForAppWebUsageDataDictionaries2 fromArrayAtKeyPath:keyPathForAppWebUsageDataDictionaries responseQueue:0 withCompletion:v34];
              }

              else
              {
                v61 = v33;
                v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
                keyPathForAppWebUsageDataDictionaries2 = [MEMORY[0x277CFE338] keyPathForAppWebUsageDataDictionaries];
                [context removeObjects:v36 fromArrayAtKeyPath:keyPathForAppWebUsageDataDictionaries2 responseQueue:0 withCompletion:v34];
              }
            }

            else if (v23)
            {
              context2 = [(USWebpageUsage *)self context];
              v60 = v23;
              v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
              keyPathForAppWebUsageDataDictionaries3 = [MEMORY[0x277CFE338] keyPathForAppWebUsageDataDictionaries];
              v53[0] = MEMORY[0x277D85DD0];
              v53[1] = 3221225472;
              v53[2] = __48__USWebpageUsage_changeState_completionHandler___block_invoke_3;
              v53[3] = &unk_279E0A6B8;
              v54 = handlerCopy;
              [context2 addObjects:v40 toArrayAtKeyPath:keyPathForAppWebUsageDataDictionaries3 responseQueue:0 withCompletion:v53];
            }

            else if (handlerCopy)
            {
              (*(handlerCopy + 2))(handlerCopy, 0);
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

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
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