@interface PXMutableCuratedLibraryStatistics
- (PXMutableCuratedLibraryStatistics)init;
- (void)_incrementCountForPlaybackStyle:(int64_t)a3 displayProminence:(int64_t)a4 autoPlaybackEligibility:(int64_t)a5;
- (void)appendStatisticsForSection:(int64_t)a3 assetsDataSource:(id)a4 playbackController:(id)a5 visibleItems:(id)a6 heroItems:(id)a7 keyItem:(int64_t)a8;
- (void)dealloc;
@end

@implementation PXMutableCuratedLibraryStatistics

- (void)appendStatisticsForSection:(int64_t)a3 assetsDataSource:(id)a4 playbackController:(id)a5 visibleItems:(id)a6 heroItems:(id)a7 keyItem:(int64_t)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x4010000000;
  v29[3] = &unk_1A561E057;
  v30 = 0u;
  v31 = 0u;
  *&v30 = [v14 identifier];
  *(&v30 + 1) = a3;
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v31 = vnegq_f64(v18);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __131__PXMutableCuratedLibraryStatistics_appendStatisticsForSection_assetsDataSource_playbackController_visibleItems_heroItems_keyItem___block_invoke;
  v22[3] = &unk_1E7742EE0;
  v27 = v29;
  v19 = v14;
  v23 = v19;
  v28 = a8;
  v20 = v17;
  v24 = v20;
  v21 = v15;
  v25 = v21;
  v26 = self;
  [v16 enumerateIndexesUsingBlock:v22];

  _Block_object_dispose(v29, 8);
}

void __131__PXMutableCuratedLibraryStatistics_appendStatisticsForSection_assetsDataSource_playbackController_visibleItems_heroItems_keyItem___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 64) + 8) + 48) = a2;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 48);
  v11[0] = *(v5 + 32);
  v11[1] = v6;
  v7 = [v4 assetAtItemIndexPath:v11];
  v8 = [v7 playbackStyle];
  if (*(a1 + 72) == a2)
  {
    v9 = 2;
  }

  else
  {
    v9 = [*(a1 + 40) containsIndex:a2];
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && ([v7 isAutoPlaybackEligibilityEstimated])
  {
    v10 = 0;
  }

  else if ([*(a1 + 48) canPlayAsset:v7] && (objc_msgSend(*(a1 + 48), "isDisplayAssetEligibleForAutoPlayback:", v7) & 1) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  [*(a1 + 56) _incrementCountForPlaybackStyle:v8 displayProminence:v9 autoPlaybackEligibility:v10];
}

- (void)_incrementCountForPlaybackStyle:(int64_t)a3 displayProminence:(int64_t)a4 autoPlaybackEligibility:(int64_t)a5
{
  counts = self->_counts;
  v6 = [(PXMutableCuratedLibraryStatistics *)self _coutIndexForPlaybackStyle:a3 displayProminence:a4 autoPlaybackEligibility:a5];
  ++counts[v6];
}

- (void)dealloc
{
  free(self->_counts);
  v3.receiver = self;
  v3.super_class = PXMutableCuratedLibraryStatistics;
  [(PXMutableCuratedLibraryStatistics *)&v3 dealloc];
}

- (PXMutableCuratedLibraryStatistics)init
{
  v4.receiver = self;
  v4.super_class = PXMutableCuratedLibraryStatistics;
  v2 = [(PXMutableCuratedLibraryStatistics *)&v4 init];
  if (v2)
  {
    v2->_counts = malloc_type_calloc(0x36uLL, 8uLL, 0x100004000313F17uLL);
  }

  return v2;
}

@end