@interface WFHomeScreenIcon
- (WFHomeScreenIcon)initWithWorkflowIcon:(id)a3 customImageData:(id)a4;
@end

@implementation WFHomeScreenIcon

- (WFHomeScreenIcon)initWithWorkflowIcon:(id)a3 customImageData:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFHomeScreenIcon.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"workflowIcon"}];
  }

  v15.receiver = self;
  v15.super_class = WFHomeScreenIcon;
  v10 = [(WFHomeScreenIcon *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_workflowIcon, a3);
    objc_storeStrong(&v11->_customImageData, a4);
    v12 = v11;
  }

  return v11;
}

@end