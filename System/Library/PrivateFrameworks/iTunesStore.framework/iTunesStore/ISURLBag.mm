@interface ISURLBag
+ (BOOL)shouldSendGUIDForURL:(id)l inBagContext:(id)context;
+ (BOOL)urlIsTrusted:(id)trusted inBagContext:(id)context;
+ (id)_sharedBagBackend;
+ (id)copyExtraHeadersForURL:(id)l inBagContext:(id)context;
+ (id)networkConstraintsForDownloadKind:(id)kind inBagContext:(id)context;
+ (id)storeFrontURLBagKeyForItemKind:(id)kind;
+ (id)urlBagForContext:(id)context;
+ (id)urlForKey:(id)key inBagContext:(id)context;
+ (id)valueForKey:(id)key inBagContext:(id)context;
+ (void)_loadItemKindURLBagKeyMap;
- (BOOL)isValid;
- (BOOL)loadFromDictionary:(id)dictionary returningError:(id *)error;
- (BOOL)shouldSendAnonymousMachineIdentifierForURL:(id)l;
- (BOOL)shouldSendGUIDForURL:(id)l;
- (BOOL)urlIsTrusted:(id)trusted;
- (BOOL)writeToFile:(id)file options:(unint64_t)options error:(id *)error;
- (ISURLBag)init;
- (ISURLBag)initWithContentsOfFile:(id)file;
- (ISURLBag)initWithRawDictionary:(id)dictionary;
- (ISURLBag)initWithURLBagContext:(id)context;
- (NSSet)availableStorefrontItemKinds;
- (SSURLBagContext)URLBagContext;
- (id)URLForURL:(id)l clientIdentifier:(id)identifier;
- (id)_copyGUIDPatternsFromBagBackend;
- (id)_copyGUIDSchemesFromBagBackend;
- (id)_copyHeaderPatternsFromBagBackend;
- (id)_networkConstraintsCachePath;
- (id)copyExtraHeadersForURL:(id)l;
- (id)networkConstraintsForDownloadKind:(id)kind;
- (id)sanitizedURLForURL:(id)l;
- (id)searchQueryParametersForClientIdentifier:(id)identifier networkType:(int64_t)type;
- (id)urlForKey:(id)key;
- (int64_t)versionIdentifier;
- (void)_preprocessURLResolutionCacheDictionary:(id)dictionary;
- (void)_setBagBackendWithDictionary:(id)dictionary;
- (void)_toggleStopSendingLocalCookies;
- (void)_writeNetworkConstraintsCacheFile;
- (void)_writeURLResolutionCacheFile;
- (void)dealloc;
- (void)setInvalidationTime:(double)time;
- (void)setInvalidationTimeWithExprationInterval:(double)interval;
- (void)setURLBagContext:(id)context;
@end

@implementation ISURLBag

+ (id)_sharedBagBackend
{
  if (_sharedBagBackend_onceToken != -1)
  {
    +[ISURLBag _sharedBagBackend];
  }

  v3 = _sharedBagBackend_sharedBagBackend;

  return v3;
}

uint64_t __29__ISURLBag__sharedBagBackend__block_invoke()
{
  _sharedBagBackend_sharedBagBackend = objc_alloc_init(ISURLBagBackend);

  return MEMORY[0x2821F96F8]();
}

- (ISURLBag)init
{
  __ISRecordSPIClassUsage(self);
  v10.receiver = self;
  v10.super_class = ISURLBag;
  v3 = [(ISURLBag *)&v10 init];
  if (v3)
  {
    _sharedBagBackend = [objc_opt_class() _sharedBagBackend];
    bagBackend = v3->_bagBackend;
    v3->_bagBackend = _sharedBagBackend;

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    bagBackendKey = v3->_bagBackendKey;
    v3->_bagBackendKey = uUIDString;

    v3->_invalidationTime = -1.79769313e308;
  }

  return v3;
}

