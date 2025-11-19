@interface PXPhotosGridUnfilterActionPerformer
+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridUnfilterActionPerformer

+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4
{
  v6 = a4;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___PXPhotosGridUnfilterActionPerformer;
  if (objc_msgSendSuper2(&v9, sel_canPerformActionType_withViewModel_, a3, v6))
  {
    v7 = ![PXPhotosGridToggleFilterActionPerformer isContentFilterHidden:1 viewModel:v6];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)performUserInteractionTask
{
  v3 = [(PXPhotosGridActionPerformer *)self viewModel];
  v4 = [v3 dataSourceManager];
  v5 = [v4 dataSource];
  v9 = [v5 containerCollection];

  v6 = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  v7 = [v6 photoLibrary];
  v8 = [PXContentFilterState defaultFilterStateForContainerCollection:v9 photoLibrary:v7];

  [(PXPhotosGridToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:v8];
}

- (int64_t)menuElementState
{
  v2 = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  v3 = [v2 isContentFilterActive:1];

  return v3;
}

@end