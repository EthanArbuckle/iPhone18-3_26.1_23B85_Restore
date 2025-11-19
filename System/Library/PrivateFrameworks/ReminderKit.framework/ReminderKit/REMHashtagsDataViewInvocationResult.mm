@interface REMHashtagsDataViewInvocationResult
- (BOOL)isEqual:(id)a3;
- (REMHashtagsDataViewInvocationResult)initWithCoder:(id)a3;
- (REMHashtagsDataViewInvocationResult)initWithHashtags:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMHashtagsDataViewInvocationResult

- (REMHashtagsDataViewInvocationResult)initWithHashtags:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMHashtagsDataViewInvocationResult;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hashtags, a3);
  }

  return v7;
}

- (REMHashtagsDataViewInvocationResult)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"hashtags"];

  if (v8)
  {
    self = [(REMHashtagsDataViewInvocationResult *)self initWithHashtags:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMHashtagsDataViewInvocationResult *)self hashtags];
  [v4 encodeObject:v5 forKey:@"hashtags"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMHashtagsDataViewInvocationResult *)self hashtags];
    v6 = [v4 hashtags];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(REMHashtagsDataViewInvocationResult *)self hashtags];
      v8 = [v4 hashtags];
      v9 = [v7 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (unint64_t)hash
{
  v2 = [(REMHashtagsDataViewInvocationResult *)self hashtags];
  v3 = [v2 hash];

  return v3;
}

@end