@interface WFAnyToolKitVariableContent
+ (id)objectWithVariableContent:(id)content;
- (WFAnyToolKitVariableContent)initWithCoder:(id)coder;
- (WFAnyToolKitVariableContent)initWithVariableContent:(id)content;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAnyToolKitVariableContent

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  variableContent = [(WFAnyToolKitVariableContent *)self variableContent];
  [coderCopy encodeObject:variableContent forKey:@"variableContent"];
}

- (WFAnyToolKitVariableContent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = [v4 setWithObjects:{objc_opt_class(), 0}];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"variableContent"];

  if (v7)
  {
    self = [(WFAnyToolKitVariableContent *)self initWithVariableContent:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFAnyToolKitVariableContent)initWithVariableContent:(id)content
{
  contentCopy = content;
  if (!contentCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSageWorkflowRunnerClient.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"variableContent"}];
  }

  v12.receiver = self;
  v12.super_class = WFAnyToolKitVariableContent;
  v7 = [(WFAnyToolKitVariableContent *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_variableContent, content);
    v9 = v8;
  }

  return v8;
}

+ (id)objectWithVariableContent:(id)content
{
  if (content)
  {
    contentCopy = content;
    v5 = [[self alloc] initWithVariableContent:contentCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end