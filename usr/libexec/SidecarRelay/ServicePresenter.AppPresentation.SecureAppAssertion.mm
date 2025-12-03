@interface ServicePresenter.AppPresentation.SecureAppAssertion
- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event;
@end

@implementation ServicePresenter.AppPresentation.SecureAppAssertion

- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event
{
  swift_unknownObjectRetain();
  eventCopy = event;
  selfCopy = self;
  sub_10004EC2C(backlight, state, event);
  swift_unknownObjectRelease();
}

@end