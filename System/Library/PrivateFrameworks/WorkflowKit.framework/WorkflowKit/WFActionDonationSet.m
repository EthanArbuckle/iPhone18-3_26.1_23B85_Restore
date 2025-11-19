@interface WFActionDonationSet
- (WFActionDonationSet)init;
@end

@implementation WFActionDonationSet

- (WFActionDonationSet)init
{
  v11.receiver = self;
  v11.super_class = WFActionDonationSet;
  v2 = [(WFActionDonationSet *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    predictedActions = v2->_predictedActions;
    v2->_predictedActions = v3;

    v5 = objc_opt_new();
    recentActions = v2->_recentActions;
    v2->_recentActions = v5;

    v7 = objc_opt_new();
    appSuggestedActions = v2->_appSuggestedActions;
    v2->_appSuggestedActions = v7;

    v9 = v2;
  }

  return v2;
}

@end