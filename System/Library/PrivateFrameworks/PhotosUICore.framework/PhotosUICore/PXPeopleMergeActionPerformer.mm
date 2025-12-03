@interface PXPeopleMergeActionPerformer
+ (BOOL)canPerformOn:(id)on;
+ (id)localizedTitleForPerson:(id)person;
+ (id)systemImageNameForPerson:(id)person;
- (PXPeopleMergeActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters;
- (void)performUserInteractionTask;
@end

@implementation PXPeopleMergeActionPerformer

+ (BOOL)canPerformOn:(id)on
{
  onCopy = on;
  v4 = _s12PhotosUICore26PeopleMergeActionPerformerC10canPerform2onSbSo13PHFetchResultCySo8PHPersonCG_tFZ_0(onCopy);

  return v4 & 1;
}

+ (id)localizedTitleForPerson:(id)person
{
  personCopy = person;
  result = [personCopy photoLibrary];
  if (result)
  {
    v5 = result;
    px_peoplePetsHomeVisibility = [result px_peoplePetsHomeVisibility];

    v7 = sub_1A524C634();
    v8 = PXLocalizedStringForPersonOrPetAndVisibility(0, px_peoplePetsHomeVisibility, v7);

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

+ (id)systemImageNameForPerson:(id)person
{
  v3 = sub_1A524C634();

  return v3;
}

- (void)performUserInteractionTask
{
  selfCopy = self;
  PeopleMergeActionPerformer.performUserInteractionTask()();
}

- (PXPeopleMergeActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters
{
  ObjectType = swift_getObjectType();
  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  sub_1A524C3E4();
  typeCopy = type;
  referenceCopy = reference;
  v11 = sub_1A524C3D4();

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(PXAssetCollectionActionPerformer *)&v14 initWithActionType:typeCopy assetCollectionReference:referenceCopy parameters:v11];

  return v12;
}

@end