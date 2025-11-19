@interface SettingsHostViewControllerRepresentable.MutableState
- (_TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState)init;
- (void)hostViewController:(id)a3 didBeginHosting:(id)a4;
- (void)hostViewController:(id)a3 didEndHosting:(id)a4 error:(id)a5;
- (void)hostViewController:(id)a3 didFailToHost:(id)a4 error:(id)a5;
- (void)hostViewController:(id)a3 didPrepareToHost:(id)a4;
@end

@implementation SettingsHostViewControllerRepresentable.MutableState

- (void)hostViewController:(id)a3 didPrepareToHost:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_21CE239FC();
}

- (void)hostViewController:(id)a3 didEndHosting:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_21CE23C84();
}

- (void)hostViewController:(id)a3 didFailToHost:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_21CE23F24(a5);
}

- (void)hostViewController:(id)a3 didBeginHosting:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_21CE24540();
}

- (_TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end