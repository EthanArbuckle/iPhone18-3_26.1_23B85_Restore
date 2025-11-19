@interface EvaluationDataSource
+ (id)defaultRecipeParams;
+ (void)initialize;
- (BOOL)allNegativeSamples;
- (BOOL)doDummyDataFilter;
- (BOOL)useNewTrainingAPI;
- (EvaluationDataSource)initWithRecipe:(id)a3 infos:(id)a4 datas:(id)a5 error:(id *)a6;
- (NSArray)layersToTrain;
- (NSString)freezeComponents;
- (NSString)gradNormType;
- (NSString)modelFeatures;
- (NSString)modelInputSchemaInputName;
- (NSString)modelInputSchemaLabelName;
- (NSString)modelOutputName;
- (NSString)objectiveFunction;
- (float)gradNormFactor;
- (float)l2NormBound;
- (float)learningRate;
- (float)learningRateDecay;
- (float)negativeSamplingRate;
- (id)extractFeatureDataForRecord:(unint64_t)a3;
- (id)extractFullFeatureListForRecord:(unint64_t)a3;
- (id)getRecordInfo:(unint64_t)a3;
- (id)vectorForClassification:(int64_t)a3;
- (int)batchSize;
- (int)labelKeyName;
- (int)minBatchSize;
- (int)minDaemonVersion;
- (int)minsUntil;
- (int)numLocalIterations;
- (int64_t)classificationForRecord:(unint64_t)a3;
- (void)filterInMatchedLabelData:(id)a3;
- (void)filteringOperation;
- (void)filteroutDummyData;
- (void)performDownSampling;
- (void)selectDaemonVersion:(int)a3;
- (void)validateRecordInfo:(id)a3;
@end

@implementation EvaluationDataSource

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    sLog = os_log_create("com.apple.iCloudSubscriptionOptimizerCore.PFLPlugin", "EvaluationDataSource");

    MEMORY[0x2821F96F8]();
  }
}

+ (id)defaultRecipeParams
{
  v6[21] = *MEMORY[0x277D85DE8];
  v5[0] = @"NumLocalIterations";
  v5[1] = @"LearningRate";
  v6[0] = &unk_2884B2330;
  v6[1] = &unk_2884B23A8;
  v5[2] = @"LearningRateDecay";
  v5[3] = @"TrainLayers";
  v6[2] = &unk_2884B23B8;
  v6[3] = MEMORY[0x277CBEBF8];
  v5[4] = @"GradientNormFactor";
  v5[5] = @"BatchSize";
  v6[4] = &unk_2884B23C8;
  v6[5] = &unk_2884B2330;
  v5[6] = @"L2NormBound";
  v5[7] = @"GradientNormType";
  v6[6] = &unk_2884B23D8;
  v6[7] = @"NoGradNorm";
  v5[8] = @"ObjectiveFunction";
  v5[9] = @"FrozenComponentIds";
  v6[8] = @"xent";
  v6[9] = &stru_2884B1858;
  v5[10] = @"ModelFeatures";
  v5[11] = @"MinsUntil";
  v6[10] = &stru_2884B1858;
  v6[11] = &unk_2884B2348;
  v5[12] = @"MinDaemonVersion";
  v5[13] = @"DoDummyDataFilter";
  v6[12] = &unk_2884B2360;
  v6[13] = &unk_2884B2360;
  v5[14] = @"ModelOutputName";
  v5[15] = @"MinBatchSize";
  v6[14] = @"propensity";
  v6[15] = &unk_2884B2330;
  v5[16] = @"NegativeSamplingRate";
  v5[17] = @"LabelKeyName";
  v6[16] = &unk_2884B23B8;
  v6[17] = &unk_2884B2330;
  v5[18] = @"ModelInputSchemaInputName";
  v5[19] = @"ModelInputSchemaLabelName";
  v6[18] = @"input_1";
  v6[19] = @"label_input_0";
  v5[20] = @"UseNewTrainingAPI";
  v6[20] = &unk_2884B2360;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:21];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (EvaluationDataSource)initWithRecipe:(id)a3 infos:(id)a4 datas:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = EvaluationDataSource;
  v12 = [(EvaluationDataSource *)&v23 init];
  if (v12)
  {
    v13 = [v10 copy];
    recordInfos = v12->_recordInfos;
    v12->_recordInfos = v13;

    v15 = [v11 copy];
    recordDatas = v12->_recordDatas;
    v12->_recordDatas = v15;

    v17 = +[EvaluationDataSource defaultRecipeParams];
    v18 = [v17 mutableCopy];

    [v18 addEntriesFromDictionary:v9];
    v19 = [v18 copy];
    recipe = v12->_recipe;
    v12->_recipe = v19;

    v21 = v12;
  }

  return v12;
}

