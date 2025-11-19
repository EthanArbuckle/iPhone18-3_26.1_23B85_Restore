@interface PhotoKitClearRecentCollectionAssetsActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (BOOL)canPerformOnImplicitSelectionInContainerCollection:(id)a3;
+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
+ (id)systemImageNameForActionManager:(id)a3;
- (_TtC12PhotosUICore50PhotoKitClearRecentCollectionAssetsActionPerformer)initWithActionType:(id)a3;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PhotoKitClearRecentCollectionAssetsActionPerformer

+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  LOBYTE(a4) = _s12PhotosUICore50PhotoKitClearRecentCollectionAssetsActionPerformerC10canPerform4with6person11socialGroupSbSo19PXSelectionSnapshotC_So8PHPersonCSgSo08PHSocialP0CSgtFZ_0(v8);

  return a4 & 1;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v7 = *(swift_getObjCClassMetadata() + 112);
  v8 = a4;
  v9 = v7();

  return v9 & 1;
}

+ (BOOL)canPerformOnImplicitSelectionInContainerCollection:(id)a3
{
  if (a3)
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

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
{
  if (a4)
  {
    v5 = [a4 effectiveSelectionSnapshot];
    v6 = [v5 isAnyItemSelected];
  }

  else
  {
    v6 = 0;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  (*(ObjCClassMetadata + 128))(v6);

  v8 = sub_1A524C634();

  return v8;
}

- (void)performUserInteractionTask
{
  v2 = self;
  sub_1A4756CAC();
}

- (void)performBackgroundTask
{
  v2 = self;
  sub_1A4757250();
}

+ (id)systemImageNameForActionManager:(id)a3
{
  v3 = sub_1A524C634();

  return v3;
}

- (_TtC12PhotosUICore50PhotoKitClearRecentCollectionAssetsActionPerformer)initWithActionType:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore50PhotoKitClearRecentCollectionAssetsActionPerformer_assetsToProcess) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PhotoKitClearRecentCollectionAssetsActionPerformer();
  return [(PXActionPerformer *)&v5 initWithActionType:a3];
}

@end