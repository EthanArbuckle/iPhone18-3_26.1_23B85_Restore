@interface WFTargetedEntityUpdaterAction
- (BOOL)visibleForUse:(int64_t)a3;
- (NSArray)parameterDefinitions;
- (_TtC11WorkflowKit29WFTargetedEntityUpdaterAction)initWithIdentifier:(id)a3 actionMetadata:(id)a4 entityMetadata:(id)a5 metadataForParameterIdentifier:(id)a6 definition:(id)a7 serializedParameters:(id)a8 appIntentDescriptor:(id)a9 fullyQualifiedActionIdentifier:(id)a10;
- (_TtC11WorkflowKit29WFTargetedEntityUpdaterAction)initWithIdentifier:(id)a3 metadata:(id)a4 metadataForParameterIdentifier:(id)a5 definition:(id)a6 serializedParameters:(id)a7 appIntentDescriptor:(id)a8 fullyQualifiedActionIdentifier:(id)a9;
- (id)copyWithSerializedParameters:(id)a3;
- (id)localizedNameWithContext:(id)a3;
@end

@implementation WFTargetedEntityUpdaterAction

- (_TtC11WorkflowKit29WFTargetedEntityUpdaterAction)initWithIdentifier:(id)a3 actionMetadata:(id)a4 entityMetadata:(id)a5 metadataForParameterIdentifier:(id)a6 definition:(id)a7 serializedParameters:(id)a8 appIntentDescriptor:(id)a9 fullyQualifiedActionIdentifier:(id)a10
{
  v14 = sub_1CA94C3A8();
  v16 = v15;
  sub_1CA25B3D0(0, &qword_1EC444660, 0x1E69AC670);
  v17 = sub_1CA94C1C8();
  if (a8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    a8 = sub_1CA94C1C8();
  }

  WFTargetedEntityUpdaterAction.init(identifier:actionMetadata:entityMetadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)(v14, v16, a4, a5, v17, a7, a8, a9, a10, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, vars0);
  return result;
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
  v6 = sub_1CA332CE4(v4);

  return v6;
}

- (NSArray)parameterDefinitions
{
  v2 = self;
  sub_1CA332FE4();

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v3 = sub_1CA94C648();

  return v3;
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA3336E0();

  v6 = sub_1CA94C368();

  return v6;
}

- (BOOL)visibleForUse:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_1CA3348B0(a3);

  return a3 & 1;
}

- (_TtC11WorkflowKit29WFTargetedEntityUpdaterAction)initWithIdentifier:(id)a3 metadata:(id)a4 metadataForParameterIdentifier:(id)a5 definition:(id)a6 serializedParameters:(id)a7 appIntentDescriptor:(id)a8 fullyQualifiedActionIdentifier:(id)a9
{
  sub_1CA94C3A8();
  sub_1CA25B3D0(0, &qword_1EC444660, 0x1E69AC670);
  sub_1CA94C1C8();
  if (a7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    sub_1CA94C1C8();
  }

  v13 = a4;
  v14 = a6;
  v15 = a8;
  v16 = a9;
  WFTargetedEntityUpdaterAction.__allocating_init(identifier:metadata:metadataForParameterIdentifier:definition:serializedParameters:appIntentDescriptor:fullyQualifiedActionIdentifier:)();
}

@end