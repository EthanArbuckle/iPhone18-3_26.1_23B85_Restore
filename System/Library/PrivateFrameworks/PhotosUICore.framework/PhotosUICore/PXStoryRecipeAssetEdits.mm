@interface PXStoryRecipeAssetEdits
- ($A35046FF140701A0BC97C4369CFAD28C)overallDurationInfo;
- (BOOL)isEqual:(id)equal;
- (PXStoryRecipeAssetEdits)init;
- (PXStoryRecipeAssetEdits)initWithKeyAsset:(id)asset overallDurationInfo:(id *)info userCuratedAssets:(id)assets customUserAssetsEdit:(id)edit;
- (id)copyWithCustomUserAssets:(id)assets;
- (id)copyWithKeyAsset:(id)asset;
- (id)copyWithOverallDurationInfo:(id *)info userCuratedAssets:(id)assets;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXStoryRecipeAssetEdits

- ($A35046FF140701A0BC97C4369CFAD28C)overallDurationInfo
{
  v3 = *&self[1].var0;
  *&retstr->var1.var1.var0 = *&self->var1.var2.var1;
  *&retstr->var1.var1.var3 = v3;
  *&retstr->var1.var2.var1 = *&self[1].var1.var0.var1;
  v4 = *&self->var1.var1.var3;
  *&retstr->var0 = *&self->var1.var1.var0;
  *&retstr->var1.var0.var1 = v4;
  return self;
}

- (id)copyWithCustomUserAssets:(id)assets
{
  assetsCopy = assets;
  v5 = [[PXMemoryCustomUserAssetsEdit alloc] initWithAssets:assetsCopy];

  v6 = [PXStoryRecipeAssetEdits alloc];
  keyAsset = [(PXStoryRecipeAssetEdits *)self keyAsset];
  [(PXStoryRecipeAssetEdits *)self overallDurationInfo];
  userCuratedAssets = [(PXStoryRecipeAssetEdits *)self userCuratedAssets];
  v9 = [(PXStoryRecipeAssetEdits *)v6 initWithKeyAsset:keyAsset overallDurationInfo:&v11 userCuratedAssets:userCuratedAssets customUserAssetsEdit:v5];

  return v9;
}

- (id)copyWithOverallDurationInfo:(id *)info userCuratedAssets:(id)assets
{
  assetsCopy = assets;
  v7 = [PXStoryRecipeAssetEdits alloc];
  keyAsset = [(PXStoryRecipeAssetEdits *)self keyAsset];
  customUserAssetsEdit = [(PXStoryRecipeAssetEdits *)self customUserAssetsEdit];
  v10 = *&info->var1.var1.var3;
  v14[2] = *&info->var1.var1.var0;
  v14[3] = v10;
  v14[4] = *&info->var1.var2.var1;
  v11 = *&info->var1.var0.var1;
  v14[0] = *&info->var0;
  v14[1] = v11;
  v12 = [(PXStoryRecipeAssetEdits *)v7 initWithKeyAsset:keyAsset overallDurationInfo:v14 userCuratedAssets:assetsCopy customUserAssetsEdit:customUserAssetsEdit];

  return v12;
}

