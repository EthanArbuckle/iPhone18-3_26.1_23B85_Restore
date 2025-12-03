@interface PXPhotosGridActionPerformer
- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity;
- (PXContentFilterState)currentContentFilterState;
- (PXPhotosGridActionPerformer)initWithActionType:(id)type;
- (PXPhotosGridActionPerformer)initWithViewModel:(id)model actionType:(id)type;
- (PXPhotosGridActionPerformerInformationProviderDelegate)userInfoDelegate;
@end

@implementation PXPhotosGridActionPerformer

- (PXPhotosGridActionPerformerInformationProviderDelegate)userInfoDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_userInfoDelegate);

  return WeakRetained;
}

- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity
{
  activityType = [activity activityType];
  activityType2 = [(PXActionPerformer *)self activityType];
  v8 = activityType2;
  if (activityType == activityType2)
  {

    goto LABEL_5;
  }

  v9 = [activityType isEqualToString:activityType2];

  if ((v9 & 1) == 0)
  {
    activityType = [MEMORY[0x1E696AAA8] currentHandler];
    [activityType handleFailureInMethod:a2 object:self file:@"PXPhotosGridActionManager.m" lineNumber:334 description:{@"Invalid parameter not satisfying: %@", @"PXStringEqualToString(activity.activityType, self.activityType)"}];
LABEL_5:
  }

  v10 = objc_opt_class();
  actionType = [(PXActionPerformer *)self actionType];
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  LOBYTE(v10) = [v10 canPerformActionType:actionType withViewModel:viewModel];

  return v10;
}

- (PXContentFilterState)currentContentFilterState
{
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  contentFilterState = [viewModel contentFilterState];

  if (contentFilterState)
  {
    v4 = [contentFilterState copy];
  }

  else
  {
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v4 = [PXContentFilterState defaultFilterStateForPhotoLibrary:px_deprecated_appPhotoLibrary];
  }

  return v4;
}

- (PXPhotosGridActionPerformer)initWithActionType:(id)type
{
  typeCopy = type;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridActionManager.m" lineNumber:313 description:{@"%s is not available as initializer", "-[PXPhotosGridActionPerformer initWithActionType:]"}];

  abort();
}

- (PXPhotosGridActionPerformer)initWithViewModel:(id)model actionType:(id)type
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = PXPhotosGridActionPerformer;
  v8 = [(PXActionPerformer *)&v11 initWithActionType:type];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewModel, model);
  }

  return v9;
}

@end