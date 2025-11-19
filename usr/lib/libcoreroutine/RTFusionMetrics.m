@interface RTFusionMetrics
+ (id)supportedMetricKeys;
- (BOOL)submitMetricsWithError:(id *)a3;
- (RTFusionMetrics)initWithLoggingEnabled:(BOOL)a3;
- (void)setDerivedMetrics;
- (void)setInputMetrics:(id)a3;
- (void)setMetricsUsingInputCandidates:(id)a3 outputFusedInferredMapItems:(id)a4 bestFusedInferredMapItem:(id)a5 outputError:(id)a6;
- (void)setOutputMetrics:(id)a3 bestFusedInferredMapItem:(id)a4 outputError:(id)a5;
@end

@implementation RTFusionMetrics

- (RTFusionMetrics)initWithLoggingEnabled:(BOOL)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v61.receiver = self;
  v61.super_class = RTFusionMetrics;
  v3 = [(RTMetric *)&v61 initWithLoggingEnabled:a3];
  if (v3)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v4 = [objc_opt_class() BOOLeanKeys];
    v5 = [v4 countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v58;
      v8 = MEMORY[0x277CBEC28];
      do
      {
        v9 = 0;
        do
        {
          if (*v58 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v57 + 1) + 8 * v9);
          v11 = [(RTMetric *)v3 metrics];
          [v11 setObject:v8 forKeyedSubscript:v10];

          ++v9;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v6);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v12 = [objc_opt_class() unsignedIntegerKeys];
    v13 = [v12 countByEnumeratingWithState:&v53 objects:v65 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v54;
      do
      {
        v16 = 0;
        do
        {
          if (*v54 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v53 + 1) + 8 * v16);
          v18 = [(RTMetric *)v3 metrics];
          [v18 setObject:&unk_28459F720 forKeyedSubscript:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v53 objects:v65 count:16];
      }

      while (v14);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v19 = [objc_opt_class() integerKeys];
    v20 = [v19 countByEnumeratingWithState:&v49 objects:v64 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v50;
      do
      {
        v23 = 0;
        do
        {
          if (*v50 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v49 + 1) + 8 * v23);
          v25 = [(RTMetric *)v3 metrics];
          [v25 setObject:&unk_28459F738 forKeyedSubscript:v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v49 objects:v64 count:16];
      }

      while (v21);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v26 = [objc_opt_class() doubleKeys];
    v27 = [v26 countByEnumeratingWithState:&v45 objects:v63 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v46;
      do
      {
        v30 = 0;
        do
        {
          if (*v46 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v45 + 1) + 8 * v30);
          v32 = [(RTMetric *)v3 metrics];
          [v32 setObject:&unk_2845A20B8 forKeyedSubscript:v31];

          ++v30;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v45 objects:v63 count:16];
      }

      while (v28);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v33 = [objc_opt_class() bucketedKeys];
    v34 = [v33 countByEnumeratingWithState:&v41 objects:v62 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v42;
      do
      {
        v37 = 0;
        do
        {
          if (*v42 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v41 + 1) + 8 * v37);
          v39 = [(RTMetric *)v3 metrics];
          [v39 setObject:&unk_2845A20B8 forKeyedSubscript:v38];

          ++v37;
        }

        while (v35 != v37);
        v35 = [v33 countByEnumeratingWithState:&v41 objects:v62 count:16];
      }

      while (v35);
    }
  }

  return v3;
}

+ (id)supportedMetricKeys
{
  v2 = MEMORY[0x277CBEB58];
  v3 = [objc_opt_class() BOOLeanKeys];
  v4 = [v3 allObjects];
  v5 = [v2 setWithArray:v4];

  v6 = [objc_opt_class() unsignedIntegerKeys];
  v7 = [v6 allObjects];
  [v5 addObjectsFromArray:v7];

  v8 = [objc_opt_class() integerKeys];
  v9 = [v8 allObjects];
  [v5 addObjectsFromArray:v9];

  v10 = [objc_opt_class() doubleKeys];
  v11 = [v10 allObjects];
  [v5 addObjectsFromArray:v11];

  v12 = [objc_opt_class() bucketedKeys];
  v13 = [v12 allObjects];
  [v5 addObjectsFromArray:v13];

  return v5;
}

