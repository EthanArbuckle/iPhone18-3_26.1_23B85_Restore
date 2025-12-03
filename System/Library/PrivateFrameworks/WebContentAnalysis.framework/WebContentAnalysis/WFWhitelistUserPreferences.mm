@interface WFWhitelistUserPreferences
+ (BOOL)_isURLMetasite:(id)metasite;
+ (id)_arrayByConvertingLinesInStringsAtPath:(id)path;
+ (id)_cachedWhitelistForPath:(id)path username:(id)username;
+ (id)_metasiteDomainNamesArray;
+ (id)_modificationDateForFileAtPath:(id)path;
+ (id)_sharedMetasiteDomainNamesDictionary;
+ (id)_sharedMetasiteExceptionsDomainNamesArray;
+ (id)defaultWhitelistForUser:(id)user;
+ (id)metasitesExceptionPath;
+ (id)metasitesPath;
+ (id)preferencesPathForUsername:(id)username;
+ (id)whitelistForUser:(id)user;
+ (id)whitelistWithPreferences:(id)preferences;
+ (void)_metasiteDomainNamesArray;
- (BOOL)isURL:(id)l onList:(id)list;
- (BOOL)isURLAllowed:(id)allowed reason:(id *)reason shouldFilter:(BOOL *)filter foundOnList:(BOOL *)list;
- (WFWhitelistUserPreferences)init;
- (WFWhitelistUserPreferences)initWithPreferences:(id)preferences;
- (id)pronounceOnPageURLString:(id)string shouldFilter:(BOOL *)filter;
- (void)dealloc;
@end

@implementation WFWhitelistUserPreferences

+ (id)preferencesPathForUsername:(id)username
{
  if (username)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"/Library/Managed Preferences/%@/com.apple.familycontrols.contentfilter.plist", username];
  }

  else
  {
    return 0;
  }
}

+ (id)metasitesPath
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return [v2 pathForResource:@"metasites" ofType:@"txt"];
}

+ (id)metasitesExceptionPath
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return [v2 pathForResource:@"metasites_exceptions" ofType:@"txt"];
}

+ (id)_arrayByConvertingLinesInStringsAtPath:(id)path
{
  v20 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:path encoding:4 error:0];
  if (v5)
  {
    v6 = [v5 componentsSeparatedByString:@"\n"];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v11 length] && (objc_msgSend(v11, "hasPrefix:", @"#") & 1) == 0)
          {
            [array addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    result = [MEMORY[0x277CBEA60] arrayWithArray:array];
  }

  else
  {
    v13 = __WFDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[WFWhitelistUserPreferences _arrayByConvertingLinesInStringsAtPath:];
    }

    result = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)_metasiteDomainNamesArray
{
  v2 = [self _arrayByConvertingLinesInStringsAtPath:{objc_msgSend(objc_opt_class(), "metasitesPath")}];
  if (!v2)
  {
    v3 = __WFDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[WFWhitelistUserPreferences _metasiteDomainNamesArray];
    }
  }

  return v2;
}

+ (id)_sharedMetasiteExceptionsDomainNamesArray
{
  if (!_sharedMetasiteExceptionsDomainNamesArray_result)
  {
    _sharedMetasiteExceptionsDomainNamesArray_result = [self _arrayByConvertingLinesInStringsAtPath:{objc_msgSend(objc_opt_class(), "metasitesExceptionPath")}];
    v2 = _sharedMetasiteExceptionsDomainNamesArray_result;
    if (!_sharedMetasiteExceptionsDomainNamesArray_result)
    {
      v3 = __WFDefaultLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        +[WFWhitelistUserPreferences _metasiteDomainNamesArray];
      }
    }
  }

  return _sharedMetasiteExceptionsDomainNamesArray_result;
}

+ (id)_sharedMetasiteDomainNamesDictionary
{
  result = _sharedMetasiteDomainNamesDictionary_result;
  if (!_sharedMetasiteDomainNamesDictionary_result)
  {
    _metasiteDomainNamesArray = [self _metasiteDomainNamesArray];
    _sharedMetasiteDomainNamesDictionary_result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:_metasiteDomainNamesArray forKeys:_metasiteDomainNamesArray];
    v5 = _sharedMetasiteDomainNamesDictionary_result;
    return _sharedMetasiteDomainNamesDictionary_result;
  }

  return result;
}

