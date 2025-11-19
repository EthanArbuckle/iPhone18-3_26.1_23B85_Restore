@interface WFUserSettings
+ (id)_arrayByConvertingLinesInStringsAtPath:(id)a3;
+ (id)_metasiteDomainNamesArray;
+ (id)_sharedMetasiteDomainNamesDictionary;
+ (id)_sharedMetasiteExceptionsDomainNamesArray;
+ (id)metasitesExceptionPath;
+ (id)metasitesPath;
- (BOOL)_addManagedDefaults:(id)a3;
- (BOOL)_setManagedDefaults:(id)a3;
- (BOOL)alwaysAllowHTTPS;
- (BOOL)autoWhitelistContainsURL:(id)a3;
- (BOOL)contentFilterEnabled;
- (BOOL)contentFilterListsAllowURL:(id)a3;
- (BOOL)contentFilterOverriddenBlackListContainsURL:(id)a3;
- (BOOL)contentFilterOverriddenList:(id)a3 containsURL:(id)a4;
- (BOOL)contentFilterOverriddenWhiteListContainsURL:(id)a3;
- (BOOL)contentFilterOverriddenWhiteListContainsURL:(id)a3 withAppleAllowList:(id)a4;
- (BOOL)contentFilterOverridesEnabled;
- (BOOL)overridesAllowed;
- (BOOL)restrictWebEnabled;
- (BOOL)whiteListContainsURL:(id)a3;
- (BOOL)whiteListEnabled;
- (NSArray)contentFilterOverriddenBlackListedSites;
- (NSArray)contentFilterOverriddenWhiteListedSites;
- (NSArray)whiteListAllowedSites;
- (WFUserSettings)initWithUserName:(id)a3;
- (id)_userSettingsForUser:(id)a3;
- (id)contentFilterOverriddenBlackListedSitesBuffer;
- (id)contentFilterOverriddenWhiteListedSitesBufferWithAdditionalURLStrings:(id)a3;
- (id)whiteListedSitesBuffer;
- (int64_t)restrictionType;
- (void)dealloc;
- (void)setContentFilterOverriddenBlackListedSites:(id)a3;
- (void)setContentFilterOverriddenWhiteListedSites:(id)a3;
- (void)setOverridesAllowed:(BOOL)a3;
- (void)setRestrictionType:(int64_t)a3;
- (void)setWhiteListAllowedSites:(id)a3;
- (void)whiteListedSitesBuffer;
@end

@implementation WFUserSettings

