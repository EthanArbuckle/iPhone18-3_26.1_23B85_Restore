@interface NSURL(WLKAdditions)
+ (id)wlk_URLWithServerConfig:()WLKAdditions endpoint:relativeToBaseURL:queryParameters:suppressParameterEncoding:ignoreUserLocation:;
+ (id)wlk_URLWithServerConfig:()WLKAdditions routeName:queryParameters:suppressParameterEncoding:;
+ (id)wlk_sortedQueryItemsFromDictionary:()WLKAdditions;
@end

@implementation NSURL(WLKAdditions)

+ (id)wlk_URLWithServerConfig:()WLKAdditions routeName:queryParameters:suppressParameterEncoding:
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 serverRouteNamed:v11];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 requiredKVPType];
    v16 = [v10 requiredRequestKeyValuePairsForType:v15];
    v17 = [v16 mutableCopy];

    if (!v17)
    {
      v17 = [MEMORY[0x277CBEB38] dictionary];
    }

    if ([v14 requiresLocation])
    {
      v18 = +[WLKLocationManager defaultLocationManager];
      v19 = [v18 _locationQueryParameters];
      [v17 addEntriesFromDictionary:v19];
    }

    [v17 addEntriesFromDictionary:v12];
    v20 = [a1 wlk_sortedQueryItemsFromDictionary:v17];
    v21 = objc_alloc(MEMORY[0x277CCACE0]);
    v22 = [v14 URL];
    v23 = [v21 initWithURL:v22 resolvingAgainstBaseURL:0];

    if ([v20 count])
    {
      if (a6)
      {
        [v23 setPercentEncodedQueryItems:v20];
      }

      else
      {
        [v23 setQueryItems:v20];
      }
    }

    v25 = [v23 URL];
  }

  else
  {
    v24 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = v11;
      _os_log_impl(&dword_272A0F000, v24, OS_LOG_TYPE_DEFAULT, "NSURL-WLKAdditions: Could not construct url with route name: %@", &v28, 0xCu);
    }

    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)wlk_URLWithServerConfig:()WLKAdditions endpoint:relativeToBaseURL:queryParameters:suppressParameterEncoding:ignoreUserLocation:
{
  v32[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  if (a5)
  {
    v17 = WLKBaseURLReturningError();
    v18 = 0;
    if (v17)
    {
      v32[0] = v15;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
      v20 = [v17 wlk_stringByAppendingPathComponents:v19];
    }

    else
    {
      v19 = WLKNetworkingLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v18;
        _os_log_impl(&dword_272A0F000, v19, OS_LOG_TYPE_DEFAULT, "NSURL-WLKAdditions: Failed to fetch baseURL: %@", buf, 0xCu);
      }

      v20 = 0;
    }

    if (!v20)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v20 = v15;
    if (!v20)
    {
LABEL_19:
      v22 = WLKNetworkingLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v15;
        _os_log_impl(&dword_272A0F000, v22, OS_LOG_TYPE_DEFAULT, "NSURL-WLKAdditions: Could not construct url with endpoint: %@", buf, 0xCu);
      }

      v27 = 0;
      goto LABEL_22;
    }
  }

  v21 = [v14 requiredRequestKeyValuePairsDictionary:v20];
  v22 = [v21 mutableCopy];

  if (!v22)
  {
    v22 = [MEMORY[0x277CBEB38] dictionary];
    if (a8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((a8 & 1) == 0)
  {
LABEL_7:
    v23 = +[WLKLocationManager defaultLocationManager];
    v24 = [v23 _locationQueryParameters];
    [v22 addEntriesFromDictionary:v24];
  }

LABEL_8:
  [v22 addEntriesFromDictionary:v16];
  v25 = [a1 wlk_sortedQueryItemsFromDictionary:v22];
  v26 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v20];
  if ([v25 count])
  {
    if (a7)
    {
      [v26 setPercentEncodedQueryItems:v25];
    }

    else
    {
      [v26 setQueryItems:v25];
    }
  }

  v27 = [v26 URL];

LABEL_22:
  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)wlk_sortedQueryItemsFromDictionary:()WLKAdditions
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v20 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v22;
    *&v7 = 138412290;
    v19 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v3 objectForKey:{v11, v19}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          goto LABEL_10;
        }

        if (objc_opt_respondsToSelector())
        {
          v13 = [v12 stringValue];
LABEL_10:
          v14 = v13;
          if (v13)
          {
            goto LABEL_11;
          }

          goto LABEL_19;
        }

        if ([MEMORY[0x277CCAAA0] isValidJSONObject:v12])
        {
          v16 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v12 options:0 error:0];
          v14 = v16 ? [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v16 encoding:4] : 0;

          if (v14)
          {
LABEL_11:
            v15 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:v11 value:v14];
            if (v15)
            {
              [v20 addObject:v15];
            }

            goto LABEL_21;
          }
        }

LABEL_19:
        v14 = WLKNetworkingLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v19;
          v26 = v12;
          _os_log_impl(&dword_272A0F000, v14, OS_LOG_TYPE_DEFAULT, "NSURL-WLKAdditions: Invalid query param: %@", buf, 0xCu);
        }

LABEL_21:
      }

      v8 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v20;
}

@end