- (void)setInputMetrics:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  v51 = self;
  v6 = [(RTMetric *)self metrics];
  [v6 setObject:v5 forKeyedSubscript:@"numberOfCandidates"];

  v56 = [MEMORY[0x277CBEB18] array];
  v52 = [MEMORY[0x277CBEB18] array];
  v53 = [MEMORY[0x277CBEB18] array];
  v54 = [MEMORY[0x277CBEB18] array];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (!v7)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_33;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v57 = *v59;
  do
  {
    v11 = 0;
    do
    {
      if (*v59 != v57)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v58 + 1) + 8 * v11);
      v13 = [v12 firstObject];
      if ([v13 source] == 0x4000)
      {

LABEL_9:
        v16 = v56;
        goto LABEL_10;
      }

      v14 = [v12 firstObject];
      v15 = [v14 source];

      if (v15 == 0x80000)
      {
        goto LABEL_9;
      }

      v20 = [v12 firstObject];
      v21 = [v20 source];

      if (v21 == 0x2000)
      {
        v22 = [v12 secondObject];
        if ([v22 unsignedIntegerValue] == 1)
        {

          goto LABEL_26;
        }

        v26 = [v12 secondObject];
        v27 = [v26 unsignedIntegerValue];

        if (v27 == 2)
        {
LABEL_26:
          v16 = v54;
        }

        else
        {
          v16 = v53;
        }

LABEL_10:
        [(NSArray *)v16 addObject:v12];
        goto LABEL_11;
      }

      v23 = [v12 firstObject];
      if (![v23 source])
      {
        goto LABEL_24;
      }

      v24 = [v12 firstObject];
      if ([v24 source] == 1)
      {
        goto LABEL_23;
      }

      v25 = [v12 firstObject];
      if ([v25 source] == 0x40000)
      {

LABEL_23:
LABEL_24:

        goto LABEL_11;
      }

      v28 = [v12 firstObject];
      v29 = [v28 source];

      if (v29 != 2)
      {
        v16 = v52;
        goto LABEL_10;
      }

LABEL_11:
      v17 = [v12 firstObject];
      v18 = [v17 mapItem];
      v19 = [v18 mapItemPlaceType];

      if (v19 == 1)
      {
        ++v10;
      }

      else
      {
        ++v9;
      }

      ++v11;
    }

    while (v8 != v11);
    v30 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
    v8 = v30;
  }

  while (v30);
LABEL_33:

  bluePOICandidates = v51->_bluePOICandidates;
  v51->_bluePOICandidates = v56;
  v32 = v56;

  localHintCandidates = v51->_localHintCandidates;
  v51->_localHintCandidates = v52;
  v34 = v52;

  learnedPlaceCandidatesExcludingHomeWork = v51->_learnedPlaceCandidatesExcludingHomeWork;
  v51->_learnedPlaceCandidatesExcludingHomeWork = v53;
  v36 = v53;

  learnedPlaceHomeWorkCandidates = v51->_learnedPlaceHomeWorkCandidates;
  v51->_learnedPlaceHomeWorkCandidates = v54;
  v38 = v54;

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](v32, "count")}];
  v40 = [(RTMetric *)v51 metrics];
  [v40 setObject:v39 forKeyedSubscript:@"numberOfBluePOICandidates"];

  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](v34, "count")}];
  v42 = [(RTMetric *)v51 metrics];
  [v42 setObject:v41 forKeyedSubscript:@"numberOfLocalHints"];

  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](v36, "count")}];
  v44 = [(RTMetric *)v51 metrics];
  [v44 setObject:v43 forKeyedSubscript:@"numberOfLearnedPlaceUnknownTypeCandidates"];

  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](v38, "count")}];
  v46 = [(RTMetric *)v51 metrics];
  [v46 setObject:v45 forKeyedSubscript:@"numberOfLearnedPlaceKnownTypeCandidates"];

  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  v48 = [(RTMetric *)v51 metrics];
  [v48 setObject:v47 forKeyedSubscript:@"numberOfAOICandidates"];

  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];

  v50 = [(RTMetric *)v51 metrics];
  [v50 setObject:v49 forKeyedSubscript:@"numberOfNonAOICandidates"];
}

