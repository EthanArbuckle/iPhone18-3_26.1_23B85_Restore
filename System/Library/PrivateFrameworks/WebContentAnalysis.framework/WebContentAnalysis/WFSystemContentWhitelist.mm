@interface WFSystemContentWhitelist
+ (id)defaultSystemWhitelist;
+ (id)newWhitelistItemFromPlistEntry:(id)entry;
- (BOOL)isURLWhitelisted:(id)whitelisted;
- (WFSystemContentWhitelist)initWithWhitelistURL:(id)l;
- (void)dealloc;
@end

@implementation WFSystemContentWhitelist

+ (id)newWhitelistItemFromPlistEntry:(id)entry
{
  v3 = [entry objectForKeyedSubscript:@"WFSystemContentWhitelistDomainGlob"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [WFSystemContentWhitelistItem alloc];

  return [(WFSystemContentWhitelistItem *)v4 initWithDomainGlob:v3];
}

+ (id)defaultSystemWhitelist
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WFSystemContentWhitelist_defaultSystemWhitelist__block_invoke;
  block[3] = &unk_279E7DDC0;
  block[4] = self;
  if (defaultSystemWhitelist_onceToken != -1)
  {
    dispatch_once(&defaultSystemWhitelist_onceToken, block);
  }

  return defaultSystemWhitelist_defaultWhitelist;
}

WFSystemContentWhitelist *__50__WFSystemContentWhitelist_defaultSystemWhitelist__block_invoke(uint64_t a1)
{
  result = -[WFSystemContentWhitelist initWithWhitelistURL:]([WFSystemContentWhitelist alloc], "initWithWhitelistURL:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{*(a1 + 32)), "URLForResource:withExtension:", @"SystemContentWhitelist", @"plist"}]);
  defaultSystemWhitelist_defaultWhitelist = result;
  return result;
}

- (WFSystemContentWhitelist)initWithWhitelistURL:(id)l
{
  v27 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = WFSystemContentWhitelist;
  v4 = [(WFSystemContentWhitelist *)&v25 init];
  if (v4)
  {
    v24 = 0;
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:l options:0 error:&v24];
    if (v5 && (v6 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:&v24]) != 0)
    {
      v7 = v6;
      v8 = objc_opt_new();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 valueForKey:@"WFSystemContentWhitelistItems"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v9 = [v7 valueForKey:{@"WFSystemContentWhitelistItems", 0}];
          v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v21;
            do
            {
              v13 = 0;
              do
              {
                if (*v21 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v20 + 1) + 8 * v13);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v15 = [WFSystemContentWhitelist newWhitelistItemFromPlistEntry:v14];
                  if (v15)
                  {
                    v16 = v15;
                    [(NSArray *)v8 addObject:v15];
                  }
                }

                ++v13;
              }

              while (v11 != v13);
              v11 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
            }

            while (v11);
          }
        }
      }

      v4->_whitelistItems = v8;
    }

    else
    {
      v17 = __WFDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(WFSystemContentWhitelist *)l initWithWhitelistURL:v17];
      }

      v4 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WFSystemContentWhitelist;
  [(WFSystemContentWhitelist *)&v3 dealloc];
}

- (BOOL)isURLWhitelisted:(id)whitelisted
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  whitelistItems = self->_whitelistItems;
  v5 = [(NSArray *)whitelistItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(whitelistItems);
        }

        if ([*(*(&v11 + 1) + 8 * v8) matchesURL:whitelisted])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [(NSArray *)whitelistItems countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)initWithWhitelistURL:(os_log_t)log .cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_272D73000, log, OS_LOG_TYPE_ERROR, "Couldn't read plist from url %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end