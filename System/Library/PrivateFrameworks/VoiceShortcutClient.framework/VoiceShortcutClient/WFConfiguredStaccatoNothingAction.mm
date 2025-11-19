@interface WFConfiguredStaccatoNothingAction
- (WFConfiguredStaccatoNothingAction)init;
@end

@implementation WFConfiguredStaccatoNothingAction

- (WFConfiguredStaccatoNothingAction)init
{
  v3.receiver = self;
  v3.super_class = WFConfiguredStaccatoNothingAction;
  return [(WFConfiguredSystemNothingAction *)&v3 init];
}

@end