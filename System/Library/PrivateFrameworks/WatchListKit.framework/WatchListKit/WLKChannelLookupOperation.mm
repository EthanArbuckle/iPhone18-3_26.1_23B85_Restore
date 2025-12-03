@interface WLKChannelLookupOperation
- (WLKChannelLookupOperation)initWithAdamId:(id)id;
- (void)processResponse;
@end

@implementation WLKChannelLookupOperation

- (WLKChannelLookupOperation)initWithAdamId:(id)id
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"/%@/%@", @"channels", id];
  v5 = [WLKURLRequestProperties requestPropertiesWithEndpoint:v4 queryParameters:0 httpMethod:0 headers:0 caller:0 timeout:0 apiVersion:&unk_288222B90 options:0];
  v8.receiver = self;
  v8.super_class = WLKChannelLookupOperation;
  v6 = [(WLKUTSNetworkRequestOperation *)&v8 initWithRequestProperties:v5];

  return v6;
}

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
    v7 = [[WLKChannelResponse alloc] initWithDictionary:v8 expirationDate:v6 environmentHash:[(WLKUTSNetworkRequestOperation *)self environmentHash]];
    [(WLKChannelLookupOperation *)self setChannelResponse:v7];

    responseDictionary = v8;
  }
}

@end