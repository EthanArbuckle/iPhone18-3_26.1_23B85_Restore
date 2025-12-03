@interface TRISQLiteCKDatabaseFailureInjectionDelegate
- (BOOL)shouldProcessFetchOperation:(id)operation error:(id *)error;
- (BOOL)shouldProcessQueryOperation:(id)operation error:(id *)error;
- (TRISQLiteCKDatabaseFailureInjectionDelegate)initWithCoder:(id)coder;
- (TRISQLiteCKDatabaseFailureInjectionDelegate)initWithErrorForAllOperations:(id)operations;
- (TRISQLiteCKDatabaseFailureInjectionDelegate)initWithQueryErrors:(id)errors fetchErrors:(id)fetchErrors;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRISQLiteCKDatabaseFailureInjectionDelegate

- (TRISQLiteCKDatabaseFailureInjectionDelegate)initWithErrorForAllOperations:(id)operations
{
  operationsCopy = operations;
  if (!operationsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabaseFailureInjectionDelegate.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"error"}];
  }

  v13.receiver = self;
  v13.super_class = TRISQLiteCKDatabaseFailureInjectionDelegate;
  v6 = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)&v13 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithObject:operationsCopy];
    queryErrors = v6->_queryErrors;
    v6->_queryErrors = v7;

    v9 = [MEMORY[0x277CBEB18] arrayWithObject:operationsCopy];
    fetchErrors = v6->_fetchErrors;
    v6->_fetchErrors = v9;
  }

  return v6;
}

- (TRISQLiteCKDatabaseFailureInjectionDelegate)initWithQueryErrors:(id)errors fetchErrors:(id)fetchErrors
{
  errorsCopy = errors;
  fetchErrorsCopy = fetchErrors;
  v14.receiver = self;
  v14.super_class = TRISQLiteCKDatabaseFailureInjectionDelegate;
  v8 = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)&v14 init];
  if (v8)
  {
    v9 = [errorsCopy mutableCopy];
    queryErrors = v8->_queryErrors;
    v8->_queryErrors = v9;

    v11 = [fetchErrorsCopy mutableCopy];
    fetchErrors = v8->_fetchErrors;
    v8->_fetchErrors = v11;
  }

  return v8;
}

- (BOOL)shouldProcessQueryOperation:(id)operation error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  queryErrors = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)self queryErrors];
  if (queryErrors && (v9 = queryErrors, -[TRISQLiteCKDatabaseFailureInjectionDelegate queryErrors](self, "queryErrors"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v9, v11))
  {
    queryErrors2 = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)self queryErrors];
    firstObject = [queryErrors2 firstObject];

    queryErrors3 = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)self queryErrors];
    [queryErrors3 removeObjectAtIndex:0];

    v15 = TRILogCategory_XCTest();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = operationCopy;
      v23 = 2112;
      v24 = firstObject;
      _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "Query operation %@ being rejected with error %@", buf, 0x16u);
    }

    if (!error)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabaseFailureInjectionDelegate.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"error"}];
    }

    v16 = *error;
    *error = firstObject;

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)shouldProcessFetchOperation:(id)operation error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  fetchErrors = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)self fetchErrors];
  if (fetchErrors && (v9 = fetchErrors, -[TRISQLiteCKDatabaseFailureInjectionDelegate fetchErrors](self, "fetchErrors"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v9, v11))
  {
    fetchErrors2 = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)self fetchErrors];
    firstObject = [fetchErrors2 firstObject];

    fetchErrors3 = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)self fetchErrors];
    [fetchErrors3 removeObjectAtIndex:0];

    v15 = TRILogCategory_XCTest();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = operationCopy;
      v23 = 2112;
      v24 = firstObject;
      _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "Fetch operation %@ being rejected with error %@", buf, 0x16u);
    }

    if (!error)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabaseFailureInjectionDelegate.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"error"}];
    }

    v16 = *error;
    *error = firstObject;

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (TRISQLiteCKDatabaseFailureInjectionDelegate)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB58];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"queryErrors"];
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:@"fetchErrors"];

  v10 = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)self initWithQueryErrors:v8 fetchErrors:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  queryErrors = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)self queryErrors];
  [coderCopy encodeObject:queryErrors forKey:@"queryErrors"];

  fetchErrors = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)self fetchErrors];
  [coderCopy encodeObject:fetchErrors forKey:@"fetchErrors"];
}

@end