- (int64_t)restrictionType
{
  result = [(WFUserSettings *)self _userSettingsForUser:[(WFUserSettings *)self userName]];
  if (result)
  {
    v3 = result;
    result = [result objectForKey:@"restrictWeb"];
    if (result)
    {
      if (![result BOOLValue])
      {
        return 0;
      }

      v4 = [v3 objectForKey:@"useContentFilter"];
      v5 = [v3 objectForKey:@"useContentFilterOverrides"];
      v6 = [v3 objectForKey:@"whitelistEnabled"];
      if (v6 && ([v6 BOOLValue] & 1) != 0)
      {
        return 2;
      }

      if (v4)
      {
        if ([v4 BOOLValue] && v5 && (objc_msgSend(v5, "BOOLValue") & 1) != 0)
        {
          return 1;
        }

        if ([v4 BOOLValue])
        {
          return 3;
        }
      }

      if (v5 && ([v5 BOOLValue] & 1) != 0)
      {
        return 4;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (BOOL)_setManagedDefaults:(id)a3
{
  v4 = [(WFUserSettings *)self _managedDefaultsPath];

  return [a3 writeToFile:v4 atomically:1];
}

- (BOOL)_addManagedDefaults:(id)a3
{
  v5 = [objc_msgSend(MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:{-[WFUserSettings _managedDefaultsPath](self, "_managedDefaultsPath")), "mutableCopy"}];
  v6 = v5;
  if (v5)
  {
    [v5 addEntriesFromDictionary:a3];
    a3 = v6;
  }

  v7 = [(WFUserSettings *)self _setManagedDefaults:a3];

  return v7;
}

- (WFUserSettings)initWithUserName:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFUserSettings;
  v4 = [(WFUserSettings *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(WFUserSettings *)v4 setUserName:a3];
  }

  return v5;
}

- (void)dealloc
{
  [(WFUserSettings *)self setUserName:0];
  v3.receiver = self;
  v3.super_class = WFUserSettings;
  [(WFUserSettings *)&v3 dealloc];
}

- (void)setRestrictionType:(int64_t)a3
{
  switch(a3)
  {
    case 2:
      [(WFUserSettings *)self _addManagedDefaults:&unk_2882713E8];
      [(WFUserSettings *)self _addManagedDefaults:&unk_288271410];
      [(WFUserSettings *)self _addManagedDefaults:&unk_288271438];
      v4 = &unk_288271460;
      goto LABEL_7;
    case 1:
      [(WFUserSettings *)self _addManagedDefaults:&unk_288271348];
      [(WFUserSettings *)self _addManagedDefaults:&unk_288271370];
      [(WFUserSettings *)self _addManagedDefaults:&unk_288271398];
      v4 = &unk_2882713C0;
      goto LABEL_7;
    case 0:
      [(WFUserSettings *)self _addManagedDefaults:&unk_2882712A8];
      [(WFUserSettings *)self _addManagedDefaults:&unk_2882712D0];
      [(WFUserSettings *)self _addManagedDefaults:&unk_2882712F8];
      v4 = &unk_288271320;
LABEL_7:

      [(WFUserSettings *)self _addManagedDefaults:v4];
      return;
  }

  [(WFUserSettings *)self setRestrictionType:0];
}

- (NSArray)contentFilterOverriddenWhiteListedSites
{
  v2 = [(WFUserSettings *)self _userSettingsForUser:[(WFUserSettings *)self userName]];

  return [v2 objectForKey:@"filterWhitelist"];
}

- (void)setContentFilterOverriddenWhiteListedSites:(id)a3
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = @"filterWhitelist";
    v5[0] = a3;
    -[WFUserSettings _addManagedDefaults:](self, "_addManagedDefaults:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1]);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (NSArray)contentFilterOverriddenBlackListedSites
{
  v2 = [(WFUserSettings *)self _userSettingsForUser:[(WFUserSettings *)self userName]];

  return [v2 objectForKey:@"filterBlacklist"];
}

- (void)setContentFilterOverriddenBlackListedSites:(id)a3
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = @"filterBlacklist";
    v5[0] = a3;
    -[WFUserSettings _addManagedDefaults:](self, "_addManagedDefaults:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1]);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (NSArray)whiteListAllowedSites
{
  v2 = [(WFUserSettings *)self _userSettingsForUser:[(WFUserSettings *)self userName]];

  return [v2 objectForKey:@"siteWhitelist"];
}

- (void)setWhiteListAllowedSites:(id)a3
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = @"siteWhitelist";
    v5[0] = a3;
    -[WFUserSettings _addManagedDefaults:](self, "_addManagedDefaults:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1]);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (BOOL)overridesAllowed
{
  v2 = [(WFUserSettings *)self _userSettingsForUser:[(WFUserSettings *)self userName]];
  if (v2 && (v3 = [v2 objectForKey:@"noOverridingAllowed"]) != 0)
  {
    return [v3 BOOLValue] ^ 1;
  }

  else
  {
    return 1;
  }
}

- (void)setOverridesAllowed:(BOOL)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"noOverridingAllowed";
  v6[0] = [MEMORY[0x277CCABB0] numberWithBool:!a3];
  -[WFUserSettings _addManagedDefaults:](self, "_addManagedDefaults:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1]);
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)alwaysAllowHTTPS
{
  v2 = [(WFUserSettings *)self _userSettingsForUser:[(WFUserSettings *)self userName]];
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 objectForKey:@"alwaysAllowHTTPS"];
  if (!v3)
  {
    return 0;
  }

  return [v3 BOOLValue];
}

- (BOOL)contentFilterListsAllowURL:(id)a3
{
  v5 = [objc_msgSend(a3 "scheme")];
  if (([v5 isEqualToString:@"https"] & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", @"http"))
  {
    return 1;
  }

  v6 = [a3 absoluteString];
  if ([(WFUserSettings *)self contentFilterOverridesEnabled])
  {
    if ([(WFUserSettings *)self contentFilterOverriddenBlackListContainsURL:v6])
    {
      return 0;
    }

    if ([(WFUserSettings *)self contentFilterOverriddenWhiteListContainsURL:v6]|| [(WFUserSettings *)self autoWhitelistContainsURL:a3])
    {
      return 1;
    }
  }

  if (![(WFUserSettings *)self whiteListEnabled]|| [(WFUserSettings *)self whiteListContainsURL:v6])
  {
    return 1;
  }

  return [(WFUserSettings *)self autoWhitelistContainsURL:a3];
}

- (BOOL)restrictWebEnabled
{
  v2 = [(WFUserSettings *)self _userSettingsForUser:[(WFUserSettings *)self userName]];
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 objectForKey:@"restrictWeb"];
  if (!v3)
  {
    return 0;
  }

  return [v3 BOOLValue];
}

- (BOOL)contentFilterEnabled
{
  v2 = [(WFUserSettings *)self _userSettingsForUser:[(WFUserSettings *)self userName]];
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 objectForKey:@"useContentFilter"];
  if (!v3)
  {
    return 0;
  }

  return [v3 BOOLValue];
}

- (BOOL)contentFilterOverridesEnabled
{
  v2 = [(WFUserSettings *)self _userSettingsForUser:[(WFUserSettings *)self userName]];
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 objectForKey:@"useContentFilterOverrides"];
  if (!v3)
  {
    return 0;
  }

  return [v3 BOOLValue];
}

- (BOOL)whiteListEnabled
{
  v2 = [(WFUserSettings *)self _userSettingsForUser:[(WFUserSettings *)self userName]];
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 objectForKey:@"whitelistEnabled"];
  if (!v3)
  {
    return 0;
  }

  return [v3 BOOLValue];
}

- (id)_userSettingsForUser:(id)a3
{
  p_userSettings = &self->_userSettings;
  if (!self->_userSettings)
  {
    v5 = [(WFUserSettings *)self _managedDefaultsPath];
    if (v5)
    {
      *p_userSettings = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v5];
      v6 = __WFDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [(WFUserSettings *)a3 _userSettingsForUser:v6];
      }
    }
  }

  return *p_userSettings;
}

- (id)contentFilterOverriddenWhiteListedSitesBufferWithAdditionalURLStrings:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  if (!self->_contentFilterOverriddenWhiteListedSitesBuffer)
  {
    v7 = objc_alloc_init(WFWhitelistSiteBuffer);
    self->_contentFilterOverriddenWhiteListedSitesBuffer = v7;
    [(WFWhitelistSiteBuffer *)v7 addURLString:@"https://setup.icloud.com"];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(a3);
          }

          [(WFWhitelistSiteBuffer *)self->_contentFilterOverriddenWhiteListedSitesBuffer addURLString:*(*(&v22 + 1) + 8 * i)];
        }

        v9 = [a3 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }

    v12 = [(WFUserSettings *)self contentFilterOverriddenWhiteListedSites];
    if (v12)
    {
      v13 = v12;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v19;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [(WFWhitelistSiteBuffer *)self->_contentFilterOverriddenWhiteListedSitesBuffer addURLString:*(*(&v18 + 1) + 8 * j)];
          }

          v15 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
        }

        while (v15);
      }
    }
  }

  result = self->_contentFilterOverriddenWhiteListedSitesBuffer;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)contentFilterOverriddenBlackListedSitesBuffer
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_contentFilterOverriddenBlackListedSitesBuffer)
  {
    self->_contentFilterOverriddenBlackListedSitesBuffer = objc_alloc_init(WFWhitelistSiteBuffer);
    v5 = [(WFUserSettings *)self contentFilterOverriddenBlackListedSites];
    if (v5)
    {
      v6 = v5;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [(WFWhitelistSiteBuffer *)self->_contentFilterOverriddenBlackListedSitesBuffer addURLString:*(*(&v11 + 1) + 8 * i)];
          }

          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }

  result = self->_contentFilterOverriddenBlackListedSitesBuffer;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)whiteListedSitesBuffer
{
  v21 = *MEMORY[0x277D85DE8];
  if (!self->_whiteListedSitesBuffer)
  {
    self->_whiteListedSitesBuffer = objc_alloc_init(WFWhitelistSiteBuffer);
    [(WFWhitelistSiteBuffer *)self->_contentFilterOverriddenWhiteListedSitesBuffer addURLString:@"https://setup.icloud.com"];
    v5 = [(WFUserSettings *)self whiteListAllowedSites];
    if (v5)
    {
      v6 = v5;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v17;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v16 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [v11 objectForKey:@"address"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && v12)
              {
                [(WFWhitelistSiteBuffer *)self->_whiteListedSitesBuffer addURLString:v12];
              }
            }

            else
            {
              v13 = __WFDefaultLog();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                [(WFUserSettings *)&v14 whiteListedSitesBuffer];
              }
            }
          }

          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v8);
      }
    }
  }

  result = self->_whiteListedSitesBuffer;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)contentFilterOverriddenList:(id)a3 containsURL:(id)a4
{
  v5 = [a4 WF_stringByProperlyFixingPercentEscapesUsingEncoding:4];
  if (v5 && (v6 = [MEMORY[0x277CBEBC0] URLWithString:v5]) != 0)
  {
    v7 = [objc_msgSend(v6 "absoluteString")];

    return [a3 containsURLString:v7];
  }

  else
  {
    v9 = __WFDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [WFUserSettings contentFilterOverriddenList:containsURL:];
    }

    return 0;
  }
}

