@interface WLKCanonicalPlayablesRequestOperation
- (WLKCanonicalPlayablesRequestOperation)initWithContentID:(id)d caller:(id)caller canonicalType:(int64_t)type;
- (WLKCanonicalPlayablesRequestOperation)initWithContentID:(id)d caller:(id)caller isMovie:(BOOL)movie;
- (WLKCanonicalPlayablesRequestOperation)initWithContentID:(id)d profiles:(id)profiles caller:(id)caller;
- (void)processResponse;
@end

@implementation WLKCanonicalPlayablesRequestOperation

- (WLKCanonicalPlayablesRequestOperation)initWithContentID:(id)d profiles:(id)profiles caller:(id)caller
{
  dCopy = d;
  profilesCopy = profiles;
  v10 = MEMORY[0x277CBEB38];
  callerCopy = caller;
  v12 = objc_alloc_init(v10);
  if ([profilesCopy count])
  {
    v13 = [profilesCopy componentsJoinedByString:{@", "}];
    [v12 setObject:v13 forKey:@"profiles"];
  }

  v14 = [@"view/product/{id}/personalized" stringByReplacingOccurrencesOfString:@"{id}" withString:dCopy];
  v15 = [WLKURLRequestProperties requestPropertiesWithEndpoint:v14 queryParameters:v12 httpMethod:0 caller:callerCopy];

  v20.receiver = self;
  v20.super_class = WLKCanonicalPlayablesRequestOperation;
  v16 = [(WLKUTSNetworkRequestOperation *)&v20 initWithRequestProperties:v15];
  if (v16)
  {
    v17 = [dCopy copy];
    contentID = v16->_contentID;
    v16->_contentID = v17;
  }

  return v16;
}

- (WLKCanonicalPlayablesRequestOperation)initWithContentID:(id)d caller:(id)caller isMovie:(BOOL)movie
{
  dCopy = d;
  callerCopy = caller;
  if (movie)
  {
    v10 = @"/movies/{movieId}";
    v11 = @"{movieId}";
  }

  else
  {
    v10 = @"/shows/{showId}";
    v11 = @"{showId}";
  }

  v12 = [(__CFString *)v10 stringByReplacingOccurrencesOfString:v11 withString:dCopy];
  v13 = [WLKURLRequestProperties requestPropertiesWithEndpoint:v12 queryParameters:&unk_288222EA0 httpMethod:@"GET" httpBody:0 headers:0 caller:callerCopy timeout:0 apiVersion:&unk_288222CE0 options:0];
  v18.receiver = self;
  v18.super_class = WLKCanonicalPlayablesRequestOperation;
  v14 = [(WLKUTSNetworkRequestOperation *)&v18 initWithRequestProperties:v13];
  if (v14)
  {
    v15 = [dCopy copy];
    contentID = v14->_contentID;
    v14->_contentID = v15;
  }

  return v14;
}

- (WLKCanonicalPlayablesRequestOperation)initWithContentID:(id)d caller:(id)caller canonicalType:(int64_t)type
{
  dCopy = d;
  callerCopy = caller;
  if (type > 1)
  {
    if (type == 2)
    {
      v10 = @"/sporting-events/{sportingEventId}";
      v11 = @"{sportingEventId}";
      goto LABEL_11;
    }

    if (type == 3)
    {
      v10 = @"/episodes/{episodeId}";
      v11 = @"{episodeId}";
      goto LABEL_11;
    }

LABEL_8:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid canonical type."];
    v12 = 0;
    goto LABEL_12;
  }

  if (!type)
  {
    v10 = @"/shows/{showId}";
    v11 = @"{showId}";
    goto LABEL_11;
  }

  if (type != 1)
  {
    goto LABEL_8;
  }

  v10 = @"/movies/{movieId}";
  v11 = @"{movieId}";
LABEL_11:
  v12 = [(__CFString *)v10 stringByReplacingOccurrencesOfString:v11 withString:dCopy];
LABEL_12:
  v13 = [WLKURLRequestProperties requestPropertiesWithEndpoint:v12 queryParameters:&unk_288222EC8 httpMethod:@"GET" httpBody:0 headers:0 caller:callerCopy timeout:0 apiVersion:&unk_288222CE0 options:0];
  v18.receiver = self;
  v18.super_class = WLKCanonicalPlayablesRequestOperation;
  v14 = [(WLKUTSNetworkRequestOperation *)&v18 initWithRequestProperties:v13];
  if (v14)
  {
    v15 = [dCopy copy];
    contentID = v14->_contentID;
    v14->_contentID = v15;
  }

  return v14;
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