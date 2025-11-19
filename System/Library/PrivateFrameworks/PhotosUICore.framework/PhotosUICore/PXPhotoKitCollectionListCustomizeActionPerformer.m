@interface PXPhotoKitCollectionListCustomizeActionPerformer
+ (id)localizedTitleForActionType:(id)a3 collectionList:(id)a4;
+ (id)systemImageNameForCollectionList:(id)a3 actionType:(id)a4;
- (_TtC12PhotosUICore48PXPhotoKitCollectionListCustomizeActionPerformer)initWithActionType:(id)a3 collectionList:(id)a4 parameters:(id)a5;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitCollectionListCustomizeActionPerformer

- (void)performUserInteractionTask
{
  v2 = self;
  sub_1A4616B84();
}

+ (id)localizedTitleForActionType:(id)a3 collectionList:(id)a4
{
  v4 = sub_1A524C634();
  v5 = PXLocalizedString(v4);

  sub_1A524C674();
  v6 = sub_1A524C634();

  return v6;
}

+ (id)systemImageNameForCollectionList:(id)a3 actionType:(id)a4
{
  v4 = sub_1A524C634();

  return v4;
}

- (_TtC12PhotosUICore48PXPhotoKitCollectionListCustomizeActionPerformer)initWithActionType:(id)a3 collectionList:(id)a4 parameters:(id)a5
{
  type metadata accessor for PXActionParameterKey();
  sub_1A4617164(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey);
  sub_1A524C3E4();
  v8 = a3;
  v9 = a4;
  v10 = sub_1A524C3D4();

  v13.receiver = self;
  v13.super_class = type metadata accessor for PXPhotoKitCollectionListCustomizeActionPerformer();
  v11 = [(PXPhotoKitCollectionListActionPerformer *)&v13 initWithActionType:v8 collectionList:v9 parameters:v10];

  return v11;
}

@end