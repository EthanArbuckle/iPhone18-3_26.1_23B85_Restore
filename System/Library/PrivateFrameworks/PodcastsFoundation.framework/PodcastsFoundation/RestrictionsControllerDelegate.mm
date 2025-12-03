@interface RestrictionsControllerDelegate
- (_TtC18PodcastsFoundationP33_1BB6D7E8455315190AE4E4AB578E53C530RestrictionsControllerDelegate)init;
- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation RestrictionsControllerDelegate

- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)notification userInfo:(id)info
{
  if (info)
  {
    sub_1D917805C();
  }

  notificationCopy = notification;
  selfCopy = self;
  sub_1D9170118();
}

- (_TtC18PodcastsFoundationP33_1BB6D7E8455315190AE4E4AB578E53C530RestrictionsControllerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end