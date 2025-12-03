@interface WFHomeScreenIcon
- (WFHomeScreenIcon)initWithWorkflowIcon:(id)icon customImageData:(id)data;
@end

@implementation WFHomeScreenIcon

- (WFHomeScreenIcon)initWithWorkflowIcon:(id)icon customImageData:(id)data
{
  iconCopy = icon;
  dataCopy = data;
  if (!iconCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHomeScreenIcon.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"workflowIcon"}];
  }

  v15.receiver = self;
  v15.super_class = WFHomeScreenIcon;
  v10 = [(WFHomeScreenIcon *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_workflowIcon, icon);
    objc_storeStrong(&v11->_customImageData, data);
    v12 = v11;
  }

  return v11;
}

@end