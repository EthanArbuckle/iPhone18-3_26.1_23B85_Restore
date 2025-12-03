@interface TBLocationFetchRequest
+ (id)fetchRequestWithDescriptor:(id)descriptor sourcePolicy:(unint64_t)policy;
- (TBLocationFetchRequest)initWithDescriptor:(id)descriptor sourcePolicy:(unint64_t)policy cacheable:(BOOL)cacheable;
- (id)copyWithZone:(_NSZone *)zone;
- (void)handlePreferLocalResponse:(id)response;
- (void)handleResponse:(id)response;
@end

@implementation TBLocationFetchRequest

+ (id)fetchRequestWithDescriptor:(id)descriptor sourcePolicy:(unint64_t)policy
{
  descriptorCopy = descriptor;
  v7 = [[self alloc] initWithDescriptor:descriptorCopy sourcePolicy:policy cacheable:0];

  return v7;
}

- (TBLocationFetchRequest)initWithDescriptor:(id)descriptor sourcePolicy:(unint64_t)policy cacheable:(BOOL)cacheable
{
  descriptorCopy = descriptor;
  v12.receiver = self;
  v12.super_class = TBLocationFetchRequest;
  v9 = [(TBLocationFetchRequest *)&v12 init];
  descriptor = v9->_descriptor;
  v9->_descriptor = descriptorCopy;

  v9->_sourcePolicy = policy;
  v9->_cacheable = cacheable;
  return v9;
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  resultsHandler = [(TBLocationFetchRequest *)self resultsHandler];
  resultsHandler[2](resultsHandler, responseCopy, 0, 1);
}

- (void)handlePreferLocalResponse:(id)response
{
  responseCopy = response;
  v4 = [responseCopy count];
  v5 = responseCopy;
  if (v4)
  {
    v6 = [responseCopy objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      created = [v6 created];
      [created timeIntervalSinceNow];
      v9 = v8;

      if (self->userInfo)
      {
        userInfo = [(TBLocationFetchRequest *)self userInfo];
        v11 = [userInfo mutableCopy];

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:-v9];
        [v11 setObject:v12 forKey:@"staleness"];

        [(TBLocationFetchRequest *)self setUserInfo:v11];
      }
    }

    v5 = responseCopy;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  descriptor = [(TBLocationFetchRequest *)self descriptor];
  v7 = [descriptor copyWithZone:zone];
  [v5 setDescriptor:v7];

  [v5 setSourcePolicy:{-[TBLocationFetchRequest sourcePolicy](self, "sourcePolicy")}];
  [v5 setCacheable:{-[TBLocationFetchRequest cacheable](self, "cacheable")}];
  resultsHandler = [(TBLocationFetchRequest *)self resultsHandler];

  if (resultsHandler)
  {
    resultsHandler2 = [(TBLocationFetchRequest *)self resultsHandler];
    [v5 setResultsHandler:resultsHandler2];
  }

  userInfo = [(TBLocationFetchRequest *)self userInfo];

  if (userInfo)
  {
    userInfo2 = [(TBLocationFetchRequest *)self userInfo];
    v12 = [userInfo2 copyWithZone:zone];
    [v5 setUserInfo:v12];
  }

  return v5;
}

@end