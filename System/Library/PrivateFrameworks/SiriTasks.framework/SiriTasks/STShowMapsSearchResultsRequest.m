@interface STShowMapsSearchResultsRequest
- (STShowMapsSearchResultsRequest)initWithCoder:(id)a3;
- (id)_initWithLocation:(id)a3 extSessionGuid:(id)a4 extSessionGuidCreatedTimestamp:(id)a5;
- (id)createResponse;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STShowMapsSearchResultsRequest

- (STShowMapsSearchResultsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STShowMapsSearchResultsRequest;
  v5 = [(AFSiriRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSTShowMapsSearchResultsRequestResultsKey"];
    searchResults = v5->_searchResults;
    v5->_searchResults = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSTShowMapsSearchResultsRequestExtSessionGuidKey"];
    extSessionGuid = v5->_extSessionGuid;
    v5->_extSessionGuid = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSTShowMapsSearchResultsRequestExtSessionGuidCreatedTimestampKey"];
    extSessionGuidCreatedTimestamp = v5->_extSessionGuidCreatedTimestamp;
    v5->_extSessionGuidCreatedTimestamp = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STShowMapsSearchResultsRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_searchResults forKey:{@"kSTShowMapsSearchResultsRequestResultsKey", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_extSessionGuid forKey:@"kSTShowMapsSearchResultsRequestExtSessionGuidKey"];
  [v4 encodeObject:self->_extSessionGuidCreatedTimestamp forKey:@"kSTShowMapsSearchResultsRequestExtSessionGuidCreatedTimestampKey"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithLocation:(id)a3 extSessionGuid:(id)a4 extSessionGuidCreatedTimestamp:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = STShowMapsSearchResultsRequest;
  v12 = [(AFSiriRequest *)&v15 init];
  p_isa = &v12->super.super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_searchResults, a3);
    objc_storeStrong(p_isa + 6, a4);
    objc_storeStrong(p_isa + 7, a5);
  }

  return p_isa;
}

@end