- (void)setOutputMetrics:(id)a3 bestFusedInferredMapItem:(id)a4 outputError:(id)a5
{
  v91 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 0x277CCA000uLL;
  if (v10)
  {
    v12 = [(RTMetric *)self metrics];
    [v12 setObject:&unk_28459F750 forKeyedSubscript:@"fuserAction"];

    v13 = [v10 domain];
    v14 = [v13 isEqualToString:*MEMORY[0x277D01448]];

    if (v14)
    {
      v15 = [(RTMetric *)self metrics];
      v16 = v15;
      v17 = &unk_28459F768;
    }

    else
    {
      v24 = [v10 domain];
      v25 = [v24 isEqualToString:@"RTInferredMapItemFuserErrorDomain"];

      v15 = [(RTMetric *)self metrics];
      v16 = v15;
      if (v25)
      {
        v17 = &unk_28459F780;
      }

      else
      {
        v17 = &unk_28459F750;
      }
    }

    [v15 setObject:v17 forKeyedSubscript:@"errorDomain"];

    v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "code")}];
    v27 = [(RTMetric *)self metrics];
    [v27 setObject:v26 forKeyedSubscript:@"errorCode"];
  }

  else
  {
    if (v9)
    {
      v18 = [v9 mapItem];

      if (v18)
      {
        v19 = [v9 mapItem];
        v20 = [v19 mapItemPlaceType];

        v21 = [(RTMetric *)self metrics];
        v22 = v21;
        if (v20 == 1)
        {
          v23 = &unk_28459F7B0;
        }

        else if (v20 == 2)
        {
          v23 = &unk_28459F798;
        }

        else
        {
          v23 = &unk_28459F7C8;
        }
      }

      else
      {
        v21 = [(RTMetric *)self metrics];
        v22 = v21;
        v23 = &unk_28459F780;
      }
    }

    else
    {
      v21 = [(RTMetric *)self metrics];
      v22 = v21;
      v23 = &unk_28459F768;
    }

    [v21 setObject:v23 forKeyedSubscript:@"fuserAction"];

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
    v29 = [(RTMetric *)self metrics];
    [v29 setObject:v28 forKeyedSubscript:@"numberOfFusedCandidates"];

    v30 = [v9 mapItem];

    if (v30)
    {
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v31 = self->_bluePOICandidates;
      v30 = [(NSArray *)v31 countByEnumeratingWithState:&v85 objects:v90 count:16];
      v80 = v8;
      if (v30)
      {
        v32 = *v86;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v86 != v32)
            {
              objc_enumerationMutation(v31);
            }

            v34 = *(*(&v85 + 1) + 8 * i);
            v35 = [v9 mapItem];
            v36 = [v34 firstObject];
            v37 = [v36 mapItem];
            v38 = [v35 isEqualToMapItem:v37];

            if (v38)
            {
              v30 = 1;
              goto LABEL_28;
            }
          }

          v30 = [(NSArray *)v31 countByEnumeratingWithState:&v85 objects:v90 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }

LABEL_28:
        v10 = 0;
        v8 = v80;
        v11 = 0x277CCA000;
      }

      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v39 = self->_localHintCandidates;
      v40 = [(NSArray *)v39 countByEnumeratingWithState:&v81 objects:v89 count:16];
      if (v40)
      {
        v79 = v30;
        v41 = *v82;
        while (2)
        {
          for (j = 0; j != v40; ++j)
          {
            if (*v82 != v41)
            {
              objc_enumerationMutation(v39);
            }

            v43 = *(*(&v81 + 1) + 8 * j);
            v44 = [v9 mapItem];
            v45 = [v43 firstObject];
            v46 = [v45 mapItem];
            v47 = [v44 isEqualToMapItem:v46];

            if (v47)
            {
              v40 = 1;
              goto LABEL_39;
            }
          }

          v40 = [(NSArray *)v39 countByEnumeratingWithState:&v81 objects:v89 count:16];
          if (v40)
          {
            continue;
          }

          break;
        }

LABEL_39:
        v10 = 0;
        v8 = v80;
        v11 = 0x277CCA000;
        v30 = v79;
      }
    }

    else
    {
      v40 = 0;
    }

    v48 = [*(v11 + 2992) numberWithBool:v30];
    v49 = [(RTMetric *)self metrics];
    [v49 setObject:v48 forKeyedSubscript:@"bestAgreedWithBluePOI"];

    v50 = [*(v11 + 2992) numberWithBool:v40];
    v51 = [(RTMetric *)self metrics];
    [v51 setObject:v50 forKeyedSubscript:@"bestAgreedWithLocalHint"];

    v52 = [v8 firstObject];
    if (v52)
    {
      v53 = *(v11 + 2992);
      v51 = [v8 firstObject];
      [v51 confidence];
      v54 = [v53 numberWithDouble:?];
    }

    else
    {
      v54 = &unk_2845A20B8;
    }

    v55 = [(RTMetric *)self metrics];
    [v55 setObject:v54 forKeyedSubscript:@"confidenceOfBest"];

    if (v52)
    {
    }

    v56 = [v8 count];
    if (v56 < 2)
    {
      v58 = &unk_2845A20B8;
    }

    else
    {
      v57 = *(v11 + 2992);
      v51 = [v8 objectAtIndexedSubscript:1];
      [v51 confidence];
      v58 = [v57 numberWithDouble:?];
    }

    v59 = [(RTMetric *)self metrics];
    [v59 setObject:v58 forKeyedSubscript:@"confidenceOfSecondBest"];

    if (v56 >= 2)
    {
    }

    v26 = [v8 firstObject];
    if (v26)
    {
      v60 = [v9 mapItem];
      if (v60)
      {
        v61 = v60;
        v62 = [v9 mapItem];
        v63 = [v62 mapItemPlaceType];

        if (v63 == 1)
        {
          v64 = [v8 firstObject];
          v65 = [v64 mapItem];

          if (v65)
          {
            v66 = *(v11 + 2992);
            v67 = [v9 mapItem];
            v68 = [v26 mapItem];
            v69 = [v66 numberWithInt:{objc_msgSend(v67, "isEqualToMapItem:", v68) ^ 1}];
            v70 = [(RTMetric *)self metrics];
            [v70 setObject:v69 forKeyedSubscript:@"usedAOIBasedOnThreshold"];
          }

          else
          {
            v67 = [(RTMetric *)self metrics];
            [v67 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"usedAOIBasedOnThreshold"];
          }
        }
      }
    }

    if ([v8 count] >= 2)
    {
      v71 = *(v11 + 2992);
      v72 = [v8 objectAtIndexedSubscript:0];
      [v72 confidence];
      RTCommonSafeLog();
      v74 = v73;
      v75 = [v8 objectAtIndexedSubscript:1];
      [v75 confidence];
      RTCommonSafeLog();
      v77 = [v71 numberWithDouble:v74 - v76];
      v78 = [(RTMetric *)self metrics];
      [v78 setObject:v77 forKeyedSubscript:@"logMax2ConfidenceRatio"];
    }
  }
}

