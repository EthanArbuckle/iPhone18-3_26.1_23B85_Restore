@interface PCNeuralNetworkUtilities
+ (id)buildMutableArrayCopyOfSwiftBridgedArray:(id)a3;
+ (id)convertToTimestepDataset:(double)a3 currentTime:(double)a4 visitHistory:(id)a5 transitionHistory:(id)a6 startTime:(double)a7 visitIndicies:(id)a8;
+ (id)createPredictedContextFromPredSequence:(float)a3 timestepSize:(double)a4 currentTime:(double)a5 preds:(id)a6 probabilityCalculationMode:(int64_t)a7 probabilityPercentile:(float)a8;
+ (id)removeBiasFromCluster:(id)a3 percentile:(float)a4 prediction:(id)a5 startIdx:(int)a6;
+ (id)sequenceDataMatrix:(id)a3 seqLength:(int)a4;
+ (id)sortDictionaryByValues:(id)a3;
+ (id)sortLocationHistory:(id)a3;
+ (int)sequenceYlabels:(int)a3 xTrain:(id *)a4 outData:(id)a5 seqDataMat:(id)a6 yRows:(id *)a7;
+ (void)applySinCosTransform:(id)a3 timeZone:(id)a4;
+ (void)removeBiasesWith:(id)a3 loiIdx:(int)a4 mutablePreds:(id)a5;
@end

@implementation PCNeuralNetworkUtilities

+ (id)convertToTimestepDataset:(double)a3 currentTime:(double)a4 visitHistory:(id)a5 transitionHistory:(id)a6 startTime:(double)a7 visitIndicies:(id)a8
{
  v68 = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a6;
  v56 = a8;
  v15 = objc_alloc_init(TimestepDataset);
  if (a3 <= 0.0)
  {
    goto LABEL_49;
  }

  v16 = a3 * 60.0;
  v58 = ((a4 - a7) / (a3 * 60.0) + 1.0);
  v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v63 = a4;
    v64 = 2048;
    v65 = a7;
    v66 = 2048;
    v67 = a4 - a7;
    _os_log_impl(&dword_1CEE74000, v17, OS_LOG_TYPE_DEFAULT, "current time: %f, start time: %f, window size: %f", buf, 0x20u);
  }

  v55 = v15;

  v18 = [v13 count];
  v19 = [v14 count];
  if (v58 < 1)
  {
    v20 = 0;
    goto LABEL_46;
  }

  v20 = 0;
  v21 = 0;
  v57 = v19 - 1;
  v22 = v18 - 1;
  v23 = 0.0;
  do
  {
    v24 = a4 - v23 * v16;
    v25 = +[PCNeuralNetworkUtilities kUnknownString];
    v26 = objc_alloc_init(PCPLocation);
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_26;
    }

    v27 = v22;
    while (1)
    {
      v28 = [v13 objectAtIndexedSubscript:v27];
      if (![v28 hasEntryTimeCFAbsolute] || !objc_msgSend(v28, "hasLocation"))
      {
        goto LABEL_16;
      }

      v29 = a4 + 0.001;
      if ([v28 hasExitTimeCFAbsolute])
      {
        [v28 exitTimeCFAbsolute];
        v29 = a4 + 0.001;
        if (v30 > 0.0)
        {
          [v28 exitTimeCFAbsolute];
          v29 = v31;
        }
      }

      [v28 entryTimeCFAbsolute];
      if (v24 > v32 && v24 <= v29)
      {
        break;
      }

      if (v24 > v29)
      {
        goto LABEL_25;
      }

LABEL_16:

      v47 = v27-- <= 0;
      if (v47)
      {
        goto LABEL_26;
      }
    }

    v33 = [v28 hasLoiIdentifier];
    if (v56 && v33 && ([v28 loiIdentifier], v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v56, "objectForKeyedSubscript:", v34), v35 = objc_claimAutoreleasedReturnValue(), v35, v34, v35))
    {
      v36 = [v28 loiIdentifier];
      v37 = [v56 objectForKeyedSubscript:v36];

      v25 = v36;
    }

    else
    {
      v37 = +[PCNeuralNetworkUtilities kInfrequentString];
    }

    v38 = [v28 location];

    v26 = v38;
    v25 = v37;
    v22 = v27;
LABEL_25:

