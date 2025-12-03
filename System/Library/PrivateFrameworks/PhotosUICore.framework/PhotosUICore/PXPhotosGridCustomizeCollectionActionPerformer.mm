@interface PXPhotosGridCustomizeCollectionActionPerformer
+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model;
- (NSString)activitySystemImageName;
- (NSString)activityType;
- (_TtC12PhotosUICore46PXPhotosGridCustomizeCollectionActionPerformer)initWithViewModel:(id)model actionType:(id)type;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridCustomizeCollectionActionPerformer

+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model
{
  modelCopy = model;
  v5 = sub_1A4A09470(modelCopy);

  return v5 & 1;
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  selfCopy = self;
  sub_1A4A0956C();
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
  selfCopy = self;
  sub_1A4A08908();

  v3 = sub_1A524C634();

  return v3;
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
  sub_1A4A08A80();
}

- (_TtC12PhotosUICore46PXPhotosGridCustomizeCollectionActionPerformer)initWithViewModel:(id)model actionType:(id)type
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PXPhotosGridCustomizeCollectionActionPerformer();
  return [(PXPhotosGridActionPerformer *)&v7 initWithViewModel:model actionType:type];
}

@end