- (int)numLocalIterations
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"NumLocalIterations"];
  v4 = [v3 intValue];

  return v4;
}

- (float)learningRate
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"LearningRate"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (float)learningRateDecay
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"LearningRateDecay"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (NSArray)layersToTrain
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"TrainLayers"];

  return v3;
}

- (float)gradNormFactor
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"GradientNormFactor"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (int)batchSize
{
  v3 = [(EvaluationDataSource *)self recipe];
  v4 = [v3 objectForKeyedSubscript:@"BatchSize"];
  v5 = [v4 intValue];

  result = [(EvaluationDataSource *)self recordCount];
  if (v5 < result)
  {
    return v5;
  }

  return result;
}

- (float)l2NormBound
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"L2NormBound"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (NSString)gradNormType
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"GradientNormType"];

  return v3;
}

- (NSString)objectiveFunction
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"ObjectiveFunction"];

  return v3;
}

- (NSString)freezeComponents
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"FrozenComponentIds"];

  return v3;
}

- (NSString)modelFeatures
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"ModelFeatures"];

  return v3;
}

- (int)minsUntil
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"MinsUntil"];
  v4 = [v3 intValue];

  return v4;
}

- (int)minDaemonVersion
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"MinDaemonVersion"];
  v4 = [v3 intValue];

  return v4;
}

- (BOOL)doDummyDataFilter
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"DoDummyDataFilter"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSString)modelOutputName
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"ModelOutputName"];

  return v3;
}

- (NSString)modelInputSchemaInputName
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"ModelInputSchemaInputName"];

  return v3;
}

- (NSString)modelInputSchemaLabelName
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"ModelInputSchemaLabelName"];

  return v3;
}

- (int)minBatchSize
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"MinBatchSize"];
  v4 = [v3 intValue];

  return v4;
}

- (float)negativeSamplingRate
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"NegativeSamplingRate"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (int)labelKeyName
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"LabelKeyName"];
  v4 = [v3 intValue];

  return v4;
}

- (BOOL)useNewTrainingAPI
{
  v2 = [(EvaluationDataSource *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"UseNewTrainingAPI"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)filteroutDummyData
{
  v16 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277CBEB18] array];
  if ([(NSArray *)self->_recordInfos count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)self->_recordInfos objectAtIndexedSubscript:v4];
      v6 = [v5 objectForKey:@"isDummyData"];

      if (v6)
      {
        v7 = [(NSArray *)self->_recordInfos objectAtIndexedSubscript:v4];
        v8 = [v7 objectForKey:@"isDummyData"];
        v9 = [v8 BOOLValue];

        if ((v9 & 1) == 0)
        {
          v10 = [(NSArray *)self->_recordInfos objectAtIndexedSubscript:v4];
          [v16 addObject:v10];

          v11 = [(NSArray *)self->_recordDatas objectAtIndexedSubscript:v4];
          [v3 addObject:v11];
        }
      }

      ++v4;
    }

    while ([(NSArray *)self->_recordInfos count]> v4);
  }

  v12 = [v16 copy];
  recordInfos = self->_recordInfos;
  self->_recordInfos = v12;

  v14 = [v3 copy];
  recordDatas = self->_recordDatas;
  self->_recordDatas = v14;
}

- (void)selectDaemonVersion:(int)a3
{
  v18 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  if ([(NSArray *)self->_recordInfos count])
  {
    v6 = 0;
    do
    {
      v7 = [(NSArray *)self->_recordInfos objectAtIndexedSubscript:v6];
      v8 = [v7 objectForKey:@"daemonVersion"];

      if (v8)
      {
        v9 = [(NSArray *)self->_recordInfos objectAtIndexedSubscript:v6];
        v10 = [v9 objectForKey:@"daemonVersion"];
        v11 = [v10 intValue];

        if (v11 >= a3)
        {
          v12 = [(NSArray *)self->_recordInfos objectAtIndexedSubscript:v6];
          [v18 addObject:v12];

          v13 = [(NSArray *)self->_recordDatas objectAtIndexedSubscript:v6];
          [v5 addObject:v13];
        }
      }

      ++v6;
    }

    while ([(NSArray *)self->_recordInfos count]> v6);
  }

  v14 = [v18 copy];
  recordInfos = self->_recordInfos;
  self->_recordInfos = v14;

  v16 = [v5 copy];
  recordDatas = self->_recordDatas;
  self->_recordDatas = v16;
}

