@interface PXStoryRecipe
- ($A35046FF140701A0BC97C4369CFAD28C)overallDurationInfo;
- (PXStoryRecipe)init;
- (PXStoryRecipe)initWithAssetCollection:(id)a3 keyAsset:(id)a4 curatedAssets:(id)a5 untruncatedCuratedAssets:(id)a6 allAssets:(id)a7 movieHighlights:(id)a8 detailedSaliency:(id)a9 chapterCollection:(id)a10 overallDurationInfo:(id *)a11 styleConfigurationList:(id)a12 sourcePersistableRecipe:(id)a13 initialSongResource:(id)a14 fallbackSongResource:(id)a15 autoEditDecisionListsBySong:(id)a16;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
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

- (PXStoryRecipe)initWithAssetCollection:(id)a3 keyAsset:(id)a4 curatedAssets:(id)a5 untruncatedCuratedAssets:(id)a6 allAssets:(id)a7 movieHighlights:(id)a8 detailedSaliency:(id)a9 chapterCollection:(id)a10 overallDurationInfo:(id *)a11 styleConfigurationList:(id)a12 sourcePersistableRecipe:(id)a13 initialSongResource:(id)a14 fallbackSongResource:(id)a15 autoEditDecisionListsBySong:(id)a16
{
  v41 = a3;
  v35 = a4;
  v46 = a4;
  v36 = a5;
  v45 = a5;
  v44 = a6;
  v37 = a7;
  v43 = a7;
  v42 = a8;
  v40 = a9;
  v39 = a10;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v24 = a15;
  v25 = a16;
  v47.receiver = self;
  v47.super_class = PXStoryRecipe;
  v26 = [(PXStoryRecipe *)&v47 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_assetCollection, a3);
    objc_storeStrong(&v27->_keyAsset, v35);
    objc_storeStrong(&v27->_curatedAssets, v36);
    objc_storeStrong(&v27->_untruncatedCuratedAssets, a6);
    objc_storeStrong(&v27->_allAssets, v37);
    objc_storeStrong(&v27->_movieHighlights, a8);
    objc_storeStrong(&v27->_detailedSaliency, a9);
    objc_storeStrong(&v27->_chapterCollection, a10);
    *&v27->_overallDurationInfo.kind = *&a11->var0;
    v28 = *&a11->var1.var0.var1;
    v29 = *&a11->var1.var1.var0;
    v30 = *&a11->var1.var2.var1;
    *&v27->_overallDurationInfo.specificDurationInfo.preferredDuration.epoch = *&a11->var1.var1.var3;
    *&v27->_overallDurationInfo.specificDurationInfo.maximumDuration.timescale = v30;
    *&v27->_overallDurationInfo.specificDurationInfo.minimumDuration.timescale = v28;
    *&v27->_overallDurationInfo.specificDurationInfo.preferredDuration.value = v29;
    objc_storeStrong(&v27->_styleConfigurationList, a12);
    objc_storeStrong(&v27->_sourcePersistableRecipe, a13);
    objc_storeStrong(&v27->_initialSongResource, a14);
    objc_storeStrong(&v27->_fallbackSongResource, a15);
    v31 = [v25 copy];
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

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v8 = a3;
  v4 = [(PXStoryRecipe *)self curatedAssets];
  v5 = [(PXStoryRecipe *)self chapterCollection];
  v6 = v5;
  if (v5)
  {
    v7 = PXStoryChapterCollectionDiagnosticDescptionWithAssets(v5, v4);
    [v8 addAttachmentWithText:v7 name:@"Chapters"];
  }
}

@end