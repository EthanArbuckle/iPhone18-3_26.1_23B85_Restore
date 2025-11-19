@interface TBErrorFetchResponse
+ (id)remoteResponseWithError:(id)a3;
+ (id)responseWithError:(id)a3;
- (TBErrorFetchResponse)initWithError:(id)a3;
@end

@implementation TBErrorFetchResponse

+ (id)responseWithError:(id)a3
{
  v3 = a3;
  v4 = [[TBErrorFetchResponse alloc] initWithError:v3];

  return v4;
}

+ (id)remoteResponseWithError:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x277CCA738]];

  if (v6)
  {
    if ([v4 code] == -1009)
    {
      v7 = 155;
    }

    else
    {
      v7 = 150;
    }

    v8 = @"Unknown remote fetch error";
    goto LABEL_17;
  }

  v9 = [v4 domain];
  v10 = GEOErrorDomain();
  v11 = [v9 isEqualToString:v10];

  if (!v11)
  {
    v8 = @"Unknown remote fetch error";
    v7 = 150;
    goto LABEL_17;
  }

  v12 = [v4 code];
  v8 = @"Unknown remote fetch error";
  v7 = 150;
  if (v12 <= -8)
  {
    if (v12 != -15 && v12 != -9)
    {
      goto LABEL_17;
    }

LABEL_15:
    v8 = @"Connection error";
    v7 = 152;
    goto LABEL_17;
  }

  switch(v12)
  {
    case -7:
      v8 = @"Server error";
      v7 = 153;
      break;
    case -1:
      goto LABEL_15;
    case -4:
      v8 = @"No configured URL for remote fetch";
      v7 = 151;
      break;
  }

LABEL_17:
  v13 = *MEMORY[0x277CCA7E8];
  v20[0] = *MEMORY[0x277CCA450];
  v20[1] = v13;
  v21[0] = v8;
  v21[1] = v4;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v15 = [a1 alloc];
  v16 = [[TBError alloc] initWithType:v7 userInfo:v14];
  v17 = [v15 initWithError:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (TBErrorFetchResponse)initWithError:(id)a3
{
  v8.receiver = self;
  v8.super_class = TBErrorFetchResponse;
  v3 = a3;
  v4 = [(TBErrorFetchResponse *)&v8 init];
  v5 = [v3 copy];

  error = v4->_error;
  v4->_error = v5;

  return v4;
}

@end