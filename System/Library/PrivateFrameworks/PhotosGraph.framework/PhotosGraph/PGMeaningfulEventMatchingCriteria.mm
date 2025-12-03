@interface PGMeaningfulEventMatchingCriteria
- (PGMeaningfulEventMatchingCriteria)initWithMoment:(id)moment cache:(id)cache serviceManager:(id)manager;
- (double)_calculateMatchingScoreForPartOfDayWithMatchingTrait:(id)trait requiredTrait:(id)requiredTrait requiresStrictMatching:(BOOL)matching;
- (double)matchingScoreWithCriteria:(id)criteria failed:(BOOL *)failed isReliable:(BOOL *)reliable;
- (id)debugDescription;
- (id)matchingResultWithCriteria:(id)criteria;
- (void)_calculateMatchingScoreForLocationsWithMatchingTrait:(id)trait requiredTrait:(id)requiredTrait result:(id)result;
- (void)_calculateMatchingScoreForPOIROIWithMatchingTrait:(id)trait requiredTrait:(id)requiredTrait result:(id)result;
- (void)_calculateMatchingScoreForScenesWithRequiredCriteria:(id)criteria result:(id)result;
@end

@implementation PGMeaningfulEventMatchingCriteria

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PGMeaningfulEventMatchingCriteria *)self description];
  v5 = [(PGMeaningfulEventCriteria *)self _debugDescriptionWithMomentNode:self->_momentNode];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (double)_calculateMatchingScoreForPartOfDayWithMatchingTrait:(id)trait requiredTrait:(id)requiredTrait requiresStrictMatching:(BOOL)matching
{
  matchingCopy = matching;
  requiredTraitCopy = requiredTrait;
  value = [trait value];
  value2 = [requiredTraitCopy value];
  forbiddenValue = [requiredTraitCopy forbiddenValue];
  if (forbiddenValue == 1 || (v12 = 0.0, (value & forbiddenValue & 0x3F) == 0))
  {
    v11.i32[0] = value2 & value & 0x3F;
    v13 = vcnt_s8(v11);
    v13.i16[0] = vaddlv_u8(v13);
    v14 = v13.u32[0];
    v13.i32[0] = value & 0x3F;
    v15 = vcnt_s8(v13);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.i32[0] <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    if (matchingCopy)
    {
      v14 = v16;
    }

    v12 = v14;
  }

  isMatchingRequired = [requiredTraitCopy isMatchingRequired];
  v18 = 1.0;
  if (isMatchingRequired)
  {
    [requiredTraitCopy minimumScore];
  }

  v19 = fmin(v12 / v18, 1.0);

  return v19;
}

- (void)_calculateMatchingScoreForLocationsWithMatchingTrait:(id)trait requiredTrait:(id)requiredTrait result:(id)result
{
  requiredTraitCopy = requiredTrait;
  resultCopy = result;
  nodes = [trait nodes];
  nodes2 = [requiredTraitCopy nodes];
  negativeNodes = [requiredTraitCopy negativeNodes];
  v12 = [nodes count];
  v13 = [negativeNodes count];
  useStrictNegativeNodesMatching = [requiredTraitCopy useStrictNegativeNodesMatching];
  if (v13)
  {
    if (useStrictNegativeNodesMatching)
    {
      v15 = v12;
    }

    else
    {
      v15 = 1;
    }

    v16 = [negativeNodes collectionByIntersecting:nodes];
    v17 = [v16 count];
    if (v17 && v17 >= v15)
    {
      [(PGMeaningfulEventCriteria *)self isDebug];
      v18.n128_u64[0] = 0;
      resultCopy[2](resultCopy, v18);
LABEL_11:

      goto LABEL_16;
    }
  }

  if ([nodes2 count])
  {
    v16 = [nodes2 collectionByIntersecting:nodes];
    v20 = [v16 count] / v12;
    [(PGMeaningfulEventCriteria *)self isDebug];
    v21.n128_f64[0] = v20;
    resultCopy[2](resultCopy, v21);
    goto LABEL_11;
  }

  v19.n128_u64[0] = 1.0;
  if (!v12)
  {
    skipNegativeRequirementForMissingLocation = [requiredTraitCopy skipNegativeRequirementForMissingLocation];
    v19.n128_u64[0] = 0;
    if (skipNegativeRequirementForMissingLocation)
    {
      v19.n128_f64[0] = 1.0;
    }
  }

  resultCopy[2](resultCopy, v19);
LABEL_16:
}

- (void)_calculateMatchingScoreForPOIROIWithMatchingTrait:(id)trait requiredTrait:(id)requiredTrait result:(id)result
{
  requiredTraitCopy = requiredTrait;
  resultCopy = result;
  nodes = [trait nodes];
  nodes2 = [requiredTraitCopy nodes];
  negativeNodes = [requiredTraitCopy negativeNodes];
  v13 = [nodes2 count];
  v14 = self->_momentNode;
  if ([negativeNodes count])
  {
    v15 = [negativeNodes collectionByIntersecting:nodes];
    v16 = [v15 count];
    if (v16)
    {
      if (![(PGMeaningfulEventCriteria *)self isDebug])
      {
        resultCopy[2](resultCopy, 0.0);

        goto LABEL_10;
      }

      [v15 enumerateNodesUsingBlock:&__block_literal_global_276];
    }
  }

  else
  {
    v16 = 0;
  }

  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __108__PGMeaningfulEventMatchingCriteria__calculateMatchingScoreForPOIROIWithMatchingTrait_requiredTrait_result___block_invoke_2;
  v23 = &unk_278882088;
  v28 = v13;
  v29 = v16;
  selfCopy = self;
  v25 = requiredTraitCopy;
  v26 = v14;
  v17 = nodes;
  v27 = v17;
  v18 = _Block_copy(&v20);
  v19 = [nodes2 collectionByIntersecting:{v17, v20, v21, v22, v23, selfCopy}];
  v18[2](v18, v19);
  if (resultCopy)
  {
    (resultCopy[2])(resultCopy);
  }

LABEL_10:
}

double __108__PGMeaningfulEventMatchingCriteria__calculateMatchingScoreForPOIROIWithMatchingTrait_requiredTrait_result___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 64))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [v3 count];
  if (v6)
  {
    v7 = v6;
    if ([*(a1 + 32) isDebug])
    {
      [v4 enumerateNodesUsingBlock:&__block_literal_global_278];
    }

    if (!*(a1 + 72))
    {
      v10 = [*(a1 + 40) additionalMatchingBlock];

      if (!v10 || ([*(a1 + 40) additionalMatchingBlock], v11 = objc_claimAutoreleasedReturnValue(), v12 = (v11)[2](v11, v4, *(a1 + 48)), v11, v12))
      {
        v13 = *(a1 + 64);
        v5 = 1.0;
        if (v13 != 1)
        {
          v14 = v13 == 2;
          v15 = 1;
          if (!v14)
          {
            v15 = 2;
          }

          v5 = fmin((v7 + -1.0) / v15, 1.0) * 0.25 + 0.75;
        }
      }
    }

    if ([*(a1 + 32) isDebug])
    {
      v8 = [v4 collectionBySubtracting:*(a1 + 56)];
      [v8 enumerateNodesUsingBlock:&__block_literal_global_280];
    }
  }

  return v5;
}

