@interface SSTopHitNominationManager
+ (BOOL)_bundleExcludedForTopHit:(id)a3;
+ (BOOL)_freshnessCheck:(id)a3;
+ (BOOL)_hideUnderShowMoreCheck:(id)a3;
+ (BOOL)_imporantPropertyMatch:(id)a3;
+ (BOOL)_isLikelihoodSpecialCase:(id)a3;
+ (BOOL)_keywordMatchCheck:(id)a3;
+ (BOOL)_likelihoodCheck:(id)a3;
+ (BOOL)_minimumKeywordMatch:(id)a3;
+ (BOOL)_needImportantPropertyMatch:(id)a3;
+ (BOOL)_needQUIntentCheck:(id)a3;
+ (BOOL)_nominateServerTopHitCandidate:(id)a3;
+ (BOOL)_recentEngagementOvertakeCheck:(id)a3;
+ (BOOL)_safariCheck:(id)a3;
+ (BOOL)_settingsCheck:(id)a3;
+ (BOOL)_spellCorrectedAppPass:(id)a3;
+ (BOOL)_stricterFreshnessTopicalityEngagementCheck:(id)a3;
+ (BOOL)_topicalityCheck:(id)a3;
+ (BOOL)isTopHitCandidate:(id)a3;
+ (BOOL)passLikelihoodForTopHitCandidate:(id)a3;
+ (float)_likelihoodThresholdForBundle:(id)a3;
+ (float)getTopHitThreshold:(id)a3;
+ (id)_dropSection:(id)a3 targetSection:(id)a4 reasonString:(id)a5;
+ (id)postProcessSectionsBasedOnTopHitSection:(id)a3 withTopHitSection:(id)a4;
+ (void)clearTopHitCandidate:(id)a3;
+ (void)finalizeTopHitSection:(id)a3;
+ (void)finalizeTopHitsInSections:(id)a3 withTopHitSection:(id)a4;
+ (void)nominateTopHitCandidate:(id)a3;
+ (void)setTopHitCandidate:(id)a3;
+ (void)topHitCandidacyThresholdingForAppSection:(id)a3;
@end

@implementation SSTopHitNominationManager

