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
      v6 = [v5 percentEncodedHost];
      if (v6)
      {
        v7 = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
        v8 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v7];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = v6;
        }

        v11 = v10;

        [v5 setPercentEncodedHost:v11];
      }

      v12 = [v5 percentEncodedQuery];
      if (v12)
      {
        v13 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
        v14 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:v13];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v12;
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