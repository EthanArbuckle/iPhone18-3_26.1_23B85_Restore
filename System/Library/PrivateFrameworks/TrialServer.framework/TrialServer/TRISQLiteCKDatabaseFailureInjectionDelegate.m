@interface TRISQLiteCKDatabaseFailureInjectionDelegate
- (BOOL)shouldProcessFetchOperation:(id)a3 error:(id *)a4;
- (BOOL)shouldProcessQueryOperation:(id)a3 error:(id *)a4;
- (TRISQLiteCKDatabaseFailureInjectionDelegate)initWithCoder:(id)a3;
- (TRISQLiteCKDatabaseFailureInjectionDelegate)initWithErrorForAllOperations:(id)a3;
- (TRISQLiteCKDatabaseFailureInjectionDelegate)initWithQueryErrors:(id)a3 fetchErrors:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRISQLiteCKDatabaseFailureInjectionDelegate

- (TRISQLiteCKDatabaseFailureInjectionDelegate)initWithErrorForAllOperations:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabaseFailureInjectionDelegate.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"error"}];
  }

  v13.receiver = self;
  v13.super_class = TRISQLiteCKDatabaseFailureInjectionDelegate;
  v6 = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)&v13 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithObject:v5];
    queryErrors = v6->_queryErrors;
    v6->_queryErrors = v7;

    v9 = [MEMORY[0x277CBEB18] arrayWithObject:v5];
    fetchErrors = v6->_fetchErrors;
    v6->_fetchErrors = v9;
  }

  return v6;
}

- (TRISQLiteCKDatabaseFailureInjectionDelegate)initWithQueryErrors:(id)a3 fetchErrors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TRISQLiteCKDatabaseFailureInjectionDelegate;
  v8 = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)&v14 init];
  if (v8)
  {
    v9 = [v6 mutableCopy];
    queryErrors = v8->_queryErrors;
    v8->_queryErrors = v9;

    v11 = [v7 mutableCopy];
    fetchErrors = v8->_fetchErrors;
    v8->_fetchErrors = v11;
  }

  return v8;
}

- (BOOL)shouldProcessQueryOperation:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)self queryErrors];
  if (v8 && (v9 = v8, -[TRISQLiteCKDatabaseFailureInjectionDelegate queryErrors](self, "queryErrors"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v9, v11))
  {
    v12 = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)self queryErrors];
    v13 = [v12 firstObject];

    v14 = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)self queryErrors];
    [v14 removeObjectAtIndex:0];

    v15 = TRILogCategory_XCTest();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = v7;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "Query operation %@ being rejected with error %@", buf, 0x16u);
    }

    if (!a4)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabaseFailureInjectionDelegate.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"error"}];
    }

    v16 = *a4;
    *a4 = v13;

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)shouldProcessFetchOperation:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)self fetchErrors];
  if (v8 && (v9 = v8, -[TRISQLiteCKDatabaseFailureInjectionDelegate fetchErrors](self, "fetchErrors"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v9, v11))
  {
    v12 = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)self fetchErrors];
    v13 = [v12 firstObject];

    v14 = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)self fetchErrors];
    [v14 removeObjectAtIndex:0];

    v15 = TRILogCategory_XCTest();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = v7;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "Fetch operation %@ being rejected with error %@", buf, 0x16u);
    }

    if (!a4)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"TRISQLiteCKDatabaseFailureInjectionDelegate.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"error"}];
    }

    v16 = *a4;
    *a4 = v13;

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (TRISQLiteCKDatabaseFailureInjectionDelegate)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"queryErrors"];
  v9 = [v5 decodeObjectOfClasses:v7 forKey:@"fetchErrors"];

  v10 = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)self initWithQueryErrors:v8 fetchErrors:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)self queryErrors];
  [v4 encodeObject:v5 forKey:@"queryErrors"];

  v6 = [(TRISQLiteCKDatabaseFailureInjectionDelegate *)self fetchErrors];
  [v4 encodeObject:v6 forKey:@"fetchErrors"];
}

@end