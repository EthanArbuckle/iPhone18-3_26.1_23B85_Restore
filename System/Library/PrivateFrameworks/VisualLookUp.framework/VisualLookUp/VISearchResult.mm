@interface VISearchResult
+ (id)empty;
- (BOOL)isEqual:(id)equal;
- (VISearchResult)initWithRegionOfInterestResults:(id)results;
- (VISearchResult)initWithRegionOfInterestResults:(id)results userFeedbackPayload:(id)payload;
@end

@implementation VISearchResult

- (VISearchResult)initWithRegionOfInterestResults:(id)results
{
  resultsCopy = results;
  v9.receiver = self;
  v9.super_class = VISearchResult;
  v5 = [(VISearchResult *)&v9 init];
  if (v5)
  {
    v6 = [resultsCopy copy];
    regionOfInterestResults = v5->_regionOfInterestResults;
    v5->_regionOfInterestResults = v6;
  }

  return v5;
}

- (VISearchResult)initWithRegionOfInterestResults:(id)results userFeedbackPayload:(id)payload
{
  resultsCopy = results;
  payloadCopy = payload;
  v14.receiver = self;
  v14.super_class = VISearchResult;
  v8 = [(VISearchResult *)&v14 init];
  if (v8)
  {
    v9 = [resultsCopy copy];
    regionOfInterestResults = v8->_regionOfInterestResults;
    v8->_regionOfInterestResults = v9;

    v11 = [payloadCopy copy];
    userFeedbackPayload = v8->_userFeedbackPayload;
    v8->_userFeedbackPayload = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  v15 = v5;
  v16 = v3;
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = equalCopy;
  }

  else
  {
    v11 = 0;
  }

  regionOfInterestResults = self->_regionOfInterestResults;
  regionOfInterestResults = [v11 regionOfInterestResults];
  LOBYTE(regionOfInterestResults) = VIObjectIsEqual(regionOfInterestResults, regionOfInterestResults);

  return regionOfInterestResults;
}

+ (id)empty
{
  v2 = [VISearchResult alloc];
  v3 = [(VISearchResult *)v2 initWithRegionOfInterestResults:MEMORY[0x1E695E0F0]];

  return v3;
}

@end