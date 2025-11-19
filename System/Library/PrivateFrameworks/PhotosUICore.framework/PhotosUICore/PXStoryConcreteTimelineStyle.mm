@interface PXStoryConcreteTimelineStyle
- ($01BB1521EC52D44A8E7628F5261DCEC8)_kenBurnsMotionParametersForDuration:(double)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)defaultDisplayAssetPresentationDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)durationForVerticallyPanningPortraitAsset:(SEL)a3 atSpeed:(id)a4 motionInfo:(double)a5 minimumDuration:(id *)a6 croppingContext:(id *)a7;
- ($654D12A5B96C89A393ABE69D6FE3CC0A)audioInfoForDisplayAsset:(SEL)a3;
- ($7566BBA16C4E03ED15B4F2B623931C37)_durationInfoForClip:(SEL)a3 startTime:(id)a4 croppingContext:(id *)a5;
- ($7566BBA16C4E03ED15B4F2B623931C37)durationInfoForSegmentWithDisplayAssets:(SEL)a3 startTime:(id)a4;
- ($D23540E3B197441F7781E3353E3BC035)_transitionInfoForClip:(SEL)a3 isKeyAsset:(id)a4;
- ($D23540E3B197441F7781E3353E3BC035)transitionInfoForSegmentWithClipComposition:(SEL)a3 displayAssets:(id)a4;
- (BOOL)allowsMultipartPanoramaForDisplayAsset:(id)a3 startTime:(id *)a4;
- (BOOL)isOriginalPlaybackStyleAllowedInNUp:(int64_t)a3;
- (PXStoryConcreteTimelineStyle)init;
- (PXStoryConcreteTimelineStyle)initWithSpec:(id)a3 audioAsset:(id)a4 cueSource:(id)a5 overallDurationInfo:(id *)a6 autoEditDecisionList:(id)a7 autoEditConfiguration:(id)a8 allowedKeyAssetClipCompositions:(id)a9 allowedClipCompositions:(id)a10 randomNumberGenerators:(id)a11 errorReporter:(id)a12 allowsIncompleteTimelines:(BOOL)a13 styleOptions:(id)a14 storyConfiguration:(id)a15;
- (PXStoryConfiguration)storyConfiguration;
- (PXStoryMultipartPanoramaParameters)defaultHorizontalMultipartPanoramaParameters;
- (PXStoryMultipartPanoramaParameters)defaultVerticalMultipartPanoramaParameters;
- (double)composabilityScoreForSegmentWithDisplayAssets:(id)a3;
- (double)effectiveMovementDurationForDurationInfo:(id *)a3;
- (id)_clipForDisplayAsset:(id)a3;
- (id)_clipForDisplayAssets:(id)a3;
- (id)clipCompositionForKeyAsset:(id)a3 contentInfo:(id *)a4 finalPlaybackStyle:(int64_t)a5;
- (id)sortedCropContentsRectsForMultipartPanoramaWithDisplayAsset:(id)a3 startTime:(id *)a4 proposedCropContentsRects:(id)a5 axis:(int64_t)a6 normalizedKenBurnsEffectParameters:(id *)a7 durationInfos:(id *)a8 transitionInfos:(id *)a9;
- (int64_t)finalOneUpPlaybackStyleForDisplayAsset:(id)a3 originalPlaybackStyle:(int64_t)a4;
- (void)_ensureDefaultMultipartPanoramaParameters;
- (void)_getOneUpKenBurnsParameters:(id *)a3 forDisplayAsset:(id)a4 motionInfo:(id *)a5 motionParameters:(id *)a6 factory:(id)a7;
- (void)enumerateAllowedKenBurnsEffectParametersForSegmentWithClipComposition:(id)a3 displayAssets:(id)a4 assetContentInfos:(id *)a5 finalPlaybackStyles:(const int64_t *)a6 startTime:(id *)a7 durationInfo:(id *)a8 separatorEffectParameters:(id *)a9 separatorEffectContext:(int64_t)a10 buffer:(id *)a11 usingBlock:(id)a12;
- (void)enumerateAllowedSeparatorEffectParametersForSegmentWithClipComposition:(id)a3 displayAssets:(id)a4 finalPlaybackStyles:(const int64_t *)a5 startTime:(id *)a6 durationInfo:(id *)a7 buffer:(id *)a8 usingBlock:(id)a9;
@end

@implementation PXStoryConcreteTimelineStyle

- (PXStoryConfiguration)storyConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_storyConfiguration);

  return WeakRetained;
}

- (id)sortedCropContentsRectsForMultipartPanoramaWithDisplayAsset:(id)a3 startTime:(id *)a4 proposedCropContentsRects:(id)a5 axis:(int64_t)a6 normalizedKenBurnsEffectParameters:(id *)a7 durationInfos:(id *)a8 transitionInfos:(id *)a9
{
  v14 = a3;
  if (a6 == 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = -1;
    if (!self->_isRTL)
    {
      v15 = 1;
    }
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __198__PXStoryConcreteTimelineStyle_sortedCropContentsRectsForMultipartPanoramaWithDisplayAsset_startTime_proposedCropContentsRects_axis_normalizedKenBurnsEffectParameters_durationInfos_transitionInfos___block_invoke;
  v38[3] = &__block_descriptor_48_e29_q24__0__NSValue_8__NSValue_16l;
  v38[4] = a6;
  v38[5] = v15;
  v16 = [a5 sortedArrayUsingComparator:v38];
  v17 = [v16 count];
  v18 = [(PXStoryConcreteTimelineStyle *)self _clipForDisplayAsset:v14];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v19 = [v14 resourcesDataSource];
  v20 = [v19 croppingContext];
  v28 = *&a4->var0;
  *&v29 = a4->var3;
  [(PXStoryConcreteTimelineStyle *)self _durationInfoForClip:v18 startTime:&v28 croppingContext:v20];

  if (v17 >= 1)
  {
    v21 = v17;
    do
    {
      v22 = v36;
      *&a8->var2.var3 = v35;
      *&a8->var3.var0.var1 = v22;
      *&a8->var3.var1 = v37;
      v23 = v32;
      *&a8->var0.var0 = v31;
      *&a8->var0.var3 = v23;
      v24 = v34;
      *&a8->var1.var1 = v33;
      *&a8->var2.var0 = v24;
      ++a8;
      --v21;
    }

    while (v21);
  }

  v25 = &a9->var0 + 40 * v17;
  -[PXStoryConcreteTimelineStyle _transitionInfoForClip:isKeyAsset:](self, "_transitionInfoForClip:isKeyAsset:", v18, [v14 resourceIndex] == -1);
  v26 = v29;
  *(v25 - 40) = v28;
  *(v25 - 24) = v26;
  *(v25 - 1) = v30;

  return v16;
}

void __198__PXStoryConcreteTimelineStyle_sortedCropContentsRectsForMultipartPanoramaWithDisplayAsset_startTime_proposedCropContentsRects_axis_normalizedKenBurnsEffectParameters_durationInfos_transitionInfos___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 CGRectValue];
  PXRectGetMidForAxis();
}

