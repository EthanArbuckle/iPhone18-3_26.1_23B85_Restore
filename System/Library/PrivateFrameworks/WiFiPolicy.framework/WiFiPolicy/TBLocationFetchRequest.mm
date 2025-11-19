@interface TBLocationFetchRequest
+ (id)fetchRequestWithDescriptor:(id)a3 sourcePolicy:(unint64_t)a4;
- (TBLocationFetchRequest)initWithDescriptor:(id)a3 sourcePolicy:(unint64_t)a4 cacheable:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)handlePreferLocalResponse:(id)a3;
- (void)handleResponse:(id)a3;
@end

@implementation TBLocationFetchRequest

+ (id)fetchRequestWithDescriptor:(id)a3 sourcePolicy:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithDescriptor:v6 sourcePolicy:a4 cacheable:0];

  return v7;
}

- (TBLocationFetchRequest)initWithDescriptor:(id)a3 sourcePolicy:(unint64_t)a4 cacheable:(BOOL)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = TBLocationFetchRequest;
  v9 = [(TBLocationFetchRequest *)&v12 init];
  descriptor = v9->_descriptor;
  v9->_descriptor = v8;

  v9->_sourcePolicy = a4;
  v9->_cacheable = a5;
  return v9;
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v5 = [(TBLocationFetchRequest *)self resultsHandler];
  v5[2](v5, v4, 0, 1);
}

- (void)handlePreferLocalResponse:(id)a3
{
  v13 = a3;
  v4 = [v13 count];
  v5 = v13;
  if (v4)
  {
    v6 = [v13 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 created];
      [v7 timeIntervalSinceNow];
      v9 = v8;

      if (self->userInfo)
      {
        v10 = [(TBLocationFetchRequest *)self userInfo];
        v11 = [v10 mutableCopy];

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:-v9];
        [v11 setObject:v12 forKey:@"staleness"];

        [(TBLocationFetchRequest *)self setUserInfo:v11];
      }
    }

    v5 = v13;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(TBLocationFetchRequest *)self descriptor];
  v7 = [v6 copyWithZone:a3];
  [v5 setDescriptor:v7];

  [v5 setSourcePolicy:{-[TBLocationFetchRequest sourcePolicy](self, "sourcePolicy")}];
  [v5 setCacheable:{-[TBLocationFetchRequest cacheable](self, "cacheable")}];
  v8 = [(TBLocationFetchRequest *)self resultsHandler];

  if (v8)
  {
    v9 = [(TBLocationFetchRequest *)self resultsHandler];
    [v5 setResultsHandler:v9];
  }

  v10 = [(TBLocationFetchRequest *)self userInfo];

  if (v10)
  {
    v11 = [(TBLocationFetchRequest *)self userInfo];
    v12 = [v11 copyWithZone:a3];
    [v5 setUserInfo:v12];
  }

  return v5;
}

@end