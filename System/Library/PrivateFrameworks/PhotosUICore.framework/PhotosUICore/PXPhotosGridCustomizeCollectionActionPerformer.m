@interface PXPhotosGridCustomizeCollectionActionPerformer
+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4;
- (NSString)activitySystemImageName;
- (NSString)activityType;
- (_TtC12PhotosUICore46PXPhotosGridCustomizeCollectionActionPerformer)initWithViewModel:(id)a3 actionType:(id)a4;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridCustomizeCollectionActionPerformer

+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4
{
  v4 = a4;
  v5 = sub_1A4A09470(v4);

  return v5 & 1;
}

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  v3 = self;
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
  v2 = self;
  sub_1A4A08908();

  v3 = sub_1A524C634();

  return v3;
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
  v2 = self;
  sub_1A4A08A80();
}

- (_TtC12PhotosUICore46PXPhotosGridCustomizeCollectionActionPerformer)initWithViewModel:(id)a3 actionType:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PXPhotosGridCustomizeCollectionActionPerformer();
  return [(PXPhotosGridActionPerformer *)&v7 initWithViewModel:a3 actionType:a4];
}

@end