- (BOOL)allowsMultipartPanoramaForDisplayAsset:(id)a3 startTime:(id *)a4
{
  v4 = a3;
  if ([v4 mediaType] == 1)
  {
    v5 = [v4 mediaSubtypes] & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (PXStoryMultipartPanoramaParameters)defaultVerticalMultipartPanoramaParameters
{
  [(PXStoryConcreteTimelineStyle *)self _ensureDefaultMultipartPanoramaParameters];
  defaultVerticalMultipartPanoramaParameters = self->_defaultVerticalMultipartPanoramaParameters;

  return defaultVerticalMultipartPanoramaParameters;
}

- (PXStoryMultipartPanoramaParameters)defaultHorizontalMultipartPanoramaParameters
{
  [(PXStoryConcreteTimelineStyle *)self _ensureDefaultMultipartPanoramaParameters];
  defaultHorizontalMultipartPanoramaParameters = self->_defaultHorizontalMultipartPanoramaParameters;

  return defaultHorizontalMultipartPanoramaParameters;
}

- (void)_ensureDefaultMultipartPanoramaParameters
{
  if (!self->_didInitializeDefaultMultipartPanoramaParameters)
  {
    v3 = +[PXStoryMultipartPanoramaSettings sharedInstance];
    v4 = [v3 isFeatureEnabled];

    if (v4)
    {
      CMTimeMakeWithSeconds((&v68 + 8), 2.0, 600);
      *&v68 = 0;
      v67 = PXStoryTimeZero;
      memset(v71, 0, 40);
      v70 = PXStoryTimeMaximum;
      memset(v66, 0, 40);
      PXStoryTransitionInfoMakeDefault(5u, v66, 0.5);
      BYTE13(v66[1]) = 1;
      v56 = 0;
      v57 = &v56;
      v58 = 0x8010000000;
      v59 = &unk_1A561E057;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v46 = 0;
      v47 = &v46;
      v48 = 0x8010000000;
      v49 = &unk_1A561E057;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v42 = v71[0];
      v43 = v71[1];
      v38 = v67;
      v39 = v68;
      v40 = v69;
      v41 = v70;
      v44 = *&v71[2];
      v45 = 0;
      [(PXStoryConcreteTimelineStyle *)self effectiveMovementDurationForDurationInfo:&v38];
      [(PXStoryConcreteTimelineStyle *)self _kenBurnsMotionParametersForDuration:?];
      spec = self->_spec;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __73__PXStoryConcreteTimelineStyle__ensureDefaultMultipartPanoramaParameters__block_invoke;
      v29[3] = &unk_1E7747B38;
      v29[4] = self;
      v29[5] = &v56;
      v30 = vdupq_n_s64(1uLL);
      v32 = v6;
      v33 = v7;
      v34 = v8;
      v35 = v9;
      v31 = 0;
      v29[6] = &v46;
      v36 = xmmword_1A5381290;
      v37 = 0;
      [PXStoryClipKenBurnsEffectFactory genericFactoryForSpec:spec assetContentSize:v29 handler:*(off_1E77221F8 + 2), *(off_1E77221F8 + 3)];
      v10 = [PXStoryMultipartPanoramaParameters alloc];
      v11 = *(v57 + 5);
      v25 = *(v57 + 4);
      v26 = v11;
      v12 = *(v57 + 7);
      v27 = *(v57 + 6);
      v28 = v12;
      v13 = *(v57 + 3);
      v23 = *(v57 + 2);
      v24 = v13;
      v42 = v71[0];
      v43 = v71[1];
      v38 = v67;
      v39 = v68;
      v40 = v69;
      v41 = v70;
      v44 = *&v71[2];
      v45 = 0;
      *v22 = v66[0];
      *&v22[16] = v66[1];
      *&v22[32] = *&v66[2];
      v14 = [(PXStoryMultipartPanoramaParameters *)v10 initWithNormalizedKenBurnsEffectParameters:&v23 partDurationInfo:&v38 transitionInfo:v22];
      defaultHorizontalMultipartPanoramaParameters = self->_defaultHorizontalMultipartPanoramaParameters;
      self->_defaultHorizontalMultipartPanoramaParameters = v14;

      v16 = [PXStoryMultipartPanoramaParameters alloc];
      v17 = *(v47 + 5);
      v25 = *(v47 + 4);
      v26 = v17;
      v18 = *(v47 + 7);
      v27 = *(v47 + 6);
      v28 = v18;
      v19 = *(v47 + 3);
      v23 = *(v47 + 2);
      v24 = v19;
      v42 = v71[0];
      v43 = v71[1];
      v38 = v67;
      v39 = v68;
      v40 = v69;
      v41 = v70;
      v44 = *&v71[2];
      v45 = 0;
      *v22 = v66[0];
      *&v22[13] = *(v66 + 13);
      v22[29] = 4;
      *&v22[30] = *(&v66[1] + 14);
      *&v22[38] = WORD3(v66[2]);
      v20 = [(PXStoryMultipartPanoramaParameters *)v16 initWithNormalizedKenBurnsEffectParameters:&v23 partDurationInfo:&v38 transitionInfo:v22];
      defaultVerticalMultipartPanoramaParameters = self->_defaultVerticalMultipartPanoramaParameters;
      self->_defaultVerticalMultipartPanoramaParameters = v20;

      _Block_object_dispose(&v46, 8);
      _Block_object_dispose(&v56, 8);
    }

    self->_didInitializeDefaultMultipartPanoramaParameters = 1;
  }
}

void __73__PXStoryConcreteTimelineStyle__ensureDefaultMultipartPanoramaParameters__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 displayAssets];
  v5 = [v4 firstObject];

  [*(a1 + 32) _getOneUpKenBurnsParameters:*(*(a1 + 40) + 8) + 32 forDisplayAsset:v5 motionInfo:a1 + 56 motionParameters:a1 + 80 factory:v3];
  [*(a1 + 32) _getOneUpKenBurnsParameters:*(*(a1 + 48) + 8) + 32 forDisplayAsset:v5 motionInfo:a1 + 112 motionParameters:a1 + 80 factory:v3];
}

- ($654D12A5B96C89A393ABE69D6FE3CC0A)audioInfoForDisplayAsset:(SEL)a3
{
  v9 = a4;
  if ([v9 playbackStyle] == 3 && self->_styleOptions.preferStillKeySegment && objc_msgSend(v9, "resourceIndex") == -1)
  {
    retstr->var6 = 0.0;
    *&retstr->var2 = 0u;
    *&retstr->var4 = 0u;
    *&retstr->var0 = 0u;
  }

  else
  {
    v6 = [(PXStoryConcreteTimelineStyle *)self _clipForDisplayAsset:v9];
    v7 = v6;
    if (v6)
    {
      [v6 audioInfo];
    }

    else
    {
      retstr->var6 = 0.0;
      *&retstr->var2 = 0u;
      *&retstr->var4 = 0u;
      *&retstr->var0 = 0u;
    }
  }

  return result;
}

