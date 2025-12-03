@interface PXStoryConcreteTimelineScorer
- (BOOL)isAcceptableCropWithVisibleAssetRect:(CGFloat)rect acceptableCropAssetRect:(CGFloat)assetRect faceAreaAssetRect:(double)areaAssetRect;
- (PXStoryConcreteTimelineScorer)initWithTimelineStyle:(id)style;
- (double)_scoreForSplitAsset:(id)asset inTimeline:(id)timeline segmentTimeRange:(id *)range;
- (double)scoreForTimeline:(id)timeline;
@end

@implementation PXStoryConcreteTimelineScorer

- (double)_scoreForSplitAsset:(id)asset inTimeline:(id)timeline segmentTimeRange:(id *)range
{
  assetCopy = asset;
  [timeline size];
  PXRectWithOriginAndSize();
}

uint64_t __81__PXStoryConcreteTimelineScorer__scoreForSplitAsset_inTimeline_segmentTimeRange___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v6 = a2;
    v7 = a4 + 16;
    do
    {
      if (*(a5 + 8) == 1)
      {
        *(*(*(result + 32) + 8) + 32) = CGRectUnion(*(*(*(result + 32) + 8) + 32), *(v7 - 16));
        PXEdgeInsetsInsetRect();
      }

      a5 += 768;
      v7 += 32;
      --v6;
    }

    while (v6);
  }

  return result;
}

BOOL __87__PXStoryConcreteTimelineScorer__scoreForClipInfo_inClipFrame_timelineBounds_nUpBonus___block_invoke_3(uint64_t a1)
{
  if (CGRectIsEmpty(*(a1 + 40)))
  {
    return 0;
  }

  v3 = (*(*(a1 + 32) + 16))(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  v13 = *(a1 + 96);

  return CGRectContainsRect(*&v10, *&v3);
}

- (BOOL)isAcceptableCropWithVisibleAssetRect:(CGFloat)rect acceptableCropAssetRect:(CGFloat)assetRect faceAreaAssetRect:(double)areaAssetRect
{
  *v36 = areaAssetRect;
  *&v36[8] = a6;
  *&v36[16] = a7;
  *&v36[24] = a8;
  v24 = CGRectContainsRect(*&self, *&areaAssetRect);
  v38.origin.x = a9;
  v38.origin.y = a10;
  v38.size.width = a11;
  v38.size.height = a12;
  IsEmpty = CGRectIsEmpty(v38);
  v26 = !IsEmpty || v24;
  if (IsEmpty || v24)
  {
    return v26 & 1;
  }

  v39.origin.x = self;
  v39.origin.y = a2;
  v39.size.width = rect;
  v39.size.height = assetRect;
  v41.origin.x = a9;
  v41.origin.y = a10;
  v41.size.width = a11;
  v41.size.height = a12;
  if (CGRectContainsRect(v39, v41))
  {
    v26 = 1;
    return v26 & 1;
  }

  v42.origin.x = a9;
  v42.origin.y = a10;
  v42.size.width = a11;
  v42.size.height = a12;
  v40 = CGRectIntersection(*v36, v42);
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  selfCopy = self;
  v33 = a2;
  rectCopy = rect;
  assetRectCopy = assetRect;

  return CGRectContainsRect(*&selfCopy, *&x);
}

- (double)scoreForTimeline:(id)timeline
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  timelineCopy = timeline;
  if (timelineCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v8 = NSStringFromClass(v9);
    px_descriptionForAssertionMessage = [timelineCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimelineScorer.m" lineNumber:105 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"timeline", v8, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimelineScorer.m" lineNumber:105 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"timeline", v8}];
  }

LABEL_3:
  [timelineCopy size];
  PXRectWithOriginAndSize();
}