- (ISURLBag)initWithContentsOfFile:(id)file
{
  v4 = MEMORY[0x277CBEAC0];
  fileCopy = file;
  v6 = [[v4 alloc] initWithContentsOfFile:fileCopy];

  if (v6)
  {
    v7 = [(ISURLBag *)self initWithRawDictionary:v6];
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (ISURLBag)initWithRawDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(ISURLBag *)self init];
  v6 = v5;
  if (v5)
  {
    [(ISURLBag *)v5 _setBagBackendWithDictionary:dictionaryCopy];
    _copyGUIDPatternsFromBagBackend = [(ISURLBag *)v6 _copyGUIDPatternsFromBagBackend];
    guidPatterns = v6->_guidPatterns;
    v6->_guidPatterns = _copyGUIDPatternsFromBagBackend;

    _copyGUIDSchemesFromBagBackend = [(ISURLBag *)v6 _copyGUIDSchemesFromBagBackend];
    guidSchemes = v6->_guidSchemes;
    v6->_guidSchemes = _copyGUIDSchemesFromBagBackend;

    _copyHeaderPatternsFromBagBackend = [(ISURLBag *)v6 _copyHeaderPatternsFromBagBackend];
    headerPatterns = v6->_headerPatterns;
    v6->_headerPatterns = _copyHeaderPatternsFromBagBackend;

    v6->_invalidationTime = 1.79769313e308;
  }

  return v6;
}

- (ISURLBag)initWithURLBagContext:(id)context
{
  contextCopy = context;
  if ([contextCopy bagType] != 2)
  {
    v5 = 0;
LABEL_6:

    goto LABEL_7;
  }

  v5 = [(ISURLBag *)self init];
  if (v5)
  {
    v6 = [contextCopy copy];
    context = v5->_context;
    v5->_context = v6;

    v5->_invalidationTime = 1.79769313e308;
    v8 = objc_alloc(MEMORY[0x277CBEAC0]);
    _networkConstraintsCachePath = [(ISURLBag *)v5 _networkConstraintsCachePath];
    self = [v8 initWithContentsOfFile:_networkConstraintsCachePath];

    [(ISURLBag *)v5 _setBagBackendWithDictionary:self];
    if (!self)
    {
      v10 = objc_alloc_init(MEMORY[0x277D69BD8]);
      defaultConstraints = v5->_defaultConstraints;
      v5->_defaultConstraints = v10;

      [(SSNetworkConstraints *)v5->_defaultConstraints disableCellularNetworkTypes];
    }

    goto LABEL_6;
  }

LABEL_7:

  return v5;
}

- (void)dealloc
{
  [(ISURLBag *)self _setBagBackendWithDictionary:0];
  v3.receiver = self;
  v3.super_class = ISURLBag;
  [(ISURLBag *)&v3 dealloc];
}

- (id)copyExtraHeadersForURL:(id)l
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_headerPatterns)
  {
    selfCopy = self;
    absoluteString = [l absoluteString];
    v5 = [absoluteString length];
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = selfCopy->_headerPatterns;
    v20 = [(NSDictionary *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v20)
    {
      v19 = *v26;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v25 + 1) + 8 * i);
          v8 = selfCopy;
          v9 = [(NSDictionary *)selfCopy->_headerPatterns objectForKey:v7];
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v22;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v22 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                if ([*(*(&v21 + 1) + 8 * j) rangeOfFirstMatchInString:absoluteString options:0 range:{0, v5}] != 0x7FFFFFFFFFFFFFFFLL)
                {
                  [v18 addObject:v7];
                  goto LABEL_17;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:

          selfCopy = v8;
        }

        v20 = [(NSDictionary *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v18 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)loadFromDictionary:(id)dictionary returningError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  [(ISURLBag *)self _setBagBackendWithDictionary:0];
  guidPatterns = self->_guidPatterns;
  self->_guidPatterns = 0;

  guidSchemes = self->_guidSchemes;
  self->_guidSchemes = 0;

  headerPatterns = self->_headerPatterns;
  self->_headerPatterns = 0;

  v10 = [dictionaryCopy objectForKey:@"bag"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [MEMORY[0x277CCAC58] propertyListWithData:v10 options:0 format:0 error:0];

    v10 = v11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [dictionaryCopy objectForKey:@"urlBag"];

    v10 = v12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = dictionaryCopy;

    v10 = v13;
  }

  [(ISURLBag *)self _setBagBackendWithDictionary:v10];
  uRLBagDictionary = [(ISURLBag *)self URLBagDictionary];

  if (uRLBagDictionary)
  {
    if ([(ISURLBag *)self versionIdentifier]> 370303295)
    {
      _copyGUIDPatternsFromBagBackend = [(ISURLBag *)self _copyGUIDPatternsFromBagBackend];
      v26 = self->_guidPatterns;
      self->_guidPatterns = _copyGUIDPatternsFromBagBackend;

      _copyGUIDSchemesFromBagBackend = [(ISURLBag *)self _copyGUIDSchemesFromBagBackend];
      v28 = self->_guidSchemes;
      self->_guidSchemes = _copyGUIDSchemesFromBagBackend;

      _copyHeaderPatternsFromBagBackend = [(ISURLBag *)self _copyHeaderPatternsFromBagBackend];
      v30 = self->_headerPatterns;
      self->_headerPatterns = _copyHeaderPatternsFromBagBackend;

      [(ISURLBag *)self _writeNetworkConstraintsCacheFile];
      if (SSIsDaemon())
      {
        [(ISURLBag *)self _writeURLResolutionCacheFile];
        [(ISURLBag *)self _toggleStopSendingLocalCookies];
      }

      v22 = 1;
      if (error)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v17 = shouldLog | 2;
    }

    else
    {
      v17 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v19 = objc_opt_class();
      v20 = v19;
      v32 = 138412546;
      v33 = v19;
      v34 = 2048;
      versionIdentifier = [(ISURLBag *)self versionIdentifier];
      LODWORD(v31) = 22;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_20:

        goto LABEL_21;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:{4, &v32, v31}];
      free(v21);
      SSFileLog();
    }

    goto LABEL_20;
  }

LABEL_21:
  v22 = 0;
  if (error)
  {
LABEL_22:
    *error = 0;
  }

LABEL_23:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)_toggleStopSendingLocalCookies
{
  v28 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedDaemonConfig];
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
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    *v25 = 138543362;
    *&v25[4] = objc_opt_class();
    v7 = *&v25[4];
    LODWORD(v24) = 12;
    v23 = v25;
    v8 = _os_log_send_and_compose_impl();

    if (!v8)
    {
      goto LABEL_12;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{4, v25, v24, *v25}];
    free(v8);
    v23 = oSLogObject;
    SSFileLog();
  }

