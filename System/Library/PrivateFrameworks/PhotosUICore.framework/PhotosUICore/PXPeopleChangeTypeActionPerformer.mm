@interface PXPeopleChangeTypeActionPerformer
+ (int64_t)changeTypeFor:(id)a3;
- (PXPeopleChangeTypeActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5;
- (void)performBackgroundTask;
@end

@implementation PXPeopleChangeTypeActionPerformer

- (void)performBackgroundTask
{
  v2 = self;
  PeopleChangeTypeActionPerformer.performBackgroundTask()();
}

+ (int64_t)changeTypeFor:(id)a3
{
  v3 = a3;
  v4 = _s12PhotosUICore31PeopleChangeTypeActionPerformerC06changeE03forSo08PHPersonE0VSo13PHFetchResultCySo0J0CG_tFZ_0(v3);

  return v4;
}

- (PXPeopleChangeTypeActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5
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