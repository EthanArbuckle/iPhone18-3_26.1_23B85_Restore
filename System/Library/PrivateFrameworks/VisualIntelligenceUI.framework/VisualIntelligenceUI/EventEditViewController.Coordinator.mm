@interface EventEditViewController.Coordinator
- (_TtCV20VisualIntelligenceUI23EventEditViewController11Coordinator)init;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action;
@end

@implementation EventEditViewController.Coordinator

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  controllerCopy = controller;
  selfCopy = self;
  sub_21E125508(controllerCopy, action);
}

- (_TtCV20VisualIntelligenceUI23EventEditViewController11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end