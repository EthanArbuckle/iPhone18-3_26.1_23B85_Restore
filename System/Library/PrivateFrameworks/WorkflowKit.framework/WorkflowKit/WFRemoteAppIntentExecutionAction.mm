@interface WFRemoteAppIntentExecutionAction
- (BOOL)isApprovedForPublicShortcutsDrawer;
- (WFRemoteAppIntentExecutionAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters;
- (id)outputVariableWithVariableProvider:(id)provider UUIDProvider:(id)dProvider;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFRemoteAppIntentExecutionAction

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  selfCopy = self;
  sub_1CA3C0D68();
}

- (id)outputVariableWithVariableProvider:(id)provider UUIDProvider:(id)dProvider
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_1CA3CD678();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v6;
}

- (BOOL)isApprovedForPublicShortcutsDrawer
{
  selfCopy = self;
  sub_1CA3CDB80();

  return 0;
}

- (WFRemoteAppIntentExecutionAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters
{
  v7 = sub_1CA94C3A8();
  v9 = v8;
  if (parameters)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    parameters = sub_1CA94C1C8();
  }

  definitionCopy = definition;
  return sub_1CA3CDD2C(v7, v9, definition, parameters);
}

@end