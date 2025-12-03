@interface WFCoreDataDatabaseResult
- (WFCoreDataDatabaseResult)initWithDatabase:(id)database fetchOperation:(id)operation;
- (WFCoreDataDatabaseResult)initWithDatabase:(id)database fetchRequest:(id)request;
- (WFCoreDataDatabaseResult)initWithDatabase:(id)database fetchRequest:(id)request relationshipKeysAffectingDescriptors:(id)descriptors;
- (id)description;
@end

@implementation WFCoreDataDatabaseResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  fetchOperation = [(WFCoreDataDatabaseResult *)self fetchOperation];
  v7 = [v3 stringWithFormat:@"<%@: %p, operation: %@>", v5, self, fetchOperation];

  return v7;
}

- (WFCoreDataDatabaseResult)initWithDatabase:(id)database fetchRequest:(id)request relationshipKeysAffectingDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  requestCopy = request;
  databaseCopy = database;
  v11 = [[WFCoreDataDatabaseResultFetchRequestOperation alloc] initWithFetchRequest:requestCopy relationshipKeysAffectingDescriptors:descriptorsCopy];

  v12 = [(WFCoreDataDatabaseResult *)self initWithDatabase:databaseCopy fetchOperation:v11];
  return v12;
}

- (WFCoreDataDatabaseResult)initWithDatabase:(id)database fetchRequest:(id)request
{
  requestCopy = request;
  databaseCopy = database;
  v8 = [WFCoreDataDatabaseResultFetchRequestOperation alloc];
  v9 = objc_opt_new();
  v10 = [(WFCoreDataDatabaseResultFetchRequestOperation *)v8 initWithFetchRequest:requestCopy relationshipKeysAffectingDescriptors:v9];

  v11 = [(WFCoreDataDatabaseResult *)self initWithDatabase:databaseCopy fetchOperation:v10];
  return v11;
}

- (WFCoreDataDatabaseResult)initWithDatabase:(id)database fetchOperation:(id)operation
{
  databaseCopy = database;
  operationCopy = operation;
  v9 = operationCopy;
  if (databaseCopy)
  {
    if (operationCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDatabaseResult.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"database"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFDatabaseResult.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"fetchOperation"}];

LABEL_3:
  _init = [(WFDatabaseResult *)self _init];
  v11 = _init;
  if (_init)
  {
    WFDatabaseResultCommonInit(_init);
    [(WFDatabaseResult *)v11 setDatabase:databaseCopy];
    [(WFCoreDataDatabaseResult *)v11 setFetchOperation:v9];
    [databaseCopy startObservingChangesForResult:v11];
    v12 = v11;
  }

  return v11;
}

@end