LABEL_12:
  v9 = [(ISURLBag *)self valueForKey:@"stop-including-local-cookies"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedDaemonConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v13 = shouldLog2 | 2;
  }

  else
  {
    v13 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v13 &= 2u;
  }

  if (v13)
  {
    v15 = objc_opt_class();
    v16 = MEMORY[0x277CCABB0];
    v17 = v15;
    v18 = [v16 numberWithBool:bOOLValue];
    *v25 = 138543874;
    *&v25[4] = v15;
    *&v25[12] = 2114;
    *&v25[14] = v18;
    v26 = 2114;
    v27 = v9;
    LODWORD(v24) = 32;
    v19 = _os_log_send_and_compose_impl();

    if (!v19)
    {
      goto LABEL_26;
    }

    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, v25, v24}];
    free(v19);
    SSFileLog();
  }

LABEL_26:
  v20 = MEMORY[0x277CBED28];
  if (!bOOLValue)
  {
    v20 = MEMORY[0x277CBED10];
  }

  v21 = *MEMORY[0x277D6A708];
  CFPreferencesSetAppValue(@"stopIncludingLocalCookies", *v20, *MEMORY[0x277D6A708]);
  CFPreferencesAppSynchronize(v21);

  v22 = *MEMORY[0x277D85DE8];
}

+ (void)_loadItemKindURLBagKeyMap
{
  if (_loadItemKindURLBagKeyMap_sOnce != -1)
  {
    +[ISURLBag _loadItemKindURLBagKeyMap];
  }
}

