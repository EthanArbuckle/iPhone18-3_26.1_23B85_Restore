@interface PGShareBackSource
- (BOOL)prepareSourceWithGraph:(id)graph;
- (PGShareBackSource)initWithLoggingConnection:(id)connection;
- (id)prepareAndReturnSuggesterResultsForInputs:(id)inputs inGraph:(id)graph error:(id *)error;
- (id)suggesterResultsForInputs:(id)inputs momentNodes:(id)nodes inGraph:(id)graph error:(id *)error;
@end

@implementation PGShareBackSource

- (id)prepareAndReturnSuggesterResultsForInputs:(id)inputs inGraph:(id)graph error:(id *)error
{
  inputsCopy = inputs;
  graphCopy = graph;
  if ([(PGShareBackSource *)self prepareSourceWithGraph:graphCopy])
  {
    v10 = [PGShareBackSuggesterInput localDateIntervalForSuggesterInputs:inputsCopy withTimeIntervalPadding:7200.0];
    v11 = [graphCopy momentNodesOverlappingLocalDateInterval:v10];
    v12 = [(PGShareBackSource *)self suggesterResultsForInputs:inputsCopy momentNodes:v11 inGraph:graphCopy error:error];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (id)suggesterResultsForInputs:(id)inputs momentNodes:(id)nodes inGraph:(id)graph error:(id *)error
{
  inputsCopy = inputs;
  nodesCopy = nodes;
  graphCopy = graph;
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

- (BOOL)prepareSourceWithGraph:(id)graph
{
  graphCopy = graph;
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

- (PGShareBackSource)initWithLoggingConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = PGShareBackSource;
  v6 = [(PGShareBackSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_loggingConnection, connection);
  }

  return v7;
}

@end