- (void)_calculateMatchingScoreForScenesWithRequiredCriteria:(id)criteria result:(id)result
{
  v56 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  resultCopy = result;
  scenesTrait = [(PGMeaningfulEventCriteria *)self scenesTrait];
  v42 = criteriaCopy;
  scenesTrait2 = [criteriaCopy scenesTrait];
  v41 = scenesTrait;
  nodes = [scenesTrait nodes];
  nodes2 = [scenesTrait2 nodes];
  negativeNodes = [scenesTrait2 negativeNodes];
  v40 = nodes2;
  v13 = [nodes2 count];
  accumulateHighConfidenceAssetCounts = [scenesTrait2 accumulateHighConfidenceAssetCounts];
  v15 = self->_momentNode;
  isDebug = [(PGMeaningfulEventCriteria *)self isDebug];
  v43 = v15;
  v44 = nodes;
  v39 = negativeNodes;
  if ([negativeNodes count])
  {
    v17 = [negativeNodes collectionByIntersecting:nodes];
    collection = [(PGGraphMomentNode *)v15 collection];
    v19 = +[PGGraphSceneEdge filterWithMinimumNumberOfHighConfidenceAssets:](PGGraphSceneEdge, "filterWithMinimumNumberOfHighConfidenceAssets:", [scenesTrait2 minimumNumberOfNegativeHighConfidenceAssets]);
    v20 = [(MAEdgeCollection *)PGGraphSceneEdgeCollection edgesFromNodes:collection toNodes:v17 matchingFilter:v19];

    if ([v20 count])
    {
      v21 = v42;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        momentNode = [(PGMeaningfulEventMatchingCriteria *)self momentNode];
        name = [momentNode name];
        identifier = [v42 identifier];
        *buf = 138478083;
        v53 = name;
        v54 = 2114;
        v55 = identifier;
        _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[MeaningInference] Moment %{private}@ matched negative scenes for identifier %{public}@", buf, 0x16u);
      }

      resultCopy[2](resultCopy, 0.0, 0.0);

      v22 = v40;
      goto LABEL_12;
    }

    v15 = v43;
    nodes = v44;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__PGMeaningfulEventMatchingCriteria__calculateMatchingScoreForScenesWithRequiredCriteria_result___block_invoke;
  aBlock[3] = &unk_278882040;
  v49 = v13;
  v50 = isDebug;
  v23 = v15;
  v46 = v23;
  v47 = scenesTrait2;
  v51 = accumulateHighConfidenceAssetCounts;
  v24 = nodes;
  v48 = v24;
  v25 = _Block_copy(aBlock);
  v22 = v40;
  v26 = [v40 collectionByIntersecting:v24];
  cache = self->_cache;
  collection2 = [(PGGraphMomentNode *)v23 collection];
  v29 = [(PGMeaningfulEventProcessorCache *)cache reliableSceneNodesForMomentNodes:collection2];
  v30 = [v26 collectionByIntersecting:v29];

  v31 = v25[2](v25, v26);
  v32 = [v26 count];
  v33 = [v30 count];
  v34.n128_f64[0] = v31;
  if (v32 != v33)
  {
    v34.n128_u64[0] = v25[2](v25, v30);
  }

  if (resultCopy)
  {
    (resultCopy[2])(resultCopy, v31, v34);
  }

  v17 = v46;
  v21 = v42;
LABEL_12:

  v35 = *MEMORY[0x277D85DE8];
}

double __97__PGMeaningfulEventMatchingCriteria__calculateMatchingScoreForScenesWithRequiredCriteria_result___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 56))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [v3 count];
  if (v6)
  {
    v7 = v6;
    if (*(a1 + 64) == 1)
    {
      v8 = [*(a1 + 32) collection];
      v9 = [(PGGraphEdgeCollection *)PGGraphSceneEdgeCollection edgesFromNodes:v8 toNodes:v4];

      [v9 enumerateEdgesUsingBlock:&__block_literal_global_26612];
    }

    v10 = v7;
    v11 = v7 / *(a1 + 56);
    [*(a1 + 40) minimumScore];
    if (v11 >= v12)
    {
      v13 = v12;
      v14 = [*(a1 + 40) additionalMatchingBlock];

      if (!v14 || ([*(a1 + 40) additionalMatchingBlock], v15 = objc_claimAutoreleasedReturnValue(), v16 = (v15)[2](v15, v4, *(a1 + 32)), v15, v16))
      {
        v42 = 0;
        v43 = &v42;
        v44 = 0x2020000000;
        v45 = 0;
        v17 = [*(a1 + 40) minimumNumberOfHighConfidenceAssets];
        v38 = 0;
        v39 = &v38;
        v40 = 0x2020000000;
        v41 = 0;
        v34 = 0;
        v35 = &v34;
        v36 = 0x2020000000;
        v37 = 0;
        v18 = [*(a1 + 32) collection];
        v19 = [(PGGraphEdgeCollection *)PGGraphSceneEdgeCollection edgesFromNodes:v18 toNodes:v4];

        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __97__PGMeaningfulEventMatchingCriteria__calculateMatchingScoreForScenesWithRequiredCriteria_result___block_invoke_3;
        v27[3] = &unk_278882018;
        v28 = *(a1 + 32);
        v29 = *(a1 + 40);
        v30 = &v34;
        v31 = &v38;
        v32 = &v42;
        v33 = v17;
        [v19 enumerateEdgesUsingBlock:v27];
        v20 = *(a1 + 56);
        if (*(a1 + 65) == 1)
        {
          v22 = v10 / v20 >= v13 && v39[3] >= v17;
        }

        else
        {
          v22 = v43[3] / v20 >= v13;
        }

        if (v22 && v35[3] / v20 >= v13)
        {
          v5 = 1.0;
        }

        else
        {
          v5 = 0.0;
        }

        _Block_object_dispose(&v34, 8);
        _Block_object_dispose(&v38, 8);
        _Block_object_dispose(&v42, 8);
      }
    }
  }

  if (*(a1 + 64) == 1)
  {
    v23 = [*(a1 + 48) collectionBySubtracting:v4];
    v24 = [*(a1 + 32) collection];
    v25 = [(PGGraphEdgeCollection *)PGGraphSceneEdgeCollection edgesFromNodes:v24 toNodes:v23];

    [v25 enumerateEdgesUsingBlock:&__block_literal_global_272];
  }

  return v5;
}

