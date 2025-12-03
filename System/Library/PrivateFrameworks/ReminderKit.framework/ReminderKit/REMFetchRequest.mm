@interface REMFetchRequest
- (REMFetchRequest)fetchRequestWithFetchResultToken:(id)token;
- (REMFetchRequest)initWithCoder:(id)coder;
- (REMFetchRequest)initWithFetchExecutor:(id)executor;
- (id)copyWithType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)countOnlyFetchRequest;
- (id)description;
- (id)metadataFetchRequest;
- (id)objectIDsOnlyFetchRequest;
- (id)storagesAndParentFetchRequest;
- (id)storagesOnlyFetchRequest;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMFetchRequest

- (REMFetchRequest)initWithFetchExecutor:(id)executor
{
  executorCopy = executor;
  v9.receiver = self;
  v9.super_class = REMFetchRequest;
  v6 = [(REMFetchRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 0;
    objc_storeStrong(&v6->_fetchExecutor, executor);
    v7->_fetchLimit = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)storagesAndParentFetchRequest
{
  v2 = [(REMFetchRequest *)self copyWithType:0];

  return v2;
}

- (id)storagesOnlyFetchRequest
{
  v2 = [(REMFetchRequest *)self copyWithType:1];

  return v2;
}

- (id)countOnlyFetchRequest
{
  v2 = [(REMFetchRequest *)self copyWithType:2];

  return v2;
}

- (id)objectIDsOnlyFetchRequest
{
  v2 = [(REMFetchRequest *)self copyWithType:3];

  return v2;
}

- (id)metadataFetchRequest
{
  v2 = [(REMFetchRequest *)self copyWithType:4];

  return v2;
}

- (REMFetchRequest)fetchRequestWithFetchResultToken:(id)token
{
  tokenCopy = token;
  v5 = [(REMFetchRequest *)self copy];
  [v5 setFetchResultToken:tokenCopy];

  return v5;
}

- (id)copyWithType:(int64_t)type
{
  v4 = [(REMFetchRequest *)self copy];
  [v4 setType:type];
  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [REMFetchRequest alloc];
  fetchExecutor = [(REMFetchRequest *)self fetchExecutor];
  v6 = [(REMFetchRequest *)v4 initWithFetchExecutor:fetchExecutor];

  [(REMFetchRequest *)v6 setType:[(REMFetchRequest *)self type]];
  [(REMFetchRequest *)v6 setFetchLimit:[(REMFetchRequest *)self fetchLimit]];
  fetchResultToken = [(REMFetchRequest *)self fetchResultToken];
  [(REMFetchRequest *)v6 setFetchResultToken:fetchResultToken];

  return v6;
}

- (REMFetchRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fetchExecutor"];
  v6 = [(REMFetchRequest *)self initWithFetchExecutor:v5];

  if (v6)
  {
    v7 = [coderCopy decodeIntegerForKey:@"type"];
    if (v7 >= 5)
    {
      v8 = os_log_create("com.apple.reminderkit", "default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(REMFetchResult *)v7 initWithCoder:v8];
      }

      v7 = 2;
    }

    v6->_type = v7;
    v6->_fetchLimit = [coderCopy decodeIntegerForKey:@"fetchLimit"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fetchResultToken"];
    fetchResultToken = v6->_fetchResultToken;
    v6->_fetchResultToken = v9;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[REMFetchRequest type](self forKey:{"type"), @"type"}];
  fetchExecutor = [(REMFetchRequest *)self fetchExecutor];
  [coderCopy encodeObject:fetchExecutor forKey:@"fetchExecutor"];

  [coderCopy encodeInteger:-[REMFetchRequest fetchLimit](self forKey:{"fetchLimit"), @"fetchLimit"}];
  fetchResultToken = [(REMFetchRequest *)self fetchResultToken];
  [coderCopy encodeObject:fetchResultToken forKey:@"fetchResultToken"];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  fetchResultToken = [(REMFetchRequest *)self fetchResultToken];

  if (fetchResultToken)
  {
    v5 = MEMORY[0x1E696AEC0];
    fetchResultToken2 = [(REMFetchRequest *)self fetchResultToken];
    v7 = [v5 stringWithFormat:@"fetchResultToken: %@", fetchResultToken2];

    [v3 addObject:v7];
  }

  else
  {
    v7 = &stru_1F0D67F00;
  }

  v8 = [v3 componentsJoinedByString:{@", "}];
  if ([v8 length])
  {
    v9 = [@" "];

    v8 = v9;
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v12 = NSStringFromREMFetchRequestType([(REMFetchRequest *)self type]);
  fetchExecutor = [(REMFetchRequest *)self fetchExecutor];
  v14 = [v10 stringWithFormat:@"<%@: %p type: %@, executor:%@%@>", v11, self, v12, fetchExecutor, v8];

  return v14;
}

@end