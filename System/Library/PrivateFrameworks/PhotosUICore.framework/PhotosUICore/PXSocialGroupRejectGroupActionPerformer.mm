@interface PXSocialGroupRejectGroupActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
+ (id)systemImageNameForAssetCollectionReference:(id)a3 withInputs:(id)a4;
- (PXSocialGroupRejectGroupActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXSocialGroupRejectGroupActionPerformer

- (void)performUserInteractionTask
{
  v2 = self;
  sub_1A3DE1874();
}

- (void)performBackgroundTask
{
  v2 = self;
  sub_1A3DE1CC0();
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v4 = a3;
  v5 = swift_unknownObjectRetain();
  v6 = sub_1A3DE2278(v5);

  swift_unknownObjectRelease();
  return v6 & 1;
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  sub_1A3C38BD4();
  v5 = sub_1A524C634();

  return v5;
}

+ (id)systemImageNameForAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v4 = sub_1A524C634();

  return v4;
}

- (PXSocialGroupRejectGroupActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5
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