- ($D23540E3B197441F7781E3353E3BC035)_transitionInfoForClip:(SEL)a3 isKeyAsset:(id)a4
{
  v5 = a5;
  v8 = a4;
  songPace = self->_songPace;
  v10 = self->_autoEditConfiguration;
  v11 = [(PXStoryConcreteTimelineStyle *)self storyConfiguration];
  v12 = [v11 allowedTransitionKinds];

  if ([v12 count] != 1 || !objc_msgSend(v12, "firstIndex"))
  {
    if (!self->_allowsDefaultTransitions)
    {
      v26 = PFArrayRandomObjectWithRandomNumberGenerator();
      v27 = [v26 integerValue];

      if (((v27 - 1) & 0xF8) != 0)
      {
        v28 = 0;
      }

      else
      {
        v28 = (v27 - 1) + 1;
      }

      [(PFStoryAutoEditConfiguration *)v10 durationForTransitionKind:v28 songPace:songPace];
      v30 = v29;
      v24 = +[PXStorySettings sharedInstance];
      if ([v24 overrideDurations])
      {
        [v24 showcaseTransitionDuration];
        v30 = v31;
      }

      *&retstr->var3 = 0;
      *&retstr->var0 = 0u;
      *&retstr->var2.var1 = 0u;
      PXStoryTransitionInfoMakeDefault(v27, retstr, v30);
      goto LABEL_43;
    }

    if (!v8)
    {
      *&retstr->var3 = 0;
      *&retstr->var0 = PXStoryTransitionInfoNone;
      *&retstr->var2.var1 = unk_1A5383378;
      goto LABEL_44;
    }

    [v8 transitionInfo];
    if (v5)
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    [(PFStoryAutoEditConfiguration *)v10 durationForTransitionKind:v16 songPace:songPace];
    if ((v16 - 1) >= 8)
    {
      LOBYTE(v16) = 0;
    }

    *&retstr->var0 = 0u;
    *&retstr->var2.var1 = 0u;
    *&retstr->var3 = 0;
    PXStoryTransitionInfoMakeDefault(v16, retstr, v17);
    if (v16 <= 0xAu)
    {
      v24 = 0;
      v25 = qword_1A53825E0[v16];
      if (v25 <= 3)
      {
        if (v25 == 2)
        {
          PXStoryErrorCreateWithCodeDebugFormat(8, @"invalid transition pan settings (direction: %li)", v18, v19, v20, v21, v22, v23, 0);
          goto LABEL_33;
        }

        if (v25 == 3)
        {
          goto LABEL_29;
        }

LABEL_34:
        if (self->_isRTL)
        {
          var0 = retstr->var0;
          v33 = BYTE5(retstr->var2.var3);
          v34 = retstr->var1 ^ 1;
          if (var0 == 5)
          {
            if (v33 == 1)
            {
              LOBYTE(v33) = 2;
            }

            else if (v33 == 2)
            {
              LOBYTE(v33) = 1;
            }
          }

          retstr->var0 = var0;
          retstr->var1 = v34;
          BYTE5(retstr->var2.var3) = v33;
        }

        if (v24)
        {
          [(PXStoryErrorReporter *)self->_errorReporter setError:v24 forComponent:@"AutoEditTransitionInfo"];
        }

LABEL_43:

        goto LABEL_44;
      }

      if (v25 == 4)
      {
        PXStoryErrorCreateWithCodeDebugFormat(8, @"invalid transition rotate settings (direction: %li)", v18, v19, v20, v21, v22, v23, 0);
        goto LABEL_33;
      }

      if (v25 != 5)
      {
        if (v25 != 6)
        {
          goto LABEL_34;
        }

LABEL_29:
        PXStoryErrorCreateWithCodeDebugFormat(8, @"invalid transition scale settings (direction: %li)", v18, v19, v20, v21, v22, v23, 0);
        v24 = LABEL_33:;
        goto LABEL_34;
      }
    }

    v24 = 0;
    goto LABEL_34;
  }

  v13 = [v12 firstIndex];
  if (((v13 - 1) & 0xF8) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = (v13 - 1) + 1;
  }

  [(PFStoryAutoEditConfiguration *)v10 durationForTransitionKind:v14 songPace:songPace];
  PXStoryTransitionInfoMakeDefault(v14, retstr, v15);
LABEL_44:

  return result;
}

- ($D23540E3B197441F7781E3353E3BC035)transitionInfoForSegmentWithClipComposition:(SEL)a3 displayAssets:(id)a4
{
  v6 = a5;
  v7 = [(PXStoryConcreteTimelineStyle *)self _clipForDisplayAssets:v6];
  v10 = v6;
  v8 = [v10 count] == 1 && *objc_msgSend(v10, "resourceIndexes") == -1;

  [(PXStoryConcreteTimelineStyle *)self _transitionInfoForClip:v7 isKeyAsset:v8];

  return result;
}

- (void)_getOneUpKenBurnsParameters:(id *)a3 forDisplayAsset:(id)a4 motionInfo:(id *)a5 motionParameters:(id *)a6 factory:(id)a7
{
  v24 = a4;
  v13 = a7;
  v14 = v13;
  var0 = a5->var0;
  if (a5->var0 <= 1)
  {
    if (!var0)
    {
      goto LABEL_15;
    }

    if (var0 == 1)
    {
      v16 = a5->var1.var0.var0;
      if (v16 <= 2)
      {
        if (v16 == 2)
        {
          v18 = 2;
        }

        else
        {
          v18 = 0;
          if (!v16)
          {
            v23 = [MEMORY[0x1E696AAA8] currentHandler];
            [v23 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteStyle.m" lineNumber:1081 description:@"Pan direction is undefined"];

            abort();
          }
        }
      }

      else
      {
        if (v16 == 4)
        {
          v17 = 3;
        }

        else
        {
          v17 = 0;
        }

        if (v16 == 3)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }
      }

      if (self->_isRTL)
      {
        PXRectEdgeFlippedHorizontally();
      }

      v21 = [(PXStoryConcreteTimelineStyle *)self storyConfiguration];
      v22 = [v21 usePreferredCropRectWhenVerticallyPanningLargeFaceAreasInPortraitAssets];

      if (!v22 || (v18 & 0xFFFFFFFD) != 1 || !+[PXStoryRecipeClipUtilities assetIsPortraitAspectWithLargeVerticalFaceArea:](PXStoryRecipeClipUtilities, "assetIsPortraitAspectWithLargeVerticalFaceArea:", v24) || ([v24 preferredCropRect], CGRectIsEmpty(v26)))
      {
        PXRectEdgeOpposite();
      }

      [v14 getParameters:a3 forVerticallyPanningPreferredRectMovingTowardsVerticalEdge:v18];
    }
  }

  else
  {
    switch(var0)
    {
      case 2:
        var1 = a6->var1;
        if (a5->var1.var0.var0 != 1)
        {
          var1 = 1.0 / var1;
        }

        [v13 getParameters:a3 forZoomWithScale:var1];
        break;
      case 3:
        var2 = a6->var2;
        if (a5->var1.var0.var0 != 1)
        {
          var2 = -var2;
        }

        [v13 getParameters:a3 forRotationWithAngle:var2 scale:a6->var3];
        break;
      case 4:
LABEL_15:
        [v13 getParametersForNoEffect:a3];
        break;
      default:
        break;
    }
  }
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)_kenBurnsMotionParametersForDuration:(double)a3
{
  v5 = [(PXStoryConcreteTimelineStyle *)self storyConfiguration];
  [v5 kenBurnsPanSpeed];
  v7 = v6 * a3;

  v8 = [(PXStoryConcreteTimelineStyle *)self storyConfiguration];
  [v8 kenBurnsScaleSpeed];
  v10 = 1.0;
  v11 = v9 * self->_scaleSpeedFactor * a3 + 1.0;

  v12 = +[PXStoryConcreteTimelineSettings sharedInstance];
  [v12 kenBurnsRotationSpeed];
  v14 = v13 * self->_rotationSpeedFactor * a3;
  [v12 kenBurnsScaleSpeedDuringRotation];
  v16 = v15 * self->_scaleSpeedFactor * a3 + 1.0;
  v17 = [(PXStoryConcreteTimelineStyle *)self allowsKenBurnsAnimations];
  if (v17)
  {
    v18 = v11;
  }

  else
  {
    v18 = 1.0;
  }

  if (v17)
  {
    v19 = v14;
  }

  else
  {
    v7 = 0.0;
    v19 = 0.0;
  }

  if (v17)
  {
    v10 = v16;
  }

  v20 = v7;
  v21 = v18;
  v22 = v19;
  v23 = v10;
  result.var3 = v23;
  result.var2 = v22;
  result.var1 = v21;
  result.var0 = v20;
  return result;
}

