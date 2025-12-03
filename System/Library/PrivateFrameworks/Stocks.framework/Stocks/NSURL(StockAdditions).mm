@interface NSURL(StockAdditions)
+ (id)stocks_sanitizedURLFromString:()StockAdditions;
@end

@implementation NSURL(StockAdditions)

+ (id)stocks_sanitizedURLFromString:()StockAdditions
{
  if (a3)
  {
    v3 = MEMORY[0x277CCACE0];
    v4 = a3;
    v5 = [[v3 alloc] initWithString:v4];

    if (v5)
    {
      percentEncodedHost = [v5 percentEncodedHost];
      if (percentEncodedHost)
      {
        uRLHostAllowedCharacterSet = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
        v8 = [percentEncodedHost stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = percentEncodedHost;
        }

        v11 = v10;

        [v5 setPercentEncodedHost:v11];
      }

      percentEncodedQuery = [v5 percentEncodedQuery];
      if (percentEncodedQuery)
      {
        uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
        v14 = [percentEncodedQuery stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = percentEncodedQuery;
        }

        v17 = v16;

        [v5 setPercentEncodedQuery:v17];
      }

      v18 = [v5 URL];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end