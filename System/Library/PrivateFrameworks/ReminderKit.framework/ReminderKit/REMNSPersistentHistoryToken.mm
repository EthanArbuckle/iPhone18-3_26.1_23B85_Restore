@interface REMNSPersistentHistoryToken
- (BOOL)isEqual:(id)equal;
- (REMNSPersistentHistoryToken)initWithCoder:(id)coder;
- (REMNSPersistentHistoryToken)initWithPersistentHistoryToken:(id)token;
- (id)description;
- (int64_t)compareToken:(id)token error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMNSPersistentHistoryToken

- (REMNSPersistentHistoryToken)initWithPersistentHistoryToken:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    v10.receiver = self;
    v10.super_class = REMNSPersistentHistoryToken;
    v6 = [(REMNSPersistentHistoryToken *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_token, token);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  token = [(REMNSPersistentHistoryToken *)self token];
  v4 = [v2 stringWithFormat:@"REM_WRAP(%@)", token];

  return v4;
}

- (int64_t)compareToken:(id)token error:(id *)error
{
  tokenCopy = token;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    token = [(REMNSPersistentHistoryToken *)self token];
    token2 = [tokenCopy token];
    v9 = [token compareToken:token2 error:error];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithREMChangeErrorCode:0];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      token = [(REMNSPersistentHistoryToken *)self token];
      token2 = [(REMNSPersistentHistoryToken *)equalCopy token];
      v7 = [token isEqual:token2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (REMNSPersistentHistoryToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];

  v6 = [(REMNSPersistentHistoryToken *)self initWithPersistentHistoryToken:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  token = [(REMNSPersistentHistoryToken *)self token];
  [coderCopy encodeObject:token forKey:@"token"];
}

@end