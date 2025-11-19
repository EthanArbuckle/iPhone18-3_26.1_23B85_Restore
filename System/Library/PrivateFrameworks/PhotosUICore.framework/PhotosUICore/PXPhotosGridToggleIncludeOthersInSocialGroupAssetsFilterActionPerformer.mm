@interface PXPhotosGridToggleIncludeOthersInSocialGroupAssetsFilterActionPerformer
- (NSString)activitySystemImageName;
- (NSString)activityType;
- (PXPhotosGridToggleIncludeOthersInSocialGroupAssetsFilterActionPerformer)initWithViewModel:(id)a3 actionType:(id)a4;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridToggleIncludeOthersInSocialGroupAssetsFilterActionPerformer

- (id)localizedTitleForUseCase:(unint64_t)a3
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
  v2 = self;
  v3 = [(PXPhotosGridActionPerformer *)v2 currentContentFilterState];
  v4 = [(PXContentFilterState *)v3 isContentFilterActive:24];

  return v4;
}

- (void)performUserInteractionTask
{
  v3 = self;
  v2 = [(PXPhotosGridActionPerformer *)v3 currentContentFilterState];
  [(PXContentFilterState *)v2 setIncludeOthersInSocialGroupAssets:[(PXContentFilterState *)v2 includeOthersInSocialGroupAssets]^ 1];
  [(PXPhotosGridToggleFilterActionPerformer *)v3 updateToContentFilterStateAndFinishTask:v2];
}

- (PXPhotosGridToggleIncludeOthersInSocialGroupAssetsFilterActionPerformer)initWithViewModel:(id)a3 actionType:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PhotosGridToggleIncludeOthersInSocialGroupAssetsFilterActionPerformer();
  return [(PXPhotosGridActionPerformer *)&v7 initWithViewModel:a3 actionType:a4];
}

@end