LABEL_26:
    v39 = +[PCNeuralNetworkUtilities kUnknownString];
    v40 = [v25 isEqual:v39];

    if (!v40 || (v57 & 0x80000000) != 0)
    {
      goto LABEL_43;
    }

    v41 = v57;
    while (2)
    {
      v42 = [v14 objectAtIndexedSubscript:v41];
      if (![v42 hasStartTimeCFAbsolute])
      {
        goto LABEL_39;
      }

      v43 = a4 + 0.001;
      if ([v42 hasStopTimeCFAbsolute])
      {
        [v42 stopTimeCFAbsolute];
        v43 = a4 + 0.001;
        if (v44 > 0.0)
        {
          [v42 stopTimeCFAbsolute];
          v43 = v45;
        }
      }

      [v42 startTimeCFAbsolute];
      v47 = v24 <= v46 || v24 > v43;
      if (v47)
      {
        if (v24 > v43)
        {
          goto LABEL_42;
        }

LABEL_39:

        v47 = v41-- <= 0;
        if (v47)
        {
          goto LABEL_43;
        }

        continue;
      }

      break;
    }

    v48 = +[PCNeuralNetworkUtilities kTravelingString];

    v25 = v48;
    v57 = v41;
LABEL_42:

LABEL_43:
    v49 = +[PCNeuralNetworkUtilities kUnknownString];
    v50 = [v25 isEqual:v49];

    v20 += v50;
    [v61 insertObject:v25 atIndex:0];
    [v60 insertObject:v26 atIndex:0];
    v51 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:a4 - v23 * v16];
    [v59 insertObject:v51 atIndex:0];

    v23 = v23 + 1.0;
    ++v21;
  }

  while (v21 != v58);
LABEL_46:
  v15 = v55;
  [(TimestepDataset *)v55 setLoiAtTimestepArray:v61, v55];
  [(TimestepDataset *)v15 setLocationAtTimestepArray:v60];
  [(TimestepDataset *)v15 setTimestepCFAbsArray:v59];
  v52 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v63) = v20;
    _os_log_impl(&dword_1CEE74000, v52, OS_LOG_TYPE_DEFAULT, "total number of timesteps with no associated transition or visit history data: %d", buf, 8u);
  }

LABEL_49:
  v53 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (void)applySinCosTransform:(id)a3 timeZone:(id)a4
{
  v44 = a3;
  v5 = a4;
  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v39 = v5;
  [v10 setTimeZone:v5];
  v11 = [v44 timestepCFAbsArray];
  v12 = [v11 count];

  if (v12)
  {
    v13 = 0;
    v40 = v8;
    v41 = v9;
    do
    {
      v14 = MEMORY[0x1E695DF00];
      v15 = [v44 timestepCFAbsArray];
      v16 = [v15 objectAtIndexedSubscript:v13];
      [v16 doubleValue];
      v43 = [v14 dateWithTimeIntervalSinceReferenceDate:?];

      v17 = [v10 components:608 fromDate:v43];
      v18 = [v17 weekday];
      v19 = [v17 hour];
      v20 = [v17 minute];
      [MEMORY[0x1E696AD98] numberWithLong:v18];
      v21 = v10;
      v22 = v7;
      v24 = v23 = v6;
      [v42 addObject:v24];

      v6 = v23;
      v7 = v22;
      v10 = v21;
      v25 = (2 * v18) * 3.14159265 / 7.0;
      v27 = __sincosf_stret(v25);
      *&v26 = v27.__sinval;
      v28 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
      [v6 addObject:v28];

      *&v29 = v27.__cosval;
      v30 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
      [v7 addObject:v30];

      v8 = v40;
      v9 = v41;
      v31 = (((v20 / 60.0) + v19) + ((v20 / 60.0) + v19)) * 3.14159265 / 24.0;
      v33 = __sincosf_stret(v31);
      *&v32 = v33.__sinval;
      v34 = [MEMORY[0x1E696AD98] numberWithFloat:v32];
      [v40 addObject:v34];

      *&v35 = v33.__cosval;
      v36 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
      [v41 addObject:v36];

      ++v13;
      v37 = [v44 timestepCFAbsArray];
      v38 = [v37 count];
    }

    while (v38 > v13);
  }

  [v44 setDayOfWeekArray:v42];
  [v44 setDayOfWeekSinArray:v6];
  [v44 setDayOfWeekCosArray:v7];
  [v44 setTimeOfDaySinArray:v8];
  [v44 setTimeOfDayCosArray:v9];
}

+ (id)sequenceDataMatrix:(id)a3 seqLength:(int)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v5 count] >= a4)
  {
    if ([v5 count] + 1 > a4)
    {
      v8 = 0;
      v9 = a4;
      do
      {
        v10 = [v5 subarrayWithRange:{v8, a4}];
        v11 = [v10 mutableCopy];
        [v6 addObject:v11];

        ++v9;
        ++v8;
      }

      while ([v5 count] + 1 > v9);
    }
  }

  else
  {
    v7 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1CEE74000, v7, OS_LOG_TYPE_DEFAULT, "Error: feature matrix too small for sequence length", v13, 2u);
    }
  }

  return v6;
}

