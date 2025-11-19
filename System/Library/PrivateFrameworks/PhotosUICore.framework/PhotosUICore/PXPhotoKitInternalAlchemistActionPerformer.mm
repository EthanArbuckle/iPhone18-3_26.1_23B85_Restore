@interface PXPhotoKitInternalAlchemistActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
+ (id)systemImageNameForActionManager:(id)a3;
- (_TtC12PhotosUICore42PXPhotoKitInternalAlchemistActionPerformer)initWithActionType:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitInternalAlchemistActionPerformer

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  sub_1A3C52C70(0, &qword_1EB126BB0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = [ObjCClassFromMetadata sharedInstance];
  v10 = [v9 canShowInternalUI];

  if (v10)
  {
    type metadata accessor for OneUpAlchemistViewController();
    v11 = sub_1A3F47EB8(v8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
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
  sub_1A404BB18();
}

- (_TtC12PhotosUICore42PXPhotoKitInternalAlchemistActionPerformer)initWithActionType:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PXPhotoKitInternalAlchemistActionPerformer();
  return [(PXActionPerformer *)&v5 initWithActionType:a3];
}

@end