@interface ICQActionBasedUniversalLinkSpecification
- (ICQActionBasedUniversalLinkSpecification)initWithServerDictionary:(id)dictionary;
- (ICQLink)defaultLink;
- (id)dynamicUIRouteURLForKey:(id)key;
- (id)icqLinkForContext:(id)context;
- (id)purchaseAttributionForKey:(id)key;
- (id)serverUIURLForKey:(id)key;
@end

@implementation ICQActionBasedUniversalLinkSpecification

- (ICQActionBasedUniversalLinkSpecification)initWithServerDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = [(ICQActionBasedUniversalLinkSpecification *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverDict, dictionary);
    v8 = _ICQLinksForServerActionBasedUniversalLink(dictionaryCopy);
    links = v7->_links;
    v7->_links = v8;
  }

  return v7;
}

- (ICQLink)defaultLink
{
  links = [(ICQActionBasedUniversalLinkSpecification *)self links];
  v3 = [links valueForKey:@"default"];

  return v3;
}

- (id)serverUIURLForKey:(id)key
{
  keyCopy = key;
  links = [(ICQActionBasedUniversalLinkSpecification *)self links];
  v6 = [links valueForKey:keyCopy];

  actionURL = [v6 actionURL];

  return actionURL;
}

- (id)dynamicUIRouteURLForKey:(id)key
{
  keyCopy = key;
  links = [(ICQActionBasedUniversalLinkSpecification *)self links];
  v6 = [links valueForKey:keyCopy];

  dynamicUIRouteURL = [v6 dynamicUIRouteURL];

  return dynamicUIRouteURL;
}

- (id)purchaseAttributionForKey:(id)key
{
  keyCopy = key;
  links = [(ICQActionBasedUniversalLinkSpecification *)self links];
  v6 = [links valueForKey:keyCopy];

  purchaseAttribution = [v6 purchaseAttribution];

  return purchaseAttribution;
}

- (id)icqLinkForContext:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:contextCopy];
    if (v5)
    {
      v25 = contextCopy;
      v24 = v5;
      queryItems = [v5 queryItems];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v7 = [queryItems countByEnumeratingWithState:&v26 objects:v34 count:16];
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
              objc_enumerationMutation(queryItems);
            }

            v12 = *(*(&v26 + 1) + 8 * i);
            name = [v12 name];
            v14 = [name isEqualToString:@"universalLinkAction"];

            if (v14)
            {
              v15 = _ICQGetLogSystem();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                value = [v12 value];
                *buf = 138412546;
                v31 = value;
                v32 = 2112;
                v33 = v25;
                _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "icqLinkForContext: found link: %@ for context: %@", buf, 0x16u);
              }

              links = [(ICQActionBasedUniversalLinkSpecification *)self links];
              value2 = [v12 value];
              v19 = [links objectForKeyedSubscript:value2];

              v9 = v19;
            }
          }

          v8 = [queryItems countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v8);
      }

      else
      {
        v9 = 0;
      }

      contextCopy = v25;
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

  serverUIURL = [v9 serverUIURL];
  v21 = [serverUIURL icq_URLByAppendingQueryParamtersFromContext:contextCopy];

  [v9 setServerUIURL:v21];
  v22 = *MEMORY[0x277D85DE8];

  return v9;
}

@end