- (void)filteringOperation
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"MinDaemonVersion"];
  v4 = [v3 intValue];

  if (v4 >= 1)
  {
    v5 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      v14[0] = 67109120;
      v14[1] = v4;
      _os_log_impl(&dword_275B9B000, v5, OS_LOG_TYPE_INFO, "About to select samples with daemon version >= %d only.", v14, 8u);
    }

    [(EvaluationDataSource *)self selectDaemonVersion:v4];
  }

  v6 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"DoDummyDataFilter"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_275B9B000, v8, OS_LOG_TYPE_INFO, "About to select samples with isDummyData == false", v14, 2u);
    }

    [(EvaluationDataSource *)self filteroutDummyData];
  }

  v9 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"LabelKeyName"];
  v10 = [v9 intValue];

  v11 = @"buyLabel";
  if (v10 == 2)
  {
    v11 = @"openLabelSubStream";
  }

  if (v10 == 1)
  {
    v12 = @"icloudNotificationActionLabel";
  }

  else
  {
    v12 = v11;
  }

  [(EvaluationDataSource *)self filterInMatchedLabelData:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (id)vectorForClassification:(int64_t)a3
{
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = v4;
  if (a3)
  {
    v6 = &unk_2884B23A8;
  }

  else
  {
    v6 = &unk_2884B23E8;
  }

  [v4 addObject:v6];
  if (a3 == 1)
  {
    v7 = &unk_2884B23E8;
  }

  else
  {
    v7 = &unk_2884B23A8;
  }

  [v5 addObject:v7];

  return v5;
}

- (int64_t)classificationForRecord:(unint64_t)a3
{
  v4 = [(EvaluationDataSource *)self getRecordInfo:a3];
  [(EvaluationDataSource *)self validateRecordInfo:v4];
  v5 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"LabelKeyName"];
  v6 = [v5 intValue];

  if (v6 == 2)
  {
    v7 = [v4 objectForKeyedSubscript:@"openLabelSubStream"];
    if ([v7 intValue] != 1)
    {
      goto LABEL_11;
    }

    v8 = @"minsUntilICloudOpenedSubStream";
  }

  else
  {
    if (v6 == 1)
    {
      v7 = [v4 objectForKeyedSubscript:@"icloudNotificationActionLabel"];
      if ([v7 intValue] == 1)
      {
        v8 = @"minsUntilICloudNotificationOpened";
        goto LABEL_9;
      }

LABEL_11:

      goto LABEL_12;
    }

    v7 = [v4 objectForKeyedSubscript:@"buyLabel"];
    if ([v7 intValue] != 1)
    {
      goto LABEL_11;
    }

    v8 = @"minsUntilICloudBuy";
  }

LABEL_9:
  v9 = [v4 objectForKeyedSubscript:v8];
  v10 = [v9 intValue];
  v11 = [(EvaluationDataSource *)self minsUntil];

  if (v10 >= v11)
  {
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v12 = 1;
LABEL_13:

  return v12;
}

- (id)getRecordInfo:(unint64_t)a3
{
  records = self->_records;
  if (records)
  {
    v5 = [(NSArray *)records objectAtIndexedSubscript:a3];
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/DES/Records/com.apple.iCloudSubscriptionOptimizerCore.PFLPlugin"];
    v7 = [v6 URLByAppendingPathComponent:v5];
    v8 = [v7 URLByAppendingPathExtension:@"json"];

    v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8];
    v12 = 0;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v9 options:0 error:&v12];
  }

  else
  {
    v10 = [(NSArray *)self->_recordInfos objectAtIndexedSubscript:a3];
  }

  return v10;
}

- (void)validateRecordInfo:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_recipe objectForKeyedSubscript:@"LabelKeyName"];
  v6 = [v5 intValue];

  if (v6 == 2)
  {
    v9 = [v4 objectForKey:@"openLabelSubStream"];

    if (!v9 && os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [EvaluationDataSource validateRecordInfo:];
    }

    v10 = [v4 objectForKey:@"minsUntilICloudOpenedSubStream"];

    if (!v10 && os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [EvaluationDataSource validateRecordInfo:];
    }
  }

  else if (v6 == 1)
  {
    v7 = [v4 objectForKey:@"icloudNotificationActionLabel"];

    if (!v7 && os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [EvaluationDataSource validateRecordInfo:];
    }

    v8 = [v4 objectForKey:@"minsUntilICloudNotificationOpened"];

    if (!v8 && os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [EvaluationDataSource validateRecordInfo:];
    }
  }

  else
  {
    v11 = [v4 objectForKey:@"buyLabel"];

    if (!v11 && os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [EvaluationDataSource validateRecordInfo:];
    }

    v12 = [v4 objectForKey:@"minsUntilICloudBuy"];

    if (!v12 && os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [EvaluationDataSource validateRecordInfo:];
    }
  }
}

