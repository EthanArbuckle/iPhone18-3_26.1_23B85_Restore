@interface REMHashtagsDataViewInvocationResult
- (BOOL)isEqual:(id)equal;
- (REMHashtagsDataViewInvocationResult)initWithCoder:(id)coder;
- (REMHashtagsDataViewInvocationResult)initWithHashtags:(id)hashtags;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMHashtagsDataViewInvocationResult

- (REMHashtagsDataViewInvocationResult)initWithHashtags:(id)hashtags
{
  hashtagsCopy = hashtags;
  v9.receiver = self;
  v9.super_class = REMHashtagsDataViewInvocationResult;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hashtags, hashtags);
  }

  return v7;
}

- (REMHashtagsDataViewInvocationResult)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"hashtags"];

  if (v8)
  {
    self = [(REMHashtagsDataViewInvocationResult *)self initWithHashtags:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hashtags = [(REMHashtagsDataViewInvocationResult *)self hashtags];
  [coderCopy encodeObject:hashtags forKey:@"hashtags"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    hashtags = [(REMHashtagsDataViewInvocationResult *)self hashtags];
    hashtags2 = [equalCopy hashtags];
    if (hashtags == hashtags2)
    {
      v9 = 1;
    }

    else
    {
      hashtags3 = [(REMHashtagsDataViewInvocationResult *)self hashtags];
      hashtags4 = [equalCopy hashtags];
      v9 = [hashtags3 isEqual:hashtags4];
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
  hashtags = [(REMHashtagsDataViewInvocationResult *)self hashtags];
  v3 = [hashtags hash];

  return v3;
}

@end