void __97__PGMeaningfulEventMatchingCriteria__calculateMatchingScoreForScenesWithRequiredCriteria_result___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 numberOfHighConfidenceAssets];
  v5 = v4 / [*(a1 + 32) numberOfAssets];
  [*(a1 + 40) minimumRatioOfHighConfidenceAssets];
  if (v5 >= v6)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  v7 = [v3 numberOfSearchConfidenceAssets];

  *(*(*(a1 + 56) + 8) + 24) += v7 + v4;
  if (v7 + v4 >= *(a1 + 72))
  {
    ++*(*(*(a1 + 64) + 8) + 24);
  }
}

- (double)matchingScoreWithCriteria:(id)criteria failed:(BOOL *)failed isReliable:(BOOL *)reliable
{
  criteriaCopy = criteria;
  isDebug = [(PGMeaningfulEventCriteria *)self isDebug];
  isDebug2 = 1;
  if (!isDebug)
  {
    isDebug2 = [criteriaCopy isDebug];
  }

  [(PGMeaningfulEventCriteria *)self setDebug:isDebug2];
  v264 = 0;
  v265 = &v264;
  v266 = 0x2020000000;
  v267 = 0;
  v260 = 0;
  v261 = &v260;
  v262 = 0x2020000000;
  v263 = 0;
  v256 = 0;
  v257 = &v256;
  v258 = 0x2020000000;
  v259 = 0;
  v252 = 0;
  v253 = &v252;
  v254 = 0x2020000000;
  v255 = 0;
  v248 = 0;
  v249 = &v248;
  v250 = 0x2020000000;
  v251 = 1;
  numberOfPeopleTrait = [criteriaCopy numberOfPeopleTrait];
  isMatchingRequired = [numberOfPeopleTrait isMatchingRequired];

  peopleTrait = [criteriaCopy peopleTrait];
  isMatchingRequired2 = [peopleTrait isMatchingRequired];

  socialGroupsTrait = [criteriaCopy socialGroupsTrait];
  isMatchingRequired3 = [socialGroupsTrait isMatchingRequired];

  locationsTrait = [criteriaCopy locationsTrait];
  isMatchingRequired4 = [locationsTrait isMatchingRequired];

  datesTrait = [criteriaCopy datesTrait];
  isMatchingRequired5 = [datesTrait isMatchingRequired];

  scenesTrait = [criteriaCopy scenesTrait];
  isMatchingRequired6 = [scenesTrait isMatchingRequired];

  roisTrait = [criteriaCopy roisTrait];
  isMatchingRequired7 = [roisTrait isMatchingRequired];

  poisTrait = [criteriaCopy poisTrait];
  isMatchingRequired8 = [poisTrait isMatchingRequired];

  minimumDurationTrait = [criteriaCopy minimumDurationTrait];
  isMatchingRequired9 = [minimumDurationTrait isMatchingRequired];

  maximumDurationTrait = [criteriaCopy maximumDurationTrait];
  isMatchingRequired10 = [maximumDurationTrait isMatchingRequired];

  significantPartsOfDayTrait = [criteriaCopy significantPartsOfDayTrait];
  isMatchingRequired11 = [significantPartsOfDayTrait isMatchingRequired];

  allPartsOfDayTrait = [criteriaCopy allPartsOfDayTrait];
  isMatchingRequired12 = [allPartsOfDayTrait isMatchingRequired];

  locationMobilityTrait = [criteriaCopy locationMobilityTrait];
  isMatchingRequired13 = [locationMobilityTrait isMatchingRequired];

  publicEventCategoriesTrait = [criteriaCopy publicEventCategoriesTrait];
  isMatchingRequired14 = [publicEventCategoriesTrait isMatchingRequired];

  numberOfPeopleTrait2 = [criteriaCopy numberOfPeopleTrait];
  isActive = [numberOfPeopleTrait2 isActive];

  if (isActive)
  {
    numberOfPeopleTrait3 = [criteriaCopy numberOfPeopleTrait];
    [numberOfPeopleTrait3 value];
    v28 = v27;

    numberOfPeopleTrait4 = [(PGMeaningfulEventCriteria *)self numberOfPeopleTrait];
    [numberOfPeopleTrait4 value];
    v31 = v30;

    v32 = 1.0;
    if (isMatchingRequired)
    {
      numberOfPeopleTrait5 = [criteriaCopy numberOfPeopleTrait];
      [numberOfPeopleTrait5 minimumScore];
      v32 = v34;
    }

    [criteriaCopy minimumScore];
    v35 = v31 / v28;
    v200 = fmin(v35 / v32 * v36, 1.0);
    if (v35 < v32)
    {
      v37 = isMatchingRequired;
    }

    else
    {
      v37 = 0;
    }

    v38 = isMatchingRequired;
    if (isMatchingRequired)
    {
      v39 = v200 + 0.0;
    }

    else
    {
      v39 = 0.0;
    }
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v200 = 0.0;
    v39 = 0.0;
  }

  locationMobilityTrait2 = [criteriaCopy locationMobilityTrait];
  v41 = 0.0;
  if ([locationMobilityTrait2 isActive])
  {
    if (v37)
    {
      isDebug3 = [(PGMeaningfulEventCriteria *)self isDebug];

      if (!isDebug3)
      {
        v37 = 1;
        goto LABEL_27;
      }
    }

    else
    {
    }

    locationMobilityTrait2 = [criteriaCopy locationMobilityTrait];
    value = [locationMobilityTrait2 value];
    locationMobilityTrait3 = [(PGMeaningfulEventCriteria *)self locationMobilityTrait];
    value2 = [locationMobilityTrait3 value];

    v46 = 1.0;
    if (value == value2)
    {
      v47 = 1.0;
    }

    else
    {
      v47 = 0.0;
    }

    if (isMatchingRequired13)
    {
      [locationMobilityTrait2 minimumScore];
      v46 = v48;
    }

    [criteriaCopy minimumScore];
    v41 = fmin(v47 / v46 * v49, 1.0);
    if (isMatchingRequired13)
    {
      v39 = v39 + v41;
      ++v38;
      if (v47 < v46)
      {
        v37 = 1;
      }
    }
  }

LABEL_27:
  significantPartsOfDayTrait2 = [criteriaCopy significantPartsOfDayTrait];
  v203 = 0.0;
  if (![significantPartsOfDayTrait2 isActive])
  {
LABEL_35:

    goto LABEL_36;
  }

  if (v37)
  {
    isDebug4 = [(PGMeaningfulEventCriteria *)self isDebug];

    if (!isDebug4)
    {
      v37 = 1;
      v203 = 0.0;
      goto LABEL_36;
    }
  }

  else
  {
  }

  significantPartsOfDayTrait3 = [(PGMeaningfulEventCriteria *)self significantPartsOfDayTrait];
  significantPartsOfDayTrait4 = [criteriaCopy significantPartsOfDayTrait];
  [(PGMeaningfulEventMatchingCriteria *)self _calculateMatchingScoreForPartOfDayWithMatchingTrait:significantPartsOfDayTrait3 requiredTrait:significantPartsOfDayTrait4 requiresStrictMatching:0];
  v55 = v54;

  [criteriaCopy minimumScore];
  v203 = fmin(v55 * v56, 1.0);
  if (isMatchingRequired11)
  {
    significantPartsOfDayTrait2 = [criteriaCopy significantPartsOfDayTrait];
    [significantPartsOfDayTrait2 minimumScore];
    v39 = v39 + v203;
    ++v38;
    if (v55 < v57)
    {
      v37 = 1;
    }

    goto LABEL_35;
  }

LABEL_36:
  allPartsOfDayTrait2 = [criteriaCopy allPartsOfDayTrait];
  v202 = 0.0;
  if (![allPartsOfDayTrait2 isActive])
  {
LABEL_44:

    goto LABEL_45;
  }

  if (v37)
  {
    isDebug5 = [(PGMeaningfulEventCriteria *)self isDebug];

    if (!isDebug5)
    {
      v37 = 1;
      v202 = 0.0;
      goto LABEL_45;
    }
  }

  else
  {
  }

  allPartsOfDayTrait3 = [(PGMeaningfulEventCriteria *)self allPartsOfDayTrait];
  allPartsOfDayTrait4 = [criteriaCopy allPartsOfDayTrait];
  [(PGMeaningfulEventMatchingCriteria *)self _calculateMatchingScoreForPartOfDayWithMatchingTrait:allPartsOfDayTrait3 requiredTrait:allPartsOfDayTrait4 requiresStrictMatching:0];
  v63 = v62;

  [criteriaCopy minimumScore];
  v202 = fmin(v63 * v64, 1.0);
  if (isMatchingRequired12)
  {
    allPartsOfDayTrait2 = [criteriaCopy allPartsOfDayTrait];
    [allPartsOfDayTrait2 minimumScore];
    v39 = v39 + v202;
    ++v38;
    if (v63 < v65)
    {
      v37 = 1;
    }

    goto LABEL_44;
  }

LABEL_45:
  minimumDurationTrait2 = [criteriaCopy minimumDurationTrait];
  if (![minimumDurationTrait2 isActive])
  {

    goto LABEL_50;
  }

  if (v37)
  {
    isDebug6 = [(PGMeaningfulEventCriteria *)self isDebug];

    if (!isDebug6)
    {
      v37 = 1;
LABEL_50:
      v199 = 0.0;
      goto LABEL_57;
    }
  }

  else
  {
  }

  minimumDurationTrait3 = [criteriaCopy minimumDurationTrait];
  [minimumDurationTrait3 value];
  v70 = v69;

  minimumDurationTrait4 = [(PGMeaningfulEventCriteria *)self minimumDurationTrait];
  [minimumDurationTrait4 value];
  v73 = v72;

  v74 = 1.0;
  if (isMatchingRequired9)
  {
    minimumDurationTrait5 = [criteriaCopy minimumDurationTrait];
    [minimumDurationTrait5 minimumScore];
    v74 = v76;
  }

  [criteriaCopy minimumScore];
  v78 = fmin(v73 / v70 / v74 * v77, 1.0);
  v199 = v78;
  if (isMatchingRequired9)
  {
    v39 = v39 + v78;
    ++v38;
    if (v73 / v70 < v74)
    {
      v37 = 1;
    }
  }

LABEL_57:
  maximumDurationTrait2 = [criteriaCopy maximumDurationTrait];
  if (![maximumDurationTrait2 isActive])
  {

    goto LABEL_62;
  }

  if (v37)
  {
    isDebug7 = [(PGMeaningfulEventCriteria *)self isDebug];

    if (!isDebug7)
    {
      v37 = 1;
LABEL_62:
      [criteriaCopy peopleTrait];
      goto LABEL_70;
    }
  }

  else
  {
  }

  maximumDurationTrait3 = [criteriaCopy maximumDurationTrait];
  [maximumDurationTrait3 value];
  v83 = v82;

  maximumDurationTrait4 = [(PGMeaningfulEventCriteria *)self maximumDurationTrait];
  [maximumDurationTrait4 value];
  v86 = v85;

  v87 = 1.0;
  if (isMatchingRequired10)
  {
    maximumDurationTrait5 = [criteriaCopy maximumDurationTrait];
    [maximumDurationTrait5 minimumScore];
    v87 = v89;
  }

  [criteriaCopy minimumScore];
  v90 = 1.0 - v86 / v83;
  v92 = fmin(v90 / v87 * v91, 1.0);
  if (isMatchingRequired10)
  {
    v39 = v39 + v92;
    ++v38;
    if (v90 < v87)
    {
      v37 = 1;
    }
  }

  [criteriaCopy peopleTrait];
  nodes = LABEL_70:;
  v94 = 0.0;
  reliableCopy = reliable;
  if ([nodes isActive])
  {
    if (v37)
    {
      isDebug8 = [(PGMeaningfulEventCriteria *)self isDebug];

      if (!isDebug8)
      {
        v37 = 1;
        goto LABEL_82;
      }
    }

    else
    {
    }

    peopleTrait2 = [criteriaCopy peopleTrait];
    nodes = [peopleTrait2 nodes];

    peopleTrait3 = [(PGMeaningfulEventCriteria *)self peopleTrait];
    nodes2 = [peopleTrait3 nodes];

    v99 = [nodes collectionByIntersecting:nodes2];
    v100 = [v99 count];
    v101 = [nodes count];
    v102 = 1.0;
    if (isMatchingRequired2)
    {
      peopleTrait4 = [criteriaCopy peopleTrait];
      [peopleTrait4 minimumScore];
      v102 = v104;
    }

    [criteriaCopy minimumScore];
    v105 = v100 / v101;
    v94 = fmin(v105 / v102 * v106, 1.0);
    if (isMatchingRequired2)
    {
      v39 = v39 + v94;
      ++v38;
      if (v105 < v102)
      {
        v37 = 1;
      }
    }

    [(PGMeaningfulEventCriteria *)self isDebug];

    reliable = reliableCopy;
  }

LABEL_82:
  socialGroupsTrait2 = [criteriaCopy socialGroupsTrait];
  v108 = 0.0;
  if ([socialGroupsTrait2 isActive])
  {
    if (v37)
    {
      isDebug9 = [(PGMeaningfulEventCriteria *)self isDebug];

      if (!isDebug9)
      {
        v37 = 1;
        goto LABEL_94;
      }
    }

    else
    {
    }

    socialGroupsTrait3 = [criteriaCopy socialGroupsTrait];
    socialGroupsTrait2 = [socialGroupsTrait3 nodes];

    socialGroupsTrait4 = [(PGMeaningfulEventCriteria *)self socialGroupsTrait];
    nodes3 = [socialGroupsTrait4 nodes];

    v113 = [socialGroupsTrait2 collectionByIntersecting:nodes3];
    v114 = [v113 count];
    v115 = [socialGroupsTrait2 count];
    v116 = 1.0;
    if (isMatchingRequired3)
    {
      socialGroupsTrait5 = [criteriaCopy socialGroupsTrait];
      [socialGroupsTrait5 minimumScore];
      v116 = v118;
    }

    [criteriaCopy minimumScore];
    v119 = v114 / v115;
    v108 = fmin(v119 / v116 * v120, 1.0);
    if (isMatchingRequired3)
    {
      v39 = v39 + v108;
      ++v38;
      if (v119 < v116)
      {
        v37 = 1;
      }
    }

    [(PGMeaningfulEventCriteria *)self isDebug];

    reliable = reliableCopy;
  }

LABEL_94:
  locationsTrait2 = [criteriaCopy locationsTrait];
  if ([locationsTrait2 isActive])
  {
    if (v37)
    {
      isDebug10 = [(PGMeaningfulEventCriteria *)self isDebug];

      if (!isDebug10)
      {
        v37 = 1;
        goto LABEL_104;
      }
    }

    else
    {
    }

    locationsTrait3 = [criteriaCopy locationsTrait];
    [locationsTrait3 minimumScore];
    v125 = v124;

    v244 = 0;
    v245 = &v244;
    v246 = 0x2020000000;
    v247 = 0;
    locationsTrait4 = [(PGMeaningfulEventCriteria *)self locationsTrait];
    locationsTrait5 = [criteriaCopy locationsTrait];
    v238[0] = MEMORY[0x277D85DD0];
    v238[1] = 3221225472;
    v238[2] = __81__PGMeaningfulEventMatchingCriteria_matchingScoreWithCriteria_failed_isReliable___block_invoke;
    v238[3] = &unk_278881FA8;
    v243 = isMatchingRequired4;
    v242 = v125;
    v240 = &v244;
    v241 = &v264;
    v239 = criteriaCopy;
    [(PGMeaningfulEventMatchingCriteria *)self _calculateMatchingScoreForLocationsWithMatchingTrait:locationsTrait4 requiredTrait:locationsTrait5 result:v238];

    if (isMatchingRequired4)
    {
      v39 = v39 + v265[3];
      ++v38;
      if (v245[3] < v125)
      {
        v37 = 1;
      }
    }

    _Block_object_dispose(&v244, 8);
  }

  else
  {
  }

LABEL_104:
  datesTrait2 = [criteriaCopy datesTrait];
  v129 = 0.0;
  if ([datesTrait2 isActive])
  {
    if (v37)
    {
      isDebug11 = [(PGMeaningfulEventCriteria *)self isDebug];

      if (!isDebug11)
      {
        v37 = 1;
        goto LABEL_119;
      }
    }

    else
    {
    }

    datesTrait3 = [criteriaCopy datesTrait];
    datesTrait2 = [datesTrait3 nodes];

    datesTrait4 = [(PGMeaningfulEventCriteria *)self datesTrait];
    nodes4 = [datesTrait4 nodes];

    v134 = [datesTrait2 collectionByIntersecting:nodes4];
    v135 = 1.0;
    if ([v134 count])
    {
      v136 = 1.0;
    }

    else
    {
      v136 = 0.0;
    }

    if (isMatchingRequired5)
    {
      datesTrait5 = [criteriaCopy datesTrait];
      [datesTrait5 minimumScore];
      v135 = v138;
    }

    [criteriaCopy minimumScore];
    v129 = fmin(v136 / v135 * v139, 1.0);
    if (isMatchingRequired5)
    {
      v39 = v39 + v129;
      ++v38;
      if (v136 < v135)
      {
        v37 = 1;
      }
    }

    reliable = reliableCopy;
  }

LABEL_119:
  scenesTrait2 = [criteriaCopy scenesTrait];
  if ([scenesTrait2 isActive])
  {
    if (v37)
    {
      isDebug12 = [(PGMeaningfulEventCriteria *)self isDebug];

      if (!isDebug12)
      {
        v37 = 1;
        goto LABEL_129;
      }
    }

    else
    {
    }

    scenesTrait3 = [criteriaCopy scenesTrait];
    [scenesTrait3 minimumScore];
    v144 = v143;

    v244 = 0;
    v245 = &v244;
    v246 = 0x2020000000;
    v247 = 0;
    v231[0] = MEMORY[0x277D85DD0];
    v231[1] = 3221225472;
    v231[2] = __81__PGMeaningfulEventMatchingCriteria_matchingScoreWithCriteria_failed_isReliable___block_invoke_2;
    v231[3] = &unk_278881FD0;
    v236 = v144;
    v233 = &v248;
    v234 = &v244;
    v237 = isMatchingRequired6;
    v235 = &v260;
    v232 = criteriaCopy;
    [(PGMeaningfulEventMatchingCriteria *)self _calculateMatchingScoreForScenesWithRequiredCriteria:v232 result:v231];
    if (isMatchingRequired6)
    {
      v39 = v39 + v261[3];
      ++v38;
      if (v245[3] < v144)
      {
        v37 = 1;
      }
    }

    _Block_object_dispose(&v244, 8);
  }

  else
  {
  }

LABEL_129:
  roisTrait2 = [criteriaCopy roisTrait];
  if ([roisTrait2 isActive])
  {
    if (v37)
    {
      isDebug13 = [(PGMeaningfulEventCriteria *)self isDebug];

      if (!isDebug13)
      {
        v37 = 1;
        goto LABEL_139;
      }
    }

    else
    {
    }

    roisTrait3 = [criteriaCopy roisTrait];
    [roisTrait3 minimumScore];
    v149 = v148;

    v244 = 0;
    v245 = &v244;
    v246 = 0x2020000000;
    v247 = 0;
    roisTrait4 = [(PGMeaningfulEventCriteria *)self roisTrait];
    roisTrait5 = [criteriaCopy roisTrait];
    v225[0] = MEMORY[0x277D85DD0];
    v225[1] = 3221225472;
    v225[2] = __81__PGMeaningfulEventMatchingCriteria_matchingScoreWithCriteria_failed_isReliable___block_invoke_3;
    v225[3] = &unk_278881FA8;
    v230 = isMatchingRequired7;
    v229 = v149;
    v227 = &v244;
    v228 = &v256;
    v226 = criteriaCopy;
    [(PGMeaningfulEventMatchingCriteria *)self _calculateMatchingScoreForPOIROIWithMatchingTrait:roisTrait4 requiredTrait:roisTrait5 result:v225];

    if (isMatchingRequired7)
    {
      v39 = v39 + v257[3];
      ++v38;
      if (v245[3] < v149)
      {
        v37 = 1;
      }
    }

    _Block_object_dispose(&v244, 8);
  }

  else
  {
  }

LABEL_139:
  poisTrait2 = [criteriaCopy poisTrait];
  if ([poisTrait2 isActive])
  {
    if (v37)
    {
      isDebug14 = [(PGMeaningfulEventCriteria *)self isDebug];

      if (!isDebug14)
      {
        v37 = 1;
        goto LABEL_149;
      }
    }

    else
    {
    }

    poisTrait3 = [criteriaCopy poisTrait];
    [poisTrait3 minimumScore];
    v156 = v155;

    v244 = 0;
    v245 = &v244;
    v246 = 0x2020000000;
    v247 = 0;
    poisTrait4 = [(PGMeaningfulEventCriteria *)self poisTrait];
    poisTrait5 = [criteriaCopy poisTrait];
    v219[0] = MEMORY[0x277D85DD0];
    v219[1] = 3221225472;
    v219[2] = __81__PGMeaningfulEventMatchingCriteria_matchingScoreWithCriteria_failed_isReliable___block_invoke_4;
    v219[3] = &unk_278881FA8;
    v224 = isMatchingRequired8;
    v223 = v156;
    v221 = &v244;
    v222 = &v252;
    v220 = criteriaCopy;
    [(PGMeaningfulEventMatchingCriteria *)self _calculateMatchingScoreForPOIROIWithMatchingTrait:poisTrait4 requiredTrait:poisTrait5 result:v219];

    if (isMatchingRequired8)
    {
      v39 = v39 + v253[3];
      ++v38;
      if (v245[3] < v156)
      {
        v37 = 1;
      }
    }

    _Block_object_dispose(&v244, 8);
  }

  else
  {
  }

LABEL_149:
  publicEventCategoriesTrait2 = [criteriaCopy publicEventCategoriesTrait];
  v160 = 0.0;
  if ([publicEventCategoriesTrait2 isActive])
  {
    if (v37)
    {
      isDebug15 = [(PGMeaningfulEventCriteria *)self isDebug];

      if (!isDebug15)
      {
        v37 = 1;
        if (!v38)
        {
          goto LABEL_153;
        }

LABEL_163:
        v162 = v39 / v38;
        if (!v37)
        {
          goto LABEL_165;
        }

LABEL_164:
        if (![(PGMeaningfulEventCriteria *)self isDebug])
        {
          goto LABEL_220;
        }

        goto LABEL_165;
      }
    }

    else
    {
    }

    publicEventCategoriesTrait3 = [criteriaCopy publicEventCategoriesTrait];
    publicEventCategoriesTrait2 = [publicEventCategoriesTrait3 nodes];

    publicEventCategoriesTrait4 = [(PGMeaningfulEventCriteria *)self publicEventCategoriesTrait];
    nodes5 = [publicEventCategoriesTrait4 nodes];

    v166 = [publicEventCategoriesTrait2 collectionByIntersecting:nodes5];
    v167 = [v166 count];
    v168 = [publicEventCategoriesTrait2 count];
    v169 = 1.0;
    if (isMatchingRequired14)
    {
      publicEventCategoriesTrait5 = [criteriaCopy publicEventCategoriesTrait];
      [publicEventCategoriesTrait5 minimumScore];
      v169 = v171;
    }

    [criteriaCopy minimumScore];
    v172 = v167 / v168;
    v160 = fmin(v172 / v169 * v173, 1.0);
    if (isMatchingRequired14)
    {
      v39 = v39 + v160;
      ++v38;
      if (v172 < v169)
      {
        v37 = 1;
      }
    }

    reliable = reliableCopy;
  }

  if (v38)
  {
    goto LABEL_163;
  }

LABEL_153:
  v162 = 0.0;
  if (v37)
  {
    goto LABEL_164;
  }

LABEL_165:
  numberOfPeopleTrait6 = [criteriaCopy numberOfPeopleTrait];
  if (isMatchingRequired & 1 | (([numberOfPeopleTrait6 isActive] & 1) == 0))
  {
  }

  else
  {

    v175 = v200;
    if (v200 >= v162)
    {
      v39 = v200 + v39;
      ++v38;
    }
  }

  peopleTrait5 = [criteriaCopy peopleTrait];
  if (isMatchingRequired2 & 1 | (([peopleTrait5 isActive] & 1) == 0))
  {
  }

  else
  {

    if (v94 >= v162)
    {
      v39 = v94 + v39;
      ++v38;
    }
  }

  socialGroupsTrait6 = [criteriaCopy socialGroupsTrait];
  if (isMatchingRequired3 & 1 | (([socialGroupsTrait6 isActive] & 1) == 0))
  {
  }

  else
  {

    if (v108 >= v162)
    {
      v39 = v108 + v39;
      ++v38;
    }
  }

  locationsTrait6 = [criteriaCopy locationsTrait];
  if (isMatchingRequired4 & 1 | (([locationsTrait6 isActive] & 1) == 0))
  {
  }

  else
  {
    v179 = v265[3];

    if (v179 >= v162)
    {
      v39 = v39 + v265[3];
      ++v38;
    }
  }

  datesTrait6 = [criteriaCopy datesTrait];
  if (isMatchingRequired5 & 1 | (([datesTrait6 isActive] & 1) == 0))
  {
  }

  else
  {

    if (v129 >= v162)
    {
      v39 = v129 + v39;
      ++v38;
    }
  }

  scenesTrait4 = [criteriaCopy scenesTrait];
  if (isMatchingRequired6 & 1 | (([scenesTrait4 isActive] & 1) == 0))
  {
  }

  else
  {
    v182 = v261[3];

    if (v182 >= v162)
    {
      v39 = v39 + v261[3];
      ++v38;
    }
  }

  roisTrait6 = [criteriaCopy roisTrait];
  if (isMatchingRequired7 & 1 | (([roisTrait6 isActive] & 1) == 0))
  {
  }

  else
  {
    v184 = v257[3];

    if (v184 >= v162)
    {
      v39 = v39 + v257[3];
      ++v38;
    }
  }

  poisTrait6 = [criteriaCopy poisTrait];
  if (isMatchingRequired8 & 1 | (([poisTrait6 isActive] & 1) == 0))
  {
  }

  else
  {
    v186 = v253[3];

    if (v186 >= v162)
    {
      v39 = v39 + v253[3];
      ++v38;
    }
  }

  minimumDurationTrait6 = [criteriaCopy minimumDurationTrait];
  if (isMatchingRequired9 & 1 | (([minimumDurationTrait6 isActive] & 1) == 0))
  {
  }

  else
  {

    v188 = v199;
    if (v199 >= v162)
    {
      v39 = v199 + v39;
      ++v38;
    }
  }

  maximumDurationTrait6 = [criteriaCopy maximumDurationTrait];
  if (isMatchingRequired10 & 1 | (([maximumDurationTrait6 isActive] & 1) == 0))
  {
  }

  else
  {

    v190 = v198;
    if (v198 >= v162)
    {
      v39 = v198 + v39;
      ++v38;
    }
  }

  significantPartsOfDayTrait5 = [criteriaCopy significantPartsOfDayTrait];
  if (isMatchingRequired11 & 1 | (([significantPartsOfDayTrait5 isActive] & 1) == 0))
  {
  }

  else
  {

    v192 = v203;
    if (v203 >= v162)
    {
      v39 = v203 + v39;
      ++v38;
    }
  }

  allPartsOfDayTrait5 = [criteriaCopy allPartsOfDayTrait];
  if (isMatchingRequired12 & 1 | (([allPartsOfDayTrait5 isActive] & 1) == 0))
  {
  }

  else
  {

    v194 = v202;
    if (v202 >= v162)
    {
      v39 = v202 + v39;
      ++v38;
    }
  }

  locationMobilityTrait4 = [criteriaCopy locationMobilityTrait];
  if (isMatchingRequired13 & 1 | (([locationMobilityTrait4 isActive] & 1) == 0))
  {
  }

  else
  {

    if (v41 >= v162)
    {
      v39 = v41 + v39;
      ++v38;
    }
  }

  publicEventCategoriesTrait6 = [criteriaCopy publicEventCategoriesTrait];
  if (isMatchingRequired14 & 1 | (([publicEventCategoriesTrait6 isActive] & 1) == 0))
  {
  }

  else
  {

    if (v160 >= v162)
    {
      v39 = v160 + v39;
      ++v38;
      goto LABEL_223;
    }
  }

LABEL_220:
  if (v38)
  {
LABEL_223:
    v39 = v39 / v38;
  }

  if (failed)
  {
    *failed = v37;
  }

  if (reliable)
  {
    *reliable = *(v249 + 24);
  }

  _Block_object_dispose(&v248, 8);
  _Block_object_dispose(&v252, 8);
  _Block_object_dispose(&v256, 8);
  _Block_object_dispose(&v260, 8);
  _Block_object_dispose(&v264, 8);

  return v39;
}

