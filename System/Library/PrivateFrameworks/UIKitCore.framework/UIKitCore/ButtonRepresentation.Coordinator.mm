@interface ButtonRepresentation.Coordinator
- (_TtCV5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8720ButtonRepresentation11Coordinator)init;
- (void)_invokeWithRealSender:(id)sender forEvent:(id)event;
@end

@implementation ButtonRepresentation.Coordinator

- (void)_invokeWithRealSender:(id)sender forEvent:(id)event
{
  v5 = OBJC_IVAR____TtCV5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8720ButtonRepresentation11Coordinator_barButtonItem;
  v6 = *(&self->super.isa + OBJC_IVAR____TtCV5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8720ButtonRepresentation11Coordinator_barButtonItem);
  eventCopy = event;
  selfCopy = self;
  [v6 _triggerActionForEvent_];
  [*(&self->super.isa + v5) _executeValidationHandler];
}

- (_TtCV5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8720ButtonRepresentation11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end