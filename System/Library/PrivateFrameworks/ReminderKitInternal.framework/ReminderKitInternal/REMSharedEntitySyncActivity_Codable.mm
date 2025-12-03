@interface REMSharedEntitySyncActivity_Codable
- (REMSharedEntitySyncActivity_Codable)initWithAccountIdentifier:(id)identifier activityDate:(id)date activityType:(int64_t)type authorUserRecordIDString:(id)string ckParentCloudObjectEntityName:(id)name ckParentCloudObjectIdentifier:(id)objectIdentifier ckIdentifier:(id)ckIdentifier sharedEntityName:(id)self0 uuidForChangeTracking:(id)self1;
@end

@implementation REMSharedEntitySyncActivity_Codable

- (REMSharedEntitySyncActivity_Codable)initWithAccountIdentifier:(id)identifier activityDate:(id)date activityType:(int64_t)type authorUserRecordIDString:(id)string ckParentCloudObjectEntityName:(id)name ckParentCloudObjectIdentifier:(id)objectIdentifier ckIdentifier:(id)ckIdentifier sharedEntityName:(id)self0 uuidForChangeTracking:(id)self1
{
  typeCopy = type;
  selfCopy = self;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v36 - v14;
  v16 = sub_23030EB58();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v40 = v20;
  v41 = v19;
  sub_23030EB18();
  v21 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v38 = v22;
  v39 = v21;
  if (name)
  {
    v37 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    name = v23;
    trackingCopy2 = tracking;
    if (objectIdentifier)
    {
LABEL_3:
      objectIdentifier = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v26 = v25;
      goto LABEL_6;
    }
  }

  else
  {
    v37 = 0;
    trackingCopy2 = tracking;
    if (objectIdentifier)
    {
      goto LABEL_3;
    }
  }

  v26 = 0;
LABEL_6:
  v27 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v29 = v28;
  v30 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v32 = v31;
  if (trackingCopy2)
  {
    sub_23030EBA8();
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = sub_23030EBB8();
  (*(*(v34 - 8) + 56))(v15, v33, 1, v34);
  return REMSharedEntitySyncActivity_Codable.init(accountIdentifier:activityDate:activityType:authorUserRecordIDString:ckParentCloudObjectEntityName:ckParentCloudObjectIdentifier:ckIdentifier:sharedEntityName:uuidForChangeTracking:)(v41, v40, v18, typeCopy, v39, v38, v37, name, objectIdentifier, v26, v27, v29, v30, v32, v15);
}

@end