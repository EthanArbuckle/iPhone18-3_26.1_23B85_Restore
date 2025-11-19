@interface WFCoherenceDatabaseCollectionsResult
- (WFCoherenceDatabaseCollectionsResult)initWithDatabase:(id)a3 libraryQuery:(id)a4;
- (id)description;
@end

@implementation WFCoherenceDatabaseCollectionsResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFCoherenceDatabaseCollectionsResult *)self libraryQuery];
  v7 = [v3 stringWithFormat:@"<%@: %p, query: %@>", v5, self, v6];

  return v7;
}

- (WFCoherenceDatabaseCollectionsResult)initWithDatabase:(id)a3 libraryQuery:(id)a4
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
    [v14 handleFailureInMethod:a2 object:self file:@"WFDatabaseResult.m" lineNumber:404 description:{@"Invalid parameter not satisfying: %@", @"database"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"WFDatabaseResult.m" lineNumber:405 description:{@"Invalid parameter not satisfying: %@", @"query"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = WFCoherenceDatabaseCollectionsResult;
  v10 = [(WFDatabaseResult *)&v16 _init];
  v11 = v10;
  if (v10)
  {
    WFDatabaseResultCommonInit(v10);
    [(WFDatabaseResult *)v11 setDatabase:v7];
    objc_storeStrong(&v11->_libraryQuery, a4);
    [v7 startObservingChangesForResult:v11];
    v12 = v11;
  }

  return v11;
}

@end