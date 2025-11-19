@interface WLKTopShelfRequestOperation
- (WLKTopShelfRequestOperation)initWithQueryParameters:(id)a3 options:(int64_t)a4;
- (void)processResponse;
@end

@implementation WLKTopShelfRequestOperation

- (WLKTopShelfRequestOperation)initWithQueryParameters:(id)a3 options:(int64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithDouble:15.0];
  v9 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"browse/topShelf" queryParameters:v7 httpMethod:0 headers:0 caller:0 timeout:v8 options:a4 clientProtocolVersion:&unk_288222C98];

  v12.receiver = self;
  v12.super_class = WLKTopShelfRequestOperation;
  v10 = [(WLKUTSNetworkRequestOperation *)&v12 initWithRequestProperties:v9];

  return v10;
}

- (void)processResponse
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [(WLKUTSNetworkRequestOperation *)self responseDictionary];
  v4 = [v3 wlk_arrayForKey:@"items"];
  v5 = [WLKChannelsResponse parseChannelsFromPayload:v3];
  v6 = v5;
  if (v5)
  {
    v11 = @"WLKModelContextKeyChannels";
    v12[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [WLKBrowseItem browseItemsWithDictionaries:v4 context:v7];
  items = self->_items;
  self->_items = v8;

  v10 = *MEMORY[0x277D85DE8];
}

@end