@interface PGMeaningfulEventMatchingCriteria
- (PGMeaningfulEventMatchingCriteria)initWithMoment:(id)a3 cache:(id)a4 serviceManager:(id)a5;
- (double)_calculateMatchingScoreForPartOfDayWithMatchingTrait:(id)a3 requiredTrait:(id)a4 requiresStrictMatching:(BOOL)a5;
- (double)matchingScoreWithCriteria:(id)a3 failed:(BOOL *)a4 isReliable:(BOOL *)a5;
- (id)debugDescription;
- (id)matchingResultWithCriteria:(id)a3;
- (void)_calculateMatchingScoreForLocationsWithMatchingTrait:(id)a3 requiredTrait:(id)a4 result:(id)a5;
- (void)_calculateMatchingScoreForPOIROIWithMatchingTrait:(id)a3 requiredTrait:(id)a4 result:(id)a5;
- (void)_calculateMatchingScoreForScenesWithRequiredCriteria:(id)a3 result:(id)a4;
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

- (double)_calculateMatchingScoreForPartOfDayWithMatchingTrait:(id)a3 requiredTrait:(id)a4 requiresStrictMatching:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [a3 value];
  v9 = [v7 value];
  v10 = [v7 forbiddenValue];
  if (v10 == 1 || (v12 = 0.0, (v8 & v10 & 0x3F) == 0))
  {
    v11.i32[0] = v9 & v8 & 0x3F;
    v13 = vcnt_s8(v11);
    v13.i16[0] = vaddlv_u8(v13);
    v14 = v13.u32[0];
    v13.i32[0] = v8 & 0x3F;
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

    if (v5)
    {
      v14 = v16;
    }

    v12 = v14;
  }

  v17 = [v7 isMatchingRequired];
  v18 = 1.0;
  if (v17)
  {
    [v7 minimumScore];
  }

  v19 = fmin(v12 / v18, 1.0);

  return v19;
}

- (void)_calculateMatchingScoreForLocationsWithMatchingTrait:(id)a3 requiredTrait:(id)a4 result:(id)a5
{
  v23 = a4;
  v8 = a5;
  v9 = [a3 nodes];
  v10 = [v23 nodes];
  v11 = [v23 negativeNodes];
  v12 = [v9 count];
  v13 = [v11 count];
  v14 = [v23 useStrictNegativeNodesMatching];
  if (v13)
  {
    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = 1;
    }

    v16 = [v11 collectionByIntersecting:v9];
    v17 = [v16 count];
    if (v17 && v17 >= v15)
    {
      [(PGMeaningfulEventCriteria *)self isDebug];
      v18.n128_u64[0] = 0;
      v8[2](v8, v18);
LABEL_11:

      goto LABEL_16;
    }
  }

  if ([v10 count])
  {
    v16 = [v10 collectionByIntersecting:v9];
    v20 = [v16 count] / v12;
    [(PGMeaningfulEventCriteria *)self isDebug];
    v21.n128_f64[0] = v20;
    v8[2](v8, v21);
    goto LABEL_11;
  }

  v19.n128_u64[0] = 1.0;
  if (!v12)
  {
    v22 = [v23 skipNegativeRequirementForMissingLocation];
    v19.n128_u64[0] = 0;
    if (v22)
    {
      v19.n128_f64[0] = 1.0;
    }
  }

  v8[2](v8, v19);
LABEL_16:
}

