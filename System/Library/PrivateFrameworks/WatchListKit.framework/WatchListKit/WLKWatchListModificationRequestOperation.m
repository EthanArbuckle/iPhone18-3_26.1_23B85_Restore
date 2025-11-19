@interface WLKWatchListModificationRequestOperation
- (WLKWatchListModificationRequestOperation)initWithAction:(unint64_t)a3 channelID:(id)a4 externalID:(id)a5 caller:(id)a6;
- (id)_initWithAction:(unint64_t)a3 identifier:(id)a4 identifierType:(id)a5 brandID:(id)a6 caller:(id)a7;
- (void)processResponse;
@end

@implementation WLKWatchListModificationRequestOperation

- (id)_initWithAction:(unint64_t)a3 identifier:(id)a4 identifierType:(id)a5 brandID:(id)a6 caller:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v13)
  {
    v17 = objc_opt_new();
    [v17 setObject:v13 forKeyedSubscript:@"id"];
    [v17 setObject:v14 forKeyedSubscript:@"idType"];
    if (v15)
    {
      [v17 setObject:v15 forKeyedSubscript:@"brandId"];
    }

    if (a3 == 1)
    {
      v19 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"watchlist" queryParameters:v17 httpMethod:@"DELETE" httpBody:0 headers:0 caller:v16 timeout:0 apiVersion:&unk_288222BC0 options:0];
    }

    else if (a3)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Invalid action provided (%ld)", a3}];
      v19 = 0;
    }

    else
    {
      v18 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v17 options:0 error:0];
      v19 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"watchlist" queryParameters:0 httpMethod:@"POST" httpBody:v18 headers:&unk_288222E00 caller:v16 timeout:0 apiVersion:&unk_288222BC0 options:0];
    }

    v24.receiver = self;
    v24.super_class = WLKWatchListModificationRequestOperation;
    v21 = [(WLKUTSNetworkRequestOperation *)&v24 initWithRequestProperties:v19];
    v22 = v21;
    if (v21)
    {
      v21->_action = a3;
      objc_storeStrong(&v21->_itemID, a4);
    }

    self = v22;

    v20 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"identifier is required"];
    v20 = 0;
  }

  return v20;
}

- (WLKWatchListModificationRequestOperation)initWithAction:(unint64_t)a3 channelID:(id)a4 externalID:(id)a5 caller:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v10)
  {
    v14 = MEMORY[0x277CBEAD8];
    v15 = *MEMORY[0x277CBE660];
    v16 = @"channelID is required";
LABEL_6:
    [v14 raise:v15 format:v16];
    v13 = 0;
    goto LABEL_7;
  }

  if (!v11)
  {
    v14 = MEMORY[0x277CBEAD8];
    v15 = *MEMORY[0x277CBE660];
    v16 = @"externalID is required";
    goto LABEL_6;
  }

  self = [(WLKWatchListModificationRequestOperation *)self _initWithAction:a3 identifier:v11 identifierType:@"External" brandID:v10 caller:v12];
  v13 = self;
LABEL_7:

  return v13;
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