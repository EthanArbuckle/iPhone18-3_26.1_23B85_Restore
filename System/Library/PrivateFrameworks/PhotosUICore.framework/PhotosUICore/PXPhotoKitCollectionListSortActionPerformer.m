@interface PXPhotoKitCollectionListSortActionPerformer
+ (id)localizedTitleForActionType:(id)a3 collectionList:(id)a4;
+ (int64_t)menuActionStateForCollectionList:(id)a3 actionType:(id)a4;
- (_TtC12PhotosUICore43PXPhotoKitCollectionListSortActionPerformer)initWithActionType:(id)a3 collectionList:(id)a4 parameters:(id)a5;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitCollectionListSortActionPerformer

- (void)performBackgroundTask
{
  v2 = self;
  sub_1A45CBC9C();
}

+ (id)localizedTitleForActionType:(id)a3 collectionList:(id)a4
{
  v5 = sub_1A524C674();
  v7 = v6;
  v8 = a4;
  sub_1A45CC590(v5, v7);
  v10 = v9;

  if (v10)
  {
    v11 = sub_1A524C634();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (int64_t)menuActionStateForCollectionList:(id)a3 actionType:(id)a4
{
  v5 = sub_1A524C674();
  v7 = v6;
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = sub_1A45CC0B4(a3, v5, v7);

  return v9;
}

- (_TtC12PhotosUICore43PXPhotoKitCollectionListSortActionPerformer)initWithActionType:(id)a3 collectionList:(id)a4 parameters:(id)a5
{
  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  sub_1A524C3E4();
  v8 = a3;
  v9 = a4;
  v10 = sub_1A524C3D4();

  v13.receiver = self;
  v13.super_class = type metadata accessor for PXPhotoKitCollectionListSortActionPerformer();
  v11 = [(PXPhotoKitCollectionListActionPerformer *)&v13 initWithActionType:v8 collectionList:v9 parameters:v10];

  return v11;
}

@end