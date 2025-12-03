@interface SBSceneRelevancyResolver
+ (BOOL)shouldDisableFlatteningForWindowWithRelevancyScore:(unint64_t)score;
+ (BOOL)shouldFreezeWindowWithRelevancyScore:(unint64_t)score;
+ (BOOL)shouldResignActiveWindowWithRelevancyScore:(unint64_t)score;
+ (char)sceneActivityModeForWindowWithRelevancyScore:(unint64_t)score;
+ (char)sceneJetsamModeForWindowWithRelevancyScore:(unint64_t)score;
+ (char)sceneResourceElevationForWindowWithRelevancyScore:(unint64_t)score;
+ (id)_effectForRelevancyScore:(unint64_t)score;
+ (id)scoresToEffectDictionary;
+ (unint64_t)windowRelevancyScoreForZOrder:(int64_t)order occlusionState:(int64_t)state maximumNumberOfVisibleScenesOnStage:(unint64_t)stage settings:(id)settings;
@end

@implementation SBSceneRelevancyResolver

+ (unint64_t)windowRelevancyScoreForZOrder:(int64_t)order occlusionState:(int64_t)state maximumNumberOfVisibleScenesOnStage:(unint64_t)stage settings:(id)settings
{
  settingsCopy = settings;
  v10 = settingsCopy;
  if (order > 0x7FFFFFFFFFFFFFFELL)
  {
    goto LABEL_2;
  }

  numberOfFadingScenesOnStage = [settingsCopy numberOfFadingScenesOnStage];
  v13 = stage - numberOfFadingScenesOnStage;
  numberOfTopMostWindowsToNeverFreeze = [v10 numberOfTopMostWindowsToNeverFreeze];
  if (numberOfTopMostWindowsToNeverFreeze >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = numberOfTopMostWindowsToNeverFreeze;
  }

  highPriorityNonFocalRangeFirstZOrder = [v10 highPriorityNonFocalRangeFirstZOrder];
  if ((highPriorityNonFocalRangeFirstZOrder & ~(highPriorityNonFocalRangeFirstZOrder >> 63)) >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = highPriorityNonFocalRangeFirstZOrder & ~(highPriorityNonFocalRangeFirstZOrder >> 63);
  }

  mediumPriorityNonFocalRangeFirstZOrder = [v10 mediumPriorityNonFocalRangeFirstZOrder];
  if (v17 <= mediumPriorityNonFocalRangeFirstZOrder)
  {
    v19 = mediumPriorityNonFocalRangeFirstZOrder;
  }

  else
  {
    v19 = v17;
  }

  if (v19 >= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = v19;
  }

  lowPriorityNonFocalRangeFirstZOrder = [v10 lowPriorityNonFocalRangeFirstZOrder];
  if (v20 <= lowPriorityNonFocalRangeFirstZOrder)
  {
    v22 = lowPriorityNonFocalRangeFirstZOrder;
  }

  else
  {
    v22 = v20;
  }

  if (v22 >= v15)
  {
    v22 = v15;
  }

  if (order < v17)
  {
    v11 = 1;
    goto LABEL_62;
  }

  if (order - v17 < v20 - v17)
  {
    if (state >= 2)
    {
      if (state == 2)
      {
        v23 = [v10 freezeFullyOccludedWindows] == 0;
        v24 = 3;
        goto LABEL_49;
      }

      goto LABEL_2;
    }

    goto LABEL_42;
  }

  v25 = order < v20 || order - v20 >= v22 - v20;
  if (!v25)
  {
    if (state >= 2)
    {
      if (state == 2)
      {
        v23 = [v10 freezeFullyOccludedWindows] == 0;
        v24 = 5;
LABEL_49:
        if (v23)
        {
          v11 = v24;
        }

        else
        {
          v11 = 7;
        }

        goto LABEL_62;
      }

LABEL_2:
      v11 = 0;
      goto LABEL_62;
    }

LABEL_42:
    v11 = 2;
    goto LABEL_62;
  }

  v26 = v15 - v22;
  v25 = order >= v22;
  v27 = order - v22;
  if (!v25 || v27 >= v26)
  {
    if (order < v15 || order - v15 >= v13 - v15)
    {
      if (order - v13 < numberOfFadingScenesOnStage && order >= v13)
      {
        v11 = 7;
      }

      else
      {
        v11 = 8;
      }
    }

    else if (state || ([v10 preventFreezingUnoccludedScenes] & 1) == 0)
    {
      v11 = 7;
    }

    else
    {
      v11 = 6;
    }
  }

  else
  {
    if (!state)
    {
      goto LABEL_42;
    }

    if (state != 2)
    {
      if (state == 1)
      {
        v11 = 5;
        goto LABEL_62;
      }

      goto LABEL_2;
    }

    if ([v10 freezeFullyOccludedWindows])
    {
      v11 = 7;
    }

    else
    {
      v11 = 6;
    }
  }

LABEL_62:

  return v11;
}

+ (id)scoresToEffectDictionary
{
  if (scoresToEffectDictionary_onceToken != -1)
  {
    +[SBSceneRelevancyResolver scoresToEffectDictionary];
  }

  v3 = scoresToEffectDictionary___scoresToEffectsDictionary;

  return v3;
}

