@interface MTMusicSubscriptionInfoSyncUtil
- (MTMusicSubscriptionInfoSyncUtil)init;
- (MTMusicSubscriptionInfoSyncUtil)initWithBag:(id)a3 accountStore:(id)a4;
@end

@implementation MTMusicSubscriptionInfoSyncUtil

- (MTMusicSubscriptionInfoSyncUtil)initWithBag:(id)a3 accountStore:(id)a4
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = a4;

  return sub_1D90662DC(a3, v7, self);
}

- (MTMusicSubscriptionInfoSyncUtil)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end