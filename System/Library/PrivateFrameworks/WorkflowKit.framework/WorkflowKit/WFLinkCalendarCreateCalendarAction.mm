@interface WFLinkCalendarCreateCalendarAction
- (id)localizedDescriptionSummaryWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
- (id)overrideLabelsByParameter;
@end

@implementation WFLinkCalendarCreateCalendarAction

- (id)overrideLabelsByParameter
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"name";
  v2 = WFLocalizedStringResourceWithKey(@"Calendar Name", @"Calendar Name");
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)localizedDescriptionSummaryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Creates a new calendar in Calendar.", @"Creates a new calendar in Calendar.");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Create Calendar", @"Create Calendar");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end