- (BOOL)contentFilterOverriddenWhiteListContainsURL:(id)a3 withAppleAllowList:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = __WFDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = a3;
    _os_log_impl(&dword_272D73000, v7, OS_LOG_TYPE_INFO, "Checking if %@ is in contentFilterOverriddenWhiteList:withAppleAllowList", &v10, 0xCu);
  }

  result = -[WFUserSettings contentFilterOverriddenList:containsURL:](self, "contentFilterOverriddenList:containsURL:", -[WFUserSettings contentFilterOverriddenWhiteListedSitesBufferWithAdditionalURLStrings:](self, "contentFilterOverriddenWhiteListedSitesBufferWithAdditionalURLStrings:", [a4 allowList]), a3);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)contentFilterOverriddenWhiteListContainsURL:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = __WFDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = a3;
    _os_log_impl(&dword_272D73000, v5, OS_LOG_TYPE_INFO, "Checking if %@ is in contentFilterOverriddenWhiteList", &v8, 0xCu);
  }

  result = [(WFUserSettings *)self contentFilterOverriddenList:[(WFUserSettings *)self contentFilterOverriddenWhiteListedSitesBuffer] containsURL:a3];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)contentFilterOverriddenBlackListContainsURL:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = __WFDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = a3;
    _os_log_impl(&dword_272D73000, v5, OS_LOG_TYPE_INFO, "Checking if %@ is in contentFilterOverriddenBlackList", &v8, 0xCu);
  }

  result = [(WFUserSettings *)self contentFilterOverriddenList:[(WFUserSettings *)self contentFilterOverriddenBlackListedSitesBuffer] containsURL:a3];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)whiteListContainsURL:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = __WFDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = a3;
    _os_log_impl(&dword_272D73000, v5, OS_LOG_TYPE_INFO, "Checking if %@ is in whiteList", &v8, 0xCu);
  }

  result = [(WFUserSettings *)self contentFilterOverriddenList:[(WFUserSettings *)self whiteListedSitesBuffer] containsURL:a3];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)autoWhitelistContainsURL:(id)a3
{
  v3 = [objc_msgSend(a3 "host")];
  if ([v3 isEqualToString:@"apple.com"] & 1) != 0 || (objc_msgSend(v3, "hasSuffix:", @".apple.com") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"icloud.com") & 1) != 0 || (objc_msgSend(v3, "hasSuffix:", @".icloud.com") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"me.com") & 1) != 0 || (objc_msgSend(v3, "hasSuffix:", @".me.com") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"mac.com"))
  {
    return 1;
  }

  return [v3 hasSuffix:@".mac.com"];
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

