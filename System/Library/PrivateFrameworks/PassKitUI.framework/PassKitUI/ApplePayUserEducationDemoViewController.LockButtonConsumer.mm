@interface ApplePayUserEducationDemoViewController.LockButtonConsumer
- (void)consumeDoublePressUpForButtonKind:(int64_t)kind;
@end

@implementation ApplePayUserEducationDemoViewController.LockButtonConsumer

- (void)consumeDoublePressUpForButtonKind:(int64_t)kind
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCC9PassKitUI39ApplePayUserEducationDemoViewControllerP33_722E2528CE6F81F660593DCAA893F90F18LockButtonConsumer_didConsumeDoublePressUp);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_1BD0D44B8(v3);
    v3(v5);

    sub_1BD0D4744(v3);
  }
}

@end