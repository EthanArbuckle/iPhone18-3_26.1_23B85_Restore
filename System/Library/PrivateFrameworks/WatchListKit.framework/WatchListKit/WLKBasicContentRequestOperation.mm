@interface WLKBasicContentRequestOperation
- (WLKBasicContentMetadata)basicContentMetadata;
- (WLKBasicContentRequestOperation)initWithContentID:(id)a3 caller:(id)a4;
- (WLKBasicContentRequestOperation)initWithContentIDs:(id)a3 caller:(id)a4;
- (void)processResponse;
@end

@implementation WLKBasicContentRequestOperation

- (WLKBasicContentRequestOperation)initWithContentID:(id)a3 caller:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v13 count:1];

  v10 = [(WLKBasicContentRequestOperation *)self initWithContentIDs:v9 caller:v7, v13, v14];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (WLKBasicContentRequestOperation)initWithContentIDs:(id)a3 caller:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CBEB38];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  v10 = [v6 componentsJoinedByString:{@", "}];
  [v9 setObject:v10 forKey:@"ids"];

  v11 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"content/get" queryParameters:v9 httpMethod:0 caller:v8];

  v16.receiver = self;
  v16.super_class = WLKBasicContentRequestOperation;
  v12 = [(WLKUTSNetworkRequestOperation *)&v16 initWithRequestProperties:v11];
  if (v12)
  {
    v13 = [v6 copy];
    contentIDs = v12->_contentIDs;
    v12->_contentIDs = v13;
  }

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

- (WLKBasicContentMetadata)basicContentMetadata
{
  v2 = [(WLKBasicContentRequestOperation *)self response];
  v3 = [v2 items];
  v4 = [v3 firstObject];

  return v4;
}

@end