@interface WLKCanonicalPlayablesRequestOperation
- (WLKCanonicalPlayablesRequestOperation)initWithContentID:(id)a3 caller:(id)a4 canonicalType:(int64_t)a5;
- (WLKCanonicalPlayablesRequestOperation)initWithContentID:(id)a3 caller:(id)a4 isMovie:(BOOL)a5;
- (WLKCanonicalPlayablesRequestOperation)initWithContentID:(id)a3 profiles:(id)a4 caller:(id)a5;
- (void)processResponse;
@end

@implementation WLKCanonicalPlayablesRequestOperation

- (WLKCanonicalPlayablesRequestOperation)initWithContentID:(id)a3 profiles:(id)a4 caller:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CBEB38];
  v11 = a5;
  v12 = objc_alloc_init(v10);
  if ([v9 count])
  {
    v13 = [v9 componentsJoinedByString:{@", "}];
    [v12 setObject:v13 forKey:@"profiles"];
  }

  v14 = [@"view/product/{id}/personalized" stringByReplacingOccurrencesOfString:@"{id}" withString:v8];
  v15 = [WLKURLRequestProperties requestPropertiesWithEndpoint:v14 queryParameters:v12 httpMethod:0 caller:v11];

  v20.receiver = self;
  v20.super_class = WLKCanonicalPlayablesRequestOperation;
  v16 = [(WLKUTSNetworkRequestOperation *)&v20 initWithRequestProperties:v15];
  if (v16)
  {
    v17 = [v8 copy];
    contentID = v16->_contentID;
    v16->_contentID = v17;
  }

  return v16;
}

- (WLKCanonicalPlayablesRequestOperation)initWithContentID:(id)a3 caller:(id)a4 isMovie:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v10 = @"/movies/{movieId}";
    v11 = @"{movieId}";
  }

  else
  {
    v10 = @"/shows/{showId}";
    v11 = @"{showId}";
  }

  v12 = [(__CFString *)v10 stringByReplacingOccurrencesOfString:v11 withString:v8];
  v13 = [WLKURLRequestProperties requestPropertiesWithEndpoint:v12 queryParameters:&unk_288222EA0 httpMethod:@"GET" httpBody:0 headers:0 caller:v9 timeout:0 apiVersion:&unk_288222CE0 options:0];
  v18.receiver = self;
  v18.super_class = WLKCanonicalPlayablesRequestOperation;
  v14 = [(WLKUTSNetworkRequestOperation *)&v18 initWithRequestProperties:v13];
  if (v14)
  {
    v15 = [v8 copy];
    contentID = v14->_contentID;
    v14->_contentID = v15;
  }

  return v14;
}

- (WLKCanonicalPlayablesRequestOperation)initWithContentID:(id)a3 caller:(id)a4 canonicalType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 > 1)
  {
    if (a5 == 2)
    {
      v10 = @"/sporting-events/{sportingEventId}";
      v11 = @"{sportingEventId}";
      goto LABEL_11;
    }

    if (a5 == 3)
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

  if (!a5)
  {
    v10 = @"/shows/{showId}";
    v11 = @"{showId}";
    goto LABEL_11;
  }

  if (a5 != 1)
  {
    goto LABEL_8;
  }

  v10 = @"/movies/{movieId}";
  v11 = @"{movieId}";
LABEL_11:
  v12 = [(__CFString *)v10 stringByReplacingOccurrencesOfString:v11 withString:v8];
LABEL_12:
  v13 = [WLKURLRequestProperties requestPropertiesWithEndpoint:v12 queryParameters:&unk_288222EC8 httpMethod:@"GET" httpBody:0 headers:0 caller:v9 timeout:0 apiVersion:&unk_288222CE0 options:0];
  v18.receiver = self;
  v18.super_class = WLKCanonicalPlayablesRequestOperation;
  v14 = [(WLKUTSNetworkRequestOperation *)&v18 initWithRequestProperties:v13];
  if (v14)
  {
    v15 = [v8 copy];
    contentID = v14->_contentID;
    v14->_contentID = v15;
  }

  return v14;
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