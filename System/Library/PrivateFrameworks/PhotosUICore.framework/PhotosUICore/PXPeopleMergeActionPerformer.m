@interface PXPeopleMergeActionPerformer
+ (BOOL)canPerformOn:(id)a3;
+ (id)localizedTitleForPerson:(id)a3;
+ (id)systemImageNameForPerson:(id)a3;
- (PXPeopleMergeActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5;
- (void)performUserInteractionTask;
@end

@implementation PXPeopleMergeActionPerformer

+ (BOOL)canPerformOn:(id)a3
{
  v3 = a3;
  v4 = _s12PhotosUICore26PeopleMergeActionPerformerC10canPerform2onSbSo13PHFetchResultCySo8PHPersonCG_tFZ_0(v3);

  return v4 & 1;
}

+ (id)localizedTitleForPerson:(id)a3
{
  v3 = a3;
  result = [v3 photoLibrary];
  if (result)
  {
    v5 = result;
    v6 = [result px_peoplePetsHomeVisibility];

    v7 = sub_1A524C634();
    v8 = PXLocalizedStringForPersonOrPetAndVisibility(0, v6, v7);

    sub_1A524C674();
    v9 = sub_1A524C634();

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (id)systemImageNameForPerson:(id)a3
{
  v3 = sub_1A524C634();

  return v3;
}

- (void)performUserInteractionTask
{
  v2 = self;
  PeopleMergeActionPerformer.performUserInteractionTask()();
}

- (PXPeopleMergeActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5
{
  ObjectType = swift_getObjectType();
  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  sub_1A524C3E4();
  v9 = a3;
  v10 = a4;
  v11 = sub_1A524C3D4();

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(PXAssetCollectionActionPerformer *)&v14 initWithActionType:v9 assetCollectionReference:v10 parameters:v11];

  return v12;
}

@end