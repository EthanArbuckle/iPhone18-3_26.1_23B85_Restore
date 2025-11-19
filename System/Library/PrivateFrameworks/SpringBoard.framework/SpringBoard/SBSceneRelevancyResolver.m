@interface SBSceneRelevancyResolver
+ (BOOL)shouldDisableFlatteningForWindowWithRelevancyScore:(unint64_t)a3;
+ (BOOL)shouldFreezeWindowWithRelevancyScore:(unint64_t)a3;
+ (BOOL)shouldResignActiveWindowWithRelevancyScore:(unint64_t)a3;
+ (char)sceneActivityModeForWindowWithRelevancyScore:(unint64_t)a3;
+ (char)sceneJetsamModeForWindowWithRelevancyScore:(unint64_t)a3;
+ (char)sceneResourceElevationForWindowWithRelevancyScore:(unint64_t)a3;
+ (id)_effectForRelevancyScore:(unint64_t)a3;
+ (id)scoresToEffectDictionary;
+ (unint64_t)windowRelevancyScoreForZOrder:(int64_t)a3 occlusionState:(int64_t)a4 maximumNumberOfVisibleScenesOnStage:(unint64_t)a5 settings:(id)a6;
@end

@implementation SBSceneRelevancyResolver

+ (unint64_t)windowRelevancyScoreForZOrder:(int64_t)a3 occlusionState:(int64_t)a4 maximumNumberOfVisibleScenesOnStage:(unint64_t)a5 settings:(id)a6
{
  v9 = a6;
  v10 = v9;
  if (a3 > 0x7FFFFFFFFFFFFFFELL)
  {
    goto LABEL_2;
  }

  v12 = [v9 numberOfFadingScenesOnStage];
  v13 = a5 - v12;
  v14 = [v10 numberOfTopMostWindowsToNeverFreeze];
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = [v10 highPriorityNonFocalRangeFirstZOrder];
  if ((v16 & ~(v16 >> 63)) >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16 & ~(v16 >> 63);
  }

  v18 = [v10 mediumPriorityNonFocalRangeFirstZOrder];
  if (v17 <= v18)
  {
    v19 = v18;
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

  v21 = [v10 lowPriorityNonFocalRangeFirstZOrder];
  if (v20 <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  if (v22 >= v15)
  {
    v22 = v15;
  }

  if (a3 < v17)
  {
    v11 = 1;
    goto LABEL_62;
  }

  if (a3 - v17 < v20 - v17)
  {
    if (a4 >= 2)
    {
      if (a4 == 2)
      {
        v23 = [v10 freezeFullyOccludedWindows] == 0;
        v24 = 3;
        goto LABEL_49;
      }

      goto LABEL_2;
    }

    goto LABEL_42;
  }

  v25 = a3 < v20 || a3 - v20 >= v22 - v20;
  if (!v25)
  {
    if (a4 >= 2)
    {
      if (a4 == 2)
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
  v25 = a3 >= v22;
  v27 = a3 - v22;
  if (!v25 || v27 >= v26)
  {
    if (a3 < v15 || a3 - v15 >= v13 - v15)
    {
      if (a3 - v13 < v12 && a3 >= v13)
      {
        v11 = 7;
      }

      else
      {
        v11 = 8;
      }
    }

    else if (a4 || ([v10 preventFreezingUnoccludedScenes] & 1) == 0)
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
    if (!a4)
    {
      goto LABEL_42;
    }

    if (a4 != 2)
    {
      if (a4 == 1)
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

+ (char)sceneActivityModeForWindowWithRelevancyScore:(unint64_t)a3
{
  v3 = [a1 _effectForRelevancyScore:a3];
  v4 = [v3 activityMode];

  return v4;
}

+ (char)sceneJetsamModeForWindowWithRelevancyScore:(unint64_t)a3
{
  v3 = [a1 _effectForRelevancyScore:a3];
  v4 = [v3 jetsamMode];

  return v4;
}

+ (char)sceneResourceElevationForWindowWithRelevancyScore:(unint64_t)a3
{
  v3 = [a1 _effectForRelevancyScore:a3];
  v4 = [v3 resourceElevation];

  return v4;
}

+ (BOOL)shouldResignActiveWindowWithRelevancyScore:(unint64_t)a3
{
  v3 = [a1 _effectForRelevancyScore:a3];
  v4 = [v3 resignActive];

  return v4;
}

+ (BOOL)shouldDisableFlatteningForWindowWithRelevancyScore:(unint64_t)a3
{
  v3 = [a1 _effectForRelevancyScore:a3];
  v4 = [v3 flattenMode];
  v5 = v4 == *MEMORY[0x277CDA9E8];

  return v5;
}

+ (BOOL)shouldFreezeWindowWithRelevancyScore:(unint64_t)a3
{
  v3 = [a1 _effectForRelevancyScore:a3];
  v4 = [v3 freeze];

  return v4;
}

+ (id)_effectForRelevancyScore:(unint64_t)a3
{
  v4 = [a1 scoresToEffectDictionary];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKey:v5];

  return v6;
}

void __52__SBSceneRelevancyResolver_scoresToEffectDictionary__block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[SBSceneRelevancyResolver scoresToEffectDictionary]_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBSceneRelevancyResolver.m" lineNumber:236 description:@"Entry missing from scene relevancy score to effect dictionary"];
}

@end