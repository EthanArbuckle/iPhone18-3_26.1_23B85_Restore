@interface TBNetworkFetchRequest
+ (id)fetchRequestWithDescriptor:(id)a3 sourcePolicy:(unint64_t)a4;
- (TBNetworkFetchRequest)initWithDescriptor:(id)a3 sourcePolicy:(unint64_t)a4 cacheable:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)handleResponse:(id)a3;
@end

@implementation TBNetworkFetchRequest

+ (id)fetchRequestWithDescriptor:(id)a3 sourcePolicy:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithDescriptor:v6 sourcePolicy:a4 cacheable:0];

  return v7;
}

- (TBNetworkFetchRequest)initWithDescriptor:(id)a3 sourcePolicy:(unint64_t)a4 cacheable:(BOOL)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = TBNetworkFetchRequest;
  v9 = [(TBNetworkFetchRequest *)&v12 init];
  descriptor = v9->_descriptor;
  v9->_descriptor = v8;

  v9->_sourcePolicy = a4;
  v9->_cacheable = a5;
  return v9;
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v5 = [(TBNetworkFetchRequest *)self resultsHandler];
  v5[2](v5, v4, 0, 1);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(TBNetworkFetchRequest *)self descriptor];
  v7 = [v6 copyWithZone:a3];
  [v5 setDescriptor:v7];

  [v5 setSourcePolicy:{-[TBNetworkFetchRequest sourcePolicy](self, "sourcePolicy")}];
  [v5 setCacheable:{-[TBNetworkFetchRequest cacheable](self, "cacheable")}];
  v8 = [(TBNetworkFetchRequest *)self resultsHandler];

  if (v8)
  {
    v9 = [(TBNetworkFetchRequest *)self resultsHandler];
    [v5 setResultsHandler:v9];
  }

  v10 = [(TBNetworkFetchRequest *)self userInfo];

  if (v10)
  {
    v11 = [(TBNetworkFetchRequest *)self userInfo];
    v12 = [v11 copyWithZone:a3];
    [v5 setUserInfo:v12];
  }

  return v5;
}

@end