@interface SettingsHostViewControllerRepresentable.MutableState
- (_TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState)init;
- (void)hostViewController:(id)controller didBeginHosting:(id)hosting;
- (void)hostViewController:(id)controller didEndHosting:(id)hosting error:(id)error;
- (void)hostViewController:(id)controller didFailToHost:(id)host error:(id)error;
- (void)hostViewController:(id)controller didPrepareToHost:(id)host;
@end

@implementation SettingsHostViewControllerRepresentable.MutableState

- (void)hostViewController:(id)controller didPrepareToHost:(id)host
{
  controllerCopy = controller;
  hostCopy = host;
  selfCopy = self;
  sub_21CE239FC();
}

- (void)hostViewController:(id)controller didEndHosting:(id)hosting error:(id)error
{
  controllerCopy = controller;
  hostingCopy = hosting;
  selfCopy = self;
  errorCopy = error;
  sub_21CE23C84();
}

- (void)hostViewController:(id)controller didFailToHost:(id)host error:(id)error
{
  controllerCopy = controller;
  hostCopy = host;
  selfCopy = self;
  errorCopy = error;
  sub_21CE23F24(error);
}

- (void)hostViewController:(id)controller didBeginHosting:(id)hosting
{
  controllerCopy = controller;
  hostingCopy = hosting;
  selfCopy = self;
  sub_21CE24540();
}

- (_TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end