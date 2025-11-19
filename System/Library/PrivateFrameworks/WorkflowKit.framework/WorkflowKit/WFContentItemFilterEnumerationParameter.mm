@interface WFContentItemFilterEnumerationParameter
- (id)localizedLabelForPossibleState:(id)a3;
@end

@implementation WFContentItemFilterEnumerationParameter

- (id)localizedLabelForPossibleState:(id)a3
{
  v4 = a3;
  v5 = [v4 value];
  v6 = [v5 isEqualToString:@"Library"];

  if (v6)
  {
    v7 = [(objc_class *)[(WFContentItemFilterEnumerationParameter *)self contentItemClass] localizedPluralFilterDescription];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFContentItemFilterEnumerationParameter;
    v7 = [(WFEnumerationParameter *)&v10 localizedLabelForPossibleState:v4];
  }

  v8 = v7;

  return v8;
}

@end