@interface REMHashtagLabel_Codable
- (REMHashtagLabel_Codable)initWithName:(id)a3;
- (REMHashtagLabel_Codable)initWithName:(id)a3 canonicalName:(id)a4 firstOccurrenceCreationDate:(id)a5 recencyDate:(id)a6 uuidForChangeTracking:(id)a7;
@end

@implementation REMHashtagLabel_Codable

- (REMHashtagLabel_Codable)initWithName:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(REMHashtagLabel *)&v5 initWithName:a3];
}

- (REMHashtagLabel_Codable)initWithName:(id)a3 canonicalName:(id)a4 firstOccurrenceCreationDate:(id)a5 recencyDate:(id)a6 uuidForChangeTracking:(id)a7
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  if (a5)
  {
    sub_23030EB18();
    v20 = sub_23030EB58();
    (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  }

  else
  {
    v19 = sub_23030EB58();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  }

  if (a6)
  {
    sub_23030EB18();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_23030EB58();
  v23 = 1;
  (*(*(v22 - 8) + 56))(v16, v21, 1, v22);
  if (a7)
  {
    sub_23030EBA8();
    v23 = 0;
  }

  v24 = sub_23030EBB8();
  (*(*(v24 - 8) + 56))(v12, v23, 1, v24);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end