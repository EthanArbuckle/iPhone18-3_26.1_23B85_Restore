@interface SSTopHitNominationManager
+ (BOOL)_bundleExcludedForTopHit:(id)hit;
+ (BOOL)_freshnessCheck:(id)check;
+ (BOOL)_hideUnderShowMoreCheck:(id)check;
+ (BOOL)_imporantPropertyMatch:(id)match;
+ (BOOL)_isLikelihoodSpecialCase:(id)case;
+ (BOOL)_keywordMatchCheck:(id)check;
+ (BOOL)_likelihoodCheck:(id)check;
+ (BOOL)_minimumKeywordMatch:(id)match;
+ (BOOL)_needImportantPropertyMatch:(id)match;
+ (BOOL)_needQUIntentCheck:(id)check;
+ (BOOL)_nominateServerTopHitCandidate:(id)candidate;
+ (BOOL)_recentEngagementOvertakeCheck:(id)check;
+ (BOOL)_safariCheck:(id)check;
+ (BOOL)_settingsCheck:(id)check;
+ (BOOL)_spellCorrectedAppPass:(id)pass;
+ (BOOL)_stricterFreshnessTopicalityEngagementCheck:(id)check;
+ (BOOL)_topicalityCheck:(id)check;
+ (BOOL)isTopHitCandidate:(id)candidate;
+ (BOOL)passLikelihoodForTopHitCandidate:(id)candidate;
+ (float)_likelihoodThresholdForBundle:(id)bundle;
+ (float)getTopHitThreshold:(id)threshold;
+ (id)_dropSection:(id)section targetSection:(id)targetSection reasonString:(id)string;
+ (id)postProcessSectionsBasedOnTopHitSection:(id)section withTopHitSection:(id)hitSection;
+ (void)clearTopHitCandidate:(id)candidate;
+ (void)finalizeTopHitSection:(id)section;
+ (void)finalizeTopHitsInSections:(id)sections withTopHitSection:(id)section;
+ (void)nominateTopHitCandidate:(id)candidate;
+ (void)setTopHitCandidate:(id)candidate;
+ (void)topHitCandidacyThresholdingForAppSection:(id)section;
@end

@implementation SSTopHitNominationManager

