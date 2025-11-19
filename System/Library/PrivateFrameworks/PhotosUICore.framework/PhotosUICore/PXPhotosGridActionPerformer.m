@interface PXPhotosGridActionPerformer
- (BOOL)canPerformWithActivityItems:(id)a3 forActivity:(id)a4;
- (PXContentFilterState)currentContentFilterState;
- (PXPhotosGridActionPerformer)initWithActionType:(id)a3;
- (PXPhotosGridActionPerformer)initWithViewModel:(id)a3 actionType:(id)a4;
- (PXPhotosGridActionPerformerInformationProviderDelegate)userInfoDelegate;
@end

@implementation PXPhotosGridActionPerformer

- (PXPhotosGridActionPerformerInformationProviderDelegate)userInfoDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_userInfoDelegate);

  return WeakRetained;
}

- (BOOL)canPerformWithActivityItems:(id)a3 forActivity:(id)a4
{
  v6 = [a4 activityType];
  v7 = [(PXActionPerformer *)self activityType];
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_5;
  }

  v9 = [v6 isEqualToString:v7];

  if ((v9 & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXPhotosGridActionManager.m" lineNumber:334 description:{@"Invalid parameter not satisfying: %@", @"PXStringEqualToString(activity.activityType, self.activityType)"}];
LABEL_5:
  }

  v10 = objc_opt_class();
  v11 = [(PXActionPerformer *)self actionType];
  v12 = [(PXPhotosGridActionPerformer *)self viewModel];
  LOBYTE(v10) = [v10 canPerformActionType:v11 withViewModel:v12];

  return v10;
}

- (PXContentFilterState)currentContentFilterState
{
  v2 = [(PXPhotosGridActionPerformer *)self viewModel];
  v3 = [v2 contentFilterState];

  if (v3)
  {
    v4 = [v3 copy];
  }

  else
  {
    v5 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v4 = [PXContentFilterState defaultFilterStateForPhotoLibrary:v5];
  }

  return v4;
}

- (PXPhotosGridActionPerformer)initWithActionType:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXPhotosGridActionManager.m" lineNumber:313 description:{@"%s is not available as initializer", "-[PXPhotosGridActionPerformer initWithActionType:]"}];

  abort();
}

- (PXPhotosGridActionPerformer)initWithViewModel:(id)a3 actionType:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PXPhotosGridActionPerformer;
  v8 = [(PXActionPerformer *)&v11 initWithActionType:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewModel, a3);
  }

  return v9;
}

@end