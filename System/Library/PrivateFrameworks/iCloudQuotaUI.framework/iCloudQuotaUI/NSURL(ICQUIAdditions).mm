@interface NSURL(ICQUIAdditions)
+ (id)icqURLForIndex:()ICQUIAdditions;
- (uint64_t)icqIndex;
- (uint64_t)icqui_isJoinOrLeaveFamilySharingURL;
- (uint64_t)icqui_isStopFamilySharingURL;
@end

@implementation NSURL(ICQUIAdditions)

+ (id)icqURLForIndex:()ICQUIAdditions
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = MEMORY[0x277CCACA8];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v3 = [v1 stringWithFormat:@"%@://%@", @"icq", v2];
  v4 = [v0 URLWithString:v3];

  return v4;
}

- (uint64_t)icqIndex
{
  v2 = [a1 scheme];
  if (!v2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = v2;
  v4 = [a1 scheme];
  if (([v4 isEqualToString:@"icq"] & 1) == 0)
  {

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [a1 host];

  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [a1 host];
  v11 = 0;
  v7 = [MEMORY[0x277CCAC80] scannerWithString:v6];
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if ([v7 scanInteger:&v11])
  {
    v9 = [v7 scanLocation];
    if (v9 == [v6 length])
    {
      v8 = v11;
    }
  }

  return v8;
}

- (uint64_t)icqui_isStopFamilySharingURL
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:a1 resolvingAgainstBaseURL:1];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [v1 queryItems];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 name];
        if ([v8 isEqualToString:@"action"])
        {
          v9 = [v7 value];
          v10 = [v9 isEqualToString:@"STOP_FAMILY_SHARING"];

          if (v10)
          {
            v11 = 1;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (uint64_t)icqui_isJoinOrLeaveFamilySharingURL
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:a1 resolvingAgainstBaseURL:1];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [v1 queryItems];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v13 = v1;
    v4 = *v16;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        v7 = [v6 name];
        if ([v7 isEqualToString:@"action"])
        {
          v8 = [v6 value];
          if ([v8 isEqualToString:@"JOIN_FAMILY"])
          {

LABEL_16:
            v11 = 1;
            goto LABEL_17;
          }

          v9 = [v6 value];
          v10 = [v9 isEqualToString:@"LEAVE_FAMILY_SHARING"];

          if (v10)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }

    v11 = 0;
LABEL_17:
    v1 = v13;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end