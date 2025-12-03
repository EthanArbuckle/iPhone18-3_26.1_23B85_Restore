@interface EditingCoordinator
- (_TtC21PosterBoardUIServices18EditingCoordinator)init;
- (void)editingViewController:(id)controller didFinishWithConfiguration:(id)configuration;
- (void)injectedEditingClientSettingsDidChange:(id)change;
@end

@implementation EditingCoordinator

- (void)editingViewController:(id)controller didFinishWithConfiguration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  selfCopy = self;
  sub_1CAEB168C(controllerCopy, configuration);
}

- (void)injectedEditingClientSettingsDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1CAEB1968(changeCopy);
}

- (_TtC21PosterBoardUIServices18EditingCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end