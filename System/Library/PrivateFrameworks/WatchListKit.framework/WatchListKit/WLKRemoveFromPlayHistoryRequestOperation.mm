@interface WLKRemoveFromPlayHistoryRequestOperation
- (WLKRemoveFromPlayHistoryRequestOperation)initWithItemID:(id)a3;
@end

@implementation WLKRemoveFromPlayHistoryRequestOperation

- (WLKRemoveFromPlayHistoryRequestOperation)initWithItemID:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"play-history/%@", v5];
    v7 = [WLKURLRequestProperties requestPropertiesWithEndpoint:v6 queryParameters:0 httpMethod:@"DELETE" httpBody:0 headers:&unk_288222DB0 caller:0 timeout:0 apiVersion:&unk_288222A40 options:0];
    v12.receiver = self;
    v12.super_class = WLKRemoveFromPlayHistoryRequestOperation;
    v8 = [(WLKUTSNetworkRequestOperation *)&v12 initWithRequestProperties:v7];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_deleteID, a3);
    }

    self = v9;

    v10 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"delete ID is required"];
    v10 = 0;
  }

  return v10;
}

@end