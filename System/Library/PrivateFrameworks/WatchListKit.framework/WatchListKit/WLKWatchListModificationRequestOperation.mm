@interface WLKWatchListModificationRequestOperation
- (WLKWatchListModificationRequestOperation)initWithAction:(unint64_t)action channelID:(id)d externalID:(id)iD caller:(id)caller;
- (id)_initWithAction:(unint64_t)action identifier:(id)identifier identifierType:(id)type brandID:(id)d caller:(id)caller;
- (void)processResponse;
@end

@implementation WLKWatchListModificationRequestOperation

- (id)_initWithAction:(unint64_t)action identifier:(id)identifier identifierType:(id)type brandID:(id)d caller:(id)caller
{
  identifierCopy = identifier;
  typeCopy = type;
  dCopy = d;
  callerCopy = caller;
  if (identifierCopy)
  {
    v17 = objc_opt_new();
    [v17 setObject:identifierCopy forKeyedSubscript:@"id"];
    [v17 setObject:typeCopy forKeyedSubscript:@"idType"];
    if (dCopy)
    {
      [v17 setObject:dCopy forKeyedSubscript:@"brandId"];
    }

    if (action == 1)
    {
      v19 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"watchlist" queryParameters:v17 httpMethod:@"DELETE" httpBody:0 headers:0 caller:callerCopy timeout:0 apiVersion:&unk_288222BC0 options:0];
    }

    else if (action)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Invalid action provided (%ld)", action}];
      v19 = 0;
    }

    else
    {
      v18 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v17 options:0 error:0];
      v19 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"watchlist" queryParameters:0 httpMethod:@"POST" httpBody:v18 headers:&unk_288222E00 caller:callerCopy timeout:0 apiVersion:&unk_288222BC0 options:0];
    }

    v24.receiver = self;
    v24.super_class = WLKWatchListModificationRequestOperation;
    v21 = [(WLKUTSNetworkRequestOperation *)&v24 initWithRequestProperties:v19];
    v22 = v21;
    if (v21)
    {
      v21->_action = action;
      objc_storeStrong(&v21->_itemID, identifier);
    }

    self = v22;

    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"identifier is required"];
    selfCopy = 0;
  }

  return selfCopy;
}

- (WLKWatchListModificationRequestOperation)initWithAction:(unint64_t)action channelID:(id)d externalID:(id)iD caller:(id)caller
{
  dCopy = d;
  iDCopy = iD;
  callerCopy = caller;
  if (!dCopy)
  {
    v14 = MEMORY[0x277CBEAD8];
    v15 = *MEMORY[0x277CBE660];
    v16 = @"channelID is required";
LABEL_6:
    [v14 raise:v15 format:v16];
    selfCopy = 0;
    goto LABEL_7;
  }

  if (!iDCopy)
  {
    v14 = MEMORY[0x277CBEAD8];
    v15 = *MEMORY[0x277CBE660];
    v16 = @"externalID is required";
    goto LABEL_6;
  }

  self = [(WLKWatchListModificationRequestOperation *)self _initWithAction:action identifier:iDCopy identifierType:@"External" brandID:dCopy caller:callerCopy];
  selfCopy = self;
LABEL_7:

  return selfCopy;
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

@end