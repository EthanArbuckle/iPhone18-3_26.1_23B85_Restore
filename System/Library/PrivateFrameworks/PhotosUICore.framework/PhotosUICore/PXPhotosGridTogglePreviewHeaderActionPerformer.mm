@interface PXPhotosGridTogglePreviewHeaderActionPerformer
- (NSString)activitySystemImageName;
- (NSString)activityType;
- (PXPhotosGridTogglePreviewHeaderActionPerformer)initWithViewModel:(id)model actionType:(id)type;
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
  selfCopy = self;
  viewModel = [(PXPhotosGridActionPerformer *)selfCopy viewModel];
  allowsPreviewHeader = [(PXPhotosViewModel *)viewModel allowsPreviewHeader];

  return allowsPreviewHeader;
}

- (PXPhotosGridTogglePreviewHeaderActionPerformer)initWithViewModel:(id)model actionType:(id)type
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PhotosGridTogglePreviewHeaderActionPerformer();
  return [(PXPhotosGridActionPerformer *)&v7 initWithViewModel:model actionType:type];
}

@end