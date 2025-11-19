@interface WLKUpNextWidgetRequestOperation
- (WLKUpNextWidgetRequestOperation)initWithQueryParameters:(id)a3 options:(int64_t)a4;
- (void)processResponse;
@end

@implementation WLKUpNextWidgetRequestOperation

- (WLKUpNextWidgetRequestOperation)initWithQueryParameters:(id)a3 options:(int64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithDouble:15.0];
  v9 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"shelves/up-next-widget" queryParameters:v7 httpMethod:0 headers:0 caller:0 timeout:v8 apiVersion:&unk_288222A10 options:a4];

  v12.receiver = self;
  v12.super_class = WLKUpNextWidgetRequestOperation;
  v10 = [(WLKUTSNetworkRequestOperation *)&v12 initWithRequestProperties:v9];

  return v10;
}

- (void)processResponse
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(WLKUTSNetworkRequestOperation *)self responseDictionary];
  v4 = [WLKChannelsResponse parseChannelsFromPayload:v3];
  v5 = v4;
  if (v4)
  {
    v10 = @"WLKModelContextKeyChannels";
    v11[0] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [[WLKUpNextItemCollection alloc] initWithDictionary:v3 context:v6];
  itemCollection = self->_itemCollection;
  self->_itemCollection = v7;

  v9 = *MEMORY[0x277D85DE8];
}

@end