@interface PXPhotoKitAssetCollectionChangePersonSortOrder
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)createStandardActionForAssetCollectionReference:(id)a3 withInput:(id)a4 handler:(id)a5;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
- (NSString)activityType;
- (PXPhotoKitAssetCollectionChangePersonSortOrder)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionChangePersonSortOrder

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  if ([a4 respondsToSelector_])
  {
    v4 = [swift_unknownObjectRetain() people];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 count];

      swift_unknownObjectRelease();
      return v6 == 1;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  v5 = a4;
  v6 = swift_unknownObjectRetain();
  sub_1A40924C0(v6);
  v8 = v7;

  swift_unknownObjectRelease();
  if (v8)
  {
    v9 = sub_1A524C634();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)activityType
{
  v2 = sub_1A524C634();

  return v2;
}

+ (id)createStandardActionForAssetCollectionReference:(id)a3 withInput:(id)a4 handler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = swift_unknownObjectRetain();
  sub_1A40925A8(v9, sub_1A3E79128, v7);
  v11 = v10;

  swift_unknownObjectRelease();

  return v11;
}

- (void)performUserInteractionTask
{
  v2 = self;
  sub_1A4091E84();
}

- (PXPhotoKitAssetCollectionChangePersonSortOrder)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5
{
  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  sub_1A524C3E4();
  v8 = a3;
  v9 = a4;
  v10 = sub_1A524C3D4();

  v13.receiver = self;
  v13.super_class = type metadata accessor for PhotoKitAssetCollectionChangePersonSortOrder();
  v11 = [(PXAssetCollectionActionPerformer *)&v13 initWithActionType:v8 assetCollectionReference:v9 parameters:v10];

  return v11;
}

@end