@interface WFLinkNavigateSequentiallyAction
- (id)localizedNameWithContext:(id)a3;
- (id)parameterSummary;
@end

@implementation WFLinkNavigateSequentiallyAction

- (id)parameterSummary
{
  v2 = [WFActionParameterSummary alloc];
  v3 = WFLocalizedStringResourceWithKey(@"Navigate to ${direction} item", @"Navigate to ${direction} item");
  v4 = [(WFActionParameterSummary *)v2 initWithString:v3];

  return v4;
}

- (id)localizedNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"WFLinkNavigateSequentiallyAction - Action Name", @"Navigate");
  v5 = [v3 localize:v4];

  return v5;
}

@end