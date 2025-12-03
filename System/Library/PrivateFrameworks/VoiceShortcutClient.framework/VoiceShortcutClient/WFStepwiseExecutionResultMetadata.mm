@interface WFStepwiseExecutionResultMetadata
- (WFStepwiseExecutionResultMetadata)initWithCoder:(id)coder;
- (WFStepwiseExecutionResultMetadata)initWithUndoContext:(id)context didRunOpensIntent:(BOOL)intent attribution:(id)attribution;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFStepwiseExecutionResultMetadata

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  undoContext = [(WFStepwiseExecutionResultMetadata *)self undoContext];
  [coderCopy encodeObject:undoContext forKey:@"undoContext"];

  [coderCopy encodeBool:-[WFStepwiseExecutionResultMetadata didRunOpensIntent](self forKey:{"didRunOpensIntent"), @"didRunOpensIntent"}];
  attribution = [(WFStepwiseExecutionResultMetadata *)self attribution];
  [coderCopy encodeObject:attribution forKey:@"attribution"];
}

- (WFStepwiseExecutionResultMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"undoContext"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"didRunOpensIntent"];
  bOOLValue = [v6 BOOLValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attribution"];

  v9 = [(WFStepwiseExecutionResultMetadata *)self initWithUndoContext:v5 didRunOpensIntent:bOOLValue attribution:v8];
  return v9;
}

- (WFStepwiseExecutionResultMetadata)initWithUndoContext:(id)context didRunOpensIntent:(BOOL)intent attribution:(id)attribution
{
  contextCopy = context;
  attributionCopy = attribution;
  v15.receiver = self;
  v15.super_class = WFStepwiseExecutionResultMetadata;
  v11 = [(WFStepwiseExecutionResultMetadata *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_didRunOpensIntent = intent;
    objc_storeStrong(&v11->_undoContext, context);
    objc_storeStrong(&v12->_attribution, attribution);
    v13 = v12;
  }

  return v12;
}

@end