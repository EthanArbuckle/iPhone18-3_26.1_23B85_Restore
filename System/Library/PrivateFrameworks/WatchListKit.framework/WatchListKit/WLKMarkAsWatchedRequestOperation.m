@interface WLKMarkAsWatchedRequestOperation
- (WLKMarkAsWatchedRequestOperation)initWithItemID:(id)a3;
@end

@implementation WLKMarkAsWatchedRequestOperation

- (WLKMarkAsWatchedRequestOperation)initWithItemID:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v6 setObject:v5 forKey:@"id"];
    v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:0 error:0];
    v8 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"play-history" queryParameters:0 httpMethod:@"POST" httpBody:v7 headers:&unk_288222EF0 caller:0 timeout:0 apiVersion:&unk_288222D70 options:0];
    v13.receiver = self;
    v13.super_class = WLKMarkAsWatchedRequestOperation;
    v9 = [(WLKUTSNetworkRequestOperation *)&v13 initWithRequestProperties:v8];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_itemID, a3);
    }

    self = v10;

    v11 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"item ID is required"];
    v11 = 0;
  }

  return v11;
}

@end