- (void)filterInMatchedLabelData:(id)a3
{
  v15 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  if ([(NSArray *)self->_recordInfos count])
  {
    v6 = 0;
    do
    {
      v7 = [(NSArray *)self->_recordInfos objectAtIndexedSubscript:v6];
      v8 = [v7 objectForKey:v15];

      if (v8)
      {
        v9 = [(NSArray *)self->_recordInfos objectAtIndexedSubscript:v6];
        [v4 addObject:v9];

        v10 = [(NSArray *)self->_recordDatas objectAtIndexedSubscript:v6];
        [v5 addObject:v10];
      }

      ++v6;
    }

    while ([(NSArray *)self->_recordInfos count]> v6);
  }

  v11 = [v4 copy];
  recordInfos = self->_recordInfos;
  self->_recordInfos = v11;

  v13 = [v5 copy];
  recordDatas = self->_recordDatas;
  self->_recordDatas = v13;
}

- (BOOL)allNegativeSamples
{
  if (![(EvaluationDataSource *)self recordCount])
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = [(EvaluationDataSource *)self classificationForRecord:v3];
    v5 = v4 != 1;
    if (v4 == 1)
    {
      break;
    }

    ++v3;
  }

  while ([(EvaluationDataSource *)self recordCount]> v3);
  return v5;
}

- (void)performDownSampling
{
  if ([(EvaluationDataSource *)self allNegativeSamples])
  {
    [(EvaluationDataSource *)self negativeSamplingRate];
    if (v3 < 1.0)
    {
      v4 = vcvts_n_f32_u32(arc4random(), 0x20uLL);
      [(EvaluationDataSource *)self negativeSamplingRate];
      if (v4 > v5)
      {
        v6 = [MEMORY[0x277CBEB18] array];
        recordInfos = self->_recordInfos;
        self->_recordInfos = v6;

        v8 = [MEMORY[0x277CBEB18] array];
        recordDatas = self->_recordDatas;
        self->_recordDatas = v8;

        MEMORY[0x2821F96F8]();
      }
    }
  }
}

- (id)extractFullFeatureListForRecord:(unint64_t)a3
{
  records = self->_records;
  if (records)
  {
    v5 = [(NSArray *)records objectAtIndexedSubscript:a3];
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/DES/Records/com.apple.iCloudSubscriptionOptimizerCore.PFLPlugin"];
    v7 = [v6 URLByAppendingPathComponent:v5];
    v8 = [v7 URLByAppendingPathExtension:@"json"];

    v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8];
    v15 = 0;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v9 options:0 error:&v15];
  }

  else
  {
    v10 = [(NSArray *)self->_recordInfos objectAtIndexedSubscript:a3];
  }

  v11 = [v10 objectForKey:@"features"];

  if (!v11 && os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    [EvaluationDataSource extractFullFeatureListForRecord:];
  }

  v12 = [v10 objectForKeyedSubscript:@"features"];
  v13 = [v12 componentsSeparatedByString:{@", "}];

  return v13;
}

- (id)extractFeatureDataForRecord:(unint64_t)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v27 = [(EvaluationDataSource *)self dataForRecord:?];
  v5 = [(EvaluationDataSource *)self modelFeatures];
  v30 = [(EvaluationDataSource *)self extractFullFeatureListForRecord:a3];
  v26 = v5;
  v6 = [v5 componentsSeparatedByString:{@", "}];
  v7 = [MEMORY[0x277CBEB18] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v6;
  v31 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v31)
  {
    v29 = *v41;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v40 + 1) + 8 * i);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v10 = v30;
        v11 = [v10 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          v14 = *v37;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v37 != v14)
              {
                objc_enumerationMutation(v10);
              }

              if ([*(*(&v36 + 1) + 8 * j) isEqualToString:v9])
              {
                v16 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
                [v7 addObject:v16];
              }

              ++v13;
            }

            v12 = [v10 countByEnumeratingWithState:&v36 objects:v45 count:16];
          }

          while (v12);
        }
      }

      v31 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v31);
  }

  v17 = [MEMORY[0x277CBEB28] dataWithCapacity:0];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = v7;
  v19 = [v18 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [v27 subdataWithRange:{4 * objc_msgSend(*(*(&v32 + 1) + 8 * k), "unsignedIntValue"), 4}];
        [v17 appendData:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

@end