- (void)enumerateAllowedKenBurnsEffectParametersForSegmentWithClipComposition:(id)a3 displayAssets:(id)a4 assetContentInfos:(id *)a5 finalPlaybackStyles:(const int64_t *)a6 startTime:(id *)a7 durationInfo:(id *)a8 separatorEffectParameters:(id *)a9 separatorEffectContext:(int64_t)a10 buffer:(id *)a11 usingBlock:(id)a12
{
  v33 = a3;
  v18 = a4;
  v19 = a12;
  if ([v18 count] == 1 && (*a6 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v19[2](v19, 0);
    v20 = v33;
  }

  else
  {
    v32 = a5;
    v21 = [v18 resourcesDataSource];
    v22 = [v21 croppingContext];

    v23 = v18;
    v31 = a6;
    if ([v23 count] == 1)
    {
      v24 = *[v23 resourceIndexes];

      v25 = 64;
      if (v24 == -1)
      {
        v25 = 56;
      }
    }

    else
    {

      v25 = 64;
    }

    v26 = *(&self->super.isa + v25);
    spec = self->_spec;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __244__PXStoryConcreteTimelineStyle_enumerateAllowedKenBurnsEffectParametersForSegmentWithClipComposition_displayAssets_assetContentInfos_finalPlaybackStyles_startTime_durationInfo_separatorEffectParameters_separatorEffectContext_buffer_usingBlock___block_invoke;
    v34[3] = &unk_1E7747B10;
    v34[4] = self;
    v28 = *&a8->var3.var0.var1;
    v42 = *&a8->var2.var3;
    v43 = v28;
    v44 = *&a8->var3.var1;
    v29 = *&a8->var0.var3;
    v38 = *&a8->var0.var0;
    v39 = v29;
    v30 = *&a8->var1.var1;
    v41 = *&a8->var2.var0;
    v40 = v30;
    v20 = v33;
    v35 = v33;
    v45 = a11;
    v37 = v19;
    v36 = v23;
    v46 = a2;
    [PXStoryClipKenBurnsEffectFactory factoryForSpec:spec clipComposition:v35 displayAssets:v36 croppingContext:v22 croppingOptions:v26 assetContentInfos:v32 playbackStyles:v31 separatorEffectParameters:a9 handler:v34];
  }
}

void __244__PXStoryConcreteTimelineStyle_enumerateAllowedKenBurnsEffectParametersForSegmentWithClipComposition_displayAssets_assetContentInfos_finalPlaybackStyles_startTime_durationInfo_separatorEffectParameters_separatorEffectContext_buffer_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 144);
  v61 = *(a1 + 128);
  v62 = v5;
  v63 = *(a1 + 160);
  v6 = *(a1 + 80);
  v57 = *(a1 + 64);
  v58 = v6;
  v7 = *(a1 + 112);
  v59 = *(a1 + 96);
  v60 = v7;
  [v4 effectiveMovementDurationForDurationInfo:&v57];
  [*(a1 + 32) _kenBurnsMotionParametersForDuration:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  *&v57 = v8;
  *(&v57 + 1) = v14;
  *&v58 = v10;
  *(&v58 + 1) = v12;
  v15 = [*(*(a1 + 32) + 200) nextUnsignedIntegerLessThan:2];
  v16 = *(a1 + 40);
  v17 = [v16 numberOfClips];
  v18 = [v16 numberOfAssets];

  if (v17 > v18)
  {
    v19 = -1;
    if (v15)
    {
      v19 = 1;
    }

    [v3 getParameters:*(a1 + 176) forSplitAssetOppositePansWithDistance:v9 * v19];
    goto LABEL_5;
  }

  v21 = *(a1 + 32);
  if (v21[90] != 1)
  {
    v22 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(*(a1 + 48), "count")}];
    v27 = [*(a1 + 48) objectsAtIndexes:v22];
    v28 = *(*(a1 + 32) + 272);
    v29 = [*(a1 + 40) numberOfClips];
    if (v28)
    {
      [v28 nextMotionInfoForDisplayAssetCount:v29 displayAssets:v27];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      v65 = 0;
    }

    v55 = *buf;
    v56 = v65;
    v34 = PLStoryGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = v55;
      v65 = v56;
      v35 = PXStoryAutoEditClipMotionInfoDescription(buf);
      *buf = 138412290;
      *&buf[4] = v35;
      _os_log_impl(&dword_1A3C1C000, v34, OS_LOG_TYPE_DEBUG, "Does not allow default ken burns. Falling back to %@", buf, 0xCu);
    }

LABEL_28:
    v36 = [*(a1 + 40) numberOfClips];
    switch(v36)
    {
      case 3:
        if (v55 != 3)
        {
          if (v55 == 1)
          {
            v52 = [*(a1 + 40) dividerAxes];
            if (*v52 != v52[1])
            {
              goto LABEL_78;
            }

            v53 = 1;
            if (*(*(a1 + 32) + 16))
            {
              v53 = 2;
            }

            v54 = *(&v55 + 1) == v53 || *(&v55 + 1) == 4;
            v42 = 1.0;
            if (v54)
            {
              v42 = -1.0;
            }

            if (v56 != 1)
            {
              if (v56 != 2)
              {
                if (v56)
                {
                  goto LABEL_5;
                }

                v43 = [MEMORY[0x1E696AAA8] currentHandler];
                v44 = v43;
                v45 = *(a1 + 184);
                v46 = *(a1 + 32);
                v47 = 993;
                goto LABEL_73;
              }

LABEL_82:
              [v3 getParameters:*(a1 + 176) forOppositePansWithDistance:v42 * v9];
              goto LABEL_5;
            }

LABEL_83:
            [v3 getParameters:*(a1 + 176) forParallelPansWithDistance:v42 * v9];
            goto LABEL_5;
          }

          if (!v55)
          {
            goto LABEL_78;
          }

          v48 = PLStoryGetLog();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            v49 = PFStoryRecipeClipMotionStyleDescription();
            *buf = 138412290;
            *&buf[4] = v49;
            v50 = "Unsupported 3-up motion style: %@";
LABEL_76:
            _os_log_impl(&dword_1A3C1C000, v48, OS_LOG_TYPE_DEBUG, v50, buf, 0xCu);
          }

LABEL_77:

          goto LABEL_78;
        }

        break;
      case 2:
        if (v55 <= 1)
        {
          if (!v55)
          {
            goto LABEL_78;
          }

          if (v55 == 1)
          {
            v40 = 1;
            if (*(*(a1 + 32) + 16))
            {
              v40 = 2;
            }

            v41 = *(&v55 + 1) == v40 || *(&v55 + 1) == 4;
            v42 = 1.0;
            if (v41)
            {
              v42 = -1.0;
            }

            if (v56 != 1)
            {
              if (v56 != 2)
              {
                if (v56)
                {
                  goto LABEL_5;
                }

                v43 = [MEMORY[0x1E696AAA8] currentHandler];
                v44 = v43;
                v45 = *(a1 + 184);
                v46 = *(a1 + 32);
                v47 = 947;
LABEL_73:
                [v43 handleFailureInMethod:v45 object:v46 file:@"PXStoryConcreteStyle.m" lineNumber:v47 description:@"Relative pan direction is undefined"];

                abort();
              }

              goto LABEL_82;
            }

            goto LABEL_83;
          }

LABEL_74:
          v48 = PLStoryGetLog();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            v49 = PFStoryRecipeClipMotionStyleDescription();
            *buf = 138412290;
            *&buf[4] = v49;
            v50 = "Unsupported 2-up motion style: %@";
            goto LABEL_76;
          }

          goto LABEL_77;
        }

        if (v55 == 2)
        {
          PXRectGetCenter();
        }

        if (v55 != 3)
        {
          goto LABEL_74;
        }

        break;
      case 1:
        v37 = *(a1 + 32);
        v38 = *(a1 + 176);
        v39 = [*(a1 + 48) firstObject];
        [v37 _getOneUpKenBurnsParameters:v38 forDisplayAsset:v39 motionInfo:&v55 motionParameters:&v57 factory:v3];

