@interface MTMusicSubscriptionInfoSyncUtil
- (MTMusicSubscriptionInfoSyncUtil)init;
- (MTMusicSubscriptionInfoSyncUtil)initWithBag:(id)bag accountStore:(id)store;
@end

@implementation MTMusicSubscriptionInfoSyncUtil

- (MTMusicSubscriptionInfoSyncUtil)initWithBag:(id)bag accountStore:(id)store
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  storeCopy = store;

  return sub_1D90662DC(bag, storeCopy, self);
}

- (MTMusicSubscriptionInfoSyncUtil)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end