uint64_t __37__ISURLBag__loadItemKindURLBagKeyMap__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEA60]);
  v1 = *MEMORY[0x277D6A1E8];
  v2 = *MEMORY[0x277D6A240];
  v3 = *MEMORY[0x277D6A250];
  v4 = *MEMORY[0x277D6A260];
  v5 = [v0 initWithObjects:{*MEMORY[0x277D6A1E0], *MEMORY[0x277D6A1E8], *MEMORY[0x277D6A1F0], *MEMORY[0x277D6A1F8], *MEMORY[0x277D6A208], *MEMORY[0x277D6A210], *MEMORY[0x277D6A218], *MEMORY[0x277D6A220], *MEMORY[0x277D6A228], *MEMORY[0x277D6A230], *MEMORY[0x277D6A238], *MEMORY[0x277D6A240], *MEMORY[0x277D6A248], *MEMORY[0x277D6A250], *MEMORY[0x277D6A258], *MEMORY[0x277D6A260], *MEMORY[0x277D6A278], *MEMORY[0x277D6A268], *MEMORY[0x277D6A270], *MEMORY[0x277D6A280], 0}];
  v6 = __ItemKinds;
  __ItemKinds = v5;

  __URLBagKeys = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"viewArtist", @"audiobooks", @"podcasts", @"itunes-u", @"music", @"movies", @"music-videos", @"newsstand", @"podcasts", @"podcasts", @"podcasts", @"ringtones", @"apps", @"apps", @"music", @"ringtones", @"tv-shows", @"tv-shows", @"music", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)storeFrontURLBagKeyForItemKind:(id)kind
{
  kindCopy = kind;
  [objc_opt_class() _loadItemKindURLBagKeyMap];
  v4 = [__ItemKinds count];
  if (v4 < 1)
  {
LABEL_5:
    v9 = 0;
  }

  else
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = [__ItemKinds objectAtIndex:v6];
      v8 = [kindCopy isEqualToString:v7];

      if (v8)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }

    v9 = [__URLBagKeys objectAtIndex:v6];
  }

  return v9;
}

- (NSSet)availableStorefrontItemKinds
{
  v3 = [MEMORY[0x277CBEB58] set];
  [objc_opt_class() _loadItemKindURLBagKeyMap];
  v4 = [__URLBagKeys count];
  if (v4 >= 1)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [__URLBagKeys objectAtIndex:i];
      v8 = [(ISURLBag *)self urlForKey:v7];

      if (v8)
      {
        v9 = [__ItemKinds objectAtIndex:i];
        [v3 addObject:v9];
      }
    }
  }

  v10 = [(ISURLBag *)self networkConstraintsForDownloadKind:*MEMORY[0x277D69EA8]];
  if ([v10 isAnyNetworkTypeEnabled])
  {
    [v3 addObject:*MEMORY[0x277D6A200]];
  }

  return v3;
}

- (BOOL)isValid
{
  [(ISURLBag *)self invalidationTime];
  v4 = v3;
  versionIdentifier = [(ISURLBag *)self versionIdentifier];
  if (v4 <= -1.79769313e308)
  {
    return 0;
  }

  v6 = versionIdentifier;
  return CFAbsoluteTimeGetCurrent() < v4 && v6 > 370303295;
}

- (id)networkConstraintsForDownloadKind:(id)kind
{
  v4 = MEMORY[0x277D69BD8];
  bagBackend = self->_bagBackend;
  bagBackendKey = self->_bagBackendKey;
  kindCopy = kind;
  v8 = [(ISURLBagBackend *)bagBackend dictionaryRepresentationForBagWithKey:bagBackendKey];
  v9 = [v4 newNetworkConstraintsByDownloadKindFromURLBag:v8];

  v10 = [v9 objectForKey:kindCopy];

  if (!v10)
  {
    defaultConstraints = self->_defaultConstraints;
    if (defaultConstraints)
    {
      v12 = [(SSNetworkConstraints *)defaultConstraints copy];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277D69BD8]);
    }

    v10 = v12;
  }

  return v10;
}

- (id)searchQueryParametersForClientIdentifier:(id)identifier networkType:(int64_t)type
{
  identifierCopy = identifier;
  v7 = [(ISURLBagBackend *)self->_bagBackend valueForKey:@"p2-search-parameters" forBagWithKey:self->_bagBackendKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 objectForKey:identifierCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = __GetDictionaryValueForNetworkType(v8, type);
    }

    else
    {
      v9 = 0;
    }

    v10 = v7;
    goto LABEL_19;
  }

  v10 = [(ISURLBag *)self valueForKey:@"mobile-connection-type-allows"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_20;
  }

  v8 = __GetDictionaryValueForNetworkType(v10, type);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  if ([identifierCopy isEqualToString:@"eBooks"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"Books"))
  {
    v11 = @"eBook-search-parameters";
    goto LABEL_9;
  }

  if (![identifierCopy isEqualToString:@"WiFi-Music"])
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v12 = [v8 objectForKey:@"p2-store-ns-search-parameters"];
  if (v12)
  {
    goto LABEL_10;
  }

  v12 = [v8 objectForKey:@"p2-store-search-parameters"];
  if (v12)
  {
    goto LABEL_10;
  }

  v11 = @"p2-music-search-parameters";
