@interface TBTileFetchRequest
- (TBTileFetchRequest)initWithDescriptor:(id)a3 sourcePolicy:(unint64_t)a4 cacheable:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)handlePreferLocalResponse:(id)a3;
- (void)handleResponse:(id)a3;
@end

@implementation TBTileFetchRequest

- (TBTileFetchRequest)initWithDescriptor:(id)a3 sourcePolicy:(unint64_t)a4 cacheable:(BOOL)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = TBTileFetchRequest;
  v9 = [(TBTileFetchRequest *)&v12 init];
  descriptor = v9->_descriptor;
  v9->_descriptor = v8;

  v9->_sourcePolicy = a4;
  v9->_cacheable = a5;
  return v9;
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  v5 = [(TBTileFetchRequest *)self resultsHandler];
  v5[2](v5, v4, 0, 1);
}

- (void)handlePreferLocalResponse:(id)a3
{
  v11 = a3;
  if ([v11 count])
  {
    v4 = [v11 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 created];
      [v5 timeIntervalSinceNow];
      v7 = v6;

      if (self->userInfo)
      {
        v8 = [(TBTileFetchRequest *)self userInfo];
        v9 = [v8 mutableCopy];

        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:-v7];
        [v9 setObject:v10 forKey:@"staleness"];

        [(TBTileFetchRequest *)self setUserInfo:v9];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(TBTileFetchRequest *)self descriptor];
  v7 = [v6 copyWithZone:a3];
  [v5 setDescriptor:v7];

  [v5 setSourcePolicy:{-[TBTileFetchRequest sourcePolicy](self, "sourcePolicy")}];
  [v5 setCacheable:{-[TBTileFetchRequest cacheable](self, "cacheable")}];
  v8 = [(TBTileFetchRequest *)self resultsHandler];

  if (v8)
  {
    v9 = [(TBTileFetchRequest *)self resultsHandler];
    [v5 setResultsHandler:v9];
  }

  v10 = [(TBTileFetchRequest *)self userInfo];

  if (v10)
  {
    v11 = [(TBTileFetchRequest *)self userInfo];
    v12 = [v11 copyWithZone:a3];
    [v5 setUserInfo:v12];
  }

  return v5;
}

@end