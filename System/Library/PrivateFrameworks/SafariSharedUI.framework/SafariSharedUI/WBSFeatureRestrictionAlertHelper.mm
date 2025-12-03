@interface WBSFeatureRestrictionAlertHelper
- (WBSFeatureRestrictionAlertHelper)init;
- (void)displayHistoryClearingDenialAlert;
- (void)displayPrivateBrowsingDenialAlert;
@end

@implementation WBSFeatureRestrictionAlertHelper

- (void)displayPrivateBrowsingDenialAlert
{
  selfCopy = self;
  WBSFeatureRestrictionAlertHelper.displayPrivateBrowsingDenialAlert()();
}

- (void)displayHistoryClearingDenialAlert
{
  selfCopy = self;
  WBSFeatureRestrictionAlertHelper.displayHistoryClearingDenialAlert()();
}

- (WBSFeatureRestrictionAlertHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end