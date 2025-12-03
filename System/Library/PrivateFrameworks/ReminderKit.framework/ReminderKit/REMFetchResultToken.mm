@interface REMFetchResultToken
+ (id)fetchResultTokenFromDataRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (REMFetchResultToken)initWithCoder:(id)coder;
- (REMFetchResultToken)initWithPersistentHistoryTokens:(id)tokens;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMFetchResultToken

+ (id)fetchResultTokenFromDataRepresentation:(id)representation error:(id *)error
{
  v5 = MEMORY[0x1E696ACD0];
  representationCopy = representation;
  v7 = [v5 unarchivedObjectOfClass:objc_opt_class() fromData:representationCopy error:error];

  return v7;
}

- (REMFetchResultToken)initWithPersistentHistoryTokens:(id)tokens
{
  tokensCopy = tokens;
  v9.receiver = self;
  v9.super_class = REMFetchResultToken;
  v5 = [(REMFetchResultToken *)&v9 init];
  if (v5)
  {
    v6 = [tokensCopy copy];
    persistentHistoryTokens = v5->_persistentHistoryTokens;
    v5->_persistentHistoryTokens = v6;
  }

  return v5;
}

- (REMFetchResultToken)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"persistentHistoryTokens"];

  v10 = [(REMFetchResultToken *)self initWithPersistentHistoryTokens:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  persistentHistoryTokens = [(REMFetchResultToken *)self persistentHistoryTokens];
  [coderCopy encodeObject:persistentHistoryTokens forKey:@"persistentHistoryTokens"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    persistentHistoryTokens = [(REMFetchResultToken *)self persistentHistoryTokens];
    persistentHistoryTokens2 = [equalCopy persistentHistoryTokens];
    if (persistentHistoryTokens == persistentHistoryTokens2)
    {
      v9 = 1;
    }

    else
    {
      persistentHistoryTokens3 = [(REMFetchResultToken *)self persistentHistoryTokens];
      persistentHistoryTokens4 = [equalCopy persistentHistoryTokens];
      v9 = [persistentHistoryTokens3 isEqual:persistentHistoryTokens4];
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
  persistentHistoryTokens = [(REMFetchResultToken *)self persistentHistoryTokens];
  v3 = [persistentHistoryTokens hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  persistentHistoryTokens = [(REMFetchResultToken *)self persistentHistoryTokens];
  v6 = [v3 stringWithFormat:@"<%@: %p persistentHistoryTokens: %@> ", v4, self, persistentHistoryTokens];

  return v6;
}

@end