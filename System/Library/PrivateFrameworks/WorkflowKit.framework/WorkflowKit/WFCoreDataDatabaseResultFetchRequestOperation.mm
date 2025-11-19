@interface WFCoreDataDatabaseResultFetchRequestOperation
- (BOOL)isEqual:(id)a3;
- (NSEntityDescription)entity;
- (NSString)description;
- (WFCoreDataDatabaseResultFetchRequestOperation)initWithFetchRequest:(id)a3;
- (WFCoreDataDatabaseResultFetchRequestOperation)initWithFetchRequest:(id)a3 relationshipKeysAffectingDescriptors:(id)a4;
- (id)resultsWithContext:(id)a3 error:(id *)a4;
- (int64_t)countWithContext:(id)a3 error:(id *)a4;
- (unint64_t)hash;
@end

@implementation WFCoreDataDatabaseResultFetchRequestOperation

- (NSEntityDescription)entity
{
  v2 = [(WFCoreDataDatabaseResultFetchRequestOperation *)self fetchRequest];
  v3 = [v2 entity];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [(WFCoreDataDatabaseResultFetchRequestOperation *)self fetchRequest];
  v8 = [v6 fetchRequest];

  v9 = v7;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0;
    if (v9 && v10)
    {
      v12 = [v9 isEqual:v10];
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(WFCoreDataDatabaseResultFetchRequestOperation *)self fetchRequest];
  v4 = [v3 entityName];
  v5 = [v4 hash];
  v6 = [(WFCoreDataDatabaseResultFetchRequestOperation *)self fetchRequest];
  v7 = [v6 predicate];
  v8 = [v7 hash];

  return v8 ^ v5;
}

- (NSString)description
{
  v3 = [(WFCoreDataDatabaseResultFetchRequestOperation *)self fetchRequest];
  v4 = [v3 entityName];

  v5 = [(WFCoreDataDatabaseResultFetchRequestOperation *)self fetchRequest];
  v6 = [v5 predicate];
  v7 = [v6 predicateFormat];

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"<%@: %p, type: %@, predicate: %@>", v10, self, v4, v7];

  return v11;
}

- (int64_t)countWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WFCoreDataDatabaseResultFetchRequestOperation *)self fetchRequest];
  v8 = [v6 countForFetchRequest:v7 error:a4];

  return v8;
}

- (id)resultsWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WFCoreDataDatabaseResultFetchRequestOperation *)self fetchRequest];
  v8 = [v6 executeFetchRequest:v7 error:a4];

  return v8;
}

- (WFCoreDataDatabaseResultFetchRequestOperation)initWithFetchRequest:(id)a3 relationshipKeysAffectingDescriptors:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFDatabaseResult.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"fetchRequest"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"WFDatabaseResult.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"relationshipKeysAffectingDescriptors"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFCoreDataDatabaseResultFetchRequestOperation;
  v11 = [(WFCoreDataDatabaseResultFetchRequestOperation *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_fetchRequest, a3);
    objc_storeStrong(&v12->_relationshipKeysAffectingDescriptors, a4);
    v13 = v12;
  }

  return v12;
}

- (WFCoreDataDatabaseResultFetchRequestOperation)initWithFetchRequest:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(WFCoreDataDatabaseResultFetchRequestOperation *)self initWithFetchRequest:v4 relationshipKeysAffectingDescriptors:v5];

  return v6;
}

@end