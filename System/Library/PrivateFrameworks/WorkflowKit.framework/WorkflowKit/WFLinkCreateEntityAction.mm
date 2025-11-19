@interface WFLinkCreateEntityAction
- (Class)overrideTypeDescriptions;
@end

@implementation WFLinkCreateEntityAction

- (Class)overrideTypeDescriptions
{
  v12.receiver = self;
  v12.super_class = WFLinkCreateEntityAction;
  v3 = [(WFLinkEntityAction *)&v12 overrideTypeDescriptions];
  if (!v3)
  {
    v4 = [(WFAppIntentExecutionAction *)self metadata];
    v5 = [v4 outputType];

    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [v7 identifier];

    v9 = MEMORY[0x1E69AC800];
    v10 = [(WFAction *)self appBundleIdentifier];
    v3 = [v9 wf_descriptionClassForEntityType:v8 appBundleIdentifier:v10];
  }

  return v3;
}

@end