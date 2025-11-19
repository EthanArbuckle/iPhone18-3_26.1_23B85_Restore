@interface RestrictionsControllerDelegate
- (_TtC18PodcastsFoundationP33_1BB6D7E8455315190AE4E4AB578E53C530RestrictionsControllerDelegate)init;
- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)a3 userInfo:(id)a4;
@end

@implementation RestrictionsControllerDelegate

- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)a3 userInfo:(id)a4
{
  if (a4)
  {
    sub_1D917805C();
  }

  v6 = a3;
  v7 = self;
  sub_1D9170118();
}

- (_TtC18PodcastsFoundationP33_1BB6D7E8455315190AE4E4AB578E53C530RestrictionsControllerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end