void __50__PXStoryConcreteTimelineScorer_scoreForTimeline___block_invoke_2(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a2 >= 1)
  {
    v4 = a2;
    v6 = 0;
    v29 = 0;
    v28 = *off_1E7722230;
    do
    {
      v7 = a3[1];
      v67 = *a3;
      v68 = v7;
      v69 = a3[2];
      v63 = 0;
      v64 = &v63;
      v65 = 0x2020000000;
      v66 = 0;
      v59 = 0;
      v60 = &v59;
      v61 = 0x2020000000;
      v62 = 0;
      v55 = 0;
      v56 = &v55;
      v57 = 0x2020000000;
      v58 = 0;
      v49 = 0;
      v50 = &v49;
      v51 = 0x4010000000;
      v52 = &unk_1A561E057;
      v8 = *(MEMORY[0x1E695F050] + 16);
      v53 = *MEMORY[0x1E695F050];
      v54 = v8;
      v44 = 0;
      v45 = &v44;
      v46 = 0x3010000000;
      v47 = &unk_1A561E057;
      v48 = v28;
      [*(a1 + 32) removeAllIndexes];
      [*(a1 + 40) removeAllIndexes];
      [*(*(a1 + 48) + 8) removeAllResources];
      v9 = *(a1 + 56);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __50__PXStoryConcreteTimelineScorer_scoreForTimeline___block_invoke_3;
      v34[3] = &unk_1E7735E18;
      v37 = &v49;
      v38 = &v59;
      v10 = *(a1 + 96);
      v42 = *(a1 + 80);
      v43 = v10;
      v39 = &v55;
      v30 = *(a1 + 40);
      v11 = v30.i64[0];
      v35 = vextq_s8(v30, v30, 8uLL);
      v36 = *(a1 + 32);
      v40 = &v44;
      v41 = &v63;
      *buf = v67;
      v32 = v68;
      v33 = v69;
      [v9 enumerateConcreteClipsInTimeRange:buf rect:v34 usingBlock:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
      if (v64[3] >= 1)
      {
        v12 = [*(a1 + 32) count];
        if (v12 == v64[3])
        {
          *(*(*(a1 + 72) + 8) + 24) = v60[3] / v12 + *(*(*(a1 + 72) + 8) + 24);
          if (v12 >= 1)
          {
            *(*(*(a1 + 72) + 8) + 24) = v56[3] + *(*(*(a1 + 72) + 8) + 24);
          }

          [*(*(a1 + 48) + 72) composabilityScoreForSegmentWithDisplayAssets:*(*(a1 + 48) + 8)];
          v13 = *(*(a1 + 72) + 8);
          v15 = *(v13 + 24) + v14 * 1000.0;
        }

        else
        {
          if (v12 != 1)
          {
            PXAssertGetLog();
          }

          v16 = *(*(a1 + 48) + 16);
          v17 = [*(a1 + 32) firstIndex];
          v18 = [*(*(a1 + 48) + 8) resourcesDataSource];
          [v16 setResourceIndex:v17 resourcesDataSource:v18];

          v19 = *(a1 + 48);
          v20 = *(a1 + 56);
          v21 = v19[2];
          *buf = v67;
          v32 = v68;
          v33 = v69;
          [v19 _scoreForSplitAsset:v21 inTimeline:v20 segmentTimeRange:buf];
          v13 = *(*(a1 + 72) + 8);
          v15 = v22 + *(v13 + 24);
        }

        *(v13 + 24) = v15;
        if (v64[3] == 1)
        {
          v23 = (*(*(a1 + 64) + 16))(v50[6], v50[7]);
          v24 = (*(*(a1 + 64) + 16))(v45[4], v45[5]);
          v25 = *(a1 + 120);
          if (v24 >= v25)
          {
            v26 = *(a1 + 120);
          }

          else
          {
            v26 = v24;
          }

          if (v24 < v25)
          {
            v24 = *(a1 + 120);
          }

          if (v23 < v26 || v23 > v24)
          {
            *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24) + -1000.0;
          }
        }

        PXSizeGetArea();
      }

      v27 = v64[3];
      if (v6 <= 0)
      {
        if (v27 > 1)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v27 == v6)
        {
          *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24) + -0.5;
        }

        if (v27 >= 2 && v6 != 1)
        {
          *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24) + -2.0;
LABEL_32:
          if (v27 == v29)
          {
            *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24) + -0.5;
          }

          if ([*(a1 + 40) containsIndex:4])
          {
            *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24) + -100.0;
          }

          v27 = v64[3];
          v29 = v27;
          goto LABEL_37;
        }

        if (v27 >= 2)
        {
          goto LABEL_32;
        }
      }

