@interface WFCoreDataDatabaseResult
- (WFCoreDataDatabaseResult)initWithDatabase:(id)a3 fetchOperation:(id)a4;
- (WFCoreDataDatabaseResult)initWithDatabase:(id)a3 fetchRequest:(id)a4;
- (WFCoreDataDatabaseResult)initWithDatabase:(id)a3 fetchRequest:(id)a4 relationshipKeysAffectingDescriptors:(id)a5;
- (id)description;
@end

@implementation WFCoreDataDatabaseResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFCoreDataDatabaseResult *)self fetchOperation];
  v7 = [v3 stringWithFormat:@"<%@: %p, operation: %@>", v5, self, v6];

  return v7;
}

- (WFCoreDataDatabaseResult)initWithDatabase:(id)a3 fetchRequest:(id)a4 relationshipKeysAffectingDescriptors:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[WFCoreDataDatabaseResultFetchRequestOperation alloc] initWithFetchRequest:v9 relationshipKeysAffectingDescriptors:v8];

  v12 = [(WFCoreDataDatabaseResult *)self initWithDatabase:v10 fetchOperation:v11];
  return v12;
}

- (WFCoreDataDatabaseResult)initWithDatabase:(id)a3 fetchRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [WFCoreDataDatabaseResultFetchRequestOperation alloc];
  v9 = objc_opt_new();
  v10 = [(WFCoreDataDatabaseResultFetchRequestOperation *)v8 initWithFetchRequest:v6 relationshipKeysAffectingDescriptors:v9];

  v11 = [(WFCoreDataDatabaseResult *)self initWithDatabase:v7 fetchOperation:v10];
  return v11;
}

- (WFCoreDataDatabaseResult)initWithDatabase:(id)a3 fetchOperation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFDatabaseResult.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"database"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"WFDatabaseResult.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"fetchOperation"}];

LABEL_3:
  v10 = [(WFDatabaseResult *)self _init];
  v11 = v10;
  if (v10)
  {
    WFDatabaseResultCommonInit(v10);
    [(WFDatabaseResult *)v11 setDatabase:v7];
    [(WFCoreDataDatabaseResult *)v11 setFetchOperation:v9];
    [v7 startObservingChangesForResult:v11];
    v12 = v11;
  }

  return v11;
}

@end