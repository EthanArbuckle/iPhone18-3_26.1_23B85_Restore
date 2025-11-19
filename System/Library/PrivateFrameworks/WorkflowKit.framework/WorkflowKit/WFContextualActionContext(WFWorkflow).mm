@interface WFContextualActionContext(WFWorkflow)
+ (id)contextForEditingWorkflow:()WFWorkflow inSurface:;
@end

@implementation WFContextualActionContext(WFWorkflow)

+ (id)contextForEditingWorkflow:()WFWorkflow inSurface:
{
  v7 = a3;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"WFContextualActionContext+WFWorkflow.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"workflow"}];
  }

  v8 = [objc_alloc(MEMORY[0x1E69E0A30]) initWithSurface:a4];
  v9 = [v7 actions];
  v10 = [v9 valueForKey:@"identifier"];
  [v8 setHistoricalActionIdentifiers:v10];

  return v8;
}

@end