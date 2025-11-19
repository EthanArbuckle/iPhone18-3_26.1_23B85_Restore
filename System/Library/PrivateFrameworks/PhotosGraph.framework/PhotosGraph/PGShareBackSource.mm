@interface PGShareBackSource
- (BOOL)prepareSourceWithGraph:(id)a3;
- (PGShareBackSource)initWithLoggingConnection:(id)a3;
- (id)prepareAndReturnSuggesterResultsForInputs:(id)a3 inGraph:(id)a4 error:(id *)a5;
- (id)suggesterResultsForInputs:(id)a3 momentNodes:(id)a4 inGraph:(id)a5 error:(id *)a6;
@end

@implementation PGShareBackSource

- (id)prepareAndReturnSuggesterResultsForInputs:(id)a3 inGraph:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(PGShareBackSource *)self prepareSourceWithGraph:v9])
  {
    v10 = [PGShareBackSuggesterInput localDateIntervalForSuggesterInputs:v8 withTimeIntervalPadding:7200.0];
    v11 = [v9 momentNodesOverlappingLocalDateInterval:v10];
    v12 = [(PGShareBackSource *)self suggesterResultsForInputs:v8 momentNodes:v11 inGraph:v9 error:a5];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (id)suggesterResultsForInputs:(id)a3 momentNodes:(id)a4 inGraph:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc(MEMORY[0x277CBEAD8]);
  v13 = *MEMORY[0x277CBE658];
  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = NSStringFromSelector(a2);
  v18 = [v14 stringWithFormat:@"%@ must implement %@", v16, v17];
  v19 = [v12 initWithName:v13 reason:v18 userInfo:0];

  objc_exception_throw(v19);
}

- (BOOL)prepareSourceWithGraph:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEAD8]);
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = NSStringFromSelector(a2);
  v11 = [v7 stringWithFormat:@"%@ must implement %@", v9, v10];
  v12 = [v5 initWithName:v6 reason:v11 userInfo:0];

  objc_exception_throw(v12);
}

- (PGShareBackSource)initWithLoggingConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGShareBackSource;
  v6 = [(PGShareBackSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_loggingConnection, a3);
  }

  return v7;
}

@end