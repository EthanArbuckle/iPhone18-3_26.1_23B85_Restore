@interface WBSFeatureRestrictionAlertHelper
- (WBSFeatureRestrictionAlertHelper)init;
- (void)displayHistoryClearingDenialAlert;
- (void)displayPrivateBrowsingDenialAlert;
@end

@implementation WBSFeatureRestrictionAlertHelper

- (void)displayPrivateBrowsingDenialAlert
{
  v2 = self;
  WBSFeatureRestrictionAlertHelper.displayPrivateBrowsingDenialAlert()();
}

- (void)displayHistoryClearingDenialAlert
{
  v2 = self;
  WBSFeatureRestrictionAlertHelper.displayHistoryClearingDenialAlert()();
}

- (WBSFeatureRestrictionAlertHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end