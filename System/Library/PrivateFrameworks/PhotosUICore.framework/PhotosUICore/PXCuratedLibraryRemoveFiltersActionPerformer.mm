@interface PXCuratedLibraryRemoveFiltersActionPerformer
- (NSString)activitySystemImageName;
- (NSString)activityType;
- (PXCuratedLibraryRemoveFiltersActionPerformer)initWithActionType:(id)type viewModel:(id)model;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryRemoveFiltersActionPerformer

- (id)localizedTitleForUseCase:(unint64_t)case
{
  selfCopy = self;
  sub_1A3E99C70();
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
  selfCopy = self;
  sub_1A3E999A8();
}

- (PXCuratedLibraryRemoveFiltersActionPerformer)initWithActionType:(id)type viewModel:(id)model
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CuratedLibraryRemoveFiltersActionPerformer();
  return [(PXCuratedLibraryActionPerformer *)&v7 initWithActionType:type viewModel:model];
}

@end