+ (BOOL)_isURLMetasite:(id)metasite
{
  v23 = *MEMORY[0x277D85DE8];
  _sharedMetasiteDomainNamesDictionary = [objc_opt_class() _sharedMetasiteDomainNamesDictionary];
  host = [metasite host];
  if (host)
  {
    host = [_sharedMetasiteDomainNamesDictionary objectForKey:host];
    if (host)
    {
      _sharedMetasiteExceptionsDomainNamesArray = [self _sharedMetasiteExceptionsDomainNamesArray];
      host2 = [metasite host];
      v9 = [host2 length];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = [_sharedMetasiteExceptionsDomainNamesArray countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(_sharedMetasiteExceptionsDomainNamesArray);
            }

            v14 = *(*(&v18 + 1) + 8 * i);
            v15 = [v14 length];
            if (v15 - 1 < v9 && ([objc_msgSend(host2 substringFromIndex:{v9 - v15), "isEqualToString:", v14}] & 1) != 0)
            {
              LOBYTE(host) = 0;
              goto LABEL_15;
            }
          }

          v11 = [_sharedMetasiteExceptionsDomainNamesArray countByEnumeratingWithState:&v18 objects:v22 count:16];
          LOBYTE(host) = 1;
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        LOBYTE(host) = 1;
      }
    }
  }

LABEL_15:
  v16 = *MEMORY[0x277D85DE8];
  return host;
}

+ (id)whitelistWithPreferences:(id)preferences
{
  v3 = [objc_alloc(objc_opt_class()) initWithPreferences:preferences];

  return v3;
}

+ (id)whitelistForUser:(id)user
{
  if (user)
  {
    v4 = [self preferencesPathForUsername:?];

    return [self whitelistWithPreferences:v4];
  }

  else
  {
    v6 = __WFDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[WFWhitelistUserPreferences whitelistForUser:];
    }

    return 0;
  }
}

+ (id)_modificationDateForFileAtPath:(id)path
{
  v3 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  if (!v3)
  {
    v4 = __WFDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[WFWhitelistUserPreferences _modificationDateForFileAtPath:];
    }
  }

  return [v3 objectForKey:*MEMORY[0x277CCA150]];
}

+ (id)_cachedWhitelistForPath:(id)path username:(id)username
{
  v7 = [self _modificationDateForFileAtPath:?];
  if (_cachedWhitelistForPath_username__static_sharedCache)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionaryWithDictionary:?];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v9 = dictionary;
  v10 = [dictionary objectForKey:username];
  if (!v10 || (v11 = v10, ![objc_msgSend(v10 objectForKey:{@"date", "isEqualToDate:", v7}]) || (v12 = objc_msgSend(v11, "objectForKey:", @"whitelist")) == 0)
  {
    v12 = [self whitelistWithPreferences:path];
    [v12 setUsername:username];
    [v9 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKey:{"dictionaryWithObjectsAndKeys:", v7, @"date", v12, @"whitelist", 0), username}];
    v13 = _cachedWhitelistForPath_username__static_sharedCache;
    _cachedWhitelistForPath_username__static_sharedCache = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v9];
  }

  return v12;
}

+ (id)defaultWhitelistForUser:(id)user
{
  if (!user)
  {
    v8 = __WFDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[WFWhitelistUserPreferences whitelistForUser:];
    }

    return 0;
  }

  v5 = [objc_opt_class() preferencesPathForUsername:user];
  if (!v5)
  {
    v9 = __WFDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[WFWhitelistUserPreferences defaultWhitelistForUser:];
    }

    return 0;
  }

  v6 = v5;
  v12 = 0;
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) != 0 || (v12)
  {
    return [self _cachedWhitelistForPath:v6 username:user];
  }

  v11 = __WFDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    +[WFWhitelistUserPreferences defaultWhitelistForUser:];
  }

  objc_opt_class();
  v7 = objc_opt_new();
  [v7 setUsername:user];
  return v7;
}

