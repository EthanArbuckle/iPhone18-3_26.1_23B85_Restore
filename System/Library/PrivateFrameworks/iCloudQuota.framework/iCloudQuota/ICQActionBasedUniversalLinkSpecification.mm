@interface ICQActionBasedUniversalLinkSpecification
- (ICQActionBasedUniversalLinkSpecification)initWithServerDictionary:(id)a3;
- (ICQLink)defaultLink;
- (id)dynamicUIRouteURLForKey:(id)a3;
- (id)icqLinkForContext:(id)a3;
- (id)purchaseAttributionForKey:(id)a3;
- (id)serverUIURLForKey:(id)a3;
@end

@implementation ICQActionBasedUniversalLinkSpecification

- (ICQActionBasedUniversalLinkSpecification)initWithServerDictionary:(id)a3
{
  v5 = a3;
  v6 = [(ICQActionBasedUniversalLinkSpecification *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverDict, a3);
    v8 = _ICQLinksForServerActionBasedUniversalLink(v5);
    links = v7->_links;
    v7->_links = v8;
  }

  return v7;
}

- (ICQLink)defaultLink
{
  v2 = [(ICQActionBasedUniversalLinkSpecification *)self links];
  v3 = [v2 valueForKey:@"default"];

  return v3;
}

- (id)serverUIURLForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICQActionBasedUniversalLinkSpecification *)self links];
  v6 = [v5 valueForKey:v4];

  v7 = [v6 actionURL];

  return v7;
}

- (id)dynamicUIRouteURLForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICQActionBasedUniversalLinkSpecification *)self links];
  v6 = [v5 valueForKey:v4];

  v7 = [v6 dynamicUIRouteURL];

  return v7;
}

- (id)purchaseAttributionForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICQActionBasedUniversalLinkSpecification *)self links];
  v6 = [v5 valueForKey:v4];

  v7 = [v6 purchaseAttribution];

  return v7;
}

- (id)icqLinkForContext:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v4];
    if (v5)
    {
      v25 = v4;
      v24 = v5;
      v6 = [v5 queryItems];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v27;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v26 + 1) + 8 * i);
            v13 = [v12 name];
            v14 = [v13 isEqualToString:@"universalLinkAction"];

            if (v14)
            {
              v15 = _ICQGetLogSystem();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v16 = [v12 value];
                *buf = 138412546;
                v31 = v16;
                v32 = 2112;
                v33 = v25;
                _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "icqLinkForContext: found link: %@ for context: %@", buf, 0x16u);
              }

              v17 = [(ICQActionBasedUniversalLinkSpecification *)self links];
              v18 = [v12 value];
              v19 = [v17 objectForKeyedSubscript:v18];

              v9 = v19;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v8);
      }

      else
      {
        v9 = 0;
      }

      v4 = v25;
      v5 = v24;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v20 = [v9 serverUIURL];
  v21 = [v20 icq_URLByAppendingQueryParamtersFromContext:v4];

  [v9 setServerUIURL:v21];
  v22 = *MEMORY[0x277D85DE8];

  return v9;
}

@end