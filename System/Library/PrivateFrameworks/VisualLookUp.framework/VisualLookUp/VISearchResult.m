@interface VISearchResult
+ (id)empty;
- (BOOL)isEqual:(id)a3;
- (VISearchResult)initWithRegionOfInterestResults:(id)a3;
- (VISearchResult)initWithRegionOfInterestResults:(id)a3 userFeedbackPayload:(id)a4;
@end

@implementation VISearchResult

- (VISearchResult)initWithRegionOfInterestResults:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VISearchResult;
  v5 = [(VISearchResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    regionOfInterestResults = v5->_regionOfInterestResults;
    v5->_regionOfInterestResults = v6;
  }

  return v5;
}

- (VISearchResult)initWithRegionOfInterestResults:(id)a3 userFeedbackPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = VISearchResult;
  v8 = [(VISearchResult *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    regionOfInterestResults = v8->_regionOfInterestResults;
    v8->_regionOfInterestResults = v9;

    v11 = [v7 copy];
    userFeedbackPayload = v8->_userFeedbackPayload;
    v8->_userFeedbackPayload = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v15 = v5;
  v16 = v3;
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  regionOfInterestResults = self->_regionOfInterestResults;
  v13 = [v11 regionOfInterestResults];
  LOBYTE(regionOfInterestResults) = VIObjectIsEqual(regionOfInterestResults, v13);

  return regionOfInterestResults;
}

+ (id)empty
{
  v2 = [VISearchResult alloc];
  v3 = [(VISearchResult *)v2 initWithRegionOfInterestResults:MEMORY[0x1E695E0F0]];

  return v3;
}

@end