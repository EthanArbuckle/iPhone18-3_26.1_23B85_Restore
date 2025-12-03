@interface REMHashtagLabelDetailed_Codable
- (REMHashtagLabelDetailed_Codable)initWithName:(id)name;
- (REMHashtagLabelDetailed_Codable)initWithName:(id)name canonicalName:(id)canonicalName firstOccurrenceCreationDate:(id)date recencyDate:(id)recencyDate uuidForChangeTracking:(id)tracking;
@end

@implementation REMHashtagLabelDetailed_Codable

- (REMHashtagLabelDetailed_Codable)initWithName:(id)name canonicalName:(id)canonicalName firstOccurrenceCreationDate:(id)date recencyDate:(id)recencyDate uuidForChangeTracking:(id)tracking
{
  selfCopy = self;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v20 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v22 = v21;
  if (canonicalName)
  {
    canonicalName = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v24 = v23;
    if (date)
    {
LABEL_3:
      sub_23030EB18();
      v25 = sub_23030EB58();
      (*(*(v25 - 8) + 56))(v19, 0, 1, v25);
      goto LABEL_6;
    }
  }

  else
  {
    v24 = 0;
    if (date)
    {
      goto LABEL_3;
    }
  }

  v26 = sub_23030EB58();
  (*(*(v26 - 8) + 56))(v19, 1, 1, v26);
LABEL_6:
  v38 = v17;
  if (!recencyDate)
  {
    v31 = sub_23030EB58();
    (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
    trackingCopy = tracking;
    if (tracking)
    {
      goto LABEL_8;
    }

LABEL_10:
    v30 = 1;
    goto LABEL_11;
  }

  sub_23030EB18();
  v27 = sub_23030EB58();
  v28 = *(*(v27 - 8) + 56);
  v37 = v24;
  trackingCopy2 = tracking;
  v28(v17, 0, 1, v27);
  v24 = v37;
  if (!tracking)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_23030EBA8();

  v30 = 0;
LABEL_11:
  v33 = v38;
  v34 = sub_23030EBB8();
  (*(*(v34 - 8) + 56))(v13, v30, 1, v34);
  return REMHashtagLabelDetailed_Codable.init(name:canonicalName:firstOccurrenceCreationDate:recencyDate:uuidForChangeTracking:)(v20, v22, canonicalName, v24, v19, v33, v13);
}

- (REMHashtagLabelDetailed_Codable)initWithName:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end