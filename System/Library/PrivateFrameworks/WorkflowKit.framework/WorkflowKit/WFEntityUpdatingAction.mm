@interface WFEntityUpdatingAction
+ (NSString)entityParameterName;
+ (NSString)propertyParameterName;
- (BOOL)setParameterState:(id)a3 forKey:(id)a4;
- (BOOL)showsAddButtonForParameter:(id)a3;
- (INAppDescriptor)displayableAppDescriptor;
- (NSArray)availableSubjectValues;
- (WFActionParameterSummary)parameterSummary;
- (_TtC11WorkflowKit22WFEntityUpdatingAction)initWithIdentifier:(id)a3 metadata:(id)a4 definition:(id)a5 serializedParameters:(id)a6 appIntentDescriptor:(id)a7 fullyQualifiedActionIdentifier:(id)a8;
- (_TtC11WorkflowKit22WFEntityUpdatingAction)initWithIdentifier:(id)a3 metadata:(id)a4 metadataForParameterIdentifier:(id)a5 definition:(id)a6 serializedParameters:(id)a7 appIntentDescriptor:(id)a8 fullyQualifiedActionIdentifier:(id)a9;
- (id)backingActionIdentifiers;
- (id)copyWithSerializedParameters:(id)a3;
- (id)createStateForParameter:(id)a3 fromSerializedRepresentation:(id)a4;
- (id)localizedDefaultOutputNameWithContext:(id)a3;
- (id)localizedKeywordsWithContext:(id)a3;
- (id)parameterStateForKey:(id)a3;
- (id)parameterStateUpdateForPlusButtonForParameter:(id)a3;
- (id)serializedParameters;
- (id)visibleParametersWithProcessing:(BOOL)a3;
- (int64_t)entityVisibility;
- (int64_t)propertyVisibility;
- (void)configureParameter:(id)a3;
- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4;
- (void)executor:(id)a3 needsValueWithRequest:(id)a4;
- (void)finishRunningWithError:(id)a3;
- (void)getValueForParameterData:(id)a3 ofProcessedParameters:(id)a4 fallingBackToDefaultValue:(BOOL)a5 completionHandler:(id)a6;
- (void)loadDynamicResultForEnumeration:(WFEnumerationParameter *)a3 searchTerm:(NSString *)a4 completionHandler:(id)a5;
- (void)setParameterSummary:(id)a3;
@end

@implementation WFEntityUpdatingAction

- (void)loadDynamicResultForEnumeration:(WFEnumerationParameter *)a3 searchTerm:(NSString *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_1CA67052C(&unk_1CA989CE8, v9);
}

- (void)getValueForParameterData:(id)a3 ofProcessedParameters:(id)a4 fallingBackToDefaultValue:(BOOL)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  if (a4)
  {
    a4 = sub_1CA94C1C8();
  }

  _Block_copy(v10);
  v11 = a3;
  v12 = self;
  sub_1CA4F5A0C(v11, a4, a5, v12, v10);
  _Block_release(v10);
}

- (void)executor:(id)a3 needsValueWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  WFEntityUpdatingAction.executor(_:needsValueWith:)(v6, v7);
}

- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  WFEntityUpdatingAction.executor(_:needsConfirmationWith:)(v6, v7);
}

- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  WFEntityUpdatingAction.executor(_:needsDisambiguationWith:)(v6, v7);
}

- (id)backingActionIdentifiers
{
  v2 = self;
  WFEntityUpdatingAction.backingActionIdentifiers()();

  v3 = sub_1CA94C648();

  return v3;
}

- (void)finishRunningWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  WFEntityUpdatingAction.finishRunningWithError(_:)(a3);
}

- (WFActionParameterSummary)parameterSummary
{
  v2 = self;
  v3 = WFEntityUpdatingAction.parameterSummary.getter();

  return v3;
}

- (void)setParameterSummary:(id)a3
{
  v5 = a3;
  v6 = self;
  WFEntityUpdatingAction.parameterSummary.setter(a3);
}