+ (int)sequenceYlabels:(int)a3 xTrain:(id *)a4 outData:(id)a5 seqDataMat:(id)a6 yRows:(id *)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a6;
  if ([v12 count] == a3)
  {
    v13 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 134218240;
      v29 = [v12 count];
      v30 = 1024;
      v31 = a3;
      _os_log_impl(&dword_1CEE74000, v13, OS_LOG_TYPE_DEFAULT, "Error: not enough data in data matrix to create training data. Data count: %lu, requested out steps: %d", &v28, 0x12u);
    }

LABEL_7:

    v18 = 1;
    goto LABEL_12;
  }

  v14 = a3;
  v15 = [v11 ordinalLoiLabels];
  v16 = [v15 count];

  if (v16 == a3)
  {
    v13 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v11 ordinalLoiLabels];
      v28 = 134218240;
      v29 = [v17 count];
      v30 = 1024;
      v31 = a3;
      _os_log_impl(&dword_1CEE74000, v13, OS_LOG_TYPE_DEFAULT, "Error: not enough data in y labels to create training data. Data count: %lu, requested out steps: %d", &v28, 0x12u);
    }

    goto LABEL_7;
  }

  *a7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = [v11 ordinalLoiLabels];
  v20 = [v19 count];

  if (v20 != v14)
  {
    v21 = 0;
    do
    {
      v22 = [v11 ordinalLoiLabels];
      v23 = [v22 subarrayWithRange:{++v21, v14}];

      [*a7 addObject:v23];
      v24 = [v11 ordinalLoiLabels];
      v25 = [v24 count] - v14;
    }

    while (v25 > v21);
  }

  [v12 subarrayWithRange:{0, objc_msgSend(v12, "count") - v14}];
  *a4 = v18 = 0;
LABEL_12:

  v26 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (id)removeBiasFromCluster:(id)a3 percentile:(float)a4 prediction:(id)a5 startIdx:(int)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v9 visitStartIdx] - a6;
  v11 = ([v9 visitEndIdx] - a6);
  [v8 subarrayWithRange:{v10, v11 - v10}];
  v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  [*&v12 valueForKeyPath:@"@min.self"];
  v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v14 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138412290;
    v30 = v12;
    _os_log_impl(&dword_1CEE74000, v14, OS_LOG_TYPE_DEFAULT, "subarray: %@", &v29, 0xCu);
  }

  v15 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138412290;
    v30 = v13;
    _os_log_impl(&dword_1CEE74000, v15, OS_LOG_TYPE_DEFAULT, "bias in cluster: %@", &v29, 0xCu);
  }

  v10 = v10;

  [v9 visitProbability];
  v17 = v16;
  [*&v13 floatValue];
  v19 = v17 - v18;
  v20 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 134217984;
    v30 = v19;
    _os_log_impl(&dword_1CEE74000, v20, OS_LOG_TYPE_DEFAULT, "bias diff from max probability: %f", &v29, 0xCu);
  }

  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v8 count])
  {
    v22 = 0;
    do
    {
      [v21 addObject:&unk_1F4BDE0E0];
      ++v22;
    }

    while ([v8 count] > v22);
  }

  if (v10 <= v11)
  {
    if (v19 <= 0.5 || *&v13 == 0)
    {
      v24 = COERCE_DOUBLE(&unk_1F4BDE0E0);
    }

    else
    {
      v24 = v13;
    }

    v25 = (v10 << 32) + 0x100000000;
    do
    {
      [v21 setObject:*&v24 atIndexedSubscript:v10++];
      v26 = v11 < v25 >> 32;
      v25 += 0x100000000;
    }

    while (!v26);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)buildMutableArrayCopyOfSwiftBridgedArray:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v3 count])
  {
    v5 = 0;
    do
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = [v3 objectAtIndexedSubscript:0];
      v8 = [v7 count];

      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = [v3 objectAtIndexedSubscript:v5];
          v11 = [v10 objectAtIndexedSubscript:v9];
          [v6 addObject:v11];

          ++v9;
          v12 = [v3 objectAtIndexedSubscript:0];
          v13 = [v12 count];
        }

        while (v13 > v9);
      }

      [v4 addObject:v6];

      ++v5;
    }

    while ([v3 count] > v5);
  }

  return v4;
}

