@interface WFWorkflowIconDrawer(HomeScreenIcon)
- (void)initWithHomeScreenIcon:()HomeScreenIcon;
@end

@implementation WFWorkflowIconDrawer(HomeScreenIcon)

- (void)initWithHomeScreenIcon:()HomeScreenIcon
{
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowIconDrawer+HomeScreenIcon.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"icon"}];
  }

  workflowIcon = [v5 workflowIcon];
  v7 = [self initWithIcon:workflowIcon];

  if (v7)
  {
    customImageData = [v5 customImageData];
    if (customImageData)
    {
      [v7 setCustomImageData:customImageData];
      [v7 setUseCustomImage:1];
    }

    v9 = v7;
  }

  return v7;
}

@end