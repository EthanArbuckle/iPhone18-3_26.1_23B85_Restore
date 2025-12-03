@interface PXPhotoKitInternalAssetSearchContextualVideoThumbnailsActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
+ (id)systemImageNameForActionManager:(id)manager;
- (_TtC12PhotosUICore69PXPhotoKitInternalAssetSearchContextualVideoThumbnailsActionPerformer)initWithActionType:(id)type;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitInternalAssetSearchContextualVideoThumbnailsActionPerformer

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  sub_1A3C52C70(0, &qword_1EB126BB0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  assetCopy = asset;
  objCClassFromMetadata = [ObjCClassFromMetadata sharedInstance];
  canShowInternalUI = [objCClassFromMetadata canShowInternalUI];

  if (canShowInternalUI)
  {
    px_containsSearchContextualVideoThumbnailsDebugOnly = [assetCopy px_containsSearchContextualVideoThumbnailsDebugOnly];
  }

  else
  {
    px_containsSearchContextualVideoThumbnailsDebugOnly = 0;
  }

  return px_containsSearchContextualVideoThumbnailsDebugOnly;
}

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  v4 = sub_1A524C634();

  return v4;
}

+ (id)systemImageNameForActionManager:(id)manager
{
  v3 = sub_1A524C634();

  return v3;
}

- (void)performUserInteractionTask
{
  selfCopy = self;
  sub_1A48E0700();
}

- (_TtC12PhotosUICore69PXPhotoKitInternalAssetSearchContextualVideoThumbnailsActionPerformer)initWithActionType:(id)type
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(PXActionPerformer *)&v5 initWithActionType:type];
}

@end