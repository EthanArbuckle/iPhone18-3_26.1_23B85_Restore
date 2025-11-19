@interface PXPhotosGridRemoveFiltersActionPerformer
- (NSString)activitySystemImageName;
- (NSString)activityType;
- (PXPhotosGridRemoveFiltersActionPerformer)initWithViewModel:(id)a3 actionType:(id)a4;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridRemoveFiltersActionPerformer

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  v3 = self;
  sub_1A48F39D0();
  v5 = v4;

  if (v5)
  {
    v6 = sub_1A524C634();
  }

  else
  {
    v6 = 0;
  }

  return v6;
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

- (void)performUserInteractionTask
{
  v2 = self;
  sub_1A48F3678();
}

- (PXPhotosGridRemoveFiltersActionPerformer)initWithViewModel:(id)a3 actionType:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PhotosGridRemoveFiltersActionPerformer();
  return [(PXPhotosGridActionPerformer *)&v7 initWithViewModel:a3 actionType:a4];
}

@end