double __81__PGMeaningfulEventMatchingCriteria_matchingScoreWithCriteria_failed_isReliable___block_invoke(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v3 = 1.0;
  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
  }

  v4 = *(*(*(a1 + 40) + 8) + 24) / v3;
  [*(a1 + 32) minimumScore];
  result = fmin(v4 * v5, 1.0);
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

double __81__PGMeaningfulEventMatchingCriteria_matchingScoreWithCriteria_failed_isReliable___block_invoke_2(uint64_t a1, double a2, double a3)
{
  *(*(*(a1 + 40) + 8) + 24) = *(a1 + 64) <= a3;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    a2 = a3;
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  v4 = 1.0;
  if (*(a1 + 72) == 1)
  {
    v4 = *(a1 + 64);
  }

  v5 = *(*(*(a1 + 48) + 8) + 24) / v4;
  [*(a1 + 32) minimumScore];
  result = fmin(v5 * v6, 1.0);
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

double __81__PGMeaningfulEventMatchingCriteria_matchingScoreWithCriteria_failed_isReliable___block_invoke_3(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v3 = 1.0;
  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
  }

  v4 = *(*(*(a1 + 40) + 8) + 24) / v3;
  [*(a1 + 32) minimumScore];
  result = fmin(v4 * v5, 1.0);
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

double __81__PGMeaningfulEventMatchingCriteria_matchingScoreWithCriteria_failed_isReliable___block_invoke_4(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v3 = 1.0;
  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
  }

  v4 = *(*(*(a1 + 40) + 8) + 24) / v3;
  [*(a1 + 32) minimumScore];
  result = fmin(v4 * v5, 1.0);
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)matchingResultWithCriteria:(id)criteria
{
  v38 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  if ([(PGMeaningfulEventCriteria *)self isDebug])
  {
    isDebug = 1;
  }

  else
  {
    isDebug = [criteriaCopy isDebug];
  }

  [(PGMeaningfulEventCriteria *)self setDebug:isDebug];
  v23 = 0;
  [criteriaCopy minimumScore];
  v7 = v6;
  interestingForMeaningInference = self->_interestingForMeaningInference;
  mustBeInteresting = [criteriaCopy mustBeInteresting];
  v10 = mustBeInteresting;
  if (interestingForMeaningInference || !mustBeInteresting)
  {
    [(PGMeaningfulEventMatchingCriteria *)self matchingScoreWithCriteria:criteriaCopy failed:&v23 + 1 isReliable:&v23];
    v12 = v13;
    if (HIBYTE(v23))
    {
      v11 = 0;
    }

    else
    {
      v11 = v13 >= v7;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0.0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    name = [(PGGraphMomentNode *)self->_momentNode name];
    v19 = @"NO";
    *buf = 138413826;
    v25 = name;
    if (v11)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v27 = v20;
    if (HIBYTE(v23))
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v26 = 2112;
    if (v10)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v28 = 2112;
    if (interestingForMeaningInference)
    {
      v19 = @"YES";
    }

    v29 = v21;
    v30 = 2048;
    v31 = v12;
    v32 = 2048;
    v33 = v7;
    v34 = 2112;
    v35 = v22;
    v36 = 2112;
    v37 = v19;
    _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[MeaningInference] [%@] isMatching %@, traitFailed %@, score %.2f of %.2f, requiresInteresting %@, isInteresting %@", buf, 0x48u);
  }

  v14 = [PGMeaningfulEventMatchingResult alloc];
  v15 = [(PGMeaningfulEventMatchingResult *)v14 initWithIsMatching:v11 score:v23 isReliable:criteriaCopy requiredCriteria:v12];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (PGMeaningfulEventMatchingCriteria)initWithMoment:(id)moment cache:(id)cache serviceManager:(id)manager
{
  v95 = *MEMORY[0x277D85DE8];
  momentCopy = moment;
  cacheCopy = cache;
  managerCopy = manager;
  graph = [momentCopy graph];
  v92.receiver = self;
  v92.super_class = PGMeaningfulEventMatchingCriteria;
  v12 = [(PGMeaningfulEventCriteria *)&v92 initWithGraph:graph];

  if (v12)
  {
    momentCopy2 = moment;
    v71 = v12;
    objc_storeStrong(&v12->_cache, cache);
    collection = [momentCopy collection];
    universalStartDate = [momentCopy universalStartDate];
    v76 = momentCopy;
    universalEndDate = [momentCopy universalEndDate];
    v79 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:universalStartDate endDate:universalEndDate];
    v16 = universalStartDate;
    v17 = universalEndDate;
    v72 = cacheCopy;
    v75 = collection;
    [cacheCopy preciseAddressNodesForMomentNodes:collection];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v69 = v91 = 0u;
    obj = [v69 locations];
    v73 = v17;
    v74 = v16;
    v18 = v16;
    v81 = [obj countByEnumeratingWithState:&v88 objects:v94 count:16];
    if (v81)
    {
      v78 = *v89;
      v18 = v16;
      do
      {
        v19 = 0;
        do
        {
          if (*v89 != v78)
          {
            objc_enumerationMutation(obj);
          }

          v82 = v19;
          v20 = [managerCopy fetchLocationOfInterestVisitsAtLocation:*(*(&v88 + 1) + 8 * v19) inDateInterval:v79];
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v83 = v20;
          v21 = [v20 countByEnumeratingWithState:&v84 objects:v93 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v85;
            do
            {
              v24 = 0;
              v25 = v17;
              v26 = v18;
              do
              {
                if (*v85 != v23)
                {
                  objc_enumerationMutation(v83);
                }

                visitInterval = [*(*(&v84 + 1) + 8 * v24) visitInterval];
                startDate = [visitInterval startDate];
                endDate = [visitInterval endDate];
                v18 = [v26 earlierDate:startDate];

                v17 = [v25 laterDate:endDate];

                ++v24;
                v25 = v17;
                v26 = v18;
              }

              while (v22 != v24);
              v22 = [v83 countByEnumeratingWithState:&v84 objects:v93 count:16];
            }

            while (v22);
          }

          v19 = v82 + 1;
        }

        while (v82 + 1 != v81);
        v81 = [obj countByEnumeratingWithState:&v88 objects:v94 count:16];
      }

      while (v81);
    }

    [v17 timeIntervalSinceDate:v18];
    v31 = v30;
    v32 = -[PGMeaningfulEventNumberTrait initWithNumberValue:]([PGMeaningfulEventNumberTrait alloc], "initWithNumberValue:", [v76 totalNumberOfPersons]);
    v12 = v71;
    [(PGMeaningfulEventCriteria *)v71 setNumberOfPeopleTrait:v32];

    v33 = [PGMeaningfulEventCollectionTrait alloc];
    cacheCopy = v72;
    v34 = [v72 peopleNodesForMomentNodes:v75];
    v35 = [(PGMeaningfulEventCollectionTrait *)v33 initWithNodes:v34];
    [(PGMeaningfulEventCriteria *)v71 setPeopleTrait:v35];

    v36 = [PGMeaningfulEventCollectionTrait alloc];
    v37 = [v72 socialGroupNodesForMomentNodes:v75];
    v38 = [(PGMeaningfulEventCollectionTrait *)v36 initWithNodes:v37];
    [(PGMeaningfulEventCriteria *)v71 setSocialGroupsTrait:v38];

    v39 = [PGMeaningfulEventCollectionTrait alloc];
    v40 = [v72 dateNodesForMomentNodes:v75];
    v41 = [(PGMeaningfulEventCollectionTrait *)v39 initWithNodes:v40];
    [(PGMeaningfulEventCriteria *)v71 setDatesTrait:v41];

    v42 = [PGMeaningfulEventLocationCollectionTrait alloc];
    v43 = [v72 addressNodesForMomentNodes:v75];
    v44 = [(PGMeaningfulEventCollectionTrait *)v42 initWithNodes:v43];
    [(PGMeaningfulEventCriteria *)v71 setLocationsTrait:v44];

    v45 = [PGMeaningfulEventCollectionTrait alloc];
    v46 = [v72 roiNodesWithNonzeroConfidenceForMomentNodes:v75];
    v47 = [(PGMeaningfulEventCollectionTrait *)v45 initWithNodes:v46];
    [(PGMeaningfulEventCriteria *)v71 setRoisTrait:v47];

    v48 = [PGMeaningfulEventCollectionTrait alloc];
    v49 = [v72 poiNodesWithNonzeroConfidenceForMomentNodes:v75];
    v50 = [(PGMeaningfulEventCollectionTrait *)v48 initWithNodes:v49];
    [(PGMeaningfulEventCriteria *)v71 setPoisTrait:v50];

    v51 = [PGMeaningfulEventSceneCollectionTrait alloc];
    v52 = [v72 sceneNodesForMomentNodes:v75];
    v53 = [(PGMeaningfulEventSceneCollectionTrait *)v51 initWithNodes:v52];
    [(PGMeaningfulEventCriteria *)v71 setScenesTrait:v53];

    v54 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:v31];
    [(PGMeaningfulEventCriteria *)v71 setMinimumDurationTrait:v54];

    v55 = [[PGMeaningfulEventNumberTrait alloc] initWithNumberValue:v31];
    [(PGMeaningfulEventCriteria *)v71 setMaximumDurationTrait:v55];

    v56 = -[PGMeaningfulEventPartOfDayTrait initWithPartOfDay:]([PGMeaningfulEventPartOfDayTrait alloc], "initWithPartOfDay:", [v72 significantPartsOfDayForMomentNodes:v75]);
    [(PGMeaningfulEventCriteria *)v71 setSignificantPartsOfDayTrait:v56];

    v57 = -[PGMeaningfulEventPartOfDayTrait initWithPartOfDay:]([PGMeaningfulEventPartOfDayTrait alloc], "initWithPartOfDay:", [v72 partsOfDayForMomentNodes:v75]);
    [(PGMeaningfulEventCriteria *)v71 setAllPartsOfDayTrait:v57];

    v58 = [v72 mobilityNodesForMomentNodes:v75];
    locationMobilityTypes = [v58 locationMobilityTypes];
    firstObject = [locationMobilityTypes firstObject];
    unsignedIntegerValue = [firstObject unsignedIntegerValue];

    v62 = [[PGMeaningfulEventLocationMobilityTrait alloc] initWithMobility:unsignedIntegerValue];
    [(PGMeaningfulEventCriteria *)v71 setLocationMobilityTrait:v62];

    v63 = [PGMeaningfulEventCollectionTrait alloc];
    v64 = [v72 publicEventCategoryNodesForMomentNodes:v75];
    v65 = [(PGMeaningfulEventCollectionTrait *)v63 initWithNodes:v64];
    [(PGMeaningfulEventCriteria *)v71 setPublicEventCategoriesTrait:v65];

    objc_storeStrong(&v71->_momentNode, momentCopy2);
    if ([(PGGraphMomentNode *)v71->_momentNode isInteresting])
    {
      isSmartInteresting = 1;
    }

    else
    {
      isSmartInteresting = [(PGGraphMomentNode *)v71->_momentNode isSmartInteresting];
    }

    v71->_interestingForMeaningInference = isSmartInteresting;

    momentCopy = v76;
  }

  v67 = *MEMORY[0x277D85DE8];
  return v12;
}

@end