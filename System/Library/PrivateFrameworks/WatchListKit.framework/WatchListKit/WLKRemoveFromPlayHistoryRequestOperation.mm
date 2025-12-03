@interface WLKRemoveFromPlayHistoryRequestOperation
- (WLKRemoveFromPlayHistoryRequestOperation)initWithItemID:(id)d;
@end

@implementation WLKRemoveFromPlayHistoryRequestOperation

- (WLKRemoveFromPlayHistoryRequestOperation)initWithItemID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"play-history/%@", dCopy];
    v7 = [WLKURLRequestProperties requestPropertiesWithEndpoint:dCopy queryParameters:0 httpMethod:@"DELETE" httpBody:0 headers:&unk_288222DB0 caller:0 timeout:0 apiVersion:&unk_288222A40 options:0];
    v12.receiver = self;
    v12.super_class = WLKRemoveFromPlayHistoryRequestOperation;
    v8 = [(WLKUTSNetworkRequestOperation *)&v12 initWithRequestProperties:v7];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_deleteID, d);
    }

    self = v9;

    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"delete ID is required"];
    selfCopy = 0;
  }

  return selfCopy;
}

@end