void __52__SBSceneRelevancyResolver_scoresToEffectDictionary__block_invoke()
{
  v13[9] = *MEMORY[0x277D85DE8];
  v12[0] = &unk_2833716C0;
  v0 = *MEMORY[0x277CDA9E0];
  v1 = [SBSceneRelevancyEffect effectWithFlattenMode:*MEMORY[0x277CDA9E0] jetsamMode:0 resourceElevation:0 activityMode:0 resignActive:0 freeze:0, &unk_2833716C0];
  v13[0] = v1;
  v12[1] = &unk_2833716D8;
  v2 = [SBSceneRelevancyEffect effectWithFlattenMode:*MEMORY[0x277CDA9E8] jetsamMode:10 resourceElevation:0 activityMode:10 resignActive:0 freeze:0];
  v13[1] = v2;
  v12[2] = &unk_2833716F0;
  v3 = [SBSceneRelevancyEffect effectWithFlattenMode:v0 jetsamMode:0 resourceElevation:0 activityMode:4294967286 resignActive:0 freeze:0];
  v13[2] = v3;
  v12[3] = &unk_283371708;
  v4 = [SBSceneRelevancyEffect effectWithFlattenMode:v0 jetsamMode:0 resourceElevation:0 activityMode:4294967276 resignActive:1 freeze:0];
  v13[3] = v4;
  v12[4] = &unk_283371720;
  v5 = [SBSceneRelevancyEffect effectWithFlattenMode:v0 jetsamMode:4294967276 resourceElevation:5 activityMode:4294967276 resignActive:1 freeze:0];
  v13[4] = v5;
  v12[5] = &unk_283371738;
  v6 = [SBSceneRelevancyEffect effectWithFlattenMode:v0 jetsamMode:4294967276 resourceElevation:4 activityMode:4294967276 resignActive:1 freeze:0];
  v13[5] = v6;
  v12[6] = &unk_283371750;
  v7 = [SBSceneRelevancyEffect effectWithFlattenMode:v0 jetsamMode:4294967276 resourceElevation:3 activityMode:4294967276 resignActive:1 freeze:0];
  v13[6] = v7;
  v12[7] = &unk_283371768;
  v8 = [SBSceneRelevancyEffect effectWithFlattenMode:v0 jetsamMode:4294967276 resourceElevation:0 activityMode:4294967276 resignActive:1 freeze:1];
  v13[7] = v8;
  v12[8] = &unk_283371780;
  v9 = [SBSceneRelevancyEffect effectWithFlattenMode:v0 jetsamMode:4294967276 resourceElevation:0 activityMode:4294967276 resignActive:1 freeze:1];
  v13[8] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:9];
  v11 = scoresToEffectDictionary___scoresToEffectsDictionary;
  scoresToEffectDictionary___scoresToEffectsDictionary = v10;

  if ([scoresToEffectDictionary___scoresToEffectsDictionary count] != 9)
  {
    __52__SBSceneRelevancyResolver_scoresToEffectDictionary__block_invoke_cold_1();
  }
}

+ (char)sceneActivityModeForWindowWithRelevancyScore:(unint64_t)score
{
  v3 = [self _effectForRelevancyScore:score];
  activityMode = [v3 activityMode];

  return activityMode;
}

+ (char)sceneJetsamModeForWindowWithRelevancyScore:(unint64_t)score
{
  v3 = [self _effectForRelevancyScore:score];
  jetsamMode = [v3 jetsamMode];

  return jetsamMode;
}

+ (char)sceneResourceElevationForWindowWithRelevancyScore:(unint64_t)score
{
  v3 = [self _effectForRelevancyScore:score];
  resourceElevation = [v3 resourceElevation];

  return resourceElevation;
}

+ (BOOL)shouldResignActiveWindowWithRelevancyScore:(unint64_t)score
{
  v3 = [self _effectForRelevancyScore:score];
  resignActive = [v3 resignActive];

  return resignActive;
}

+ (BOOL)shouldDisableFlatteningForWindowWithRelevancyScore:(unint64_t)score
{
  v3 = [self _effectForRelevancyScore:score];
  flattenMode = [v3 flattenMode];
  v5 = flattenMode == *MEMORY[0x277CDA9E8];

  return v5;
}

+ (BOOL)shouldFreezeWindowWithRelevancyScore:(unint64_t)score
{
  v3 = [self _effectForRelevancyScore:score];
  freeze = [v3 freeze];

  return freeze;
}

+ (id)_effectForRelevancyScore:(unint64_t)score
{
  scoresToEffectDictionary = [self scoresToEffectDictionary];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:score];
  v6 = [scoresToEffectDictionary objectForKey:v5];

  return v6;
}

void __52__SBSceneRelevancyResolver_scoresToEffectDictionary__block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[SBSceneRelevancyResolver scoresToEffectDictionary]_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBSceneRelevancyResolver.m" lineNumber:236 description:@"Entry missing from scene relevancy score to effect dictionary"];
}

@end