LABEL_9:
  v12 = [v8 objectForKey:v11];
LABEL_10:
  v9 = v12;
LABEL_19:

LABEL_20:

  return v9;
}

- (void)setInvalidationTime:(double)time
{
  if (self->_invalidationTime != time)
  {
    self->_invalidationTime = time;
  }
}

- (void)setInvalidationTimeWithExprationInterval:(double)interval
{
  v4 = fmax(interval, 60.0) + CFAbsoluteTimeGetCurrent();

  [(ISURLBag *)self setInvalidationTime:v4];
}

- (BOOL)shouldSendAnonymousMachineIdentifierForURL:(id)l
{
  lCopy = l;
  v5 = [(ISURLBag *)self valueForKey:*MEMORY[0x277D6A668]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ShouldSendAMDForURL = SSVURLBagShouldSendAMDForURL();
  }

  else
  {
    ShouldSendAMDForURL = 0;
  }

  return ShouldSendAMDForURL;
}

- (BOOL)shouldSendGUIDForURL:(id)l
{
  v22 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (SSDebugAlwaysSendGUID())
  {
    goto LABEL_2;
  }

  guidSchemes = self->_guidSchemes;
  scheme = [lCopy scheme];
  LODWORD(guidSchemes) = [(NSSet *)guidSchemes containsObject:scheme];

  if (!guidSchemes)
  {
    v5 = 0;
    goto LABEL_17;
  }

  if (![(NSArray *)self->_guidPatterns count])
  {
LABEL_2:
    v5 = 1;
  }

  else
  {
    absoluteString = [lCopy absoluteString];
    v9 = [absoluteString length];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = self->_guidPatterns;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if ([*(*(&v17 + 1) + 8 * i) rangeOfFirstMatchInString:absoluteString options:0 range:{0, v9, v17}] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v5 = 1;
            goto LABEL_16;
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_16:
  }

LABEL_17:

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)urlForKey:(id)key
{
  v3 = [(ISURLBag *)self valueForKey:key];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)urlIsTrusted:(id)trusted
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACE0] componentsWithURL:trusted resolvingAgainstBaseURL:0];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_19;
  }

  scheme = [v4 scheme];
  v7 = [scheme isEqualToString:@"data"];

  if (v7)
  {
    v8 = 1;
    goto LABEL_22;
  }

  host = [v5 host];
  if (!host)
  {
LABEL_19:
    v8 = 0;
    goto LABEL_22;
  }

  v10 = host;
  [(ISURLBag *)self valueForKey:@"trustedDomains"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v22 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 length])
        {
          if ([v16 hasPrefix:@"."])
          {
            if ([v10 hasSuffix:v16])
            {
              goto LABEL_20;
            }
          }

          else if (![v10 caseInsensitiveCompare:v16])
          {
LABEL_20:
            v8 = 1;
            goto LABEL_21;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_21:

LABEL_22:
  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)URLForURL:(id)l clientIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  v8 = [(ISURLBag *)self valueForKey:@"p2-client-url-schemes"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    scheme = [lCopy scheme];
    v13 = [scheme isEqualToString:@"https"];

    if ([identifierCopy isEqualToString:@"Software"])
    {
      v14 = @"itms-apps";
      v15 = @"itms-appss";
    }

    else if ([identifierCopy isEqualToString:@"MusicPlayer"])
    {
      v14 = @"its-music";
      v15 = @"its-musics";
    }

    else if ([identifierCopy isEqualToString:@"VideoPlayer"])
    {
      v14 = @"its-videos";
      v15 = @"its-videoss";
    }

    else if (([identifierCopy isEqualToString:@"eBooks"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"Books"))
    {
      v14 = @"itms-books";
      v15 = @"itms-bookss";
    }

    else if ([identifierCopy isEqualToString:@"GameCenter"])
    {
      v14 = @"itms-gc";
      v15 = @"itms-gcs";
    }

    else if ([identifierCopy isEqualToString:@"iTunesU"])
    {
      v14 = @"itms-itunesu";
      v15 = @"itms-itunesus";
    }

    else
    {
      if (![identifierCopy isEqualToString:@"Podcasts"])
      {
        v18 = [identifierCopy isEqualToString:@"Newsstand"];
        v14 = @"itms";
        if (v13)
        {
          v14 = @"itmss";
        }

        v19 = @"itms-newss";
        if (!v13)
        {
          v19 = @"itms-news";
        }

        if (v18)
        {
          v14 = v19;
        }

        goto LABEL_16;
      }

      v14 = @"itms-podcasts";
      v15 = @"itms-podcastss";
    }

    if (v13)
    {
      v14 = v15;
    }

LABEL_16:
    v11 = v14;
    goto LABEL_17;
  }

  v9 = [v8 objectForKey:identifierCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  scheme2 = [lCopy scheme];
  v11 = [v9 objectForKey:scheme2];

  if (v11)
  {
LABEL_17:
    v16 = [lCopy urlByReplacingSchemeWithScheme:v11];

    v9 = v11;
    lCopy = v16;
    goto LABEL_18;
  }

LABEL_19:

  return lCopy;
}

- (id)sanitizedURLForURL:(id)l
{
  lCopy = l;
  v5 = [(ISURLBag *)self valueForKey:@"externalURLReplaceKey"];
  v6 = [(ISURLBag *)self valueForKey:@"externalURLSearchKey"];
  v7 = v6;
  v8 = lCopy;
  if (lCopy)
  {
    v8 = lCopy;
    if (v5)
    {
      v8 = lCopy;
      if (v6)
      {
        v9 = objc_alloc(MEMORY[0x277CCAB68]);
        absoluteString = [lCopy absoluteString];
        v11 = [v9 initWithString:absoluteString];

        v12 = [v11 rangeOfString:v7];
        v8 = lCopy;
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v11 replaceCharactersInRange:v12 withString:{v13, v5}];
          v8 = [MEMORY[0x277CBEBC0] URLWithString:v11];
        }
      }
    }
  }

  return v8;
}

