@interface WFCoherenceDatabaseCollectionsResult
- (WFCoherenceDatabaseCollectionsResult)initWithDatabase:(id)database libraryQuery:(id)query;
- (id)description;
@end

@implementation WFCoherenceDatabaseCollectionsResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  libraryQuery = [(WFCoherenceDatabaseCollectionsResult *)self libraryQuery];
  v7 = [v3 stringWithFormat:@"<%@: %p, query: %@>", v5, self, libraryQuery];

  return v7;
}

- (WFCoherenceDatabaseCollectionsResult)initWithDatabase:(id)database libraryQuery:(id)query
{
  databaseCopy = database;
  queryCopy = query;
  v9 = queryCopy;
  if (databaseCopy)
  {
    if (queryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDatabaseResult.m" lineNumber:404 description:{@"Invalid parameter not satisfying: %@", @"database"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFDatabaseResult.m" lineNumber:405 description:{@"Invalid parameter not satisfying: %@", @"query"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = WFCoherenceDatabaseCollectionsResult;
  _init = [(WFDatabaseResult *)&v16 _init];
  v11 = _init;
  if (_init)
  {
    WFDatabaseResultCommonInit(_init);
    [(WFDatabaseResult *)v11 setDatabase:databaseCopy];
    objc_storeStrong(&v11->_libraryQuery, query);
    [databaseCopy startObservingChangesForResult:v11];
    v12 = v11;
  }

  return v11;
}

@end