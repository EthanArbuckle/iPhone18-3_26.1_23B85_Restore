@interface WFLinkCreateEntityAction
- (Class)overrideTypeDescriptions;
@end

@implementation WFLinkCreateEntityAction

- (Class)overrideTypeDescriptions
{
  v12.receiver = self;
  v12.super_class = WFLinkCreateEntityAction;
  overrideTypeDescriptions = [(WFLinkEntityAction *)&v12 overrideTypeDescriptions];
  if (!overrideTypeDescriptions)
  {
    metadata = [(WFAppIntentExecutionAction *)self metadata];
    outputType = [metadata outputType];

    if (outputType)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = outputType;
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

    identifier = [v7 identifier];

    v9 = MEMORY[0x1E69AC800];
    appBundleIdentifier = [(WFAction *)self appBundleIdentifier];
    overrideTypeDescriptions = [v9 wf_descriptionClassForEntityType:identifier appBundleIdentifier:appBundleIdentifier];
  }

  return overrideTypeDescriptions;
}

@end