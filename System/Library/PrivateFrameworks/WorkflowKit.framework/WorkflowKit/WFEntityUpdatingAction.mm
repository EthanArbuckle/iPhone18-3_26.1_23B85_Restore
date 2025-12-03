@interface WFEntityUpdatingAction
+ (NSString)entityParameterName;
+ (NSString)propertyParameterName;
- (BOOL)setParameterState:(id)state forKey:(id)key;
- (BOOL)showsAddButtonForParameter:(id)parameter;
- (INAppDescriptor)displayableAppDescriptor;
- (NSArray)availableSubjectValues;
- (WFActionParameterSummary)parameterSummary;
- (_TtC11WorkflowKit22WFEntityUpdatingAction)initWithIdentifier:(id)identifier metadata:(id)metadata definition:(id)definition serializedParameters:(id)parameters appIntentDescriptor:(id)descriptor fullyQualifiedActionIdentifier:(id)actionIdentifier;
- (_TtC11WorkflowKit22WFEntityUpdatingAction)initWithIdentifier:(id)identifier metadata:(id)metadata metadataForParameterIdentifier:(id)parameterIdentifier definition:(id)definition serializedParameters:(id)parameters appIntentDescriptor:(id)descriptor fullyQualifiedActionIdentifier:(id)actionIdentifier;
- (id)backingActionIdentifiers;
- (id)copyWithSerializedParameters:(id)parameters;
- (id)createStateForParameter:(id)parameter fromSerializedRepresentation:(id)representation;
- (id)localizedDefaultOutputNameWithContext:(id)context;
- (id)localizedKeywordsWithContext:(id)context;
- (id)parameterStateForKey:(id)key;
- (id)parameterStateUpdateForPlusButtonForParameter:(id)parameter;
- (id)serializedParameters;
- (id)visibleParametersWithProcessing:(BOOL)processing;
- (int64_t)entityVisibility;
- (int64_t)propertyVisibility;
- (void)configureParameter:(id)parameter;
- (void)executor:(id)executor needsConfirmationWithRequest:(id)request;
- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request;
- (void)executor:(id)executor needsValueWithRequest:(id)request;
- (void)finishRunningWithError:(id)error;
- (void)getValueForParameterData:(id)data ofProcessedParameters:(id)parameters fallingBackToDefaultValue:(BOOL)value completionHandler:(id)handler;
- (void)loadDynamicResultForEnumeration:(WFEnumerationParameter *)enumeration searchTerm:(NSString *)term completionHandler:(id)handler;
- (void)setParameterSummary:(id)summary;
@end

@implementation WFEntityUpdatingAction

- (void)loadDynamicResultForEnumeration:(WFEnumerationParameter *)enumeration searchTerm:(NSString *)term completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = enumeration;
  v9[3] = term;
  v9[4] = v8;
  v9[5] = self;
  enumerationCopy = enumeration;
  termCopy = term;
  selfCopy = self;

  sub_1CA67052C(&unk_1CA989CE8, v9);
}

- (void)getValueForParameterData:(id)data ofProcessedParameters:(id)parameters fallingBackToDefaultValue:(BOOL)value completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  if (parameters)
  {
    parameters = sub_1CA94C1C8();
  }

  _Block_copy(v10);
  dataCopy = data;
  selfCopy = self;
  sub_1CA4F5A0C(dataCopy, parameters, value, selfCopy, v10);
  _Block_release(v10);
}

- (void)executor:(id)executor needsValueWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  WFEntityUpdatingAction.executor(_:needsValueWith:)(executorCopy, requestCopy);
}

- (void)executor:(id)executor needsConfirmationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  WFEntityUpdatingAction.executor(_:needsConfirmationWith:)(executorCopy, requestCopy);
}

- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  WFEntityUpdatingAction.executor(_:needsDisambiguationWith:)(executorCopy, requestCopy);
}

- (id)backingActionIdentifiers
{
  selfCopy = self;
  WFEntityUpdatingAction.backingActionIdentifiers()();

  v3 = sub_1CA94C648();

  return v3;
}

- (void)finishRunningWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  WFEntityUpdatingAction.finishRunningWithError(_:)(error);
}

- (WFActionParameterSummary)parameterSummary
{
  selfCopy = self;
  v3 = WFEntityUpdatingAction.parameterSummary.getter();

  return v3;
}

