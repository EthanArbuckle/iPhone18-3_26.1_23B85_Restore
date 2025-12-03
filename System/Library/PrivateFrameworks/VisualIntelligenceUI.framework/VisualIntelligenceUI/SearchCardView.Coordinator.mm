@interface SearchCardView.Coordinator
- (BOOL)canPerformCommand:(id)command;
- (_TtCV20VisualIntelligenceUI14SearchCardView11Coordinator)init;
- (void)cardViewController:(id)controller preferredContentSizeDidChange:(CGSize)change animated:(BOOL)animated;
- (void)performCommand:(id)command;
- (void)presentViewController:(id)controller;
@end

@implementation SearchCardView.Coordinator

- (void)cardViewController:(id)controller preferredContentSizeDidChange:(CGSize)change animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  sub_21DFF26EC(controller);
}

- (void)presentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_21DFF11EC(controller);
}

- (BOOL)canPerformCommand:(id)command
{
  commandCopy = command;
  commandCopy2 = command;
  selfCopy = self;
  LOBYTE(commandCopy) = sub_21DFF2814(commandCopy);

  return commandCopy & 1;
}

- (void)performCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_21DFF18FC(command);
}

- (_TtCV20VisualIntelligenceUI14SearchCardView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end