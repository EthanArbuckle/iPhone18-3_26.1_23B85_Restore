@interface PXStoryResourcesPreloadingStatsStore
- (double)estimatedLoadingTimeLeft;
- (float)loadedFraction;
- (void)_enumerateAllStats:(id)stats;
- (void)_modifyStatsForPlaybackStyle:(int64_t)style withModifier:(id)modifier;
- (void)noteClipWithPlaybackStyle:(int64_t)style loadedWithLoadingTime:(double)time;
- (void)noteSessionStartedPreloadableClipsCounts:(id *)counts;
@end

@implementation PXStoryResourcesPreloadingStatsStore

- (void)_enumerateAllStats:(id)stats
{
  v4 = stats + 16;
  v5 = *(stats + 2);
  v6 = *&self->_imageClipsStats.accumulatedClipsLoadingTime;
  v13 = *&self->_imageClipsStats.preloadableClipsCount;
  v14 = v6;
  statsCopy = stats;
  v5(statsCopy, &v13, 1, v8);
  v9 = *v4;
  v10 = *&self->_videoClipsStats.accumulatedClipsLoadingTime;
  v13 = *&self->_videoClipsStats.preloadableClipsCount;
  v14 = v10;
  v9(statsCopy, &v13, 4);
  v11 = *v4;
  v12 = *&self->_livePhotoClipsStats.accumulatedClipsLoadingTime;
  v13 = *&self->_livePhotoClipsStats.preloadableClipsCount;
  v14 = v12;
  v11(statsCopy, &v13, 3);
}

- (void)_modifyStatsForPlaybackStyle:(int64_t)style withModifier:(id)modifier
{
  modifierCopy = modifier;
  switch(style)
  {
    case 1:
      v8 = 8;
      break;
    case 3:
      v8 = 40;
      break;
    case 4:
      v8 = 72;
      break;
    default:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryResourcesPreloader.m" lineNumber:1066 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  v10 = modifierCopy;
  (*(modifierCopy + 2))(modifierCopy, self + v8);
}

- (double)estimatedLoadingTimeLeft
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v4 = +[PXStorySettings sharedInstance];
  estimateTimeLeftPerPlaybackStyle = [v4 estimateTimeLeftPerPlaybackStyle];

  if (estimateTimeLeftPerPlaybackStyle)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __64__PXStoryResourcesPreloadingStatsStore_estimatedLoadingTimeLeft__block_invoke;
    v25[3] = &unk_1E7745C58;
    v25[4] = self;
    v25[5] = &v26;
    v25[6] = a2;
    [(PXStoryResourcesPreloadingStatsStore *)self _enumerateAllStats:v25];
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__PXStoryResourcesPreloadingStatsStore_estimatedLoadingTimeLeft__block_invoke_2;
    v8[3] = &unk_1E7745C80;
    v8[4] = &v21;
    v8[5] = &v17;
    v8[6] = &v13;
    v8[7] = &v9;
    [(PXStoryResourcesPreloadingStatsStore *)self _enumerateAllStats:v8];
    v27[3] = v27[3] + v22[3] / v18[3] * (v14[3] - v10[3]);
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
  }

  v6 = v27[3];
  _Block_object_dispose(&v26, 8);
  return v6;
}

double __64__PXStoryResourcesPreloadingStatsStore_estimatedLoadingTimeLeft__block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 24);
  if (v7 < 1)
  {
    if (a3 == 1)
    {
      v8 = 1.5;
    }

    else
    {
      if (a3 != 3 && a3 != 4)
      {
        v13 = v4;
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:a1[6] object:a1[4] file:@"PXStoryResourcesPreloader.m" lineNumber:1025 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v8 = 2.0;
    }
  }

  else
  {
    v8 = *(a2 + 16) / v7;
  }

  v9 = *(a1[5] + 8);
  result = *(v9 + 24) + v8 * (*a2 - *(a2 + 8));
  *(v9 + 24) = result;
  return result;
}

