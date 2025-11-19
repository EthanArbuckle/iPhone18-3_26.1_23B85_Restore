@interface WFCoreDataDatabaseResultConcatFetchRequestOperation
- (BOOL)isEqual:(id)a3;
- (NSEntityDescription)entity;
- (NSString)description;
- (WFCoreDataDatabaseResultConcatFetchRequestOperation)initWithFetchRequests:(id)a3 resultsLimit:(int64_t)a4;
- (WFCoreDataDatabaseResultConcatFetchRequestOperation)initWithFetchRequests:(id)a3 resultsLimit:(int64_t)a4 relationshipKeysAffectingDescriptors:(id)a5;
- (id)resultsWithContext:(id)a3 error:(id *)a4;
- (int64_t)countWithContext:(id)a3 error:(id *)a4;
- (unint64_t)hash;
@end

@implementation WFCoreDataDatabaseResultConcatFetchRequestOperation

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
  v7 = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self fetchRequests];
  v8 = [v6 fetchRequests];
  v9 = v7;
  v10 = v8;
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

  v13 = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self resultsLimit];
  v14 = v13 == [v6 resultsLimit];
LABEL_15:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self fetchRequests];
  v4 = [v3 hash];
  v5 = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self resultsLimit];

  return v5 ^ v4;
}

- (NSString)description
{
  v3 = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self fetchRequests];
  v4 = [v3 valueForKeyPath:@"predicate.predicateFormat"];

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"<%@: %p, predicates: %@>", v7, self, v4];

  return v8;
}

- (NSEntityDescription)entity
{
  v2 = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self fetchRequests];
  v3 = [v2 firstObject];
  v4 = [v3 entity];

  return v4;
}

- (int64_t)countWithContext:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self fetchRequests];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v10 += [v6 countForFetchRequest:*(*(&v16 + 1) + 8 * i) error:a4];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  if ([(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self resultsLimit]>= 1)
  {
    v13 = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self resultsLimit];
    if (v10 >= v13)
    {
      v10 = v13;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)resultsWithContext:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self fetchRequests];
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if ([(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self resultsLimit]>= 1)
        {
          v14 = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self resultsLimit];
          v15 = v14 - [v7 count];
          v16 = [v13 fetchLimit];
          if (v16 >= v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = v16;
          }

          [v13 setFetchLimit:v17];
        }

        v18 = [v6 executeFetchRequest:v13 error:a4];
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

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
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

- (WFCoreDataDatabaseResultConcatFetchRequestOperation)initWithFetchRequests:(id)a3 resultsLimit:(int64_t)a4 relationshipKeysAffectingDescriptors:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = WFCoreDataDatabaseResultConcatFetchRequestOperation;
  v10 = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    fetchRequests = v10->_fetchRequests;
    v10->_fetchRequests = v11;

    v10->_resultsLimit = a4;
    v13 = [v9 copy];
    relationshipKeysAffectingDescriptors = v10->_relationshipKeysAffectingDescriptors;
    v10->_relationshipKeysAffectingDescriptors = v13;

    v15 = v10;
  }

  return v10;
}

- (WFCoreDataDatabaseResultConcatFetchRequestOperation)initWithFetchRequests:(id)a3 resultsLimit:(int64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [(WFCoreDataDatabaseResultConcatFetchRequestOperation *)self initWithFetchRequests:v6 resultsLimit:a4 relationshipKeysAffectingDescriptors:v7];

  return v8;
}

@end