+ (float)getTopHitThreshold:(id)a3
{
  v3 = a3;
  v4 = [thresholds objectForKey:v3];

  if (v4)
  {
    v5 = [thresholds objectForKey:v3];
    [v5 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

+ (void)setTopHitCandidate:(id)a3
{
  v5 = a3;
  v3 = [v5 rankingItem];

  if (v3)
  {
    v4 = [v5 rankingItem];
    [v4 setIsLocalTopHitCandidate:1];
  }
}

+ (void)clearTopHitCandidate:(id)a3
{
  v5 = a3;
  v3 = [v5 rankingItem];

  if (v3)
  {
    v4 = [v5 rankingItem];
    [v4 setIsLocalTopHitCandidate:0];
  }
}

+ (BOOL)isTopHitCandidate:(id)a3
{
  v3 = a3;
  v4 = [v3 rankingItem];

  if (v4)
  {
    v5 = [v3 rankingItem];
    LOBYTE(v4) = [v5 isLocalTopHitCandidate];
  }

  return v4;
}

+ (BOOL)passLikelihoodForTopHitCandidate:(id)a3
{
  v4 = a3;
  v5 = [v4 rankingItem];

  if (v5)
  {
    v6 = [v4 rankingItem];
    [v6 likelihood];
    v8 = v7;
    [a1 getTopHitThreshold:@"LOCAL_TOPHIT_CANDIDATE_LIKELIHOOD_THRESHOLD"];
    v10 = v8 > v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)nominateTopHitCandidate:(id)a3
{
  v10 = a3;
  if (([a1 _bundleExcludedForTopHit:?] & 1) == 0)
  {
    v4 = [v10 rankingItem];

    if (v4)
    {
      [a1 clearTopHitCandidate:v10];
      if (([a1 _recentEngagementOvertakeCheck:v10] & 1) != 0 || objc_msgSend(a1, "_isLikelihoodSpecialCase:", v10))
      {
        goto LABEL_5;
      }

      if ([a1 _likelihoodCheck:v10] && objc_msgSend(a1, "_topicalityCheck:", v10) && objc_msgSend(a1, "_freshnessCheck:", v10) && objc_msgSend(a1, "_hideUnderShowMoreCheck:", v10))
      {
        if ([SSQueryIntentManager isServerResult:v10])
        {
          if (![a1 _nominateServerTopHitCandidate:v10])
          {
            goto LABEL_6;
          }

LABEL_5:
          [a1 setTopHitCandidate:v10];
          goto LABEL_6;
        }

        if (![a1 _spellCorrectedAppPass:v10] || !objc_msgSend(a1, "_minimumKeywordMatch:", v10) || !objc_msgSend(a1, "_safariCheck:", v10) || objc_msgSend(a1, "_needImportantPropertyMatch:", v10) && !objc_msgSend(a1, "_imporantPropertyMatch:", v10) || !objc_msgSend(a1, "_stricterFreshnessTopicalityEngagementCheck:", v10))
        {
          goto LABEL_6;
        }

        if (![a1 _needQUIntentCheck:v10])
        {
          goto LABEL_5;
        }

        v5 = [v10 sectionBundleIdentifier];
        [SSTopHitNominationManager _likelihoodThresholdForBundle:v5];
        v7 = v6;
        v8 = [v10 rankingItem];
        if ([v8 matchedQUIntent])
        {
          if (![a1 _imporantPropertyMatch:v10] || (objc_msgSend(v8, "likelihood"), v9 <= v7))
          {
LABEL_30:

            goto LABEL_6;
          }
        }

        else if ([v8 quIntentAvailable] && !objc_msgSend(a1, "_keywordMatchCheck:", v10))
        {
          goto LABEL_30;
        }

        goto LABEL_5;
      }
    }
  }

LABEL_6:
}

+ (BOOL)_nominateServerTopHitCandidate:(id)a3
{
  v3 = a3;
  v4 = [v3 sectionBundleIdentifier];
  v5 = [v3 rankingItem];

  [SSTopHitNominationManager _likelihoodThresholdForBundle:v4];
  v7 = v6;
  v9 = 1;
  if ([v4 isEqualToString:@"com.apple.parsec.dictionary"])
  {
    [v5 likelihood];
    if (v8 <= v7)
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (void)finalizeTopHitSection:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 results];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setUsesTopHitDisplay:1];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)finalizeTopHitsInSections:(id)a3 withTopHitSection:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 bundleIdentifier];
        v14 = [v13 isEqual:@"com.apple.spotlight.tophits"];

        if (v14)
        {
          [a1 finalizeTopHitSection:v12];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [a1 finalizeTopHitSection:v7];

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)postProcessSectionsBasedOnTopHitSection:(id)a3 withTopHitSection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && ([v7 results], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v10))
  {
    v11 = [v8 results];
    v12 = [v11 firstObject];

    v13 = [v12 sectionBundleIdentifier];
    v14 = [v13 isEqualToString:@"com.apple.MobileAddressBook"];

    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v12;
        v16 = [v15 rankingItem];

        if (v16)
        {
          v17 = [v15 rankingItem];
          [v17 topicalityScore];
          if (v18 >= 0.96)
          {
            [v17 engagementScore];
            v20 = v19;
            [a1 getTopHitThreshold:@"HIGH_ENGAGEMENT_THRESHOLD"];
            if (v20 >= v21)
            {
              v22 = [v17 recentSimilarIntentEngagementDates];
              v23 = [v22 count];

              if (v23)
              {
                v24 = [a1 _dropSection:v6 targetSection:@"com.apple.parsec.web_images" reasonString:@"Highly Engaged Contact Top Hit"];

                v6 = v24;
              }
            }
          }
        }
      }
    }

    v25 = v6;
  }

  else
  {
    v25 = v6;
  }

  return v25;
}

+ (id)_dropSection:(id)a3 targetSection:(id)a4 reasonString:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
  v12 = v10;
  if (v11)
  {
    v13 = v11;
    v14 = 0;
    v15 = *v24;
LABEL_3:
    v16 = 0;
    v17 = v14;
    v14 += v13;
    while (1)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v18 = [*(*(&v23 + 1) + 8 * v16) bundleIdentifier];
      v19 = [v18 isEqual:v8];

      if (v19)
      {
        break;
      }

      ++v17;
      if (v13 == ++v16)
      {
        v13 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        v12 = v10;
        goto LABEL_14;
      }
    }

    if (v17 < 0)
    {
      goto LABEL_15;
    }

    v20 = SSGeneralLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_1D9F69000, v20, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] postProcessSectionsBasedOnTopHitSection Rule: dropping %@ due to %@.", buf, 0x16u);
    }

    v12 = [v10 mutableCopy];
    [v12 removeObjectAtIndex:v17];
  }