LABEL_37:

      _Block_object_dispose(&v44, 8);
      _Block_object_dispose(&v49, 8);
      _Block_object_dispose(&v55, 8);
      _Block_object_dispose(&v59, 8);
      _Block_object_dispose(&v63, 8);
      a3 += 3;
      v6 = v27;
      --v4;
    }

    while (v4);
  }
}

uint64_t __50__PXStoryConcreteTimelineScorer_scoreForTimeline___block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a2 >= 1)
  {
    v23[1] = v11;
    v23[2] = v10;
    v23[3] = v9;
    v23[4] = v8;
    v23[11] = v6;
    v23[12] = v7;
    v14 = a2;
    v15 = result;
    v16 = (a4 + 16);
    do
    {
      if (*(a5 + 8) == 1)
      {
        v17 = *(v16 - 2);
        v18 = *(v16 - 1);
        v19 = *v16;
        v20 = v16[1];
        v24.origin.x = v17;
        v24.origin.y = v18;
        v24.size.width = *v16;
        v24.size.height = v20;
        *(*(*(v15 + 56) + 8) + 32) = CGRectUnion(*(*(*(v15 + 56) + 8) + 32), v24);
        v23[0] = 0.0;
        [*(v15 + 32) _scoreForClipInfo:a5 inClipFrame:v23 timelineBounds:v17 nUpBonus:{v18, v19, v20, *(v15 + 96), *(v15 + 104), *(v15 + 112), *(v15 + 120)}];
        *(*(*(v15 + 64) + 8) + 24) = v21 + *(*(*(v15 + 64) + 8) + 24);
        *(*(*(v15 + 72) + 8) + 24) = v23[0] + *(*(*(v15 + 72) + 8) + 24);
        [*(v15 + 40) addIndex:*(a5 + 152)];
        v22 = *a6;
        [*(v15 + 48) addIndex:*a6];
        result = [*(*(v15 + 32) + 8) addResourceWithIndex:v22];
        *(*(*(v15 + 80) + 8) + 32) = *(a5 + 160);
        ++*(*(*(v15 + 88) + 8) + 24);
      }

      ++a6;
      a5 += 768;
      v16 += 4;
      --v14;
    }

    while (v14);
  }

  return result;
}

- (PXStoryConcreteTimelineScorer)initWithTimelineStyle:(id)style
{
  styleCopy = style;
  v18.receiver = self;
  v18.super_class = PXStoryConcreteTimelineScorer;
  v6 = [(PXStoryConcreteTimelineScorer *)&v18 init];
  if (v6)
  {
    v7 = +[PXStorySettings sharedInstance];
    objc_storeStrong(&v6->_timelineStyle, style);
    v8 = objc_alloc_init(_PXStoryConcreteScorerDisplayAssetsFetchResult);
    segmentDisplayAssets = v6->_segmentDisplayAssets;
    v6->_segmentDisplayAssets = v8;

    v10 = objc_alloc_init(_PXStoryConcreteScorerDisplayAsset);
    splitAsset = v6->_splitAsset;
    v6->_splitAsset = v10;

    [v7 videoMaximumAspectFillScale];
    v6->_videoMaximumAspectFillScale = v12;
    [v7 livePhotoSameOrientationCompactMaximumScale];
    v6->_livePhotoSameOrientationMaximumScales[0] = v13;
    [v7 livePhotoSameOrientationRegularMaximumScale];
    v6->_livePhotoSameOrientationMaximumScales[1] = v14;
    [v7 livePhotoOppositeOrientationCompactMaximumScale];
    v6->_livePhotoOppositeOrientationMaximumScales[0] = v15;
    [v7 livePhotoOppositeOrientationRegularMaximumScale];
    v6->_livePhotoOppositeOrientationMaximumScales[1] = v16;
    [v7 aspectFillOneUpCropTolerance];
    PXFloatByLinearlyInterpolatingFloats();
  }

  return 0;
}

@end