- (void)_calculateMatchingScoreForPOIROIWithMatchingTrait:(id)a3 requiredTrait:(id)a4 result:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 nodes];
  v11 = [v8 nodes];
  v12 = [v8 negativeNodes];
  v13 = [v11 count];
  v14 = self->_momentNode;
  if ([v12 count])
  {
    v15 = [v12 collectionByIntersecting:v10];
    v16 = [v15 count];
    if (v16)
    {
      if (![(PGMeaningfulEventCriteria *)self isDebug])
      {
        v9[2](v9, 0.0);

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
  v24 = self;
  v25 = v8;
  v26 = v14;
  v17 = v10;
  v27 = v17;
  v18 = _Block_copy(&v20);
  v19 = [v11 collectionByIntersecting:{v17, v20, v21, v22, v23, v24}];
  v18[2](v18, v19);
  if (v9)
  {
    (v9[2])(v9);
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

- (void)_calculateMatchingScoreForScenesWithRequiredCriteria:(id)a3 result:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PGMeaningfulEventCriteria *)self scenesTrait];
  v42 = v6;
  v9 = [v6 scenesTrait];
  v41 = v8;
  v10 = [v8 nodes];
  v11 = [v9 nodes];
  v12 = [v9 negativeNodes];
  v40 = v11;
  v13 = [v11 count];
  v14 = [v9 accumulateHighConfidenceAssetCounts];
  v15 = self->_momentNode;
  v16 = [(PGMeaningfulEventCriteria *)self isDebug];
  v43 = v15;
  v44 = v10;
  v39 = v12;
  if ([v12 count])
  {
    v17 = [v12 collectionByIntersecting:v10];
    v18 = [(PGGraphMomentNode *)v15 collection];
    v19 = +[PGGraphSceneEdge filterWithMinimumNumberOfHighConfidenceAssets:](PGGraphSceneEdge, "filterWithMinimumNumberOfHighConfidenceAssets:", [v9 minimumNumberOfNegativeHighConfidenceAssets]);
    v20 = [(MAEdgeCollection *)PGGraphSceneEdgeCollection edgesFromNodes:v18 toNodes:v17 matchingFilter:v19];

    if ([v20 count])
    {
      v21 = v42;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v36 = [(PGMeaningfulEventMatchingCriteria *)self momentNode];
        v37 = [v36 name];
        v38 = [v42 identifier];
        *buf = 138478083;
        v53 = v37;
        v54 = 2114;
        v55 = v38;
        _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[MeaningInference] Moment %{private}@ matched negative scenes for identifier %{public}@", buf, 0x16u);
      }

      v7[2](v7, 0.0, 0.0);

      v22 = v40;
      goto LABEL_12;
    }

    v15 = v43;
    v10 = v44;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__PGMeaningfulEventMatchingCriteria__calculateMatchingScoreForScenesWithRequiredCriteria_result___block_invoke;
  aBlock[3] = &unk_278882040;
  v49 = v13;
  v50 = v16;
  v23 = v15;
  v46 = v23;
  v47 = v9;
  v51 = v14;
  v24 = v10;
  v48 = v24;
  v25 = _Block_copy(aBlock);
  v22 = v40;
  v26 = [v40 collectionByIntersecting:v24];
  cache = self->_cache;
  v28 = [(PGGraphMomentNode *)v23 collection];
  v29 = [(PGMeaningfulEventProcessorCache *)cache reliableSceneNodesForMomentNodes:v28];
  v30 = [v26 collectionByIntersecting:v29];

  v31 = v25[2](v25, v26);
  v32 = [v26 count];
  v33 = [v30 count];
  v34.n128_f64[0] = v31;
  if (v32 != v33)
  {
    v34.n128_u64[0] = v25[2](v25, v30);
  }

  if (v7)
  {
    (v7[2])(v7, v31, v34);
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

- (double)matchingScoreWithCriteria:(id)a3 failed:(BOOL *)a4 isReliable:(BOOL *)a5
{
  v7 = a3;
  v8 = [(PGMeaningfulEventCriteria *)self isDebug];
  v9 = 1;
  if (!v8)
  {
    v9 = [v7 isDebug];
  }

  [(PGMeaningfulEventCriteria *)self setDebug:v9];
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
  v10 = [v7 numberOfPeopleTrait];
  v218 = [v10 isMatchingRequired];

  v11 = [v7 peopleTrait];
  v217 = [v11 isMatchingRequired];

  v12 = [v7 socialGroupsTrait];
  v216 = [v12 isMatchingRequired];

  v13 = [v7 locationsTrait];
  v215 = [v13 isMatchingRequired];

  v14 = [v7 datesTrait];
  v212 = [v14 isMatchingRequired];

  v15 = [v7 scenesTrait];
  v206 = [v15 isMatchingRequired];

  v16 = [v7 roisTrait];
  v210 = [v16 isMatchingRequired];

  v17 = [v7 poisTrait];
  v209 = [v17 isMatchingRequired];

  v18 = [v7 minimumDurationTrait];
  v214 = [v18 isMatchingRequired];

  v19 = [v7 maximumDurationTrait];
  v211 = [v19 isMatchingRequired];

  v20 = [v7 significantPartsOfDayTrait];
  v205 = [v20 isMatchingRequired];

  v21 = [v7 allPartsOfDayTrait];
  v204 = [v21 isMatchingRequired];

  v22 = [v7 locationMobilityTrait];
  v213 = [v22 isMatchingRequired];

  v23 = [v7 publicEventCategoriesTrait];
  v207 = [v23 isMatchingRequired];

  v24 = [v7 numberOfPeopleTrait];
  v25 = [v24 isActive];

  if (v25)
  {
    v26 = [v7 numberOfPeopleTrait];
    [v26 value];
    v28 = v27;

    v29 = [(PGMeaningfulEventCriteria *)self numberOfPeopleTrait];
    [v29 value];
    v31 = v30;

    v32 = 1.0;
    if (v218)
    {
      v33 = [v7 numberOfPeopleTrait];
      [v33 minimumScore];
      v32 = v34;
    }

    [v7 minimumScore];
    v35 = v31 / v28;
    v200 = fmin(v35 / v32 * v36, 1.0);
    if (v35 < v32)
    {
      v37 = v218;
    }

    else
    {
      v37 = 0;
    }

    v38 = v218;
    if (v218)
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

  v40 = [v7 locationMobilityTrait];
  v41 = 0.0;
  if ([v40 isActive])
  {
    if (v37)
    {
      v42 = [(PGMeaningfulEventCriteria *)self isDebug];

      if (!v42)
      {
        v37 = 1;
        goto LABEL_27;
      }
    }

    else
    {
    }

    v40 = [v7 locationMobilityTrait];
    v43 = [v40 value];
    v44 = [(PGMeaningfulEventCriteria *)self locationMobilityTrait];
    v45 = [v44 value];

    v46 = 1.0;
    if (v43 == v45)
    {
      v47 = 1.0;
    }

    else
    {
      v47 = 0.0;
    }

    if (v213)
    {
      [v40 minimumScore];
      v46 = v48;
    }

    [v7 minimumScore];
    v41 = fmin(v47 / v46 * v49, 1.0);
    if (v213)
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
  v50 = [v7 significantPartsOfDayTrait];
  v203 = 0.0;
  if (![v50 isActive])
  {
LABEL_35:

    goto LABEL_36;
  }

  if (v37)
  {
    v51 = [(PGMeaningfulEventCriteria *)self isDebug];

    if (!v51)
    {
      v37 = 1;
      v203 = 0.0;
      goto LABEL_36;
    }
  }

  else
  {
  }

  v52 = [(PGMeaningfulEventCriteria *)self significantPartsOfDayTrait];
  v53 = [v7 significantPartsOfDayTrait];
  [(PGMeaningfulEventMatchingCriteria *)self _calculateMatchingScoreForPartOfDayWithMatchingTrait:v52 requiredTrait:v53 requiresStrictMatching:0];
  v55 = v54;

  [v7 minimumScore];
  v203 = fmin(v55 * v56, 1.0);
  if (v205)
  {
    v50 = [v7 significantPartsOfDayTrait];
    [v50 minimumScore];
    v39 = v39 + v203;
    ++v38;
    if (v55 < v57)
    {
      v37 = 1;
    }

    goto LABEL_35;
  }

LABEL_36:
  v58 = [v7 allPartsOfDayTrait];
  v202 = 0.0;
  if (![v58 isActive])
  {
LABEL_44:

    goto LABEL_45;
  }

  if (v37)
  {
    v59 = [(PGMeaningfulEventCriteria *)self isDebug];

    if (!v59)
    {
      v37 = 1;
      v202 = 0.0;
      goto LABEL_45;
    }
  }

  else
  {
  }

  v60 = [(PGMeaningfulEventCriteria *)self allPartsOfDayTrait];
  v61 = [v7 allPartsOfDayTrait];
  [(PGMeaningfulEventMatchingCriteria *)self _calculateMatchingScoreForPartOfDayWithMatchingTrait:v60 requiredTrait:v61 requiresStrictMatching:0];
  v63 = v62;

  [v7 minimumScore];
  v202 = fmin(v63 * v64, 1.0);
  if (v204)
  {
    v58 = [v7 allPartsOfDayTrait];
    [v58 minimumScore];
    v39 = v39 + v202;
    ++v38;
    if (v63 < v65)
    {
      v37 = 1;
    }

    goto LABEL_44;
  }

LABEL_45:
  v66 = [v7 minimumDurationTrait];
  if (![v66 isActive])
  {

    goto LABEL_50;
  }

  if (v37)
  {
    v67 = [(PGMeaningfulEventCriteria *)self isDebug];

    if (!v67)
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

  v68 = [v7 minimumDurationTrait];
  [v68 value];
  v70 = v69;

  v71 = [(PGMeaningfulEventCriteria *)self minimumDurationTrait];
  [v71 value];
  v73 = v72;

  v74 = 1.0;
  if (v214)
  {
    v75 = [v7 minimumDurationTrait];
    [v75 minimumScore];
    v74 = v76;
  }

  [v7 minimumScore];
  v78 = fmin(v73 / v70 / v74 * v77, 1.0);
  v199 = v78;
  if (v214)
  {
    v39 = v39 + v78;
    ++v38;
    if (v73 / v70 < v74)
    {
      v37 = 1;
    }
  }

LABEL_57:
  v79 = [v7 maximumDurationTrait];
  if (![v79 isActive])
  {

    goto LABEL_62;
  }

  if (v37)
  {
    v80 = [(PGMeaningfulEventCriteria *)self isDebug];

    if (!v80)
    {
      v37 = 1;
LABEL_62:
      [v7 peopleTrait];
      goto LABEL_70;
    }
  }

  else
  {
  }

  v81 = [v7 maximumDurationTrait];
  [v81 value];
  v83 = v82;

  v84 = [(PGMeaningfulEventCriteria *)self maximumDurationTrait];
  [v84 value];
  v86 = v85;

  v87 = 1.0;
  if (v211)
  {
    v88 = [v7 maximumDurationTrait];
    [v88 minimumScore];
    v87 = v89;
  }

  [v7 minimumScore];
  v90 = 1.0 - v86 / v83;
  v92 = fmin(v90 / v87 * v91, 1.0);
  if (v211)
  {
    v39 = v39 + v92;
    ++v38;
    if (v90 < v87)
    {
      v37 = 1;
    }
  }

  [v7 peopleTrait];
  v93 = LABEL_70:;
  v94 = 0.0;
  v208 = a5;
  if ([v93 isActive])
  {
    if (v37)
    {
      v95 = [(PGMeaningfulEventCriteria *)self isDebug];

      if (!v95)
      {
        v37 = 1;
        goto LABEL_82;
      }
    }

    else
    {
    }

    v96 = [v7 peopleTrait];
    v93 = [v96 nodes];

    v97 = [(PGMeaningfulEventCriteria *)self peopleTrait];
    v98 = [v97 nodes];

    v99 = [v93 collectionByIntersecting:v98];
    v100 = [v99 count];
    v101 = [v93 count];
    v102 = 1.0;
    if (v217)
    {
      v103 = [v7 peopleTrait];
      [v103 minimumScore];
      v102 = v104;
    }

    [v7 minimumScore];
    v105 = v100 / v101;
    v94 = fmin(v105 / v102 * v106, 1.0);
    if (v217)
    {
      v39 = v39 + v94;
      ++v38;
      if (v105 < v102)
      {
        v37 = 1;
      }
    }

    [(PGMeaningfulEventCriteria *)self isDebug];

    a5 = v208;
  }

LABEL_82:
  v107 = [v7 socialGroupsTrait];
  v108 = 0.0;
  if ([v107 isActive])
  {
    if (v37)
    {
      v109 = [(PGMeaningfulEventCriteria *)self isDebug];

      if (!v109)
      {
        v37 = 1;
        goto LABEL_94;
      }
    }

    else
    {
    }

    v110 = [v7 socialGroupsTrait];
    v107 = [v110 nodes];

    v111 = [(PGMeaningfulEventCriteria *)self socialGroupsTrait];
    v112 = [v111 nodes];

    v113 = [v107 collectionByIntersecting:v112];
    v114 = [v113 count];
    v115 = [v107 count];
    v116 = 1.0;
    if (v216)
    {
      v117 = [v7 socialGroupsTrait];
      [v117 minimumScore];
      v116 = v118;
    }

    [v7 minimumScore];
    v119 = v114 / v115;
    v108 = fmin(v119 / v116 * v120, 1.0);
    if (v216)
    {
      v39 = v39 + v108;
      ++v38;
      if (v119 < v116)
      {
        v37 = 1;
      }
    }

    [(PGMeaningfulEventCriteria *)self isDebug];

    a5 = v208;
  }

LABEL_94:
  v121 = [v7 locationsTrait];
  if ([v121 isActive])
  {
    if (v37)
    {
      v122 = [(PGMeaningfulEventCriteria *)self isDebug];

      if (!v122)
      {
        v37 = 1;
        goto LABEL_104;
      }
    }

    else
    {
    }

    v123 = [v7 locationsTrait];
    [v123 minimumScore];
    v125 = v124;

    v244 = 0;
    v245 = &v244;
    v246 = 0x2020000000;
    v247 = 0;
    v126 = [(PGMeaningfulEventCriteria *)self locationsTrait];
    v127 = [v7 locationsTrait];
    v238[0] = MEMORY[0x277D85DD0];
    v238[1] = 3221225472;
    v238[2] = __81__PGMeaningfulEventMatchingCriteria_matchingScoreWithCriteria_failed_isReliable___block_invoke;
    v238[3] = &unk_278881FA8;
    v243 = v215;
    v242 = v125;
    v240 = &v244;
    v241 = &v264;
    v239 = v7;
    [(PGMeaningfulEventMatchingCriteria *)self _calculateMatchingScoreForLocationsWithMatchingTrait:v126 requiredTrait:v127 result:v238];

    if (v215)
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
  v128 = [v7 datesTrait];
  v129 = 0.0;
  if ([v128 isActive])
  {
    if (v37)
    {
      v130 = [(PGMeaningfulEventCriteria *)self isDebug];

      if (!v130)
      {
        v37 = 1;
        goto LABEL_119;
      }
    }

    else
    {
    }

    v131 = [v7 datesTrait];
    v128 = [v131 nodes];

    v132 = [(PGMeaningfulEventCriteria *)self datesTrait];
    v133 = [v132 nodes];

    v134 = [v128 collectionByIntersecting:v133];
    v135 = 1.0;
    if ([v134 count])
    {
      v136 = 1.0;
    }

    else
    {
      v136 = 0.0;
    }

    if (v212)
    {
      v137 = [v7 datesTrait];
      [v137 minimumScore];
      v135 = v138;
    }

    [v7 minimumScore];
    v129 = fmin(v136 / v135 * v139, 1.0);
    if (v212)
    {
      v39 = v39 + v129;
      ++v38;
      if (v136 < v135)
      {
        v37 = 1;
      }
    }

    a5 = v208;
  }

LABEL_119:
  v140 = [v7 scenesTrait];
  if ([v140 isActive])
  {
    if (v37)
    {
      v141 = [(PGMeaningfulEventCriteria *)self isDebug];

      if (!v141)
      {
        v37 = 1;
        goto LABEL_129;
      }
    }

    else
    {
    }

    v142 = [v7 scenesTrait];
    [v142 minimumScore];
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
    v237 = v206;
    v235 = &v260;
    v232 = v7;
    [(PGMeaningfulEventMatchingCriteria *)self _calculateMatchingScoreForScenesWithRequiredCriteria:v232 result:v231];
    if (v206)
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
  v145 = [v7 roisTrait];
  if ([v145 isActive])
  {
    if (v37)
    {
      v146 = [(PGMeaningfulEventCriteria *)self isDebug];

      if (!v146)
      {
        v37 = 1;
        goto LABEL_139;
      }
    }

    else
    {
    }

    v147 = [v7 roisTrait];
    [v147 minimumScore];
    v149 = v148;

    v244 = 0;
    v245 = &v244;
    v246 = 0x2020000000;
    v247 = 0;
    v150 = [(PGMeaningfulEventCriteria *)self roisTrait];
    v151 = [v7 roisTrait];
    v225[0] = MEMORY[0x277D85DD0];
    v225[1] = 3221225472;
    v225[2] = __81__PGMeaningfulEventMatchingCriteria_matchingScoreWithCriteria_failed_isReliable___block_invoke_3;
    v225[3] = &unk_278881FA8;
    v230 = v210;
    v229 = v149;
    v227 = &v244;
    v228 = &v256;
    v226 = v7;
    [(PGMeaningfulEventMatchingCriteria *)self _calculateMatchingScoreForPOIROIWithMatchingTrait:v150 requiredTrait:v151 result:v225];

    if (v210)
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
  v152 = [v7 poisTrait];
  if ([v152 isActive])
  {
    if (v37)
    {
      v153 = [(PGMeaningfulEventCriteria *)self isDebug];

      if (!v153)
      {
        v37 = 1;
        goto LABEL_149;
      }
    }

    else
    {
    }

    v154 = [v7 poisTrait];
    [v154 minimumScore];
    v156 = v155;

    v244 = 0;
    v245 = &v244;
    v246 = 0x2020000000;
    v247 = 0;
    v157 = [(PGMeaningfulEventCriteria *)self poisTrait];
    v158 = [v7 poisTrait];
    v219[0] = MEMORY[0x277D85DD0];
    v219[1] = 3221225472;
    v219[2] = __81__PGMeaningfulEventMatchingCriteria_matchingScoreWithCriteria_failed_isReliable___block_invoke_4;
    v219[3] = &unk_278881FA8;
    v224 = v209;
    v223 = v156;
    v221 = &v244;
    v222 = &v252;
    v220 = v7;
    [(PGMeaningfulEventMatchingCriteria *)self _calculateMatchingScoreForPOIROIWithMatchingTrait:v157 requiredTrait:v158 result:v219];

    if (v209)
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
  v159 = [v7 publicEventCategoriesTrait];
  v160 = 0.0;
  if ([v159 isActive])
  {
    if (v37)
    {
      v161 = [(PGMeaningfulEventCriteria *)self isDebug];

      if (!v161)
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

    v163 = [v7 publicEventCategoriesTrait];
    v159 = [v163 nodes];

    v164 = [(PGMeaningfulEventCriteria *)self publicEventCategoriesTrait];
    v165 = [v164 nodes];

    v166 = [v159 collectionByIntersecting:v165];
    v167 = [v166 count];
    v168 = [v159 count];
    v169 = 1.0;
    if (v207)
    {
      v170 = [v7 publicEventCategoriesTrait];
      [v170 minimumScore];
      v169 = v171;
    }

    [v7 minimumScore];
    v172 = v167 / v168;
    v160 = fmin(v172 / v169 * v173, 1.0);
    if (v207)
    {
      v39 = v39 + v160;
      ++v38;
      if (v172 < v169)
      {
        v37 = 1;
      }
    }

    a5 = v208;
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
  v174 = [v7 numberOfPeopleTrait];
  if (v218 & 1 | (([v174 isActive] & 1) == 0))
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

  v176 = [v7 peopleTrait];
  if (v217 & 1 | (([v176 isActive] & 1) == 0))
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

  v177 = [v7 socialGroupsTrait];
  if (v216 & 1 | (([v177 isActive] & 1) == 0))
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

  v178 = [v7 locationsTrait];
  if (v215 & 1 | (([v178 isActive] & 1) == 0))
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

  v180 = [v7 datesTrait];
  if (v212 & 1 | (([v180 isActive] & 1) == 0))
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

  v181 = [v7 scenesTrait];
  if (v206 & 1 | (([v181 isActive] & 1) == 0))
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

  v183 = [v7 roisTrait];
  if (v210 & 1 | (([v183 isActive] & 1) == 0))
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

  v185 = [v7 poisTrait];
  if (v209 & 1 | (([v185 isActive] & 1) == 0))
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

  v187 = [v7 minimumDurationTrait];
  if (v214 & 1 | (([v187 isActive] & 1) == 0))
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

  v189 = [v7 maximumDurationTrait];
  if (v211 & 1 | (([v189 isActive] & 1) == 0))
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

  v191 = [v7 significantPartsOfDayTrait];
  if (v205 & 1 | (([v191 isActive] & 1) == 0))
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

  v193 = [v7 allPartsOfDayTrait];
  if (v204 & 1 | (([v193 isActive] & 1) == 0))
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

  v195 = [v7 locationMobilityTrait];
  if (v213 & 1 | (([v195 isActive] & 1) == 0))
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

  v196 = [v7 publicEventCategoriesTrait];
  if (v207 & 1 | (([v196 isActive] & 1) == 0))
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

  if (a4)
  {
    *a4 = v37;
  }

  if (a5)
  {
    *a5 = *(v249 + 24);
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

- (id)matchingResultWithCriteria:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(PGMeaningfulEventCriteria *)self isDebug])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isDebug];
  }

  [(PGMeaningfulEventCriteria *)self setDebug:v5];
  v23 = 0;
  [v4 minimumScore];
  v7 = v6;
  interestingForMeaningInference = self->_interestingForMeaningInference;
  v9 = [v4 mustBeInteresting];
  v10 = v9;
  if (interestingForMeaningInference || !v9)
  {
    [(PGMeaningfulEventMatchingCriteria *)self matchingScoreWithCriteria:v4 failed:&v23 + 1 isReliable:&v23];
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
    v18 = [(PGGraphMomentNode *)self->_momentNode name];
    v19 = @"NO";
    *buf = 138413826;
    v25 = v18;
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
  v15 = [(PGMeaningfulEventMatchingResult *)v14 initWithIsMatching:v11 score:v23 isReliable:v4 requiredCriteria:v12];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (PGMeaningfulEventMatchingCriteria)initWithMoment:(id)a3 cache:(id)a4 serviceManager:(id)a5
{
  v95 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v80 = a5;
  v11 = [v9 graph];
  v92.receiver = self;
  v92.super_class = PGMeaningfulEventMatchingCriteria;
  v12 = [(PGMeaningfulEventCriteria *)&v92 initWithGraph:v11];

  if (v12)
  {
    v70 = a3;
    v71 = v12;
    objc_storeStrong(&v12->_cache, a4);
    v13 = [v9 collection];
    v14 = [v9 universalStartDate];
    v76 = v9;
    v15 = [v9 universalEndDate];
    v79 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v15];
    v16 = v14;
    v17 = v15;
    v72 = v10;
    v75 = v13;
    [v10 preciseAddressNodesForMomentNodes:v13];
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
          v20 = [v80 fetchLocationOfInterestVisitsAtLocation:*(*(&v88 + 1) + 8 * v19) inDateInterval:v79];
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

                v27 = [*(*(&v84 + 1) + 8 * v24) visitInterval];
                v28 = [v27 startDate];
                v29 = [v27 endDate];
                v18 = [v26 earlierDate:v28];

                v17 = [v25 laterDate:v29];

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
    v10 = v72;
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
    v59 = [v58 locationMobilityTypes];
    v60 = [v59 firstObject];
    v61 = [v60 unsignedIntegerValue];

    v62 = [[PGMeaningfulEventLocationMobilityTrait alloc] initWithMobility:v61];
    [(PGMeaningfulEventCriteria *)v71 setLocationMobilityTrait:v62];

    v63 = [PGMeaningfulEventCollectionTrait alloc];
    v64 = [v72 publicEventCategoryNodesForMomentNodes:v75];
    v65 = [(PGMeaningfulEventCollectionTrait *)v63 initWithNodes:v64];
    [(PGMeaningfulEventCriteria *)v71 setPublicEventCategoriesTrait:v65];

    objc_storeStrong(&v71->_momentNode, v70);
    if ([(PGGraphMomentNode *)v71->_momentNode isInteresting])
    {
      v66 = 1;
    }

    else
    {
      v66 = [(PGGraphMomentNode *)v71->_momentNode isSmartInteresting];
    }

    v71->_interestingForMeaningInference = v66;

    v9 = v76;
  }

  v67 = *MEMORY[0x277D85DE8];
  return v12;
}

@end