- (int64_t)entityVisibility
{
  v2 = self;
  v3 = sub_1CA629BD8();

  return v3;
}

- (int64_t)propertyVisibility
{
  v2 = self;
  v3 = sub_1CA629C28();

  return v3;
}

- (id)visibleParametersWithProcessing:(BOOL)a3
{
  v4 = self;
  WFEntityUpdatingAction.visibleParameters(withProcessing:)(a3);

  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  v5 = sub_1CA94C648();

  return v5;
}

- (BOOL)showsAddButtonForParameter:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = WFEntityUpdatingAction.showsAddButton(for:)(v5);

  return self & 1;
}

- (id)parameterStateUpdateForPlusButtonForParameter:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = WFEntityUpdatingAction.parameterStateUpdateForPlusButton(for:)(v5);

  return v6;
}

- (NSArray)availableSubjectValues
{
  v2 = self;
  WFEntityUpdatingAction.availableSubjectValues.getter();

  v3 = sub_1CA94C648();

  return v3;
}

+ (NSString)entityParameterName
{
  v2 = sub_1CA94C368();

  return v2;
}

+ (NSString)propertyParameterName
{
  v2 = sub_1CA94C368();

  return v2;
}

- (_TtC11WorkflowKit22WFEntityUpdatingAction)initWithIdentifier:(id)a3 metadata:(id)a4 metadataForParameterIdentifier:(id)a5 definition:(id)a6 serializedParameters:(id)a7 appIntentDescriptor:(id)a8 fullyQualifiedActionIdentifier:(id)a9
{
  v13 = sub_1CA94C3A8();
  v15 = v14;
  sub_1CA25B3D0(0, &qword_1EC444660, 0x1E69AC670);
  v16 = sub_1CA94C1C8();
  if (a7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    a7 = sub_1CA94C1C8();
  }

  return WFEntityUpdatingAction.init(identifier:metadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(v13, v15, a4, v16, a6, a7, a8, a9);
}

- (id)copyWithSerializedParameters:(id)a3
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    v4 = sub_1CA94C1C8();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v13 = sub_1CA698BC8(v4, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, v18);

  return v13;
}

- (INAppDescriptor)displayableAppDescriptor
{
  v2 = self;
  v3 = sub_1CA698E70();

  return v3;
}

- (id)localizedDefaultOutputNameWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA698F20(v4);
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

- (id)localizedKeywordsWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA699168();

  v6 = sub_1CA94C648();

  return v6;
}

- (id)serializedParameters
{
  v2 = self;
  sub_1CA699848();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v3 = sub_1CA94C1A8();

  return v3;
}

- (void)configureParameter:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA699AA4(v4);
}

- (id)createStateForParameter:(id)a3 fromSerializedRepresentation:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_1CA94D258();
  swift_unknownObjectRelease();
  v7 = sub_1CA699E18(v5, v9);

  __swift_destroy_boxed_opaque_existential_0(v9);

  return v7;
}

- (id)parameterStateForKey:(id)a3
{
  sub_1CA94C3A8();
  v4 = self;
  v5 = sub_1CA699F48();

  return v5;
}

- (BOOL)setParameterState:(id)a3 forKey:(id)a4
{
  v6 = sub_1CA94C3A8();
  v8 = v7;
  swift_unknownObjectRetain();
  v9 = self;
  sub_1CA69A1D4(a3, v6, v8);
  LOBYTE(v6) = v10;
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (_TtC11WorkflowKit22WFEntityUpdatingAction)initWithIdentifier:(id)a3 metadata:(id)a4 definition:(id)a5 serializedParameters:(id)a6 appIntentDescriptor:(id)a7 fullyQualifiedActionIdentifier:(id)a8
{
  sub_1CA94C3A8();
  if (a6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    sub_1CA94C1C8();
  }

  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a8;
  WFEntityUpdatingAction.init(identifier:metadata:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)();
}

@end