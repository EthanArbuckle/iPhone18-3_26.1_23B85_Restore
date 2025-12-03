@interface PXPhotoKitCollectionListSortActionPerformer
+ (id)localizedTitleForActionType:(id)type collectionList:(id)list;
+ (int64_t)menuActionStateForCollectionList:(id)list actionType:(id)type;
- (_TtC12PhotosUICore43PXPhotoKitCollectionListSortActionPerformer)initWithActionType:(id)type collectionList:(id)list parameters:(id)parameters;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitCollectionListSortActionPerformer

- (void)performBackgroundTask
{
  selfCopy = self;
  sub_1A45CBC9C();
}

+ (id)localizedTitleForActionType:(id)type collectionList:(id)list
{
  v5 = sub_1A524C674();
  v7 = v6;
  listCopy = list;
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

+ (int64_t)menuActionStateForCollectionList:(id)list actionType:(id)type
{
  v5 = sub_1A524C674();
  v7 = v6;
  swift_getObjCClassMetadata();
  listCopy = list;
  v9 = sub_1A45CC0B4(list, v5, v7);

  return v9;
}

- (_TtC12PhotosUICore43PXPhotoKitCollectionListSortActionPerformer)initWithActionType:(id)type collectionList:(id)list parameters:(id)parameters
{
  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  sub_1A524C3E4();
  typeCopy = type;
  listCopy = list;
  v10 = sub_1A524C3D4();

  v13.receiver = self;
  v13.super_class = type metadata accessor for PXPhotoKitCollectionListSortActionPerformer();
  v11 = [(PXPhotoKitCollectionListActionPerformer *)&v13 initWithActionType:typeCopy collectionList:listCopy parameters:v10];

  return v11;
}

@end