- (id)copyWithKeyAsset:(id)asset
{
  assetCopy = asset;
  v5 = [PXStoryRecipeAssetEdits alloc];
  [(PXStoryRecipeAssetEdits *)self overallDurationInfo];
  userCuratedAssets = [(PXStoryRecipeAssetEdits *)self userCuratedAssets];
  customUserAssetsEdit = [(PXStoryRecipeAssetEdits *)self customUserAssetsEdit];
  v8 = [(PXStoryRecipeAssetEdits *)v5 initWithKeyAsset:assetCopy overallDurationInfo:&v10 userCuratedAssets:userCuratedAssets customUserAssetsEdit:customUserAssetsEdit];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  keyAsset = [(PXStoryRecipeAssetEdits *)self keyAsset];
  uuid = [keyAsset uuid];
  [(PXStoryRecipeAssetEdits *)self overallDurationInfo];
  v8 = PFStoryOverallDurationInfoDescription();
  userCuratedAssets = [(PXStoryRecipeAssetEdits *)self userCuratedAssets];
  v10 = [userCuratedAssets count];
  customUserAssetsEdit = [(PXStoryRecipeAssetEdits *)self customUserAssetsEdit];
  assets = [customUserAssetsEdit assets];
  v13 = [v3 stringWithFormat:@"<%@:%p keyAsset:%@, overallDurationInfo:%@, userCuratedAssets:%ld, customUserAssets:%ld>", v5, self, uuid, v8, v10, objc_msgSend(assets, "count")];;

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      keyAsset = self->_keyAsset;
      keyAsset = [(PXStoryRecipeAssetEdits *)v5 keyAsset];
      v8 = keyAsset;
      if (keyAsset == keyAsset)
      {

        if (v5)
        {
LABEL_6:
          [(PXStoryRecipeAssetEdits *)v5 overallDurationInfo];
          v10 = v20[0];
          goto LABEL_11;
        }
      }

      else
      {
        v9 = [(PXDisplayAsset *)keyAsset isEqual:keyAsset];

        if (!v9)
        {
          goto LABEL_15;
        }

        if (v5)
        {
          goto LABEL_6;
        }
      }

      v10 = 0;
      memset(v22, 0, sizeof(v22));
      v21 = 0u;
      memset(v20, 0, sizeof(v20));
LABEL_11:
      if (self->_overallDurationInfo.kind != v10)
      {
        goto LABEL_15;
      }

      v24[1] = *&self->_overallDurationInfo.specificDurationInfo.preferredDuration.timescale;
      maximumDuration = self->_overallDurationInfo.specificDurationInfo.maximumDuration;
      v24[0] = *&self->_overallDurationInfo.specificDurationInfo.minimumDuration.epoch;
      v23 = v21;
      time1 = self->_overallDurationInfo.specificDurationInfo.minimumDuration;
      time2 = *&v20[1];
      if (CMTimeCompare(&time1, &time2))
      {
        goto LABEL_15;
      }

      time1 = *(v24 + 8);
      *&time2.value = v23;
      time2.epoch = v22[0];
      if (CMTimeCompare(&time1, &time2))
      {
        goto LABEL_15;
      }

      time1 = maximumDuration;
      time2 = *&v22[1];
      if (CMTimeCompare(&time1, &time2))
      {
        goto LABEL_15;
      }

      userCuratedAssets = self->_userCuratedAssets;
      userCuratedAssets = [(PXStoryRecipeAssetEdits *)v5 userCuratedAssets];
      v15 = userCuratedAssets;
      if (userCuratedAssets == userCuratedAssets)
      {

LABEL_22:
        assets = [(PXMemoryCustomUserAssetsEdit *)self->_customUserAssetsEdit assets];
        customUserAssetsEdit = [(PXStoryRecipeAssetEdits *)v5 customUserAssetsEdit];
        assets2 = [customUserAssetsEdit assets];
        if (assets == assets2)
        {
          v11 = 1;
        }

        else
        {
          v11 = [assets isEqual:assets2];
        }

        goto LABEL_16;
      }

      v16 = [(PXDisplayAssetFetchResult *)userCuratedAssets isEqual:userCuratedAssets];

      if (v16)
      {
        goto LABEL_22;
      }

LABEL_15:
      v11 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_17:

  return v11;
}

- (unint64_t)hash
{
  keyAsset = [(PXStoryRecipeAssetEdits *)self keyAsset];
  v3 = [keyAsset hash];

  return v3;
}

- (PXStoryRecipeAssetEdits)initWithKeyAsset:(id)asset overallDurationInfo:(id *)info userCuratedAssets:(id)assets customUserAssetsEdit:(id)edit
{
  assetCopy = asset;
  assetsCopy = assets;
  editCopy = edit;
  v20.receiver = self;
  v20.super_class = PXStoryRecipeAssetEdits;
  v14 = [(PXStoryRecipeAssetEdits *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_keyAsset, asset);
    *&v15->_overallDurationInfo.kind = *&info->var0;
    v16 = *&info->var1.var0.var1;
    v17 = *&info->var1.var1.var0;
    v18 = *&info->var1.var2.var1;
    *&v15->_overallDurationInfo.specificDurationInfo.preferredDuration.epoch = *&info->var1.var1.var3;
    *&v15->_overallDurationInfo.specificDurationInfo.maximumDuration.timescale = v18;
    *&v15->_overallDurationInfo.specificDurationInfo.minimumDuration.timescale = v16;
    *&v15->_overallDurationInfo.specificDurationInfo.preferredDuration.value = v17;
    objc_storeStrong(&v15->_userCuratedAssets, assets);
    objc_storeStrong(&v15->_customUserAssetsEdit, edit);
  }

  return v15;
}

- (PXStoryRecipeAssetEdits)init
{
  v2 = *(MEMORY[0x1E69C0DB8] + 48);
  v5[2] = *(MEMORY[0x1E69C0DB8] + 32);
  v5[3] = v2;
  v5[4] = *(MEMORY[0x1E69C0DB8] + 64);
  v3 = *(MEMORY[0x1E69C0DB8] + 16);
  v5[0] = *MEMORY[0x1E69C0DB8];
  v5[1] = v3;
  return [(PXStoryRecipeAssetEdits *)self initWithKeyAsset:0 overallDurationInfo:v5 userCuratedAssets:0 customUserAssetsEdit:0];
}

@end