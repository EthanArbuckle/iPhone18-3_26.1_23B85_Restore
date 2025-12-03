@interface TBTileFetchRequest
- (TBTileFetchRequest)initWithDescriptor:(id)descriptor sourcePolicy:(unint64_t)policy cacheable:(BOOL)cacheable;
- (id)copyWithZone:(_NSZone *)zone;
- (void)handlePreferLocalResponse:(id)response;
- (void)handleResponse:(id)response;
@end

@implementation TBTileFetchRequest

- (TBTileFetchRequest)initWithDescriptor:(id)descriptor sourcePolicy:(unint64_t)policy cacheable:(BOOL)cacheable
{
  descriptorCopy = descriptor;
  v12.receiver = self;
  v12.super_class = TBTileFetchRequest;
  v9 = [(TBTileFetchRequest *)&v12 init];
  descriptor = v9->_descriptor;
  v9->_descriptor = descriptorCopy;

  v9->_sourcePolicy = policy;
  v9->_cacheable = cacheable;
  return v9;
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  resultsHandler = [(TBTileFetchRequest *)self resultsHandler];
  resultsHandler[2](resultsHandler, responseCopy, 0, 1);
}

- (void)handlePreferLocalResponse:(id)response
{
  responseCopy = response;
  if ([responseCopy count])
  {
    v4 = [responseCopy objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      created = [v4 created];
      [created timeIntervalSinceNow];
      v7 = v6;

      if (self->userInfo)
      {
        userInfo = [(TBTileFetchRequest *)self userInfo];
        v9 = [userInfo mutableCopy];

        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:-v7];
        [v9 setObject:v10 forKey:@"staleness"];

        [(TBTileFetchRequest *)self setUserInfo:v9];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  descriptor = [(TBTileFetchRequest *)self descriptor];
  v7 = [descriptor copyWithZone:zone];
  [v5 setDescriptor:v7];

  [v5 setSourcePolicy:{-[TBTileFetchRequest sourcePolicy](self, "sourcePolicy")}];
  [v5 setCacheable:{-[TBTileFetchRequest cacheable](self, "cacheable")}];
  resultsHandler = [(TBTileFetchRequest *)self resultsHandler];

  if (resultsHandler)
  {
    resultsHandler2 = [(TBTileFetchRequest *)self resultsHandler];
    [v5 setResultsHandler:resultsHandler2];
  }

  userInfo = [(TBTileFetchRequest *)self userInfo];

  if (userInfo)
  {
    userInfo2 = [(TBTileFetchRequest *)self userInfo];
    v12 = [userInfo2 copyWithZone:zone];
    [v5 setUserInfo:v12];
  }

  return v5;
}

@end