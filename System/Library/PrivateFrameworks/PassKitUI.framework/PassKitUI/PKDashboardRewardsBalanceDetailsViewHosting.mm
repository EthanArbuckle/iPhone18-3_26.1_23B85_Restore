@interface PKDashboardRewardsBalanceDetailsViewHosting
+ (id)makeViewControllerWithRewardsBalanceItem:(id)item;
- (PKDashboardRewardsBalanceDetailsViewHosting)init;
@end

@implementation PKDashboardRewardsBalanceDetailsViewHosting

+ (id)makeViewControllerWithRewardsBalanceItem:(id)item
{
  itemCopy = item;
  v4 = _s9PassKitUI43PKDashboardRewardsBalanceDetailsViewHostingC04makeH10Controller07rewardsF4ItemSo06UIViewK0CSo0defM0C_tFZ_0(itemCopy);

  return v4;
}

- (PKDashboardRewardsBalanceDetailsViewHosting)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PKDashboardRewardsBalanceDetailsViewHosting();
  return [(PKDashboardRewardsBalanceDetailsViewHosting *)&v3 init];
}

@end