- (void)setParameterSummary:(id)summary
{
  summaryCopy = summary;
  selfCopy = self;
  WFEntityUpdatingAction.parameterSummary.setter(summary);
}

- (int64_t)entityVisibility
{
  selfCopy = self;
  v3 = sub_1CA629BD8();

  return v3;
}

- (int64_t)propertyVisibility
{
  selfCopy = self;
  v3 = sub_1CA629C28();

  return v3;
}

- (id)visibleParametersWithProcessing:(BOOL)processing
{
  selfCopy = self;
  WFEntityUpdatingAction.visibleParameters(withProcessing:)(processing);

  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  v5 = sub_1CA94C648();

  return v5;
}

- (BOOL)showsAddButtonForParameter:(id)parameter
{
  parameterCopy = parameter;
  selfCopy = self;
  LOBYTE(self) = WFEntityUpdatingAction.showsAddButton(for:)(selfCopy);

  return self & 1;
}

- (id)parameterStateUpdateForPlusButtonForParameter:(id)parameter
{
  parameterCopy = parameter;
  selfCopy = self;
  v6 = WFEntityUpdatingAction.parameterStateUpdateForPlusButton(for:)(selfCopy);

  return v6;
}

- (NSArray)availableSubjectValues
{
  selfCopy = self;
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

- (_TtC11WorkflowKit22WFEntityUpdatingAction)initWithIdentifier:(id)identifier metadata:(id)metadata metadataForParameterIdentifier:(id)parameterIdentifier definition:(id)definition serializedParameters:(id)parameters appIntentDescriptor:(id)descriptor fullyQualifiedActionIdentifier:(id)actionIdentifier
{
  v13 = sub_1CA94C3A8();
  v15 = v14;
  sub_1CA25B3D0(0, &qword_1EC444660, 0x1E69AC670);
  v16 = sub_1CA94C1C8();
  if (parameters)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    parameters = sub_1CA94C1C8();
  }

  return WFEntityUpdatingAction.init(identifier:metadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(v13, v15, metadata, v16, definition, parameters, descriptor, actionIdentifier);
}

- (id)copyWithSerializedParameters:(id)parameters
{
  if (parameters)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    v4 = sub_1CA94C1C8();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v13 = sub_1CA698BC8(v4, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, v18);

  return v13;
}

- (INAppDescriptor)displayableAppDescriptor
{
  selfCopy = self;
  v3 = sub_1CA698E70();

  return v3;
}

- (id)localizedDefaultOutputNameWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1CA698F20(contextCopy);
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

- (id)localizedKeywordsWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1CA699168();

  v6 = sub_1CA94C648();

  return v6;
}

- (id)serializedParameters
{
  selfCopy = self;
  sub_1CA699848();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v3 = sub_1CA94C1A8();

  return v3;
}

- (void)configureParameter:(id)parameter
{
  parameterCopy = parameter;
  selfCopy = self;
  sub_1CA699AA4(parameterCopy);
}

- (id)createStateForParameter:(id)parameter fromSerializedRepresentation:(id)representation
{
  parameterCopy = parameter;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1CA94D258();
  swift_unknownObjectRelease();
  v7 = sub_1CA699E18(parameterCopy, v9);

  __swift_destroy_boxed_opaque_existential_0(v9);

  return v7;
}

- (id)parameterStateForKey:(id)key
{
  sub_1CA94C3A8();
  selfCopy = self;
  v5 = sub_1CA699F48();

  return v5;
}

- (BOOL)setParameterState:(id)state forKey:(id)key
{
  v6 = sub_1CA94C3A8();
  v8 = v7;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1CA69A1D4(state, v6, v8);
  LOBYTE(v6) = v10;
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (_TtC11WorkflowKit22WFEntityUpdatingAction)initWithIdentifier:(id)identifier metadata:(id)metadata definition:(id)definition serializedParameters:(id)parameters appIntentDescriptor:(id)descriptor fullyQualifiedActionIdentifier:(id)actionIdentifier
{
  sub_1CA94C3A8();
  if (parameters)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    sub_1CA94C1C8();
  }

  metadataCopy = metadata;
  definitionCopy = definition;
  descriptorCopy = descriptor;
  actionIdentifierCopy = actionIdentifier;
  WFEntityUpdatingAction.init(identifier:metadata:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)();
}

@end