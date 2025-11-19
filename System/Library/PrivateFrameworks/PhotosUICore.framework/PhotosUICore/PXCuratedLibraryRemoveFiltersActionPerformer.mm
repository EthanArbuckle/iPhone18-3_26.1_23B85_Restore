@interface PXCuratedLibraryRemoveFiltersActionPerformer
- (NSString)activitySystemImageName;
- (NSString)activityType;
- (PXCuratedLibraryRemoveFiltersActionPerformer)initWithActionType:(id)a3 viewModel:(id)a4;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryRemoveFiltersActionPerformer

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  v3 = self;
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
  v2 = self;
  sub_1A3E999A8();
}

- (PXCuratedLibraryRemoveFiltersActionPerformer)initWithActionType:(id)a3 viewModel:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CuratedLibraryRemoveFiltersActionPerformer();
  return [(PXCuratedLibraryActionPerformer *)&v7 initWithActionType:a3 viewModel:a4];
}

@end