- (void)setURLBagContext:(id)context
{
  if (self->_context != context)
  {
    v5 = [context copy];
    context = self->_context;
    self->_context = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (SSURLBagContext)URLBagContext
{
  v2 = [(SSURLBagContext *)self->_context copy];

  return v2;
}

- (int64_t)versionIdentifier
{
  v2 = [(ISURLBag *)self valueForKey:@"timestamp"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 timeIntervalSinceReferenceDate];
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)writeToFile:(id)file options:(unint64_t)options error:(id *)error
{
  fileCopy = file;
  v9 = MEMORY[0x277CCAC58];
  uRLBagDictionary = [(ISURLBag *)self URLBagDictionary];
  v18 = 0;
  v11 = [v9 dataWithPropertyList:uRLBagDictionary format:200 options:0 error:&v18];
  v12 = v18;

  if (v11)
  {
    v17 = v12;
    v13 = [v11 writeToFile:fileCopy options:options error:&v17];
    v14 = v17;

    v12 = v14;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if ((v13 & 1) == 0)
  {
    v15 = v12;
    *error = v12;
  }

LABEL_7:

  return v13;
}

+ (id)copyExtraHeadersForURL:(id)l inBagContext:(id)context
{
  contextCopy = context;
  lCopy = l;
  v7 = +[ISURLBagCache sharedCache];
  v8 = [v7 URLBagForContext:contextCopy];

  v9 = [v8 copyExtraHeadersForURL:lCopy];
  return v9;
}

+ (id)networkConstraintsForDownloadKind:(id)kind inBagContext:(id)context
{
  contextCopy = context;
  kindCopy = kind;
  v7 = +[ISURLBagCache sharedCache];
  v8 = [v7 URLBagForContext:contextCopy];

  v9 = [v8 networkConstraintsForDownloadKind:kindCopy];

  return v9;
}

+ (BOOL)shouldSendGUIDForURL:(id)l inBagContext:(id)context
{
  contextCopy = context;
  lCopy = l;
  v7 = +[ISURLBagCache sharedCache];
  v8 = [v7 URLBagForContext:contextCopy];

  LOBYTE(v7) = [v8 shouldSendGUIDForURL:lCopy];
  return v7;
}

+ (id)urlBagForContext:(id)context
{
  contextCopy = context;
  v4 = +[ISURLBagCache sharedCache];
  v5 = [v4 URLBagForContext:contextCopy];

  return v5;
}

+ (id)urlForKey:(id)key inBagContext:(id)context
{
  contextCopy = context;
  keyCopy = key;
  v7 = +[ISURLBagCache sharedCache];
  v8 = [v7 URLBagForContext:contextCopy];

  v9 = [v8 urlForKey:keyCopy];

  return v9;
}

+ (BOOL)urlIsTrusted:(id)trusted inBagContext:(id)context
{
  contextCopy = context;
  trustedCopy = trusted;
  v7 = +[ISURLBagCache sharedCache];
  v8 = [v7 URLBagForContext:contextCopy];

  LOBYTE(v7) = [v8 urlIsTrusted:trustedCopy];
  return v7;
}

+ (id)valueForKey:(id)key inBagContext:(id)context
{
  contextCopy = context;
  keyCopy = key;
  v7 = +[ISURLBagCache sharedCache];
  v8 = [v7 URLBagForContext:contextCopy];

  v9 = [v8 valueForKey:keyCopy];

  return v9;
}

- (id)_copyGUIDPatternsFromBagBackend
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(ISURLBag *)self valueForKey:@"guid-urls"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKey:@"regex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v17;
        do
        {
          v10 = 0;
          do
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v16 + 1) + 8 * v10);
            v12 = objc_alloc(MEMORY[0x277CCAC68]);
            v13 = [v12 initWithPattern:v11 options:1 error:{0, v16}];
            if (v13)
            {
              [v3 addObject:v13];
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"/WebObjects/MZ(Buy|Finance|FastFinance)[.]woa/" options:1 error:0];
    if (v5)
    {
      [v3 addObject:v5];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)_copyGUIDSchemesFromBagBackend
{
  v2 = [(ISURLBag *)self valueForKey:@"guid-urls"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"schemes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEA60]);
    }

    v5 = v4;

    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"https", 0}];
    if (!v5)
    {
LABEL_8:
      v6 = 0;
      goto LABEL_9;
    }
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v5];
LABEL_9:

  return v6;
}

