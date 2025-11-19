@interface PELivePhotoModel
- (BOOL)_hasLegacyIrisConflicts;
- (BOOL)hasUnsavedChanges;
- (PELivePhotoModel)initWithAsset:(id)a3 compositionController:(id)a4;
- (PELivePhotoModel)initWithLivePhotoVisibilityState:(unsigned __int16)a3 hasAdjustments:(BOOL)a4 compositionController:(id)a5;
- (PELivePhotoModelChangeDelegate)changeDelegate;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setHidden:(BOOL)a3 explicit:(BOOL)a4 supportable:(BOOL)a5;
- (void)_updateAutoDisableStateIfNeeded;
- (void)dealloc;
- (void)setIgnoresUpdates:(BOOL)a3;
- (void)setVideoEnabled:(BOOL)a3;
@end

@implementation PELivePhotoModel

- (PELivePhotoModelChangeDelegate)changeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);

  return WeakRetained;
}

- (void)_setHidden:(BOOL)a3 explicit:(BOOL)a4 supportable:(BOOL)a5
{
  if (a3 && a4)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (a5)
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  [(PELivePhotoModel *)self setEditingVisibility:v7 | a3 | v6 | 2u];
  IsPlayable = PHVideoComplementVisibilityStateIsPlayable();
  if (self->_videoEnabled != IsPlayable)
  {
    v9 = IsPlayable;
    self->_videoEnabled = IsPlayable;
    v10 = [(PELivePhotoModel *)self changeDelegate];

    if (v10)
    {
      v11 = [(PELivePhotoModel *)self changeDelegate];
      [v11 livePhotoModel:self videoEnabledDidChange:v9];
    }
  }
}

- (BOOL)_hasLegacyIrisConflicts
{
  v2 = [(PELivePhotoModel *)self compositionController];
  v3 = [v2 adjustmentConstants];
  v4 = MEMORY[0x277D3A938];
  v5 = [MEMORY[0x277D3A938] newComposition];
  v6 = [v4 newCompositionControllerWithComposition:v5];

  v7 = [v6 availableKeys];
  v8 = [v7 mutableCopy];

  v9 = [v3 PIRedEyeAdjustmentKey];
  [v8 removeObject:v9];

  v10 = [v3 PIAutoEnhanceAdjustmentKey];
  [v8 removeObject:v10];

  v11 = [v6 composition];
  v12 = [v2 isEqual:v11 forKeys:v8 visualChangesOnly:1];

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

- (void)setIgnoresUpdates:(BOOL)a3
{
  if (self->_ignoresUpdates != a3)
  {
    self->_ignoresUpdates = a3;
    if (!a3)
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
    v5 = [(PELivePhotoModel *)self assetVisibility];
    return ((v5 ^ [(PELivePhotoModel *)self editingVisibility]) >> 2) & 1;
  }

  return v4;
}

- (void)setVideoEnabled:(BOOL)a3
{
  v3 = a3;
  [(PELivePhotoModel *)self editingVisibility];
  HasFullEditingSupport = PHVideoComplementVisibilityStateHasFullEditingSupport();

  [(PELivePhotoModel *)self _setHidden:!v3 explicit:1 supportable:HasFullEditingSupport];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PELivePhotoModel;
  [(PELivePhotoModel *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PELivePhotoModel allocWithZone:a3];
  v5 = [(PELivePhotoModel *)self asset];
  v6 = [(PELivePhotoModel *)self compositionController];
  v7 = [(PELivePhotoModel *)v4 initWithAsset:v5 compositionController:v6];

  *(v7 + 12) = self->_editingVisibility;
  *(v7 + 14) = self->_assetVisibility;
  *(v7 + 10) = self->_assetHasAdjustments;
  *(v7 + 8) = self->_videoEnabled;
  return v7;
}

- (PELivePhotoModel)initWithLivePhotoVisibilityState:(unsigned __int16)a3 hasAdjustments:(BOOL)a4 compositionController:(id)a5
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = PELivePhotoModel;
  v10 = [(PELivePhotoModel *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_assetVisibility = a3;
    v10->_assetHasAdjustments = a4;
    IsHidden = PHVideoComplementVisibilityStateIsHidden();
    [(PELivePhotoModel *)v11 _setHidden:IsHidden explicit:PHVideoComplementVisibilityStateIsExplicit() supportable:1];
    objc_storeStrong(&v11->_compositionController, a5);
  }

  return v11;
}

- (PELivePhotoModel)initWithAsset:(id)a3 compositionController:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 isLivePhoto])
  {
    v9 = [v7 livePhotoVisibilityState];
  }

  else
  {
    v9 = 0;
  }

  v10 = -[PELivePhotoModel initWithLivePhotoVisibilityState:hasAdjustments:compositionController:](self, "initWithLivePhotoVisibilityState:hasAdjustments:compositionController:", v9, [v7 isAdjusted], v8);

  if (v10)
  {
    objc_storeStrong(&v10->_asset, a3);
  }

  return v10;
}

@end