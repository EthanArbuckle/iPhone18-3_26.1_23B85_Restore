@interface WLKChannelsRequestOperation
- (void)processResponse;
@end

@implementation WLKChannelsRequestOperation

- (void)processResponse
{
  responseDictionary = [(WLKUTSNetworkRequestOperation *)self responseDictionary];
  if (responseDictionary)
  {
    v8 = responseDictionary;
    v4 = [responseDictionary wlk_numberForKey:@"expirationInSeconds"];
    if (v4)
    {
      httpHeaderMaxAge = v4;
    }

    else
    {
      httpHeaderMaxAge = [(WLKNetworkRequestOperation *)self httpHeaderMaxAge];
      if (!httpHeaderMaxAge)
      {
        v6 = 0;
        goto LABEL_6;
      }
    }

    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{objc_msgSend(httpHeaderMaxAge, "unsignedIntegerValue")}];
LABEL_6:
    v7 = [[WLKChannelsResponse alloc] initWithDictionary:v8 expirationDate:v6 environmentHash:[(WLKUTSNetworkRequestOperation *)self environmentHash] filtered:[(WLKChannelsRequestOperation *)self filtered]];
    [(WLKChannelsRequestOperation *)self setChannelsResponse:v7];

    responseDictionary = v8;
  }
}

@end