+ (void)removeBiasesWith:(id)a3 loiIdx:(int)a4 mutablePreds:(id)a5
{
  v19 = a3;
  v7 = a5;
  if ([v7 count])
  {
    v8 = 0;
    do
    {
      v9 = [v7 objectAtIndexedSubscript:v8];
      v10 = [v9 objectAtIndexedSubscript:a4];

      v11 = MEMORY[0x1E696AD98];
      [v10 floatValue];
      v13 = v12;
      v14 = [v19 objectAtIndexedSubscript:v8];
      [v14 floatValue];
      *&v16 = v13 - v15;
      v17 = [v11 numberWithFloat:v16];

      v18 = [v7 objectAtIndexedSubscript:v8];
      [v18 setObject:v17 atIndexedSubscript:a4];

      ++v8;
    }

    while ([v7 count] > v8);
  }
}

+ (id)createPredictedContextFromPredSequence:(float)a3 timestepSize:(double)a4 currentTime:(double)a5 preds:(id)a6 probabilityCalculationMode:(int64_t)a7 probabilityPercentile:(float)a8
{
  v98 = *MEMORY[0x1E69E9840];
  v12 = a6;
  v13 = [PCNeuralNetworkUtilities buildMutableArrayCopyOfSwiftBridgedArray:v12];
  v76 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v12 && [v12 count] && (objc_msgSend(v12, "objectAtIndexedSubscript:", 0), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v15))
  {
    v16 = [v12 objectAtIndexedSubscript:0];
    v17 = [v16 count];

    if (v17)
    {
      v18 = 0;
      v19 = 0x1E696A000uLL;
      v81 = v13;
      v75 = v12;
      do
      {
        v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v82 = v18;
        while (1)
        {
          *&v21 = a3;
          *&v22 = a8;
          v23 = [PCNeuralNetworkUtilities generateClustersAndRemoveBias:a7 calcMode:v18 currentTime:v13 loiIdx:v20 percentile:v21 predSample:a5 predictionArray:v22 timestepSizeMinutes:a4, v75];
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v24 = v23;
          v25 = [v24 countByEnumeratingWithState:&v90 objects:v97 count:16];
          if (!v25)
          {
            break;
          }

          v26 = v25;
          v27 = *v91;
          v28 = 0.0;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v91 != v27)
              {
                objc_enumerationMutation(v24);
              }

              [*(*(&v90 + 1) + 8 * i) floatValue];
              v28 = v28 + v30;
            }

            v26 = [v24 countByEnumeratingWithState:&v90 objects:v97 count:16];
          }

          while (v26);

          if (v28 <= 0.01)
          {
            goto LABEL_52;
          }

          v31 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1CEE74000, v31, OS_LOG_TYPE_DEFAULT, "bias detected in cluster, rerunning clustering with bias removed", buf, 2u);
          }

          v32 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1CEE74000, v32, OS_LOG_TYPE_DEFAULT, "biases", buf, 2u);
          }

          if ([v13 count])
          {
            v33 = 0;
            do
            {
              v34 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v35 = [v24 objectAtIndexedSubscript:v33];
                *buf = 138412290;
                *v95 = v35;
                _os_log_impl(&dword_1CEE74000, v34, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
              }

              ++v33;
            }

            while ([v13 count] > v33);
          }

          v36 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1CEE74000, v36, OS_LOG_TYPE_DEFAULT, "pred probs:", buf, 2u);
          }

          v85 = v24;
          if ([v13 count])
          {
            v37 = 0;
            do
            {
              v38 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                v39 = [v13 objectAtIndexedSubscript:v37];
                v40 = [v39 objectAtIndexedSubscript:v18];
                *buf = 138412290;
                *v95 = v40;
                _os_log_impl(&dword_1CEE74000, v38, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);

                v24 = v85;
                v13 = v81;
                v18 = v82;
              }

              ++v37;
            }

            while ([v13 count] > v37);
          }

          v77 = objc_alloc_init(MEMORY[0x1E695DF70]);

          [PCNeuralNetworkUtilities removeBiasesWith:v24 loiIdx:v18 mutablePreds:v13];
          v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
          *&v42 = a3;
          *&v43 = a8;
          v44 = [PCNeuralNetworkUtilities generateClustersAndRemoveBias:a7 calcMode:v18 currentTime:v13 loiIdx:v41 percentile:v42 predSample:a5 predictionArray:v43 timestepSizeMinutes:a4];
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          obj = v41;
          v83 = [obj countByEnumeratingWithState:&v86 objects:v96 count:16];
          if (v83)
          {
            v80 = *v87;
            do
            {
              v45 = 0;
              do
              {
                if (*v87 != v80)
                {
                  objc_enumerationMutation(obj);
                }

                v84 = v45;
                v46 = *(*(&v86 + 1) + 8 * v45);
                v47 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  v48 = [v46 visitStartIdx];
                  v49 = [v46 visitEndIdx];
                  *buf = 67109376;
                  *v95 = v48;
                  *&v95[4] = 1024;
                  *&v95[6] = v49;
                  _os_log_impl(&dword_1CEE74000, v47, OS_LOG_TYPE_DEFAULT, "restoring biases from index %d to %d", buf, 0xEu);
                }

                v50 = [v46 visitStartIdx];
                v51 = v85;
                if (v50 < [v46 visitEndIdx])
                {
                  v52 = v50;
                  do
                  {
                    v53 = v19;
                    v54 = *(v19 + 3480);
                    v55 = [v81 objectAtIndexedSubscript:v52];
                    v56 = [v55 objectAtIndexedSubscript:v82];
                    [v56 floatValue];
                    v58 = v57;
                    v59 = [v51 objectAtIndexedSubscript:v52];
                    [v59 floatValue];
                    *&v61 = v58 + v60;
                    v62 = [v54 numberWithFloat:v61];
                    [v81 objectAtIndexedSubscript:v52];
                    v64 = v63 = v46;
                    [v64 setObject:v62 atIndexedSubscript:v82];

                    v46 = v63;
                    v19 = v53;

                    v51 = v85;
                    ++v52;
                  }

                  while (v52 < [v63 visitEndIdx]);
                }

                v45 = v84 + 1;
              }

              while (v84 + 1 != v83);
              v83 = [obj countByEnumeratingWithState:&v86 objects:v96 count:16];
            }

            while (v83);
          }

          v65 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1CEE74000, v65, OS_LOG_TYPE_DEFAULT, "prediction probabilities after restoration", buf, 2u);
          }

          v13 = v81;
          v18 = v82;
          if ([v81 count])
          {
            v66 = 0;
            do
            {
              v67 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                v68 = [v81 objectAtIndexedSubscript:v66];
                v69 = [v68 objectAtIndexedSubscript:v82];
                *buf = 138412290;
                *v95 = v69;
                _os_log_impl(&dword_1CEE74000, v67, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
              }

              ++v66;
            }

            while ([v81 count] > v66);
          }

          v20 = v77;
        }

