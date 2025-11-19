@interface REMSharedEntitySyncActivity_Codable
- (REMSharedEntitySyncActivity_Codable)initWithAccountIdentifier:(id)a3 activityDate:(id)a4 activityType:(int64_t)a5 authorUserRecordIDString:(id)a6 ckParentCloudObjectEntityName:(id)a7 ckParentCloudObjectIdentifier:(id)a8 ckIdentifier:(id)a9 sharedEntityName:(id)a10 uuidForChangeTracking:(id)a11;
@end

@implementation REMSharedEntitySyncActivity_Codable

- (REMSharedEntitySyncActivity_Codable)initWithAccountIdentifier:(id)a3 activityDate:(id)a4 activityType:(int64_t)a5 authorUserRecordIDString:(id)a6 ckParentCloudObjectEntityName:(id)a7 ckParentCloudObjectIdentifier:(id)a8 ckIdentifier:(id)a9 sharedEntityName:(id)a10 uuidForChangeTracking:(id)a11
{
  v42 = a5;
  v43 = self;
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
  if (a7)
  {
    v37 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    a7 = v23;
    v24 = a11;
    if (a8)
    {
LABEL_3:
      a8 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v26 = v25;
      goto LABEL_6;
    }
  }

  else
  {
    v37 = 0;
    v24 = a11;
    if (a8)
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
  if (v24)
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
  return REMSharedEntitySyncActivity_Codable.init(accountIdentifier:activityDate:activityType:authorUserRecordIDString:ckParentCloudObjectEntityName:ckParentCloudObjectIdentifier:ckIdentifier:sharedEntityName:uuidForChangeTracking:)(v41, v40, v18, v42, v39, v38, v37, a7, a8, v26, v27, v29, v30, v32, v15);
}

@end