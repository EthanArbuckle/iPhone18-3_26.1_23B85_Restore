@interface NSURL(ICQ)
- (id)icq_URLByAppendingQueryItems:()ICQ;
- (id)icq_URLByAppendingQueryParamName:()ICQ value:;
- (id)icq_URLByAppendingQueryParamtersFromContext:()ICQ;
- (id)icq_queryItemForName:()ICQ;
- (uint64_t)icq_isICQLaunchURL;
@end

@implementation NSURL(ICQ)

- (uint64_t)icq_isICQLaunchURL
{
  v2 = [MEMORY[0x277CCACE0] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v3 = [v2 scheme];
  if (([v3 isEqualToString:@"icq"] & 1) == 0)
  {

    goto LABEL_5;
  }

  v1 = [v2 host];
  v4 = [v1 isEqualToString:@"launch"];

  if ((v4 & 1) == 0)
  {
LABEL_5:
    v6 = [v2 host];
    v7 = [v6 isEqualToString:@"icq.icloud.com"];
    if ((v7 & 1) != 0 || ([v2 host], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "isEqualToString:", @"icq.apple.com")))
    {
      v8 = [v2 path];
      v5 = [v8 isEqualToString:@"/launch"];

      if (v7)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v5 = 1;
LABEL_12:

  return v5;
}

- (id)icq_URLByAppendingQueryItems:()ICQ
{
  v4 = MEMORY[0x277CCACE0];
  v5 = a3;
  v6 = [v4 componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v7 = MEMORY[0x277CBEB18];
  v8 = [v6 queryItems];
  v9 = [v7 arrayWithArray:v8];

  [v9 addObjectsFromArray:v5];
  [v6 setQueryItems:v9];
  v10 = [v6 URL];

  return v10;
}

- (id)icq_URLByAppendingQueryParamName:()ICQ value:
{
  v6 = MEMORY[0x277CCACE0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v10 = [MEMORY[0x277CCAD18] queryItemWithName:v8 value:v7];

  v11 = MEMORY[0x277CBEB18];
  v12 = [v9 queryItems];
  v13 = [v11 arrayWithArray:v12];

  [v13 addObject:v10];
  [v9 setQueryItems:v13];
  v14 = [v9 URL];

  return v14;
}

- (id)icq_queryItemForName:()ICQ
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCACE0] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 queryItems];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)icq_URLByAppendingQueryParamtersFromContext:()ICQ
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CCACE0] componentsWithURL:a1 resolvingAgainstBaseURL:0];
    v6 = MEMORY[0x277CBEB18];
    v37 = v5;
    v7 = [v5 queryItems];
    v8 = [v6 arrayWithArray:v7];

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v44;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v44 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v43 + 1) + 8 * i) name];
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v12);
    }

    v36 = v10;

    v16 = [MEMORY[0x277CCACE0] componentsWithString:v4];
    v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v35 = v16;
    v17 = [v16 queryItems];
    v18 = [v17 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v40;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v39 + 1) + 8 * j);
          v23 = [v22 name];
          v24 = [v23 lowercaseString];
          v25 = [v24 isEqualToString:@"context"];

          if (v25)
          {
            v26 = MEMORY[0x277CCAD18];
            v27 = [v22 value];
            v28 = [v26 queryItemWithName:@"clientContext" value:v27];

            v22 = v28;
          }

          v29 = [v22 name];
          v30 = [v9 containsObject:v29];

          if ((v30 & 1) == 0)
          {
            [v38 addObject:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v19);
    }

    [v36 addObjectsFromArray:v38];
    v31 = v37;
    if ([v36 count])
    {
      [v37 setQueryItems:v36];
    }

    v32 = [v37 URL];
  }

  else
  {
    v31 = _ICQGetLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v50 = "[NSURL(ICQ) icq_URLByAppendingQueryParamtersFromContext:]";
      _os_log_impl(&dword_275572000, v31, OS_LOG_TYPE_DEFAULT, "%s Context is unavailable bailing.", buf, 0xCu);
    }

    v32 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

@end