@interface PXPhotoKitCollectionListCustomizeActionPerformer
+ (id)localizedTitleForActionType:(id)type collectionList:(id)list;
+ (id)systemImageNameForCollectionList:(id)list actionType:(id)type;
- (_TtC12PhotosUICore48PXPhotoKitCollectionListCustomizeActionPerformer)initWithActionType:(id)type collectionList:(id)list parameters:(id)parameters;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitCollectionListCustomizeActionPerformer

- (void)performUserInteractionTask
{
  selfCopy = self;
  sub_1A4616B84();
}

+ (id)localizedTitleForActionType:(id)type collectionList:(id)list
{
  v4 = sub_1A524C634();
  v5 = PXLocalizedString(v4);

  sub_1A524C674();
  v6 = sub_1A524C634();

  return v6;
}

+ (id)systemImageNameForCollectionList:(id)list actionType:(id)type
{
  v4 = sub_1A524C634();

  return v4;
}

- (_TtC12PhotosUICore48PXPhotoKitCollectionListCustomizeActionPerformer)initWithActionType:(id)type collectionList:(id)list parameters:(id)parameters
{
  type metadata accessor for PXActionParameterKey();
  sub_1A4617164(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey);
  sub_1A524C3E4();
  typeCopy = type;
  listCopy = list;
  v10 = sub_1A524C3D4();

  v13.receiver = self;
  v13.super_class = type metadata accessor for PXPhotoKitCollectionListCustomizeActionPerformer();
  v11 = [(PXPhotoKitCollectionListActionPerformer *)&v13 initWithActionType:typeCopy collectionList:listCopy parameters:v10];

  return v11;
}

@end