- (void)setMetricsUsingInputCandidates:(id)a3 outputFusedInferredMapItems:(id)a4 bestFusedInferredMapItem:(id)a5 outputError:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  [(RTFusionMetrics *)self setInputMetrics:a3];
  [(RTFusionMetrics *)self setOutputMetrics:v12 bestFusedInferredMapItem:v11 outputError:v10];
}

- (void)setDerivedMetrics
{
  v39 = [RTMetric binsFromStart:&unk_2845A20C8 toEnd:&unk_2845A20D8 gap:&unk_2845A20E8];
  v3 = [(RTMetric *)self metrics];
  v4 = [v3 objectForKeyedSubscript:@"numberOfLearnedPlaceKnownTypeCandidates"];
  v5 = [RTMetric binForNumber:v4 bins:&unk_2845A1628];
  v6 = [(RTMetric *)self metrics];
  [v6 setObject:v5 forKeyedSubscript:@"bucketedNumberOfLearnedPlaceKnownTypeCandidates"];

  v7 = [(RTMetric *)self metrics];
  v8 = [v7 objectForKeyedSubscript:@"numberOfLearnedPlaceUnknownTypeCandidates"];
  v9 = [RTMetric binForNumber:v8 bins:&unk_2845A1628];
  v10 = [(RTMetric *)self metrics];
  [v10 setObject:v9 forKeyedSubscript:@"bucketedNumberOfLearnedPlaceUnknownTypeCandidates"];

  v11 = [(RTMetric *)self metrics];
  v12 = [v11 objectForKeyedSubscript:@"numberOfLocalHints"];
  v13 = [RTMetric binForNumber:v12 bins:&unk_2845A1628];
  v14 = [(RTMetric *)self metrics];
  [v14 setObject:v13 forKeyedSubscript:@"bucketedNumberOfLocalHints"];

  v15 = [(RTMetric *)self metrics];
  v16 = [v15 objectForKeyedSubscript:@"numberOfAOICandidates"];
  v17 = [RTMetric binForNumber:v16 bins:&unk_2845A1628];
  v18 = [(RTMetric *)self metrics];
  [v18 setObject:v17 forKeyedSubscript:@"bucketedNumberOfAOICandidates"];

  v19 = [(RTMetric *)self metrics];
  v20 = [v19 objectForKeyedSubscript:@"numberOfNonAOICandidates"];
  v21 = [RTMetric binForNumber:v20 bins:&unk_2845A1628];
  v22 = [(RTMetric *)self metrics];
  [v22 setObject:v21 forKeyedSubscript:@"bucketedNumberOfNonAOICandidates"];

  v23 = [(RTMetric *)self metrics];
  v24 = [v23 objectForKeyedSubscript:@"numberOfFusedCandidates"];
  v25 = [RTMetric binForNumber:v24 bins:&unk_2845A1628];
  v26 = [(RTMetric *)self metrics];
  [v26 setObject:v25 forKeyedSubscript:@"bucketedNumberOfFusedCandidates"];

  v27 = [(RTMetric *)self metrics];
  v28 = [v27 objectForKeyedSubscript:@"confidenceOfBest"];
  v29 = [RTMetric binForNumber:v28 bins:v39];
  v30 = [(RTMetric *)self metrics];
  [v30 setObject:v29 forKeyedSubscript:@"bucketedConfidenceOfBest"];

  v31 = [(RTMetric *)self metrics];
  v32 = [v31 objectForKeyedSubscript:@"confidenceOfSecondBest"];
  v33 = [RTMetric binForNumber:v32 bins:v39];
  v34 = [(RTMetric *)self metrics];
  [v34 setObject:v33 forKeyedSubscript:@"bucketedConfidenceOfSecondBest"];

  v35 = [(RTMetric *)self metrics];
  v36 = [v35 objectForKeyedSubscript:@"logMax2ConfidenceRatio"];
  v37 = [RTMetric binForNumber:v36 bins:&unk_2845A1640];
  v38 = [(RTMetric *)self metrics];
  [v38 setObject:v37 forKeyedSubscript:@"bucketedLogMax2ConfidenceRatio"];
}

- (BOOL)submitMetricsWithError:(id *)a3
{
  [(RTFusionMetrics *)self setDerivedMetrics];
  v6.receiver = self;
  v6.super_class = RTFusionMetrics;
  return [(RTMetric *)&v6 submitMetricsWithError:a3];
}

@end