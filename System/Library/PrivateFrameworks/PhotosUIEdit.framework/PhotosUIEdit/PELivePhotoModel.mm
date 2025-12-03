@interface PELivePhotoModel
- (BOOL)_hasLegacyIrisConflicts;
- (BOOL)hasUnsavedChanges;
- (PELivePhotoModel)initWithAsset:(id)asset compositionController:(id)controller;
- (PELivePhotoModel)initWithLivePhotoVisibilityState:(unsigned __int16)state hasAdjustments:(BOOL)adjustments compositionController:(id)controller;
- (PELivePhotoModelChangeDelegate)changeDelegate;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setHidden:(BOOL)hidden explicit:(BOOL)explicit supportable:(BOOL)supportable;
- (void)_updateAutoDisableStateIfNeeded;
- (void)dealloc;
- (void)setIgnoresUpdates:(BOOL)updates;
- (void)setVideoEnabled:(BOOL)enabled;
@end

@implementation PELivePhotoModel

- (PELivePhotoModelChangeDelegate)changeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);

  return WeakRetained;
}

- (void)_setHidden:(BOOL)hidden explicit:(BOOL)explicit supportable:(BOOL)supportable
{
  if (hidden && explicit)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (supportable)
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  [(PELivePhotoModel *)self setEditingVisibility:v7 | hidden | v6 | 2u];
  IsPlayable = PHVideoComplementVisibilityStateIsPlayable();
  if (self->_videoEnabled != IsPlayable)
  {
    v9 = IsPlayable;
    self->_videoEnabled = IsPlayable;
    changeDelegate = [(PELivePhotoModel *)self changeDelegate];

    if (changeDelegate)
    {
      changeDelegate2 = [(PELivePhotoModel *)self changeDelegate];
      [changeDelegate2 livePhotoModel:self videoEnabledDidChange:v9];
    }
  }
}

- (BOOL)_hasLegacyIrisConflicts
{
  compositionController = [(PELivePhotoModel *)self compositionController];
  adjustmentConstants = [compositionController adjustmentConstants];
  v4 = MEMORY[0x277D3A938];
  newComposition = [MEMORY[0x277D3A938] newComposition];
  v6 = [v4 newCompositionControllerWithComposition:newComposition];

  availableKeys = [v6 availableKeys];
  v8 = [availableKeys mutableCopy];

  pIRedEyeAdjustmentKey = [adjustmentConstants PIRedEyeAdjustmentKey];
  [v8 removeObject:pIRedEyeAdjustmentKey];

  pIAutoEnhanceAdjustmentKey = [adjustmentConstants PIAutoEnhanceAdjustmentKey];
  [v8 removeObject:pIAutoEnhanceAdjustmentKey];

  composition = [v6 composition];
  v12 = [compositionController isEqual:composition forKeys:v8 visualChangesOnly:1];

  return v12 ^ 1;
}

- (void)_updateAutoDisableStateIfNeeded
{
  if ([(PELivePhotoModel *)self isVideoEnabled]&& ![(PELivePhotoModel *)self ignoresUpdates]&& [(PELivePhotoModel *)self _hasLegacyIrisConflicts])
  {
    [(PELivePhotoModel *)self editingVisibility];
    HasFullEditingSupport = PHVideoComplementVisibilityStateHasFullEditingSupport();

    [(PELivePhotoModel *)self _setHidden:1 explicit:0 supportable:HasFullEditingSupport];
  }
}

- (void)setIgnoresUpdates:(BOOL)updates
{
  if (self->_ignoresUpdates != updates)
  {
    self->_ignoresUpdates = updates;
    if (!updates)
    {
      [(PELivePhotoModel *)self _updateAutoDisableStateIfNeeded];
    }
  }
}

- (BOOL)hasUnsavedChanges
{
  [(PELivePhotoModel *)self assetVisibility];
  [(PELivePhotoModel *)self assetHasAdjustments];
  IsPlayable = PHVideoComplementVisibilityStateIsPlayable();
  if (IsPlayable != [(PELivePhotoModel *)self isVideoEnabled]&& [(PELivePhotoModel *)self assetVisibility]== 2 && [(PELivePhotoModel *)self editingVisibility]== 10)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    assetVisibility = [(PELivePhotoModel *)self assetVisibility];
    return ((assetVisibility ^ [(PELivePhotoModel *)self editingVisibility]) >> 2) & 1;
  }

  return v4;
}

- (void)setVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(PELivePhotoModel *)self editingVisibility];
  HasFullEditingSupport = PHVideoComplementVisibilityStateHasFullEditingSupport();

  [(PELivePhotoModel *)self _setHidden:!enabledCopy explicit:1 supportable:HasFullEditingSupport];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PELivePhotoModel;
  [(PELivePhotoModel *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PELivePhotoModel allocWithZone:zone];
  asset = [(PELivePhotoModel *)self asset];
  compositionController = [(PELivePhotoModel *)self compositionController];
  v7 = [(PELivePhotoModel *)v4 initWithAsset:asset compositionController:compositionController];

  *(v7 + 12) = self->_editingVisibility;
  *(v7 + 14) = self->_assetVisibility;
  *(v7 + 10) = self->_assetHasAdjustments;
  *(v7 + 8) = self->_videoEnabled;
  return v7;
}

- (PELivePhotoModel)initWithLivePhotoVisibilityState:(unsigned __int16)state hasAdjustments:(BOOL)adjustments compositionController:(id)controller
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = PELivePhotoModel;
  v10 = [(PELivePhotoModel *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_assetVisibility = state;
    v10->_assetHasAdjustments = adjustments;
    IsHidden = PHVideoComplementVisibilityStateIsHidden();
    [(PELivePhotoModel *)v11 _setHidden:IsHidden explicit:PHVideoComplementVisibilityStateIsExplicit() supportable:1];
    objc_storeStrong(&v11->_compositionController, controller);
  }

  return v11;
}

- (PELivePhotoModel)initWithAsset:(id)asset compositionController:(id)controller
{
  assetCopy = asset;
  controllerCopy = controller;
  if ([assetCopy isLivePhoto])
  {
    livePhotoVisibilityState = [assetCopy livePhotoVisibilityState];
  }

  else
  {
    livePhotoVisibilityState = 0;
  }

  v10 = -[PELivePhotoModel initWithLivePhotoVisibilityState:hasAdjustments:compositionController:](self, "initWithLivePhotoVisibilityState:hasAdjustments:compositionController:", livePhotoVisibilityState, [assetCopy isAdjusted], controllerCopy);

  if (v10)
  {
    objc_storeStrong(&v10->_asset, asset);
  }

  return v10;
}

@end