LABEL_52:
        [v76 addObjectsFromArray:v20];

        ++v18;
        v12 = v75;
        v70 = [v75 objectAtIndexedSubscript:0];
        v71 = [v70 count];
      }

      while (v71 > v18);
    }
  }

  else
  {
    v72 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v72, OS_LOG_TYPE_DEFAULT, "predSample is nil or empty", buf, 2u);
    }
  }

  v73 = *MEMORY[0x1E69E9840];

  return v76;
}

uint64_t __45__PCNeuralNetworkUtilities_sortVisitHistory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 hasEntryTimeCFAbsolute] && objc_msgSend(v5, "hasEntryTimeCFAbsolute"))
  {
    [v4 entryTimeCFAbsolute];
    v7 = v6;
    [v5 entryTimeCFAbsolute];
    if (v7 >= v8)
    {
      [v4 entryTimeCFAbsolute];
      v12 = v11;
      [v5 entryTimeCFAbsolute];
      v9 = v12 > v13;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)sortDictionaryByValues:(id)a3
{
  v3 = a3;
  v4 = [v3 allKeys];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PCNeuralNetworkUtilities_sortDictionaryByValues___block_invoke;
  v8[3] = &unk_1E83B87C0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 sortedArrayUsingComparator:v8];

  return v6;
}

uint64_t __51__PCNeuralNetworkUtilities_sortDictionaryByValues___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v7 integerValue];
  if (v9 >= [v8 integerValue])
  {
    v11 = [v7 integerValue];
    v10 = v11 > [v8 integerValue];
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

uint64_t __50__PCNeuralNetworkUtilities_sortTransitionHistory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 hasStartTimeCFAbsolute] && objc_msgSend(v5, "hasStartTimeCFAbsolute"))
  {
    [v4 startTimeCFAbsolute];
    v7 = v6;
    [v5 startTimeCFAbsolute];
    if (v7 >= v8)
    {
      [v4 startTimeCFAbsolute];
      v12 = v11;
      [v5 startTimeCFAbsolute];
      v9 = v12 > v13;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)sortLocationHistory:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEB0];
  v4 = a3;
  v5 = [[v3 alloc] initWithKey:@"timeCFAbsolute" ascending:1];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [v4 sortedArrayUsingDescriptors:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end