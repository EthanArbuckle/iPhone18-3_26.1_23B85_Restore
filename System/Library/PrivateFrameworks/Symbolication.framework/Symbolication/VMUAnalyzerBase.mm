@interface VMUAnalyzerBase
+ (id)analyzerClasses;
- (VMUAnalyzerBase)initWithGraph:(id)a3 regionIdentifier:(id)a4 debugTimer:(id)a5;
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

- (VMUAnalyzerBase)initWithGraph:(id)a3 regionIdentifier:(id)a4 debugTimer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(VMUAnalyzerBase *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_graph, a3);
    objc_storeStrong(&v13->_regionIdentifier, a4);
    objc_storeStrong(&v13->_debugTimer, a5);
  }

  return v13;
}

@end