- (WFWhitelistUserPreferences)init
{
  v4.receiver = self;
  v4.super_class = WFWhitelistUserPreferences;
  v2 = [(WFWhitelistUserPreferences *)&v4 init];
  if (v2)
  {
    v2->filterWhitelist = objc_alloc_init(WFWhitelistSiteBuffer);
    v2->filterBlacklist = objc_alloc_init(WFWhitelistSiteBuffer);
    v2->webWhitelist = objc_alloc_init(WFWhitelistSiteBuffer);
    [(WFWhitelistSiteBuffer *)v2->filterWhitelist addURLString:@"https://setup.icloud.com"];
    [(WFWhitelistSiteBuffer *)v2->webWhitelist addURLString:@"https://setup.icloud.com"];
  }

  return v2;
}

- (WFWhitelistUserPreferences)initWithPreferences:(id)preferences
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = [(WFWhitelistUserPreferences *)self init];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:preferences];
    if (v4)
    {
      v5 = v4;
      v3->filterEnabled = [objc_msgSend(v4 valueForKey:{@"useContentFilter", "BOOLValue"}];
      v3->whitelistEnabled = [objc_msgSend(v5 valueForKey:{@"whitelistEnabled", "BOOLValue"}];
      v3->alwaysAllowHTTPS = [objc_msgSend(v5 valueForKey:{@"alwaysAllowHTTPS", "BOOLValue"}];
      v6 = [v5 valueForKey:@"filterWhitelist"];
      if (v6)
      {
        v7 = v6;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v8 = [v6 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v39;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v39 != v10)
              {
                objc_enumerationMutation(v7);
              }

              [(WFWhitelistSiteBuffer *)v3->filterWhitelist addURLString:*(*(&v38 + 1) + 8 * i)];
            }

            v9 = [v7 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v9);
        }
      }

      v12 = [v5 valueForKey:@"filterBlacklist"];
      if (v12)
      {
        v13 = v12;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v14 = [v12 countByEnumeratingWithState:&v34 objects:v45 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v35;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v35 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [(WFWhitelistSiteBuffer *)v3->filterBlacklist addURLString:*(*(&v34 + 1) + 8 * j)];
            }

            v15 = [v13 countByEnumeratingWithState:&v34 objects:v45 count:16];
          }

          while (v15);
        }
      }

      v18 = [v5 valueForKey:@"siteWhitelist"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v19 = [v18 countByEnumeratingWithState:&v30 objects:v44 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v31;
          do
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v31 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v30 + 1) + 8 * k);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v24 = [v23 objectForKey:@"address"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && v24)
                {
                  [(WFWhitelistSiteBuffer *)v3->webWhitelist addURLString:v24];
                }
              }

              else
              {
                v25 = __WFDefaultLog();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  preferencesCopy = preferences;
                  _os_log_error_impl(&dword_272D73000, v25, OS_LOG_TYPE_ERROR, "**** ERROR: siteWhitelist is malformed in %@", buf, 0xCu);
                }
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v30 objects:v44 count:16];
          }

          while (v20);
        }
      }

      else
      {
        v26 = __WFDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [WFWhitelistUserPreferences initWithPreferences:];
        }
      }
    }

    else
    {
      NSLog(&cfstr_DidnTFindPrefs.isa);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WFWhitelistUserPreferences;
  [(WFWhitelistUserPreferences *)&v3 dealloc];
}