LABEL_5:
        v20 = *(*(a1 + 56) + 16);
LABEL_79:
        v20();
        goto LABEL_80;
      default:
LABEL_78:
        v20 = *(*(a1 + 56) + 16);
        goto LABEL_79;
    }

    v51 = -v11;
    if (*(&v55 + 1) != 1)
    {
      v51 = v11;
    }

    [v3 getParameters:*(a1 + 176) forRotationWithAngle:v51 scale:v13];
    goto LABEL_5;
  }

  v22 = [v21 storyConfiguration];
  v23 = *(a1 + 48);
  if ([v23 count] == 1)
  {
    v24 = *[v23 resourceIndexes];

    if (v24 == -1 && ([v22 disabledClipMotionStyles] & 2) == 0)
    {
      v25 = [v22 forcedKenBurnsScaleDirection];
      if (!v25)
      {
        v25 = [v22 keyAssetKenBurnsScaleDirection];
      }

      v26 = 1;
      if (v15)
      {
        v26 = 2;
      }

      if (v25)
      {
        v26 = v25;
      }

      *(&v55 + 1) = v26;
      v56 = 0;
      *&v55 = 2;
      goto LABEL_58;
    }
  }

  else
  {
  }

  v30 = [*(a1 + 32) _clipForDisplayAssets:*(a1 + 48)];
  v31 = [v30 displayAssets];
  v32 = [v31 count];
  v33 = [*(a1 + 40) numberOfClips];

  if (v32 == v33)
  {
    if (v30)
    {
      [v30 motionInfo];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      v65 = 0;
    }

    v55 = *buf;
    v56 = v65;

LABEL_58:
    if ([*(a1 + 48) count] == 1 && objc_msgSend(v22, "forcePanUpOrDownInOneUpKenBurnsWithPortraitAspectAsset"))
    {
      [*(a1 + 48) firstObject];
      [objc_claimAutoreleasedReturnValue() aspectRatio];
      PXAspectRatioIsPortrait();
    }

    goto LABEL_28;
  }

  (*(*(a1 + 56) + 16))();

LABEL_80:
}

- (void)enumerateAllowedSeparatorEffectParametersForSegmentWithClipComposition:(id)a3 displayAssets:(id)a4 finalPlaybackStyles:(const int64_t *)a5 startTime:(id *)a6 durationInfo:(id *)a7 buffer:(id *)a8 usingBlock:(id)a9
{
  v11 = a3;
  v12 = a4;
  v13 = a9;
  v14 = v11;
  v15 = [v14 numberOfClips];
  v16 = [v14 numberOfAssets];

  if (v15 <= v16 && self->_allowsRandomSeparatorEffectsFallback)
  {
    [v14 mainDividerAxis];
    PXAxisTransposed();
  }

  (*(v13 + 2))(v13, 0, 0);
}

- (int64_t)finalOneUpPlaybackStyleForDisplayAsset:(id)a3 originalPlaybackStyle:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 3 && self->_styleOptions.preferStillKeySegment && [v6 resourceIndex] == -1)
  {
    v11 = 1;
  }

  else
  {
    v8 = [(PXStoryConcreteTimelineStyle *)self _clipForDisplayAsset:v7];
    if ([v8 playbackStyle] == 4 && (objc_msgSend(v7, "resourcesDataSource"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "movieHighlightsForDisplayAssetAtIndex:", objc_msgSend(v7, "resourceIndex")), v10 = objc_claimAutoreleasedReturnValue(), v9, v10, !v10))
    {
      v11 = 1;
    }

    else
    {
      v11 = [v8 playbackStyle];
    }
  }

  return v11;
}

- (BOOL)isOriginalPlaybackStyleAllowedInNUp:(int64_t)a3
{
  if (a3 >= 6)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryConcreteTimelineStyle isOriginalPlaybackStyleAllowedInNUp:]"];
    [v8 handleFailureInFunction:v9 file:@"PXStoryConcreteStyle.m" lineNumber:723 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return (0xAu >> a3) & 1;
}

- (double)composabilityScoreForSegmentWithDisplayAssets:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryConcreteTimelineStyle *)self _clipForDisplayAssets:v4];
  v6 = [v5 displayAssets];
  v7 = [v6 count];
  v8 = -1.0;
  if (v7 == [v4 count])
  {
    if ([v6 count])
    {
      v9 = 0;
      while (1)
      {
        v10 = [v6 objectAtIndexedSubscript:v9];
        v11 = [v4 objectAtIndexedSubscript:v9];

        if (v10 != v11)
        {
          break;
        }

        if (++v9 >= [v6 count])
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v8 = 1.0;
    }
  }

  return v8;
}

- (id)clipCompositionForKeyAsset:(id)a3 contentInfo:(id *)a4 finalPlaybackStyle:(int64_t)a5
{
  v8 = a3;
  v9 = [v8 resourcesDataSource];
  v10 = [v9 croppingContext];

  allowedKeyAssetClipCompositions = self->_allowedKeyAssetClipCompositions;
  v12 = [v8 displayAsset];

  v13 = [PXStoryConcreteStyle bestClipCompositionFromClipCompositions:allowedKeyAssetClipCompositions forKeyAsset:v12 contentInfo:a4 playbackStyle:a5 spec:self->_spec croppingContext:v10 options:self->_keyAssetCroppingOptions loggingOptions:0];

  return v13;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)defaultDisplayAssetPresentationDuration
{
  result = self->_autoEditDecisionList;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result defaultDisplayAssetPresentationDuration];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)durationForVerticallyPanningPortraitAsset:(SEL)a3 atSpeed:(id)a4 motionInfo:(double)a5 minimumDuration:(id *)a6 croppingContext:(id *)a7
{
  v12[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a8;
  v12[0] = v9;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  objc_claimAutoreleasedReturnValue();
  PXDisplayAssetFetchResultFromArray();
}

BOOL __125__PXStoryConcreteTimelineStyle_durationForVerticallyPanningPortraitAsset_atSpeed_motionInfo_minimumDuration_croppingContext___block_invoke(uint64_t a1, void *a2)
{
  memset(v28, 0, sizeof(v28));
  v3 = *(a1 + 32);
  time = *(a1 + 88);
  v4 = a2;
  [v3 _kenBurnsMotionParametersForDuration:CMTimeGetSeconds(&time)];
  v27[0] = v5;
  v27[1] = v6;
  v27[2] = v7;
  v27[3] = v8;
  [*(a1 + 32) _getOneUpKenBurnsParameters:v28 forDisplayAsset:*(a1 + 40) motionInfo:a1 + 56 motionParameters:v27 factory:v4];
  [v4 assetRectForClipIndex:0];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v4 clipFrameForClipIndex:0];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v29.origin.x = v10;
  v29.origin.y = v12;
  v29.size.width = v14;
  v29.size.height = v16;
  result = CGRectIsNull(v29);
  if (!result)
  {
    v30.origin.x = v18;
    v30.origin.y = v20;
    v30.size.width = v22;
    v30.size.height = v24;
    result = CGRectIsNull(v30);
    if (!result)
    {
      PXStoryRectFromCGRect();
    }
  }

  return result;
}

