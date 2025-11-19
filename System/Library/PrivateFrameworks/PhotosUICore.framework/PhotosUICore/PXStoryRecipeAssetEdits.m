@interface PXStoryRecipeAssetEdits
- ($A35046FF140701A0BC97C4369CFAD28C)overallDurationInfo;
- (BOOL)isEqual:(id)a3;
- (PXStoryRecipeAssetEdits)init;
- (PXStoryRecipeAssetEdits)initWithKeyAsset:(id)a3 overallDurationInfo:(id *)a4 userCuratedAssets:(id)a5 customUserAssetsEdit:(id)a6;
- (id)copyWithCustomUserAssets:(id)a3;
- (id)copyWithKeyAsset:(id)a3;
- (id)copyWithOverallDurationInfo:(id *)a3 userCuratedAssets:(id)a4;
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

- (id)copyWithCustomUserAssets:(id)a3
{
  v4 = a3;
  v5 = [[PXMemoryCustomUserAssetsEdit alloc] initWithAssets:v4];

  v6 = [PXStoryRecipeAssetEdits alloc];
  v7 = [(PXStoryRecipeAssetEdits *)self keyAsset];
  [(PXStoryRecipeAssetEdits *)self overallDurationInfo];
  v8 = [(PXStoryRecipeAssetEdits *)self userCuratedAssets];
  v9 = [(PXStoryRecipeAssetEdits *)v6 initWithKeyAsset:v7 overallDurationInfo:&v11 userCuratedAssets:v8 customUserAssetsEdit:v5];

  return v9;
}

- (id)copyWithOverallDurationInfo:(id *)a3 userCuratedAssets:(id)a4
{
  v6 = a4;
  v7 = [PXStoryRecipeAssetEdits alloc];
  v8 = [(PXStoryRecipeAssetEdits *)self keyAsset];
  v9 = [(PXStoryRecipeAssetEdits *)self customUserAssetsEdit];
  v10 = *&a3->var1.var1.var3;
  v14[2] = *&a3->var1.var1.var0;
  v14[3] = v10;
  v14[4] = *&a3->var1.var2.var1;
  v11 = *&a3->var1.var0.var1;
  v14[0] = *&a3->var0;
  v14[1] = v11;
  v12 = [(PXStoryRecipeAssetEdits *)v7 initWithKeyAsset:v8 overallDurationInfo:v14 userCuratedAssets:v6 customUserAssetsEdit:v9];

  return v12;
}

- (id)copyWithKeyAsset:(id)a3
{
  v4 = a3;
  v5 = [PXStoryRecipeAssetEdits alloc];
  [(PXStoryRecipeAssetEdits *)self overallDurationInfo];
  v6 = [(PXStoryRecipeAssetEdits *)self userCuratedAssets];
  v7 = [(PXStoryRecipeAssetEdits *)self customUserAssetsEdit];
  v8 = [(PXStoryRecipeAssetEdits *)v5 initWithKeyAsset:v4 overallDurationInfo:&v10 userCuratedAssets:v6 customUserAssetsEdit:v7];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXStoryRecipeAssetEdits *)self keyAsset];
  v7 = [v6 uuid];
  [(PXStoryRecipeAssetEdits *)self overallDurationInfo];
  v8 = PFStoryOverallDurationInfoDescription();
  v9 = [(PXStoryRecipeAssetEdits *)self userCuratedAssets];
  v10 = [v9 count];
  v11 = [(PXStoryRecipeAssetEdits *)self customUserAssetsEdit];
  v12 = [v11 assets];
  v13 = [v3 stringWithFormat:@"<%@:%p keyAsset:%@, overallDurationInfo:%@, userCuratedAssets:%ld, customUserAssets:%ld>", v5, self, v7, v8, v10, objc_msgSend(v12, "count")];;

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      keyAsset = self->_keyAsset;
      v7 = [(PXStoryRecipeAssetEdits *)v5 keyAsset];
      v8 = v7;
      if (keyAsset == v7)
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
        v9 = [(PXDisplayAsset *)keyAsset isEqual:v7];

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
      v14 = [(PXStoryRecipeAssetEdits *)v5 userCuratedAssets];
      v15 = v14;
      if (userCuratedAssets == v14)
      {

LABEL_22:
        v17 = [(PXMemoryCustomUserAssetsEdit *)self->_customUserAssetsEdit assets];
        v18 = [(PXStoryRecipeAssetEdits *)v5 customUserAssetsEdit];
        v19 = [v18 assets];
        if (v17 == v19)
        {
          v11 = 1;
        }

        else
        {
          v11 = [v17 isEqual:v19];
        }

        goto LABEL_16;
      }

      v16 = [(PXDisplayAssetFetchResult *)userCuratedAssets isEqual:v14];

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
  v2 = [(PXStoryRecipeAssetEdits *)self keyAsset];
  v3 = [v2 hash];

  return v3;
}

- (PXStoryRecipeAssetEdits)initWithKeyAsset:(id)a3 overallDurationInfo:(id *)a4 userCuratedAssets:(id)a5 customUserAssetsEdit:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = PXStoryRecipeAssetEdits;
  v14 = [(PXStoryRecipeAssetEdits *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_keyAsset, a3);
    *&v15->_overallDurationInfo.kind = *&a4->var0;
    v16 = *&a4->var1.var0.var1;
    v17 = *&a4->var1.var1.var0;
    v18 = *&a4->var1.var2.var1;
    *&v15->_overallDurationInfo.specificDurationInfo.preferredDuration.epoch = *&a4->var1.var1.var3;
    *&v15->_overallDurationInfo.specificDurationInfo.maximumDuration.timescale = v18;
    *&v15->_overallDurationInfo.specificDurationInfo.minimumDuration.timescale = v16;
    *&v15->_overallDurationInfo.specificDurationInfo.preferredDuration.value = v17;
    objc_storeStrong(&v15->_userCuratedAssets, a5);
    objc_storeStrong(&v15->_customUserAssetsEdit, a6);
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