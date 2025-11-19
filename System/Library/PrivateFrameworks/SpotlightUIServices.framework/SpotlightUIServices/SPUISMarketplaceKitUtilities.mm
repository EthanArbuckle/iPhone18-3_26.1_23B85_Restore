@interface SPUISMarketplaceKitUtilities
+ (id)distributorPriorityList;
+ (id)distributorPriorityListChangedNotifationName;
- (_TtC19SpotlightUIServices28SPUISMarketplaceKitUtilities)init;
@end

@implementation SPUISMarketplaceKitUtilities

+ (id)distributorPriorityList
{
  sub_26B8C7C24();
  v2 = sub_26B8C7EE4();

  return v2;
}

+ (id)distributorPriorityListChangedNotifationName
{
  v2 = sub_26B8C7C34();

  return v2;
}

- (_TtC19SpotlightUIServices28SPUISMarketplaceKitUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SPUISMarketplaceKitUtilities();
  return [(SPUISMarketplaceKitUtilities *)&v3 init];
}

@end