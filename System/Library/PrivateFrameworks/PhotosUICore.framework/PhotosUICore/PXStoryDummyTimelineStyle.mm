@interface PXStoryDummyTimelineStyle
@end

@implementation PXStoryDummyTimelineStyle

void __242___PXStoryDummyTimelineStyle_enumerateAllowedKenBurnsEffectParametersForSegmentWithClipComposition_displayAssets_assetContentInfos_finalPlaybackStyles_startTime_durationInfo_separatorEffectParameters_separatorEffectContext_buffer_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [*(a1 + 32) numberOfClips];
  if (v3 == 3)
  {
    v4 = [*(*(a1 + 40) + 8) threeUpKenBurnsKind];
    if (v4 <= 1)
    {
      v5 = v17;
      if (!v4)
      {
        goto LABEL_17;
      }

      if (v4 != 1)
      {
        goto LABEL_31;
      }

LABEL_16:
      v8 = *(a1 + 56);
      [*(*(a1 + 40) + 8) kenBurnsDistance];
      [v17 getParameters:v8 forOppositePansWithDistance:?];
LABEL_29:
      v9 = *(*(a1 + 48) + 16);
      goto LABEL_30;
    }

    v5 = v17;
    if (v4 != 2)
    {
LABEL_25:
      if (v4 != 3)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

LABEL_23:
    v11 = *(a1 + 56);
    [*(*(a1 + 40) + 8) kenBurnsDistance];
    [v17 getParameters:v11 forParallelPansWithDistance:?];
    goto LABEL_29;
  }

  if (v3 != 2)
  {
    if (v3 != 1)
    {
      goto LABEL_17;
    }

    v4 = [*(*(a1 + 40) + 8) oneUpKenBurnsKind];
    if (v4 <= 1)
    {
      v5 = v17;
      if (v4)
      {
        if (v4 != 1)
        {
          goto LABEL_31;
        }

        v6 = *(a1 + 56);
        [*(*(a1 + 40) + 8) kenBurnsScale];
        [v17 getParameters:v6 forZoomWithScale:?];
        goto LABEL_29;
      }

LABEL_17:
      v9 = *(*(a1 + 48) + 16);
LABEL_30:
      v9();
      v5 = v17;
      goto LABEL_31;
    }

    v5 = v17;
    if (v4 == 2)
    {
      [*(*(a1 + 40) + 8) kenBurnsPanDirection];
      PXRectEdgeOpposite();
    }

    goto LABEL_25;
  }

  v7 = [*(*(a1 + 40) + 8) twoUpKenBurnsKind];
  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 != 4)
      {
        v5 = v17;
        if (v7 != 5)
        {
          goto LABEL_31;
        }

        v10 = *(a1 + 56);
        [*(*(a1 + 40) + 8) kenBurnsDistance];
        [v17 getParameters:v10 forSplitAssetOppositePansWithDistance:?];
        goto LABEL_29;
      }

LABEL_26:
      [*(*(a1 + 40) + 8) kenBurnsRotationInDegrees];
      PXDegreesToRadians();
    }

    goto LABEL_23;
  }

  if (!v7)
  {
    goto LABEL_17;
  }

  if (v7 == 1)
  {
    v12 = *(a1 + 56);
    [*(*(a1 + 40) + 8) kenBurnsScale];
    v14 = v13;
    [*(*(a1 + 40) + 8) kenBurnsRelativeTransformOrigin];
    [v17 getParameters:v12 forZoomWithScale:v14 relativeTransformOrigin:{v15, v16}];
    goto LABEL_29;
  }

  v5 = v17;
  if (v7 == 2)
  {
    goto LABEL_16;
  }

LABEL_31:
}

@end