@interface TBErrorFetchResponse
+ (id)remoteResponseWithError:(id)error;
+ (id)responseWithError:(id)error;
- (TBErrorFetchResponse)initWithError:(id)error;
@end

@implementation TBErrorFetchResponse

+ (id)responseWithError:(id)error
{
  errorCopy = error;
  v4 = [[TBErrorFetchResponse alloc] initWithError:errorCopy];

  return v4;
}

+ (id)remoteResponseWithError:(id)error
{
  v21[2] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:*MEMORY[0x277CCA738]];

  if (v6)
  {
    if ([errorCopy code] == -1009)
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

  domain2 = [errorCopy domain];
  v10 = GEOErrorDomain();
  v11 = [domain2 isEqualToString:v10];

  if (!v11)
  {
    v8 = @"Unknown remote fetch error";
    v7 = 150;
    goto LABEL_17;
  }

  code = [errorCopy code];
  v8 = @"Unknown remote fetch error";
  v7 = 150;
  if (code <= -8)
  {
    if (code != -15 && code != -9)
    {
      goto LABEL_17;
    }

LABEL_15:
    v8 = @"Connection error";
    v7 = 152;
    goto LABEL_17;
  }

  switch(code)
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
  v21[1] = errorCopy;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v15 = [self alloc];
  v16 = [[TBError alloc] initWithType:v7 userInfo:v14];
  v17 = [v15 initWithError:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (TBErrorFetchResponse)initWithError:(id)error
{
  v8.receiver = self;
  v8.super_class = TBErrorFetchResponse;
  errorCopy = error;
  v4 = [(TBErrorFetchResponse *)&v8 init];
  v5 = [errorCopy copy];

  error = v4->_error;
  v4->_error = v5;

  return v4;
}

@end