- (BOOL)isURLAllowed:(id)allowed reason:(id *)reason shouldFilter:(BOOL *)filter foundOnList:(BOOL *)list
{
  username = [(WFWhitelistUserPreferences *)self username];
  if (reason)
  {
    v12 = @"User (null)";
    if (username)
    {
      v12 = username;
    }

    *reason = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ has no web restrictions", v12];
  }

  if (self->whitelistEnabled)
  {
    v13 = __WFDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_272D73000, v13, OS_LOG_TYPE_INFO, "Checking whitelist", buf, 2u);
    }

    v14 = [(WFWhitelistUserPreferences *)self isURL:allowed onList:self->webWhitelist];
    v15 = __WFDefaultLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (!v14)
    {
      if (v16)
      {
        *v25 = 0;
        _os_log_impl(&dword_272D73000, v15, OS_LOG_TYPE_INFO, "URL is not on whitelist", v25, 2u);
      }

      result = 0;
      if (!reason)
      {
        LOBYTE(v20) = 0;
        if (!filter)
        {
          goto LABEL_40;
        }

        goto LABEL_35;
      }

      v18 = @"URL is not on global white list";
      LOBYTE(v20) = 0;
      goto LABEL_33;
    }

    if (v16)
    {
      *v26 = 0;
      _os_log_impl(&dword_272D73000, v15, OS_LOG_TYPE_INFO, "URL is on whitelist", v26, 2u);
    }

    result = 1;
    if (reason)
    {
      v18 = @"URL is on global white list";
LABEL_19:
      LOBYTE(v20) = 1;
LABEL_33:
      *reason = v18;
      goto LABEL_34;
    }

    goto LABEL_26;
  }

  if (!self->filterEnabled)
  {
    LOBYTE(v20) = 0;
    result = 1;
    if (!filter)
    {
      goto LABEL_40;
    }

    goto LABEL_35;
  }

  v19 = __WFDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *v24 = 0;
    _os_log_impl(&dword_272D73000, v19, OS_LOG_TYPE_INFO, "Checking always allow list", v24, 2u);
  }

  if ([(WFWhitelistUserPreferences *)self isURL:allowed onList:self->filterWhitelist])
  {
    result = 1;
    if (reason)
    {
      v18 = @"URL is on filter white list";
      goto LABEL_19;
    }

LABEL_26:
    LOBYTE(v20) = 1;
    if (!filter)
    {
      goto LABEL_40;
    }

    goto LABEL_35;
  }

  v21 = __WFDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *v23 = 0;
    _os_log_impl(&dword_272D73000, v21, OS_LOG_TYPE_INFO, "Checking never allow list", v23, 2u);
  }

  v20 = [(WFWhitelistUserPreferences *)self isURL:allowed onList:self->filterBlacklist];
  result = !v20;
  if (reason && v20)
  {
    result = 0;
    LOBYTE(v20) = 1;
    v18 = @"URL is on filter black list";
    goto LABEL_33;
  }

LABEL_34:
  if (!filter)
  {
    goto LABEL_40;
  }

LABEL_35:
  v22 = (!v20 || !self->filterEnabled) && self->filterEnabled && !self->whitelistEnabled;
  *filter = v22;
LABEL_40:
  if (list)
  {
    *list = v20;
  }

  return result;
}

- (id)pronounceOnPageURLString:(id)string shouldFilter:(BOOL *)filter
{
  v7 = objc_opt_new();
  [v7 setURL:string];
  v8 = [string WF_stringByProperlyFixingPercentEscapesUsingEncoding:4];
  if (!v8 || (v9 = [MEMORY[0x277CBEBC0] URLWithString:v8]) == 0)
  {
    v10 = __WFDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WFWhitelistUserPreferences pronounceOnPageURLString:shouldFilter:];
    }

    v9 = 0;
  }

  v14 = 0;
  v13 = 0;
  [v7 setRestricted:{-[WFWhitelistUserPreferences isURLAllowed:reason:shouldFilter:foundOnList:](self, "isURLAllowed:reason:shouldFilter:foundOnList:", v9, &v14, filter, &v13) ^ 1}];
  if (v13)
  {
    v11 = 8;
  }

  else
  {
    v11 = 9;
  }

  [v7 setEvidence:v11];
  [v7 setMessage:v14];
  return v7;
}

- (BOOL)isURL:(id)l onList:(id)list
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = __WFDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    absoluteString = [l absoluteString];
    _os_log_impl(&dword_272D73000, v6, OS_LOG_TYPE_INFO, "url: %@", &v12, 0xCu);
  }

  if (l)
  {
    v7 = [list containsURLString:{objc_msgSend(objc_msgSend(l, "absoluteString"), "WF_stringByProperlyFixingPercentEscapesUsingEncoding:", 4)}];
  }

  else
  {
    v7 = 0;
  }

  v8 = __WFDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = @"NO";
    if (v7)
    {
      v9 = @"YES";
    }

    v12 = 138412290;
    absoluteString = v9;
    _os_log_impl(&dword_272D73000, v8, OS_LOG_TYPE_INFO, "result = %@", &v12, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (void)_arrayByConvertingLinesInStringsAtPath:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_metasiteDomainNamesArray
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)whitelistForUser:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_modificationDateForFileAtPath:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)defaultWhitelistForUser:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)defaultWhitelistForUser:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithPreferences:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pronounceOnPageURLString:shouldFilter:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end