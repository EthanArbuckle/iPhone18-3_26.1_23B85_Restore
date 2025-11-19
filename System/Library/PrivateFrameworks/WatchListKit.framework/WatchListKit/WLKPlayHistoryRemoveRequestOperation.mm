@interface WLKPlayHistoryRemoveRequestOperation
- (WLKPlayHistoryRemoveRequestOperation)initWithChannelID:(id)a3 externalID:(id)a4 caller:(id)a5;
- (void)processResponse;
@end

@implementation WLKPlayHistoryRemoveRequestOperation

- (WLKPlayHistoryRemoveRequestOperation)initWithChannelID:(id)a3 externalID:(id)a4 caller:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [WLKPlayActivityDecorateVODOperation identifierForPlayActivityID:a4 channelID:a3 duration:0];
  v15 = @"deleteId";
  v16[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v11 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"watchlist/playHistory/remove" queryParameters:v10 httpMethod:@"POST" caller:v8];

  v12 = [(WLKUTSNetworkRequestOperation *)self initWithRequestProperties:v11];
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)processResponse
{
  v6 = objc_alloc_init(WLKDictionaryResponseProcessor);
  [(WLKDictionaryResponseProcessor *)v6 setObjectClass:objc_opt_class()];
  v3 = [(WLKNetworkRequestOperation *)self data];
  v4 = [(WLKDictionaryResponseProcessor *)v6 processResponseData:v3 error:0];
  response = self->_response;
  self->_response = v4;
}

@end