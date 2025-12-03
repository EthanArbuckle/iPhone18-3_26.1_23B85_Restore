@interface PXPhotosGridCollectionSortActionPerformer
- (NSString)activityType;
- (PXPhotosGridCollectionSortActionPerformer)initWithViewModel:(id)model actionType:(id)type;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (id)menuElement;
@end

@implementation PXPhotosGridCollectionSortActionPerformer

- (id)localizedTitleForUseCase:(unint64_t)case
{
  v3 = sub_1A524C634();
  v4 = PXLocalizedString(v3);

  sub_1A524C674();
  v5 = sub_1A524C634();

  return v5;
}

- (NSString)activityType
{
  sub_1A524C674();
  v2 = sub_1A524C634();

  return v2;
}

- (id)menuElement
{
  selfCopy = self;
  v3 = sub_1A4A3829C();

  return v3;
}

- (PXPhotosGridCollectionSortActionPerformer)initWithViewModel:(id)model actionType:(id)type
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PhotosGridCollectionSortActionPerformer();
  return [(PXPhotosGridActionPerformer *)&v7 initWithViewModel:model actionType:type];
}

@end