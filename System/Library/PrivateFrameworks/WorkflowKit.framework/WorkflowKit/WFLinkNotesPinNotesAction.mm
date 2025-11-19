@interface WFLinkNotesPinNotesAction
- (id)localizedNameWithContext:(id)a3;
- (id)overrideLabelsByParameter;
- (id)parameterSummary;
@end

@implementation WFLinkNotesPinNotesAction

- (id)overrideLabelsByParameter
{
  v11[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = WFLinkNotesPinNotesAction;
  v2 = [(WFLinkFavoriteEntityAction *)&v9 overrideLabelsByParameter];
  v10 = @"operation";
  v3 = WFLocalizedStringResourceWithKey(@"Operation (operation)", @"Operation");
  v11[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  if (v2)
  {
    v5 = [v2 if_dictionaryByAddingEntriesFromDictionary:v4];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)parameterSummary
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = [WFActionParameterSummary alloc];
  v3 = [WFActionParameterSummaryValue alloc];
  v4 = WFLocalizedStringResourceWithKey(@"${operation} ${entities} to pinned notes", @"${operation} ${entities} to pinned notes");
  v5 = [(WFActionParameterSummaryValue *)v3 initWithKey:@"operation(add)" summaryString:v4];
  v13[0] = v5;
  v6 = [WFActionParameterSummaryValue alloc];
  v7 = WFLocalizedStringResourceWithKey(@"${operation} ${entities} from pinned notes", @"${operation} ${entities} from pinned notes");
  v8 = [(WFActionParameterSummaryValue *)v6 initWithKey:@"operation(remove)" summaryString:v7];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10 = [(WFActionParameterSummary *)v2 initWithValues:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)localizedNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"WFLinkNotesPinNotesAction - Action Name", @"Pin Notes");
  v5 = [v3 localize:v4];

  return v5;
}

@end