double __64__PXStoryResourcesPreloadingStatsStore_estimatedLoadingTimeLeft__block_invoke_2(void *a1, uint64_t a2)
{
  *(*(a1[4] + 8) + 24) = *(a2 + 16) + *(*(a1[4] + 8) + 24);
  v2 = *(a1[5] + 8);
  result = *(v2 + 24) + *(a2 + 24);
  *(v2 + 24) = result;
  *(*(a1[6] + 8) + 24) += *a2;
  *(*(a1[7] + 8) + 24) += *(a2 + 8);
  return result;
}

- (float)loadedFraction
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PXStoryResourcesPreloadingStatsStore_loadedFraction__block_invoke;
  v5[3] = &unk_1E7745C30;
  v5[4] = &v10;
  v5[5] = &v6;
  [(PXStoryResourcesPreloadingStatsStore *)self _enumerateAllStats:v5];
  v2 = v11[3];
  if (v2 < 1)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = v7[3] / v2;
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  return v3;
}

uint64_t __54__PXStoryResourcesPreloadingStatsStore_loadedFraction__block_invoke(uint64_t result, void *a2)
{
  *(*(*(result + 32) + 8) + 24) += *a2;
  *(*(*(result + 40) + 8) + 24) += a2[1];
  return result;
}

- (void)noteClipWithPlaybackStyle:(int64_t)style loadedWithLoadingTime:(double)time
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__PXStoryResourcesPreloadingStatsStore_noteClipWithPlaybackStyle_loadedWithLoadingTime___block_invoke;
  v4[3] = &__block_descriptor_40_e16_v16__0____qqdq_8l;
  *&v4[4] = time;
  [(PXStoryResourcesPreloadingStatsStore *)self _modifyStatsForPlaybackStyle:style withModifier:v4];
}

double __88__PXStoryResourcesPreloadingStatsStore_noteClipWithPlaybackStyle_loadedWithLoadingTime___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16) + fmax(*(a1 + 32), 1.0);
  *(a2 + 16) = result;
  ++*(a2 + 24);
  ++*(a2 + 8);
  return result;
}

- (void)noteSessionStartedPreloadableClipsCounts:(id *)counts
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__PXStoryResourcesPreloadingStatsStore_noteSessionStartedPreloadableClipsCounts___block_invoke;
  v9[3] = &__block_descriptor_56_e16_v16__0____qqdq_8l;
  v10 = *counts;
  [(PXStoryResourcesPreloadingStatsStore *)self _modifyStatsForPlaybackStyle:1 withModifier:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__PXStoryResourcesPreloadingStatsStore_noteSessionStartedPreloadableClipsCounts___block_invoke_2;
  v7[3] = &__block_descriptor_56_e16_v16__0____qqdq_8l;
  v8 = *counts;
  [(PXStoryResourcesPreloadingStatsStore *)self _modifyStatsForPlaybackStyle:4 withModifier:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__PXStoryResourcesPreloadingStatsStore_noteSessionStartedPreloadableClipsCounts___block_invoke_3;
  v5[3] = &__block_descriptor_56_e16_v16__0____qqdq_8l;
  v6 = *counts;
  [(PXStoryResourcesPreloadingStatsStore *)self _modifyStatsForPlaybackStyle:3 withModifier:v5];
}

uint64_t __81__PXStoryResourcesPreloadingStatsStore_noteSessionStartedPreloadableClipsCounts___block_invoke(uint64_t result, void *a2)
{
  *a2 = *(result + 32);
  a2[1] = 0;
  return result;
}

uint64_t __81__PXStoryResourcesPreloadingStatsStore_noteSessionStartedPreloadableClipsCounts___block_invoke_2(uint64_t result, void *a2)
{
  *a2 = *(result + 40);
  a2[1] = 0;
  return result;
}

uint64_t __81__PXStoryResourcesPreloadingStatsStore_noteSessionStartedPreloadableClipsCounts___block_invoke_3(uint64_t result, void *a2)
{
  *a2 = *(result + 48);
  a2[1] = 0;
  return result;
}

@end