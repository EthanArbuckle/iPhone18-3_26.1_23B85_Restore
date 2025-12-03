@interface WFWorkflowCreationOptions
- (WFWorkflowCreationOptions)initWithRecord:(id)record;
@end

@implementation WFWorkflowCreationOptions

- (WFWorkflowCreationOptions)initWithRecord:(id)record
{
  recordCopy = record;
  v10.receiver = self;
  v10.super_class = WFWorkflowCreationOptions;
  v5 = [(WFWorkflowCreationOptions *)&v10 init];
  if (v5)
  {
    if (recordCopy)
    {
      v6 = recordCopy;
    }

    else
    {
      v6 = objc_opt_new();
    }

    record = v5->_record;
    v5->_record = v6;

    v5->_location = 0x7FFFFFFFFFFFFFFFLL;
    v8 = v5;
  }

  return v5;
}

@end