@interface WFTargetedEntityUpdaterAction
- (BOOL)visibleForUse:(int64_t)use;
- (NSArray)parameterDefinitions;
- (_TtC11WorkflowKit29WFTargetedEntityUpdaterAction)initWithIdentifier:(id)identifier actionMetadata:(id)metadata entityMetadata:(id)entityMetadata metadataForParameterIdentifier:(id)parameterIdentifier definition:(id)definition serializedParameters:(id)parameters appIntentDescriptor:(id)descriptor fullyQualifiedActionIdentifier:(id)self0;
- (_TtC11WorkflowKit29WFTargetedEntityUpdaterAction)initWithIdentifier:(id)identifier metadata:(id)metadata metadataForParameterIdentifier:(id)parameterIdentifier definition:(id)definition serializedParameters:(id)parameters appIntentDescriptor:(id)descriptor fullyQualifiedActionIdentifier:(id)actionIdentifier;
- (id)copyWithSerializedParameters:(id)parameters;
- (id)localizedNameWithContext:(id)context;
@end

@implementation WFTargetedEntityUpdaterAction

- (_TtC11WorkflowKit29WFTargetedEntityUpdaterAction)initWithIdentifier:(id)identifier actionMetadata:(id)metadata entityMetadata:(id)entityMetadata metadataForParameterIdentifier:(id)parameterIdentifier definition:(id)definition serializedParameters:(id)parameters appIntentDescriptor:(id)descriptor fullyQualifiedActionIdentifier:(id)self0
{
  v14 = sub_1CA94C3A8();
  v16 = v15;
  sub_1CA25B3D0(0, &qword_1EC444660, 0x1E69AC670);
  v17 = sub_1CA94C1C8();
  if (parameters)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    parameters = sub_1CA94C1C8();
  }

  WFTargetedEntityUpdaterAction.init(identifier:actionMetadata:entityMetadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(v14, v16, metadata, entityMetadata, v17, definition, parameters, descriptor, actionIdentifier, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, vars0);
  return result;
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
  v6 = sub_1CA332CE4(v4);

  return v6;
}

- (NSArray)parameterDefinitions
{
  selfCopy = self;
  sub_1CA332FE4();

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v3 = sub_1CA94C648();

  return v3;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1CA3336E0();

  v6 = sub_1CA94C368();

  return v6;
}

- (BOOL)visibleForUse:(int64_t)use
{
  selfCopy = self;
  LOBYTE(use) = sub_1CA3348B0(use);

  return use & 1;
}

- (_TtC11WorkflowKit29WFTargetedEntityUpdaterAction)initWithIdentifier:(id)identifier metadata:(id)metadata metadataForParameterIdentifier:(id)parameterIdentifier definition:(id)definition serializedParameters:(id)parameters appIntentDescriptor:(id)descriptor fullyQualifiedActionIdentifier:(id)actionIdentifier
{
  sub_1CA94C3A8();
  sub_1CA25B3D0(0, &qword_1EC444660, 0x1E69AC670);
  sub_1CA94C1C8();
  if (parameters)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    sub_1CA94C1C8();
  }

  metadataCopy = metadata;
  definitionCopy = definition;
  descriptorCopy = descriptor;
  actionIdentifierCopy = actionIdentifier;
  WFTargetedEntityUpdaterAction.__allocating_init(identifier:metadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)();
}

@end