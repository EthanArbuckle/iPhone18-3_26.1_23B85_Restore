@interface PXCuratedLibraryStatistics
- (NSString)summaryDescription;
- (int64_t)numberOfAssetsWithPlaybackStyle:(int64_t)style displayProminence:(int64_t)prominence autoPlaybackEligibility:(int64_t)eligibility;
@end

@implementation PXCuratedLibraryStatistics

- (int64_t)numberOfAssetsWithPlaybackStyle:(int64_t)style displayProminence:(int64_t)prominence autoPlaybackEligibility:(int64_t)eligibility
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryStatistics.m" lineNumber:184 description:{@"Method %s is a responsibility of subclass %@", "-[PXCuratedLibraryStatistics numberOfAssetsWithPlaybackStyle:displayProminence:autoPlaybackEligibility:]", v9}];

  abort();
}

- (NSString)summaryDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke;
  aBlock[3] = &unk_1E77499B0;
  v4 = v3;
  v25 = 20;
  v23 = v4;
  v24 = @"  ";
  v5 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_2;
  v20[3] = &unk_1E774C648;
  v6 = v4;
  v21 = v6;
  v7 = _Block_copy(v20);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v14 = __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_3;
  v15 = &unk_1E7742EB8;
  v8 = v6;
  v18 = v5;
  v19 = v7;
  v16 = v8;
  selfCopy = self;
  v9 = v7;
  v10 = v5;
  __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_3(v13, 1uLL);
  v14(v13, 3uLL);
  v14(v13, 4uLL);
  v14(v13, 2uLL);
  v14(v13, 5uLL);
  v14(v13, 0);
  v11 = v8;

  return v8;
}

uint64_t __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = [a2 description];
  v5 = v4;
  if (!v4)
  {
    v4 = &stru_1F1741150;
  }

  v6 = [(__CFString *)v4 stringByPaddingToLength:a1[6] withString:@" " startingAtIndex:0];
  [v3 appendString:v6];

  v7 = a1[4];
  v8 = a1[5];

  return [v7 appendString:v8];
}

void __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_3(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *PlaybackStyleGroupDescription(PXDisplayAssetPlaybackStyle)"];
    [v7 handleFailureInFunction:v8 file:@"PXCuratedLibraryStatistics.m" lineNumber:41 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [*(a1 + 32) appendFormat:@"== %@ ==\n\n", off_1E7742F00[a2]];
  (*(*(a1 + 48) + 16))();
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v55 = __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_4;
  v56 = &unk_1E7742DC8;
  v57 = *(a1 + 48);
  __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_4(v54, 2uLL);
  v55(v54, 1uLL);
  v55(v54, 0);
  (*(*(a1 + 56) + 16))();
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v48 = __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_5;
  v49 = &unk_1E7742E18;
  v4 = *(a1 + 48);
  v50 = *(a1 + 40);
  v51 = v4;
  v53 = a2;
  v52 = *(a1 + 56);
  __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_5(v47, 0);
  v48(v47, 1uLL);
  v48(v47, 2uLL);
  [*(a1 + 32) appendString:@"\n"];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v13 = __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_7;
  v14 = &unk_1E7742E68;
  v15 = *(a1 + 40);
  v16 = &v43;
  v17 = &v35;
  v18 = &v27;
  v19 = &v39;
  v20 = &v31;
  v21 = &v23;
  v22 = a2;
  v5 = v12;
  __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_7(v5, 0);
  v13(v5, 1);
  v13(v5, 2);

  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 56) + 16))();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_9;
  aBlock[3] = &unk_1E7742E90;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v6 = _Block_copy(aBlock);
  v6[2](v6, @"Total", v40[3], v44[3]);
  v6[2](v6, @"Large", v32[3], v36[3]);
  v6[2](v6, @"Key", v24[3], v28[3]);
  [*(a1 + 32) appendString:@"\n"];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
}

uint64_t __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *AutoPlaybackElibilityDescription(PXCuratedLibraryAutoPlaybackElibility)"];
    [v8 handleFailureInFunction:v9 file:@"PXCuratedLibraryStatistics.m" lineNumber:83 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

void __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_5(void *a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *DisplayProminenceDescription(PXCuratedLibraryAssetDisplayProminence)"];
    [v7 handleFailureInFunction:v8 file:@"PXCuratedLibraryStatistics.m" lineNumber:62 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  (*(a1[5] + 16))();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_6;
  v11 = &unk_1E7742DF0;
  v4 = a1[7];
  v5 = a1[5];
  v12 = a1[4];
  v14 = v4;
  v15 = a2;
  v13 = v5;
  __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_6(v9, 2);
  v10(v9, 1);
  v10(v9, 0);
  (*(a1[6] + 16))(a1[6], v6);
}

uint64_t __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_7(uint64_t a1, uint64_t a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_8;
  v9 = &unk_1E7742E40;
  v12 = *(a1 + 88);
  v13 = a2;
  v4 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = v4;
  __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_8(v7, 2);
  v8(v7, 1);
  v8(v7, 0);
  result = [*(a1 + 32) numberOfAssetsWithPlaybackStyle:*(a1 + 88) displayProminence:a2 autoPlaybackEligibility:2];
  *(*(*(a1 + 64) + 8) + 24) += result;
  if (a2 == 1)
  {
    v6 = 72;
  }

  else
  {
    if (a2 != 2)
    {
      return result;
    }

    *(*(*(a1 + 72) + 8) + 24) += result;
    v6 = 80;
  }

  *(*(*(a1 + v6) + 8) + 24) += result;
  return result;
}

uint64_t __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a1 + 32) + 16))();
  if (a4 >= 1)
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    (*(v7 + 16))(v7, v8);

    v9 = *(a1 + 32);
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%0.1f%%", a3 * 100.0 / a4];
    (*(v9 + 16))(v9, v10);

    v11 = *(a1 + 32);
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    (*(v11 + 16))(v11, v12);
  }

  v13 = *(*(a1 + 40) + 16);

  return v13();
}

uint64_t __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_8(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    result = [*(result + 32) numberOfAssetsWithPlaybackStyle:v2[8] displayProminence:v2[9] autoPlaybackEligibility:a2];
    *(*(v2[5] + 8) + 24) += result;
    v3 = v2[9];
    if (v3 == 1)
    {
      v4 = 6;
    }

    else
    {
      if (v3 != 2)
      {
        return result;
      }

      *(*(v2[6] + 8) + 24) += result;
      v4 = 7;
    }

    *(*(v2[v4] + 8) + 24) += result;
  }

  return result;
}

void __48__PXCuratedLibraryStatistics_summaryDescription__block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) numberOfAssetsWithPlaybackStyle:*(a1 + 48) displayProminence:*(a1 + 56) autoPlaybackEligibility:a2];
  v4 = *(a1 + 40);
  if (v3 <= 0)
  {
    v5 = *(v4 + 16);

    v5(v4, &stru_1F1741150);
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
    (*(v4 + 16))(v4, v6);
  }
}

@end