@interface STShowMapsSearchResultsRequest
- (STShowMapsSearchResultsRequest)initWithCoder:(id)coder;
- (id)_initWithLocation:(id)location extSessionGuid:(id)guid extSessionGuidCreatedTimestamp:(id)timestamp;
- (id)createResponse;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STShowMapsSearchResultsRequest

- (STShowMapsSearchResultsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = STShowMapsSearchResultsRequest;
  v5 = [(AFSiriRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSTShowMapsSearchResultsRequestResultsKey"];
    searchResults = v5->_searchResults;
    v5->_searchResults = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSTShowMapsSearchResultsRequestExtSessionGuidKey"];
    extSessionGuid = v5->_extSessionGuid;
    v5->_extSessionGuid = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSTShowMapsSearchResultsRequestExtSessionGuidCreatedTimestampKey"];
    extSessionGuidCreatedTimestamp = v5->_extSessionGuidCreatedTimestamp;
    v5->_extSessionGuidCreatedTimestamp = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STShowMapsSearchResultsRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_searchResults forKey:{@"kSTShowMapsSearchResultsRequestResultsKey", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_extSessionGuid forKey:@"kSTShowMapsSearchResultsRequestExtSessionGuidKey"];
  [coderCopy encodeObject:self->_extSessionGuidCreatedTimestamp forKey:@"kSTShowMapsSearchResultsRequestExtSessionGuidCreatedTimestampKey"];
}

- (id)createResponse
{
  v2 = [objc_alloc(MEMORY[0x277CEF3F8]) _initWithRequest:self];

  return v2;
}

- (id)_initWithLocation:(id)location extSessionGuid:(id)guid extSessionGuidCreatedTimestamp:(id)timestamp
{
  locationCopy = location;
  guidCopy = guid;
  timestampCopy = timestamp;
  v15.receiver = self;
  v15.super_class = STShowMapsSearchResultsRequest;
  v12 = [(AFSiriRequest *)&v15 init];
  p_isa = &v12->super.super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_searchResults, location);
    objc_storeStrong(p_isa + 6, guid);
    objc_storeStrong(p_isa + 7, timestamp);
  }

  return p_isa;
}

@end