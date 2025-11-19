@interface WFRemoteAppIntentExecutionAction
- (BOOL)isApprovedForPublicShortcutsDrawer;
- (WFRemoteAppIntentExecutionAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5;
- (id)outputVariableWithVariableProvider:(id)a3 UUIDProvider:(id)a4;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFRemoteAppIntentExecutionAction

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA3C0D68();
}

- (id)outputVariableWithVariableProvider:(id)a3 UUIDProvider:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_1CA3CD678();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v6;
}

- (BOOL)isApprovedForPublicShortcutsDrawer
{
  v2 = self;
  sub_1CA3CDB80();

  return 0;
}

- (WFRemoteAppIntentExecutionAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5
{
  v7 = sub_1CA94C3A8();
  v9 = v8;
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    a5 = sub_1CA94C1C8();
  }

  v10 = a4;
  return sub_1CA3CDD2C(v7, v9, a4, a5);
}

@end