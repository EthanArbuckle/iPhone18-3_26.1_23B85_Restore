@interface WFMissingAction
- (id)iconImage;
- (id)localizedDescriptionSummary;
- (id)localizedNameWithContext:(id)a3;
- (void)runWithInput:(id)a3 error:(id *)a4;
@end

@implementation WFMissingAction

- (void)runWithInput:(id)a3 error:(id *)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = WFLocalizedString(@"The shortcut could not be run because an action could not be found.");
  v6 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v10[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  *a4 = [v6 errorWithDomain:@"WFActionErrorDomain" code:14 userInfo:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (id)localizedDescriptionSummary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"This action could not be found. It may require a newer version of Shortcuts or another app.\n\nThe missing action’s identifier is “%@”.");
  v5 = [(WFAction *)self identifier];
  v6 = [v3 localizedStringWithFormat:v4, v5];

  return v6;
}

- (id)iconImage
{
  v2 = objc_opt_new();

  return v2;
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self definition];

  if (v5)
  {
    v9.receiver = self;
    v9.super_class = WFMissingAction;
    v6 = [(WFAction *)&v9 localizedNameWithContext:v4];
  }

  else
  {
    v7 = WFLocalizedStringResourceWithKey(@"Unknown Action", @"Unknown Action");
    v6 = [v4 localize:v7];
  }

  return v6;
}

@end