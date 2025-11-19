@interface PXPhotoKitPlayMovieAssetActionPerformer
+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
+ (id)systemImageNameForActionManager:(id)a3;
- (PXPhotoKitPlayMovieAssetActionPerformer)initWithActionType:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitPlayMovieAssetActionPerformer

+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _s12PhotosUICore37PhotoKitPlayMovieAssetActionPerformerC10canPerform4with6person11socialGroupSbSo19PXSelectionSnapshotC_So8PHPersonCSgSo08PHSocialO0CSgtFZ_0(v7);

  return v10 & 1;
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
{
  v4 = sub_1A524C634();
  v5 = PXLocalizedString(v4);

  sub_1A524C674();
  v6 = sub_1A524C634();

  return v6;
}

+ (id)systemImageNameForActionManager:(id)a3
{
  v3 = sub_1A524C634();

  return v3;
}

- (void)performUserInteractionTask
{
  v2 = self;
  sub_1A4074F18();
}

- (PXPhotoKitPlayMovieAssetActionPerformer)initWithActionType:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PhotoKitPlayMovieAssetActionPerformer();
  return [(PXActionPerformer *)&v5 initWithActionType:a3];
}

@end