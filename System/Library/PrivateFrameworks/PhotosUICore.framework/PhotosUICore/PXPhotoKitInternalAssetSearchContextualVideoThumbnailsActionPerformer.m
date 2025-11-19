@interface PXPhotoKitInternalAssetSearchContextualVideoThumbnailsActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
+ (id)systemImageNameForActionManager:(id)a3;
- (_TtC12PhotosUICore69PXPhotoKitInternalAssetSearchContextualVideoThumbnailsActionPerformer)initWithActionType:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitInternalAssetSearchContextualVideoThumbnailsActionPerformer

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  sub_1A3C52C70(0, &qword_1EB126BB0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = [ObjCClassFromMetadata sharedInstance];
  v10 = [v9 canShowInternalUI];

  if (v10)
  {
    v11 = [v8 px_containsSearchContextualVideoThumbnailsDebugOnly];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
{
  v4 = sub_1A524C634();

  return v4;
}

+ (id)systemImageNameForActionManager:(id)a3
{
  v3 = sub_1A524C634();

  return v3;
}

- (void)performUserInteractionTask
{
  v2 = self;
  sub_1A48E0700();
}

- (_TtC12PhotosUICore69PXPhotoKitInternalAssetSearchContextualVideoThumbnailsActionPerformer)initWithActionType:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(PXActionPerformer *)&v5 initWithActionType:a3];
}

@end