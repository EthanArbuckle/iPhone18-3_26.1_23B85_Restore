@interface REMFetchResultToken
+ (id)fetchResultTokenFromDataRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (REMFetchResultToken)initWithCoder:(id)a3;
- (REMFetchResultToken)initWithPersistentHistoryTokens:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMFetchResultToken

+ (id)fetchResultTokenFromDataRepresentation:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E696ACD0];
  v6 = a3;
  v7 = [v5 unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:a4];

  return v7;
}

- (REMFetchResultToken)initWithPersistentHistoryTokens:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REMFetchResultToken;
  v5 = [(REMFetchResultToken *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    persistentHistoryTokens = v5->_persistentHistoryTokens;
    v5->_persistentHistoryTokens = v6;
  }

  return v5;
}

- (REMFetchResultToken)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"persistentHistoryTokens"];

  v10 = [(REMFetchResultToken *)self initWithPersistentHistoryTokens:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMFetchResultToken *)self persistentHistoryTokens];
  [v4 encodeObject:v5 forKey:@"persistentHistoryTokens"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMFetchResultToken *)self persistentHistoryTokens];
    v6 = [v4 persistentHistoryTokens];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(REMFetchResultToken *)self persistentHistoryTokens];
      v8 = [v4 persistentHistoryTokens];
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
  v2 = [(REMFetchResultToken *)self persistentHistoryTokens];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMFetchResultToken *)self persistentHistoryTokens];
  v6 = [v3 stringWithFormat:@"<%@: %p persistentHistoryTokens: %@> ", v4, self, v5];

  return v6;
}

@end