@interface NSURLRequest(WLKAdditions)
+ (id)wlk_requestWithURL:()WLKAdditions httpMethod:httpBody:httpHeaders:cachePolicy:timeout:;
@end

@implementation NSURLRequest(WLKAdditions)

+ (id)wlk_requestWithURL:()WLKAdditions httpMethod:httpBody:httpHeaders:cachePolicy:timeout:
{
  v43 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v13)
  {
    v36 = v15;
    HIDWORD(v35) = [v14 isEqualToString:@"POST"];
    LODWORD(v35) = [v14 isEqualToString:@"PATCH"];
    v17 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:v13 cachePolicy:a8 timeoutInterval:a1];
    [v17 setHTTPMethod:v14];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v18 = [v16 allKeys];
    v19 = [v18 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v38;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v37 + 1) + 8 * i);
          v24 = [v16 objectForKey:{v23, v35}];
          [v17 setValue:v24 forHTTPHeaderField:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v20);
    }

    if ((HIDWORD(v35) | v35))
    {
      v15 = v36;
      if (v36)
      {
        v25 = [v17 valueForHTTPHeaderField:@"Content-Type"];
        v26 = [v25 length];

        if (!v26)
        {
          v27 = WLKNetworkingLogObject();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_272A0F000, v27, OS_LOG_TYPE_DEFAULT, "NSURLRequest-WLKAdditions: HTTP body specified without specifying Content-Type", buf, 2u);
          }
        }

        [v17 setHTTPBody:{v36, v35}];
      }

      else if (HIDWORD(v35))
      {
        v31 = [MEMORY[0x277CCACE0] componentsWithURL:v13 resolvingAgainstBaseURL:0];
        v32 = [v13 query];
        if ([v32 length])
        {
          v33 = [v32 dataUsingEncoding:4];
          [v17 setHTTPBody:v33];

          [v17 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
        }

        [v31 setQueryItems:{0, v35}];
        v34 = [v31 URL];
        [v17 setURL:v34];
      }
    }

    else
    {
      v15 = v36;
    }
  }

  else
  {
    v28 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v28, OS_LOG_TYPE_DEFAULT, "NSURLRequest-WLKAdditions: URL parameter is nil", buf, 2u);
    }

    v17 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v17;
}

@end