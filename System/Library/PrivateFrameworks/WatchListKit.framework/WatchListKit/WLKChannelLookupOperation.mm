@interface WLKChannelLookupOperation
- (WLKChannelLookupOperation)initWithAdamId:(id)a3;
- (void)processResponse;
@end

@implementation WLKChannelLookupOperation

- (WLKChannelLookupOperation)initWithAdamId:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"/%@/%@", @"channels", a3];
  v5 = [WLKURLRequestProperties requestPropertiesWithEndpoint:v4 queryParameters:0 httpMethod:0 headers:0 caller:0 timeout:0 apiVersion:&unk_288222B90 options:0];
  v8.receiver = self;
  v8.super_class = WLKChannelLookupOperation;
  v6 = [(WLKUTSNetworkRequestOperation *)&v8 initWithRequestProperties:v5];

  return v6;
}

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
    v7 = [[WLKChannelResponse alloc] initWithDictionary:v8 expirationDate:v6 environmentHash:[(WLKUTSNetworkRequestOperation *)self environmentHash]];
    [(WLKChannelLookupOperation *)self setChannelResponse:v7];

    v3 = v8;
  }
}

@end