- (id)_copyHeaderPatternsFromBagBackend
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(ISURLBag *)self valueForKey:@"send-content-restrictions-header"];
  if ([v4 count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          v12 = objc_alloc(MEMORY[0x277CCAC68]);
          v13 = [v12 initWithPattern:v11 options:1 error:{0, v16}];
          if (v13)
          {
            [v5 addObject:v13];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      [v3 setObject:v5 forKey:@"X-Apple-Restrictions"];
    }
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)_networkConstraintsCachePath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{lastObject, @"com.apple.iTunesStore", @"network-constraints.plist", 0}];
  v5 = [MEMORY[0x277CCACA8] pathWithComponents:v4];

  return v5;
}

- (void)_preprocessURLResolutionCacheDictionary:(id)dictionary
{
  v38 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  [dictionaryCopy objectForKey:@"p2-url-resolution"];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = v35 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v37 count:16];
  obj = v3;
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 objectForKey:@"p2-url-section-name"];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && (([v9 isEqualToString:@"AppleMusicSubscriber"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"AppleMusicUndecided") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"AppleMusicDisabled")))
          {

            v11 = @"AppleMusicSubscriber";
            v10 = @"AppleMusicUndecided";
            v12 = @"AppleMusicDisabled";
            v3 = obj;
            goto LABEL_17;
          }
        }
      }

      v3 = obj;
      v5 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    v10 = @"Music";
    v11 = @"Music";
    v12 = @"MusicNS";
  }

  else
  {
    v10 = @"Music";
    v12 = @"MusicNS";
    v11 = @"Music";
  }

LABEL_17:

  v13 = [MEMORY[0x277CBEB58] setWithObjects:{v11, v10, v12, 0}];
  if (CFPreferencesGetAppBooleanValue(@"UserRequestedSubscriptionHidden", @"com.apple.mobileipod", 0))
  {
    [v13 removeObject:v12];
  }

  else
  {
    mEMORY[0x277D69D18] = [MEMORY[0x277D69D18] sharedCoordinator];
    lastKnownStatus = [mEMORY[0x277D69D18] lastKnownStatus];

    if ([lastKnownStatus accountStatus] != 3 && objc_msgSend(lastKnownStatus, "accountStatus") != 4)
    {
      v11 = v10;
    }

    [v13 removeObject:v11];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = [v3 mutableCopy];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v3;
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v28 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = [v21 objectForKey:@"p2-url-section-name"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 containsObject:v22])
            {
              [v27 removeObject:v21];
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v18);
    }

    v23 = [v27 count];
    if (v23 != [v16 count])
    {
      [dictionaryCopy setObject:v27 forKey:@"p2-url-resolution"];
    }

    v3 = obj;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_setBagBackendWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277D69C08]) initWithDictionary:dictionaryCopy];
    bagBackend = self->_bagBackend;
    dictionaryByEvaluatingConditions = [v4 dictionaryByEvaluatingConditions];
    [(ISURLBagBackend *)bagBackend addBagValues:dictionaryByEvaluatingConditions forBagWithKey:self->_bagBackendKey];
  }

  else
  {
    [(ISURLBagBackend *)self->_bagBackend removeBagValuesForBagWithKey:self->_bagBackendKey];
  }
}

