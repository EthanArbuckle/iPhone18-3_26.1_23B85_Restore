@interface WCRURLList
+ (id)_formattedStringFromURLString:(id)string fromBrowser:(BOOL)browser removePort:(BOOL)port;
- (BOOL)containsURLString:(id)string;
- (WCRURLList)init;
- (id)allowedURLStrings;
- (void)addURLString:(id)string;
@end

@implementation WCRURLList

- (WCRURLList)init
{
  v6.receiver = self;
  v6.super_class = WCRURLList;
  v2 = [(WCRURLList *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    urlStringList = v2->_urlStringList;
    v2->_urlStringList = v3;
  }

  return v2;
}

- (id)allowedURLStrings
{
  urlStringList = [(WCRURLList *)self urlStringList];
  v3 = [urlStringList copy];

  return v3;
}

+ (id)_formattedStringFromURLString:(id)string fromBrowser:(BOOL)browser removePort:(BOOL)port
{
  portCopy = port;
  browserCopy = browser;
  stringCopy = string;
  stringByRemovingPercentEncoding = [stringCopy stringByRemovingPercentEncoding];
  if (!stringByRemovingPercentEncoding)
  {
    stringByRemovingPercentEncoding = stringCopy;
  }

  v9 = [stringByRemovingPercentEncoding stringByAddingPercentEscapesUsingEncoding:4];

  lowercaseString = [v9 lowercaseString];
  v11 = [MEMORY[0x277CBEBC0] URLWithString:lowercaseString];
  port = [v11 port];

  pathComponents = [v11 pathComponents];
  v14 = [pathComponents count];

  v15 = lowercaseString;
  v16 = v15;
  v17 = v15;
  if (portCopy)
  {
    v17 = v15;
    if (port)
    {
      v18 = MEMORY[0x277CCACA8];
      port2 = [v11 port];
      v20 = [v18 stringWithFormat:@":%@", port2];

      v17 = [v16 stringByReplacingOccurrencesOfString:v20 withString:&stru_288271F70];
    }
  }

  scheme = [v11 scheme];

  if (scheme)
  {
    v22 = MEMORY[0x277CCACA8];
    scheme2 = [v11 scheme];
    v24 = [v22 stringWithFormat:@"%@://", scheme2];

    v25 = [v17 stringByReplacingOccurrencesOfString:v24 withString:&stru_288271F70];

    v17 = v25;
  }

  if ([v17 hasPrefix:@"www."])
  {
    v26 = [v17 stringByReplacingOccurrencesOfString:@"www." withString:&stru_288271F70];

    v17 = v26;
  }

  if (v17 && ([v17 hasPrefix:@"."] & 1) == 0)
  {
    v27 = [@"." stringByAppendingString:v17];

    v17 = v27;
  }

  if ((v14 < 2 || browserCopy) && ([v17 hasSuffix:@"/"] & 1) == 0)
  {
    v28 = [v17 stringByAppendingString:@"/"];

    v17 = v28;
  }

  return v17;
}

- (void)addURLString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v8 = stringCopy;
    if (([stringCopy isEqualToString:&stru_288271F70] & 1) == 0)
    {
      v5 = [objc_opt_class() _formattedStringFromURLString:v8 fromBrowser:0 removePort:0];
      if (v5)
      {
        urlStringList = [(WCRURLList *)self urlStringList];
        v7 = [v5 copy];
        [urlStringList addObject:v7];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)containsURLString:(id)string
{
  v38 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  urlStringList = [(WCRURLList *)self urlStringList];
  v6 = [urlStringList count];

  if (v6)
  {
    v7 = [objc_opt_class() _formattedStringFromURLString:stringCopy fromBrowser:1 removePort:0];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    selfCopy = self;
    obj = [(WCRURLList *)self urlStringList];
    v8 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          if ([v7 containsString:v12])
          {
            if ([v12 hasPrefix:@"http"])
            {
              v13 = v12;
            }

            else
            {
              v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"http://%@", v12];
            }

            urlStringList2 = v13;
            if ([v7 hasPrefix:@"http"])
            {
              v15 = v7;
            }

            else
            {
              v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"http://%@", v7];
            }

            v16 = v15;
            v17 = [MEMORY[0x277CBEBC0] URLWithString:urlStringList2];
            host = [v17 host];

            v19 = [MEMORY[0x277CBEBC0] URLWithString:v16];
            host2 = [v19 host];

            if (host && ([host2 hasSuffix:host] & 1) != 0)
            {

              LOBYTE(v21) = 1;
              goto LABEL_23;
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    obj = [objc_opt_class() _formattedStringFromURLString:stringCopy fromBrowser:1 removePort:1];
    if ([obj isEqualToString:v7])
    {
      LOBYTE(v21) = 0;
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      urlStringList2 = [(WCRURLList *)selfCopy urlStringList];
      v21 = [urlStringList2 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v21)
      {
        v24 = *v29;
        while (2)
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v29 != v24)
            {
              objc_enumerationMutation(urlStringList2);
            }

            if ([obj containsString:*(*(&v28 + 1) + 8 * j)])
            {
              LOBYTE(v21) = 1;
              goto LABEL_23;
            }
          }

          v21 = [urlStringList2 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

LABEL_23:
    }
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

@end