@interface SWCDomainCache
- (id)_entriesForDomain:(id)domain;
- (id)_entriesFromDomain:(id)domain;
- (id)entriesForDomain:(id)domain;
- (void)clear;
- (void)updateCachedDomainsForEntries:(id)entries;
@end

@implementation SWCDomainCache

- (void)updateCachedDomainsForEntries:(id)entries
{
  entriesCopy = entries;
  v5 = +[_SWCPrefs sharedPrefs];
  isFastCheckEnabled = [v5 isFastCheckEnabled];

  if (isFastCheckEnabled)
  {
    if (!self->_cachedEntries)
    {
      v7 = +[NSMutableDictionary dictionary];
      cachedEntries = self->_cachedEntries;
      self->_cachedEntries = v7;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = entriesCopy;
    obj = entriesCopy;
    v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          domain = [v13 domain];
          if ([domain modeOfOperation])
          {
            self->_hasDeveloperModeDomains = 1;
          }

          if (([domain modeOfOperation] & 2) != 0)
          {
            self->_hasManagedModeDomains = 1;
          }

          v15 = [(SWCDomainCache *)self _entriesFromDomain:domain];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 mutableCopy];
            [v17 addObject:v13];
            [(NSMutableDictionary *)self->_cachedEntries setObject:v17 forKeyedSubscript:domain];
          }

          else
          {
            [(NSMutableDictionary *)self->_cachedEntries setObject:v13 forKeyedSubscript:domain];
          }

          if ([domain isWildcard])
          {
            nonWildcardDomain = [domain nonWildcardDomain];
            v19 = [(SWCDomainCache *)self _entriesFromDomain:nonWildcardDomain];
            v20 = v19;
            if (v19)
            {
              v21 = [v19 mutableCopy];
              [v21 addObject:v13];
              [(NSMutableDictionary *)self->_cachedEntries setObject:v21 forKeyedSubscript:nonWildcardDomain];
            }

            else
            {
              [(NSMutableDictionary *)self->_cachedEntries setObject:v13 forKeyedSubscript:nonWildcardDomain];
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    entriesCopy = v22;
  }
}

- (id)entriesForDomain:(id)domain
{
  domainCopy = domain;
  v5 = [(SWCDomainCache *)self _entriesForDomain:domainCopy operationMode:0];
  v6 = v5;
  if (self->_hasDeveloperModeDomains || self->_hasManagedModeDomains)
  {
    if (v5)
    {
      v7 = [v5 mutableCopy];
    }

    else
    {
      v7 = objc_alloc_init(NSMutableOrderedSet);
    }

    v8 = v7;
    if (self->_hasDeveloperModeDomains)
    {
      v9 = [(SWCDomainCache *)self _entriesForDomain:domainCopy operationMode:1];
      [v8 unionOrderedSet:v9];
      if (self->_hasManagedModeDomains)
      {
        v10 = [(SWCDomainCache *)self _entriesForDomain:domainCopy operationMode:3];
        [v8 unionOrderedSet:v10];
      }
    }

    if (self->_hasManagedModeDomains)
    {
      v11 = [(SWCDomainCache *)self _entriesForDomain:domainCopy operationMode:2];
      [v8 unionOrderedSet:v11];
    }
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)_entriesForDomain:(id)domain
{
  domainCopy = domain;
  v5 = [(SWCDomainCache *)self _entriesFromDomain:domainCopy];
  if (v5 || ![domainCopy isWildcard])
  {
    host = [domainCopy host];
    v8 = [host componentsSeparatedByString:@"."];
    if ([v8 count] >= 3)
    {
      v22 = host;
      if ([v8 count] == 2)
      {
LABEL_13:
        v7 = v5;
        host = v22;
      }

      else
      {
        v9 = 0;
        while (1)
        {
          ++v9;
          v10 = &stru_10002E180;
          if (v9 < [v8 count] - 1)
          {
            v11 = v9;
            v12 = &stru_10002E180;
            do
            {
              v13 = [v8 objectAtIndexedSubscript:v11];
              v10 = [(__CFString *)v12 stringByAppendingFormat:@"%@.", v13];

              ++v11;
              v12 = v10;
            }

            while (v11 < [v8 count] - 1);
          }

          v14 = [v8 objectAtIndexedSubscript:{objc_msgSend(v8, "count") - 1}];
          v15 = [(__CFString *)v10 stringByAppendingFormat:@"%@", v14];

          v16 = [_SWCDomain alloc];
          port = [domainCopy port];
          v18 = [v16 initWithHost:v15 port:port wildcard:1 modeOfOperation:{objc_msgSend(domainCopy, "modeOfOperation")}];

          v19 = [(SWCDomainCache *)self _entriesFromDomain:v18];
          if (v19)
          {
            break;
          }

          if (v9 >= [v8 count] - 2)
          {
            goto LABEL_13;
          }
        }

        v20 = v19;
        if (v5)
        {
          v7 = [v5 mutableCopy];
          [v7 unionOrderedSet:v20];
        }

        else
        {
          v7 = v19;
        }

        host = v22;
      }
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    host = [domainCopy nonWildcardDomain];
    v7 = [(SWCDomainCache *)self _entriesFromDomain:host];
  }

  return v7;
}

- (void)clear
{
  cachedEntries = self->_cachedEntries;
  self->_cachedEntries = 0;
  _objc_release_x1();
}

- (id)_entriesFromDomain:(id)domain
{
  v3 = [(NSMutableDictionary *)self->_cachedEntries objectForKeyedSubscript:domain];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [NSOrderedSet orderedSetWithObject:v3];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end