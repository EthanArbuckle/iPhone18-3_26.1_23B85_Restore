@interface PXPhotosGridTogglePreviewHeaderActionPerformer
- (NSString)activitySystemImageName;
- (NSString)activityType;
- (PXPhotosGridTogglePreviewHeaderActionPerformer)initWithViewModel:(id)a3 actionType:(id)a4;
- (int64_t)menuElementState;
@end

@implementation PXPhotosGridTogglePreviewHeaderActionPerformer

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
  v3 = [(PXPhotosGridActionPerformer *)v2 viewModel];
  v4 = [(PXPhotosViewModel *)v3 allowsPreviewHeader];

  return v4;
}

- (PXPhotosGridTogglePreviewHeaderActionPerformer)initWithViewModel:(id)a3 actionType:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PhotosGridTogglePreviewHeaderActionPerformer();
  return [(PXPhotosGridActionPerformer *)&v7 initWithViewModel:a3 actionType:a4];
}

@end