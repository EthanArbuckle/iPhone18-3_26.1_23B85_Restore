@interface PXPhotoKitInternalAlchemistActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
+ (id)systemImageNameForActionManager:(id)manager;
- (_TtC12PhotosUICore42PXPhotoKitInternalAlchemistActionPerformer)initWithActionType:(id)type;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitInternalAlchemistActionPerformer

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  sub_1A3C52C70(0, &qword_1EB126BB0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  assetCopy = asset;
  objCClassFromMetadata = [ObjCClassFromMetadata sharedInstance];
  canShowInternalUI = [objCClassFromMetadata canShowInternalUI];

  if (canShowInternalUI)
  {
    type metadata accessor for OneUpAlchemistViewController();
    v11 = sub_1A3F47EB8(assetCopy);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
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
  sub_1A404BB18();
}

- (_TtC12PhotosUICore42PXPhotoKitInternalAlchemistActionPerformer)initWithActionType:(id)type
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PXPhotoKitInternalAlchemistActionPerformer();
  return [(PXActionPerformer *)&v5 initWithActionType:type];
}

@end