@interface PXPhotoKitPlayMovieAssetActionPerformer
+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
+ (id)systemImageNameForActionManager:(id)manager;
- (PXPhotoKitPlayMovieAssetActionPerformer)initWithActionType:(id)type;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitPlayMovieAssetActionPerformer

+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group
{
  snapshotCopy = snapshot;
  personCopy = person;
  groupCopy = group;
  v10 = _s12PhotosUICore37PhotoKitPlayMovieAssetActionPerformerC10canPerform4with6person11socialGroupSbSo19PXSelectionSnapshotC_So8PHPersonCSgSo08PHSocialO0CSgtFZ_0(snapshotCopy);

  return v10 & 1;
}

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  v4 = sub_1A524C634();
  v5 = PXLocalizedString(v4);

  sub_1A524C674();
  v6 = sub_1A524C634();

  return v6;
}

+ (id)systemImageNameForActionManager:(id)manager
{
  v3 = sub_1A524C634();

  return v3;
}

- (void)performUserInteractionTask
{
  selfCopy = self;
  sub_1A4074F18();
}

- (PXPhotoKitPlayMovieAssetActionPerformer)initWithActionType:(id)type
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PhotoKitPlayMovieAssetActionPerformer();
  return [(PXActionPerformer *)&v5 initWithActionType:type];
}

@end