+ (id)_arrayByConvertingLinesInStringsAtPath:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:a3 encoding:4 error:0];
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
            [v4 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    result = [MEMORY[0x277CBEA60] arrayWithArray:v4];
  }

  else
  {
    v13 = __WFDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[WFUserSettings _arrayByConvertingLinesInStringsAtPath:];
    }

    result = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)_metasiteDomainNamesArray
{
  v2 = [a1 _arrayByConvertingLinesInStringsAtPath:{objc_msgSend(objc_opt_class(), "metasitesPath")}];
  if (!v2)
  {
    v3 = __WFDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[WFUserSettings _metasiteDomainNamesArray];
    }
  }

  return v2;
}

+ (id)_sharedMetasiteExceptionsDomainNamesArray
{
  if (!_sharedMetasiteExceptionsDomainNamesArray_result_0)
  {
    _sharedMetasiteExceptionsDomainNamesArray_result_0 = [a1 _arrayByConvertingLinesInStringsAtPath:{objc_msgSend(objc_opt_class(), "metasitesExceptionPath")}];
    v2 = _sharedMetasiteExceptionsDomainNamesArray_result_0;
    if (!_sharedMetasiteExceptionsDomainNamesArray_result_0)
    {
      v3 = __WFDefaultLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        +[WFUserSettings _metasiteDomainNamesArray];
      }
    }
  }

  return _sharedMetasiteExceptionsDomainNamesArray_result_0;
}

+ (id)_sharedMetasiteDomainNamesDictionary
{
  result = _sharedMetasiteDomainNamesDictionary_result_0;
  if (!_sharedMetasiteDomainNamesDictionary_result_0)
  {
    v4 = [a1 _metasiteDomainNamesArray];
    _sharedMetasiteDomainNamesDictionary_result_0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v4];
    v5 = _sharedMetasiteDomainNamesDictionary_result_0;
    return _sharedMetasiteDomainNamesDictionary_result_0;
  }

  return result;
}

- (void)_userSettingsForUser:(os_log_t)log .cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_272D73000, log, OS_LOG_TYPE_DEBUG, "_userSettingsForUser %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)whiteListedSitesBuffer
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_272D73000, log, OS_LOG_TYPE_ERROR, "**** ERROR: siteWhitelist is malformed", buf, 2u);
}

- (void)contentFilterOverriddenList:containsURL:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_arrayByConvertingLinesInStringsAtPath:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end