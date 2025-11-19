@interface WFStepwiseExecutionResultMetadata
- (WFStepwiseExecutionResultMetadata)initWithCoder:(id)a3;
- (WFStepwiseExecutionResultMetadata)initWithUndoContext:(id)a3 didRunOpensIntent:(BOOL)a4 attribution:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFStepwiseExecutionResultMetadata

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFStepwiseExecutionResultMetadata *)self undoContext];
  [v4 encodeObject:v5 forKey:@"undoContext"];

  [v4 encodeBool:-[WFStepwiseExecutionResultMetadata didRunOpensIntent](self forKey:{"didRunOpensIntent"), @"didRunOpensIntent"}];
  v6 = [(WFStepwiseExecutionResultMetadata *)self attribution];
  [v4 encodeObject:v6 forKey:@"attribution"];
}

- (WFStepwiseExecutionResultMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"undoContext"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"didRunOpensIntent"];
  v7 = [v6 BOOLValue];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attribution"];

  v9 = [(WFStepwiseExecutionResultMetadata *)self initWithUndoContext:v5 didRunOpensIntent:v7 attribution:v8];
  return v9;
}

- (WFStepwiseExecutionResultMetadata)initWithUndoContext:(id)a3 didRunOpensIntent:(BOOL)a4 attribution:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = WFStepwiseExecutionResultMetadata;
  v11 = [(WFStepwiseExecutionResultMetadata *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_didRunOpensIntent = a4;
    objc_storeStrong(&v11->_undoContext, a3);
    objc_storeStrong(&v12->_attribution, a5);
    v13 = v12;
  }

  return v12;
}

@end