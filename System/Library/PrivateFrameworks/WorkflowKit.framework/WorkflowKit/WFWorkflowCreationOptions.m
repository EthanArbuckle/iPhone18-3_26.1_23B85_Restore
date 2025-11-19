@interface WFWorkflowCreationOptions
- (WFWorkflowCreationOptions)initWithRecord:(id)a3;
@end

@implementation WFWorkflowCreationOptions

- (WFWorkflowCreationOptions)initWithRecord:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFWorkflowCreationOptions;
  v5 = [(WFWorkflowCreationOptions *)&v10 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
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