- (void)_writeNetworkConstraintsCacheFile
{
  v20 = *MEMORY[0x277D85DE8];
  _networkConstraintsCachePath = [(ISURLBag *)self _networkConstraintsCachePath];
  if (_networkConstraintsCachePath)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v5 = [(ISURLBag *)self valueForKey:@"mobile-connection-type-allows"];
    if (![v5 count])
    {
      [v4 removeItemAtPath:_networkConstraintsCachePath error:0];
      goto LABEL_19;
    }

    v6 = [v4 attributesOfItemAtPath:_networkConstraintsCachePath error:0];
    v7 = [v6 objectForKey:*MEMORY[0x277CCA150]];

    if (v7)
    {
      [v7 timeIntervalSinceNow];
      if (v8 >= -86400.0)
      {
LABEL_17:

LABEL_19:
        goto LABEL_20;
      }
    }

    v9 = [MEMORY[0x277CCAC58] dataWithPropertyList:v5 format:200 options:0 error:0];
    stringByDeletingLastPathComponent = [_networkConstraintsCachePath stringByDeletingLastPathComponent];
    [v4 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

    [v9 writeToFile:_networkConstraintsCachePath options:0 error:0];
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
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      *v19 = 138412546;
      *&v19[4] = objc_opt_class();
      *&v19[12] = 2112;
      *&v19[14] = _networkConstraintsCachePath;
      v15 = *&v19[4];
      LODWORD(v18) = 22;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_16:

        goto LABEL_17;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:{4, v19, v18, *v19, *&v19[16]}];
      free(v16);
      SSFileLog();
    }

    goto LABEL_16;
  }

LABEL_20:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_writeURLResolutionCacheFile
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  for (i = 0; i != 11; ++i)
  {
    v5 = kURLResolutionKeys[i];
    v6 = [(ISURLBag *)self valueForKey:v5];
    if (v6)
    {
      [v3 setObject:v6 forKey:v5];
    }
  }

  [(ISURLBag *)self _preprocessURLResolutionCacheDictionary:v3];
  v7 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Caches/com.apple.itunesstored/url-resolution.plist"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (![v3 count])
  {
    if (([defaultManager removeItemAtPath:v7 error:0] & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v9 = [defaultManager attributesOfItemAtPath:v7 error:0];
  v10 = [v9 objectForKey:*MEMORY[0x277CCA150]];

  if (v10 && ([v10 timeIntervalSinceNow], v11 >= -60.0) || (v12 = MEMORY[0x277CCAA00], objc_msgSend(v7, "stringByDeletingLastPathComponent"), v13 = objc_claimAutoreleasedReturnValue(), LODWORD(v12) = objc_msgSend(v12, "ensureDirectoryExists:", v13), v13, !v12))
  {

    goto LABEL_23;
  }

  v14 = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:200 options:0 error:0];
  HIDWORD(v25) = [v14 writeToFile:v7 options:0 error:0];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v17 = shouldLog | 2;
  }

  else
  {
    v17 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v19 = v17;
  }

  else
  {
    v19 = v17 & 2;
  }

  if (v19)
  {
    LODWORD(v26) = 138412290;
    *(&v26 + 4) = objc_opt_class();
    v20 = *(&v26 + 4);
    LODWORD(v25) = 12;
    v21 = _os_log_send_and_compose_impl();

    if (v21)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:{4, &v26, v25, v26}];
      free(v21);
      SSFileLog();
    }
  }

  else
  {
  }

  if (HIDWORD(v25))
  {
LABEL_22:
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.itunesstored.changed-url-resolution", 0, 0, 1u);
  }

LABEL_23:

  v24 = *MEMORY[0x277D85DE8];
}

@end