@interface PXStoryRecipe
- ($A35046FF140701A0BC97C4369CFAD28C)overallDurationInfo;
- (PXStoryRecipe)init;
- (PXStoryRecipe)initWithAssetCollection:(id)collection keyAsset:(id)asset curatedAssets:(id)assets untruncatedCuratedAssets:(id)curatedAssets allAssets:(id)allAssets movieHighlights:(id)highlights detailedSaliency:(id)saliency chapterCollection:(id)self0 overallDurationInfo:(id *)self1 styleConfigurationList:(id)self2 sourcePersistableRecipe:(id)self3 initialSongResource:(id)self4 fallbackSongResource:(id)self5 autoEditDecisionListsBySong:(id)self6;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
@end

@implementation PXStoryRecipe

- ($A35046FF140701A0BC97C4369CFAD28C)overallDurationInfo
{
  v3 = *&self[2].var0;
  *&retstr->var1.var1.var0 = *&self[1].var1.var2.var1;
  *&retstr->var1.var1.var3 = v3;
  *&retstr->var1.var2.var1 = *&self[2].var1.var0.var1;
  v4 = *&self[1].var1.var1.var3;
  *&retstr->var0 = *&self[1].var1.var1.var0;
  *&retstr->var1.var0.var1 = v4;
  return self;
}

- (PXStoryRecipe)initWithAssetCollection:(id)collection keyAsset:(id)asset curatedAssets:(id)assets untruncatedCuratedAssets:(id)curatedAssets allAssets:(id)allAssets movieHighlights:(id)highlights detailedSaliency:(id)saliency chapterCollection:(id)self0 overallDurationInfo:(id *)self1 styleConfigurationList:(id)self2 sourcePersistableRecipe:(id)self3 initialSongResource:(id)self4 fallbackSongResource:(id)self5 autoEditDecisionListsBySong:(id)self6
{
  collectionCopy = collection;
  assetCopy = asset;
  assetCopy2 = asset;
  assetsCopy = assets;
  assetsCopy2 = assets;
  curatedAssetsCopy = curatedAssets;
  allAssetsCopy = allAssets;
  allAssetsCopy2 = allAssets;
  highlightsCopy = highlights;
  saliencyCopy = saliency;
  chapterCollectionCopy = chapterCollection;
  listCopy = list;
  recipeCopy = recipe;
  resourceCopy = resource;
  songResourceCopy = songResource;
  songCopy = song;
  v47.receiver = self;
  v47.super_class = PXStoryRecipe;
  v26 = [(PXStoryRecipe *)&v47 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_assetCollection, collection);
    objc_storeStrong(&v27->_keyAsset, assetCopy);
    objc_storeStrong(&v27->_curatedAssets, assetsCopy);
    objc_storeStrong(&v27->_untruncatedCuratedAssets, curatedAssets);
    objc_storeStrong(&v27->_allAssets, allAssetsCopy);
    objc_storeStrong(&v27->_movieHighlights, highlights);
    objc_storeStrong(&v27->_detailedSaliency, saliency);
    objc_storeStrong(&v27->_chapterCollection, chapterCollection);
    *&v27->_overallDurationInfo.kind = *&info->var0;
    v28 = *&info->var1.var0.var1;
    v29 = *&info->var1.var1.var0;
    v30 = *&info->var1.var2.var1;
    *&v27->_overallDurationInfo.specificDurationInfo.preferredDuration.epoch = *&info->var1.var1.var3;
    *&v27->_overallDurationInfo.specificDurationInfo.maximumDuration.timescale = v30;
    *&v27->_overallDurationInfo.specificDurationInfo.minimumDuration.timescale = v28;
    *&v27->_overallDurationInfo.specificDurationInfo.preferredDuration.value = v29;
    objc_storeStrong(&v27->_styleConfigurationList, list);
    objc_storeStrong(&v27->_sourcePersistableRecipe, recipe);
    objc_storeStrong(&v27->_initialSongResource, resource);
    objc_storeStrong(&v27->_fallbackSongResource, songResource);
    v31 = [songCopy copy];
    autoEditDecisionListsBySong = v27->_autoEditDecisionListsBySong;
    v27->_autoEditDecisionListsBySong = v31;
  }

  return v27;
}

- (PXStoryRecipe)init
{
  v2 = *(MEMORY[0x1E69C0DB8] + 48);
  v5[2] = *(MEMORY[0x1E69C0DB8] + 32);
  v5[3] = v2;
  v5[4] = *(MEMORY[0x1E69C0DB8] + 64);
  v3 = *(MEMORY[0x1E69C0DB8] + 16);
  v5[0] = *MEMORY[0x1E69C0DB8];
  v5[1] = v3;
  return [(PXStoryRecipe *)self initWithAssetCollection:0 keyAsset:0 curatedAssets:0 untruncatedCuratedAssets:0 allAssets:0 movieHighlights:0 detailedSaliency:0 chapterCollection:0 overallDurationInfo:v5 styleConfigurationList:0 sourcePersistableRecipe:0 initialSongResource:0 fallbackSongResource:0 autoEditDecisionListsBySong:0];
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  containerCopy = container;
  curatedAssets = [(PXStoryRecipe *)self curatedAssets];
  chapterCollection = [(PXStoryRecipe *)self chapterCollection];
  v6 = chapterCollection;
  if (chapterCollection)
  {
    v7 = PXStoryChapterCollectionDiagnosticDescptionWithAssets(chapterCollection, curatedAssets);
    [containerCopy addAttachmentWithText:v7 name:@"Chapters"];
  }
}

@end