- ($7566BBA16C4E03ED15B4F2B623931C37)_durationInfoForClip:(SEL)a3 startTime:(id)a4 croppingContext:(id *)a5
{
  v10 = a4;
  v40 = a6;
  v60 = 0;
  v59 = 0u;
  v57 = 0u;
  memset(v58, 0, sizeof(v58));
  if (v10)
  {
    [v10 durationInfo];
    v55 = 0u;
    v56 = 0u;
    [v10 transitionInfo];
  }

  else
  {
    v55 = 0uLL;
    v56 = 0uLL;
  }

  *&retstr->var0.var0 = v57;
  v11 = v58[3];
  retstr->var0.var3 = v58[0];
  *&retstr->var1.var0 = *&v58[1];
  retstr->var1.var3 = v11;
  *&retstr->var2.var0 = v59;
  v12 = v60;
  *&retstr->var3.var0.var0 = 0u;
  retstr->var2.var3 = v12;
  *&retstr->var3.var0.var3 = 0u;
  *&retstr->var4 = 0;
  memset(&v54, 0, sizeof(v54));
  v13 = *(&v55 + 1);
  v14 = +[PXStoryTransitionsSettings sharedInstance];
  [v14 cueAlignmentForTransitionKind:0];
  CMTimeMakeWithSeconds(&v54, v13 * v15, 600);

  *&lhs.start.value = *&retstr->var1.var0;
  lhs.start.epoch = retstr->var1.var3;
  rhs.start = v54;
  CMTimeAdd(duration, &lhs.start, &rhs.start);
  *&rhs.start.value = *&retstr->var2.var0;
  rhs.start.epoch = retstr->var2.var3;
  *&lhs.start.value = *duration;
  lhs.start.epoch = *&duration[16];
  CMTimeMinimum(&retstr->var1, &lhs.start, &rhs.start);
  *&lhs.start.value = *&retstr->var0.var0;
  lhs.start.epoch = retstr->var0.var3;
  rhs.start = v54;
  CMTimeAdd(&time2, &lhs.start, &rhs.start);
  *&rhs.start.value = *&retstr->var2.var0;
  rhs.start.epoch = retstr->var2.var3;
  lhs.start = time2;
  CMTimeMinimum(duration, &lhs.start, &rhs.start);
  *&retstr->var0.var0 = *duration;
  retstr->var0.var3 = *&duration[16];
  v16 = +[PXStorySettings sharedInstance];
  v17 = self->_cueSource;
  if ([v16 overrideDurations])
  {
    [v16 showcaseSegmentDuration];
    CMTimeMakeWithSeconds(&lhs.duration, v18, 600);
    *&lhs.start.value = PXStoryTimeZero;
    lhs.start.epoch = 0;
    memset(v53, 0, sizeof(v53));
    v52 = PXStoryTimeMaximum;
    v19 = *&lhs.start.epoch;
    *&retstr->var1.var1 = *&lhs.duration.timescale;
    *&retstr->var2.var0 = PXStoryTimeMaximum;
    v20 = *&v53[16];
    *&retstr->var2.var3 = *v53;
    *&retstr->var3.var0.var1 = v20;
    retstr->var3.var1 = *&v53[32];
    *&retstr->var0.var0 = PXStoryTimeZero;
    *&retstr->var0.var3 = v19;
    retstr->var4 = 0;
    goto LABEL_6;
  }

  spec = self->_spec;
  if (spec)
  {
    [(PXStoryTimelineSpec *)spec fixedSegmentDuration];
    if (lhs.start.flags)
    {
      v23 = self->_spec;
      if (v23)
      {
        [(PXStoryTimelineSpec *)v23 fixedSegmentDuration];
      }

      else
      {
        memset(duration, 0, 24);
      }

      *&lhs.start.value = *duration;
      lhs.start.epoch = *&duration[16];
      *&rhs.start.value = PXStoryTimeZero;
      rhs.start.epoch = 0;
      if (CMTimeCompare(&lhs.start, &rhs.start) >= 1)
      {
        memset(&rhs, 0, 24);
        v24 = self->_spec;
        if (v24)
        {
          [(PXStoryTimelineSpec *)v24 fixedSegmentDuration];
        }

        v25 = [v10 displayAssets];
        v26 = [v25 count];

        if (v26 != 1)
        {
          goto LABEL_34;
        }

        v27 = [v10 displayAssets];
        v28 = [v27 firstObject];

        v29 = [(PXStoryConcreteTimelineStyle *)self storyConfiguration];
        if ([v29 usePreferredCropRectWhenVerticallyPanningLargeFaceAreasInPortraitAssets])
        {
          v30 = [PXStoryRecipeClipUtilities assetIsPortraitAspectWithLargeVerticalFaceArea:v28];

          if (!v30)
          {
            goto LABEL_33;
          }

          memset(&lhs, 0, 24);
          fallbackMotionStyleProvider = self->_fallbackMotionStyleProvider;
          if (v10)
          {
            [v10 motionInfo];
          }

          else
          {
            memset(duration, 0, 24);
          }

          if (!fallbackMotionStyleProvider)
          {
            goto LABEL_33;
          }

          [(PXStoryRecipeClipMotionStyleProvider *)fallbackMotionStyleProvider updatedMotionForPortraitAspectAsset:v28 motionInfo:duration];
          if (lhs.start.value != 1 || (*&lhs.start.timescale - 3) > 1)
          {
            goto LABEL_33;
          }

          v29 = [(PXStoryConcreteTimelineStyle *)self storyConfiguration];
          [v29 kenBurnsPanSpeed];
          time2 = lhs.start;
          start = rhs.start;
          [(PXStoryConcreteTimelineStyle *)self durationForVerticallyPanningPortraitAsset:v28 atSpeed:&time2 motionInfo:&start minimumDuration:v40 croppingContext:?];
          *&rhs.start.value = *duration;
          rhs.start.epoch = *&duration[16];
        }

LABEL_33:
LABEL_34:
        lhs.start.epoch = rhs.start.epoch;
        lhs.duration = rhs.start;
        v37 = *&rhs.start.value;
        *v53 = rhs.start.epoch;
        memset(&v53[8], 0, 32);
        v38 = *&v53[16];
        *&retstr->var2.var3 = *v53;
        *&retstr->var3.var0.var1 = v38;
        v39 = *&lhs.start.epoch;
        *&retstr->var1.var1 = *&lhs.duration.timescale;
        *&retstr->var2.var0 = v37;
        retstr->var3.var1 = *&v53[32];
        *&retstr->var0.var0 = v37;
        *&retstr->var0.var3 = v39;
        retstr->var4 = 0;
        goto LABEL_6;
      }
    }
  }

  if ([v16 useMusicCuesForTimeline] && v17 && (-[PXAudioCueSource isEmpty](v17, "isEmpty") & 1) == 0)
  {
    v32 = PXAudioAssetDefaultEntryPoint(self->_audioAsset);
    memset(&start, 0, sizeof(start));
    [v32 time];
    CMTimeMakeWithSeconds(&start, v33, 600);
    memset(&v49, 0, sizeof(v49));
    *&lhs.start.value = *&a5->var0;
    lhs.start.epoch = a5->var3;
    rhs.start = start;
    CMTimeAdd(&v49, &rhs.start, &lhs.start);
    var0 = retstr->var0;
    var2 = retstr->var2;
    memset(&v46, 0, sizeof(v46));
    *&lhs.start.value = *&retstr->var1.var0;
    lhs.start.epoch = retstr->var1.var3;
    rhs.start = v49;
    CMTimeAdd(&v46, &rhs.start, &lhs.start);
    memset(&lhs, 0, sizeof(lhs));
    *duration = v49;
    time2 = var0;
    CMTimeAdd(&rhs.start, duration, &time2);
    time2 = var2;
    v45 = var0;
    CMTimeSubtract(duration, &time2, &v45);
    CMTimeRangeMake(&lhs, &rhs.start, duration);
    memset(duration, 0, sizeof(duration));
    rhs = lhs;
    time2 = v46;
    [(PXAudioCueSource *)v17 bestCueInRange:&rhs preferredTime:&time2];
    *&rhs.start.value = *duration;
    v34 = *&duration[24];
    rhs.start.epoch = *&duration[16];
    memset(&time2, 0, sizeof(time2));
    if (CMTimeCompare(&rhs.start, &time2) || v34)
    {
      *&rhs.start.value = *duration;
      rhs.start.epoch = *&duration[16];
      time2 = v49;
      CMTimeSubtract(&v45, &rhs.start, &time2);
      memset(&v42, 0, sizeof(v42));
      rhs.start = v45;
      time2 = v54;
      CMTimeSubtract(&v42, &rhs.start, &time2);
      rhs.start = var0;
      time2 = v42;
      CMTimeMaximum(&v41, &rhs.start, &time2);
      epoch = v41.epoch;
      v42 = v41;
      *&retstr->var1.var0 = *&v41.value;
      retstr->var1.var3 = epoch;
      v36 = *&duration[16];
      *&retstr->var3.var0.var0 = *duration;
      *&retstr->var3.var0.var3 = v36;
      retstr->var4 = 0;
    }
  }

LABEL_6:

  return result;
}

