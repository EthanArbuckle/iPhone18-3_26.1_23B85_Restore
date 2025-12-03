@interface WLKBasicContentRequestOperation
- (WLKBasicContentMetadata)basicContentMetadata;
- (WLKBasicContentRequestOperation)initWithContentID:(id)d caller:(id)caller;
- (WLKBasicContentRequestOperation)initWithContentIDs:(id)ds caller:(id)caller;
- (void)processResponse;
@end

@implementation WLKBasicContentRequestOperation

- (WLKBasicContentRequestOperation)initWithContentID:(id)d caller:(id)caller
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = MEMORY[0x277CBEA60];
  callerCopy = caller;
  dCopy2 = d;
  v9 = [v6 arrayWithObjects:&dCopy count:1];

  v10 = [(WLKBasicContentRequestOperation *)self initWithContentIDs:v9 caller:callerCopy, dCopy, v14];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (WLKBasicContentRequestOperation)initWithContentIDs:(id)ds caller:(id)caller
{
  dsCopy = ds;
  v7 = MEMORY[0x277CBEB38];
  callerCopy = caller;
  v9 = objc_alloc_init(v7);
  v10 = [dsCopy componentsJoinedByString:{@", "}];
  [v9 setObject:v10 forKey:@"ids"];

  v11 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"content/get" queryParameters:v9 httpMethod:0 caller:callerCopy];

  v16.receiver = self;
  v16.super_class = WLKBasicContentRequestOperation;
  v12 = [(WLKUTSNetworkRequestOperation *)&v16 initWithRequestProperties:v11];
  if (v12)
  {
    v13 = [dsCopy copy];
    contentIDs = v12->_contentIDs;
    v12->_contentIDs = v13;
  }

  return v12;
}

- (void)processResponse
{
  v6 = objc_alloc_init(WLKDictionaryResponseProcessor);
  [(WLKDictionaryResponseProcessor *)v6 setObjectClass:objc_opt_class()];
  data = [(WLKNetworkRequestOperation *)self data];
  v4 = [(WLKDictionaryResponseProcessor *)v6 processResponseData:data error:0];
  response = self->_response;
  self->_response = v4;
}

- (WLKBasicContentMetadata)basicContentMetadata
{
  response = [(WLKBasicContentRequestOperation *)self response];
  items = [response items];
  firstObject = [items firstObject];

  return firstObject;
}

@end