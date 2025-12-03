@interface WFCoreDataDatabaseResultFetchRequestOperation
- (BOOL)isEqual:(id)equal;
- (NSEntityDescription)entity;
- (NSString)description;
- (WFCoreDataDatabaseResultFetchRequestOperation)initWithFetchRequest:(id)request;
- (WFCoreDataDatabaseResultFetchRequestOperation)initWithFetchRequest:(id)request relationshipKeysAffectingDescriptors:(id)descriptors;
- (id)resultsWithContext:(id)context error:(id *)error;
- (int64_t)countWithContext:(id)context error:(id *)error;
- (unint64_t)hash;
@end

@implementation WFCoreDataDatabaseResultFetchRequestOperation

- (NSEntityDescription)entity
{
  fetchRequest = [(WFCoreDataDatabaseResultFetchRequestOperation *)self fetchRequest];
  entity = [fetchRequest entity];

  return entity;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
  fetchRequest = [(WFCoreDataDatabaseResultFetchRequestOperation *)self fetchRequest];
  fetchRequest2 = [v6 fetchRequest];

  v9 = fetchRequest;
  v10 = fetchRequest2;
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
  fetchRequest = [(WFCoreDataDatabaseResultFetchRequestOperation *)self fetchRequest];
  entityName = [fetchRequest entityName];
  v5 = [entityName hash];
  fetchRequest2 = [(WFCoreDataDatabaseResultFetchRequestOperation *)self fetchRequest];
  predicate = [fetchRequest2 predicate];
  v8 = [predicate hash];

  return v8 ^ v5;
}

- (NSString)description
{
  fetchRequest = [(WFCoreDataDatabaseResultFetchRequestOperation *)self fetchRequest];
  entityName = [fetchRequest entityName];

  fetchRequest2 = [(WFCoreDataDatabaseResultFetchRequestOperation *)self fetchRequest];
  predicate = [fetchRequest2 predicate];
  predicateFormat = [predicate predicateFormat];

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"<%@: %p, type: %@, predicate: %@>", v10, self, entityName, predicateFormat];

  return v11;
}

- (int64_t)countWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  fetchRequest = [(WFCoreDataDatabaseResultFetchRequestOperation *)self fetchRequest];
  v8 = [contextCopy countForFetchRequest:fetchRequest error:error];

  return v8;
}

- (id)resultsWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  fetchRequest = [(WFCoreDataDatabaseResultFetchRequestOperation *)self fetchRequest];
  v8 = [contextCopy executeFetchRequest:fetchRequest error:error];

  return v8;
}

- (WFCoreDataDatabaseResultFetchRequestOperation)initWithFetchRequest:(id)request relationshipKeysAffectingDescriptors:(id)descriptors
{
  requestCopy = request;
  descriptorsCopy = descriptors;
  v10 = descriptorsCopy;
  if (requestCopy)
  {
    if (descriptorsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDatabaseResult.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"fetchRequest"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFDatabaseResult.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"relationshipKeysAffectingDescriptors"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFCoreDataDatabaseResultFetchRequestOperation;
  v11 = [(WFCoreDataDatabaseResultFetchRequestOperation *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_fetchRequest, request);
    objc_storeStrong(&v12->_relationshipKeysAffectingDescriptors, descriptors);
    v13 = v12;
  }

  return v12;
}

- (WFCoreDataDatabaseResultFetchRequestOperation)initWithFetchRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_new();
  v6 = [(WFCoreDataDatabaseResultFetchRequestOperation *)self initWithFetchRequest:requestCopy relationshipKeysAffectingDescriptors:v5];

  return v6;
}

@end