- ($7566BBA16C4E03ED15B4F2B623931C37)durationInfoForSegmentWithDisplayAssets:(SEL)a3 startTime:(id)a4
{
  v7 = a4;
  v8 = [(PXStoryConcreteTimelineStyle *)self _clipForDisplayAssets:v7];
  v9 = [v7 resourcesDataSource];

  v10 = [v9 croppingContext];
  v12 = *a5;
  [(PXStoryConcreteTimelineStyle *)self _durationInfoForClip:v8 startTime:&v12 croppingContext:v10];

  return result;
}

- (double)effectiveMovementDurationForDurationInfo:(id *)a3
{
  var1 = a3->var1;
  Seconds = CMTimeGetSeconds(&var1);
  if (Seconds >= 0.0 && Seconds <= 0.0)
  {
    Seconds = 1.0;
  }

  return Seconds * self->_effectiveMovementDurationFactor;
}

- (id)_clipForDisplayAsset:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_clipByAssetUUID = self->_lock_clipByAssetUUID;
  v6 = v4;
  if (objc_opt_respondsToSelector())
  {
    [v6 alternateUUID];
  }

  else
  {
    [v6 uuid];
  }
  v7 = ;

  v8 = [(NSMutableDictionary *)lock_clipByAssetUUID objectForKeyedSubscript:v7];

  os_unfair_lock_unlock(&self->_lock);
  if (!v8)
  {
    v8 = [(PXStoryAutoEditDecisionList *)self->_autoEditDecisionList clipForDisplayAsset:v6];
    if (v8)
    {
LABEL_46:
      os_unfair_lock_lock(&self->_lock);
      v36 = self->_lock_clipByAssetUUID;
      v37 = v6;
      if (objc_opt_respondsToSelector())
      {
        [v37 alternateUUID];
      }

      else
      {
        [v37 uuid];
      }
      v38 = ;

      [(NSMutableDictionary *)v36 setObject:v8 forKeyedSubscript:v38];
      os_unfair_lock_unlock(&self->_lock);
      goto LABEL_50;
    }

    v9 = [v6 playbackStyle];
    if (!v9)
    {
      v41 = PLStoryGetLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
      {
        v42 = [v6 uuid];
        *buf = 138412290;
        *&buf[4] = v42;
        _os_log_impl(&dword_1A3C1C000, v41, OS_LOG_TYPE_FAULT, "Unsupported playback style for asset %@", buf, 0xCu);
      }

      v9 = 1;
    }

    v10 = [(PXStoryConcreteTimelineStyle *)self storyConfiguration];
    v11 = [v10 disableVideoPlayback];

    if (v11)
    {
      v9 = 1;
    }

    songPace = self->_songPace;
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    *buf = 0u;
    v53 = 0u;
    autoEditConfiguration = self->_autoEditConfiguration;
    if (autoEditConfiguration)
    {
      [(PFStoryAutoEditConfiguration *)autoEditConfiguration durationInfoForPlaybackStyle:v9 songPace:songPace];
    }

    if (self->_allowsRandomKenBurnsFallback)
    {
      v14 = [(PFRandomNumberGenerator *)self->_randomNumberGenerator nextUnsignedIntegerLessThan:3, songPace];
      v45 = v14 + 1;
      v15 = [(PFRandomNumberGenerator *)self->_randomNumberGenerator nextUnsignedIntegerLessThan:2];
      v16 = [(PFRandomNumberGenerator *)self->_randomNumberGenerator nextUnsignedIntegerLessThan:2];
      if (v14 == 2)
      {
        v43 = 0;
        v17 = v16 + 1;
      }

      else if (v14 == 1)
      {
        v43 = 0;
        v17 = v15 + 1;
      }

      else if (v14)
      {
        v43 = 0;
        v17 = 0;
      }

      else
      {
        v17 = 1;
        v43 = 2;
      }
    }

    else
    {
      fallbackMotionStyleProvider = self->_fallbackMotionStyleProvider;
      v51 = v6;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
      if (fallbackMotionStyleProvider)
      {
        [(PXStoryRecipeClipMotionStyleProvider *)fallbackMotionStyleProvider nextMotionInfoForDisplayAssetCount:1 displayAssets:v19];
        v17 = *(&v46 + 1);
        v43 = v47;
        v45 = v46;
      }

      else
      {
        v43 = 0;
        v45 = 0;
        v17 = 0;
      }
    }

    if (!self->_allowsRandomTransitionFallback)
    {
      fallbackTransitionProvider = self->_fallbackTransitionProvider;
      if (fallbackTransitionProvider)
      {
        [(PXStoryRecipeClipTransitionProvider *)fallbackTransitionProvider nextIntraMomentTransition];
        v29 = *(&v46 + 1);
        v22 = v46;
        v27 = *(&v47 + 1);
        v30 = v47;
      }

      else
      {
        v27 = 0;
        v30 = 0;
        v22 = 0;
        v29 = 0.0;
      }

      goto LABEL_37;
    }

    v20 = PFArrayRandomObjectWithRandomNumberGenerator();
    v21 = [v20 integerValue];

    if (((v21 - 1) & 0xF8) != 0)
    {
      v22 = 0;
    }

    else
    {
      v22 = (v21 - 1) + 1;
    }

    v23 = [(PFRandomNumberGenerator *)self->_randomNumberGenerator nextUnsignedIntegerLessThan:2, v43];
    v24 = [(PFRandomNumberGenerator *)self->_randomNumberGenerator nextUnsignedIntegerLessThan:2];
    if (v22 == 7)
    {
      v27 = 0;
      v25 = v24 + 1;
    }

    else
    {
      if (v22 != 6)
      {
        LOWORD(v25) = 0;
        v26 = 0;
        v27 = 0;
        if (v22 == 5)
        {
          v26 = 0;
          v27 = 2;
          LOWORD(v25) = 1;
        }

        goto LABEL_36;
      }

      v27 = 0;
      v25 = v23 + 1;
    }

    v26 = v25 & 0xFFFFFFFFFFFF0000;
LABEL_36:
    v30 = v26 | v25;
    v29 = 0.5;
LABEL_37:
    v31 = [(PXStoryConcreteTimelineStyle *)self storyConfiguration];
    v32 = [v31 allowedTransitionKinds];

    if ([v32 count] == 1 && objc_msgSend(v32, "firstIndex"))
    {
      v33 = [v32 firstIndex];
      if (((v33 - 1) & 0xF8) != 0)
      {
        v34 = 0;
      }

      else
      {
        v34 = (v33 - 1) + 1;
      }

      [(PFStoryAutoEditConfiguration *)self->_autoEditConfiguration durationForTransitionKind:v34 songPace:self->_songPace];
      v29 = v35;
      if (((v34 - 1) & 0xF8) != 0)
      {
        v22 = 0;
      }

      else
      {
        v22 = (v34 - 1) + 1;
      }
    }

    v8 = [[PXStoryConcreteAutoEditClip alloc] initWithDisplayAsset:v6];
    [(PXStoryConcreteAutoEditClip *)v8 setPlaybackStyle:v9];
    v48 = v54;
    v49 = v55;
    v50 = v56;
    v46 = *buf;
    v47 = v53;
    [(PXStoryConcreteAutoEditClip *)v8 setDurationInfo:&v46];
    *&v46 = v45;
    *(&v46 + 1) = v17;
    *&v47 = v44;
    [(PXStoryConcreteAutoEditClip *)v8 setMotionInfo:&v46];
    *&v46 = v22;
    *(&v46 + 1) = v29;
    *&v47 = v30;
    *(&v47 + 1) = v27;
    [(PXStoryConcreteAutoEditClip *)v8 setTransitionInfo:&v46];

    goto LABEL_46;
  }

