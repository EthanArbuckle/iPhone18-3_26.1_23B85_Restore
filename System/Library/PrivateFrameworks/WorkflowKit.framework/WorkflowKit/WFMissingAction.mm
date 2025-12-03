@interface WFMissingAction
- (id)iconImage;
- (id)localizedDescriptionSummary;
- (id)localizedNameWithContext:(id)context;
- (void)runWithInput:(id)input error:(id *)error;
@end

@implementation WFMissingAction

- (void)runWithInput:(id)input error:(id *)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = WFLocalizedString(@"The shortcut could not be run because an action could not be found.");
  v6 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v10[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  *error = [v6 errorWithDomain:@"WFActionErrorDomain" code:14 userInfo:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (id)localizedDescriptionSummary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"This action could not be found. It may require a newer version of Shortcuts or another app.\n\nThe missing action’s identifier is “%@”.");
  identifier = [(WFAction *)self identifier];
  v6 = [v3 localizedStringWithFormat:v4, identifier];

  return v6;
}

- (id)iconImage
{
  v2 = objc_opt_new();

  return v2;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  definition = [(WFAction *)self definition];

  if (definition)
  {
    v9.receiver = self;
    v9.super_class = WFMissingAction;
    v6 = [(WFAction *)&v9 localizedNameWithContext:contextCopy];
  }

  else
  {
    v7 = WFLocalizedStringResourceWithKey(@"Unknown Action", @"Unknown Action");
    v6 = [contextCopy localize:v7];
  }

  return v6;
}

@end