LABEL_14:

  v10 = v12;
LABEL_15:

  v21 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (BOOL)_bundleExcludedForTopHit:(id)a3
{
  v3 = [a3 sectionBundleIdentifier];
  if (_bundleExcludedForTopHit__onceToken != -1)
  {
    +[SSTopHitNominationManager _bundleExcludedForTopHit:];
  }

  v4 = [_bundleExcludedForTopHit___bundlesExcluded containsObject:v3];

  return v4;
}

void __54__SSTopHitNominationManager__bundleExcludedForTopHit___block_invoke()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"com.apple.searchd.syndicatedLinks";
  v5[1] = @"com.apple.searchd.syndicatedPhotos";
  v5[2] = @"com.apple.searchd.syndicatedPhotos.MobileSMS";
  v5[3] = @"com.apple.searchd.syndicatedPhotos.mobilenotes";
  v5[4] = @"com.apple.searchd.syndicatedPhotos.mobileslideshow";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v2 = [v0 setWithArray:v1];
  v3 = _bundleExcludedForTopHit___bundlesExcluded;
  _bundleExcludedForTopHit___bundlesExcluded = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (float)_likelihoodThresholdForBundle:(id)a3
{
  v4 = a3;
  if (_likelihoodThresholdForBundle__onceToken != -1)
  {
    +[SSTopHitNominationManager _likelihoodThresholdForBundle:];
  }

  v5 = [_likelihoodThresholdForBundle___bundleThresholds objectForKeyedSubscript:v4];
  [v5 floatValue];
  v7 = v6;
  if (v6 == 0.0)
  {
    [a1 getTopHitThreshold:@"LOCAL_TOPHIT_CANDIDATE_LIKELIHOOD_THRESHOLD"];
    v7 = v8;
  }

  return v7;
}

void __59__SSTopHitNominationManager__likelihoodThresholdForBundle___block_invoke(double a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"com.apple.mobilemail";
  LODWORD(a1) = *"ff&?";
  v1 = [MEMORY[0x1E696AD98] numberWithFloat:a1];
  v8[0] = v1;
  v7[1] = @"com.apple.MobileSMS";
  LODWORD(v2) = 1060320051;
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = _likelihoodThresholdForBundle___bundleThresholds;
  _likelihoodThresholdForBundle___bundleThresholds = v4;

  v6 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_needQUIntentCheck:(id)a3
{
  v3 = _needQUIntentCheck__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[SSTopHitNominationManager _needQUIntentCheck:];
  }

  v5 = _needQUIntentCheck___quBundlesToCheck;
  v6 = [v4 sectionBundleIdentifier];

  v7 = [v5 containsObject:v6];
  return v7;
}

void __48__SSTopHitNominationManager__needQUIntentCheck___block_invoke()
{
  v5[9] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"com.apple.mobileslideshow";
  v5[1] = @"com.apple.mobilenotes";
  v5[2] = @"com.apple.DocumentsApp";
  v5[3] = @"com.apple.mobilemail";
  v5[4] = @"com.apple.MobileSMS";
  v5[5] = @"com.apple.mobilecal";
  v5[6] = @"com.apple.reminders";
  v5[7] = @"com.apple.mobilesafari";
  v5[8] = @"com.apple.spotlight.events";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:9];
  v2 = [v0 setWithArray:v1];
  v3 = _needQUIntentCheck___quBundlesToCheck;
  _needQUIntentCheck___quBundlesToCheck = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_needImportantPropertyMatch:(id)a3
{
  v3 = a3;
  v4 = [v3 rankingItem];

  if (v4)
  {
    v5 = [v3 rankingItem];
    v6 = [v5 bundleIDType];

    v4 = ((v6 >> 5) & 1);
  }

  return v4;
}

