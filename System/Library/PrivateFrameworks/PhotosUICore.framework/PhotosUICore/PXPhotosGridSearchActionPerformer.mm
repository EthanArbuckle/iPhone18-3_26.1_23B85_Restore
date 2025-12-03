@interface PXPhotosGridSearchActionPerformer
- (NSString)activitySystemImageName;
- (NSString)activityType;
- (PXPhotosGridSearchActionPerformer)initWithViewModel:(id)model actionType:(id)type;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridSearchActionPerformer

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

- (NSString)activitySystemImageName
{
  v2 = sub_1A524C634();

  return v2;
}

- (void)performUserInteractionTask
{
  selfCopy = self;
  sub_1A417F720();
}

- (PXPhotosGridSearchActionPerformer)initWithViewModel:(id)model actionType:(id)type
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PhotosGridSearchActionPerformer();
  return [(PXPhotosGridActionPerformer *)&v7 initWithViewModel:model actionType:type];
}

@end