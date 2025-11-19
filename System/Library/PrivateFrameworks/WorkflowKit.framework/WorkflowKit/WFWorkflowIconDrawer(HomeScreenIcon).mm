@interface WFWorkflowIconDrawer(HomeScreenIcon)
- (void)initWithHomeScreenIcon:()HomeScreenIcon;
@end

@implementation WFWorkflowIconDrawer(HomeScreenIcon)

- (void)initWithHomeScreenIcon:()HomeScreenIcon
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"WFWorkflowIconDrawer+HomeScreenIcon.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"icon"}];
  }

  v6 = [v5 workflowIcon];
  v7 = [a1 initWithIcon:v6];

  if (v7)
  {
    v8 = [v5 customImageData];
    if (v8)
    {
      [v7 setCustomImageData:v8];
      [v7 setUseCustomImage:1];
    }

    v9 = v7;
  }

  return v7;
}

@end