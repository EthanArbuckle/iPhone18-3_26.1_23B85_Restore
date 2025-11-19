@interface REMFetchRequest
- (REMFetchRequest)fetchRequestWithFetchResultToken:(id)a3;
- (REMFetchRequest)initWithCoder:(id)a3;
- (REMFetchRequest)initWithFetchExecutor:(id)a3;
- (id)copyWithType:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)countOnlyFetchRequest;
- (id)description;
- (id)metadataFetchRequest;
- (id)objectIDsOnlyFetchRequest;
- (id)storagesAndParentFetchRequest;
- (id)storagesOnlyFetchRequest;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMFetchRequest

- (REMFetchRequest)initWithFetchExecutor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMFetchRequest;
  v6 = [(REMFetchRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 0;
    objc_storeStrong(&v6->_fetchExecutor, a3);
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

- (REMFetchRequest)fetchRequestWithFetchResultToken:(id)a3
{
  v4 = a3;
  v5 = [(REMFetchRequest *)self copy];
  [v5 setFetchResultToken:v4];

  return v5;
}

- (id)copyWithType:(int64_t)a3
{
  v4 = [(REMFetchRequest *)self copy];
  [v4 setType:a3];
  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [REMFetchRequest alloc];
  v5 = [(REMFetchRequest *)self fetchExecutor];
  v6 = [(REMFetchRequest *)v4 initWithFetchExecutor:v5];

  [(REMFetchRequest *)v6 setType:[(REMFetchRequest *)self type]];
  [(REMFetchRequest *)v6 setFetchLimit:[(REMFetchRequest *)self fetchLimit]];
  v7 = [(REMFetchRequest *)self fetchResultToken];
  [(REMFetchRequest *)v6 setFetchResultToken:v7];

  return v6;
}

- (REMFetchRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fetchExecutor"];
  v6 = [(REMFetchRequest *)self initWithFetchExecutor:v5];

  if (v6)
  {
    v7 = [v4 decodeIntegerForKey:@"type"];
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
    v6->_fetchLimit = [v4 decodeIntegerForKey:@"fetchLimit"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fetchResultToken"];
    fetchResultToken = v6->_fetchResultToken;
    v6->_fetchResultToken = v9;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[REMFetchRequest type](self forKey:{"type"), @"type"}];
  v5 = [(REMFetchRequest *)self fetchExecutor];
  [v4 encodeObject:v5 forKey:@"fetchExecutor"];

  [v4 encodeInteger:-[REMFetchRequest fetchLimit](self forKey:{"fetchLimit"), @"fetchLimit"}];
  v6 = [(REMFetchRequest *)self fetchResultToken];
  [v4 encodeObject:v6 forKey:@"fetchResultToken"];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(REMFetchRequest *)self fetchResultToken];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(REMFetchRequest *)self fetchResultToken];
    v7 = [v5 stringWithFormat:@"fetchResultToken: %@", v6];

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
  v13 = [(REMFetchRequest *)self fetchExecutor];
  v14 = [v10 stringWithFormat:@"<%@: %p type: %@, executor:%@%@>", v11, self, v12, v13, v8];

  return v14;
}

@end