LABEL_50:
  v39 = v8;

  return v39;
}

- (id)_clipForDisplayAssets:(id)a3
{
  v4 = [a3 firstObject];
  v5 = [(PXStoryConcreteTimelineStyle *)self _clipForDisplayAsset:v4];

  return v5;
}

- (PXStoryConcreteTimelineStyle)initWithSpec:(id)a3 audioAsset:(id)a4 cueSource:(id)a5 overallDurationInfo:(id *)a6 autoEditDecisionList:(id)a7 autoEditConfiguration:(id)a8 allowedKeyAssetClipCompositions:(id)a9 allowedClipCompositions:(id)a10 randomNumberGenerators:(id)a11 errorReporter:(id)a12 allowsIncompleteTimelines:(BOOL)a13 styleOptions:(id)a14 storyConfiguration:(id)a15
{
  v19 = a3;
  v47 = a4;
  v20 = a4;
  v56 = a5;
  v49 = a7;
  v55 = a7;
  v54 = a8;
  v53 = a9;
  v52 = a10;
  v21 = a11;
  v51 = a12;
  v57 = a15;
  v58.receiver = self;
  v58.super_class = PXStoryConcreteTimelineStyle;
  v22 = [(PXStoryConcreteTimelineStyle *)&v58 init];
  if (v22)
  {
    v23 = +[PXStorySettings sharedInstance];
    objc_storeStrong(v22 + 1, a3);
    v22[16] = [*(v22 + 1) layoutDirection] == 2;
    objc_storeStrong(v22 + 3, v47);
    if (v20)
    {
      v24 = [v20 pace];
    }

    else
    {
      v24 = 2;
    }

    *(v22 + 4) = v24;
    *(v22 + 40) = a14;
    objc_storeStrong(v22 + 27, a5);
    objc_storeWeak(v22 + 39, v57);
    *(v22 + 63) = 0;
    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v26 = *(v22 + 32);
    *(v22 + 32) = v25;

    WeakRetained = objc_loadWeakRetained(v22 + 39);
    v28 = [WeakRetained preferFaceCrops];

    if (v28)
    {
      *(v22 + 56) = vdupq_n_s64(2uLL);
    }

    else
    {
      v29 = *(v22 + 5);
      *(v22 + 7) = v29;
      *(v22 + 8) = v29 & 0xFFFFFFFFFFFFFFFELL;
    }

    v30 = [v23 transitionShowcaseMode];
    v22[72] = [v23 allowsDefaultBehaviorForShowcaseMode:v30];
    v22[73] = [v23 allowsRandomFallbackForShowcaseMode:v30];
    v31 = [v23 possibleTransitionKindsForFallback:{objc_msgSend(v23, "transitionFallback")}];
    v32 = *(v22 + 10);
    *(v22 + 10) = v31;

    v33 = [v23 separatorEffectsShowcaseMode];
    v22[88] = [v23 allowsDefaultBehaviorForShowcaseMode:v33];
    v22[89] = [v23 allowsRandomFallbackForShowcaseMode:v33];
    v34 = [v23 kenBurnsShowcaseMode];
    v22[90] = [v23 allowsDefaultBehaviorForShowcaseMode:v34];
    v22[91] = [v23 allowsRandomFallbackForShowcaseMode:v34];
    *(v22 + 6) = *&a6->var0;
    v35 = *&a6->var1.var2.var1;
    v37 = *&a6->var1.var0.var1;
    v36 = *&a6->var1.var1.var0;
    *(v22 + 9) = *&a6->var1.var1.var3;
    *(v22 + 10) = v35;
    *(v22 + 7) = v37;
    *(v22 + 8) = v36;
    objc_storeStrong(v22 + 22, v49);
    objc_storeStrong(v22 + 23, a9);
    objc_storeStrong(v22 + 24, a10);
    v38 = [v21 firstObject];
    v39 = *(v22 + 25);
    *(v22 + 25) = v38;

    objc_storeStrong(v22 + 26, a12);
    *(v22 + 28) = 0x3FF0000000000000;
    if ([v57 movementAnimationCurve] == 5)
    {
      [v23 movementAnimationLinearFraction];
      *(v22 + 28) = *(v22 + 28) / v40;
    }

    [*(v22 + 1) viewportSize];
    v42 = v41;
    [*(v22 + 1) viewportSize];
    if (v42 >= v43)
    {
      v44 = v42;
    }

    else
    {
      v44 = v43;
    }

    if (v44 < 1.0)
    {
      v44 = 1.0;
    }

    *(v22 + 29) = 2.0 / v44;
    PXDegreesToRadians();
  }

  return 0;
}

- (PXStoryConcreteTimelineStyle)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteStyle.m" lineNumber:412 description:{@"%s is not available as initializer", "-[PXStoryConcreteTimelineStyle init]"}];

  abort();
}

@end