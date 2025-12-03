@interface TBNetworkFetchRequest
+ (id)fetchRequestWithDescriptor:(id)descriptor sourcePolicy:(unint64_t)policy;
- (TBNetworkFetchRequest)initWithDescriptor:(id)descriptor sourcePolicy:(unint64_t)policy cacheable:(BOOL)cacheable;
- (id)copyWithZone:(_NSZone *)zone;
- (void)handleResponse:(id)response;
@end

@implementation TBNetworkFetchRequest

+ (id)fetchRequestWithDescriptor:(id)descriptor sourcePolicy:(unint64_t)policy
{
  descriptorCopy = descriptor;
  v7 = [[self alloc] initWithDescriptor:descriptorCopy sourcePolicy:policy cacheable:0];

  return v7;
}

- (TBNetworkFetchRequest)initWithDescriptor:(id)descriptor sourcePolicy:(unint64_t)policy cacheable:(BOOL)cacheable
{
  descriptorCopy = descriptor;
  v12.receiver = self;
  v12.super_class = TBNetworkFetchRequest;
  v9 = [(TBNetworkFetchRequest *)&v12 init];
  descriptor = v9->_descriptor;
  v9->_descriptor = descriptorCopy;

  v9->_sourcePolicy = policy;
  v9->_cacheable = cacheable;
  return v9;
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  resultsHandler = [(TBNetworkFetchRequest *)self resultsHandler];
  resultsHandler[2](resultsHandler, responseCopy, 0, 1);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  descriptor = [(TBNetworkFetchRequest *)self descriptor];
  v7 = [descriptor copyWithZone:zone];
  [v5 setDescriptor:v7];

  [v5 setSourcePolicy:{-[TBNetworkFetchRequest sourcePolicy](self, "sourcePolicy")}];
  [v5 setCacheable:{-[TBNetworkFetchRequest cacheable](self, "cacheable")}];
  resultsHandler = [(TBNetworkFetchRequest *)self resultsHandler];

  if (resultsHandler)
  {
    resultsHandler2 = [(TBNetworkFetchRequest *)self resultsHandler];
    [v5 setResultsHandler:resultsHandler2];
  }

  userInfo = [(TBNetworkFetchRequest *)self userInfo];

  if (userInfo)
  {
    userInfo2 = [(TBNetworkFetchRequest *)self userInfo];
    v12 = [userInfo2 copyWithZone:zone];
    [v5 setUserInfo:v12];
  }

  return v5;
}

@end