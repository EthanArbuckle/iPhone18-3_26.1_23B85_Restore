@interface PhotoKitClearRecentCollectionAssetsActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (BOOL)canPerformOnImplicitSelectionInContainerCollection:(id)collection;
+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
+ (id)systemImageNameForActionManager:(id)manager;
- (_TtC12PhotosUICore50PhotoKitClearRecentCollectionAssetsActionPerformer)initWithActionType:(id)type;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PhotoKitClearRecentCollectionAssetsActionPerformer

+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group
{
  swift_getObjCClassMetadata();
  snapshotCopy = snapshot;
  personCopy = person;
  groupCopy = group;
  LOBYTE(person) = _s12PhotosUICore50PhotoKitClearRecentCollectionAssetsActionPerformerC10canPerform4with6person11socialGroupSbSo19PXSelectionSnapshotC_So8PHPersonCSgSo08PHSocialP0CSgtFZ_0(snapshotCopy);

  return person & 1;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  v7 = *(swift_getObjCClassMetadata() + 112);
  collectionCopy = collection;
  v9 = v7();

  return v9 & 1;
}

+ (BOOL)canPerformOnImplicitSelectionInContainerCollection:(id)collection
{
  if (collection)
  {
    v3 = *(swift_getObjCClassMetadata() + 112);
    v4 = swift_unknownObjectRetain();
    v5 = v3(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  if (manager)
  {
    effectiveSelectionSnapshot = [manager effectiveSelectionSnapshot];
    isAnyItemSelected = [effectiveSelectionSnapshot isAnyItemSelected];
  }

  else
  {
    isAnyItemSelected = 0;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  (*(ObjCClassMetadata + 128))(isAnyItemSelected);

  v8 = sub_1A524C634();

  return v8;
}

- (void)performUserInteractionTask
{
  selfCopy = self;
  sub_1A4756CAC();
}

- (void)performBackgroundTask
{
  selfCopy = self;
  sub_1A4757250();
}

+ (id)systemImageNameForActionManager:(id)manager
{
  v3 = sub_1A524C634();

  return v3;
}

- (_TtC12PhotosUICore50PhotoKitClearRecentCollectionAssetsActionPerformer)initWithActionType:(id)type
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore50PhotoKitClearRecentCollectionAssetsActionPerformer_assetsToProcess) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PhotoKitClearRecentCollectionAssetsActionPerformer();
  return [(PXActionPerformer *)&v5 initWithActionType:type];
}

@end