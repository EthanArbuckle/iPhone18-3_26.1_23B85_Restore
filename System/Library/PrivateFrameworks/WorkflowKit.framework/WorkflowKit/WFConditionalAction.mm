@interface WFConditionalAction
- (BOOL)inputRequired;
- (BOOL)isDeletable;
- (BOOL)legacyBehaviorIgnoresOutputFromAction:(id)action inWorkflow:(id)workflow;
- (BOOL)setParameterState:(id)state forKey:(id)key;
- (BOOL)showsAddButtonForParameter:(id)parameter;
- (BOOL)truthWithVariableSource:(id)source;
- (NSArray)inputContentClasses;
- (WFActionParameterSummary)parameterSummary;
- (WFConditionalAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters;
- (id)createAccompanyingActions;
- (id)localizedDefaultOutputNameWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
- (id)minimumSupportedClientVersion;
- (id)parameterStateForKey:(id)key fallingBackToDefaultValue:(BOOL)value;
- (id)parameterStateUpdateForPlusButtonForParameter:(id)parameter;
- (id)serializedParameters;
- (id)visibleParametersWithProcessing:(BOOL)processing;
- (void)resetEvaluationCriteriaWithVariableSource:(id)source;
- (void)runWithInput:(WFContentCollection *)input completionHandler:(id)handler;
- (void)variableDidChange:(id)change;
- (void)visibleParametersUpdated;
@end

@implementation WFConditionalAction

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1CA438EEC();

  v6 = sub_1CA94C368();

  return v6;
}

- (BOOL)isDeletable
{
  selfCopy = self;
  v3 = sub_1CA439278();

  return v3;
}

- (BOOL)inputRequired
{
  selfCopy = self;
  v3 = sub_1CA4393B8();

  return v3;
}

- (NSArray)inputContentClasses
{
  selfCopy = self;
  sub_1CA439454();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
  v3 = sub_1CA94C648();

  return v3;
}

- (BOOL)legacyBehaviorIgnoresOutputFromAction:(id)action inWorkflow:(id)workflow
{
  actionCopy = action;
  actionCopy2 = action;
  workflowCopy = workflow;
  selfCopy = self;
  LOBYTE(actionCopy) = sub_1CA4394DC(actionCopy, workflowCopy);

  return actionCopy & 1;
}

- (id)localizedDefaultOutputNameWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1CA4395D8();
  v7 = v6;

  if (v7)
  {
    v8 = sub_1CA94C368();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createAccompanyingActions
{
  selfCopy = self;
  v3 = sub_1CA4397B4();

  if (v3)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    v4 = sub_1CA94C648();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (WFConditionalAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters
{
  v7 = sub_1CA94C3A8();
  v9 = v8;
  if (parameters)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    parameters = sub_1CA94C1C8();
  }

  definitionCopy = definition;
  return WFConditionalAction.init(identifier:definition:serializedParameters:)(v7, v9, definition, parameters);
}

- (id)serializedParameters
{
  selfCopy = self;
  sub_1CA439DB8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v3 = sub_1CA94C1A8();

  return v3;
}

- (id)minimumSupportedClientVersion
{
  selfCopy = self;
  sub_1CA43A4A0();

  v3 = sub_1CA94C368();

  return v3;
}

- (WFActionParameterSummary)parameterSummary
{
  selfCopy = self;
  sub_1CA43A920();
  v4 = v3;

  return v4;
}

- (id)visibleParametersWithProcessing:(BOOL)processing
{
  selfCopy = self;
  sub_1CA43B220();

  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  v4 = sub_1CA94C648();

  return v4;
}

- (BOOL)setParameterState:(id)state forKey:(id)key
{
  sub_1CA94C3A8();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1CA43C050();
  v7 = v6;
  swift_unknownObjectRelease();

  return v7 & 1;
}

- (id)parameterStateForKey:(id)key fallingBackToDefaultValue:(BOOL)value
{
  v5 = sub_1CA94C3A8();
  v7 = v6;
  selfCopy = self;
  v9 = sub_1CA43CB20(v5, v7);

  return v9;
}

- (void)visibleParametersUpdated
{
  selfCopy = self;
  sub_1CA43D094();
}

- (void)resetEvaluationCriteriaWithVariableSource:(id)source
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1CA43D3FC(source);
  swift_unknownObjectRelease();
}

- (BOOL)truthWithVariableSource:(id)source
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_1CA43D5CC(source);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (void)runWithInput:(WFContentCollection *)input completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = input;
  v7[3] = v6;
  v7[4] = self;
  inputCopy = input;
  selfCopy = self;

  sub_1CA67052C(&unk_1CA987B68, v7);
}

- (BOOL)showsAddButtonForParameter:(id)parameter
{
  parameterCopy = parameter;
  selfCopy = self;
  LOBYTE(self) = WFConditionalAction.showsAddButton(for:)(selfCopy);

  return self & 1;
}

- (id)parameterStateUpdateForPlusButtonForParameter:(id)parameter
{
  parameterCopy = parameter;
  selfCopy = self;
  v6 = WFConditionalAction.parameterStateUpdateForPlusButton(for:)(selfCopy);

  return v6;
}

- (void)variableDidChange:(id)change
{
  changeCopy = change;
  v7.super.isa = self;
  isa = v7.super.isa;
  WFConditionalAction.variableDidChange(_:)(v7);
}

@end