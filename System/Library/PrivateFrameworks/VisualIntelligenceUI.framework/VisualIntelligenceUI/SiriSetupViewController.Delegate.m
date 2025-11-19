@interface SiriSetupViewController.Delegate
- (BOOL)siriSetupViewController:(id)a3 openURL:(id)a4;
- (_TtCV20VisualIntelligenceUI23SiriSetupViewControllerP33_22C67463BC5DB27F499695934EEC52688Delegate)init;
- (void)dismissSiriSetupViewController:(void *)a1;
@end

@implementation SiriSetupViewController.Delegate

- (void)dismissSiriSetupViewController:(void *)a1
{
  v1 = a1;
  sub_21DFE1ED4();
}

- (BOOL)siriSetupViewController:(id)a3 openURL:(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  if (a4)
  {
    sub_21E13D214();
    v8 = sub_21E13D264();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_21E13D264();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  sub_21DFE238C(v7);
  return 1;
}

- (_TtCV20VisualIntelligenceUI23SiriSetupViewControllerP33_22C67463BC5DB27F499695934EEC52688Delegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end