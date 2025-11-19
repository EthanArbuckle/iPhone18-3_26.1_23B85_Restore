@interface WFConditionalAction
- (BOOL)inputRequired;
- (BOOL)isDeletable;
- (BOOL)legacyBehaviorIgnoresOutputFromAction:(id)a3 inWorkflow:(id)a4;
- (BOOL)setParameterState:(id)a3 forKey:(id)a4;
- (BOOL)showsAddButtonForParameter:(id)a3;
- (BOOL)truthWithVariableSource:(id)a3;
- (NSArray)inputContentClasses;
- (WFActionParameterSummary)parameterSummary;
- (WFConditionalAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5;
- (id)createAccompanyingActions;
- (id)localizedDefaultOutputNameWithContext:(id)a3;
- (id)localizedNameWithContext:(id)a3;
- (id)minimumSupportedClientVersion;
- (id)parameterStateForKey:(id)a3 fallingBackToDefaultValue:(BOOL)a4;
- (id)parameterStateUpdateForPlusButtonForParameter:(id)a3;
- (id)serializedParameters;
- (id)visibleParametersWithProcessing:(BOOL)a3;
- (void)resetEvaluationCriteriaWithVariableSource:(id)a3;
- (void)runWithInput:(WFContentCollection *)a3 completionHandler:(id)a4;
- (void)variableDidChange:(id)a3;
- (void)visibleParametersUpdated;
@end

@implementation WFConditionalAction

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA438EEC();

  v6 = sub_1CA94C368();

  return v6;
}

- (BOOL)isDeletable
{
  v2 = self;
  v3 = sub_1CA439278();

  return v3;
}

- (BOOL)inputRequired
{
  v2 = self;
  v3 = sub_1CA4393B8();

  return v3;
}

- (NSArray)inputContentClasses
{
  v2 = self;
  sub_1CA439454();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
  v3 = sub_1CA94C648();

  return v3;
}

- (BOOL)legacyBehaviorIgnoresOutputFromAction:(id)a3 inWorkflow:(id)a4
{
  v5 = a3;
  v7 = a3;
  v8 = a4;
  v9 = self;
  LOBYTE(v5) = sub_1CA4394DC(v5, v8);

  return v5 & 1;
}

- (id)localizedDefaultOutputNameWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
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
  v2 = self;
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

- (WFConditionalAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5
{
  v7 = sub_1CA94C3A8();
  v9 = v8;
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    a5 = sub_1CA94C1C8();
  }

  v10 = a4;
  return WFConditionalAction.init(identifier:definition:serializedParameters:)(v7, v9, a4, a5);
}

- (id)serializedParameters
{
  v2 = self;
  sub_1CA439DB8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v3 = sub_1CA94C1A8();

  return v3;
}

- (id)minimumSupportedClientVersion
{
  v2 = self;
  sub_1CA43A4A0();

  v3 = sub_1CA94C368();

  return v3;
}

- (WFActionParameterSummary)parameterSummary
{
  v2 = self;
  sub_1CA43A920();
  v4 = v3;

  return v4;
}

- (id)visibleParametersWithProcessing:(BOOL)a3
{
  v3 = self;
  sub_1CA43B220();

  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  v4 = sub_1CA94C648();

  return v4;
}

- (BOOL)setParameterState:(id)a3 forKey:(id)a4
{
  sub_1CA94C3A8();
  swift_unknownObjectRetain();
  v5 = self;
  sub_1CA43C050();
  v7 = v6;
  swift_unknownObjectRelease();

  return v7 & 1;
}

- (id)parameterStateForKey:(id)a3 fallingBackToDefaultValue:(BOOL)a4
{
  v5 = sub_1CA94C3A8();
  v7 = v6;
  v8 = self;
  v9 = sub_1CA43CB20(v5, v7);

  return v9;
}

- (void)visibleParametersUpdated
{
  v2 = self;
  sub_1CA43D094();
}

- (void)resetEvaluationCriteriaWithVariableSource:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1CA43D3FC(a3);
  swift_unknownObjectRelease();
}

- (BOOL)truthWithVariableSource:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_1CA43D5CC(a3);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (void)runWithInput:(WFContentCollection *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1CA67052C(&unk_1CA987B68, v7);
}

- (BOOL)showsAddButtonForParameter:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = WFConditionalAction.showsAddButton(for:)(v5);

  return self & 1;
}

- (id)parameterStateUpdateForPlusButtonForParameter:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = WFConditionalAction.parameterStateUpdateForPlusButton(for:)(v5);

  return v6;
}

- (void)variableDidChange:(id)a3
{
  v4 = a3;
  v7.super.isa = self;
  isa = v7.super.isa;
  WFConditionalAction.variableDidChange(_:)(v7);
}

@end