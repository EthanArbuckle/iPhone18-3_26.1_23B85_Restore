@interface PXPeopleChangeTypeActionPerformer
+ (int64_t)changeTypeFor:(id)for;
- (PXPeopleChangeTypeActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters;
- (void)performBackgroundTask;
@end

@implementation PXPeopleChangeTypeActionPerformer

- (void)performBackgroundTask
{
  selfCopy = self;
  PeopleChangeTypeActionPerformer.performBackgroundTask()();
}

+ (int64_t)changeTypeFor:(id)for
{
  forCopy = for;
  v4 = _s12PhotosUICore31PeopleChangeTypeActionPerformerC06changeE03forSo08PHPersonE0VSo13PHFetchResultCySo0J0CG_tFZ_0(forCopy);

  return v4;
}

- (PXPeopleChangeTypeActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters
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