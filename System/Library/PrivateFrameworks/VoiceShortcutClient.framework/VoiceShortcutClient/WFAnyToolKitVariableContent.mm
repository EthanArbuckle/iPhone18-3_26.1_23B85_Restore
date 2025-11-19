@interface WFAnyToolKitVariableContent
+ (id)objectWithVariableContent:(id)a3;
- (WFAnyToolKitVariableContent)initWithCoder:(id)a3;
- (WFAnyToolKitVariableContent)initWithVariableContent:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAnyToolKitVariableContent

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFAnyToolKitVariableContent *)self variableContent];
  [v4 encodeObject:v5 forKey:@"variableContent"];
}

- (WFAnyToolKitVariableContent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 setWithObjects:{objc_opt_class(), 0}];
  v7 = [v5 decodeObjectOfClasses:v6 forKey:@"variableContent"];

  if (v7)
  {
    self = [(WFAnyToolKitVariableContent *)self initWithVariableContent:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (WFAnyToolKitVariableContent)initWithVariableContent:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFSageWorkflowRunnerClient.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"variableContent"}];
  }

  v12.receiver = self;
  v12.super_class = WFAnyToolKitVariableContent;
  v7 = [(WFAnyToolKitVariableContent *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_variableContent, a3);
    v9 = v8;
  }

  return v8;
}

+ (id)objectWithVariableContent:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[a1 alloc] initWithVariableContent:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end