+ (BOOL)_spellCorrectedAppPass:(id)a3
{
  v3 = a3;
  v4 = [v3 rankingItem];

  if (v4)
  {
    v5 = [v3 rankingItem];
    v6 = [v5 spellCorrectedApp];

    if (v6)
    {
      v7 = [v3 rankingItem];
      LOBYTE(v4) = [v7 exactMatchedLaunchString];
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

+ (BOOL)_settingsCheck:(id)a3
{
  v3 = a3;
  v4 = [v3 rankingItem];

  if (v4)
  {
    v5 = [v3 rankingItem];
    if (([v5 bundleIDType] & 0x10) != 0)
    {
      v7 = [v3 rankingItem];
      v8 = [v7 settingsPreferencePriority];

      if (v8 < 3)
      {
        v6 = 1;
        goto LABEL_9;
      }

      v5 = [v3 rankingItem];
      v9 = [v5 recentSimilarIntentEngagementDates];
      v6 = [v9 count] != 0;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_9:

  return v6;
}

+ (BOOL)_safariCheck:(id)a3
{
  v4 = a3;
  v5 = [v4 rankingItem];

  if (!v5)
  {
    goto LABEL_27;
  }

  v6 = [v4 rankingItem];
  v7 = [v6 bundleIDType];

  if ((v7 & 0x80) == 0)
  {
LABEL_3:
    LOBYTE(v5) = 1;
    goto LABEL_27;
  }

  v8 = [v4 resultBundleId];
  if ([v8 isEqualToString:@"com.apple.safari.userTypedURL"])
  {
    v9 = [v4 rankingItem];
    [v9 topicalityScore];
    if (v10 >= 0.99)
    {
      v23 = [v4 rankingItem];
      [v23 keywordMatchScore];
      v25 = v24;

      if (v25 >= 0.99)
      {
        goto LABEL_3;
      }

      goto LABEL_8;
    }
  }

LABEL_8:
  v11 = [v4 rankingItem];
  [v11 keywordMatchScore];
  v13 = v12;

  if (v13 < 2.2204e-16)
  {
    goto LABEL_26;
  }

  v14 = +[SSQueryIntentManagerConfig sharedInstance];
  [v14 getFloatParameter:@"IntentModelingSafariEngagementThreshold"];
  v16 = v15;

  v17 = [v4 rankingItem];
  [v17 engagementScore];
  v19 = v18;

  v20 = [v4 rankingItem];
  if ([v20 wasEngagedInSpotlight])
  {
    [a1 getTopHitThreshold:@"MIN_ENGAGEMENT_THRESHOLD"];
    v22 = v21;

    if (v22 <= v19)
    {
      LOBYTE(v5) = 1;
      if (v16 < 0.0 || v16 <= v19)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
  }

  v26 = [v4 contentType];
  if ([v26 isEqualToString:@"com.apple.safari.bookmark"])
  {
    v27 = [v4 rankingItem];
    [v27 keywordMatchScore];
    v29 = v28;
    [a1 getTopHitThreshold:@"SAFARI_KEYWORDMATCH_THRESHOLD"];
    v31 = v30;

    if (v29 >= v31)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  v32 = [v4 rankingItem];
  [v32 mostRecentUseInMinutes];
  v34 = v33;

  if (v34 <= 0.0)
  {
    goto LABEL_26;
  }

  [a1 getTopHitThreshold:@"IN_APP_USAGE_RECENCY_DAYS"];
  if ((v35 * 1440.0) < v34)
  {
    goto LABEL_26;
  }

  v36 = [v4 rankingItem];
  [v36 keywordMatchScore];
  v38 = v37;
  [a1 getTopHitThreshold:@"SAFARI_KEYWORDMATCH_THRESHOLD"];
  v40 = v39;

  if (v38 < v40 || (LOBYTE(v5) = 1, v16 >= 0.0) && v16 > v19)
  {
LABEL_26:
    LOBYTE(v5) = 0;
  }

LABEL_27:

  return v5;
}

+ (BOOL)_minimumKeywordMatch:(id)a3
{
  v3 = a3;
  v4 = [v3 rankingItem];

  if (v4)
  {
    v5 = [v3 rankingItem];
    if (([v5 bundleIDType] & 0x100000) == 0)
    {
      v6 = [v3 rankingItem];
      if (([v6 bundleIDType] & 0x80) == 0)
      {
        v7 = [v3 rankingItem];
        if (([v7 bundleIDType] & 2) == 0)
        {
          v8 = [v3 rankingItem];
          if (([v8 bundleIDType] & 0x20) == 0)
          {
            v9 = [v3 rankingItem];
            v10 = [v9 bundleIDType];

            if ((v10 & 0x800) == 0)
            {
              LOBYTE(v4) = 1;
              goto LABEL_13;
            }

LABEL_12:
            v11 = [v3 rankingItem];
            [v11 keywordMatchScore];
            LOBYTE(v4) = v12 > 0.0;

            goto LABEL_13;
          }
        }
      }
    }

    goto LABEL_12;
  }

LABEL_13:

  return v4;
}

+ (BOOL)_keywordMatchCheck:(id)a3
{
  v4 = a3;
  v5 = [v4 rankingItem];

  if (v5)
  {
    v6 = [v4 rankingItem];
    [v6 keywordMatchScore];
    v8 = v7;
    [a1 getTopHitThreshold:@"LOCAL_TOPHIT_CANDIDATE_KEYWORDMATCH_THRESHOLD"];
    v10 = v8 >= v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_imporantPropertyMatch:(id)a3
{
  v3 = a3;
  v4 = [v3 rankingItem];

  if (v4)
  {
    v5 = [v3 rankingItem];
    if ([(PRSRankingItem *)v5 importantPropertiesPrefixMatched])
    {
      v6 = 1;
    }

    else
    {
      v7 = [v3 rankingItem];
      v6 = [(PRSRankingItem *)v7 importantPropertiesWordMatched]!= 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)_isLikelihoodSpecialCase:(id)a3
{
  v4 = a3;
  v5 = [v4 rankingItem];

  if (v5)
  {
    v6 = [v4 rankingItem];
    [v6 likelihood];
    v8 = v7;
    [a1 getTopHitThreshold:@"LOCAL_TOPHIT_CANDIDATE_LIKELIHOOD_SPECIAL_CASE_THRESHOLD"];
    v10 = v8 >= v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_likelihoodCheck:(id)a3
{
  v4 = a3;
  v5 = [v4 rankingItem];

  if (v5)
  {
    v6 = [v4 rankingItem];
    [v6 likelihood];
    v8 = v7;
    [a1 getTopHitThreshold:@"LOCAL_TOPHIT_CANDIDATE_LIKELIHOOD_THRESHOLD"];
    v10 = v8 >= v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_topicalityCheck:(id)a3
{
  v3 = a3;
  v4 = [v3 rankingItem];

  if (v4)
  {
    v5 = [v3 rankingItem];
    [v5 finalTopicality];
    LOBYTE(v4) = v6 > 0.0;
  }

  return v4;
}

+ (BOOL)_freshnessCheck:(id)a3
{
  v4 = a3;
  v5 = [v4 rankingItem];

  if (v5)
  {
    v6 = [v4 rankingItem];
    v7 = [v6 bundleIDType];

    if ((v7 & 8) != 0)
    {
      v9 = [v4 rankingItem];
      [v9 freshnessScore];
      v11 = v10;
      [a1 getTopHitThreshold:@"TOPHIT_FRESHNESS_THRESHOLD"];
      v8 = v11 >= v12;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_hideUnderShowMoreCheck:(id)a3
{
  v3 = a3;
  v4 = [v3 rankingItem];

  if (v4)
  {
    v5 = [v3 rankingItem];
    v6 = [v5 bundleIDType];

    if ((v6 & 8) != 0)
    {
      v7 = [v3 rankingItem];
      LODWORD(v4) = [v7 shouldHideUnderShowMore] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

+ (BOOL)_recentEngagementOvertakeCheck:(id)a3
{
  v3 = a3;
  v4 = [v3 rankingItem];

  if (v4)
  {
    v5 = [v3 rankingItem];
    v6 = [v5 recentSimilarIntentEngagementDates];
    LOBYTE(v4) = [v6 count] > 1;
  }

  return v4;
}

+ (BOOL)_stricterFreshnessTopicalityEngagementCheck:(id)a3
{
  v4 = a3;
  v5 = [v4 rankingItem];

  if (v5)
  {
    v6 = [v4 rankingItem];
    v7 = [v6 bundleIDType];

    v8 = [v4 rankingItem];
    v9 = v8;
    if ((v7 & 0x800) == 0)
    {
      if (([v8 bundleIDType] & 0x100000) == 0)
      {
        v10 = 1;
LABEL_23:

        goto LABEL_24;
      }

      v14 = [v4 rankingItem];
      if (([v14 quIntentAvailable] & 1) == 0)
      {

LABEL_16:
        v9 = [v4 rankingItem];
        [v9 freshnessScore];
        v31 = v30;
        [a1 getTopHitThreshold:@"TOPHIT_FRESHNESS_THRESHOLD_MAIL"];
        if (v31 < v32)
        {
          goto LABEL_17;
        }

        v25 = [v4 rankingItem];
        [v25 keywordMatchScore];
        v34 = v33;
        [a1 getTopHitThreshold:@"LOCAL_TOPHIT_CANDIDATE_KEYWORDMATCH_THRESHOLD_MAIL"];
        v29 = v34 < v35;
        goto LABEL_19;
      }

      v15 = [v4 rankingItem];
      v16 = [v15 matchedQUIntent];

      if ((v16 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    [v8 topicalityScore];
    v12 = v11;
    [a1 getTopHitThreshold:@"FILES_IN_TOPHIT_TOPICALITY_THRESHOLD"];
    if (v12 >= v13)
    {
      v17 = [v4 rankingItem];
      [v17 freshnessScore];
      v19 = v18;
      [a1 getTopHitThreshold:@"TOPHIT_FRESHNESS_THRESHOLD"];
      v21 = v20;

      if (v19 >= v21)
      {
LABEL_14:
        v10 = 1;
        goto LABEL_24;
      }
    }

    else
    {
    }

    v9 = [v4 rankingItem];
    [v9 engagementScore];
    v23 = v22;
    [a1 getTopHitThreshold:@"FILTER_FILES_IN_TOPHIT_ENGAGEMENT_THRESHOLD"];
    if (v23 < v24)
    {
LABEL_17:
      v10 = 0;
      goto LABEL_23;
    }

    v25 = [v4 rankingItem];
    [v25 topicalityScore];
    v27 = v26;
    [a1 getTopHitThreshold:@"FILES_IN_TOPHIT_TOPICALITY_WITH_ENGAGEMENT_THRESHOLD"];
    v29 = v27 < v28;
LABEL_19:
    v10 = !v29;

    goto LABEL_23;
  }

  v10 = 0;
LABEL_24:

  return v10;
}

+ (void)topHitCandidacyThresholdingForAppSection:(id)a3
{
  v95 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 bundleIdentifier];
  if (![v6 isEqualToString:@"com.apple.application"] || objc_msgSend(v5, "resultsCount") < 2)
  {
    goto LABEL_10;
  }

  v7 = [v5 resultSet];
  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = [v8 rankingItem];
  if (![v9 isLocalTopHitCandidate])
  {
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  v89 = [v5 resultSet];
  v87 = [v89 objectAtIndexedSubscript:1];
  v10 = [v87 rankingItem];
  if (![v10 isLocalTopHitCandidate])
  {

    goto LABEL_9;
  }

  v11 = [v5 resultSet];
  v85 = [v11 objectAtIndexedSubscript:1];
  v83 = [v85 rankingItem];
  [v83 freshnessScore];
  v13 = v12;
  if (v12 < 0.96)
  {
    v80 = v11;
    v81 = v10;
    v82 = 0;
    goto LABEL_13;
  }

  v78 = [v5 resultSet];
  v77 = [v78 objectAtIndexedSubscript:1];
  v76 = [v77 rankingItem];
  [v76 topicalityScore];
  if (v14 < 0.6)
  {
    v80 = v11;
    v81 = v10;
    v82 = 0;
    goto LABEL_13;
  }

  v74 = [v5 resultSet];
  v28 = [v74 objectAtIndexedSubscript:1];
  v29 = [v28 rankingItem];
  [v29 freshnessScore];
  if (v30 >= 0.9999)
  {
LABEL_27:

    v27 = 0;
    goto LABEL_28;
  }

  v75 = v29;
  v69 = v28;
  [v5 resultSet];
  v67 = v82 = 1;
  v31 = [v67 objectAtIndexedSubscript:1];
  v32 = [v31 rankingItem];
  [v32 topicalityScore];
  if (v33 >= 0.9)
  {

    v28 = v69;
    v29 = v75;
    goto LABEL_27;
  }

  v65 = v32;
  v66 = v31;
  v80 = v11;
  v81 = v10;
  v3 = v69;
LABEL_13:
  v16 = [v5 resultSet];
  v17 = [v16 objectAtIndexedSubscript:1];
  v18 = [v17 rankingItem];
  [v18 topicalityScore];
  if (v19 >= 1.0)
  {

    v79 = 0;
    v26 = v75;
    if ((v82 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v73 = v16;
  v72 = [v5 resultSet];
  v71 = [v72 objectAtIndexedSubscript:0];
  v70 = [v71 rankingItem];
  [v70 likelihood];
  if (v20 <= 0.65)
  {
    v79 = 0;
    v26 = v75;
  }

  else
  {
    v64 = [v5 resultSet];
    v63 = [v64 objectAtIndexedSubscript:0];
    v62 = [v63 rankingItem];
    [v62 likelihood];
    v22 = v21;
    v61 = [v5 resultSet];
    [v61 objectAtIndexedSubscript:1];
    v23 = v68 = v3;
    v24 = [v23 rankingItem];
    [v24 likelihood];
    v79 = v22 - v25 > 0.25;

    v26 = v75;
    v3 = v68;
  }

  if (v82)
  {
LABEL_17:
  }

LABEL_18:
  v11 = v80;
  v10 = v81;
  v27 = v79;
  if (v13 >= 0.96)
  {
LABEL_28:
  }

  if (!v27)
  {
    goto LABEL_11;
  }

  v34 = [v5 resultSet];
  v35 = [v34 objectAtIndexedSubscript:0];
  v36 = [v35 rankingItem];
  v6 = SSCompactRankingAttrsGetValue([v36 attributes], 0x78uLL);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 BOOLValue])
  {
    *buf = 0;
    v37 = [v5 resultSet];
    v38 = [v37 objectAtIndexedSubscript:0];
    v39 = [v38 rankingItem];
    SSCompactRankingAttrsGetFloat([v39 attributes], 0x163uLL, &buf[4]);

    v40 = [v5 resultSet];
    v41 = [v40 objectAtIndexedSubscript:1];
    v42 = [v41 rankingItem];
    SSCompactRankingAttrsGetFloat([v42 attributes], 0x163uLL, buf);

    if (*&buf[4] > 10.0 && *buf < 5.0)
    {
      goto LABEL_39;
    }

    if (*buf > 0.0 && (*&buf[4] / *buf) > 3.0)
    {
      goto LABEL_39;
    }
  }

  v7 = [v5 resultSet];
  v8 = [v7 objectAtIndexedSubscript:1];
  v9 = [v8 rankingItem];
  [v9 topicalityScore];
  if (v43 >= 0.6)
  {
    goto LABEL_9;
  }

  v44 = [v5 resultSet];
  v45 = [v44 objectAtIndexedSubscript:1];
  v46 = [v45 rankingItem];
  [v46 engagementScore];
  if (v47 >= 0.6)
  {
    v86 = [v5 resultSet];
    v58 = [v86 objectAtIndexedSubscript:1];
    [v58 rankingItem];
    v59 = v90 = v6;
    [v59 recentSimilarIntentEngagementDates];
    v60 = v84 = v44;
    v88 = [v60 count];

    if (v88)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
LABEL_40:
  if ([v5 resultsCount] >= 2)
  {
    v48 = 1;
    do
    {
      v49 = [v5 resultSet];
      v50 = [v49 objectAtIndexedSubscript:v48];
      [a1 clearTopHitCandidate:v50];

      v51 = SSGeneralLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = [v5 resultSet];
        v53 = [v52 objectAtIndexedSubscript:v48];
        v54 = [v53 identifier];
        v55 = [v5 resultSet];
        v56 = [v55 objectAtIndexedSubscript:0];
        v57 = [v56 identifier];
        *&buf[4] = 138412546;
        v92 = v54;
        v93 = 2112;
        v94 = v57;
        _os_log_impl(&dword_1D9F69000, v51, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] <Engagement_Debug> Rule: app %@ TH candidacy thresholded in favor of app %@ with shortcuts.", &buf[4], 0x16u);
      }

      ++v48;
    }

    while (v48 < [v5 resultsCount]);
  }

LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
}

@end