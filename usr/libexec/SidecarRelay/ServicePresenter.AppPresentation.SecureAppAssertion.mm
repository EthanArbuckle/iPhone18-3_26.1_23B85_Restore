@interface ServicePresenter.AppPresentation.SecureAppAssertion
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5;
@end

@implementation ServicePresenter.AppPresentation.SecureAppAssertion

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5
{
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10004EC2C(a3, a4, a5);
  swift_unknownObjectRelease();
}

@end