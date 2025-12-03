@interface WFCoreDataDatabaseResultConcatFetchRequestOperation
- (BOOL)isEqual:(id)equal;
- (NSEntityDescription)entity;
- (NSString)description;
- (WFCoreDataDatabaseResultConcatFetchRequestOperation)initWithFetchRequests:(id)requests resultsLimit:(int64_t)limit;
- (WFCoreDataDatabaseResultConcatFetchRequestOperation)initWithFetchRequests:(id)requests resultsLimit:(int64_t)limit relationshipKeysAffectingDescriptors:(id)descriptors;
- (id)resultsWithContext:(id)context error:(id *)error;
- (int64_t)countWithContext:(id)context error:(id *)error;
- (unint64_t)hash;
@end

@implementation WFCoreDataDatabaseResultConcatFetchRequestOperation

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
  fetchRequests = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self fetchRequests];
  fetchRequests2 = [v6 fetchRequests];
  v9 = fetchRequests;
  v10 = fetchRequests2;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if (!v9 || !v10)
    {

LABEL_14:
      v14 = 0;
      goto LABEL_15;
    }

    v12 = [v9 isEqualToArray:v10];

    if (!v12)
    {
      goto LABEL_14;
    }
  }

  resultsLimit = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self resultsLimit];
  v14 = resultsLimit == [v6 resultsLimit];
LABEL_15:

  return v14;
}

- (unint64_t)hash
{
  fetchRequests = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self fetchRequests];
  v4 = [fetchRequests hash];
  resultsLimit = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self resultsLimit];

  return resultsLimit ^ v4;
}

- (NSString)description
{
  fetchRequests = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self fetchRequests];
  v4 = [fetchRequests valueForKeyPath:@"predicate.predicateFormat"];

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"<%@: %p, predicates: %@>", v7, self, v4];

  return v8;
}

- (NSEntityDescription)entity
{
  fetchRequests = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self fetchRequests];
  firstObject = [fetchRequests firstObject];
  entity = [firstObject entity];

  return entity;
}

- (int64_t)countWithContext:(id)context error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  fetchRequests = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self fetchRequests];
  v8 = [fetchRequests countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(fetchRequests);
        }

        v10 += [contextCopy countForFetchRequest:*(*(&v16 + 1) + 8 * i) error:error];
      }

      v9 = [fetchRequests countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  if ([(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self resultsLimit]>= 1)
  {
    resultsLimit = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self resultsLimit];
    if (v10 >= resultsLimit)
    {
      v10 = resultsLimit;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)resultsWithContext:(id)context error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  fetchRequests = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self fetchRequests];
  v9 = [fetchRequests countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(fetchRequests);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if ([(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self resultsLimit]>= 1)
        {
          resultsLimit = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self resultsLimit];
          v15 = resultsLimit - [v7 count];
          fetchLimit = [v13 fetchLimit];
          if (fetchLimit >= v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = fetchLimit;
          }

          [v13 setFetchLimit:v17];
        }

        v18 = [contextCopy executeFetchRequest:v13 error:error];
        if (!v18)
        {

          v21 = 0;
          goto LABEL_20;
        }

        v19 = v18;
        [v7 addObjectsFromArray:v18];
        if ([(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self resultsLimit]>= 1)
        {
          v20 = [v7 count];
          if (v20 >= [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self resultsLimit])
          {

            goto LABEL_19;
          }
        }
      }

      v10 = [fetchRequests countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v21 = v7;
LABEL_20:

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (WFCoreDataDatabaseResultConcatFetchRequestOperation)initWithFetchRequests:(id)requests resultsLimit:(int64_t)limit relationshipKeysAffectingDescriptors:(id)descriptors
{
  requestsCopy = requests;
  descriptorsCopy = descriptors;
  v17.receiver = self;
  v17.super_class = WFCoreDataDatabaseResultConcatFetchRequestOperation;
  v10 = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)&v17 init];
  if (v10)
  {
    v11 = [requestsCopy copy];
    fetchRequests = v10->_fetchRequests;
    v10->_fetchRequests = v11;

    v10->_resultsLimit = limit;
    v13 = [descriptorsCopy copy];
    relationshipKeysAffectingDescriptors = v10->_relationshipKeysAffectingDescriptors;
    v10->_relationshipKeysAffectingDescriptors = v13;

    v15 = v10;
  }

  return v10;
}

- (WFCoreDataDatabaseResultConcatFetchRequestOperation)initWithFetchRequests:(id)requests resultsLimit:(int64_t)limit
{
  requestsCopy = requests;
  v7 = objc_opt_new();
  v8 = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self initWithFetchRequests:requestsCopy resultsLimit:limit relationshipKeysAffectingDescriptors:v7];

  return v8;
}

@end