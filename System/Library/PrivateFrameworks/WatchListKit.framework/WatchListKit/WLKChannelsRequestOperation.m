@interface WLKChannelsRequestOperation
- (void)processResponse;
@end

@implementation WLKChannelsRequestOperation

- (void)processResponse
{
  v3 = [(WLKUTSNetworkRequestOperation *)self responseDictionary];
  if (v3)
  {
    v8 = v3;
    v4 = [v3 wlk_numberForKey:@"expirationInSeconds"];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = [(WLKNetworkRequestOperation *)self httpHeaderMaxAge];
      if (!v5)
      {
        v6 = 0;
        goto LABEL_6;
      }
    }

    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{objc_msgSend(v5, "unsignedIntegerValue")}];
LABEL_6:
    v7 = [[WLKChannelsResponse alloc] initWithDictionary:v8 expirationDate:v6 environmentHash:[(WLKUTSNetworkRequestOperation *)self environmentHash] filtered:[(WLKChannelsRequestOperation *)self filtered]];
    [(WLKChannelsRequestOperation *)self setChannelsResponse:v7];

    v3 = v8;
  }
}

@end