+ (float)getTopHitThreshold:(id)threshold
{
  thresholdCopy = threshold;
  v4 = [thresholds objectForKey:thresholdCopy];

  if (v4)
  {
    v5 = [thresholds objectForKey:thresholdCopy];
    [v5 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

+ (void)setTopHitCandidate:(id)candidate
{
  candidateCopy = candidate;
  rankingItem = [candidateCopy rankingItem];

  if (rankingItem)
  {
    rankingItem2 = [candidateCopy rankingItem];
    [rankingItem2 setIsLocalTopHitCandidate:1];
  }
}

+ (void)clearTopHitCandidate:(id)candidate
{
  candidateCopy = candidate;
  rankingItem = [candidateCopy rankingItem];

  if (rankingItem)
  {
    rankingItem2 = [candidateCopy rankingItem];
    [rankingItem2 setIsLocalTopHitCandidate:0];
  }
}

+ (BOOL)isTopHitCandidate:(id)candidate
{
  candidateCopy = candidate;
  rankingItem = [candidateCopy rankingItem];

  if (rankingItem)
  {
    rankingItem2 = [candidateCopy rankingItem];
    LOBYTE(rankingItem) = [rankingItem2 isLocalTopHitCandidate];
  }

  return rankingItem;
}

+ (BOOL)passLikelihoodForTopHitCandidate:(id)candidate
{
  candidateCopy = candidate;
  rankingItem = [candidateCopy rankingItem];

  if (rankingItem)
  {
    rankingItem2 = [candidateCopy rankingItem];
    [rankingItem2 likelihood];
    v8 = v7;
    [self getTopHitThreshold:@"LOCAL_TOPHIT_CANDIDATE_LIKELIHOOD_THRESHOLD"];
    v10 = v8 > v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)nominateTopHitCandidate:(id)candidate
{
  candidateCopy = candidate;
  if (([self _bundleExcludedForTopHit:?] & 1) == 0)
  {
    rankingItem = [candidateCopy rankingItem];

    if (rankingItem)
    {
      [self clearTopHitCandidate:candidateCopy];
      if (([self _recentEngagementOvertakeCheck:candidateCopy] & 1) != 0 || objc_msgSend(self, "_isLikelihoodSpecialCase:", candidateCopy))
      {
        goto LABEL_5;
      }

      if ([self _likelihoodCheck:candidateCopy] && objc_msgSend(self, "_topicalityCheck:", candidateCopy) && objc_msgSend(self, "_freshnessCheck:", candidateCopy) && objc_msgSend(self, "_hideUnderShowMoreCheck:", candidateCopy))
      {
        if ([SSQueryIntentManager isServerResult:candidateCopy])
        {
          if (![self _nominateServerTopHitCandidate:candidateCopy])
          {
            goto LABEL_6;
          }

LABEL_5:
          [self setTopHitCandidate:candidateCopy];
          goto LABEL_6;
        }

        if (![self _spellCorrectedAppPass:candidateCopy] || !objc_msgSend(self, "_minimumKeywordMatch:", candidateCopy) || !objc_msgSend(self, "_safariCheck:", candidateCopy) || objc_msgSend(self, "_needImportantPropertyMatch:", candidateCopy) && !objc_msgSend(self, "_imporantPropertyMatch:", candidateCopy) || !objc_msgSend(self, "_stricterFreshnessTopicalityEngagementCheck:", candidateCopy))
        {
          goto LABEL_6;
        }

        if (![self _needQUIntentCheck:candidateCopy])
        {
          goto LABEL_5;
        }

        sectionBundleIdentifier = [candidateCopy sectionBundleIdentifier];
        [SSTopHitNominationManager _likelihoodThresholdForBundle:sectionBundleIdentifier];
        v7 = v6;
        rankingItem2 = [candidateCopy rankingItem];
        if ([rankingItem2 matchedQUIntent])
        {
          if (![self _imporantPropertyMatch:candidateCopy] || (objc_msgSend(rankingItem2, "likelihood"), v9 <= v7))
          {
LABEL_30:

            goto LABEL_6;
          }
        }

        else if ([rankingItem2 quIntentAvailable] && !objc_msgSend(self, "_keywordMatchCheck:", candidateCopy))
        {
          goto LABEL_30;
        }

        goto LABEL_5;
      }
    }
  }

LABEL_6:
}

+ (BOOL)_nominateServerTopHitCandidate:(id)candidate
{
  candidateCopy = candidate;
  sectionBundleIdentifier = [candidateCopy sectionBundleIdentifier];
  rankingItem = [candidateCopy rankingItem];

  [SSTopHitNominationManager _likelihoodThresholdForBundle:sectionBundleIdentifier];
  v7 = v6;
  v9 = 1;
  if ([sectionBundleIdentifier isEqualToString:@"com.apple.parsec.dictionary"])
  {
    [rankingItem likelihood];
    if (v8 <= v7)
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (void)finalizeTopHitSection:(id)section
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  results = [section results];
  v4 = [results countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(results);
        }

        [*(*(&v9 + 1) + 8 * v7++) setUsesTopHitDisplay:1];
      }

      while (v5 != v7);
      v5 = [results countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)finalizeTopHitsInSections:(id)sections withTopHitSection:(id)section
{
  v21 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  sectionCopy = section;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [sectionsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(sectionsCopy);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        bundleIdentifier = [v12 bundleIdentifier];
        v14 = [bundleIdentifier isEqual:@"com.apple.spotlight.tophits"];

        if (v14)
        {
          [self finalizeTopHitSection:v12];
        }
      }

      v9 = [sectionsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [self finalizeTopHitSection:sectionCopy];

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)postProcessSectionsBasedOnTopHitSection:(id)section withTopHitSection:(id)hitSection
{
  sectionCopy = section;
  hitSectionCopy = hitSection;
  v8 = hitSectionCopy;
  if (hitSectionCopy && ([hitSectionCopy results], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v10))
  {
    results = [v8 results];
    firstObject = [results firstObject];

    sectionBundleIdentifier = [firstObject sectionBundleIdentifier];
    v14 = [sectionBundleIdentifier isEqualToString:@"com.apple.MobileAddressBook"];

    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = firstObject;
        rankingItem = [v15 rankingItem];

        if (rankingItem)
        {
          rankingItem2 = [v15 rankingItem];
          [rankingItem2 topicalityScore];
          if (v18 >= 0.96)
          {
            [rankingItem2 engagementScore];
            v20 = v19;
            [self getTopHitThreshold:@"HIGH_ENGAGEMENT_THRESHOLD"];
            if (v20 >= v21)
            {
              recentSimilarIntentEngagementDates = [rankingItem2 recentSimilarIntentEngagementDates];
              v23 = [recentSimilarIntentEngagementDates count];

              if (v23)
              {
                v24 = [self _dropSection:sectionCopy targetSection:@"com.apple.parsec.web_images" reasonString:@"Highly Engaged Contact Top Hit"];

                sectionCopy = v24;
              }
            }
          }
        }
      }
    }

    v25 = sectionCopy;
  }

  else
  {
    v25 = sectionCopy;
  }

  return v25;
}

+ (id)_dropSection:(id)section targetSection:(id)targetSection reasonString:(id)string
{
  v32 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  targetSectionCopy = targetSection;
  stringCopy = string;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = sectionCopy;
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

      bundleIdentifier = [*(*(&v23 + 1) + 8 * v16) bundleIdentifier];
      v19 = [bundleIdentifier isEqual:targetSectionCopy];

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
      v28 = targetSectionCopy;
      v29 = 2112;
      v30 = stringCopy;
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

+ (BOOL)_bundleExcludedForTopHit:(id)hit
{
  sectionBundleIdentifier = [hit sectionBundleIdentifier];
  if (_bundleExcludedForTopHit__onceToken != -1)
  {
    +[SSTopHitNominationManager _bundleExcludedForTopHit:];
  }

  v4 = [_bundleExcludedForTopHit___bundlesExcluded containsObject:sectionBundleIdentifier];

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

+ (float)_likelihoodThresholdForBundle:(id)bundle
{
  bundleCopy = bundle;
  if (_likelihoodThresholdForBundle__onceToken != -1)
  {
    +[SSTopHitNominationManager _likelihoodThresholdForBundle:];
  }

  v5 = [_likelihoodThresholdForBundle___bundleThresholds objectForKeyedSubscript:bundleCopy];
  [v5 floatValue];
  v7 = v6;
  if (v6 == 0.0)
  {
    [self getTopHitThreshold:@"LOCAL_TOPHIT_CANDIDATE_LIKELIHOOD_THRESHOLD"];
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

+ (BOOL)_needQUIntentCheck:(id)check
{
  v3 = _needQUIntentCheck__onceToken;
  checkCopy = check;
  if (v3 != -1)
  {
    +[SSTopHitNominationManager _needQUIntentCheck:];
  }

  v5 = _needQUIntentCheck___quBundlesToCheck;
  sectionBundleIdentifier = [checkCopy sectionBundleIdentifier];

  v7 = [v5 containsObject:sectionBundleIdentifier];
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

+ (BOOL)_needImportantPropertyMatch:(id)match
{
  matchCopy = match;
  rankingItem = [matchCopy rankingItem];

  if (rankingItem)
  {
    rankingItem2 = [matchCopy rankingItem];
    bundleIDType = [rankingItem2 bundleIDType];

    rankingItem = ((bundleIDType >> 5) & 1);
  }

  return rankingItem;
}

+ (BOOL)_spellCorrectedAppPass:(id)pass
{
  passCopy = pass;
  rankingItem = [passCopy rankingItem];

  if (rankingItem)
  {
    rankingItem2 = [passCopy rankingItem];
    spellCorrectedApp = [rankingItem2 spellCorrectedApp];

    if (spellCorrectedApp)
    {
      rankingItem3 = [passCopy rankingItem];
      LOBYTE(rankingItem) = [rankingItem3 exactMatchedLaunchString];
    }

    else
    {
      LOBYTE(rankingItem) = 1;
    }
  }

  return rankingItem;
}

+ (BOOL)_settingsCheck:(id)check
{
  checkCopy = check;
  rankingItem = [checkCopy rankingItem];

  if (rankingItem)
  {
    rankingItem2 = [checkCopy rankingItem];
    if (([rankingItem2 bundleIDType] & 0x10) != 0)
    {
      rankingItem3 = [checkCopy rankingItem];
      settingsPreferencePriority = [rankingItem3 settingsPreferencePriority];

      if (settingsPreferencePriority < 3)
      {
        v6 = 1;
        goto LABEL_9;
      }

      rankingItem2 = [checkCopy rankingItem];
      recentSimilarIntentEngagementDates = [rankingItem2 recentSimilarIntentEngagementDates];
      v6 = [recentSimilarIntentEngagementDates count] != 0;
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

+ (BOOL)_safariCheck:(id)check
{
  checkCopy = check;
  rankingItem = [checkCopy rankingItem];

  if (!rankingItem)
  {
    goto LABEL_27;
  }

  rankingItem2 = [checkCopy rankingItem];
  bundleIDType = [rankingItem2 bundleIDType];

  if ((bundleIDType & 0x80) == 0)
  {
LABEL_3:
    LOBYTE(rankingItem) = 1;
    goto LABEL_27;
  }

  resultBundleId = [checkCopy resultBundleId];
  if ([resultBundleId isEqualToString:@"com.apple.safari.userTypedURL"])
  {
    rankingItem3 = [checkCopy rankingItem];
    [rankingItem3 topicalityScore];
    if (v10 >= 0.99)
    {
      rankingItem4 = [checkCopy rankingItem];
      [rankingItem4 keywordMatchScore];
      v25 = v24;

      if (v25 >= 0.99)
      {
        goto LABEL_3;
      }

      goto LABEL_8;
    }
  }

LABEL_8:
  rankingItem5 = [checkCopy rankingItem];
  [rankingItem5 keywordMatchScore];
  v13 = v12;

  if (v13 < 2.2204e-16)
  {
    goto LABEL_26;
  }

  v14 = +[SSQueryIntentManagerConfig sharedInstance];
  [v14 getFloatParameter:@"IntentModelingSafariEngagementThreshold"];
  v16 = v15;

  rankingItem6 = [checkCopy rankingItem];
  [rankingItem6 engagementScore];
  v19 = v18;

  rankingItem7 = [checkCopy rankingItem];
  if ([rankingItem7 wasEngagedInSpotlight])
  {
    [self getTopHitThreshold:@"MIN_ENGAGEMENT_THRESHOLD"];
    v22 = v21;

    if (v22 <= v19)
    {
      LOBYTE(rankingItem) = 1;
      if (v16 < 0.0 || v16 <= v19)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
  }

  contentType = [checkCopy contentType];
  if ([contentType isEqualToString:@"com.apple.safari.bookmark"])
  {
    rankingItem8 = [checkCopy rankingItem];
    [rankingItem8 keywordMatchScore];
    v29 = v28;
    [self getTopHitThreshold:@"SAFARI_KEYWORDMATCH_THRESHOLD"];
    v31 = v30;

    if (v29 >= v31)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  rankingItem9 = [checkCopy rankingItem];
  [rankingItem9 mostRecentUseInMinutes];
  v34 = v33;

  if (v34 <= 0.0)
  {
    goto LABEL_26;
  }

  [self getTopHitThreshold:@"IN_APP_USAGE_RECENCY_DAYS"];
  if ((v35 * 1440.0) < v34)
  {
    goto LABEL_26;
  }

  rankingItem10 = [checkCopy rankingItem];
  [rankingItem10 keywordMatchScore];
  v38 = v37;
  [self getTopHitThreshold:@"SAFARI_KEYWORDMATCH_THRESHOLD"];
  v40 = v39;

  if (v38 < v40 || (LOBYTE(rankingItem) = 1, v16 >= 0.0) && v16 > v19)
  {
LABEL_26:
    LOBYTE(rankingItem) = 0;
  }

LABEL_27:

  return rankingItem;
}

+ (BOOL)_minimumKeywordMatch:(id)match
{
  matchCopy = match;
  rankingItem = [matchCopy rankingItem];

  if (rankingItem)
  {
    rankingItem2 = [matchCopy rankingItem];
    if (([rankingItem2 bundleIDType] & 0x100000) == 0)
    {
      rankingItem3 = [matchCopy rankingItem];
      if (([rankingItem3 bundleIDType] & 0x80) == 0)
      {
        rankingItem4 = [matchCopy rankingItem];
        if (([rankingItem4 bundleIDType] & 2) == 0)
        {
          rankingItem5 = [matchCopy rankingItem];
          if (([rankingItem5 bundleIDType] & 0x20) == 0)
          {
            rankingItem6 = [matchCopy rankingItem];
            bundleIDType = [rankingItem6 bundleIDType];

            if ((bundleIDType & 0x800) == 0)
            {
              LOBYTE(rankingItem) = 1;
              goto LABEL_13;
            }

LABEL_12:
            rankingItem7 = [matchCopy rankingItem];
            [rankingItem7 keywordMatchScore];
            LOBYTE(rankingItem) = v12 > 0.0;

            goto LABEL_13;
          }
        }
      }
    }

    goto LABEL_12;
  }

LABEL_13:

  return rankingItem;
}

+ (BOOL)_keywordMatchCheck:(id)check
{
  checkCopy = check;
  rankingItem = [checkCopy rankingItem];

  if (rankingItem)
  {
    rankingItem2 = [checkCopy rankingItem];
    [rankingItem2 keywordMatchScore];
    v8 = v7;
    [self getTopHitThreshold:@"LOCAL_TOPHIT_CANDIDATE_KEYWORDMATCH_THRESHOLD"];
    v10 = v8 >= v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_imporantPropertyMatch:(id)match
{
  matchCopy = match;
  rankingItem = [matchCopy rankingItem];

  if (rankingItem)
  {
    rankingItem2 = [matchCopy rankingItem];
    if ([(PRSRankingItem *)rankingItem2 importantPropertiesPrefixMatched])
    {
      v6 = 1;
    }

    else
    {
      rankingItem3 = [matchCopy rankingItem];
      v6 = [(PRSRankingItem *)rankingItem3 importantPropertiesWordMatched]!= 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)_isLikelihoodSpecialCase:(id)case
{
  caseCopy = case;
  rankingItem = [caseCopy rankingItem];

  if (rankingItem)
  {
    rankingItem2 = [caseCopy rankingItem];
    [rankingItem2 likelihood];
    v8 = v7;
    [self getTopHitThreshold:@"LOCAL_TOPHIT_CANDIDATE_LIKELIHOOD_SPECIAL_CASE_THRESHOLD"];
    v10 = v8 >= v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_likelihoodCheck:(id)check
{
  checkCopy = check;
  rankingItem = [checkCopy rankingItem];

  if (rankingItem)
  {
    rankingItem2 = [checkCopy rankingItem];
    [rankingItem2 likelihood];
    v8 = v7;
    [self getTopHitThreshold:@"LOCAL_TOPHIT_CANDIDATE_LIKELIHOOD_THRESHOLD"];
    v10 = v8 >= v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_topicalityCheck:(id)check
{
  checkCopy = check;
  rankingItem = [checkCopy rankingItem];

  if (rankingItem)
  {
    rankingItem2 = [checkCopy rankingItem];
    [rankingItem2 finalTopicality];
    LOBYTE(rankingItem) = v6 > 0.0;
  }

  return rankingItem;
}

+ (BOOL)_freshnessCheck:(id)check
{
  checkCopy = check;
  rankingItem = [checkCopy rankingItem];

  if (rankingItem)
  {
    rankingItem2 = [checkCopy rankingItem];
    bundleIDType = [rankingItem2 bundleIDType];

    if ((bundleIDType & 8) != 0)
    {
      rankingItem3 = [checkCopy rankingItem];
      [rankingItem3 freshnessScore];
      v11 = v10;
      [self getTopHitThreshold:@"TOPHIT_FRESHNESS_THRESHOLD"];
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

+ (BOOL)_hideUnderShowMoreCheck:(id)check
{
  checkCopy = check;
  rankingItem = [checkCopy rankingItem];

  if (rankingItem)
  {
    rankingItem2 = [checkCopy rankingItem];
    bundleIDType = [rankingItem2 bundleIDType];

    if ((bundleIDType & 8) != 0)
    {
      rankingItem3 = [checkCopy rankingItem];
      LODWORD(rankingItem) = [rankingItem3 shouldHideUnderShowMore] ^ 1;
    }

    else
    {
      LOBYTE(rankingItem) = 1;
    }
  }

  return rankingItem;
}

+ (BOOL)_recentEngagementOvertakeCheck:(id)check
{
  checkCopy = check;
  rankingItem = [checkCopy rankingItem];

  if (rankingItem)
  {
    rankingItem2 = [checkCopy rankingItem];
    recentSimilarIntentEngagementDates = [rankingItem2 recentSimilarIntentEngagementDates];
    LOBYTE(rankingItem) = [recentSimilarIntentEngagementDates count] > 1;
  }

  return rankingItem;
}

+ (BOOL)_stricterFreshnessTopicalityEngagementCheck:(id)check
{
  checkCopy = check;
  rankingItem = [checkCopy rankingItem];

  if (rankingItem)
  {
    rankingItem2 = [checkCopy rankingItem];
    bundleIDType = [rankingItem2 bundleIDType];

    rankingItem3 = [checkCopy rankingItem];
    rankingItem5 = rankingItem3;
    if ((bundleIDType & 0x800) == 0)
    {
      if (([rankingItem3 bundleIDType] & 0x100000) == 0)
      {
        v10 = 1;
LABEL_23:

        goto LABEL_24;
      }

      rankingItem4 = [checkCopy rankingItem];
      if (([rankingItem4 quIntentAvailable] & 1) == 0)
      {

LABEL_16:
        rankingItem5 = [checkCopy rankingItem];
        [rankingItem5 freshnessScore];
        v31 = v30;
        [self getTopHitThreshold:@"TOPHIT_FRESHNESS_THRESHOLD_MAIL"];
        if (v31 < v32)
        {
          goto LABEL_17;
        }

        rankingItem6 = [checkCopy rankingItem];
        [rankingItem6 keywordMatchScore];
        v34 = v33;
        [self getTopHitThreshold:@"LOCAL_TOPHIT_CANDIDATE_KEYWORDMATCH_THRESHOLD_MAIL"];
        v29 = v34 < v35;
        goto LABEL_19;
      }

      rankingItem7 = [checkCopy rankingItem];
      matchedQUIntent = [rankingItem7 matchedQUIntent];

      if ((matchedQUIntent & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    [rankingItem3 topicalityScore];
    v12 = v11;
    [self getTopHitThreshold:@"FILES_IN_TOPHIT_TOPICALITY_THRESHOLD"];
    if (v12 >= v13)
    {
      rankingItem8 = [checkCopy rankingItem];
      [rankingItem8 freshnessScore];
      v19 = v18;
      [self getTopHitThreshold:@"TOPHIT_FRESHNESS_THRESHOLD"];
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

    rankingItem5 = [checkCopy rankingItem];
    [rankingItem5 engagementScore];
    v23 = v22;
    [self getTopHitThreshold:@"FILTER_FILES_IN_TOPHIT_ENGAGEMENT_THRESHOLD"];
    if (v23 < v24)
    {
LABEL_17:
      v10 = 0;
      goto LABEL_23;
    }

    rankingItem6 = [checkCopy rankingItem];
    [rankingItem6 topicalityScore];
    v27 = v26;
    [self getTopHitThreshold:@"FILES_IN_TOPHIT_TOPICALITY_WITH_ENGAGEMENT_THRESHOLD"];
    v29 = v27 < v28;
LABEL_19:
    v10 = !v29;

    goto LABEL_23;
  }

  v10 = 0;
LABEL_24:

  return v10;
}

+ (void)topHitCandidacyThresholdingForAppSection:(id)section
{
  v95 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  bundleIdentifier = [sectionCopy bundleIdentifier];
  if (![bundleIdentifier isEqualToString:@"com.apple.application"] || objc_msgSend(sectionCopy, "resultsCount") < 2)
  {
    goto LABEL_10;
  }

  resultSet = [sectionCopy resultSet];
  v8 = [resultSet objectAtIndexedSubscript:0];
  rankingItem = [v8 rankingItem];
  if (![rankingItem isLocalTopHitCandidate])
  {
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  resultSet2 = [sectionCopy resultSet];
  v87 = [resultSet2 objectAtIndexedSubscript:1];
  rankingItem2 = [v87 rankingItem];
  if (![rankingItem2 isLocalTopHitCandidate])
  {

    goto LABEL_9;
  }

  resultSet3 = [sectionCopy resultSet];
  v85 = [resultSet3 objectAtIndexedSubscript:1];
  rankingItem3 = [v85 rankingItem];
  [rankingItem3 freshnessScore];
  v13 = v12;
  if (v12 < 0.96)
  {
    v80 = resultSet3;
    v81 = rankingItem2;
    v82 = 0;
    goto LABEL_13;
  }

  resultSet4 = [sectionCopy resultSet];
  v77 = [resultSet4 objectAtIndexedSubscript:1];
  rankingItem4 = [v77 rankingItem];
  [rankingItem4 topicalityScore];
  if (v14 < 0.6)
  {
    v80 = resultSet3;
    v81 = rankingItem2;
    v82 = 0;
    goto LABEL_13;
  }

  resultSet5 = [sectionCopy resultSet];
  v28 = [resultSet5 objectAtIndexedSubscript:1];
  rankingItem5 = [v28 rankingItem];
  [rankingItem5 freshnessScore];
  if (v30 >= 0.9999)
  {
LABEL_27:

    v27 = 0;
    goto LABEL_28;
  }

  v75 = rankingItem5;
  v69 = v28;
  [sectionCopy resultSet];
  v67 = v82 = 1;
  v31 = [v67 objectAtIndexedSubscript:1];
  rankingItem6 = [v31 rankingItem];
  [rankingItem6 topicalityScore];
  if (v33 >= 0.9)
  {

    v28 = v69;
    rankingItem5 = v75;
    goto LABEL_27;
  }

  v65 = rankingItem6;
  v66 = v31;
  v80 = resultSet3;
  v81 = rankingItem2;
  v3 = v69;
LABEL_13:
  resultSet6 = [sectionCopy resultSet];
  v17 = [resultSet6 objectAtIndexedSubscript:1];
  rankingItem7 = [v17 rankingItem];
  [rankingItem7 topicalityScore];
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

  v73 = resultSet6;
  resultSet7 = [sectionCopy resultSet];
  v71 = [resultSet7 objectAtIndexedSubscript:0];
  rankingItem8 = [v71 rankingItem];
  [rankingItem8 likelihood];
  if (v20 <= 0.65)
  {
    v79 = 0;
    v26 = v75;
  }

  else
  {
    resultSet8 = [sectionCopy resultSet];
    v63 = [resultSet8 objectAtIndexedSubscript:0];
    rankingItem9 = [v63 rankingItem];
    [rankingItem9 likelihood];
    v22 = v21;
    resultSet9 = [sectionCopy resultSet];
    [resultSet9 objectAtIndexedSubscript:1];
    v23 = v68 = v3;
    rankingItem10 = [v23 rankingItem];
    [rankingItem10 likelihood];
    v79 = v22 - v25 > 0.25;

    v26 = v75;
    v3 = v68;
  }

  if (v82)
  {
LABEL_17:
  }

LABEL_18:
  resultSet3 = v80;
  rankingItem2 = v81;
  v27 = v79;
  if (v13 >= 0.96)
  {
LABEL_28:
  }

  if (!v27)
  {
    goto LABEL_11;
  }

  resultSet10 = [sectionCopy resultSet];
  v35 = [resultSet10 objectAtIndexedSubscript:0];
  rankingItem11 = [v35 rankingItem];
  bundleIdentifier = SSCompactRankingAttrsGetValue([rankingItem11 attributes], 0x78uLL);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [bundleIdentifier BOOLValue])
  {
    *buf = 0;
    resultSet11 = [sectionCopy resultSet];
    v38 = [resultSet11 objectAtIndexedSubscript:0];
    rankingItem12 = [v38 rankingItem];
    SSCompactRankingAttrsGetFloat([rankingItem12 attributes], 0x163uLL, &buf[4]);

    resultSet12 = [sectionCopy resultSet];
    v41 = [resultSet12 objectAtIndexedSubscript:1];
    rankingItem13 = [v41 rankingItem];
    SSCompactRankingAttrsGetFloat([rankingItem13 attributes], 0x163uLL, buf);

    if (*&buf[4] > 10.0 && *buf < 5.0)
    {
      goto LABEL_39;
    }

    if (*buf > 0.0 && (*&buf[4] / *buf) > 3.0)
    {
      goto LABEL_39;
    }
  }

  resultSet = [sectionCopy resultSet];
  v8 = [resultSet objectAtIndexedSubscript:1];
  rankingItem = [v8 rankingItem];
  [rankingItem topicalityScore];
  if (v43 >= 0.6)
  {
    goto LABEL_9;
  }

  resultSet13 = [sectionCopy resultSet];
  v45 = [resultSet13 objectAtIndexedSubscript:1];
  rankingItem14 = [v45 rankingItem];
  [rankingItem14 engagementScore];
  if (v47 >= 0.6)
  {
    resultSet14 = [sectionCopy resultSet];
    v58 = [resultSet14 objectAtIndexedSubscript:1];
    [v58 rankingItem];
    v59 = v90 = bundleIdentifier;
    [v59 recentSimilarIntentEngagementDates];
    v60 = v84 = resultSet13;
    v88 = [v60 count];

    if (v88)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
LABEL_40:
  if ([sectionCopy resultsCount] >= 2)
  {
    v48 = 1;
    do
    {
      resultSet15 = [sectionCopy resultSet];
      v50 = [resultSet15 objectAtIndexedSubscript:v48];
      [self clearTopHitCandidate:v50];

      v51 = SSGeneralLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        resultSet16 = [sectionCopy resultSet];
        v53 = [resultSet16 objectAtIndexedSubscript:v48];
        identifier = [v53 identifier];
        resultSet17 = [sectionCopy resultSet];
        v56 = [resultSet17 objectAtIndexedSubscript:0];
        identifier2 = [v56 identifier];
        *&buf[4] = 138412546;
        v92 = identifier;
        v93 = 2112;
        v94 = identifier2;
        _os_log_impl(&dword_1D9F69000, v51, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] <Engagement_Debug> Rule: app %@ TH candidacy thresholded in favor of app %@ with shortcuts.", &buf[4], 0x16u);
      }

      ++v48;
    }

    while (v48 < [sectionCopy resultsCount]);
  }

LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
}

@end