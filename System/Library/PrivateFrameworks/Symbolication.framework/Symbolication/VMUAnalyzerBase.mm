@interface VMUAnalyzerBase
+ (id)analyzerClasses;
- (VMUAnalyzerBase)initWithGraph:(id)graph regionIdentifier:(id)identifier debugTimer:(id)timer;
@end

@implementation VMUAnalyzerBase

+ (id)analyzerClasses
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (VMUAnalyzerBase)initWithGraph:(id)graph regionIdentifier:(id)identifier debugTimer:(id)timer
{
  graphCopy = graph;
  identifierCopy = identifier;
  timerCopy = timer;
  v12 = [(VMUAnalyzerBase *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_graph, graph);
    objc_storeStrong(&v13->_regionIdentifier, identifier);
    objc_storeStrong(&v13->_debugTimer, timer);
  }

  return v13;
}

@end