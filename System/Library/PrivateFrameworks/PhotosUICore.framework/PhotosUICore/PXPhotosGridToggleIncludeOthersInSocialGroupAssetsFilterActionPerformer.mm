@interface PXPhotosGridToggleIncludeOthersInSocialGroupAssetsFilterActionPerformer
- (NSString)activitySystemImageName;
- (NSString)activityType;
- (PXPhotosGridToggleIncludeOthersInSocialGroupAssetsFilterActionPerformer)initWithViewModel:(id)model actionType:(id)type;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridToggleIncludeOthersInSocialGroupAssetsFilterActionPerformer

- (id)localizedTitleForUseCase:(unint64_t)case
{
  v3 = PXContentFilterTitleForItemTag(24);
  if (v3)
  {
    v4 = v3;
    sub_1A524C674();

    v5 = sub_1A524C634();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)activityType
{
  sub_1A524C674();
  v2 = sub_1A524C634();

  return v2;
}

- (NSString)activitySystemImageName
{
  v2 = sub_1A524C634();

  return v2;
}

- (int64_t)menuElementState
{
  selfCopy = self;
  currentContentFilterState = [(PXPhotosGridActionPerformer *)selfCopy currentContentFilterState];
  v4 = [(PXContentFilterState *)currentContentFilterState isContentFilterActive:24];

  return v4;
}

- (void)performUserInteractionTask
{
  selfCopy = self;
  currentContentFilterState = [(PXPhotosGridActionPerformer *)selfCopy currentContentFilterState];
  [(PXContentFilterState *)currentContentFilterState setIncludeOthersInSocialGroupAssets:[(PXContentFilterState *)currentContentFilterState includeOthersInSocialGroupAssets]^ 1];
  [(PXPhotosGridToggleFilterActionPerformer *)selfCopy updateToContentFilterStateAndFinishTask:currentContentFilterState];
}

- (PXPhotosGridToggleIncludeOthersInSocialGroupAssetsFilterActionPerformer)initWithViewModel:(id)model actionType:(id)type
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PhotosGridToggleIncludeOthersInSocialGroupAssetsFilterActionPerformer();
  return [(PXPhotosGridActionPerformer *)&v7 initWithViewModel:model actionType:type];
}

@end