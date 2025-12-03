@interface PXPhotosGridUnfilterActionPerformer
+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridUnfilterActionPerformer

+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___PXPhotosGridUnfilterActionPerformer;
  if (objc_msgSendSuper2(&v9, sel_canPerformActionType_withViewModel_, type, modelCopy))
  {
    v7 = ![PXPhotosGridToggleFilterActionPerformer isContentFilterHidden:1 viewModel:modelCopy];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)performUserInteractionTask
{
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  dataSourceManager = [viewModel dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  containerCollection = [dataSource containerCollection];

  currentContentFilterState = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  photoLibrary = [currentContentFilterState photoLibrary];
  v8 = [PXContentFilterState defaultFilterStateForContainerCollection:containerCollection photoLibrary:photoLibrary];

  [(PXPhotosGridToggleFilterActionPerformer *)self updateToContentFilterStateAndFinishTask:v8];
}

- (int64_t)menuElementState
{
  currentContentFilterState = [(PXPhotosGridActionPerformer *)self currentContentFilterState];
  v3 = [currentContentFilterState isContentFilterActive:1];

  return v3;
}

@end